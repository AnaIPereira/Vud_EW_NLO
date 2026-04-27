(* ::Package:: *)

(* ::Section::Closed:: *)
(*phi*)


(*(*lambsqddt[x_, y_] := (1 - x - y)^2 - 4 x y;*)
(*phi1ddt[x_, y_] := 1/Sqrt[lambsqddt[x, y]]*
   (2*Log[(1 + x - y - Sqrt[lambsqddt[x, y]])/2]*
      Log[(1 - x + y - Sqrt[lambsqddt[x, y]])/2] -
     Log[x] Log[y] -
     2 PolyLog[2, (1 + x - y - Sqrt[lambsqddt[x, y]])/2] -
     2 PolyLog[2, (1 - x + y - Sqrt[lambsqddt[x, y]])/2] + Pi^2/3);
phi2ddt[x_, y_] := Block[{cl2},
  cl2[z_] := I/2 (PolyLog[2, Exp[-I z]] - PolyLog[2, Exp[I z]]);
  2/Sqrt[-lambsqddt[x, y]] (
    cl2[2 ArcCos[(-1 + x + y)/(2 Sqrt[x y])]] +
     cl2[2 ArcCos[(1 + x - y)/(2 Sqrt[x])]] +
     cl2[2 ArcCos[(1 - x + y)/(2 Sqrt[y])]]
    )
  ];*)
(*phi1ddt[x_] := Block[{cl2},
   cl2[z_] := I/2 (PolyLog[2, Exp[-I z]] - PolyLog[2, Exp[I z]]);
   4 Sqrt[x/(1 - x)] cl2[2 ArcSin[Sqrt[x]]]
   ];
   *)
phi2ddt[x_] := Block[{lam},
  lam = Sqrt[1 - 1/x];
  1/lam (-4 PolyLog[2, (1 - lam)/2] + 2 Log[(1 - lam)/2]^2 -
     Log[4 x]^2 + Pi^2/3)
  ];
(*PhiN[x_] :=
  If[x > 1,
   Chop[phi2ddt[x]],
   Chop[phi1ddt[x]]
   ];
PhiN[x_, y_] :=
  If[(lambsqddt[x, y]) < 0,
   Chop[phi2ddt[x, y]],
   Chop[phi1ddt[x, y]]
   ]*)
   
   PhiN[x_]:=phi2ddt[x]
   *)


(* ::Section::Closed:: *)
(*Load  packages*)


(*Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;*)


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/QFTSymbols.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/MassiveTadpole.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/notation.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/fermionline.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/tensred.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/integration_2loop.m"]


(* ::Input:: *)
(**)


(* ::Section:: *)
(*load  results*)


