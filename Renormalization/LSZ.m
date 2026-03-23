(* ::Package:: *)

(* ::Section:: *)
(*Load packages*)


Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/QFTSymbols.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/MassiveTadpole.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/notation.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/extmom.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/fermionline.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/tensred.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/code/integration_2loop.m"]


(* ::Section::Closed:: *)
(*functions*)


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


Clear[contpslash]
contpslash/: contpslash[a_, b_]dl[{phi[22],phi[22]},gamma[R],gamma[b_]]:= pslash[a]


tomass[x_]:=x/.{sw->Sqrt[1-cw^2]}/.cw->MW/MZ


(* ::Section::Closed:: *)
(*diagrams*)


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


(* ::Section::Closed:: *)
(*amplitudes*)


amp[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diagsup,{j}],GaugeRules -> {}],
IncomingMomenta->{p1},OutgoingMomenta->{p1},LoopMomenta->{q1},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->False,UndoChiralSplittings->False]


amplist={amp[1],amp[2],amp[3]};


amplist1=simpspinor@coupl@masses1@amplist;
massestozero@%;
auxfrac@split@%/.{mass[MM]->0,mass[ME]->0,mass[MC]->0,
mass[MS]->0,mass[MU]->0,mass[MD]->0,mass[MB]->0,mass[ML]->0};
amp1=(*convertsp@*)cdl@diracgamma2@diracgamma@momentum@%;


amp2 = amp1/.
{gamma[Lor1]->gamma[1]}/.
{gamma[Lor2]->gamma[2]}/.
{gamma[Lor3]->gamma[3]}/.
{gamma[Lor4]->gamma[4]}/.
{gamma[Lor5]->gamma[5]}/.
{gamma[Lor6]->gamma[6]}/.
mt[Lor1,Lor2]->mt[1,2]/.
q[1,Lor1]->q[1,1]/.
q[1, Lor2]->q[1,2]/.
p[1,Lor1]->p[1,1]/.
p[1, Lor2]->p[1,2];


(* ::Section::Closed:: *)
(*expansion in external momenta*)


Union@Cases[amp2, _ampden, Infinity]


amp3 = propstandform@amp2;


amp4=expandpropmass@expandpropmassless@amp3;


amp5 = amp4//. 
{ Power[q[i_], n__] /; n<0 :> ampden[q[i], 0]^(-n/2 ) }//.
{ Power[q_^2 - m_^2, n__] /; n<0 :> ampden[q, m]^(-n ) }//.
{ Power[q_^2 - \[Xi]_ m_^2, n__] /; n<0 :> ampden[q, \[Xi] m]^(-n ) };


Union@Cases[amp5, _ampden, Infinity]


amp5a = amp5/.{ampden[q[1], \[Xi]w m__]:>ampden[q[1], \[Xi]w^(1/2) m],
ampden[q[1], \[Xi]z m__]:>ampden[q[1], \[Xi]z^(1/2) m]};


Union@Cases[amp5a, _ampden, Infinity]


amp6 = offsp/@amp5a;


amp7 = listextmom@Expand[amp6];


amp8 = cutpower@amp7;


Union@Cases[amp8, _extmom1, Infinity];


(* ::Section::Closed:: *)
(*dirac algebra and tensor reduction*)


amp9 = diracstandardorder@amp8;


amp10 = offslash@amp9;


amp11 = Expand[amp10]/.q[i_,j_]:>tredh[q[i,j]];


amp12 = amp11/.tredh->tred;


amp13 = Expand@amp12/.extmom1[x_]:>x;


amp14 = amp13/.stexdL->dl/.p->contpslash;


amp14a = amp14/.ampden->sampden;


amp15 = Expand[spt@amp14a];


amp16 = convertden@amp15;


amp17 = amp16/.auxden->auxdensimp;


amp17


(* ::Section::Closed:: *)
(*partial fractioning and reduction to tadpoles*)


dens = Union@Cases[amp17, _auxdensimp, Infinity];


densa = dens/.auxdensimp->standform;


densb = densa/.toaux;


dens1 = densb/.{q12 -> qs[1], q22 -> qs[2], q122 -> qs[3]};


(*do partial fraction in the denominators until they are all in the tadpole form*)


dens2 = Table[ apartMom[dens1[[i]],1],
   {i, Length[dens1]}
];


dens3 = dens2/.{qs[1]->q12,qs[2]->q22,qs[3]->q122};


dens4 = totad@dens3;


rules = Dispatch[Thread[dens -> dens4]];


amp18 = amp17/.rules;


(*uncomment if we have a list of amplitudes*)
amp19 = Table[If[Head[amp18[[i]]]===List,Total@amp18[[i]],amp18[[i]]],{i,Length[amp18]}];


amp19[[1]]


amp20 = amp19/. 
tad[{Null,j_,k_},{a_,b_,c_}]:>tad[{0,j,k},{a,b,c}]/.
tad[{i_,Null,k_},{a_,b_,c_}]:>tad[{i,0,k},{a,b,c}]/.
tad[{i_,j_,Null},{a_,b_,c_}]:>tad[{i,j,0},{a,b,c}]/.tad->mtad;


amp20a = amp20/.mass[x_]:>x/.Sqrt[M_^2]:>M;


(* ::Section:: *)
(*analytical amplitude*)


amp21 = tomass@amp20a/.d->4-2e/.mtad[{m_,0,0},{a_,0,0}]:>mtad[{m},{a}];


Union@Cases[amp21, _mtad, Infinity]


amp22 = Normal[Series[amp21/.mtad->analyticTad, {e,0,1}]];


Series[amp22, {e,0,0}];
%[[2]]
