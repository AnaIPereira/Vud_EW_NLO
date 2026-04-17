(* ::Package:: *)

(* ::Section:: *)
(*conversion to tadpoles*)


(*gives the number of invariants according to the number of loops*)


invar[loopnumb_Integer]:= (loopnumb + 1) loopnumb/2


(*
substitutes all sacalar products q1.q2 = 1/2 (q1^2 + q2^2 - (q1-q2)^2)
with notation spaux[q[i],q[i]] for the invariant q1^2 and q2^2 and 
spaux[q[i]-q[j],q[i]-q[j]] for the invariant (q1-q2)^2
*)


Clear[spt,spaux]
spt[arg_]:=arg//.{sp[q[i_],q[j_]]:>
1/2 (spaux[q[i],q[i]] + spaux[q[j],q[j]] - spaux[q[i]-q[j],q[i]-q[j]]) }//.
{Power[q[i_],2]:>spaux[q[i],q[i]]}//.
{Power[q[i_],4]:>spaux[q[i],q[i]]^2}//.
{Power[q[i_],6]:>spaux[q[i],q[i]]^3}//.
{Power[q[i_],8]:>spaux[q[i],q[i]]^4}//.
{Power[q[i_],10]:>spaux[q[i],q[i]]^5}//.
{Power[q[i_],12]:>spaux[q[i],q[i]]^6}//.
{Power[q[i_],14]:>spaux[q[i],q[i]]^7}//.
{Power[p[i_],2]:>spaux[p[i],p[i]]}//.
{Power[p[i_],4]:>spaux[p[i],p[i]]^2}//.
{Power[p[i_],6]:>spaux[p[i],p[i]]^3}//.
{Power[p[i_],8]:>spaux[p[i],p[i]]^4}//.
{Power[p[i_],10]:>spaux[p[i],p[i]]^5}//.
{Power[p[i_],12]:>spaux[p[i],p[i]]^6}//.
{Power[p[i_],14]:>spaux[p[i],p[i]]^7}


Clear[convertden]
convertden[arg_List] := convertden /@ arg (* Apply recursively if arg is a list *);

convertden[arg_] := Module[
  {a, b, c, momq1, momq2, momq12, expmom1, expmom2, expmom12, den, newArg},

  (* If the argument is a sum, apply convertden to each term while preserving list structure *)
  If[Head[arg] === Plus, Return[Map[convertden, List @@ Expand[arg]]]];

  (* Extract exponents for scalar products *)
  a = Exponent[arg, spaux[q[1], q[1]]];
  b = Exponent[arg, spaux[q[2], q[2]]];
  c = Exponent[arg, spaux[q[1] - q[2], q[1] - q[2]]];

  den = {a, b, c};

  (* Extract unique masses for q[1] and q[2] *)
  momq1 = Union@Cases[arg, sampden[q[1], m_] :> m, Infinity];
  momq2 = Union@Cases[arg, sampden[q[2], m_] :> m, Infinity];
  momq12 = Union@Cases[arg, sampden[q[1] - q[2], m_] :> m, Infinity];

  (* Generate exponent-mass pairs *)
  expmom1 = Table[{m, Exponent[arg, sampden[q[1], m]]}, {m, momq1}];
  expmom2 = Table[{m, Exponent[arg, sampden[q[2], m]]}, {m, momq2}];
  expmom12 = Table[{m, Exponent[arg, sampden[q[1] - q[2], m]]}, {m, momq12}];

  (* Remove sampden and spaux from the expression *)
  newArg = arg /. {sampden[_, _] -> 1, spaux[a_, b_] :> 1  };

  (* Return structured nested list *)
  newArg auxden[den, expmom1, expmom2, expmom12]
]



(* Rule 1: Handle q[1] terms *)
Clear[auxdensimp]
auxdensimp /: auxdensimp[{a_, b_, c_}, {{0, e1_}, in1___}, in2_, in3_] := 
  auxdensimp[{a - 1, b, c}, {{0, e1 - 1}, in1}, in2, in3] /; a > 0 && e1 > 0;
  
auxdensimp /: auxdensimp[{a_, b_, c_}, {{0, 0}, in1___}, in2_, in3_] := 
  auxdensimp[{a , b, c}, {in1}, in2, in3];

(* Rule 2: Handle q[2] terms *)
auxdensimp /: auxdensimp[{a_, b_, c_}, in1_, {{0, e2_}, in2___}, in3_] := 
  auxdensimp[{a, b - 1, c}, in1, {{0, e2 - 1}, in2}, in3] /; b > 0 && e2 > 0;
  
auxdensimp /: auxdensimp[{a_, b_, c_}, in1_, {{0, 0},in2___}, in3_] := 
  auxdensimp[{a , b, c}, in1, {in2}, in3];

