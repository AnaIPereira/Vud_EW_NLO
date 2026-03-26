(* ::Package:: *)

(* ::Section::Closed:: *)
(*running  the  file*)


(*
- chose the process and diagrams you want to generate
- chose the correct diagrams for the process
- see where we set to feynman gauge or general gauge
- choose the correct defoper
- chose the things we want to export
*)


(* ::Section::Closed:: *)
(*Load  feynarts*)


Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;


(* ::Section::Closed:: *)
(*load  packages*)


(*to run locally*)
direc=SetDirectory["/home/ana/Documents/GitHub/Vud_EW_NLO"];


Get[direc <> "/code/QFTSymbols.m"]


Get[direc <> "/code/MassiveTadpole.m"]


Get[direc <> "/code/notation.m"]


Get[direc <> "/code/fermionline.m"]


Get[direc <> "/code/tensred.m"]


Get[direc <> "/code/integration_2loop.m"]


(* ::Section::Closed:: *)
(*generate  counterterms*)


ct = InsertFields[
CreateCTTopologies[2,2 -> 2,ExcludeTopologies->{WFCorrections,WFCorrectionCTs}], 
{F[2,{2}] ,F[1,{1}] } -> {F[1,{2}],F[2,{1}]},
InsertionLevel ->{Particles}, 
Model->"SM", 
Restrictions -> {NoLightFHCoupling}
];

draw = Paint[ct, ColumnsXRows -> {8, 4}, 
SheetHeader->None,ImageSize->{512,256}
];


(*ct = InsertFields[
CreateCTTopologies[2,2 -> 2,ExcludeTopologies->{WFCorrections,WFCorrectionCTs}], 
{F[3,{1,o}] ,F[2,{1}]} -> {F[4,{1,o}],F[1,{1}]},
InsertionLevel ->{Particles}, 
Model->"SM", 
Restrictions -> {NoLightFHCoupling}
];

draw = Paint[ct, ColumnsXRows -> {8, 4}, 
SheetHeader->None,ImageSize->{512,256}
]*)


(*Export["/home/ana/Desktop/ctp.pdf",Show@Paint[ct]];*)


(* ::Section::Closed:: *)
(*counterterm  amplitude - generated feynarts*)


ctamp[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[ct,{j}],GaugeRules -> {}],
IncomingMomenta->{p1,p2},OutgoingMomenta->{p3,p4},LoopMomenta->{q1},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->False,UndoChiralSplittings->False]


(*without WF and WFCT*)


ctbox0 = Table[ctamp[i], 
   {i, Join[Range[21, 25], Range[32, 37], Range[44, 49], Range[58,62], Range[179, 186]]}
];


ctbox1 = Table[Flag[tadct]*ctamp[i], 
   {i, Join[Range[171, 178],Range[187, 194]]}
];


(*ctbox0 = Table[ctamp[i], 
   {i, Join[Range[24, 31], Range[38, 43], Range[48, 53], Range[66,71], Range[203, 211]]}
];

ctbox1 = Table[Flag[tadctq]*ctamp[i], 
   {i, Join[Range[192, 202], Range[212, 221]]}
];*)


ctbox = Join[ctbox0, ctbox1];


ctbox//Length


Union@Cases[ctbox, Flag[__], Infinity]


(* ::Section::Closed:: *)
(*convert  notation*)


amp=ctbox/.
Conjugate[dZfL1[1,1,1]]->dZfL1[1,1,1]/.
Conjugate[dZfL1[2,1,1]]->dZfL1[2,1,1]/.
Conjugate[dZfL1[3,1,1]]->dZfL1[3,1,1]/.
Conjugate[dZfL1[4,1,1]]->dZfL1[4,1,1]/.
Conjugate[dZfL1[1,2,2]]->dZfL1[1,2,2]/.
Conjugate[dZfL1[2,2,2]]->dZfL1[2,2,2]/.
Conjugate[dZfL1[4,gn,1]]->dZfL1[4,gn,1]/.
Conjugate[dZfR1[__]]:> 0/.
dZfR1[__]:>0;


