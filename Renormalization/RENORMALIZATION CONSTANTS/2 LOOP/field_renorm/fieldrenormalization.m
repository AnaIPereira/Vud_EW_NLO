(* ::Package:: *)

(* ::Section::Closed:: *)
(*CHOOSE directory*)


(*to run locally*)
direc=SetDirectory["/home/ana/Documents/GitHub/Vud_EW_NLO"];


(*(*to run in cluster*)
direc=SetDirectory["/z/users/acpereira/Vud_EW_NLO"];*)


(* ::Section::Closed:: *)
(*to  compare EFT (*comment out*)*)


(*rat[x_, y_]:=x/y*)


(*DZddLl2ep2 =Qd^4*rat[xiqa^2,2]*)


(*DZddLl2ep1 =nc * (Qd^2*Qb^2*rat[1,1]+
+ Qd^2*Qc^2*rat[1,1]+
+ Qd^2*Qs^2*rat[1,1]+
+ Qd^4*rat[1,1]+
+ Qu^2*Qd^2*rat[1,1]
)+ Qd^2*Qtau^2*rat[1,1]+
+ Qd^2*Qmu^2*rat[1,1]+
+ Qd^2*Qe^2*rat[1,1]+
+ Qd^4*rat[3,4];*)


(*DZuuLl2ep2 = Qu^4*rat[xiqa^2,2];*)


(*DZuuLl2ep1 = nc * (Qu^2*Qb^2*rat[1,1]+
           + Qu^2*Qc^2*rat[1,1]+
           + Qu^2*Qs^2*rat[1,1]+
           + Qu^2*Qd^2*rat[1,1]+
           + Qu^4*rat[1,1]) + Qu^2*Qtau^2*rat[1,1]+
           + Qu^2*Qmu^2*rat[1,1]+
           + Qu^2*Qe^2*rat[1,1]+
           + Qu^4*rat[3,4];*)


(* ::Section::Closed:: *)
(*load  packages*)


(*Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;*)


Get[direc <> "/code/QFTSymbols.m"]
Get[direc <> "/code/MassiveTadpole.m"]


Get[direc <> "/code/notation.m"]
Get[direc <> "/code/fermionline.m"]
Get[direc <> "/code/tensred.m"]
Get[direc <> "/code/integration_2loop.m"]
Get[direc <> "/code/extmom.m"]


(* ::Section::Closed:: *)
(*generate  the  diagrams (*comment out*)*)


(*diagsw = InsertFields[CreateTopologies[2,1 -> 1,ExcludeTopologies-> {WFCorrections,Tadpoles}], 
	{F[4,{1}]} -> {F[4, {1}]}, 
	InsertionLevel ->{Particles}, 
	Model -> "SMew",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[diagsw]*)


(*Export["/home/ana/Desktop/ct.pdf",Show@draw];*)


(* ::Section::Closed:: *)
(*generate  amplitudes (*comment out*)*)


(*amploop[j_,diags_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diags,{j}],GaugeRules->{},Truncated->True],
IncomingMomenta->{p1},OutgoingMomenta->{p1},LoopMomenta->{q1,q2},List->False, Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{SMP["m_b"]->mass[MB],SMP["m_s"]->mass[MS],SMP["m_c"]->mass[MC],SMP["m_u"]->mass[MU],SMP["m_d"]->mass[MD],
SMP["m_e"]->mass[ME],SMP["m_mu"]->mass[MM],SMP["m_tau"]->mass[ML],
SMP["sin_W"]->SW,SMP["cos_W"]->CW}*)


(*amplitudeslist = Table[amploop[i, diagsw],{i,121}];*)


