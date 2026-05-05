(* ::Package:: *)

(* ::Section::Closed:: *)
(*set directory*)


(*to run locally*)
direc=SetDirectory["/home/ana/Documents/GitHub/Vud_EW_NLO"];


(* ::Section::Closed:: *)
(*about the file*)


(*
file generates the amplitudes for 2loop self energies of the fermions and converts to my notation as well as
for the respective counterterms. 
these amplitudes and counterterms are then loaded and processed in the fieldrenormalization.m file
*)


(* ::Section::Closed:: *)
(*load packages*)


Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/notation.m"]
Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/fermionline.m"]
Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/tensred.m"]
Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/integration_2loop.m"]
Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/extmom.m"]


(* ::Section::Closed:: *)
(*generate the diagrams - 2 loop self energy*)


diagsw = InsertFields[CreateTopologies[2,1 -> 1,ExcludeTopologies-> {WFCorrections,Tadpoles}], 
	{F[4,{1}]} -> {F[4, {1}]}, 
	InsertionLevel ->{Particles}, 
	Model -> "SMew",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[diagsw]


(* ::Section::Closed:: *)
(*generate amplitudes - 2 loop self energy*)


amploop[j_,diags_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diags,{j}],GaugeRules->{},Truncated->True],
IncomingMomenta->{p1},OutgoingMomenta->{p1},LoopMomenta->{q1,q2},List->False, Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{SMP["m_b"]->mass[MB],SMP["m_s"]->mass[MS],SMP["m_c"]->mass[MC],SMP["m_u"]->mass[MU],SMP["m_d"]->mass[MD],
SMP["m_e"]->mass[ME],SMP["m_mu"]->mass[MM],SMP["m_tau"]->mass[ML],
SMP["sin_W"]->SW,SMP["cos_W"]->CW}


amplitudeslist = Table[amploop[i, diagsw],{i,121}];


amplitudeslist//Length


(*insert prefactor NF[fermion] in diagrams with fermion traces*)

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


Union@Cases[ampt, NF[__], Infinity]


(* ::Section::Closed:: *)
(*convert notation - 2loop self energy*)


massa[x_]:=x/.SMP["m_Z"]:>mass[MZ]/.SMP["m_W"]:>mass[MW]/.SMP["m_H"]:>mass[MH]/.
FCGV["MPHOTON"]->mass[photon]/.SMP["m_t"]:>mass[MT]/.SMP["e"]:>EL


indices[x_]:=x//.{Lor1->1,Lor2->2,Lor3->3,Lor4->4,Lor5->5,Lor6->6,Lor7->7,Lor8->8}


amplitudeslist;
a1=coupl@massa@%(*/.{\[Xi]A->1,\[Xi]z->1,\[Xi]w->1}*);
a2=auxfrac@split@%;
a3=momentum@%;
a4=diracgamma@%;
a5=diracgamma2@%;
amp0 = indices@%//Expand;


(*Union@Cases[amp0, _ampden, Infinity]*)


(*diagswithtrace = Table[If[MemberQ[amp0[[i]], DiracTrace[__],Infinity],i,0],{i,Length[amp0]}]*)


Union@Cases[amp0, mass[__], Infinity]


amp0mtz = amp0/.{mass[MB]->0,mass[MC]->0,mass[MD]->0,mass[MS]->0,mass[MU]->0,
mass[ME]->0,mass[ML]->0,mass[MM]->0};


Union@Cases[amp0mtz, _mass, Infinity]


Union@Cases[amp0mtz, _ampden, Infinity]


ClearAll[trac, dt, mmDot]
trac[x_] := x /. {DiracTrace -> dt}
dt[expr_] := dt[expr /. Dot -> mmDot] /; Not@FreeQ[expr, _Dot]


amp0a = trac@amp0mtz;


Union@Cases[amp0a, _dt, Infinity];


ampz = cdl1@amp0a;


(*ampa = listextmom@ampz;*)


(*ampb = cutpower@ampa;*)


Union@Cases[ampz,_dt,Infinity];


ampz1 = tr@ampz;


Union@Cases[ampz1, _trace, Infinity];