Union@Cases[amp,_Conjugate,Infinity]


amp1=simpspinor@coupl@masses1@amp;


amp2=massestozero@extmomzero@amp1;


amp3=auxfrac@split@amp2;


Union@Cases[amp3, _qs, Infinity]


amp4=cdl@diracgamma2@diracgamma@momentum@amp3;


(*some checks*)
Union@Cases[amp4,_Dot,Infinity]
Union@Cases[amp4,_mDot,Infinity]
Union@Cases[amp4,_DiracTrace,Infinity]
Union@Cases[amp4,_DiracGamma,Infinity]
Union@Cases[amp4, _qs, Infinity]
Union@Cases[amp4,_exdL,Infinity];


(*traces part missing here - but there are no traces for now*)


(*convert to Feynman Gauge*)

amp4fg = amp4/.\[Xi]w->1/.\[Xi]A->1/.\[Xi]z->1;


(* ::Section::Closed:: *)
(*dirac  standard  order*)


(*amp5=amp4/.{Lor1->1, Lor2->2, Lor3->3, Lor4->4, Lor5->5, Lor6->6};*)


amp5=amp4fg/.{Lor1->1, Lor2->2, Lor3->3, Lor4->4, Lor5->5, Lor6->6};


Union@Cases[amp5, _q, Infinity]
Union@Cases[amp5, _gamma, Infinity]


amp6=amp5/.exdL->exdL1/.exdL1->stexdL;


amp7=Expand[offslash@amp6];


(*
function that returns all the exdL so that I can see if they only have gamma inside
*)
Clear[checkdL]

checkdL = Cases[amp7,_stexdL, Infinity];

Cases[checkdL,_q,Infinity] (*dirac line is free of any momenta*)
Cases[checkdL,q1,Infinity] (*dirac line is free of any momenta*)
Cases[checkdL,_qslash,Infinity] (*dirac line is free of any qslash*)
Cases[checkdL,_DiracGamma,Infinity] 


(* ::Section::Closed:: *)
(*shift  momentum*)


Union@Cases[amp7,_ampden,Infinity]//TableForm


(*no need to change anything*)


(* ::Section::Closed:: *)
(*tensor  reduction and metric*)


amp8=Expand@amp7;


amp10=Expand[amp8]/.q[i_,j_]->tredh[q[i,j]];


amp11 = amp10/.tredh->tred;


Union@Cases[amp11,_tred,Infinity]
Union@Cases[amp11,_sp,Infinity]
Union@Cases[amp11,_q,Infinity]


amp12 = oper[Expand[amp11]];


(*
function that returns all the diagrams that contain metric
*)
Clear[t];
t = Table[
  With[{dia = amp12[[i]]},
   If[MemberQ[dia, _mt, Infinity], i, 0]],
  {i, Length[amp11a]}];
t
Length[t]


(* ::Section::Closed:: *)
(*integral  reduction*)


amp14 = (*Expand@*)amp12/.{ampden[a___]->sampden[a]};


amp15 = Expand[spt@amp14];


amp16 = convertden@amp15;


Union@Cases[amp16,_q,Infinity]
Union@Cases[amp16,_spaux,Infinity]
Union@Cases[amp16,_sp,Infinity]
Union@Cases[amp16,_sampden,Infinity]
Length[amp16];


dens=Union@Cases[amp16,_auxden,Infinity];


dens1 = dens/.auxden->auxdensimp;


t4=standint@dens1;


t5=t4/.toaux;


t6=t5/.{q12->qs[1],q22->qs[2],q122->qs[3]};


t7 = Table[ apartMom[t6[[i]],1],
   {i, Length[t6]}
];


