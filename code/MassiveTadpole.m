BeginPackage["MassiveTadpole`"]

formIntegral::usage = "formIntegral[arg_,ln_] writes the general tadpole integral"

integrate::usage = "integrate[arg_,1] replaces the one-loop Tadpole integral with the analytic expression"

getintegral::usage = "integral[arg_,n_] replaces the Tadpole integral with the Tadpole after partial fractions for n loops"

getintegralt::usage = "integral[arg_,n_] replaces the Tadpole integral with the Tadpole after partial fractions for n loops but still in aux prop form"

getintegralexp::usage = "integralexp[arg_,n_,ord_] same as integral[arg_,n_] except that order is in series argument in mathematica. e.g. use ord = {MT,MW,2} to expand the top-mass around MW up to second order"

getintegralexpmass::usage = "integralexp[arg_,n_,{m1_,m2_,ord_}] same as integral[arg_,n_] except that mass m1/m2 is expanded around 1 up to order ord"
    
mu::usage = "mu is the scale in dimensional regularisation for the MSbar scheme -- i.e. no EulerGamma and ln[4 pi]"

(* develop *)

tadpoleToAnalytic::usage = ""
analyticTadMassZero::usage = ""
analyticTadMassive::usage = ""
tadpoleToTad::usage = ""
analyticTad::usage = ""

(* develop *)

apartMom::usage = "only for development"

auxToTad::usuage = "only for development"
    
tadToAuxFrac::usage = "only for developing, takes the tadpole and transforms it to abstract propagator"

qs::usage = "test"

tad::usuage = "tad[{a__},{b__}]"

(* Symbols *)

Phi::usuage = "Phi function"
Psi::usuage = "Psi function"

Begin["`Private`"]
Needs["QFTSymbols`","QFTSymbols.m"]
Needs["TensorDecompositionTadpoles`","TensorDecompositionTadpoles.m"]

Options[formIntegral] = {wrapper -> False};

formIntegral[0, __] := 0;

formIntegral[arg_, ln_, OptionsPattern[]] := Block[
    {dummy, momrule},
    momrule = {
	sp[Plus[a_, b__], c__] :> (sp[#, c] & /@ Plus[a, b]),
	(* sp[Plus[a_, b__], c__] :> sp[a, c] + sp[Plus[b],c], *)
	(mom : (q | k))[a_Integer, n_Integer]^2 -> sp[mom[a], mom[a]],
	mT[a_, b_] ( mom : (q | k))[c_, b_] -> mom[c, a] };
    dummy = dNtoIn[arg,ln];
    dummy = Expand[Expand[dummy] //. momrule];
    dummy = factorOutLoopMomenta[dummy, ln];
    dummy = dummy /. storeintH[a_, b_, c_] :> holdint[a, b, c, ln];
    If[OptionValue[wrapper],
       dummy,
       dummy /. {mTsum[a_] -> a, epsexp[a_] -> a}] ];

Clear[dNtoIn];
dNtoIn[arg_,ln_] := Block[
    {dummy},
    dummy = arg /.
    { dP[-q[b_],a_]                  -> dP[q[b],a],
      dP[q[b_]-q[c_], a_] /; (b > c) -> dP[q[c]-q[b], a]};
    Switch[
	ln,
	0,
	dummy = dummy,
	1,
	dummy = dummy /. 
	{dN[a__] :>
	 in1[({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[1], _]]])]},
	2,
	dummy = dummy /. 
	{dN[a__] :>
	 in2[({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[1], _]]]),
	     ({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[2], _]]]),
	     ({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[1]-q[2], _]]])]},
	3,
	dummy = dummy /. 
	{dN[a__] :>
	 in3[({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[1], _]]]),
	     ({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[2], _]]]),
	     ({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[3], _]]]),
	     ({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[1]-q[2], _]]]),
	     ({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[1]-q[3], _]]]),
	     ({#[[2]], {Count[{a}, #]}} & /@ Union[Cases[{a}, dP[q[2]-q[3], _]]])]},
	_,
	Print["Only Three Loops"]; Abort[]
    ];
    dummy ]


