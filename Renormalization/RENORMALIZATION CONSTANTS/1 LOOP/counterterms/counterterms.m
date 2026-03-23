(* ::Package:: *)

Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;


(* ::Section::Closed:: *)
(*General functions - partial fractioning, PV decomposition and integration*)


(*function to separate all denominators in the Feyncalc notation*)


split[y_]:=y//FeynAmpDenominatorSplit


(*functions to convert feyncalc denominators into my notation*)


auxfrac[y_]:=y//.{FeynAmpDenominator[PropagatorDenominator[mom_, mass_]]->1/(mom^2-mass^2)}/.
SMP["m_Z"]:>mz/.SMP["m_W"]:>mw/.SMP["m_H"]:>mH/.SMP["m_t"]:>mt/.SMP["m_W"]:>mw/.SMP["sin_W"]:>sw/.SMP["e"]:>e/.
{GaugeXi[Z]->\[Xi]z,GaugeXi[W]->\[Xi]w,GaugeXi[A]->\[Xi]A}/.
{Pair[LorentzIndex[mu,D],LorentzIndex[nu,D]]->g\[Mu]\[Nu]}


expand[x_]:=x//.{\!\(\*
TagBox[
StyleBox[
RowBox[{"Pair", "[", 
RowBox[{
RowBox[{"LorentzIndex", "[", 
RowBox[{"mu_", ",", "D"}], "]"}], ",", 
RowBox[{"Momentum", "[", 
RowBox[{
RowBox[{"p1_", "+", "p2_"}], ",", "D"}], "]"}]}], "]"}],
ShowSpecialCharacters->False,
ShowStringCharacters->True,
NumberMarks->True],
FullForm]\):>\!\(\*
TagBox[
StyleBox[
RowBox[{"Pair", "[", 
RowBox[{
RowBox[{"LorentzIndex", "[", 
RowBox[{"mu", ",", "D"}], "]"}], ",", 
RowBox[{"Momentum", "[", 
RowBox[{"p1", ",", "D"}], "]"}]}], "]"}],
ShowSpecialCharacters->False,
ShowStringCharacters->True,
NumberMarks->True],
FullForm]\)+\!\(\*
TagBox[
StyleBox[
RowBox[{"\n", 
RowBox[{"Pair", "[", 
RowBox[{
RowBox[{"LorentzIndex", "[", 
RowBox[{"mu", ",", "D"}], "]"}], ",", 
RowBox[{"Momentum", "[", 
RowBox[{"p2", ",", "D"}], "]"}]}], "]"}]}],
ShowSpecialCharacters->False,
ShowStringCharacters->True,
NumberMarks->True],
FullForm]\)}


renfunc[x_]:=x/.{dSW1->dzsw}/.{dMWsq1->dzmw}/.{dZe1->dze}/.{dZfL1[1,2,2]->dzele}/.
{Conjugate[dZfL1[2,2,2]]->dzele}/.{dZfL1[2,1,1]->dzneut}/.
{Conjugate[dZfL1[1,1,1]]->dzneut}


(* ::Section:: *)
(*CT*)