t8 = Table[ t7[[i]]/.{qs[1]->q12,qs[2]->q22,qs[3]->q122},
   {i, Length[t7]}
];


t9=totad@t8;


Union@Cases[t9,q12,Infinity]
Union@Cases[t9,q22,Infinity]
Union@Cases[t9,q122,Infinity]
Union@Cases[t9,qs[1],Infinity]
Union@Cases[t9,qs[2],Infinity]
Union@Cases[t9,qs[3],Infinity]


rules = Thread[dens -> t9];


amp17 = amp16 /. rules;


(* ::Section::Closed:: *)
(*extract  masters*)


Clear[tadcases]
tadcases=Union@Cases[amp17,_tad,Infinity]
Length[tadcases]


Clear[tad1]

tad1/: tad1[{Null,j_,k_},{a_,b_,c_}]:=tad1[{0,j,k},{a,b,c}]
tad1/: tad1[{i_,Null,k_},{a_,b_,c_}]:=tad1[{i,0,k},{a,b,c}]
tad1/: tad1[{i_,j_,Null},{a_,b_,c_}]:=tad1[{i,j,0},{a,b,c}]

tad1/: tad1[{m_,m_,m_},{a_,b_,c_}]:=tad1[{m1,m1,m1},{a,b,c}]/;(m=!=m1&&m=!=0)
tad1/: tad1[{m_,m_,0},{a_,b_,c_}]:=tad1[{m1,m1,0},{a,b,c}]/; (m=!=m1&&m=!=0)
tad1/: tad1[{0,m_,m_},{a_,b_,c_}]:=tad1[{0,m1,m1},{a,b,c}]/; (m=!=m1&&m=!=0)
tad1/: tad1[{m_,0,m_},{a_,b_,c_}]:=tad1[{m1,0,m1},{a,b,c}]/; (m=!=m1&&m=!=0)

tad1/: tad1[{m_,0,0},{a_,b_,c_}]:=tad1[{m1,0,0},{a,b,c}]/;(m=!=m1&&m=!=0)
tad1/: tad1[{0,m_,0},{a_,b_,c_}]:=tad1[{0,m1,0},{a,b,c}]/; (m=!=m1&&m=!=0)
tad1/: tad1[{0,0,m_},{a_,b_,c_}]:=tad1[{0,0,m1},{a,b,c}]/; (m=!=m1&&m=!=0)

tad1/: tad1[{m_,M_,0},{a_,b_,c_}]:=tad1[{m1,m2,0},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)
tad1/: tad1[{0,m_,M_},{a_,b_,c_}]:=tad1[{0,m1,m2},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)
tad1/: tad1[{m_,0,M_},{a_,b_,c_}]:=tad1[{m1,0,m2},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)

tad1/: tad1[{m_,M_,m_},{a_,b_,c_}]:=tad1[{m1,m2,m1},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)
tad1/: tad1[{m_,m_,M_},{a_,b_,c_}]:=tad1[{m1,m1,m2},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)
tad1/: tad1[{M_,m_,m_},{a_,b_,c_}]:=tad1[{m2,m1,m1},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)

tad1/: tad1[{ma_,mb_,mc_},{a_,b_,c_}]:=tad1[{m1,m2,m3},{a,b,c}]/;(ma=!=0&&mb=!=0&&mc=!=0&&ma=!=m1&&mb=!=m2&&mc=!=m3)

tad1/: tad1[{0,0,0},{a_,b_,c_}] := 0


Clear[tadcases1]
tadcases1 = tadcases/.tad[a___]->tad1[a];
tadforms=Union@Cases[tadcases1,_tad1,Infinity];
tadforms2=tadforms/.tad1[a___]->tads[a]
Length[%]


c1=Cases[tadforms2,tads[{i_,0,0},{a_,b_,c_}],Infinity]


(* ::Section::Closed:: *)
(*prepare  for  FIRE and load master rules*)


