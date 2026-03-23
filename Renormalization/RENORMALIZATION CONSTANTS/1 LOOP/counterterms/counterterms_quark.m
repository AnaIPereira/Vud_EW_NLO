(* ::Package:: *)

(*Get["/Users/anaisabelcostapereira/Library/Mathematica/Applications/FeynCalc/FeynCalc.m"];
Get["/Users/anaisabelcostapereira/Library/Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
$FAVerbose=0;*)


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


renfunc[x_]:=x/.{dSW1->dzsw}/.{dMWsq1->dzmw}/.{dZe1->dze}/.Conjugate[dZfL1[4,1,1]]:>dzu/.
dZfL1[4,1,1]:>dzu/.dZfL1[3,1,1]:>dzd/.
Conjugate[dZfL1[1,1,1]]:>dZfL1[1,1,1]/.dZfL1[1,1,1]:>dzele/.
dZfL1[2,1,1]:>dzneut


(* ::Section::Closed:: *)
(*CT*)


ctH = InsertFields[CreateCTTopologies[1,2 -> 2,ExcludeTopologies->{WFCorrectionCTs, WFCorrectionCTs}], 
	{F[3,{1,o}],F[2,{1}]} -> {F[4,{1,o}],F[1,{1}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[ctH, ColumnsXRows -> {1, 3}, 
Numbering -> Simple,
SheetHeader->None,ImageSize->{150,300}
];


(* ::Section::Closed:: *)
(*some simplifications*)


cth[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[ctH,{j}],GaugeRules -> {}],
IncomingMomenta->{p1,p2},OutgoingMomenta->{p3,p4},LoopMomenta->{q},List->False,Contract->True,
ChangeDimension->D,DropSumOver->True,SMP->True,UndoChiralSplittings->True]/.
{Spinor[Momentum[p1, D], SMP["m_u"], 1]->  Spinor[Momentum[Subscript[p,u],D], 0, 1],
Spinor[Momentum[p2, D], SMP["m_e"], 1]->  Spinor[Momentum[Subscript[p,e],D], 0, 1],
Spinor[Momentum[p3, D], SMP["m_d"], 1]->  Spinor[Momentum[Subscript[p,d],D], 0, 1],
Spinor[Momentum[p4, D], 0, 1]->  Spinor[Momentum[Subscript[p,\[Nu]],D], 0, 1],
p1->0,p2->0,p3->0,p4->0,SMP["sin_W"]->sw,SMP["e"]->e(*,
SMP["m_mu"]->0,SMP["m_e"]->0*)}//FCTraceFactor//SUNSimplify//DiracSimplify


simpspinor[x_]:=x/.{Spinor[Momentum[Subscript[p,\[Nu]],D], 0, 1]->1,
Spinor[Momentum[Subscript[p,u],D], 0, 1]->1,
Spinor[Momentum[Subscript[p,e],D], 0, 1]->1,
Spinor[Momentum[Subscript[p,d],D], 0, 1]->1}/.
{Dot[1,DiracGamma[LorentzIndex[a_,D],D],DiracGamma[7],1]^2->Op}


amplitude={cth[1],cth[2],cth[3]};
amp1=simpspinor@amplitude//Expand;


auxfrac@split@simpspinor@cth[1]
auxfrac@split@simpspinor@cth[2]
auxfrac@split@simpspinor@cth[3]


(* ::Section:: *)
(*renormalization constants*)


dze=(\[Alpha]/4/Pi * 11/6/\[Epsilon])*flagdze

dzmw=(-(((9*mH^4 + mH^2*(56*mw^2 - 9*mz^2) + 18*(2*mw^4 + mz^4))/
    (48*mH^2*sw^2) + ((-4*mt^4 + mH^2*(mt^2 - 2*mw^2))*nc)/(8*mH^2*sw^2))*
  \[Alpha])/(Pi*\[Epsilon]))*flagdzmw/.{nc->3}//Collect[#,{\[Alpha]/\[Epsilon]/Pi,1/sw^2,flagdzmw},Expand]&
  
  dzswsq=((\[Alpha] ((11 sw^2)/12+19/24))/(Pi \[Epsilon]))*flagdzswsq
  
  dzsw =((\[Alpha] ((5 mw^2)/(24 mz^2 sw^3)-5/(24 sw^3)+(11 sw)/24+29/(48 sw)))/(Pi \[Epsilon]))*flagdzsw
  
  dzele=((\[Alpha]*(-1/4*\[Xi]A - \[Xi]w/(8*sw^2) + \[Xi]z/4 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*\[Epsilon]))*flagdzele
 
 dzneut=((\[Alpha]*(-1/8*\[Xi]w/sw^2 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*\[Epsilon]))*flagdzneut
  
dzphoton = ((\[Alpha] (-\[Xi]w/4-5/3))/(Pi \[Epsilon]))*flagdzphot;

dzneutfinite = (mz^2(mw^2(4\[Xi]w(ln[\[Mu]^2/(mw^2 \[Xi]w)]+1)-6)+
mz^2 (2 \[Xi]z (ln[\[Mu]^2/(mz^2 \[Xi]z)]+1)-3)))/(8 mw^2 (mw^2-mz^2))*flagneutfinite 

dzelefinite=(((\[Alpha]*((3*(2*cw^2 + (1 - 2*sw^2)^2))/(32*cw^2*sw^2) - 
   (\[Xi]w*(1 + ln[\[Mu]^2/(\[Xi]w*SMP["m_W"]^2)]))/(8*sw^2) - 
   ((1 - 2*sw^2)^2*\[Xi]z*(1 + ln[\[Mu]^2/(\[Xi]z*SMP["m_Z"]^2)]))/
    (16*cw^2*sw^2)))/Pi)*flagelefinite)/.{SMP["m_Z"]->mz,SMP["m_W"]->mw}
 
dzu = ((\[Alpha] (\[Xi]z/(18 cw^2)-\[Xi]z/(16 cw^2 sw^2)-\[Xi]A/9+\[Xi]z/9-\[Xi]w/(8 sw^2)))/(Pi \[Epsilon]))*flagdzu
 
dzufinite = (16 mw^4 (2 \[Xi]z (ln[\[Mu]^2/(mz^2 \[Xi]z)]+1)-3)+
2 mw^2 mz^2 (18 \[Xi]w (ln[\[Mu]^2/(mw^2 \[Xi]w)]+1)-
8 \[Xi]z (ln[\[Mu]^2/(mz^2 \[Xi]z)]+1)-15)+mz^4 (2 \[Xi]z (ln[\[Mu]^2/(mz^2 \[Xi]z)]+1)-3))/(72 mw^2 (mw^2-mz^2))*flagdzufinite

dzd = ((\[Alpha] (\[Xi]z/(18 cw^2)-\[Xi]z/(16 cw^2 sw^2)-\[Xi]A/36+\[Xi]z/36-\[Xi]w/(8 sw^2)))/(Pi \[Epsilon]))*flagdzd

dzdfinite = (4 mw^4 (2 \[Xi]z (ln[\[Mu]^2/(mz^2 \[Xi]z)]+1)-3)+2 mw^2 mz^2 (18 \[Xi]w (ln[\[Mu]^2/(mw^2 \[Xi]w)]+1)+
4 \[Xi]z (ln[\[Mu]^2/(mz^2 \[Xi]z)]+1)-33)+
mz^4 (2 \[Xi]z (ln[\[Mu]^2/(mz^2 \[Xi]z)]+1)-3))/(72 mw^2 (mw^2-mz^2))*flagdzdfinite

dzele=((\[Alpha]*(-1/4*\[Xi]A - \[Xi]w/(8*sw^2) + \[Xi]z/4 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*\[Epsilon]))*flagdzele
 
dzneut=((\[Alpha]*(-1/8*\[Xi]w/sw^2 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*\[Epsilon]))*flagdzneut

 
dzw=((19-6 nc) \[Alpha])/(24 \[Pi] sw^2 \[Epsilon])-(\[Alpha] \[Xi]A)/(8 \[Pi] \[Epsilon])-(\[Alpha] \[Xi]w)/(8 \[Pi] sw^2 \[Epsilon])-(cw^2 \[Alpha] \[Xi]z)/(8 \[Pi] sw^2 \[Epsilon])



(* ::Section:: *)
(*amplitude*)


simpflags[x_]:=x/.{flagdzd->1,flagdzu->1,flagdzdfinite->1,flagdzufinite->1,flagdzele->1,
flagelefinite->1,flagdzneut->1,flagneutfinite->1,flagdze->1,flagdzmw->1,flagdzsw->1}


amp2=auxfrac@split@amp1//Collect[#,{Op,e^2/mw^2/sw^2},FullSimplify]&


amp2a=%/.{IndexSum[Times[Plus[Conjugate[dZfL1[4,gn,1]],dZfL1[3,gn,1]],IndexDelta[1,gn]],List[gn,3]]->
Conjugate[dZfL1[4,1,1]] + dZfL1[3,1,1]};
amp2b=%/.{Conjugate[dZfL1[4,1,1]]+dZfL1[3,1,1]+Conjugate[dZfL1[1,1,1]]+dZfL1[2,1,1]->dzextpart}


amp3=renfunc@amp2b/.dZW1->dzw/.{sw->Sqrt[1-cw^2]}/.{cw->mw/mz}//Collect[#,{\[Xi]A,\[Xi]z,\[Xi]w,Op,\[Alpha],e^2,1/\[Epsilon]/Pi},Simplify]&;
amp4=simpflags@amp3//Collect[#,{Op,\[Alpha],e^2,1/\[Epsilon]/Pi},Simplify]&


Export["/home/ana/Desktop/ct1loopq.m",amp2b];


Export["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/results/counterterm_quark.m",amp4]
