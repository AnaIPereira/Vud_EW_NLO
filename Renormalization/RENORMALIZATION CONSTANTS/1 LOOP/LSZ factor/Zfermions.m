(* ::Package:: *)

(*Quit[]*)


Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;


(* ::Section:: *)
(*General functions - partial actioning, PV decomposition and integration*)


ampfractions[func_]:=Apart[func];


amppv[funct_]:=TID[ampfractions[funct],q,UsePaVeBasis -> True, ToPaVe -> True]/.

{B0[0,Times[GaugeXi[Z],Power[SMP["m_Z"],2]],Times[GaugeXi[Z],Power[SMP["m_Z"],2]]]->
B0[0,Times[GaugeXi[Z],Power[SMP["m_Z"],2]],Times[GaugeXi[Z],Power[SMP["m_Z"],2]],BReduce -> True]}/.

{B0[0,Times[GaugeXi[W],Power[SMP["m_W"],2]],Times[GaugeXi[W],Power[SMP["m_W"],2]]]->
B0[0,Times[GaugeXi[W],Power[SMP["m_W"],2]],Times[GaugeXi[W],Power[SMP["m_W"],2]],BReduce -> True]}/.

{B0[0,Power[m_,2],Power[m_,2]]->B0[0, Power[m,2], Power[m,2],BReduce -> True]}


A[m_]:=m*(1/\[Epsilon]+ln[\[Mu]^2/m]+1)


amp[j_,diags_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diags,{j}],GaugeRules->{}],
IncomingMomenta->{p},OutgoingMomenta->{p},LoopMomenta->{q},List->False,Contract->True,
ChangeDimension->D,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{Spinor[Momentum[p, D], SMP["m_u"], 1]-> 1,
Spinor[Momentum[p, D], SMP["m_d"], 1] -> 1,
Spinor[Momentum[p,D],SMP["m_e"],1]-> 1,
Spinor[Momentum[p,D],0,1] -> 1,
Spinor[Momentum[p, D], SMP["m_mu"], 1]-> 1}/.{
SMP["m_u"]->0,SMP["m_mu"]->0,SMP["m_d"]->0,SMP["m_e"]->0,
SMP["sin_W"]->sw,SMP["cos_W"]->cw}(*//FCTraceFactor//SUNSimplify//DiracSimplify*)


gamma[x_]:=x/.{Dot[DiracGamma[Momentum[mom_,dim_],dim_],DiracGamma[6]]->0}/.
{Dot[Dot[DiracGamma[Momentum[q_,dim_],dim_]],DiracGamma[6]]->0}/.
{DiracGamma[6]->0}//
Collect[#,{Dot[DiracGamma[Momentum[q,D],D],DiracGamma[7]],
Dot[DiracGamma[Momentum[p,D],D],DiracGamma[7]]},Expand]&


propexp[x_]:=x//.
FeynAmpDenominator[props___,PropagatorDenominator[Momentum[mom_,dim_],0],props1___,
PropagatorDenominator[e___*Momentum[p_-mom_,dim_],mass___],props2___]:>
FeynAmpDenominator[props,
PropagatorDenominator[Momentum[mom,dim],0],props1,
PropagatorDenominator[e*Momentum[mom,dim],mass],props2]+
2*Pair[Momentum[p,D],Momentum[mom,D]]*(
FeynAmpDenominator[props,
PropagatorDenominator[Momentum[mom,dim],0],props1,
PropagatorDenominator[e*Momentum[mom,dim],mass],
PropagatorDenominator[e*Momentum[mom,dim],mass],props2])/.
{Pair[Momentum[p,D],Momentum[p,D]]->0}


simpl[x_]:=x/.{Dot[DiracGamma[Momentum[p,D],D],DiracGamma[7]]->pslash}(*/.{D->4-2\[Epsilon]}*)