c1/.{tads[{m_,0,0},{n_,0,0}]->tads[{m},{n}]}
f1=c1/.{tads[{m_,0,0},{n_,0,0}]->tads[{m},{n}]}/.tads[a_,b_]->{1,b}


mf1=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersct1.m"]/.
{G[a_,b_]->mtad[{m1,0,0},b]}/.{mtad[{i_,0,0},{a_}]->mtad[{i,0,0},{a,0,0}]}/.{mtad[i_,j_]->Mtad[i,j]}


mf1a = Table[
  ReplacePart[mf1[[i]], 1 -> mf1[[i, 1]] /. Mtad[{m1 , 0, 0}, a_] :> Mtad[{m1_ /; m1 =!=0, 0, 0}, a]],
  {i, Length[mf1]}
];


(* ::Section::Closed:: *)
(*substitution  in  the  amplitude*)


del[arg_]:=arg/.{IndexDelta[a_,b_]->delta[a,b]}/.IndexSum[exp_, {gn_, range_}] :> Total[Table[exp /. gn -> j, {j, range}]]/.
{delta[a_,a_]:>1,delta[a_,b_]:>0/;a=!=b}


Clear[Mtad]
Mtad/: Mtad[{Null,j_,k_},{a_,b_,c_}]:=Mtad[{0,j,k},{a,b,c}]
Mtad/: Mtad[{i_,Null,k_},{a_,b_,c_}]:=Mtad[{i,0,k},{a,b,c}]
Mtad/: Mtad[{i_,j_,Null},{a_,b_,c_}]:=Mtad[{i,j,0},{a,b,c}]
Mtad/: Mtad[{0,0,0},{a_,b_,c_}]:=0


amp17a=del@amp17/.tad->Mtad/. Mtad[{a_, _, _}, b_] :> Mtad[{a, 0, 0}, b];


Union@Cases[amp17a,_Mtad,Infinity]


amp17a//Length


amp18 = Table[If[Head[amp17a[[i]]]===List,Total@amp17a[[i]],amp17a[[i]]],{i,Length[amp17a]}]//Collect[#,Mtad[__]]&;


amp20 = amp18/.mf1a;


amp21 = amp20/.Mtad[{a_,0,0},{b_,0,0}]:>Mtad[{a},{b}];


amp21//Length


Union@Cases[amp21, _Mtad, Infinity]


(*Export["/home/ana/Desktop/results/ctmuonmaster.m",amp21];*)


(* ::Section::Closed:: *)
(*substitution  renormalisation  constants*)


renfunc[x_]:=x/.{dSW1->dzsw}/.{dMWsq1->dzmw}/.{dZe1->dze}/.{dZfL1[1,2,2]->dzneut}/.
{Conjugate[dZfL1[2,2,2]]->dzele}/.dZfL1[2,2,2]->dzele/.{dZfL1[2,1,1]->dzele}/.
{Conjugate[dZfL1[1,1,1]]->dzneut}/.dZfL1[1,1,1]->dzneut/.dZfL1[4,1,1]:>dzd/.dZfL1[3,1,1]:>dzu


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


(*dzmw/.flag[__]:>1
dzmwpaper
%-%%/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify*)


Union@Cases[amp21, nc, Infinity]
Union@Cases[amp21, mass[__], Infinity]