Export[direc <> "/Renormalization/RENORMALIZATION CONSTANTS/2 LOOP/field_renorm/fieldampnotconvert.m", ampz1];


(* ::Section::Closed:: *)
(*generate the diagrams -  counterterms*)


(* ::Subsection::Closed:: *)
(*tree level*)


ctwt = InsertFields[CreateCTTopologies[1,1 -> 1,ExcludeTopologies->{WFCorrectionCTs, WFCorrectionCTs}], 
	{F[4,{1}]} -> {F[4,{1}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SMew",
	Restrictions -> NoLightFHCoupling
	];

draw = Paint[ctwt];


(* ::Subsection::Closed:: *)
(*1 loop*)


ctw = InsertFields[CreateCTTopologies[2,1 -> 1,ExcludeTopologies->{WFCorrectionCTs, WFCorrectionCTs}], 
	{F[4,{1}]} -> {F[4,{1}]}, 
	InsertionLevel ->{Particles}, 
	Model->"SMew",
	Restrictions -> NoLightFHCoupling
	];

draw1 = Paint[ctw];


(* ::Section::Closed:: *)
(*generate amplitudes - counterterms*)


ctwd[j_,counts_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[counts,{j}],Truncated->True,GaugeRules -> {}],
IncomingMomenta->{p1},OutgoingMomenta->{p1},LoopMomenta->{q1},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{SMP["m_b"]->mass[MB],SMP["m_s"]->mass[MS],SMP["m_c"]->mass[MC],SMP["m_u"]->mass[MU],SMP["m_d"]->mass[MD],
SMP["m_e"]->mass[ME],SMP["m_mu"]->mass[MM],SMP["m_tau"]->mass[ML],
SMP["sin_W"]->SW,SMP["cos_W"]->CW}


amplitudesct = Table[ctwd[i, ctw],{i,172}];


amplitudesct//Length


(* ::Section:: *)
(*convert notation - counterterms*)


massa[x_]:=x/.SMP["m_Z"]:>mass[MZ]/.SMP["m_W"]:>mass[MW]/.SMP["m_H"]:>mass[MH]/.
FCGV["MPHOTON"]->mass[photon]/.SMP["m_t"]:>mass[MT]/.SMP["e"]:>EL/.Mass[F[1,1]]->mass[me];


indices[x_]:=x//.{Lor1->1,Lor2->2,Lor3->3,Lor4->4,Lor5->5,Lor6->6,Lor7->7,Lor8->8}


amplitudesct/.Conjugate[a_]->a/.dZfR1[__]->0;
coupl@massa@%(*/.{\[Xi]A->1, \[Xi]w->1, \[Xi]z->1}*);
auxfrac@split@%;
momentum@%;
diracgamma@%;
diracgamma2@%;
ct1=indices@%//Expand;


Union@Cases[ct1, dMf1[__],Infinity]
Union@Cases[ct1, massct[__],Infinity]
Union@Cases[ct1, mass[__],Infinity]


ct1a = ct1/.dMf1[2,_]->0/.dMf1[4,_]->0/.dMf1[3,1|2]->0/.dMf1[3,3]->massct[MT]/.{mass[MB]->0,mass[MC]->0,
mass[MD]->0,mass[MS]->0,mass[MU]->0,
mass[ME]->0,mass[ML]->0,mass[MM]->0};


Union@Cases[ct1a, dMf1[__],Infinity]
Union@Cases[ct1a, massct[__],Infinity]
Union@Cases[ct1a, mass[__],Infinity]


ClearAll[trac, dt, mmDot]
trac[x_] := x /. {DiracTrace -> dt}
dt[expr_] := dt[expr /. Dot -> mmDot] /; Not@FreeQ[expr, _Dot]


ct2 = trac @ ct1a;


ct3 = cdl1 @ ct2;


ct3a = joindL@ct3;


ct3b = ct3a/.dLjoined->exdL;


ct4 = tr@ct3b;


Export[direc <> "/Renormalization/RENORMALIZATION CONSTANTS/2 LOOP/field_renorm/fieldctnotconvert.m", ct4];