ctH = InsertFields[CreateCTTopologies[1,2 -> 2,ExcludeTopologies->{WFCorrectionCTs, WFCorrectionCTs}], 
	{-F[1,{1}],F[2,{1}]} -> {-F[1,{2}],F[2,{2}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[ctH, ColumnsXRows -> {1, 3}, 
Numbering -> Simple,
SheetHeader->None,ImageSize->{150,300}
];


(* ::Section:: *)
(*some simplifications*)


cth[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[ctH,{j}],GaugeRules -> {}],
IncomingMomenta->{p1,p2},OutgoingMomenta->{p3,p4},LoopMomenta->{pp},List->False,Contract->True,
ChangeDimension->D,DropSumOver->True,SMP->True,UndoChiralSplittings->True]/.
{Spinor[Momentum[-p1, D], 0, 1]->  Spinor[Momentum[Subscript[p,\[Nu]1],D], 0, 1],
Spinor[Momentum[p2, D], SMP["m_e"], 1]->  Spinor[Momentum[Subscript[p,e],D], 0, 1],
Spinor[Momentum[-p3, D], 0, 1]->  Spinor[Momentum[Subscript[p,\[Nu]2],D], 0, 1],
Spinor[Momentum[p4, D], SMP["m_mu"], 1]->  Spinor[Momentum[Subscript[p,mu],D], 0, 1],
p1->0,p2->0,p3->0,p4->0,SMP["sin_W"]->sw(*,
SMP["m_mu"]->0,SMP["m_e"]->0*)}//FCTraceFactor//SUNSimplify//DiracSimplify


simpspinor[x_]:=x/.{Spinor[Momentum[Subscript[p,\[Nu]1],D], 0, 1]->1,
Spinor[Momentum[Subscript[p,e],D], 0, 1]->1,
Spinor[Momentum[Subscript[p,\[Nu]2],D], 0, 1]->1,
Spinor[Momentum[Subscript[p,mu],D], 0, 1]->1}/.
{Dot[1,DiracGamma[LorentzIndex[a_,D],D],DiracGamma[7],1]^2->Op}


amplitude={cth[1],cth[2],cth[3]};
amp1=simpspinor@amplitude//Expand


auxfrac@split@simpspinor@cth[1]
auxfrac@split@simpspinor@cth[2]
auxfrac@split@simpspinor@cth[3]


(* ::Section:: *)
(*renormalization constants*)


dze=(\[Alpha]/4/Pi * 11/6/\[Epsilon])*flagdze

dzealt=\[Alpha]/4/Pi*(-47/18)/\[Epsilon];

dzmw=(-(((9*mH^4 + mH^2*(56*mw^2 - 9*mz^2) + 18*(2*mw^4 + mz^4))/
    (48*mH^2*sw^2) + ((-4*mt^4 + mH^2*(mt^2 - 2*mw^2))*nc)/(8*mH^2*sw^2))*
  \[Alpha])/(Pi*\[Epsilon]))*flagdzmw/.{nc->3}//Collect[#,{\[Alpha]/\[Epsilon]/Pi,1/sw^2,flagdzmw},Expand]&
  
  dzswsq=((\[Alpha] ((11 sw^2)/12+19/24))/(Pi \[Epsilon]))*flagdzswsq
  
  dzsw =((\[Alpha] ((5 mw^2)/(24 mz^2 sw^3)-5/(24 sw^3)+(11 sw)/24+29/(48 sw)))/(Pi \[Epsilon]))*flagdzsw
  
  dzele=((\[Alpha]*(-1/4*\[Xi]A - \[Xi]w/(8*sw^2) + \[Xi]z/4 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*\[Epsilon]))*flagdzele
 
 dzneut=((\[Alpha]*(-1/8*\[Xi]w/sw^2 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*\[Epsilon]))*flagdzneut
 
 dzw=((19-6 nc) \[Alpha])/(24 \[Pi] sw^2 \[Epsilon])-(\[Alpha] \[Xi]A)/(8 \[Pi] \[Epsilon])-(\[Alpha] \[Xi]w)/(8 \[Pi] sw^2 \[Epsilon])-(cw^2 \[Alpha] \[Xi]z)/(8 \[Pi] sw^2 \[Epsilon])


(* ::Section:: *)
(*amplitude*)


amp2=auxfrac@split@amp1/.dZW1->dzw//Collect[#,{Op,e^2/mw^2/sw^2},FullSimplify]&


amp2b=amp2/.{Conjugate[dZfL1[1,1,1]]+dZfL1[1,2,2]+Conjugate[dZfL1[2,2,2]]+dZfL1[2,1,1]->dzextpart}/.dZW1->dzw;


amp3=renfunc@amp2//Collect[#,{\[Xi]A,\[Xi]z,\[Xi]w,Op,\[Alpha],e^2,1/\[Epsilon]/Pi},Simplify]&


Export["/home/ana/Desktop/ct1loopm.m",amp2b];


Export["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/results/counterterm.m",amp3]
