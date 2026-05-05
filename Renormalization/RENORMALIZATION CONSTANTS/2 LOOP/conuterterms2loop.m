(* ::Package:: *)

(* ::Section::Closed:: *)
(*running  the  file*)


(*
- chose the process and diagrams you want to generate
- chose the correct diagrams for the process
- see where we set to feynman gauge or general gauge
- choose the correct defoper
- chose the things we want to export
- check the 2 places where we are setting xi->1 or keeping it general
*)


(* ::Section::Closed:: *)
(*Load  feynarts*)


Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;


(* ::Section::Closed:: *)
(*load  packages*)


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/QFTSymbols.m"]
Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/MassiveTadpole.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/notation.m"]
Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/fermionline.m"]
Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/tensred.m"]
(*Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/integration_2loop.m"]*)
Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/integration_2loop_for_ct.m"]


(* ::Section::Closed:: *)
(*generate  counterterms muon *)


(*ct = InsertFields[
CreateCTTopologies[2,2 -> 2,ExcludeTopologies->{WFCorrections,WFCorrectionCTs}], 
{F[2,{2}] ,F[1,{1}] } -> {F[1,{2}],F[2,{1}]},
InsertionLevel ->{Particles}, 
Model->"SM", 
Restrictions -> {NoLightFHCoupling}
];

draw = Paint[ct, ColumnsXRows -> {8, 4}, 
SheetHeader->None,ImageSize->{512,256}
];*)


(*(*Export["/home/ana/Desktop/ctp.pdf",Show@Paint[ct]];*)*)


(* ::Section::Closed:: *)
(*generate counterterms quark *)


ct = InsertFields[
CreateCTTopologies[2,2 -> 2,ExcludeTopologies->{WFCorrections,WFCorrectionCTs}], 
{F[3,{1,o}] ,F[2,{1}]} -> {F[4,{1,o}],F[1,{1}]},
InsertionLevel ->{Particles}, 
Model->"SM", 
Restrictions -> {NoLightFHCoupling}
];

draw = Paint[ct, ColumnsXRows -> {8, 4}, 
SheetHeader->None,ImageSize->{512,256}
]


(* ::Section::Closed:: *)
(*counterterm  amplitude - generated feynarts*)


ctamp[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[ct,{j}],GaugeRules -> {}],
IncomingMomenta->{p1,p2},OutgoingMomenta->{p3,p4},LoopMomenta->{q1},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->False,UndoChiralSplittings->False]


(* ::Section::Closed:: *)
(*muon BOX*)


(*ctbox0 = Table[ctamp[i], 
   {i, Join[Range[21, 25], Range[32, 37], Range[44, 49], Range[58,62], Range[179, 186]]}
];

ctbox1 = Table[Flag[tadct]*ctamp[i], 
   {i, Join[Range[171, 178],Range[187, 194]]}
];*)


(*ctbox = Join[ctbox0, ctbox1];*)


(* ::Section::Closed:: *)
(*quark BOX*)


(*ctbox0 = Table[ctamp[i], 
   {i, Join[Range[24, 31], Range[38, 43], Range[48, 53], Range[66,71], Range[203, 211]]}
];

ctbox1 = Table[Flag[tadctq]*ctamp[i], 
   {i, Join[Range[192, 202], Range[212, 221]]}
];*)


(*ctbox = Join[ctbox0, ctbox1];*)


(* ::Section::Closed:: *)
(*muon PENGUIN*)


(*ctbox0 = Table[Flagl[treepeng]*ctamp[i], 
   {i, Join[Range[1, 3], Range[5, 6]]}
];

ctbox1 = Table[Flagl[loop1peng]*ctamp[i], 
   {i, Join[Range[9, 20],Range[26, 31],Range[38, 43],Range[50, 57],Range[63, 66],Range[119, 170]]}
];*)


(*ctbox = Join[ctbox0, ctbox1];*)


