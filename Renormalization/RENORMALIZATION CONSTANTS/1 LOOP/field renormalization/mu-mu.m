(* ::Package:: *)

Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;


(* ::Section:: *)
(*General functions - partial fractioning, PV decomposition and integration*)


(*function to generate the amplitude*)


amp[j_,diags_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diags,{j}],GaugeRules->{},Truncated->True],
IncomingMomenta->{p},OutgoingMomenta->{p},LoopMomenta->{q},LorentzIndexNames -> {mu, nu},List->False,
ChangeDimension->D,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{SMP["m_b"]->mf,SMP["m_s"]->mf,SMP["m_c"]->mf,SMP["m_u"]->mf,SMP["m_d"]->mf,SMP["m_e"]->mf,SMP["m_mu"]->mf,SMP["m_tau"]->mf,
SMP["sin_W"]->sw,SMP["cos_W"]->cw}//
FCTraceFactor//SUNSimplify//Contract


(*functions to do the A integrals*)


A[m_]:=m*(1/\[Epsilon]+ln[\[Mu]^2/m]+1)


integrate[z_]:=z//.
{A0[\[Xi]w*mw^2]->A[\[Xi]w*mw^2]}/.
{A0[mw^2]->A[mw^2]}/.
{A0[\[Xi]z*mz^2]->A[\[Xi]z*mz^2]}/.
{A0[mz^2]->A[mz^2]}/.
{A0[mH^2]->A[mH^2]}/.
{A0[mt^2]->A[mt^2]}/.
{A0[ms^2]->A[ms^2]}/.
{A0[mup^2]->A[mup^2]}/.
{A0[mmu^2]->A[mmu^2]}/.
{A0[mtau^2]->A[mtau^2]}/.
{A0[me^2]->A[me^2]}/.
{A0[M^2]->A[M^2]}/.
{A0[mf^2]->A[mf^2]}(*/.
{cw^2+sw^2->1}/.
{cw->mw/mz}/.
{sw->Sqrt[1-(mw/mz)^2]}*)/.{D->4-2\[Epsilon]};


(*function to expand in powers of \[Epsilon] - in this case we only keep 1/\[Epsilon] terms*)


series[x_]:=Series[x,{\[Epsilon],0,-1}]//Normal


(*function to expand the propagators to order p^2 for propagators with mass*)


propexpansionmass[x_]:=x//.
{1/((Momentum[q,D]-Momentum[p,D])^2-m_)->
1/((Momentum[q,D])^2-m) + 
2*Pair[Momentum[p,D],Momentum[q,D]]/((Momentum[q,D]^2-m))^2 -
Pair[Momentum[p,D],Momentum[p,D]]/((Momentum[q,D]^2-m))^2 +
4*Pair[Momentum[q,D],Momentum[p,D]]^2/((Momentum[q,D]^2-m))^3}//.
{1/((Momentum[q,D]-Momentum[p,D])^2-m1_)^2->
1/(Momentum[q,D]^2-m1)^2 +
4*Pair[Momentum[q,D],Momentum[p,D]]/(Momentum[q,D]^2-m1)^3 -
2*Pair[Momentum[p,D],Momentum[p,D]]/(Momentum[q,D]^2-m1)^3 +
12*Pair[Momentum[p,D],Momentum[q,D]]^2/(Momentum[q,D]^2-m1)^4}

propexpansionmassless[y_]:=y//.
{1/((Momentum[q,D]-Momentum[p,D])^2)->
1/((Momentum[q,D])^2) + 
2*Pair[Momentum[p,D],Momentum[q,D]]/((Momentum[q,D]^2))^2 -
Pair[Momentum[p,D],Momentum[p,D]]/((Momentum[q,D]^2))^2 +
4*Pair[Momentum[q,D],Momentum[p,D]]^2/((Momentum[q,D]^2))^3}//.
{1/((Momentum[q,D]-Momentum[p,D])^2)^2->
1/(Momentum[q,D]^2)^2 +
4*Pair[Momentum[q,D],Momentum[p,D]]/(Momentum[q,D]^2)^3 -
2*Pair[Momentum[p,D],Momentum[p,D]]/(Momentum[q,D]^2)^3 +
12*Pair[Momentum[p,D],Momentum[q,D]]^2/(Momentum[q,D]^2)^4}