ct[diag_,j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diag,{j}]],
IncomingMomenta->{p},OutgoingMomenta->{p},LoopMomenta->{q},List->False,Contract->True,
ChangeDimension->D,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{Spinor[Momentum[p, D], SMP["m_d"], 1]-> 1,
 Spinor[Momentum[p, D], SMP["m_u"], 1]-> 1,
 Spinor[Momentum[p, D], SMP["m_e"], 1]-> 1,
 Spinor[Momentum[p, D], 0, 1]-> 1,
 SMP["m_e"]->0,SMP["m_u"]->0, SMP["m_d"]->0}//SUNSimplify//DiracSimplify


ren[x_]:=x/pslash/\[Alpha]*4*Pi/.
{cw->SMP["m_W"]/SMP["m_Z"]}/.
{sw->Sqrt[1-(SMP["m_W"]/SMP["m_Z"])^2]}//FullSimplify


(* ::Section:: *)
(*Quark up self energy*)


InitializeModel[{SM, UnitarySM}, GenericModel -> {Lorentz, UnitaryLorentz}];


diagsup = InsertFields[CreateTopologies[1,1 -> 1,ExcludeTopologies-> {WFCorrections, Tadpoles}], 
	F[3,{1,o}] -> {F[3,{1,o}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[diagsup, ColumnsXRows -> {3, 1}, 
Numbering -> Simple,
SheetHeader->None
];


amplitudeup=gamma[(amp[1,diagsup]+amp[2,diagsup]+amp[3,diagsup])]/.
{Power[SMP["e"],2]->4 Pi \[Alpha]};


listupqslash = List @@ amplitudeup[[1]];


listuppslash = List @@ amplitudeup[[2]];


exp1=propexp[listupqslash[[2]]];


exp2=propexp[listuppslash[[2]]];


totup=exp1*listupqslash[[1]]+exp2*listuppslash[[1]]//Simplify;


passvelt=amppv[totup]/.{Pair[Momentum[p,D],Momentum[p,D]]->0}//Simplify;


passvelt1=simpl@Apart[passvelt,D]/.{D->4-2\[Epsilon]};


upfinal=passvelt1/.
{A0[GaugeXi[W]*SMP["m_W"]^2]->A[GaugeXi[W]*SMP["m_W"]^2]}/.
{A0[SMP["m_W"]^2]->A[SMP["m_W"]^2]}/.
{A0[GaugeXi[Z]*SMP["m_Z"]^2]->A[GaugeXi[Z]*SMP["m_Z"]^2]}/.
{A0[SMP["m_Z"]^2]->A[SMP["m_Z"]^2]};


upfinal1=Series[upfinal,{\[Epsilon],0,0}]//Collect[#,1/\[Epsilon]]&


upfinaldiv=upfinal1[[1]]


upfinalfin=upfinal1[[2]]


Zu=-ren[upfinaldiv](*/.{GaugeXi[W]->1}/.{GaugeXi[Z]->1}*)//FullSimplify


Zufin=-ren[upfinalfin](*/.{GaugeXi[W]->0}/.{GaugeXi[Z]->0}*)//FullSimplify


zutocompare=-upfinaldiv/pslash//Collect[#,{\[Alpha]},Expand]&
%/.{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z}
%/.{sw^2->1-cw^2}//Collect[#,{\[Alpha],\[Xi]w,\[Xi]z,1/\[Epsilon]/Pi},Expand]&


(* ::Section::Closed:: *)
(*Quark down self energy*)


diagsdown = InsertFields[CreateTopologies[1,1 -> 1,ExcludeTopologies-> {WFCorrections, Tadpoles}], 
	F[4,{1,o}] -> {F[4,{1,o}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[diagsdown, ColumnsXRows -> {3, 1}, 
Numbering -> Simple,
SheetHeader->None
];


amplitudedown=gamma[(amp[1,diagsdown]+amp[2,diagsdown]+amp[3,diagsdown])]/.
{Power[SMP["e"],2]->4 Pi \[Alpha]};


listdownqslash = List @@ amplitudedown[[1]];


listdownpslash = List @@ amplitudedown[[2]];


exp1d=propexp[listdownqslash[[2]]];


exp2d=propexp[listdownpslash[[2]]];


totdown=exp1d*listdownqslash[[1]]+exp2d*listdownpslash[[1]]//Simplify;


passveltd=amppv[totdown]/.{Pair[Momentum[p,D],Momentum[p,D]]->0}//Simplify;


passveltd1=simpl@Apart[passveltd,D]/.{D->4-2\[Epsilon]};


downfinal=passveltd1/.
{A0[GaugeXi[W]*SMP["m_W"]^2]->A[GaugeXi[W]*SMP["m_W"]^2]}/.
{A0[SMP["m_W"]^2]->A[SMP["m_W"]^2]}/.
{A0[GaugeXi[Z]*SMP["m_Z"]^2]->A[GaugeXi[Z]*SMP["m_Z"]^2]}/.
{A0[SMP["m_Z"]^2]->A[SMP["m_Z"]^2]};


downfinal1=Series[downfinal,{\[Epsilon],0,0}]//Collect[#,1/\[Epsilon]]&


downfinaldiv=downfinal1[[1]]


downfinalfin=downfinal1[[2]]


Zd=-ren[downfinaldiv](*/.{GaugeXi[W]->1}/.{GaugeXi[Z]->1}*)//FullSimplify


Zdfin=-ren[downfinalfin](*/.{GaugeXi[W]->1}/.{GaugeXi[Z]->1}*)//FullSimplify


zdtocompare=-downfinaldiv/pslash//Collect[#,{\[Alpha]},Expand]&
%/.{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z}
%/.{sw^2->1-cw^2}//Collect[#,{\[Alpha],\[Xi]w,\[Xi]z,1/\[Epsilon]/Pi},Expand]&


(* ::Section:: *)
(*Electron self energy*)


diagsele = InsertFields[CreateTopologies[1,1 -> 1,ExcludeTopologies-> {WFCorrections, Tadpoles}], 
	F[2,{1}] -> {F[2,{1}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[diagsele, ColumnsXRows -> {3, 1}, 
Numbering -> Simple,
SheetHeader->None
];


amplitudeele=gamma[(amp[1,diagsele]+amp[2,diagsele]+amp[3,diagsele])]/.
{Power[SMP["e"],2]->4 Pi \[Alpha]};


listeleqslash = List @@ amplitudeele[[1]];


listelepslash = List @@ amplitudeele[[2]];


exp1ele=propexp[listeleqslash[[2]]];


exp2ele=propexp[listelepslash[[2]]];


totele=exp1ele*listeleqslash[[1]]+exp2ele*listelepslash[[1]]//Simplify;


passveltele=amppv[totele]/.{Pair[Momentum[p,D],Momentum[p,D]]->0}//Simplify;


passveltele1=simpl@Apart[passveltele,D]/.{D->4-2\[Epsilon]};


elefinal=passveltele1/.
{Dot[DiracGamma[Momentum[p,D],D],DiracGamma[7]]->pslash}/.
{A0[SMP["m_W"]^2]->A[SMP["m_W"]^2],A0[SMP["m_Z"]^2]->A[SMP["m_Z"]^2]}/.
{A0[GaugeXi[Z]*SMP["m_Z"]^2]->A[GaugeXi[Z]*SMP["m_Z"]^2]}/.
{A0[GaugeXi[W]*SMP["m_W"]^2]->A[GaugeXi[W]*SMP["m_W"]^2]}//
Collect[#,1/\[Epsilon],Simplify]&;


elefinal1=Series[elefinal,{\[Epsilon],0,0}]//Collect[#,1/\[Epsilon]]&


elefinaldiv=elefinal1[[1]]


elefinalfin=elefinal1[[2]]


Ze=-ren[elefinaldiv](*/.{GaugeXi[W]->1}/.{GaugeXi[Z]->1}*)//FullSimplify


Zefin=-ren[elefinalfin](*/.{GaugeXi[W]->1}/.{GaugeXi[Z]->1}*)//FullSimplify


zetocompare=-elefinaldiv/pslash//Collect[#,{\[Alpha]},Expand]&
%/.{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z}
%/.{sw^2->1-cw^2}//Collect[#,{\[Alpha],\[Xi]w,\[Xi]z,1/\[Epsilon]/Pi},Expand]&


Zefintocomparw=-elefinalfin/pslash/.{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z}//
Collect[#,{\[Alpha]/Pi,\[Xi]z,\[Xi]w},Simplify]&


Export["/Users/anaisabelcostapereira/Desktop/full_theory/Leptonic/results/eletronfinitepart.m",Zefintocomparw]


(* ::Section::Closed:: *)
(*Muon Self energy*)


diagsmuon = InsertFields[CreateTopologies[1,1 -> 1,ExcludeTopologies-> {WFCorrections, Tadpoles}], 
	F[2,{2}] -> {F[2,{2}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[diagsmuon, ColumnsXRows -> {3, 1}, 
Numbering -> Simple,
SheetHeader->None
];


amplitudemuon=gamma[(amp[1,diagsmuon]+amp[2,diagsmuon]+amp[3,diagsmuon])]/.
{Power[SMP["e"],2]->4 Pi \[Alpha]};


listmuonqslash = List @@ amplitudemuon[[1]];


listmuonpslash = List @@ amplitudemuon[[2]];


exp1muon=propexp[listmuonqslash[[2]]];


exp2muon=propexp[listmuonpslash[[2]]];


totmuon=exp1muon*listmuonqslash[[1]]+exp2muon*listmuonpslash[[1]]//Simplify;


passveltmuon=amppv[totmuon]/.{Pair[Momentum[p,D],Momentum[p,D]]->0}//Simplify;


passveltmuon1=simpl@Apart[passveltmuon,D]/.{D->4-2\[Epsilon]};


muonfinal=passveltmuon1/.
{Dot[DiracGamma[Momentum[p,D],D],DiracGamma[7]]->pslash}/.
{A0[SMP["m_W"]^2]->A[SMP["m_W"]^2],A0[SMP["m_Z"]^2]->A[SMP["m_Z"]^2]}/.
{A0[GaugeXi[Z]*SMP["m_Z"]^2]->A[GaugeXi[Z]*SMP["m_Z"]^2]}/.
{A0[GaugeXi[W]*SMP["m_W"]^2]->A[GaugeXi[W]*SMP["m_W"]^2]}//
Collect[#,1/\[Epsilon],Simplify]&;


muonfinal1=Series[muonfinal,{\[Epsilon],0,0}]//Collect[#,1/\[Epsilon]]&;


muonfinaldiv=muonfinal1[[1]]


muonfinalfin=muonfinal1[[2]]


Zm=-ren[muonfinaldiv](*/.{GaugeXi[W]->1}/.{GaugeXi[Z]->1}*)//FullSimplify


Zmfin=-ren[muonfinalfin]


zmuontocompare=-muonfinaldiv/pslash//Collect[#,{\[Alpha]},Expand]&
%/.{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z}
%/.{sw^2->1-cw^2}//Collect[#,{\[Alpha],\[Xi]w,\[Xi]z,1/\[Epsilon]/Pi},Expand]&


(* ::Section::Closed:: *)
(*Neutrino Self - energy*)


diagsneut = InsertFields[CreateTopologies[1,1 -> 1,ExcludeTopologies-> {WFCorrections, Tadpoles}], 
	F[1,{1}] -> {F[1,{1}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[diagsneut, ColumnsXRows -> {2, 1}, 
Numbering -> Simple,
SheetHeader->None
];


amplitudeneut=gamma[(amp[1,diagsneut]+amp[2,diagsneut])]/.
{Power[SMP["e"],2]->4 Pi \[Alpha]};


listneutqslash = List @@ amplitudeneut[[1]];


listneutpslash = List @@ amplitudeneut[[2]];


exp1neut=propexp[listneutqslash[[2]]];


exp2neut=propexp[listneutpslash[[2]]];


totneut=exp1neut*listneutqslash[[1]]+exp2neut*listneutpslash[[1]]//Simplify;


passveltneut=amppv[totneut]/.{Pair[Momentum[p,D],Momentum[p,D]]->0}//Simplify;


passveltneut1=simpl@Apart[passveltneut,D]/.{D->4-2\[Epsilon]};


neutfinal=passveltneut1/.
{Dot[DiracGamma[Momentum[p,D],D],DiracGamma[7]]->pslash}/.
{A0[SMP["m_W"]^2]->A[SMP["m_W"]^2],A0[SMP["m_Z"]^2]->A[SMP["m_Z"]^2]}/.
{A0[GaugeXi[Z]*SMP["m_Z"]^2]->A[GaugeXi[Z]*SMP["m_Z"]^2]}/.
{A0[GaugeXi[W]*SMP["m_W"]^2]->A[GaugeXi[W]*SMP["m_W"]^2]}//
Collect[#,1/\[Epsilon],Simplify]&;


neutfinal1=Series[neutfinal,{\[Epsilon],0,0}]//Collect[#,1/\[Epsilon]]&


neutfinaldiv=neutfinal1[[1]]


neutfinalfin=neutfinal1[[2]]


Zn=-ren[neutfinaldiv](*/.{GaugeXi[W]->1}/.{GaugeXi[Z]->1}*)//FullSimplify


Znfin=-ren[neutfinalfin]/.{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z}/.{SMP["m_W"]->mw}/.{SMP["m_Z"]->mz}


zneuttocompare=-neutfinaldiv/pslash//Collect[#,{\[Alpha],1/Pi/\[Epsilon]},Expand]&
%/.{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z}


(* ::Section::Closed:: *)
(*CTquark up*)


ctqup = InsertFields[CreateCTTopologies[1,1 -> 1,ExcludeTopologies->{WFCorrectionCTs, TriangleCTs, WFCorrectionCTs}], 
	{F[3,{1,o}]} -> {F[3,{1,o}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[ctqup, ColumnsXRows -> {1, 1}, 
Numbering -> Simple,
SheetHeader->None,ImageSize->{512,256}
];


ctup=ct[ctqup,1]/.{Dot[Dot[DiracGamma[Momentum[q_,dim_],dim_]],DiracGamma[6]]->0}/.{DiracGamma[6]->0}/.{Dot[DiracGamma[Momentum[p,D],D],DiracGamma[7]]->pslash}//FullSimplify


(* ::Section::Closed:: *)
(*CT quark down*)


ctqdown = InsertFields[CreateCTTopologies[1,1 -> 1,ExcludeTopologies->{WFCorrectionCTs, TriangleCTs, WFCorrectionCTs}], 
	{F[4,{1,o}]} -> {F[4,{1,o}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[ctqdown, ColumnsXRows -> {1, 1}, 
Numbering -> Simple,
SheetHeader->None
];


ctdown=ct[ctqdown,1]/.{Dot[Dot[DiracGamma[Momentum[q_,dim_],dim_]],DiracGamma[6]]->0}/.{DiracGamma[6]->0}/.{Dot[DiracGamma[Momentum[p,D],D],DiracGamma[7]]->pslash}//FullSimplify


(* ::Section::Closed:: *)
(*CT electron*)


ctelet = InsertFields[CreateCTTopologies[1,1 -> 1,ExcludeTopologies->{WFCorrectionCTs, TriangleCTs, WFCorrectionCTs}], 
	{F[2,{1}]} -> {F[2,{1}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[ctelet, ColumnsXRows -> {1, 1}, 
Numbering -> Simple,
SheetHeader->None
];


ctele=ct[ctelet,1]/.{Dot[Dot[DiracGamma[Momentum[q_,dim_],dim_]],DiracGamma[6]]->0}/.{DiracGamma[6]->0}/.{Dot[DiracGamma[Momentum[p,D],D],DiracGamma[7]]->pslash}//FullSimplify


(* ::Section::Closed:: *)
(*CT neutrino*)


ctneut = InsertFields[CreateCTTopologies[1,1 -> 1,ExcludeTopologies->{WFCorrectionCTs, TriangleCTs, WFCorrectionCTs}], 
	{F[1,{1}]} -> {F[1,{1}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SM",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[ctneut, ColumnsXRows -> {1, 1}, 
Numbering -> Simple,
SheetHeader->None
];


ctneu=ct[ctneut,1]/.{Dot[Dot[DiracGamma[Momentum[q_,dim_],dim_]],DiracGamma[6]]->0}/.{DiracGamma[6]->0}/.{Dot[DiracGamma[Momentum[p,D],D],DiracGamma[7]]->pslash}//FullSimplify


(* ::Section::Closed:: *)
(*renormalization constants general gauge pole*)


Zu1=Zu(*/.{GaugeXi[W]->1,GaugeXi[Z]->1}//FullSimplify*)


Zd1=Zd(*/.{GaugeXi[W]->1,GaugeXi[Z]->1}//FullSimplify*)


Ze1=Ze(*/.{GaugeXi[W]->1,GaugeXi[Z]->1//FullSimplify}*)


Zn1=Zn(*/.{GaugeXi[W]->1,GaugeXi[Z]->1//FullSimplify}*)


(* ::Section:: *)
(*renormalization constants general gauge finite part*)


Zufin/.{SMP["m_W"]->mw,SMP["m_Z"]->mz}/.{GaugeXi[Z]->\[Xi]z}/.{GaugeXi[W]->\[Xi]w}


Zdfin/.{SMP["m_W"]->mw,SMP["m_Z"]->mz}/.{GaugeXi[Z]->\[Xi]z}/.{GaugeXi[W]->\[Xi]w}


Zefin//Simplify


Znfin


r=2*Zefin+2*Znfin/.{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z}/.SMP["m_Z"]:>mz/.SMP["m_W"]:>mw/.SMP["m_H"]:>mH/.SMP["m_t"]:>mt/.SMP["e"]:>el(*+Zufin+Zdfin*)//Expand


Export["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/results/Zmuonfin.m",r]


Export["/Users/anaisabelcostapereira/Desktop/full_theory/Leptonic/results/Zmuonfin.m",r]


r1=(2*Ze+2*Zn(*+Zd+Zu*))//Expand


Export["/Users/anaisabelcostapereira/Desktop/full_theory/Leptonic/results/Zmuondiv.m",r1]


rqfin=(Zefin+Znfin+Zdfin+Zufin)/.{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z}/.SMP["m_Z"]:>mz/.SMP["m_W"]:>mw/.SMP["m_H"]:>mH/.SMP["m_t"]:>mt/.SMP["e"]:>el(*+Zufin+Zdfin*)//Expand


Export["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/results/Zquarkfin.m",rqfin]


Export["/Users/anaisabelcostapereira/Desktop/full_theory/Leptonic/results/Zquarkfin.m",rqfin]


rqdiv=(Ze+Zn+Zd+Zu)//Expand


Export["/Users/anaisabelcostapereira/Desktop/full_theory/Leptonic/results/Zquarkdiv.m",rqdiv]


(* ::Section:: *)
(*finite part*)


rr=r/.FeynAmpDenominator[a___,PropagatorDenominator[mom_,mass_],b___]:>1/(mom^2-mass^2)/.SMP["m_Z"]:>mz/.SMP["m_W"]:>mw/.SMP["m_H"]:>mH/.SMP["m_t"]:>mt//Expand


(* ::Section:: *)
(*pole*)


rr1=r1/.
FeynAmpDenominator[a___,PropagatorDenominator[mom_,mass_],b___]:>1/(mom^2-mass^2)/.SMP["m_Z"]:>mz/.SMP["m_W"]:>mw/.SMP["m_H"]:>mH/.SMP["m_t"]:>mt//Expand