holdint[a_, b_, c_, loopNumber_] := Block[{tensor,comint},
  comint[dummy_] :=
    tadpole[a + Table[
	{Exponent[dummy, sp[q[j], q[i]]], 
	 Exponent[dummy, sp[qh[j], q[i]]] +
         Exponent[dummy, sp[q[j], qh[i]]] + 
         Exponent[dummy, sp[qh[j], qh[i]]]},
	{i, loopNumber}, {j, i}], c] (dummy /. sp[__] -> 1);
  tensor = tensorToScalar @@ b;
  Switch[Head@tensor,
   Plus         , comint /@ tensor,
   Times        , comint @  tensor,
   mTsum|Integer, tensor tadpole[a, c]]
  ]

factorOutLoopMomenta[0,_] := 0;
factorOutLoopMomenta[amp_,0] := amp; 
factorOutLoopMomenta[amp_,ln_] /; Head[amp] === Plus := factorOutLoopMomenta[#,ln]& /@ amp;
factorOutLoopMomenta[amp_,loopNumber_] :=
Block[{dummy,spt,i,j,k,con,conh,bas,inmom={},inmomsp={}},
  dummy = amp /. {sp[ q[i],{a_}]^2 -> sp[ q[i], q[i]],
                  sp[qh[i],{a_}]^2 -> sp[qh[i],qh[i]]};
  inmomsp=Table[{Exponent[dummy,sp[ q[j], q[i]]],
                 Exponent[dummy,sp[qh[j], q[i]]] +
                 Exponent[dummy,sp[ q[j],qh[i]]] +
                 Exponent[dummy,sp[qh[j],qh[i]]]},
                {i,loopNumber},{j,i}];
  dummy = dummy /. {sp[ q[_], q[_]] -> 1,sp[qh[_], q[_]] -> 1,
                    sp[ q[_],qh[_]] -> 1,sp[qh[_],qh[_]] -> 1};
  Do[
    con=0;
    conh=0;
    bas=i*100;
    dummy = dummy /.
               {sp[q[i],a_]^b_ :> Apply[spt,Table[sp[q[i],a],{j,b}]],
                sp[q[i],a_]^b_ :> Apply[spt,Table[sp[q[i],a],{j,b}]]};
    dummy = dummy //.
     {q[i]     :> {bas+ ++con},
      q[i,a_]  :> mT[a,bas+ ++con],
      qh[i]    :> {bas+ ++conh     + 1000},
      qh[i,a_] :> mT[a,bas+ ++conh + 1000]};
    inmom = Append[inmom,{con,conh}],
    {i,loopNumber}
    ];
  Switch[
    loopNumber,
    1,  
      ((dummy /. {in1[__] -> 1}) *
        storeintH[inmomsp,inmom,List @@ Cases[{dummy}, in1[a__],Infinity][[1]]]) /. spt -> Times,
    2,  
      ((dummy /. {in2[__] -> 1}) *
        storeintH[inmomsp,inmom,List @@ Cases[{dummy}, in2[a__],Infinity][[1]]]) /. spt -> Times,
    3,  
      ((dummy /. {in3[__] -> 1}) *
        storeintH[inmomsp,inmom,List @@ Cases[{dummy}, in3[a__],Infinity][[1]]]) /. spt -> Times
    ]
]

(* logExpand *)

logExpand[arg_] :=
  arg //. {Log[Sqrt[a_]]     -> Log[a]/2, 
	   Log[a_ b_]        -> Log[a] + Log[b], 
	   Log[a_^b_Integer] -> b Log[a]};

(* auxMom[a] gives the number of invariants for a loops a *)

auxMom[a_Integer] /; a > 0 := a (1+a) / 2;

(* tadToAuxFrac input tadpole integral output fraction,
   where qs[i] denotes the q[i]^2 for i <= loops,
   and (q[j] - q[k])^2, where i is given by the
   lexical ordering of (j,k) + loopNumber *)