(*function to separate all denominators in the Feyncalc notation*)


split[y_]:=y//FeynAmpDenominatorSplit


(*functions to convert feyncalc denominators into my notation*)


auxfrac[y_]:=y//.{FeynAmpDenominator[PropagatorDenominator[mom_, mass_]]->1/(mom^2-mass^2)}/.
SMP["m_Z"]:>mz/.SMP["m_W"]:>mw/.SMP["m_H"]:>mH/.SMP["m_t"]:>mt/.SMP["e"]:>e/.
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


repl[x_,p_,q_,dim_]:=x//.
{Power[Pair[Momentum[p,dim],Momentum[p,D]],2]->0}/.
{Power[Pair[Momentum[p,dim],Momentum[p,D]],3]->0}/.
{Power[Pair[Momentum[p,dim],Momentum[p,D]],4]->0}/.
{Power[Pair[Momentum[p,dim],Momentum[q,D]],3]->0}/.
{Power[Pair[Momentum[p,dim],Momentum[q,D]],4]->0}/.
{Power[Pair[Momentum[p,dim],Momentum[q,D]],5]->0}/.

{Pair[Momentum[p,dim],Momentum[q,dim]]*
Pair[LorentzIndex[mu,dim],Momentum[p,dim]]*
Pair[LorentzIndex[nu,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[q,dim]]*
Pair[LorentzIndex[nu,dim],Momentum[p,dim]]*
Pair[LorentzIndex[mu,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[p,dim]]*
Pair[LorentzIndex[mu,dim],Momentum[p,dim]]*
Pair[LorentzIndex[nu,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[p,dim]]*
Pair[LorentzIndex[mu,dim],Momentum[p,dim]]*
Pair[LorentzIndex[nu,dim],Momentum[q,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[p,dim]]*
Pair[LorentzIndex[mu,dim],Momentum[q,dim]]*
Pair[LorentzIndex[nu,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[q,dim]]*
Pair[Momentum[p,dim],Momentum[q,dim]]*
Pair[LorentzIndex[mu,dim],Momentum[p,dim]]*
Pair[LorentzIndex[nu,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[q,dim]]*
Pair[Momentum[p,dim],Momentum[q,dim]]*
Pair[LorentzIndex[mu,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[q,dim]]*
Pair[Momentum[p,dim],Momentum[q,dim]]*
Pair[LorentzIndex[nu,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[p,dim]]*
Pair[Momentum[p,dim],Momentum[p,dim]]*
Pair[LorentzIndex[mu,dim],Momentum[p,dim]]*
Pair[LorentzIndex[nu,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[p,dim]]*Pair[Momentum[q,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,D],Momentum[p,D]]*Pair[Momentum[q,D],Momentum[p,D]]*Pair[Momentum[q,D],Momentum[p,D]]->0}/.

{Pair[Momentum[p,dim],Momentum[p,dim]]*Pair[Momentum[p,dim],Momentum[p,dim]]->0}/.

{Pair[Momentum[p,dim],Momentum[p,dim]]^3->0,
Pair[Momentum[p,dim],Momentum[p,dim]]^4->0}/.

{Pair[LorentzIndex[mu_,D],Momentum[p,D]]*Pair[Momentum[p,D],Momentum[p,D]]->0}


convfeyncalc[x_]:=x//.
{g\[Mu]\[Nu]->Pair[LorentzIndex[mu,D],LorentzIndex[nu,D]]}//.
{1/(q^2-sqmass___)->1/(q^2-sqmass)}//.
{1/(q^4-sqmass___)->1/(q^4-sqmass)}//.
{1/(q^6-sqmass___)->1/(q^6-sqmass)}//.
{1/(q^8-sqmass___)->1/(q^8-sqmass)}//.
{q:>Momentum[q,D]}

convfeyncalcpropmassless[y_]:=y//.
1/(Momentum[q,D]^2):>FeynAmpDenominator[PropagatorDenominator[Momentum[q,D]]]//.
1/(Momentum[q,D]^4):>FeynAmpDenominator[PropagatorDenominator[Momentum[q,D]],
PropagatorDenominator[Momentum[q,D]]]//.
1/(Momentum[q,D]^6):>FeynAmpDenominator[PropagatorDenominator[Momentum[q,D]],
PropagatorDenominator[Momentum[q,D]],PropagatorDenominator[Momentum[q,D]]]//.
1/(Momentum[q,D]^8):>FeynAmpDenominator[PropagatorDenominator[Momentum[q,D]],
PropagatorDenominator[Momentum[q,D]],PropagatorDenominator[Momentum[q,D]],
PropagatorDenominator[Momentum[q,D]]]

convfeyncalcpropmass[z_]:=z//.
1/(Momentum[q,D]^2-m_):>FeynAmpDenominator[PropagatorDenominator[Momentum[q,D],Sqrt[m]]]//.
1/(Momentum[q,D]^2-m_)^2:>FeynAmpDenominator[PropagatorDenominator[Momentum[q,D],Sqrt[m]],
PropagatorDenominator[Momentum[q,D],Sqrt[m]]]//.
1/(Momentum[q,D]^2-m_)^3:>FeynAmpDenominator[PropagatorDenominator[Momentum[q,D],Sqrt[m]],
PropagatorDenominator[Momentum[q,D],Sqrt[m]],PropagatorDenominator[Momentum[q,D],Sqrt[m]]]//.
1/(Momentum[q,D]^2-m_)^4:>FeynAmpDenominator[PropagatorDenominator[Momentum[q,D],Sqrt[m]],
PropagatorDenominator[Momentum[q,D],Sqrt[m]],PropagatorDenominator[Momentum[q,D],Sqrt[m]],
PropagatorDenominator[Momentum[q,D],Sqrt[m]]]


reducefunctions[x_]:=x/.
{B0[0,Times[\[Xi]z,Power[m_,2]],Times[\[Xi]z,Power[m_,2]]]->
B0[0,Times[\[Xi]z,Power[m,2]],Times[\[Xi]z,Power[m,2]],BReduce -> True]}/.

{B0[0,Times[\[Xi]w,Power[m_,2]],Times[\[Xi]w,Power[m_,2]]]->
B0[0,Times[\[Xi]w,Power[m,2]],Times[\[Xi]w,Power[m,2]],BReduce -> True]}/.

{B0[0,Power[m_,2],Power[m_,2]]->B0[0, Power[m,2], Power[m,2],BReduce -> True]}/.
{C0[0,0,0,Power[m_,2],Power[m_,2],Power[m_,2]]->0}/.
{C0[0,0,0,Times[\[Xi]z,Power[m_,2]],Times[\[Xi]z,Power[m_,2]],Times[\[Xi]z,Power[m_,2]]]->0}/.
{C0[0,0,0,Times[\[Xi]w,Power[m_,2]],Times[\[Xi]w,Power[m_,2]],Times[\[Xi]w,Power[m_,2]]]->0}


fictmass[x_]:=x//.{1/((Momentum[q,D])^2)->1/((Momentum[q,D])^2-mp^2)}//.
{1/(((Momentum[q,D])^2))^2->1/((Momentum[q,D])^2-mp^2)^2}


infrear[x_]:=x//.{1/((Momentum[q,D])^2-mp^2)->1/((Momentum[q,D])^2-M^2) + (-M^2)*1/((Momentum[q,D])^2-M^2)^2}//.
{1/((Momentum[q,D])^2-mp^2)^2->1/((Momentum[q,D])^2-M^2)^2}


ir[x_]:=x//.{1/((Momentum[q,D]-Momentum[p,D])^2-m_)->1/(Momentum[q,D]^2-M^2) + 
2*Pair[Momentum[q,D],Momentum[p,D]]/(Momentum[q,D]^2-M^2)/((Momentum[q,D]-Momentum[p,D])^2-m^2)+
(-Pair[Momentum[p,D],Momentum[p,D]]+m^2-M^2)/(Momentum[q,D]^2-M^2)}


ir1[x_]:=x//.{1/((Momentum[q,D]-Momentum[p,D])^2)->1/(Momentum[q,D]^2-M^2)+
1/((Momentum[q,D]^2-M^2))+[Plus[Times[-1,Momentum[p,D]],Momentum[q,D]],-2]}

(*1/(Momentum[q,D]^2-M^2) + 
2*Pair[Momentum[q,D],Momentum[p,D]]/(Momentum[q,D]^2-M^2)/((Momentum[q,D]-Momentum[p,D])^2)+
(-Pair[Momentum[p,D],Momentum[p,D]]-M^2)/(Momentum[q,D]^2-M^2)*)


(* ::Section:: *)
(*muon self energy diagrams*)


diagsw = InsertFields[CreateTopologies[1,1 -> 1,ExcludeTopologies-> {WFCorrections,Tadpoles}], 
	{F[2,{2}]} -> {F[2,{2}]}, 
	InsertionLevel ->{Particles}, 
	Model -> "SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[diagsw, ColumnsXRows -> {4, 4}, 
Numbering -> Simple,
SheetHeader->None
];


(* ::Section:: *)
(*amplitude*)


amplitudeslist = {};
For[i = 1, i < 4, i = i + 1,
  AppendTo[amplitudeslist, 
    With[{dia = amp[i, diagsw]},
      If[MemberQ[dia, _DiracTrace, Infinity] && (
         (MemberQ[dia, SMP["m_t"], Infinity] || MemberQ[dia, mf, Infinity])),
         nc,1] * DiracSimplify[dia]]]
]


(* ::Section:: *)
(*Simplifications on the amplitudes *)


amplitudewtotList=expand@auxfrac@split@((amplitudeslist))//Expand;


amplitudewtotList1=repl[amplitudewtotList,p,q,D];


amplitudewtotList2=propexpansionmass@propexpansionmassless@amplitudewtotList1//Expand;


(*simplification of terms of higher order in momenta*)


amplitudewtotList3=repl[amplitudewtotList2,p,q,D]/.
{Pair[Momentum[q,D],Momentum[q,D]]->Power[Momentum[q,D],2]}/.
{Power[Pair[Momentum[q,D],Momentum[q,D]],2]->Power[Momentum[q,D],4]}/.
{Power[Pair[Momentum[q,D],Momentum[q,D]],3]->Power[Momentum[q,D],6]}/.
{Power[Pair[Momentum[q,D],Momentum[q,D]],4]->Power[Momentum[q,D],8]};


(*Do Apart on each term of the list*)


amplitudewtotList4=amplitudewtotList3/.
{Momentum[q,D]^2->sqq,Momentum[q,D]^4->sqq^2,Momentum[q,D]^6->sqq^3,Momentum[q,D]^8->sqq^4,
1/Momentum[q,D]^2->1/sqq,1/Momentum[q,D]^4->1/sqq^2,1/Momentum[q,D]^6->1/sqq^3,1/Momentum[q,D]^8->1/sqq^4};

amplitudewtotList5=Apart[amplitudewtotList4,sqq]/.{sqq->Momentum[q,D]^2}//Expand;


(*mapapart=Column[MapThread[#1 -> #2 &, {amplist, apartamplist}], Spacings -> 2]*)


(*convert back into FeynCalc notation*)


amplitudewtotList6=convfeyncalcpropmass@convfeyncalcpropmassless@convfeyncalc@amplitudewtotList5;


amplitudewtotList7=reducefunctions@TID[amplitudewtotList6,q,ToPaVe->True];


amplitudewtotList8=amplitudewtotList7/.{Pair[LorentzIndex[mu,D],LorentzIndex[nu,D]]->gmunu}/.
{Pair[LorentzIndex[mu,D],Momentum[p,D]]->pmu}/.
{Pair[LorentzIndex[nu,D],Momentum[p,D]]->pnu}/.
{Pair[Momentum[p,D],Momentum[p,D]]->p^2}//Expand


amplitudewtotList9=series@integrate@amplitudewtotList8(*/.{Dot[DiracGamma[Momentum[p]],0]->0}*)


amplitudewtotList10=Expand[amplitudewtotList9]/.
{DiracGamma[6]->0}//.{Dot[DiracGamma[Momentum[p]],0]->0}/.
{\!\(\*
TagBox[
StyleBox[
RowBox[{"Dot", "[", 
RowBox[{
RowBox[{"DiracGamma", "[", 
RowBox[{"Momentum", "[", "p", "]"}], "]"}], ",", 
RowBox[{"DiracGamma", "[", 
RowBox[{"Momentum", "[", "p", "]"}], "]"}], ",", 
RowBox[{"DiracGamma", "[", "7", "]"}]}], "]"}],
ShowSpecialCharacters->False,
ShowStringCharacters->True,
NumberMarks->True],
FullForm]\)->p^2 \[Gamma]7}/.
{DiracGamma[7]->\[Gamma]7}/.
{Dot[DiracGamma[Momentum[p]],\[Gamma]7]->pslash \[Gamma]7}/.{mf->0}/.{mmu->0}


tot=Total[amplitudewtotList10]/.{e^2->4 Pi \[Alpha]}//Collect[#,{pslash,\[Gamma]7,\[Alpha]/Pi/\[Epsilon]}]&;
tot1=tot/.{sw^2->1-cw^2}//Collect[#,{pslash,\[Gamma]7,\[Alpha]/Pi/\[Epsilon]},Expand]&;
zmudiv=-tot1/\[Gamma]7/pslash//Collect[#,{pslash,\[Gamma]7,\[Alpha]/Pi/\[Epsilon]},Expand]&


Export["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/results/deltazmuonelectron.m",zmudiv]


Export["/Users/anaisabelcostapereira/Desktop/full_theory/Leptonic/results/deltazmuonelectron.m",zmudiv]


(* ::Section:: *)
(*CT muon*)


ctw = InsertFields[CreateCTTopologies[1,1 -> 1,ExcludeTopologies->{WFCorrectionCTs, TriangleCTs, WFCorrectionCTs}], 
	{F[2,{2}]} -> {F[2,{2}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[ctw, ColumnsXRows -> {1, 1}, 
Numbering -> Simple,
SheetHeader->None,ImageSize->{512,256}
];


ctw[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[ctw,{j}],Truncated->True,GaugeRules -> {}],
IncomingMomenta->{p},OutgoingMomenta->{p},LoopMomenta->{q},List->False,Contract->True,
ChangeDimension->D,DropSumOver->True,SMP->True,UndoChiralSplittings->False]//FCTraceFactor//SUNSimplify//DiracSimplify


ctwb=ctw[1]//FullSimplify


ctwb=ctw[1]/.{Dot[Dot[DiracGamma[Momentum[q_,dim_],dim_]],DiracGamma[6]]->0}/.{
DiracGamma[6]->0}(*/.
{Dot[Dot[DiracGamma[Momentum[q1_,dim1_],dim1_]],DiracGamma[7]]->OpG}*)//FullSimplify