(*amp22 = renfunc@amp21/.el->EL/.mass[x__]:>x/.dZAA1->dzphoton/.dZW1:>flag[w] dzw/.dZZZ1->dzzz/.dMZsq1:> flag[mz] dzmz/.
dZZA1:>dzza/.dZAZ1:>dzaz/.\[Alpha]->EL^2/4/Pi/.flag[w]:>1//
Collect[#, {Op, Ev3, EL^6, 1/e^2, 1/e, Log[__], Phi[__]}(*, Simplify*)]&;*)


(* ::Section:: *)
(*analytical*)


defoperm[x_]:=x/.{Ev3->Ev3 + (16 - a1mu e)Op}/.{Ev5->Ev5 + (256-b1mu e)Op + cmu1 Ev3}
defoperq[x_]:=x/.{Ev3->Ev3 + (16 - a1q e)Op}/.{Ev5->Ev5 + (256-b1q e)Op + cq1 Ev3}


masters=Union@Cases[amp21,_Mtad,Infinity]/.mass[x__]:>x;


analymaster=Series[masters/.Mtad->analyticTad,{e,0,0}]//Normal;


rulesanalyt=Thread[masters -> analymaster];


amp22=amp21/.mass[x_]:>x;





Coefficient[amp22[[1]],Ev3]//Simplify


(*only run this part if I want the analytical amplitudes
before plug in the renormalization constants*)

amp23analytbfren = Table[
  (*Print[i];*)
  Normal[Series[amp22[[i]]/.d->4-2e/.rulesanalyt, {e, 0, 1 }]]
, {i, Length[amp22]}];


Coefficient[amp23analytbfren, Ev3]/.Flag[__]:>1/.flag[__]:>1/.flg[__]:>1;


(*plug in the renormalization constants*)
(*here when computing in feynman gauge, we nned to set xi to 1 again
because the renormalization constants are xi dependent*)

amp23 = renfunc@amp22/.el->EL/.mass[x__]:>x/.dZAA1->dzphoton/.dZW1:>flag[w] dzw/.dZZZ1->dzzz/.dMZsq1:> flag[mz] dzmz/.
dZZA1:>dzza/.dZAZ1:>dzaz/.\[Alpha]->EL^2/4/Pi/.flag[w]:>1/.{\[Xi]w->1, \[Xi]z->1, \[Xi]A->1}//
Collect[#, {Op, Ev3, EL^6, 1/e^2, 1/e, Log[__], Phi[__]}(*, Simplify*)]&;


amp23//Length


Table[If[Not@FreeQ[amp23[[i]], MH],i,0], {i, Length[amp22]}]


amp24 = Table[
  (*Print[i];*)
  res1=Normal[Series[amp23[[i]]/.d->4-2e/.rulesanalyt, {e, 0, 0}]];
  res2 = defoperm[res1];
  res3 = res2//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&
, {i, Length[amp23]}];


amp25 = Total[amp24]//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&;


amp25noflag = amp25/.Flag[__]:>1/.flg[__]:>1/.flagw[__]:>1/.flag[__]:>1;


(*Export["/home/ana/Desktop/ctmuonr.m",amp27];*)


(*Export["/home/ana/Desktop/ctquarkr.m",amp27];*)


(* ::Section:: *)
(*comparison*)


Clear[ratio]
ratio/: ratio[a_, b_]:=a/b;


tomass[x_]:=x/.sw->Sqrt[1-cw^2]/.cw->MW/MZ;


k = Get["/home/ana/Desktop/compkai/counterterms/2lmu_box_ctinserted.m"][[1]]/.
S[E1mu]->Ev3/.S[Qmu]->Op/.pi->Pi/.rat->ratio/.ep->e/.Mt->MT/.el->EL/.
Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b]);


kfeyn = k/.xiqa->1/.xiqz->1/.xiqw->1;


Coefficient[Coefficient[kfeyn, Ev3],1/e^2];
Coefficient[Coefficient[amp25noflag, Ev3],1/e^2];
tomass[%/%%]//Simplify


Coefficient[Coefficient[kfeyn, Ev3],1/e];
Coefficient[Coefficient[amp25noflag, Ev3],1/e];
tomass[%/%%]//Simplify


Coefficient[kfeyn, Ev3]+tomass@Coefficient[amp25noflag, Ev3]//Simplify


tomass@Coefficient[amp25noflag, Ev3]//Collect[#, {1/e},Simplify]&


Coefficient[kfeyn, Ev3]//Collect[#, {1/e},Simplify]&