(*amp=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/ampconvertedwithtad.m"];*)


(*amp=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/ampconvertedpionwithtad.m"];*)


amp = Get["/home/ana/Desktop/muon/feynman gauge/resultsfeyngauge/convertednotfeyngauge.m"];


Length[amp]


(* ::Section::Closed:: *)
(*dirac  line  and  traces  into  standard  order*)


(*diag=aamp/.\[Xi]w->1/.\[Xi]A->1/.\[Xi]z->1;*)
diag=amp/.\[Xi]w->1/.\[Xi]A->1/.\[Xi]z->1;


diag1=diag/.{gamma[Lor1]->gamma[1]}/.{gamma[Lor2]->gamma[2]}/.{gamma[Lor3]->gamma[3]}/.
{gamma[Lor4]->gamma[4]}/.{gamma[Lor5]->gamma[5]}/.{gamma[Lor6]->gamma[6]}/.
{gamma[Lor7]->gamma[7]}/.{gamma[Lor8]->gamma[8]}/.{gamma[Lor9]->gamma[9]}/.{gamma[Lor10]->gamma[10]};


(*diag2=diracstandardorder@diag1;*)


diag2=diag1/.exdL->exdL1/.exdL1->stexdL;


diag3=tracestandardorder@diag2;


diag4=Expand[offslash@diag3];


diag5=tracestandardorder1@diag4;


diag6=tracestandardorder2@diag5;


(* ::Section::Closed:: *)
(*denominators  into  standard  order*)


Clear[shiftmom]
shiftmom[arg_]:=arg/. {ampden->sampden};

sampden[q[2]-q[1],m___]:=sampden[q[1]-q[2],m];
sampden[-q[i_],m___]:=sampden[q[i],m]


diag7 = shiftmom@diag6;
Union@Cases[%,_sampden,Infinity]


(*we make a shits in all the momenta to bring denominators into a standard form
(q1 + q2)^n will turn into (q1 - q2)^n by a shift in the momenta q2 -> -q2*)

(*diag8 =  If[MemberQ[diag7, sampden[q[1] + q[2],___], Infinity],diag7/.{q[2]-> -q[2], q[2,ind_]-> -q[2,ind]}, diag7];*)


Clear[diag8];
diag8 = Table[
  With[{dia = diag7[[i]]},
   If[MemberQ[dia, \!\(\*
TagBox[
StyleBox[
RowBox[{"sampden", "[", 
RowBox[{
RowBox[{
RowBox[{"q", "[", "1", "]"}], " ", "+", " ", 
RowBox[{"q", "[", "2", "]"}]}], ",", "___"}], "]"}],
ShowSpecialCharacters->False,
ShowStringCharacters->True,
NumberMarks->True],
FullForm]\), Infinity], 
   diag7[[i]]/.{q[2]-> -q[2], q[2,ind_]-> -q[2,ind]}, diag7[[i]]]
  ],
  {i, Length[diag7]}
];


(* ::Input:: *)
(*(*diag8a=diag8/.{q[2]^2->q[1]^2+q[2]^2-2sp[q[1],q[2]],q[2,ind_]->q[1,ind]-q[2,ind],*)
(*q[2]^n:>(q[1]^2+q[2]^2-2sp[q[1],q[2]])^(n/2)/; n>2,sampden[q[2],m__]->sampden[q[1]-q[2],m],sampden[q[1]-q[2],m__]->sampden[q[2],m],sp[q[1],q[2]]->sp[q[1],q[1]-q[2]]};*)*)


(* ::Input:: *)
(*(*diag8;*)
(*Union@Cases[%,_sampden,Infinity]*)*)


Union@Cases[diag8,_sampden,Infinity]


(* ::Section::Closed:: *)
(*tensor  reduction  and  metric*)


diag9=Expand@diag8;


diag11=Expand[diag9]/.q[i_,j_]->tredh[q[i,j]];


Union@Cases[diag11,_tredh,Infinity];


diag12=diag11/.tredh->tred;


Union@Cases[diag12, _tred, Infinity]


diag14=oper1@Expand[diag12];


(*diag15 = Expand@diag14;*)


diag16 = Expand[spt@diag14];


diag17=convertden@diag16;


diag17a=diag17/.auxden->auxdensimp;


dens=Union@Cases[diag17a,_auxdensimp,Infinity];
standint@dens;
%/.toaux;
dens1=%/.{q12->qs[1],q22->qs[2],q122->qs[3]};


(* ::Input:: *)
(*(*dens1;*)*)


dens2 = Table[ apartMom[dens1[[i]],3],
   {i, Length[dens1]}
];


dens3=dens2/.{qs[1]->q12,qs[2]->q22,qs[3]->q122};


dens4=totad@dens3;


rules = Dispatch[Thread[dens -> dens4]];


diag18 = diag17a/. rules;


(* ::Section::Closed:: *)
(*load the rules generated in FIRE*)


Clear[mtad]
mtad/: mtad[{0,0,0},__]:=0
mtad/: mtad[{i_,j_,k_},{0,b_,c_}]:=mtad[{0,j,k},{0,b,c}]/;i=!=0
mtad/: mtad[{i_,j_,k_},{a_,0,c_}]:=mtad[{i,0,k},{a,0,c}]/;j=!=0
mtad/: mtad[{i_,j_,k_},{a_,b_,0}]:=mtad[{i,j,0},{a,b,0}]/;k=!=0


mf1=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf1.m"]/.
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
{G[a_,b_]->mtad[{m1,m2,m3},b]};


(* ::Section::Closed:: *)
(*definition  of  the  rules*)


mf1a = Table[
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
];


(* ::Section::Closed:: *)
(*substitution  in  the  amplitude*)


(* ::Input:: *)
(**)


diag19=Table[If[Head[diag18[[i]]]===List,Total@diag18[[i]],diag18[[i]]],{i,Length[diag18]}];


diag20 = diag19/. 
tad[{Null,j_,k_},{a_,b_,c_}]:>tad[{0,j,k},{a,b,c}]/.
tad[{i_,Null,k_},{a_,b_,c_}]:>tad[{i,0,k},{a,b,c}]/.
tad[{i_,j_,Null},{a_,b_,c_}]:>tad[{i,j,0},{a,b,c}]/.tad->mtad;


(* ::Input:: *)
(**)


(* ::Input:: *)
(*(*Union@Cases[diag20,_mtad,Infinity]//TableForm;*)*)


diag21 = diag20/.mf1a/.mf2a/.mf3a/.mf4a/.mf5a/.mf6a/.mf7a/.mf8a/.mf9a/.mf10a/.mf12a/.mf13a/.mf14a/.{mtad[{0,0,0},{a_,b_,c_}]->0};


Union@Cases[diag21, mtad[__], Infinity];
%/.mtad[__, {a_,b_,c_}]:>{a,b,c}


(* ::Input:: *)
(*(*Union@Cases[diag21,_mtad,Infinity]//TableForm;*)*)


(*Export["/home/ana/Desktop/code m/diagsmuonrgaugewithtad.m",diag21]*)


(*Export["/home/ana/Desktop/code m/diagsquarkrgaugewithtad.m",diag21]*)


(* ::Section:: *)
(*analytical*)


(*Clear[sorttad]
sorttad/: sorttad[{0,MW,0},{1,1,1}]:=sorttad[{0,0,MW},{1,1,1}]
sorttad/: sorttad[{0,MZ,0},{1,1,1}]:=sorttad[{0,0,MZ},{1,1,1}]
sorttad/: sorttad[{MW,0,0},{1,1,1}]:=sorttad[{0,0,MW},{1,1,1}]
analyticTad[{MW,0,MZ},{1,0,1}]:=analyticTad[{0,MW,MZ},{0,1,1}]
analyticTad[{MW,0,MZ},{1,1,1}]:=analyticTad[{0,MW,MZ},{1,1,1}]
analyticTad[{MW,MZ,0},{1,1,0}]:=analyticTad[{0,MW,MZ},{0,1,1}]
analyticTad[{MW,MZ,0},{1,1,1}]:=analyticTad[{0,MW,MZ},{1,1,1}]*)


(*Clear[sorttad]
sorttad[{a_,0,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;
sorttad[{0,a_,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;
sorttad[{a_,0,b_},{1,0,1}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,0,b_},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,b_,0},{1,1,0}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,b_,0},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);*)


Clear[sorttad]
sorttad[{a_,0,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;
sorttad[{0,a_,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;
sorttad[{a_,0,b_},{1,0,1}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,0,b_},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,b_,0},{1,1,0}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,b_,0},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);
sorttad[{0,MZ,MW},{0,1,1}]:=sorttad[{0,MW,MZ},{0,1,1}];
sorttad[{0,MZ,MW},{1,1,1}]:=sorttad[{0,MW,MZ},{1,1,1}];
sorttad[{0,MW,MH},{1,1,1}]:=sorttad[{0,MH,MW},{1,1,1}];
sorttad[{0,MZ,MH},{1,1,1}]:=sorttad[{0,MH,MZ},{1,1,1}];
sorttad[{MW,MZ,MW},{1,1,1}]:=sorttad[{MW,MW,MZ},{1,1,1}];
sorttad[{MZ,MZ,MW},{1,1,1}]:=sorttad[{MW,MZ,MZ},{1,1,1}];
sorttad[{MZ,MW,MH},{1,1,1}]:=sorttad[{MW,MZ,MH},{1,1,1}];

sorttad[{0,a_ MZ,MW},{0,1,1}]:=sorttad[{0,MW,a MZ},{0,1,1}];
sorttad[{0, MZ, a_ MW},{0,1,1}]:=sorttad[{0,a MW, MZ},{0,1,1}];

sorttad[{0,MZ,MW},{1,1,1}]:=sorttad[{0,MW,MZ},{1,1,1}];
sorttad[{0,a_ MZ,MW},{1,1,1}]:=sorttad[{0,MW,a MZ},{1,1,1}];
sorttad[{0,MZ,a_ MW},{1,1,1}]:=sorttad[{0,a MW,MZ},{1,1,1}];
sorttad[{0,a_ MZ,b_ MW},{1,1,1}]:=sorttad[{0,b MW,a MZ},{1,1,1}];

sorttad[{0,MW,MH},{1,1,1}]:=sorttad[{0,MH,MW},{1,1,1}];
sorttad[{0,a_ MW,MH},{1,1,1}]:=sorttad[{0,MH,a MW},{1,1,1}];

sorttad[{0,MZ,MH},{1,1,1}]:=sorttad[{0,MH,MZ},{1,1,1}];
sorttad[{0,a_ MZ,MH},{1,1,1}]:=sorttad[{0,MH,a MZ},{1,1,1}];

sorttad[{MW,MZ,MW},{1,1,1}]:=sorttad[{MW,MW,MZ},{1,1,1}];
sorttad[{a_ MW,MZ,MW},{1,1,1}]:=sorttad[{a MW,MW,MZ},{1,1,1}];
sorttad[{MW,MZ,a_ MW},{1,1,1}]:=sorttad[{a MW,MW,MZ},{1,1,1}];
sorttad[{a_ MW,MZ,b_ MW},{1,1,1}]:=sorttad[{a MW,b MW,MZ},{1,1,1}];
sorttad[{MW,a_ MZ,MW},{1,1,1}]:=sorttad[{MW,MW,a MZ},{1,1,1}];
sorttad[{a_ MW,b_ MZ,MW},{1,1,1}]:=sorttad[{a MW,MW,b MZ},{1,1,1}];
sorttad[{MW,b_ MZ,a_ MW},{1,1,1}]:=sorttad[{a MW,MW,b MZ},{1,1,1}];

sorttad[{MZ,MZ,MW},{1,1,1}]:=sorttad[{MW,MZ,MZ},{1,1,1}];
sorttad[{a_ MZ,MZ,MW},{1,1,1}]:=sorttad[{MW,MZ,a MZ},{1,1,1}];
sorttad[{MZ,a_ MZ,MW},{1,1,1}]:=sorttad[{MW,MZ,a MZ},{1,1,1}];
sorttad[{a_ MZ,b_ MZ,MW},{1,1,1}]:=sorttad[{MW,a MZ,b MZ},{1,1,1}];
sorttad[{MZ,a_ MZ,b_ MW},{1,1,1}]:=sorttad[{b MW,MZ,a MZ},{1,1,1}];
sorttad[{a_ MZ,MZ,b_ MW},{1,1,1}]:=sorttad[{b MW,MZ,a MZ},{1,1,1}];
sorttad[{a_ MZ,b_ MZ,c_ MW},{1,1,1}]:=sorttad[{c MW,a MZ,b MZ},{1,1,1}];

sorttad[{MZ,MW,MH},{1,1,1}]:=sorttad[{MW,MZ,MH},{1,1,1}];
sorttad[{MZ,a_ MW,MH},{1,1,1}]:=sorttad[{a MW,MZ,MH},{1,1,1}];
sorttad[{b_ MZ,MW,MH},{1,1,1}]:=sorttad[{MW,b MZ,MH},{1,1,1}];


diag22=diag21/.mass[x_]:>x/.d->4-2e/.mtad->sorttad;


rule1 = Union@Cases[diag22, _sorttad, Infinity];


rules2 = Normal[Series[rule1/.sorttad->analyticTad,{e,0,0}]];


rule = Dispatch[Thread[rule1 -> rules2]];


diag23 = diag22/.rule;


ana=Do[
  res = Normal@Series[diag23[[i]], {e, 0, 0}];
  Export[
    "/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/res2lmuoncompmart/diag" <> ToString[i] <> ".m",
    res
  ],
  {i, 391,401}
]


(*ana=Series[#, {e, 0, 0}] & /@ diag23;*)


ana1 = Table[Get[ "/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/res2lmuoncompmart/diag" <> ToString[i] <> ".m"],{i,401}];


martin=Get["/home/ana/Desktop/mydiagrams/sres2munutonue.m"]/.g[1,31]->Op/.g[3,31]->Ev3/.g[5,31]->Ev5;


martinemail = Get["/home/ana/Downloads/sres2munutonue (1).m"]/.g[1,31]->Op/.g[3,31]->Ev3/.g[5,31]->Ev5;


check=Table[Simplify[martin[[i]]-martinemail[[i]]],{i, 401}];


martin1 = Series[martin/.d->4 - 2 e, {e,0,0}]/.CW->cw/.SW->sw/.EL->el//Normal;


dif=Table[Simplify[ana1[[i]]-martin1[[i]]],{i,401}]/.NF[__]:>1;


Coefficient[ana1[[169]]/.NF[__]:>1,1/e]
Coefficient[martin1[[169]],1/e]
%/%%//Simplify


Table[If[dif[[i]]===0, 0,i],{i, Length[dif]}]


Coefficient[ana1[[183]],1/e^2]
Coefficient[martin1[[183]],1/e^2]
%/%%


diag21[[183]]/.mass[x_]:>x//Simplify
Coefficient[%, Ev3]
Union@Cases[%, _mtad, Infinity]
%/.mtad->sorttad
%/.sorttad->analyticTad//TableForm


Union@Cases[diag21[[10]]/.mass[x_]:>x, _mtad, Infinity]
%/.mtad->sorttad//TableForm