(*ctbox//Length*)


(* ::Section::Closed:: *)
(*quark PENGUIN*)


ctbox0 = Table[Flagl[treepeng]*ctamp[i], 
   {i, Join[Range[1, 2], Range[4, 5]]}
];

ctbox1 = Table[Flagl[loop1peng]*ctamp[i], 
   {i, Join[Range[8, 23],Range[32, 37],Range[44, 47],Range[54, 65],Range[72, 75],Range[128, 191]]}
];


ctbox = Join[ctbox0, ctbox1];


ctbox//Length


(* ::Section::Closed:: *)
(*convert  notation - FEYN/GEN*)


amp=ctbox/.
Conjugate[dZfL1[a__]]:>dZfL1[a]/.
Conjugate[dZfL2[a__]]:>dZfL2[a]/.
Conjugate[dZfR1[__]]:> 0/.
dZfR1[__]:>0/.
IndexSum[dZfL1[3,gn,1] IndexDelta[1,gn]+dZfL1[4,gn,1] IndexDelta[1,gn],{gn,3}]->dZfL1[3,1,1]+dZfL1[4,1,1];


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
Union@Cases[amp4,_exdL,Infinity];


(*traces part missing here - but there are no traces for now*)


(*convert to Feynman Gauge*)

amp4fg = amp4/.\[Xi]w->1/.\[Xi]A->1/.\[Xi]z->1;


(* ::Section::Closed:: *)
(*dirac  standard  order*)


(*amp5=amp4/.{Lor1->1, Lor2->2, Lor3->3, Lor4->4, Lor5->5, Lor6->6};*)


amp5=amp4fg/.{Lor1->1, Lor2->2, Lor3->3, Lor4->4, Lor5->5, Lor6->6, Lor7->7};


Union@Cases[amp5, _q, Infinity]
Union@Cases[amp5, _gamma, Infinity]


(*
get the fermionic line to be in a standard order
*)
Clear[amp6]
amp6=diracstandardorder@amp5;


Clear[amp7]  
amp7=offslash@amp6;


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


Union@Cases[amp7,_ampden,Infinity]


amp7a = amp7/.ampden[0, x_]:>-1/(x^2); 


Union@Cases[amp7a,_ampden,Infinity]


(* ::Section::Closed:: *)
(*tensor  reduction and metric*)


amp8=Expand@amp7a;


amp10=amp8/.q[i_,j_]->tredh[q[i,j]];


Union@Cases[amp10, tredh[__], Infinity];


amp11 = Expand[amp10/.tredh->tred];


Union@Cases[amp11,_tred,Infinity]
Union@Cases[amp11,_sp,Infinity]
Union@Cases[amp11,_q,Infinity]


(*
function that returns all the diagrams that contain metric
*)
Clear[t];
t = Table[
  With[{dia = amp11[[i]]},
   If[MemberQ[dia, _mt, Infinity], i, 0]],
  {i, Length[amp11]}];
t
Length[t]


(* ::Section::Closed:: *)
(*operators*)


amp13 = oper@amp11;


Union@Cases[amp13,_stexdL,Infinity]
Union@Cases[amp13,_sp,Infinity]



(* ::Section::Closed:: *)
(*integral  reduction*)


Union@Cases[amp13, ampden[__], Infinity]


amp14 = Expand@amp13/.{ampden[a___]:>sampden[a]};


amp15 = Expand[spt@amp14];


amp16 = convertden@amp15;


Union@Cases[amp16,_q,Infinity]
Union@Cases[amp16,_spaux,Infinity]
Union@Cases[amp16,_sp,Infinity]
Union@Cases[amp16,_sampden,Infinity]
Length[amp16];


dens=Union@Cases[amp16,_auxden,Infinity];
Length[dens]


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


(*Clear[totad];
totad[arg_]:= Expand[arg*auxtotad[{{_,0},{_,0},{_,0}}]]/.
{auxtotad[{{m1_,n1_},{m2_,n2_},{m12_,n12_}}]->tad[{m1,m2,m12},{n1,n2,n12}]}*)


t9=totad@t8;


Union@Cases[t9,q12,Infinity]
Union@Cases[t9,q22,Infinity]
Union@Cases[t9,q122,Infinity]
Union@Cases[t9,qs[1],Infinity]
Union@Cases[t9,qs[2],Infinity]
Union@Cases[t9,qs[3],Infinity]


rules = Dispatch[Thread[dens -> t9]];


amp17 = amp16 /. rules;


Thread[dens -> t9];
Union@Cases[%,_tad,Infinity]


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


amp17a=del@amp17/.tad->Mtad;


Union@Cases[amp17a,_Mtad,Infinity]


amp17a//Length


amp18 = Table[If[Head[amp17a[[i]]]===List,Total@amp17a[[i]],amp17a[[i]]],{i,Length[amp17a]}]//Collect[#,Mtad[__]]&;


amp20 = amp18/.mf1a;


amp21 = amp20/.Mtad[{a_,0,0},{b_,0,0}]:>Mtad[{a},{b}];


amp21//Length


Union@Cases[amp21, _Mtad, Infinity]


(* ::Section::Closed:: *)
(*substitution  renormalisation  constants*)


renfunc[x_]:=x/.{dSW1->dzsw}/.{dMWsq1->dzmw}/.{dZe1->dze}/.{dZfL1[1,2,2]->dzneut}/.
dZfL1[2,2,2]->dzele/.{dZfL1[2,1,1]->dzele}/.
dZfL1[1,1,1]->dzneut/.dZfL1[4,1,1]->dzd/.dZfL1[3,1,1]->dzu/.dZAA1->dzphoton/.dZW1-> dzw/.
dZZZ1-> dzzzkai1/.dMZsq1-> dzmz/.
dZZA1-> dzza/.dZAZ1-> dzazkai1


(* ::Subsection::Closed:: *)
(*renormalisation constants*)


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


(* ::Section::Closed:: *)
(*analytical*)


masters=Union@Cases[amp21,_Mtad,Infinity]/.mass[x__]:>x;


analymaster=Series[masters/.Mtad->analyticTad,{e,0,1}]//Normal;


rulesanalyt=Dispatch[Thread[masters -> analymaster]];


(*amp23=amp22/.mass[x_]:>x/.d->4-2e/.rulesanalyt;*)


amp23=amp21/.mass[x_]:>x/.d->4-2e/.rulesanalyt;


(*amp24 = Table[
  (*Print["i = ", i];*)
  Normal[Series[amp23[[i]], {e, 0, 0 }]]
, {i, Length[amp23]}];*)


(*amp23=Normal[Series[#, {e, 0, 0}]] & /@ amp22;*)


defoperm[x_]:=x/.{Ev3->Ev3 + (16 - a1mu e - a2mu e^2)Op}
defoperq[x_]:=x/.{Ev3->Ev3 + (16 - a1q e - a2q e^2)Op}


(* ::Section::Closed:: *)
(*results muon BOX - FEYN/GEN*)


(*amp24a = renfunc@amp23/.el->EL/.mass[x__]:>x/.\[Alpha]->EL^2/4/Pi/.{\[Xi]w->1, \[Xi]z->1, \[Xi]A->1}//
Collect[#, {Op, Ev3, EL^6, 1/e^2, 1/e, Log[__], Phi[__]}(*, Simplify*)]&;*)


(*amp24b = Table[
  Print["i = ", i];
  Normal[Series[defoperm[amp24a[[i]]], {e, 0, 0}]]//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&
, {i, Length[amp24a]}];*)


(*amp27 = Total[amp24b]/.
sw->Sqrt[1 - cw^2]/.cw->MW/MZ//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}(*,Simplify*)]&;*)


(*amp28 = amp27/.Flag[__]:>1/.flag[__]:>1 /.flg[__]:>1/.flagw[__]:>1;*)


(*amp28;*)


(*Export["/home/ana/Documents/GitHub/Vud_EW_NLO/Results/Renormalisation/2loop/muon/general/ctm2lbs.m",amp28]*)


(* ::Section::Closed:: *)
(*results quark BOX - FEYN/GEN*)


(*amp24a = renfunc@amp23/.el->EL/.mass[x__]:>x/.\[Alpha]->EL^2/4/Pi/.{\[Xi]w->1, \[Xi]z->1, \[Xi]A->1}//
Collect[#, {Op, Ev3, EL^6, 1/e^2, 1/e, Log[__], Phi[__]}(*, Simplify*)]&;*)


(*amp24b = Table[
  Print["i = ", i];
  Normal[Series[defoperq[amp24a[[i]]], {e, 0, 0}]]//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&
, {i, Length[amp24a]}];*)


(*amp27 = Total[amp24b]/.
sw->Sqrt[1 - cw^2]/.cw->MW/MZ//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&;*)


(*amp28 = amp27/.Flag[__]:>1/.flag[__]:>1 /.flg[__]:>1/.flagw[__]:>1;*)


(*amp28;*)


(*Export["/home/ana/Documents/GitHub/Vud_EW_NLO/Results/Renormalisation/2loop/quark/general/ctq2lbs.m",amp28]*)


(* ::Section::Closed:: *)
(*results muon PENGUIN - FEYN/GEN*)


(*amp24aux = ReplacePart[amp23,{1\[Rule]amp15[[1]],2\[Rule]amp15[[2]],3\[Rule]amp15[[3]],4\[Rule]amp15[[4]],5\[Rule]amp15[[5]]}];*)


(*amp24a = renfunc@(amp24aux)/.el->EL/.mass[x__]:>x/.\[Alpha]->EL^2/4/Pi/.{\[Xi]w->1, \[Xi]z->1, \[Xi]A->1}//
Collect[#, {Op, Ev3, EL^6, 1/e^2, 1/e, Log[__], Phi[__]}(*, Simplify*)]&;*)


(*amp24b = Table[
  (*Print["i = ", i];*)
  Normal[Series[defoperq[amp24a[[i]]], {e, 0, 0}]]//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&
, {i, Length[amp24a]}];*)


(*amp27 = Total[amp24b]/.
sw->Sqrt[1 - cw^2]/.cw->MW/MZ//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&;*)


(*amp28 = amp27/.Flag[__]:>1/.flag[__]:>1 /.flg[__]:>1/.flagw[__]:>1;*)


(*Export["/home/ana/Documents/GitHub/Vud_EW_NLO/Results/Renormalisation/2loop/muonpeng/feyn/ctm2lpengfg.m",amp28]*)


(* ::Section:: *)
(*results quark PENGUIN - FEYN/GAUG*)


(*amp24aux = ReplacePart[amp23,{1\[Rule]amp15[[1]],2\[Rule]amp15[[2]],3\[Rule]amp15[[3]],4\[Rule]amp15[[4]]}];*)


(*amp24a = renfunc@(amp24aux)/.el->EL/.mass[x__]:>x/.\[Alpha]->EL^2/4/Pi/.{\[Xi]w->1, \[Xi]z->1, \[Xi]A->1}//
Collect[#, {Op, Ev3, EL^6, 1/e^2, 1/e, Log[__], Phi[__]}(*, Simplify*)]&;*)


(*amp24b = Table[
  (*Print["i = ", i];*)
  Normal[Series[defoperq[amp24a[[i]]], {e, 0, 0}]]//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&
, {i, Length[amp24a]}];*)


(*amp27 = Total[amp24b]/.
sw->Sqrt[1 - cw^2]/.cw->MW/MZ//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&;*)


(*amp28 = amp27/.Flag[__]:>1/.flag[__]:>1 /.flg[__]:>1/.flagw[__]:>1;*)


(*Export["/home/ana/Documents/GitHub/Vud_EW_NLO/Results/Renormalisation/2loop/quarkpeng/feyn/ctq2lpengfg.m",amp28]*)


(* ::Section::Closed:: *)
(*comparison Kai muon*)


(*kai=Get["/home/ana/Desktop/compkai/counterterms/2lmu_box_ctinserted.m"][[1]]/.el->EL/.Mt->MT/.xiqa->1/.xiqw->1/.xiqz->1/.flag[__]:>1/.pi->Pi/.S[Qmu]->Op/.S[E1mu]->Ev3/.rat[a_,b_]:>a/b/.ep->e;*)


(*Coefficient[Coefficient[kai,Ev3],e,-2]//Simplify;
Coefficient[Coefficient[amp28,Ev3],e,-2]//Simplify;
%/%%//Simplify*)


(*Coefficient[Coefficient[kai,Ev3],e,-1]/.Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b])//Simplify;
Coefficient[Coefficient[amp28,Ev3],e,-1]//Simplify;
%/%%//Simplify*)


(*Coefficient[Coefficient[kai,Op],e,-2]//Simplify;
Coefficient[Coefficient[amp28,Op],e,-2]//Simplify;
%/%%//Simplify*)


(*Coefficient[Coefficient[kai,Op],e,-1]/.Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b])//Simplify;
Coefficient[Coefficient[amp28,Op],e,-1]/.nc->3//Simplify;
%/%%//Simplify*)


(*(Coefficient[kai,Ev3]+Coefficient[amp28,Ev3])/.Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b])//Simplify*)


(*Coefficient[Coefficient[kai, Op],a1mu]//Simplify;
Coefficient[Coefficient[amp28, Op],a1mu]//Simplify;
(%+%%)/.Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b])//Simplify*)


(*Coefficient[Coefficient[kai, Op],a2mu]//Simplify;
Coefficient[Coefficient[amp28, Op],a2mu]//Simplify;
%+%%//Simplify*)


(*(Coefficient[kai, Op] + Coefficient[amp28, Op])/.Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b])/.nc->3//
Collect[#, {1/e},Simplify]&*)


(* ::Section::Closed:: *)
(*comparison kai gen gauge muon*)


(*kai=Get["/home/ana/Desktop/compkai/counterterms/2lmu_box_ctinserted.m"][[1]]/.el->EL/.Mt->MT/.flag[__]:>1/.pi->Pi/.S[Qmu]->Op/.S[E1mu]->Ev3/.rat[a_,b_]:>a/b/.ep->e;*)


(*ana = Get["/home/ana/Documents/GitHub/Vud_EW_NLO/Results/Renormalisation/2loop/muon/general/ctm2lbs.m"]/.{\[Xi]A->xiqa,\[Xi]w->xiqw,\[Xi]z->xiqz};*)


(*Coefficient[Coefficient[kai,Ev3],e,-2]//Simplify;
Coefficient[Coefficient[ana,Ev3],e,-2]//Simplify;
%+%%//Simplify*)


(*Coefficient[Coefficient[kai,Ev3],e,-1]/.Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b])//Simplify;
Coefficient[Coefficient[ana,Ev3],e,-1]//Simplify;
%+%%//Simplify*)


(*Coefficient[Coefficient[kai,Op],e,-2]//Simplify;
Coefficient[Coefficient[ana,Op],e,-2]//Simplify;
%+%%//Simplify*)


(*Coefficient[Coefficient[kai,Op],e,-1]/.Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b]);
Coefficient[Coefficient[ana,Op],e,-1]/.nc->3;
%+%%//Simplify*)


(*Simplify[Coefficient[kai+ana,Ev3]/.Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b])]*)


(*Simplify[Coefficient[kai+ana,Op]/.Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b])/.nc->3]*)


(* ::Section::Closed:: *)
(*comparison quark box gen gauge with feyn gauge*)


(*ampqfg = Get["/home/ana/Documents/GitHub/Vud_EW_NLO/Results/Renormalisation/2loop/quark/feyn/ctq2l.m"]/.a2qu->a2q;*)


(*ampqgg = Get["/home/ana/Documents/GitHub/Vud_EW_NLO/Results/Renormalisation/2loop/quark/general/ctq2lbs.m"];*)


(*ampqfg-ampqgg//Simplify*)