(*amplitudeslist//Length*)


(*(*insert prefactor NF[fermion] in diagrams with fermion traces*)

ampt = Table[
  Module[{dia = amplitudeslist[[i]], massesInTraces},
    (* find mass arguments that occur inside any DiracTrace in this dia *)
    massesInTraces = Flatten[
      Union@Cases[dia,
        DiracTrace[traceArgs__] :> Union@Cases[{traceArgs}, mass[x__] :> {x}, Infinity],
        Infinity
      ],
      1
    ];
    If[massesInTraces =!= {} && MemberQ[dia, _DiracTrace, Infinity],
       NF @@ massesInTraces * dia,  (* apply NF to the first mass-argument list found *)
       dia
    ]
  ],
  {i, Length[amplitudeslist]}
];
*)


(*Union@Cases[ampt, NF[__], Infinity]*)


(*amplitudeseft = {amplitudeslist[[31]],amplitudeslist[[32]],amplitudeslist[[33]],amplitudeslist[[34]],
amplitudeslist[[35]],amplitudeslist[[37]],amplitudeslist[[38]],amplitudeslist[[39]],amplitudeslist[[76]],
amplitudeslist[[17]]};*)


(*amplitudeseft = {amplitudeslist[[31]],amplitudeslist[[76]],amplitudeslist[[17]]};*)


(* ::Section::Closed:: *)
(*convert amplitude notation (*comment out*)*)


(*massa[x_]:=x/.SMP["m_Z"]:>mass[MZ]/.SMP["m_W"]:>mass[MW]/.SMP["m_H"]:>mass[MH]/.
FCGV["MPHOTON"]->mass[photon]/.SMP["m_t"]:>mass[MT]/.SMP["e"]:>EL*)


(*indices[x_]:=x//.{Lor1->1,Lor2->2,Lor3->3,Lor4->4,Lor5->5,Lor6->6,Lor7->7,Lor8->8}*)


(*amplitudeslist;
a1=coupl@massa@%(*/.{\[Xi]A->1,\[Xi]z->1,\[Xi]w->1}*);
a2=auxfrac@split@%;
a3=momentum@%;
a4=diracgamma@%;
a5=diracgamma2@%;
amp0 = indices@%//Expand;*)


(*Union@Cases[amp0, _ampden, Infinity]*)


(*diagswithtrace = Table[If[MemberQ[amp0[[i]], DiracTrace[__],Infinity],i,0],{i,Length[amp0]}]*)


(*amp0mtz = amp0/.mass[__]->0;*)


(*Union@Cases[amp0mtz, _mass, Infinity]*)


(*Union@Cases[amp0mtz, _ampden, Infinity]*)


(*ClearAll[trac, dt, mmDot]
trac[x_] := x /. {DiracTrace -> dt}
dt[expr_] := dt[expr /. Dot -> mmDot] /; Not@FreeQ[expr, _Dot]*)


(*amp0a = trac@amp0mtz;*)


(*Union@Cases[amp0a, _dt, Infinity]*)


(*ampz = cdl1@amp0a;*)


(*ampa = listextmom@ampz;*)


(*ampb = cutpower@ampa;*)


(*Union@Cases[ampz,_dt,Infinity];*)


(*ampz1 = tr@ampz;*)


(*Union@Cases[ampz1, _trace, Infinity];*)


(* ::Section::Closed:: *)
(*dirac algebra*)


ampz1 = Get["/home/ana/Desktop/counterterms/renormalization constants/fieldampnotconvert.m"];


ampza = Expand[ampz1]/.exdL->exdL1;


amp1 = Expand[ampza]/.exdL1->stexdL;


Union@Cases[amp1, _stexdL, Infinity]//TableForm;


Clear[dl]

(*dl/: dl[id_ , gamma[R]]:= 0 ;*)

dl/: dl[id_ , gamma[L], a_]:= 0 ;
dl/: dl[id_ , gamma[L], a_, b_, c_]:= 0 ;
dl/: dl[id_ , gamma[L], a_, b_, c_, d_, e_]:= 0 ;
dl/: dl[id_ , gamma[L], a_, b_, c_, d_, e_, f_, g_]:= 0 ;
dl/: dl[id_ , gamma[L], a_, b_, c_, d_, e_, f_, g_, h_, i_]:= 0 ;

dl/: dl[id_ , gamma[R], a_, b_]:= 0 ;
dl/: dl[id_ , gamma[R], a_, b_, c_, d_]:= 0 ;
dl/: dl[id_ , gamma[R], a_, b_, c_, d_, e_, f_]:= 0 ;
dl/: dl[id_ , gamma[R], a_, b_, c_, d_, e_, f_, g_, h_]:= 0 ;
dl/: dl[id_ , gamma[R], a_, b_, c_, d_, e_, f_, g_, h_, i_, j_]:= 0 ;


amp1a = Expand[amp1]/. stexdL->dl;


amp2 = amp1a /. dl -> stexdL;


Union@Cases[amp2,_stexdL,Infinity]//TableForm;


(*amp3 = offslash@amp2;*)


(*Union@Cases[amp3, _trace, Infinity];*)


(*amp3a = amp3/.extmom1->extmom;*)


(*amp3b = (cutpower[ listextmom@amp3])//.extmom1[m___]:>Times[m];*)


amp4 = tracestandardorder @ amp2;


Union@Cases[amp4, _strace, Infinity];


Union@Cases[amp4, _strace, Infinity];


amp4a = offslash@amp4;


amp5 = tracestandardorder1 @ amp4a;


Union@Cases[amp5, _trace1, Infinity];


amp6 = tracestandardorder2 @ amp5;


Union@Cases[amp6, _strace2, Infinity];


amp6a = amp6/.stexdL->dl;


amp6b = amp6a/.dl->stexdL;


amp7 = amp6b(*//.extmom1[m___]:>Times[m]*);


(*Union@Cases[amp7, _stexdL, Infinity];*)


(* ::Section::Closed:: *)
(*expansion   in   external   momentum*)


(*add mass in all denominators*)
amp7a = Expand[amp7]//.ampden[a___, 0]:>ampden[a, mass[me]](*//.ampden[a__, y__ masshold[x_]]:>ampden[a, y mass[me]]//.
ampden[a__, masshold[x_]]:>ampden[a, mass[me]]*);


(*Union@Cases[amp7a[[1]], ampden[__], Infinity]*)


(*Union@Cases[amp7a[[1]], ampden[__]^n_, Infinity]*)


(*Union@Cases[amp7a[[2]], ampden[__]^n_, Infinity];
%[[1]]/.changevar
expandpropmass@propstandform@%
%//. { Power[q[i_], n__] /; n<0 :> ampden[q[i], 0]^(-n/2 ) }//.
{ Power[q_^2 - m_^2, n__] /; n<0 :> ampden[q, m]^(-n ) }//.
{ Power[q_^2 - m_^2 \[Xi]_, n__] /; n<0 :> ampden[q, Sqrt[\[Xi]] m]^(-n ) }
%/.changevarback*)


(*
change of variables before the expansion
q1 + q2 -> pq12
q1 - q2 -> mq12
*)


(*changevar = {q[1] + q[2]-> q[plus12], q[1] - q[2]-> q[minus12], - q[1] + q[2]-> - q[minus12]};*)


changevar = {
ampden[p[1]- q[1] + q[2], m__]:> ampden[p[1] - q[minus12], m],
ampden[p[1]-q[1] - q[2], m__]:> ampden[p[1] - q[plus12], m],
ampden[p[1] + q[1] - q[2], m__]:> ampden[p[1] + q[minus12], m],
ampden[p[1] +q[1] + q[2], m__]:> ampden[p[1] + q[plus12], m],
ampden[-p[1] +q[1] - q[2], m__]:> ampden[-p[1] + q[minus12], m]
};


changevarback = {q[plus12] -> q[1] + q[2], q[minus12] -> q[1] - q[2], 
q[plus12,ind_] :> q[1,ind] + q[2,ind], q[minus12,ind_] :> q[1,ind] - q[2,ind]};


amp11 = amp7a/.changevar;


(*expand in the external momenta*)


amp12 = expandpropmass@propstandform[amp11];


amp13 = amp12 //. { Power[q[i_], n__] /; n<0 :> ampden[q[i], 0]^(-n/2 ) }//.
{ Power[q_^2 - m_^2, n__] /; n<0 :> ampden[q, m]^(-n ) }(*//.
{ Power[q_^2 - m_^2 \[Xi]_, n__] /; n<0 :> ampden[q, Sqrt[\[Xi]] m]^(-n ) }*);


(*amp14 = offsp/@amp13;*)
amp14 = offsp/@amp13;


(*Union@Cases[amp14, _sp, Infinity]*)


amp15 = listextmom@Expand[amp14];


amp16 = cutpower@amp15;


amp16a = Expand[amp16];


amp17 = amp16a/.stexdL -> dl;


amp17a = amp17/.dl -> stexdL;


amp18 = amp17a/.changevarback;


(*Union@Cases[amp18[[1]], ampden[__], Infinity]//TableForm*)


(*mapapart=Column[MapThread[#1 -> #2 &, {amplist, apartamplist}], Spacings -> 2]*)


(* ::Section::Closed:: *)
(*denominators  into  standard  order*)


(*Union@Cases[amp18,_ampden,Infinity]*)


Clear[shiftmom]
shiftmom[arg_]:=arg/. {ampden->sampden};

sampden[q[2]-q[1],m___]:=sampden[q[1]-q[2],m];
sampden[-q[i_],m___]:=sampden[q[i],m]


amp19 = shiftmom@amp18;


(* uncomment if we have just one amplitude *)
(*amp20 = With[{dia = amp19},
   If[MemberQ[dia,sampden[q[1] + q[2],___], Infinity], 
   amp19/.{q[2]-> -q[2], q[2,ind_]-> -q[2,ind]}, amp19]];*)


(* uncomment if we have a list with amplitudes *)
Clear[amp20];
amp20 = Table[
  With[{dia = amp19[[i]]},
   If[MemberQ[dia,sampden[q[1] + q[2],___], Infinity], 
   amp19[[i]]/.{q[2]-> -q[2], q[2,ind_]:> -q[2,ind]}, amp19[[i]]]
  ],
  {i, Length[amp19]}
];


Union@Cases[amp20,_sampden,Infinity]


(* ::Section::Closed:: *)
(*tensor  reduction*)


amp21 = Expand[amp20]/.{q[i_,j_]:>tredh[q[i,j]]};


amp22 = Expand[amp21]/.tredh->tred;


(*Union@Cases[amp22, extmom1[__]^n_, Infinity]*)


amp22a = amp22//.extmom1[m___]:>Times[m];


amp23 = Expand@amp22a;


(*Union@Cases[amp23, _stexdL, Infinity];*)


amp23a = amp23//. {p[a_, b_]stexdL[{in[1],in[2]},gamma[R],gamma[b_]]:>pslash[a]};


(*Union@Cases[amp23a, p[__]^n_, Infinity]*)


(*Union@Cases[amp23a, _stexdL, Infinity]*)


amp24 = Expand[spt@amp23a];


(*Union@Cases[amp24, _spaux, Infinity]*)


amp25 = convertden@amp24;


amp26 = amp25/.auxden->auxdensimp;


(* ::Section::Closed:: *)
(*partial  fraction  and  reduction  to  tadpoles*)


dens = Union@Cases[amp26, _auxdensimp, Infinity];


densa = dens/.auxdensimp->standform;


densb = densa/.toaux;


dens1 = densb/.{q12 -> qs[1], q22 -> qs[2], q122 -> qs[3]};


(*do partial fraction in the denominators until they are all in the tadpole form*)


dens2 = Table[ apartMom[dens1[[i]],3],
   {i, Length[dens1]}
];


dens3 = dens2/.{qs[1]->q12,qs[2]->q22,qs[3]->q122};


dens4 = totad@dens3;


rules = Dispatch[Thread[dens -> dens4]];


amp27 = amp26/.rules;


(*uncomment if we have a list of amplitudes*)
amp28 = Table[If[Head[amp27[[i]]]===List,Total@amp27[[i]],amp27[[i]]],{i,Length[amp27]}];


(*uncomment if we only one amplitude*)
(*amp28 = Total@amp27;*)


(*tds = Union@Cases[amp28,_tad,Infinity];*)


amp29 = amp28/. 
tad[{Null,j_,k_},{a_,b_,c_}]:>tad[{0,j,k},{a,b,c}]/.
tad[{i_,Null,k_},{a_,b_,c_}]:>tad[{i,0,k},{a,b,c}]/.
tad[{i_,j_,Null},{a_,b_,c_}]:>tad[{i,j,0},{a,b,c}]/.tad->mtad;


amp30a = amp29/.mass[x_]:>x;


(*amp30b = amp30a[[17]]+amp30a[[28]]+amp30a[[29]]+
amp30a[[30]]+amp30a[[31]]+amp30a[[32]]+
amp30a[[34]]+amp30a[[35]]+amp30a[[36]]+amp30a[[73]];*)


(* ::Section::Closed:: *)
(*load rules*)


(*mf1=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf1.m"]/.
{G[a_,b_]->mtad[{m1,0,0},b]};

mf2=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf2.m"]/.
{G[a_,b_]->mtad[{0,m1,0},b]};

mf3=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf3.m"]/.
{G[a_,b_]->mtad[{0,0,m1},b]};

mf4=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf4.m"]/.
{G[a_,b_]->mtad[{m1,m1,0},b]};

mf5=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf5.m"]/.
{G[a_,b_]->mtad[{0,m1,m1},b]};

mf6=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf6.m"]/.
{G[a_,b_]->mtad[{m1,0,m1},b]};

mf7=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf7.m"]/.
{G[a_,b_]->mtad[{m1,m2,0},b]};

mf8=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf8.m"]/.
{G[a_,b_]->mtad[{0,m1,m2},b]};

mf9=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf9.m"]/.
{G[a_,b_]->mtad[{m1,0,m2},b]};

mf10=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf10.m"]/.
{G[a_,b_]->mtad[{m1,m1,m2},b]};

mf12=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf12.m"]/.
{G[a_,b_]->mtad[{m1,m2,m1},b]};

mf13=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf13.m"]/.
{G[a_,b_]->mtad[{m1,m2,m3},b]};*)


(*mf1a = Table[
  ReplacePart[mf1[[i]], 1 -> mf1[[i, 1]] /. mtad[{m1 , 0, 0}, a_] :> mtad[{m1_ /; m1 =!=0, 0, 0}, a]],
  {i, Length[mf1]}
];

mf2a=Table[
  ReplacePart[mf2[[i]], 1 -> mf2[[i, 1]] /. mtad[{0, m1, 0}, a_] :> mtad[{0, m1_ /; m1 =!=0, 0},a]],
  {i, Length[mf2]}
];

mf3a=Table[
  ReplacePart[mf3[[i]], 1 -> mf3[[i, 1]] /. mtad[{0, 0, m1}, a_] :> mtad[{0, 0, m1_ /; m1 =!=0},a]],
  {i, Length[mf3]}
];

mf4a=Table[
  ReplacePart[mf4[[i]], 1 -> mf4[[i, 1]]/. mtad[{m1,m1,0},a_] :> mtad[{m1_ /; m1 =!=0,m1_ /; m1 =!=0,0},a]],
  {i, Length[mf4]}
];

mf5a=Table[
  ReplacePart[mf5[[i]], 1 -> mf5[[i, 1]]/. mtad[{0,m1,m1},a_] :> mtad[{0,m1_ /; m1 =!=0,m1_ /; m1 =!=0},a]],
  {i, Length[mf5]}
];

mf6a=Table[
  ReplacePart[mf6[[i]], 1 -> mf6[[i, 1]]/. mtad[{m1,0,m1},a_] :> mtad[{m1_/; m1 =!=0,0,m1_/; m1 =!=0},a]],
  {i, Length[mf6]}
];

mf7a=Table[
  ReplacePart[mf7[[i]], 1 -> mf7[[i, 1]] /. mtad[{m1,m2,0},a_] :> mtad[{m1_/; m1 =!=0,m2_/; m2 =!=0,0},a]],
  {i, Length[mf7]}
];

mf8a=Table[
  ReplacePart[mf8[[i]], 1 -> mf8[[i, 1]] /. mtad[{0,m1,m2},a_] :> mtad[{0,m1_/; m1 =!=0,m2_/; m2 =!=0},a]],
  {i, Length[mf8]}
];

mf9a=Table[
  ReplacePart[mf9[[i]], 1 -> mf9[[i, 1]] /. mtad[{m1,0,m2},a_] :> mtad[{m1_ /; m1 =!=0,0,m2_ /; m2 =!=0},a]],
  {i, Length[mf9]}
];

mf10a=Table[
  ReplacePart[mf10[[i]], 1 -> mf10[[i, 1]] /. mtad[{m1,m1,m2},a_] :> mtad[{m1_ /; m1 =!=0,m1_ /; m1 =!=0,m2_ /; m2 =!=0},a]],
  {i, Length[mf10]}
];

mf12a=Table[
  ReplacePart[mf12[[i]], 1 -> mf12[[i, 1]]/. mtad[{m1,m2,m1},a_] :> mtad[{m1_ /; m1 =!=0,m2_ /; m2 =!=0,m1_ /; m1 =!=0},a]],
  {i, Length[mf12]}
];

mf13a=Table[
  ReplacePart[mf13[[i]], 1 -> mf13[[i, 1]]/. mtad[{m1,m2,m3},a_] :> mtad[{m1_ /; m1 =!=0,m2_ /; m2 =!=0,m3_ /; m3 =!=0},a]],
  {i, Length[mf13]}
];

mf14a=Table[
  ReplacePart[mf14[[i]], 1 -> mf14[[i, 1]] /. mtad[{m1,m1,m1},a_] :> mtad[{m1_ /; m1 =!=0,m1_ /; m1 =!=0,m1_ /; m1 =!=0},a]],
  {i, Length[mf14]}
];*)


(*mf1l=Get["/home/ana/Desktop/ext_momenta/masters.m"]/.
{G[a_,b_]->mtad1loop[{m1},b]};

mf1al = Table[
  ReplacePart[mf1l[[i]], 1 -> mf1l[[i, 1]] /. mtad1loop[{m1}, a_] :> mtad1loop[{m1__ /; m1 =!=0}, a]],
  {i, Length[mf1l]}
];*)


mf1=Get[direc <> "/masters/field_ren/mastersm00.m"]/.m->me/.
{G[a_,b_]->mtad[{me,0,0},b]};

mf4=Get[direc <> "/masters/field_ren/mastersmm0.m"]/.m->me/.
{G[a_,b_]->mtad[{me,me,0},b]};

mf5=Get[direc <> "/masters/field_ren/masters0mm.m"]/.m->me/.
{G[a_,b_]->mtad[{0,me,me},b]};

mf6=Get[direc <> "/masters/field_ren/mastersm0m.m"]/.m->me/.
{G[a_,b_]->mtad[{me,0,me},b]};

mf7=Get[direc <> "/masters/field_ren/masters0m0.m"]/.m->me/.
{G[a_,b_]->mtad[{0,me,0},b]};

mf14=Get[direc <> "/masters/field_ren/mastersmmm.m"]/.m->me/.
{G[a_,b_]->mtad[{me,me,me},b]};


mf1a = Table[
  ReplacePart[mf1[[i]], 1 -> mf1[[i, 1]] /. mtad[{me , 0, 0}, a_] :> mtad[{me_ /; me =!=0, 0, 0}, a]],
  {i, Length[mf1]}
];

mf4a=Table[
  ReplacePart[mf4[[i]], 1 -> mf4[[i, 1]]/. mtad[{me,me,0},a_] :> mtad[{me_ /; me =!=0,me_ /; me =!=0,0},a]],
  {i, Length[mf4]}
];

mf5a=Table[
  ReplacePart[mf5[[i]], 1 -> mf5[[i, 1]]/. mtad[{0,me,me},a_] :> mtad[{0,me_ /; me =!=0,me_ /; me =!=0},a]],
  {i, Length[mf5]}
];

mf6a=Table[
  ReplacePart[mf6[[i]], 1 -> mf6[[i, 1]]/. mtad[{me,0,me},a_] :> mtad[{me_/; me =!=0,0,me_/; me =!=0},a]],
  {i, Length[mf6]}
];

mf7a=Table[
  ReplacePart[mf7[[i]], 1 -> mf7[[i, 1]]/. mtad[{0,me,0},a_] :> mtad[{0,me_/; me =!=0,0},a]],
  {i, Length[mf7]}
];

mf14a=Table[
  ReplacePart[mf14[[i]], 1 -> mf14[[i, 1]]/. mtad[{me,me,me},a_] :> mtad[{me_/; me =!=0,me_/; me =!=0,me_/; me =!=0},a]],
  {i, Length[mf14]}
];


(* ::Section::Closed:: *)
(*reduction   to   masters*)


(*extract the integrals I need to reduce*)
(*Union@Cases[amp30, _mtad, Infinity];
Union@Cases[%, mtad[{m_, m_, m_},{b__}],Infinity];
%//.mtad[a__, b__]:>{1, b}*)


amp30 = amp30a/.mf1a/.mf4a/.mf5a/.mf6a/.mf7a/.mf14a;


Union@Cases[amp30[[1]], _mtad, Infinity]


amp33 = Table[Coefficient[amp30[[i]],pslash[1]],{i,Length[amp30]}];


(* ::Section::Closed:: *)
(*final  result amplitudes*)


(* ::Input:: *)
(*Clear[sorttad]*)
(*sorttad[{a_,0,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;*)
(*sorttad[{0,a_,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;*)
(*sorttad[{a_,0,b_},{1,0,1}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);*)
(*sorttad[{a_,0,b_},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);*)
(*sorttad[{a_,b_,0},{1,1,0}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);*)
(*sorttad[{a_,b_,0},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);*)


(*dz = Get["/home/ana/Desktop/dzele_masters.m"];*)


dz = amp33;


dz1 = dz/.d->4-2e/.mtad->sorttad/.sorttad->tad;


dz2 = dz1/.tad->analyticTad;


Union@Cases[dz2, _analyticTad, Infinity]


dz3=Table[Normal[Series[dz2[[i]],{e,0,-1}]],
{i,Length[dz2]}];


dz4=Table[Collect[dz3[[i]],{1/e},Simplify],{i,Length[dz2]}];


Export[direc <> "/Results/Renormalisation/2loopfieldren/frdownamp.m",dz4]


(* ::Section::Closed:: *)
(*counterterm diagrams (*comment out*)*)


(*ctwt = InsertFields[CreateCTTopologies[1,1 -> 1,ExcludeTopologies->{WFCorrectionCTs, TriangleCTs, WFCorrectionCTs}], 
	{F[4,{1}]} -> {F[4,{1}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SMew",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[ctwt];*)


(*ctw = InsertFields[CreateCTTopologies[2,1 -> 1,ExcludeTopologies->{WFCorrectionCTs, TriangleCTs, WFCorrectionCTs}], 
	{F[4,{1}]} -> {F[4,{1}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SMew",
	Restrictions -> NoLightFHCoupling
	];

draw1 = Paint[ctw];*)


(*Export["/home/ana/Desktop/ct1.pdf",Show@draw1];*)


(* ::Section::Closed:: *)
(*counterterm  amplitudes (*comment out*)*)


(*ctwd[j_,counts_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[counts,{j}],Truncated->True,GaugeRules -> {}],
IncomingMomenta->{p1},OutgoingMomenta->{p1},LoopMomenta->{q1},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{SMP["m_b"]->mass[MB],SMP["m_s"]->mass[MS],SMP["m_c"]->mass[MC],SMP["m_u"]->mass[MU],SMP["m_d"]->mass[MD],
SMP["m_e"]->mass[ME],SMP["m_mu"]->mass[MM],SMP["m_tau"]->mass[ML],
SMP["sin_W"]->SW,SMP["cos_W"]->CW}*)


(*amplitudeslistct = Get["/home/ana/Desktop/dZquarksEFT/ctSM.m"];*)


(*amplitudescteft = {amplitudeslistct[[1]],amplitudeslistct[[4]],amplitudeslistct[[9]],amplitudeslistct[[48]]};*)


(*amplitudesct = Table[ctwd[i, ctw],{i,172}];*)


(* ::Section::Closed:: *)
(*convert notation - counterterms*)


(*massa[x_]:=x/.SMP["m_Z"]:>mass[MZ]/.SMP["m_W"]:>mass[MW]/.SMP["m_H"]:>mass[MH]/.
FCGV["MPHOTON"]->mass[photon]/.SMP["m_t"]:>mass[MT]/.SMP["e"]:>EL/.Mass[F[1,1]]->mass[me]*)


(*indices[x_]:=x//.{Lor1->1,Lor2->2,Lor3->3,Lor4->4,Lor5->5,Lor6->6,Lor7->7,Lor8->8}*)


(*amplitudescteft/.Conjugate[a_]->a/.dZfR1[__]->0;
coupl@massa@%/.SMP["cos_W"]->cw/.SMP["sin_W"]->sw(*/.{\[Xi]A->1, \[Xi]w->1, \[Xi]z->1}*);
auxfrac@split@%;
momentum@%;
diracgamma@%;
diracgamma2@%;
ct1=indices@%//Expand;*)


(*ct1a = ct1/.mass[me]->0/.mass[mf]->0/.mass[photon]->0(*/.ampden[0,0]->0*)/.mass[x_]:>0;*)


(*ClearAll[trac, dt, mmDot]
trac[x_] := x /. {DiracTrace -> dt}
dt[expr_] := dt[expr /. Dot -> mmDot] /; Not@FreeQ[expr, _Dot]*)


(*ct2 = trac @ ct1a;*)


(*ct3 = cdl1 @ ct2;*)


(*ct3a = joindL@ct3;*)


(*ct3b = ct3a/.dLjoined->exdL;*)


(*ct4 = tr@ct3b;*)


(* ::Section::Closed:: *)
(*dirac algebra*)


ct4 = Get[direc <> "/Renormalization/RENORMALIZATION CONSTANTS/2 LOOP/field_renorm/fieldctnotconvert.m"];


ct6 = diracstandardorder @ ct4;


ct9a = tracestandardorder@ct6;


(*Union@Cases[ct9a, _strace, Infinity]*)


ct10 = offslash @ ct9a;


ct11 = tracestandardorder1 @ ct10;


ct12 = tracestandardorder2 @ ct11;


(* ::Section::Closed:: *)
(*expansion  in  external  momenta  for  counterterms*)


(*ct18 = offsp /@ ct17;*)


Union@Cases[ct12, _ampden, Infinity]


ct19 = ct12//.ampden[a__, 0]:>ampden[a, me];


Union@Cases[ct19, _ampden, Infinity]


ct20 = listextmom @ ct19;


ct21 = cutpower @ ct20;


ct21a = ct21//.extmom1[a__]:>Times[a];


(*expand in the external momenta*)


ct22 = expandpropmass@expandpropmassless@propstandform[ct21a];


ct23 = ct22 //. { Power[q[i_], n__] /; n<0 :> ampden[q[i], 0]^(-n/2 ) }//.
{ Power[q_^2 - m_^2, n__] /; n<0 :> ampden[q, m]^(-n ) }//.
{ Power[q_^2 - m_^2 \[Xi]_, n__] /; n<0 :> ampden[q, Sqrt[\[Xi]] m]^(-n ) };


Union@Cases[ct23, _ampden, Infinity]


Union@Cases[ct23, _sp, Infinity]


(*ct24 = offsp/@ct23;*)
ct24 = offsp /@ ct23;


Union@Cases[ct24, _sp, Infinity]


ct26 = listextmom @ ct24;


ct27 = cutpower @ ct26;


ct28 = Expand[ct27];


ct29 = ct28//.extmom1[a__]:>Times[a];


(* ::Section::Closed:: *)
(*ct  tensor  reduction*)


(*the denominators are already in standard order*)


ct30 = ct29/. ampden->sampden;


ct31 = ct30/.{q[i_,j_]:>tredh[q[i,j]]};


ct32 = ct31/.tredh->tred;


ct33 = Expand @ ct32;


ct34 = spt @ ct33;


ct35 = convertden @ ct34;


ct36 = ct35/.auxden->auxdensimp;


(* ::Section::Closed:: *)
(*ct  partial  fraction*)


ctdens = Union@Cases[ct36, _auxdensimp, Infinity];


ctdensa = ctdens/.auxdensimp->standform;


ctdensb = ctdensa/.toaux;


ctdens1 = ctdensb/.{q12 -> qs[1]};


(*do partial fraction in the denominators until they are all in the tadpole form*)


ctdens2 = Table[ apartMom[ctdens1[[i]],1],
   {i, Length[ctdens1]}
];


ctdens3 = ctdens2/.{qs[1]->q12};


ctdens4 = totad @ ctdens3;


(*rules that substitute the denominators for the correpondent tadpoles*)


rules = Dispatch[Thread[ctdens -> ctdens4]];


(*use the substitution rule back in the amplitudes*)


ct37 = ct36/.rules;


(*uncomment if we have a list of amplitudes*)
ct38 = Table[If[Head[ct37[[i]]]===List,Total@ct37[[i]],ct37[[i]]],{i,Length[ct37]}];


(*uncomment if we only one amplitude*)
(*ct38 = Total@ct37;*)


(*tds = Union@Cases[amp28,_tad,Infinity];*)


ct39 = ct38/. 
tad[{Null,j_,k_},{a_,b_,c_}]:>tad[{0,j,k},{a,b,c}]/.
tad[{i_,Null,k_},{a_,b_,c_}]:>tad[{i,0,k},{a,b,c}]/.
tad[{i_,j_,Null},{a_,b_,c_}]:>tad[{i,j,0},{a,b,c}]/.tad->mtad;


(*Union@Cases[ct39, _stexdL, Infinity];*)


Clear[dL]
dL[{a_, b_}, gamma[L], c_]:=0;


ct40 = ct39//.stexdL->dL//.{p[j_, i_]dL[{a_, b_}, gamma[R], gamma[i_]]:>pslash[j]};


(*toteftct = Total[ct40];*)


(*tot = Coefficient[toteftct, pslash[1]];*)


(* ::Section::Closed:: *)
(*ct  final  result*)


(*Clear[dL1]
dL1/: extmom1[p[i_,j_]] dL1[id_, gamma[R], gamma[j_]]:= pslash[i] gamma[L]
dL1/: dL1[id_, gamma[L], gamma[j_]]:= 0
dL1/: dL1[id_, gamma[L]]:= gamma[L]
dL1/: dL1[id_, gamma[R]]:= 0*)


ct41 = ct40/.mtad->mtad1loop/.mf1al/.d->4-2e;


ct42 = ct41/.mtad1loop->analyticTad;


Union@Cases[ct42, _analyticTad, Infinity]


ct43 = Series[ct42,{e,0,0}]//Normal//Collect[#,{1/e},Simplify]&;


ct44 = Coefficient[ct43, pslash[1]]


totcteft = Total@ct43


(* ::Section::Closed:: *)
(*1  loop  renormalization  constants*)


(* ::Subsection::Closed:: *)
(*renormalisation constants in the EW SM (if want EFT need to change ren constants!!!)*)


(*some renormalisation constants in EFT (QED)*)
(*dzeleeft1 = -EL^2/(4 Pi)^2/e \[Xi]A
dzphotoneft =- EL^2/(4 Pi)^2/e 20/9
dzm = EL^2/(4 Pi)^2/e (-80/3)*)


dze=(\[Alpha]/4/Pi * 11/6/e);

dzmw=(-(((9*MH^4 + MH^2*(56*MW^2 - 9*MZ^2) + 18*(2*MW^4 + MZ^4))/
    (48*MH^2*sw^2) + ((-4*MT^4 + MH^2*(MT^2 - 2*MW^2))*nc)/(8*MH^2*sw^2))*
  \[Alpha])/(Pi*e)) flag[mw]/.{nc->3}//Collect[#,{\[Alpha]/e/Pi,1/sw^2},Expand]&;
  
  dzswsq=((\[Alpha] ((11 sw^2)/12+19/24))/(Pi e));
  
  dzsw =((\[Alpha] ((5 MW^2)/(24 MZ^2 sw^3)-5/(24 sw^3)+(11 sw)/24+29/(48 sw)))/(Pi e));
  
  dzele=((\[Alpha]*(-1/4*\[Xi]A - \[Xi]w/(8*sw^2) + \[Xi]z/4 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*e));
 
 dzneut=((\[Alpha]*(-1/8*\[Xi]w/sw^2 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*e));
  
dzphoton = ((\[Alpha] (-\[Xi]w/4-5/3))/(Pi e));
 
dzu = ((\[Alpha] (\[Xi]z/(18 cw^2)-\[Xi]z/(16 cw^2 sw^2)-\[Xi]A/9+\[Xi]z/9-\[Xi]w/(8 sw^2)))/(Pi e));
 

dzd = ((\[Alpha] (\[Xi]z/(18 cw^2)-\[Xi]z/(16 cw^2 sw^2)-\[Xi]A/36+\[Xi]z/36-\[Xi]w/(8 sw^2)))/(Pi e));

dzele=((\[Alpha]*(-1/4*\[Xi]A - \[Xi]w/(8*sw^2) + \[Xi]z/4 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*e));
 
dzneut=((\[Alpha]*(-1/8*\[Xi]w/sw^2 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*e));

 
dzw= flagw[w]( ((19-6 nc) \[Alpha])/(24 \[Pi] sw^2 e)-(\[Alpha] \[Xi]A)/(8 \[Pi] e)-(\[Alpha] \[Xi]w)/(8 \[Pi] sw^2 e)-(cw^2 \[Alpha] \[Xi]z)/(8 \[Pi] sw^2 e));

dzzz = \[Alpha]/4/Pi/e (49/6/cw^2 - 43/12/cw^2/sw^2 + 17 cw^2/4/sw^2 - 131 sw^2/12/cw^2 - cw^2 \[Xi]w /sw^2);

dzmz = \[Alpha]/4/Pi/e (MZ^2)(29/6/cw^2 - 11/12/sw^2/cw^2 + 
11/3 sw^2/cw^2 - 3/2/sw^2/cw^2 MT^2/MZ^2 - 3/4/sw^2/cw^2 MH^2/MZ^2 + flg[ykandtad] 6/sw^2/cw^2 MT^4/MZ^2/MH^2 -
3/2/sw^2/cw^2 MZ^2/MH^2 - 3/sw^2 MZ^2/MH^2 + 3 MZ^2/MH^2) flag[mz];

dzza = \[Alpha]/4/Pi/e (3 cw/sw + cw/sw \[Xi]w);

dzaz = \[Alpha]/4/Pi/e (-82/3/cw/sw + 71/3 cw/sw + 3 cw/sw \[Xi]w);

dzmwpaper = \[Alpha]/4/Pi/e MW^2 (3/4 - 11/12/sw^2 + 3/4 sw^2/cw^2 - 3/2/sw^2 MT^2/MW^2 - 
3/4/sw^2 MH^2/MW^2 + 6/sw^2 MT^4/MW^2/MH^2 - 3/2/sw^2/cw^4 MW^2/MH^2 - 3 MW^2/sw^2/MH^2);


dzazkai = sw^(-1)*cw^(-1)*Qtau*rat[-2,3]+ sw^(-1)*cw^(-1)*Qmu*rat[-2,3] + sw^(-1)*cw^(-1)*Qe*rat[-2,3]+ sw^(-1)*cw*rat[-34,3]+ sw*cw^(-1)*rat[-1,3]+ sw*cw^(-1)*Qtau^2*rat[-8,3]+ sw*cw^(-1)*Qmu^2*rat[-8,3]+ sw*cw^(-1)*Qe^2*rat[-8,3]+ xiqw*sw^(-1)*cw*rat[1,1]+ nc*sw^(-1)*cw^(-1)*Qt*rat[2,3]+ nc*sw^(-1)*cw^(-1)*Qb*rat[-2,3]+ nc*sw^(-1)*cw^(-1)*Qc*rat[2,3]+ nc*sw^(-1)*cw^(-1)*Qs*rat[-2,3]+ nc*sw^(-1)*cw^(-1)*Qd*rat[-2,3]+ nc*sw^(-1)*cw^(-1)*Qu*rat[2,3]+ nc*sw*cw^(-1)*Qt^2*rat[-8,3]+ nc*sw*cw^(-1)*Qb^2*rat[-8,3]+ nc*sw*cw^(-1)*Qc^2*rat[-8,3]+ nc*sw*cw^(-1)*Qs^2*rat[-8,3]+ nc*sw*cw^(-1)*Qd^2*rat[-8,3]+ nc*sw*cw^(-1)*Qu^2*rat[-8,3];


dzazkai1=\[Alpha]/4/Pi/e dzazkai/.rat[a_, b_]:>a/b/.xiqw->\[Xi]w/.nc->3/.Qtau->Qe/.Qmu->Qe/.Qc->Qu/.Qt->Qu/.Qb->Qd/.Qs->Qd/.Qd->-1/3/.Qe->-1/.Qu->2/3;


dzzzkai = sw^(-2)*cw^(-2)*rat[-13,12]+ sw^(-2)*rat[17,4]+ cw^(-2)*rat[-1,12]+ cw^(-2)*Qtau*rat[-2,3]+ cw^(-2)*Qtau^2*rat[-4,3]+ cw^(-2)*Qmu*rat[-2,3]+ cw^(-2)*Qmu^2*rat[-4,3]+ cw^(-2)*Qe*rat[-2,3]+ cw^(-2)*Qe^2*rat[-4,3]+ Qtau^2*rat[4,3]+ Qmu^2*rat[4,3]+ Qe^2*rat[4,3]+ xiqw*sw^(-2)*rat[-1,1]+ xiqw*rat[1,1]+ nc*sw^(-2)*cw^(-2)*rat[-1,1]+ nc*cw^(-2)*Qt*rat[2,3] + nc*cw^(-2)*Qt^2*rat[-4,3]+ nc*cw^(-2)*Qb*rat[-2,3]+ nc*cw^(-2)*Qb^2*rat[-4,3]+ nc*cw^(-2)*Qc*rat[2,3]+ nc*cw^(-2)*Qc^2*rat[-4,3]+ nc*cw^(-2)*Qs*rat[-2,3]+ nc*cw^(-2)*Qs^2*rat[-4,3]+ nc*cw^(-2)*Qd*rat[-2,3]+ nc*cw^(-2)*Qd^2*rat[-4,3]+ nc*cw^(-2)*Qu*rat[2,3]+ nc*cw^(-2)*Qu^2*rat[-4,3]+ nc*Qt^2*rat[4,3]+ nc*Qb^2*rat[4,3]+ nc*Qc^2*rat[4,3]+ nc*Qs^2*rat[4,3]+ nc*Qd^2*rat[4,3]+ nc*Qu^2*rat[4,3]+ rat[-4,1];


dzzzkai1=\[Alpha]/4/Pi/e dzzzkai/.rat[a_, b_]:>a/b/.xiqw->\[Xi]w/.nc->3/.Qtau->Qe/.Qmu->Qe/.Qc->Qu/.Qt->Qu/.Qb->Qd/.Qs->Qd/.Qd->-1/3/.Qe->-1/.Qu->2/3;


(*dzmw/.flag[__]:>1
dzmwpaper
%-%%/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify*)


(* ::Subsection:: *)
(*substitute renormalisation constants*)


simpflags[x_]:=x/.{flag[__]->1}


renfunc[x_]:=x/.{dSW1->dzsw}/.{dMWsq1->dzmw}/.{dZe1->dze}/.{dZfL1[1,2,2]->dzneut}/.
dZfL1[2,2,2]->dzele/.{dZfL1[2,1,1]->dzele}/.
dZfL1[1,1,1]->dzneut/.dZfL1[4,1,1]->dzd/.dZfL1[3,1,1]->dzu/.dZAA1->dzphoton/.dZW1-> dzw/.
dZZZ1-> dzzzkai1/.dMZsq1-> dzmz/.
dZZA1-> dzza/.dZAZ1-> dzazkai1


ct45 = simpflags@renfunc@(ct44)/.el->EL/.mass[x__]:>x/.\[Alpha]->EL^2/4/Pi//Collect[#, { 1/e^2, 1/e, Log[__]}, Simplify]&


(* ::Section::Closed:: *)
(*saving results*)


(*Total[simpflags@renfunc@totcteft+toteft]/.el->EL*)
