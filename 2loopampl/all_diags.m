(* ::Package:: *)

(* ::Section::Closed:: *)
(*set up directory*)


(*to run locally*)
direc=SetDirectory["/home/ana/Documents/GitHub/Vud_EW_NLO"];


(*ERROR - running this exact same file locally and on lcuster gives different results. locally is ok, but cluster
has bug and output comes in terms of auxdensimp*)


(*to run in cluster*)
(*direc=SetDirectory["/z/users/acpereira/Vud_EW_NLO"];*)


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


Get[direc <> "/code/QFTSymbols.m"]


Get[direc <> "/code/MassiveTadpole.m"]


Get[direc <> "/code/notation.m"]


Get[direc <> "/code/fermionline.m"]


Get[direc <> "/code/tensred.m"]


Get[direc <> "/code/integration_2loop.m"]


(* ::Input:: *)
(**)


(* ::Section:: *)
(*load  results*)


(*this are the amplitudes to compare with martin*)
(*amp = Get[direc <> "/Results/2loop/convertednotfeyngauge.m"];*)


(*this are all amplitudes including tadpoles - run locally*)
(*amp = Get[direc <> "/Results/2loop/ampconvertedwithtad.m"];*)


(*this are all amplitudes including tadpoles - run on cluster*)
amp = Get[direc <> "/Results/2loop/ampconvertedwithtad.m"];


Length[amp]


Union@Cases[amp, NF[__], Infinity]


Union@Cases[amp, _ampden, Infinity]


amp0 = amp/.{ampden[0, mass[x_]]:>-1/mass[x]^2};


Union@Cases[amp0, _ampden, Infinity]


(*Table[If[Not@FreeQ[amp[[i]],ampden[0,0]],i,0], {i, Length[amp]}]*)
(*there are ampden[0,0] which could cause divergences and
due to how the code is written are set to 1 when doing simplifications, which is wrong
Nevertheless here is ok since all the amplitudes where they appear go in fact to zero - 
checked for muon, need to check for quark. A good solution whould be seeting them to zero from
the begging but we need to check the amplitudes to make sure we can take this limit*)


(*test = amp0[[1;;10]]*)


(* ::Section:: *)
(*dirac  line  and  traces  into  standard  order*)


diag=amp0(*/.\[Xi]w->1/.\[Xi]A->1/.\[Xi]z->1*);


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


diag8 = Table[
  If[
   MemberQ[diag7[[i]], sampden[q[1] + q[2], ___], Infinity],
   diag7[[i]] /. {q[2] -> -q[2], q[2, ind_] -> -q[2, ind]},
   diag7[[i]]
  ],
  {i, Length[diag7]}
];


Union@Cases[diag8,_sampden,Infinity]


(* ::Section:: *)
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


dens2 = Table[ apartMom[dens1[[i]],3],
   {i, Length[dens1]}
];


dens3=dens2/.{qs[1]->q12,qs[2]->q22,qs[3]->q122};


dens4=totad@dens3;


rules = Thread[dens -> dens4];


diag18 = diag17a/.rules;


(* ::Section::Closed:: *)
(*load the rules generated in FIRE*)


Clear[mtad]
mtad/: mtad[{0,0,0},__]:=0
mtad/: mtad[{i_,j_,k_},{0,b_,c_}]:=mtad[{0,j,k},{0,b,c}]/;i=!=0
mtad/: mtad[{i_,j_,k_},{a_,0,c_}]:=mtad[{i,0,k},{a,0,c}]/;j=!=0
mtad/: mtad[{i_,j_,k_},{a_,b_,0}]:=mtad[{i,j,0},{a,b,0}]/;k=!=0


mf1=Get[direc <> "/masters/mastersf1.m"]/.
{G[a_,b_]->mtad[{m1,0,0},b]};

mf2=Get[direc <> "/masters/mastersf2.m"]/.
{G[a_,b_]->mtad[{0,m1,0},b]};

mf3=Get[direc <> "/masters/mastersf3.m"]/.
{G[a_,b_]->mtad[{0,0,m1},b]};

mf4=Get[direc <> "/masters/mastersf4.m"]/.
{G[a_,b_]->mtad[{m1,m1,0},b]};

mf5=Get[direc <> "/masters/mastersf5.m"]/.
{G[a_,b_]->mtad[{0,m1,m1},b]};

mf6=Get[direc <> "/masters/mastersf6.m"]/.
{G[a_,b_]->mtad[{m1,0,m1},b]};

mf7=Get[direc <> "/masters/mastersf7.m"]/.
{G[a_,b_]->mtad[{m1,m2,0},b]};

mf8=Get[direc <> "/masters/mastersf8.m"]/.
{G[a_,b_]->mtad[{0,m1,m2},b]};

mf9=Get[direc <> "/masters/mastersf9.m"]/.
{G[a_,b_]->mtad[{m1,0,m2},b]};

mf10=Get[direc <> "/masters/mastersf10.m"]/.
{G[a_,b_]->mtad[{m1,m1,m2},b]};

mf12=Get[direc <> "/masters/mastersf12.m"]/.
{G[a_,b_]->mtad[{m1,m2,m1},b]};

mf13=Get[direc <> "/masters/mastersf13.m"]/.
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


(* ::Section:: *)
(*substitution  in  the  amplitude*)


diag19=Table[If[Head[diag18[[i]]]===List,Total@diag18[[i]],diag18[[i]]],{i,Length[diag18]}];


diag20 = diag19/. 
tad[{Null,j_,k_},{a_,b_,c_}]:>tad[{0,j,k},{a,b,c}]/.
tad[{i_,Null,k_},{a_,b_,c_}]:>tad[{i,0,k},{a,b,c}]/.
tad[{i_,j_,Null},{a_,b_,c_}]:>tad[{i,j,0},{a,b,c}]/.tad->mtad;


diag21 = diag20/.mf1a/.mf2a/.mf3a/.mf4a/.mf5a/.mf6a/.mf7a/.mf8a/.mf9a/.mf10a/.mf12a/.mf13a/.mf14a/.{mtad[{0,0,0},{a_,b_,c_}]->0};


Union@Cases[diag21, mtad[__], Infinity];
%/.mtad[__, {a_,b_,c_}]:>{a,b,c}


(*this are the muon 2 loop amplitudes to compare with Martin*)
(*Export[direc <> "/Results/2loop/amplitmuonmasters.m",diag21]*)


(*these are are all muon 2 loop amplitudes including tadpoles*)
Export[direc <> "/Results/2loop/amplitmuonmasterswithtad.m",diag21]