(* Rule 3: Handle q[1] - q[2] terms *)
auxdensimp /: auxdensimp[{a_, b_, c_}, in1_, in2_, {{0, e3_}, in3___}] := 
  auxdensimp[{a, b, c - 1}, in1, in2, {{0, e3 - 1}, in3}] /; c > 0 && e3 > 0;
  
auxdensimp /: auxdensimp[{a_, b_, c_}, in1_, in2_, {{0, 0}, in3___}] := 
  auxdensimp[{a , b, c}, in1, in2, {in3}];


Clear[standint]
Clear[standform]
standint[arg_]:= arg/.{auxdensimp[a1_,a2_,a3_,a4_]->standform[a1,a2,a3,a4]}


(* Rule 1: Simplify based on q[1] terms *)
standform /: standform[{a_, b_, c_}, {{m_, e_}, in1___}, in2_, in3_] :=
  standform[{a, b, c}, {in1}, in2, in3] (q[1]^2 - m^2)^(-e) /; e > 0;

(* Rule 2: Simplify based on q[2] terms *)
standform /: standform[{a_, b_, c_}, in1_, {{m_, e_}, in2___}, in3_] :=
  standform[{a, b, c}, in1, {in2}, in3] (q[2]^2 - m^2)^(-e) /; e > 0;

(* Rule 3: Simplify based on q[1] - q[2] terms *)
standform /: standform[{a_, b_, c_}, in1_, in2_, {{m_, e_}, in3___}] :=
  standform[{a, b, c}, in1, in2, {in3}] ((q[1] - q[2])^2 - m^2)^(-e) /; e > 0;
  
(*Rule for the scalar products*)
standform /: standform[{a_, b_, c_}, {}, {}, {}] :=
spaux[q[1],q[1]]^a spaux[q[2],q[2]]^b spaux[q[1]-q[2],q[1]-q[2]]^c