tadToAuxFrac[inmomsp_,denominator_] := Module[
 {dummy,i,j,loopNumber,
  loopLevelProduct, auxmom, auxrep},
  loopLevelProduct[arg_, lm_] := 
    Times @@ ((1/(q[lm[[1]]]^2 - #[[1]]^2)^(#[[2, 1]])) & /@ arg);
  loopNumber = Length @ Last @ inmomsp;
  auxmom = 1;
  auxrep = Flatten[
    Table[sp[q[i], q[j]] -> -qs[loopNumber + auxmom++]/2 + qs[i]/2 + qs[j]/2,
    {i, 2, loopNumber}, {j, i - 1}], 1];
  dummy = Times @@ Flatten[
  	Table[sp[q[j],q[i]]^(Plus@@inmomsp[[i,j]]) * 
                  ((d-4)/d)^inmomsp[[i,j,2]],{i, loopNumber}, {j, i}]];
  dummy *= Times@@MapIndexed[loopLevelProduct, denominator];
  dummy = dummy /. auxrep /.
    {sp[q[a_], q[a_]] -> qs[a], q[a_] -> Sqrt[qs[a]]};
  Expand@dummy
]

(* auxMom to mom *)

auxRep[arg_,n_Integer] :=
Block[{auxrep,auxmom},
  auxmom = 1;
  auxrep = Flatten[ Table[
    qs[n + auxmom++] -> sp[q[j] - q[i],q[j] - q[i]],
    {i, 2, n}, {j, i - 1}], 1];
  arg /. auxrep /. qs[i_] /; i <= n -> sp[q[i],q[i]]
  ]

(* apartMom does the partial fraction decomposition for the (aux)momenta up to momenta b *)

Clear[apartMom];
apartMom[arg_, 0] := arg;
apartMom[arg_, b_Integer] /; Head[arg] === Plus := apartMom[Apart[#, qs[b]] & /@ arg, b-1];
apartMom[arg_, b_Integer] /; Head[arg] =!= Plus := apartMom[Apart[#, qs[b]] &@arg, b-1];

Clear[integrate];

(* Options[integrate] = {integration -> True, loops -> 1}; *)
Options[integrate] = multiLoopOptions;

(* should remove the special case for one-loop later *)

(* integrate[arg_,1] :=  arg /. *)
(*     {tadpole[a__] :> *)
(*     ( apartMom[tadToAuxFrac[a],1] /. *)
(*       {(qs[1] - mass_^2)^pow_Integer /; pow < 0 :> analyticTad[{mass}, {-pow}], *)
(*        (qs[1]          )^pow_Integer /; pow < 0 -> 0}), *)
(*      tad[{a_},{b_}] /; a ==  0          -> 0, *)
(*      tad[{a_},{b_}] /; a =!= 0 && b < 1 -> 0, *)
(*      tad[{a_},{b_}] /; a =!= 0 && b > 0 -> analyticTad[{a},{b}] } *)

integrate[arg_, OptionsPattern[]] :=
  Module[
    {},
    Switch[OptionValue[expansion],
	   IRExpansion,
	   auxToTad = auxToTadIR,
	   _,
	   auxToTad = auxToTad0M];
    Switch[
      OptionValue[integration],
      True, 
      arg /. tadpole[a__] :> tadpoleToAnalytic[a,OptionValue[loops]],
      tad,
      arg /. tadpole[a__] :> tadpoleToTad[a,OptionValue[loops]],
      _,
      arg ]
  ];
				     
(* get rid of getintegral and getintegralt *)

getintegral[arg_,n_Integer] :=  arg /. tadpole[a__] :> tadpoleToTad[a,n];

getintegralt[arg_,n_Integer] :=  arg /. tadpole[a__] :>
    ( apartMom[tadToAuxFrac[a],auxMom@n] )

(* long term introduce expansion in integrate routine *)

getintegralexp[arg_,n_Integer,exp_] :=  arg /. tadpole[a__] :>
    auxToTad[apartMom[Normal@Series[tadToAuxFrac[a],exp],auxMom@n],auxMom@n]

getintegralexpmass[arg_,n_Integer,{m1_Symbol,m2_Symbol,exp_Integer}] := Module[
    {xm},
    arg /. tadpole[a__] :>
    auxToTad[apartMom[
	Normal[Series[tadToAuxFrac[a] /. m1 -> Sqrt[xm] m2, {xm,1,exp}]],
	auxMom@n], auxMom@n] /. xm -> m1^2/m2^2 ]

sortTad[arg_,1] := arg;

sortTad[arg_,2] := arg /.
    tad[{a1_, a2_, a3_}, {b1_, b2_, b3_}] :>
    tad @@ Transpose@Sort[{{a1, b1}, {a2, b2}, {a3, b3}}];

sortTad[arg_,3] := arg;

tadpoleToTad[arg__,n_Integer]      := tadpoleToTad[arg,n]      =
    sortTad[auxToTad[apartMom[tadToAuxFrac[arg],auxMom@n],auxMom@n],n];

tadpoleToAnalytic[arg__,n_Integer] := tadpoleToAnaltyic[arg,n] =
    (sortTad[auxToTad[apartMom[tadToAuxFrac[arg],auxMom@n],auxMom@n],n] /. tad[a__] :> analyticTad[a]);

tadpoleToMaster[arg__,n_Integer] := tadpoleToAnaltyic[arg,n] =
    (sortTad[auxToTad[apartMom[tadToAuxFrac[arg],auxMom@n],auxMom@n],n] /. tad[a__] :> analyticTad[a]);

auxToTad0M[arg_,an_] := Block[{factoraP, dummy},
  factoraP[a_ b_] /; FreeQ[a, aP[__]] := a factoraP[b];
  dummy = arg   /. { m_^2 - qs[a_] -> -1/aP[a, m],
  	            -m_^2 + qs[a_] ->  1/aP[a, m]};
  dummy = dummy /. qs[a_] -> 1/aP[a, 0];
  dummy = dummy /. aP[a_, b_]^n_ -> aP[a, b, n];
  dummy = dummy /. aP[a_, b_] -> aP[a, b, 1];
  dummy = If[Head[dummy]===Plus, factoraP /@ dummy, factoraP @ dummy];
  dummy = dummy /. factoraP[a_] -> auxint[{}, {}, {a}, an];
  dummy //. {
    auxint[{a___}, {b___}, {c___ }, n_Integer] /; (FreeQ[{c}, aP[n, __]] && n > 0) -> 
      auxint[{0, a}, {0, b}, {c}, n - 1],
    auxint[{a___}, {b___}, {c_ aP[n_, m_, p_]}, n_Integer] ->
      auxint[{m, a}, {p, b}, {c}, n - 1],
    auxint[{a___}, {b___}, {aP[n_, m_, p_]}, n_] -> 
      auxint[{m, a}, {p, b},{},n-1],
    auxint[{a__}, {b__},{},0] -> tad[{a},{b}] }
  ]

auxToTadIR[arg_,an_] := Block[{factoraP, dummy},
  factoraP[a_ b_] /; FreeQ[a, aP[__]] := a factoraP[b];
  dummy = arg   /. qs[a_] -> 1/aP[a, m] + m^2;
  dummy = Expand[dummy];
  dummy = dummy /. aP[a_, b_]^n_ -> aP[a, b, n];
  dummy = dummy /. aP[a_, b_] -> aP[a, b, 1];
  (* generate artificial propagtors aP[a,b,n], a: number, b: mass, n: power *)
  dummy = If[Head[dummy]===Plus, factoraP /@ dummy, factoraP @ dummy];
  dummy = dummy /. factoraP[a_] -> auxint[{}, {}, {a}, an];
  (* going from 6 to 1? we collect the tadpoles *)
  dummy = dummy //. {
    auxint[{a___}, {b___}, {c___ }, n_Integer] /; (FreeQ[{c}, aP[n, __]] && n > 0) -> 
      auxint[{m, a}, {0, b}, {c}, n - 1],
    auxint[{a___}, {b___}, {c_ aP[n_, m_, p_]}, n_Integer] ->
      auxint[{m, a}, {p, b}, {c}, n - 1],
    auxint[{a___}, {b___}, {aP[n_, m_, p_]}, n_] -> 
      auxint[{m, a}, {p, b},{},n-1],
    auxint[{a__}, {b__},{},0] -> tad[{a},{b}] };
  dummy
  ]


(* definition of analyticTad and iBMU1 as in bobeth misiak urban *)

analyticTad[{0}, {pow_Integer}] := 0

analyticTad[{0,0,0}, {pow__Integer}] := 0

analyticTad[{mass_}, {pow_Integer}] /; mass =!= 0 := analyticTad[{mass}, {pow}] =
Collect[Normal[Series[
  mu^(2 e) (2 Pi)^(2 e) Pi^(2 - e) Gamma[1 + e] mass^(-2pow + 4 - 2e) *
    iBMU1[pow] * E^(e*EulerGamma)/(2^(2*e)*Pi^(e)),
{e, 0, 1}]], e, Together[logExpand[#]] &];

analyticTad[{0,  a2_,a1_},{b3_Integer,b2_Integer,b1_Integer}] /; a1 =!= 0                         := analyticTadMassZero[{a1,a2,0},{b1,b2,b3}];
analyticTad[{a1_,a2_,a3_},{b1_Integer,b2_Integer,b3_Integer}] /; a1 =!= 0 && a2 =!= 0 && a3 =!= 0 := analyticTadMassive[{a1,a2,a3},{b1,b2,b3}];

analyticTadMassZero[{a1_,a2_,0},{b1_,b2_,b3_}] := analyticTadMassZero[{a1,a2,0},{b1,b2,b3}] =
    Collect[Normal[Series[
	mu^(4 e) (2 Pi)^(4 e) Pi^(4 - 2 e) Gamma[1 + e]^2 a1^(-2 (b1 + b2 + b3) + 8 - 4 e) *
	iBMU2[b1,b2,b3,a2^2/a1^2] * E^(2*e*EulerGamma)/(2^(4*e)*Pi^(2*e)),
	{e, 0, 0}]], e, Together[logExpand[#]] &];

analyticTadMassive[{a1_,a2_,a3_},{b1_Integer,b2_Integer,b3_Integer}] := analyticTadMassive[{a1,a2,a3},{b1,b2,b3}] =
    Collect[Normal[Series[
	iDT2[b1,b2,b3,a1,a2,a3], {e, 0, 0}]], e, Simplify[logExpand[#]] &];

(* definition of
   iBMU1 and iBMU2 of Bobeth Misiak Urban, as well as
   iDT2 of Davydychev Tausk *)

iBMU1[i_Integer] := 
  I ((-1)^i/((i - 1)!))Pochhammer[1 + e, i - 3];

iBMU2[a_,b_,c_,1] := 
  (-1)^(a+b+c+1) *
  Pochhammer[2 - e, - c] Pochhammer[1+e,a+c-3] Pochhammer[1+e,b+c-3]/
  ((a - 1)! (b - 1)! Pochhammer[a + b + c - 4 + 2 e,c]);

iBMU2[a_,b_,c_,0] := (* up to order 1 *)
  (-1)^(a+b+c+1) *
  Pochhammer[1 + 2 e, a + b + c - 5] Pochhammer[1 + e, b + c - 3] *
  Pochhammer[1 - e, 1 - b] Pochhammer[1 - e, 1 - c]/
  ( (a - 1)! (b - 1)! (c - 1)! (1 - e) (1 - Pi^2 / 3 e^2));

iBMU2[a_,b_,c_,x_]  /; a < 1 || b < 1 := 0;

iBMU2[a_,b_,c_,x_] /; c < 1 := Block[{k,j}, Sum[
  Binomial[ - c, 2 k] Binomial[ - c - 2 k, j] *
    x^(2 - b + k + j - e) (- 1)^(a + b + c + 1) (2 k)! /
    ( (a - 1)! (b - 1)! k! Pochhammer[2 - e,k] ) *
    Pochhammer[2 - e,j + k] * Pochhammer[2 - e,- c - k - j] *
    Pochhammer[1 + e,b - k - j - 3] * Pochhammer[1 + e,a + c + j + k - 3],
  {k,0,Floor[- c/2]},{j,0,-c - 2 k}]
]

iBMU2[1, 1, 1, x_] := (* up to order 1 *)
  1/(2 (1 - e) (1 - 2 e)) *
  (- (1 + x)/e^2 + 2/e x Log[x] + (1 - 2 x) Log[x]^2 + 2 ( 1 - x ) PolyLog[2, 1 - 1/x] );

(*
bug in                                    ____
iBMU2[a_,b_,c_,x_] /; a > 1 := 1/( (a - 1) - x) (
  (4 - 2 e - (a - 1) - b - c + x ((a - 1) - c)) iBMU2[(a - 1), b, c, x] +
    x b ( iBMU2[(a - 1) - 1, b + 1, c, x] - iBMU2[(a - 1), b + 1, c - 1, x] ) );
*)
iBMU2[a_,b_,c_,x_] /; a > 1 := 1/( (a - 1) (1 - x) ) (
  (4 - 2 e - (a - 1) - b - c + x ((a - 1) - c)) iBMU2[(a - 1), b, c, x] +
    x b ( iBMU2[(a - 1) - 1, b + 1, c, x] - iBMU2[(a - 1), b + 1, c - 1, x] ) );

iBMU2[a_,b_,c_,x_] /; b > 1 := - 1/((b - 1) x (1 - x)) (
  (x (4 - 2 e - a - (b - 1) - c) + (b - 1) - c) iBMU2[a, (b - 1), c, x] +
    a ( iBMU2[a + 1, (b - 1) - 1, c, x] - iBMU2[a + 1, (b - 1), c - 1, x] ) );

iBMU2[a_,b_,c_,x_] /; c > 1 := 1/((c - 1) (1 - x)^2) (
  ( (1 + x) (-4 + 2 e) + 2 b + (1 + 3 x) (c - 1)) iBMU2[a, b, (c - 1), x] +
    2 x b (iBMU2[a, b + 1, (c - 1) - 1, x] - iBMU2[a - 1, b + 1, (c - 1), x]) +
    (1 - x) (c - 1) (iBMU2[a, b - 1, (c - 1) + 1, x] - iBMU2[a - 1, b, (c - 1) + 1, x]) );

dtstring = "(1/(n1 m1^2 delDT[m1,m2,m3])*((n2 (m1^2-m3^2)(m1^2-m2^2+m3^2)+n3 (m1^2-m2^2)(m1^2+m2^2-m3^2)+"<>
"(4 - 2 e) m1^2 (-m1^2+m2^2+m3^2)-n1 delDT[m1,m2,m3]) iDT2[n1,n2,n3,m1,m2,m3]+"<>
"n2 m2^2 (m1^2-m2^2+m3^2)(iDT2[n1,n2+1,n3-1,m1,m2,m3]-iDT2[n1-1,n2+1,n3,m1,m2,m3])+"<>
"n3 m3^2 (m1^2+m2^2-m3^2)(iDT2[n1,n2-1,n3+1,m1,m2,m3]-iDT2[n1-1,n2,n3+1,m1,m2,m3])) /. n1 -> n1-1)";

dtstringn1 = ToString[InputForm[ToExpression[dtstring]]];

dtstringn2 = ToString[InputForm[ToExpression[dtstring <> 
  " /. {n1->n2,m1->m2,m2->m3,n2->n3,m3->m1,n3->n1} /. iDT2[a_,b_,c_,d_,e_,f_]->iDT2[c,a,b,f,d,e]"]]];

dtstringn3 = ToString[InputForm[ToExpression[dtstring <> 
  " /. {n1->n2,m1->m2,m2->m3,n2->n3,m3->m1,n3->n1} /. iDT2[a_,b_,c_,d_,e_,f_]->iDT2[c,a,b,f,d,e] /.
       {n1->n2,m1->m2,m2->m3,n2->n3,m3->m1,n3->n1} /. iDT2[a_,b_,c_,d_,e_,f_]->iDT2[c,a,b,f,d,e]"]]];


Clear[delDT];
delDT[m1_,m2_,m3_] := - (m3^2 - m1^2 - m2^2)^2 + 4 m1^2 m2^2;

Clear[iDT1];
iDT1[a_,b_] := analyticTad[{b},{a}];

Clear[iDT2];
iDT2[1,1,1,m_,m_,m_] := iDT2[1,1,1,M,m,m] /. M -> m;
iDT2[1,1,1,m_,m_,M_] := iDT2[1,1,1,M,m,m];
iDT2[1,1,1,m_,M_,m_] := iDT2[1,1,1,M,m,m];
iDT2[1,1,1,M_,m_,m_] := -((2*m^2 + M^2)*Pi^4)/(2*e^2) + 
 (Pi^4*(-6*m^2 - 3*M^2 + 8*m^2*Log[m] + 4*M^2*Log[M] - 8*m^2*Log[mu] - 
    4*M^2*Log[mu]))/(2*e) - 
 (Pi^4*(84*m^2 + 42*M^2 + 2*m^2*Pi^2 + M^2*Pi^2 - 144*m^2*Log[m] + 
    96*m^2*Log[m]^2 - 24*M^2*Log[m]^2 - 72*M^2*Log[M] + 48*M^2*Log[m]*Log[M] + 
    24*M^2*Log[M]^2 + 144*m^2*Log[mu] + 72*M^2*Log[mu] - 
    192*m^2*Log[m]*Log[mu] - 96*M^2*Log[M]*Log[mu] + 96*m^2*Log[mu]^2 + 
    48*M^2*Log[mu]^2 - 24*m^2*Phi[M^2/(4*m^2)] + 6*M^2*Phi[M^2/(4*m^2)]))/12;

iDT2[1,1,1,m1_,m2_,m3_] := Block[{repmass,M1,M2,M3,massgreater},
  massgreater[a_, b_] := Block[
   {masslist = {0, MW, MZ, MH, MT}, poa, pob},
   poa = Position[masslist, a];
   pob = Position[masslist, b];
   Switch[True,
     poa == {}, True,
     pob == {}, False,
     poa[[1, 1]] > pob[[1, 1]], True,
     poa[[1, 1]] <= pob[[1, 1]], False,
     _, Print["Problem in massgreater[", a, ",", b, "]"]
   ] ];
  repmass = MapThread[Rule,{{M1,M2,M3},
                           Reverse@Sort[{m1,m2,m3},massgreater]}];
 (-((M1^2 + M2^2 + M3^2)*Pi^4)/(2*e^2) + 
 (Pi^4*(-3*M1^2 - 3*M2^2 - 3*M3^2 + 4*M1^2*Log[M1] + 4*M2^2*Log[M2] + 
    4*M3^2*Log[M3] - 4*M1^2*Log[mu] - 4*M2^2*Log[mu] - 4*M3^2*Log[mu]))/(2*e) - 
 (Pi^4*(42*M1^2 + 42*M2^2 + 42*M3^2 + M1^2*Pi^2 + M2^2*Pi^2 + M3^2*Pi^2 - 
    72*M1^2*Log[M1] + 24*M1^2*Log[M1]^2 - 72*M2^2*Log[M2] + 
    24*M1^2*Log[M1]*Log[M2] + 24*M2^2*Log[M1]*Log[M2] - 
    24*M3^2*Log[M1]*Log[M2] + 24*M2^2*Log[M2]^2 - 72*M3^2*Log[M3] + 
    24*M1^2*Log[M1]*Log[M3] - 24*M2^2*Log[M1]*Log[M3] + 
    24*M3^2*Log[M1]*Log[M3] - 24*M1^2*Log[M2]*Log[M3] + 
    24*M2^2*Log[M2]*Log[M3] + 24*M3^2*Log[M2]*Log[M3] + 24*M3^2*Log[M3]^2 + 
    72*M1^2*Log[mu] + 72*M2^2*Log[mu] + 72*M3^2*Log[mu] - 
    96*M1^2*Log[M1]*Log[mu] - 96*M2^2*Log[M2]*Log[mu] - 
    96*M3^2*Log[M3]*Log[mu] + 48*M1^2*Log[mu]^2 + 48*M2^2*Log[mu]^2 + 
    48*M3^2*Log[mu]^2 + 6*M3^2*Psi[M2^2/M3^2, M1^2/M3^2]))/12) /.
  repmass    
];

iDT2[0,n2_,n3_,m1_,m2_,m3_] := iDT1[n2,m2] iDT1[n3,m3];
iDT2[n1_,0,n3_,m1_,m2_,m3_] := iDT1[n1,m1] iDT1[n3,m3];
iDT2[n1_,n2_,0,m1_,m2_,m3_] := iDT1[n1,m1] iDT1[n2,m2];

ToExpression[
  "iDT2[n1_,n2_,n3_,m1_,m2_,m3_]  /; n1 > 1 := " <> dtstringn1];

ToExpression[
  "iDT2[n1_,n2_,n3_,m1_,m2_,m3_]  /; n2 > 1 := " <> dtstringn2];

ToExpression[
  "iDT2[n1_,n2_,n3_,m1_,m2_,m3_]  /; n3 > 1 := " <> dtstringn3];


End[]
    
EndPackage[]