Clear[apart]
apart[arg_]:= Apart[#,q12]& /@ (Apart[#,q122]& /@(Apart[#,q22]&/@arg))


Clear[apartMom];
apartMom[arg_, 0] := arg;
apartMom[arg_, b_Integer] /; 
Head[arg] === Plus := apartMom[Apart[#, qs[b]] & /@ arg, b-1];

apartMom[arg_, b_Integer] /; 
Head[arg] =!= Plus := apartMom[Apart[#, qs[b]] &@arg, b-1];


toaux={
q[2]^2->q22,q[1]^2->q12,(q[1]-q[2])^2->q122,
spaux[q[1],q[1]]->q12,spaux[q[2],q[2]]->q22,
spaux[q[1]-q[2],q[1]-q[2]]->q122,
Power[q[1], n_] :> Power[q12, n/2] /; IntegerQ[n/2],
Power[q[2], n_] :> Power[q22, n/2] /; IntegerQ[n/2],
Power[q[1]-q[2], n_] :> Power[q122, n/2] /; IntegerQ[n/2]
} ;


Clear[auxtotad];

(* simplification when no mass in the propagator*)

auxtotad/:(1/q12) auxtotad[{{Null,0},b___}]:=auxtotad[{{0,1},b}];
auxtotad/:(1/q22) auxtotad[{a_,{Null,0},b_}]:=auxtotad[{a,{0,1},b}];
auxtotad/:(1/q122) auxtotad[{a___,{Null,0}}]:=auxtotad[{a,{0,1}}];

auxtotad/:(q12) auxtotad[{{Null,0},b___}]:=auxtotad[{{0,-1},b}];
auxtotad/:(q22) auxtotad[{a_,{Null,0},b_}]:=auxtotad[{a,{0,-1},b}];
auxtotad/:(q122) auxtotad[{a___,{Null,0}}]:=auxtotad[{a,{0,-1}}];

auxtotad/:(q12)^n_ auxtotad[{{Null,0},b___}]:=auxtotad[{{0,-n},b}]/;(n<0)
auxtotad/:(q22)^n_ auxtotad[{a_,{Null,0},b_}]:=auxtotad[{a,{0,-n},b}]/;(n<0)
auxtotad/:(q122)^n_ auxtotad[{a___,{Null,0}}]:=auxtotad[{a,{0,-n}}]/;(n<0)

auxtotad/:(q12)^n_ auxtotad[{{Null,0},b___}]:=auxtotad[{{0,-n},b}]/;(n>0)
auxtotad/:(q22)^n_ auxtotad[{a_,{Null,0},b_}]:=auxtotad[{a,{0,-n},b}]/;(n>0)
auxtotad/:(q122)^n_ auxtotad[{a___,{Null,0}}]:=auxtotad[{a,{0,-n}}]/;(n>0)

 (* simplification when there is mass (and no gauge) in the propagator**)
 
auxtotad/:1/(-m_^2+q12) auxtotad[{{Null,0},b___}]:=auxtotad[{{m,1},b}];
auxtotad/:1/(-m_^2+q22) auxtotad[{a_,{Null,0},b_}]:=auxtotad[{a,{m,1},b}];
auxtotad/:1/(-m_^2+q122) auxtotad[{a___,{Null,0}}]:=auxtotad[{a,{m,1}}];
auxtotad/:1/(m_^2-q12) auxtotad[{{Null,0},b___}]:= -auxtotad[{{m,1},b}];
auxtotad/:1/(m_^2-q22) auxtotad[{a_,{Null,0},b_}]:= -auxtotad[{a,{m,1},b}];
auxtotad/:1/(m_^2-q122) auxtotad[{a___,{Null,0}}]:= -auxtotad[{a,{m,1}}];

auxtotad/:(-m_^2+q12)^n_ auxtotad[{{Null,0},b___}]:=auxtotad[{{m,-n},b}];
auxtotad/:(-m_^2+q22)^n_ auxtotad[{a_,{Null,0},b_}]:=auxtotad[{a,{m,-n},b}];
auxtotad/:(-m_^2+q122)^n_ auxtotad[{a___,{Null,0}}]:=auxtotad[{a,{m,-n}}];
auxtotad/:(m_^2-q12)^n_ auxtotad[{{Null,0},b___}]:=(-1)^n auxtotad[{{m,-n},b}];
auxtotad/:(m_^2-q22)^n_ auxtotad[{a_,{Null,0},b_}]:=(-1)^n auxtotad[{a,{m,-n},b}];
auxtotad/:(m_^2-q122)^n_ auxtotad[{a___,{Null,0}}]:=(-1)^n auxtotad[{a,{m,-n}}];

 (* simplification when there is mass and gauge in the propagator**)

auxtotad/: 1/(- \[Xi]_ m_^2+q12) auxtotad[{{Null,0},b___}]:=auxtotad[{{m \[Xi]^(1/2),1},b}];
auxtotad/: 1/(- \[Xi]_ m_^2+q22) auxtotad[{a_,{Null,0},b_}]:=auxtotad[{a,{m \[Xi]^(1/2),1},b}];
auxtotad/: 1/(- \[Xi]_ m_^2+q122) auxtotad[{a___,{Null,0}}]:=auxtotad[{a,{m \[Xi]^(1/2),1}}];
auxtotad/: 1/(\[Xi]_ m_^2-q12) auxtotad[{{Null,0},b___}]:= -auxtotad[{{m \[Xi]^(1/2),1},b}];
auxtotad/: 1/(\[Xi]_ m_^2-q22) auxtotad[{a_,{Null,0},b_}]:= -auxtotad[{a,{m \[Xi]^(1/2),1},b}];
auxtotad/: 1/(\[Xi]_ m_^2-q122) auxtotad[{a___,{Null,0}}]:= -auxtotad[{a,{m \[Xi]^(1/2),1}}];

auxtotad/:(- \[Xi]_ m_^2+q12)^n_ auxtotad[{{Null,0},b___}]:=auxtotad[{{m \[Xi]^(1/2),-n},b}];
auxtotad/:(- \[Xi]_ m_^2+q22)^n_ auxtotad[{a_,{Null,0},b_}]:=auxtotad[{a,{m \[Xi]^(1/2),-n},b}];
auxtotad/:(- \[Xi]_ m_^2+q122)^n_ auxtotad[{a___,{Null,0}}]:=auxtotad[{a,{m \[Xi]^(1/2),-n}}];
auxtotad/:(\[Xi]_ m_^2-q12)^n_ auxtotad[{{Null,0},b___}]:=(-1)^n auxtotad[{{m \[Xi]^(1/2),-n},b}];
auxtotad/:(\[Xi]_ m_^2-q22)^n_ auxtotad[{a_,{Null,0},b_}]:=(-1)^n auxtotad[{a,{m \[Xi]^(1/2),-n},b}];
auxtotad/:(\[Xi]_ m_^2-q122)^n_ auxtotad[{a___,{Null,0}}]:=(-1)^n auxtotad[{a,{m \[Xi]^(1/2),-n}}];


Clear[totad];
totad[arg_]:= Expand[arg*auxtotad[{{Null,0},{Null,0},{Null,0}}]]/.
{auxtotad[{{m1_,n1_},{m2_,n2_},{m12_,n12_}}]->tad[{m1,m2,m12},{n1,n2,n12}]}


(*tad /: tad[{Null, Null, Null},{0,0,0}]:=1*)
