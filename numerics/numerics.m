(* ::Package:: *)

(* ::Section::Closed:: *)
(*others*)


(*lambsqddt[x_, y_] := (1 - x - y)^2 - 4 x y;
phi1ddt[x_, y_] := 1/Sqrt[lambsqddt[x, y]]*
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
  ];
phi1ddt[x_] := Block[{cl2},
   cl2[z_] := I/2 (PolyLog[2, Exp[-I z]] - PolyLog[2, Exp[I z]]);
   4 Sqrt[x/(1 - x)] cl2[2 ArcSin[Sqrt[x]]]
   ];
   
phi2ddt[x_] := Block[{lam},
  lam = Sqrt[1 - 1/x];
  1/lam (-4 PolyLog[2, (1 - lam)/2] + 2 Log[(1 - lam)/2]^2 -
     Log[4 x]^2 + Pi^2/3)
  ];
PhiN[x_] :=
  If[x > 1,
   Chop[phi2ddt[x]],
   Chop[phi1ddt[x]]
   ];
PhiN[x_, y_] :=
  If[(lambsqddt[x, y]) < 0,
   Chop[phi2ddt[x, y]],
   Chop[phi1ddt[x, y]]
   ]
   
PhiN[x_]:=phi2ddt[x]*)


(* ::Section::Closed:: *)
(*definitions and auxiliary functions*)


(*
M - pole mass
m - renormalized mass in \bar{MS}
XVi - defined in appendix B of 0105304
*)


Clear[logs]
logs[x_]:=x//.{Log[a_/b_]:>Log[a]-Log[b],Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b]),
Log[Power[a_,2]]:>2Log[a],Log[a_ b_/Power[c_,2]]:>Log[a]+Log[b]-2Log[c]}


Clear[ratio]
ratio[a_,b_]:=a/b;


gaux1 = (16/9 nl + 64/81 nc nu + 16/81 nc nd )/8 (a1qu-8) /. nc->3/.nd->3/.nl->3/.nu->2


clausen=4/9/Sqrt[3]*ResourceFunction["ClausenCl"][2, Pi/3]//N


(* ::Section::Closed:: *)
(*Wilson coeficients*)


clo = Get["/home/ana/Documents/GitHub/Vud_EW_NLO/CLOfinal_noflags.m"][[1]]/.rat->ratio;


cnlo = Get["/home/ana/Documents/GitHub/Vud_EW_NLO/CNLOfinal_noflags.m"][[1]]/.rat->ratio;


cnnlo = Get["/home/ana/Documents/GitHub/Vud_EW_NLO/CNNLOfinal_noflags.m"][[1]]/.rat->ratio;


cnlo


Clear[CLO,CNLO, CNNLO,Cr]
CLO = 1;
CNLO[mu_, f_] :=(*(-5 + a1mu/4 + a1q/12 - 2 Log[mu^2/mZ^2])*) cnlo;
CNNLO[mu_,5] := cnnlo;
Cr[mu_,f_] := CLO + alpha[mu, f]/(4 Pi) CNLO[mu,f] + (alpha[mu, f]/(4 Pi))^2 CNNLO[mu,5];


cnnlo/.MW->80/.MZ->90/.MH->125/.Mt->172//N


(* ::Section:: *)
(*RGE*)


(* ::Subsection::Closed:: *)
(*derivation of J (s)*)


Clear[s1,beta, G1,G2, a, gamma]
s1[i_,j_]:=beta[1]/beta[0]a[i]KroneckerDelta[i,j] - G1/(2 beta[0] (1+a[i]-a[j]))/.gamma[0]->g0/.gamma[1]->g1;
s2[i_,j_]:=beta[2]/(2 beta[0])a[i]KroneckerDelta[i,j]+
Sum[(1+a[i]-a[k])/(2+a[i]-a[j])*(s1[i,k]s1[k,j]-beta[1]/beta[0]s1[i,j]KroneckerDelta[j,k]),{k,1}]-
G2/(2 beta[0](2+a[i]-a[j]))/.gamma[0]->g0/.gamma[1]->g1/.gamma[2]->g2;

a[k_]:=gamma[0]/(2 beta[0]);
G1:=gamma[1];
G2:=gamma[2];


(* ::Subsection::Closed:: *)
(*WC scheme indpendence*)


(*
mu ->scale
f -> number of flavours
Q[5] ->sum of all charges for 5 flavour
*)


Clear[Cind]
Cind[mu_,f_] := u[mu,f]J[mu,f]Ci[mu,f];


(* ::Subsection::Closed:: *)
(*J , U , Q*)


Clear[ui,Q,uinv,J1,J1inv,J2]
ui /: ui[mu_,f_]:= (alpha[mu,f]/alpha[MZ,f])^(-3/2/Q[f])
uinv /: uinv[mu_,f_]:= 1/ui[mu,f]

ui1 /: ui1[mu_,f_]:= (alpha[mu,f]/alpha[MZ,f])^(ad[0]/(2 beta[0]))
uinv1 /: uinv1[mu_,f_]:= 1/ui1[mu,f]

Q /: Q[5]:= nc(nu qu^2 + nd qd^2) + ne qe^2 /. {nc->3,qu->2/3,qd->-1/3,qe->-1, nu->2, nd->3,ne->3}

J1 /: J1[mu_,f_]:= ad[0] beta[1]/(2 (beta[0])^2) - ad[1]/(2 beta[0])
J1inv /: J1inv[mu_,f_]:= 1/J1[mu,f]

J2 /: J2[mu_,f_]:=ad[0] beta[2]/(2 beta[0])^2 + 1/2 ((J1[mu,5])^2 - beta[1]/beta[0] J1[mu,5])- ad[2]/(4 beta[0])


(*Clear[s1,ad,beta,J1]
s2[1,1]/.s1[1,1]->J1[mu,5]/.gamma->ad
J2[mu,5]/.ad[0]->g0
%-%%//Simplify*)


(*Series[ui1[mu,5]/.alpha[mu,5]->alphaexp[mu,5],{alpha[MZ,5],0,2}]//Normal
Series[uinv1[mu,5]/.alpha[mu,5]->alphaexp[mu,5],{alpha[MZ,5],0,2}]//Normal*)


(* ::Subsection:: *)
(*beta, anomalous dimension,alpha*)


Clear[beta,ad, alphaexp]

beta /: beta[0]:= 4/3 (ne qe^2 + nd nc qd^2 + nu nc qu^2)/.nc->3/.ne->3/.nu->2/.nd->3/.qd->-1/3/.qe->-1/.qu->2/3;
beta /: beta[1]:= 4 (ne qe^4 + nd nc qd^4 + nu nc qu^4)/.nc->3/.ne->3/.nu->2/.nd->3/.qd->-1/3/.qe->-1/.qu->2/3;
beta /: beta[2] := (-2 (ne qe^6 + nd nc qd^6 + nu nc qu^6) - 
44/9 (ne qe^2 + nd nc qd^2 + nu nc qu^2) * (ne qe^4 + nd nc qd^4 + nu nc qu^4))/. 
nc -> 3 /. ne -> 3 /. nu -> 2 /. nd -> 3 /. qd -> -1/3 /. qe -> -1 /. qu -> 2/3;

ad /: ad[0]:= g0(*-4*);
ad /: ad[1]:= g1 (*gaux1*);
ad /: ad[2]:= g2 (*(-((14016 + 1016*a1qu + 6*a1qu^2 - 192*a2qu - 63*b1qu + 6*b2qu)*(ne qe^2 + nd nc qd^2 + nu nc qu^2)) - 
  16*(a1qu - 6*(40 + a2qu))*(ne qe^2 + nd nc qd^2 + nu nc qu^2)^2 + 
  24*(-562 + 9*(ne qe^4 + nd nc qd^4 + nu nc qu^4)*(62 + a1qu - 96*N[Zeta[3]])))/324/.nc->3/.ne->3/.nu->2/.nd->3/.qd->-1/3/.qe->-1/.qu->2/3*);
  
alphaexp/:alphaexp[mu_,5] := alpha[MZ,5](1 + (beta[0] alpha[MZ,5]/(2 Pi) Log[mZ/mu]) + (beta[0] alpha[MZ,5]/(2 Pi) Log[mZ/mu])^2)


(* ::Section::Closed:: *)
(*check cancelation of logs of high scale - evolution from high scale from low scale*)


dzmz = (*\[Alpha]/4/Pi/e*) (MZ^2)(29/6/cw^2 - 11/12/sw^2/cw^2 + 
11/3 sw^2/cw^2 - 3/2/sw^2/cw^2 MT^2/MZ^2 - 3/4/sw^2/cw^2 MH^2/MZ^2 + 6/sw^2/cw^2 MT^4/MZ^2/MH^2 -
3/2/sw^2/cw^2 MZ^2/MH^2 - 3/sw^2 MZ^2/MH^2 + 3 MZ^2/MH^2)/.sw->Sqrt[1-cw^2]/.cw->MW/MZ;


adm0=-dzmz/MZ^2;


(*Clear[beta]*)


Clear[alphals]
alphals={alpha[mu,5]->alpha[MZ,5](1-beta[0]*alpha[MZ,5]/(2 Pi)Log[mu/MZ])};

(*alphals = {alpha[mu,5] ->
alpha[MZ,5]*(1- beta[0] alpha[MZ,5]/(2 Pi) Log[mu/MZ]+ (alpha[MZ,5]/(2 Pi))^2(beta[0]^2 Log[mu/MZ]^2- beta[1] Log[mu/MZ]))};*)

Clear[massls]
massls={MZ->MZ (1 - adm[0] alpha[MZ,5]/(4 Pi) Log[mu/MZ] +
(alpha[MZ,5]/(4 Pi))^2 (((adm[0])^2/2 + beta[0] adm[0])(Log[mu/MZ])^2 - adm[1] Log[mu/MZ] ))};

Clear[U]
U =1-(alpha[muH,5] ad[0]/(4 Pi)) Log[muH/muL]+ (alpha[muH,5]/(4 Pi))^2 (-ad[1] Log[muH/muL]+(ad[0]^2/2 - beta[0] ad[0])Log[muH/muL]^2);


wc;


wc=Series[Cr[mu,5],{alpha[mu,5],0,2}]/.mu->muH/.a1mu->4//Normal;


wcls = Expand[U wc, {alpha[muH,5],0,2}]/.muH->mu/.muL->MZ//logs//Normal;


wcsub = wcls/.massls/.alphals;


wcind = Series[wcsub, {alpha[MZ,5],0,2}]//Normal;


Coefficient[wcind, alpha[MZ,5]]/.g0->-4
%/.a1qu->8//Simplify


Coefficient[wcind, alpha[MZ,5]^2]/.adm->ad/.g0->-4/.nc->3/.g1->gaux1//logs;
Coefficient[%, Log[mu]]/.beta[0]->-80/9/.adm[0]->adm0/.MT->Mt//Simplify


Coefficient[wcind, alpha[MZ,5]^2]/.adm->ad/.g0->-4/.beta[0]->-80/9/.nc->3//logs//logs//Collect[#, {Log[__]},Simplify]&;
Coefficient[%, Log[mu]^2]//Simplify


Coefficient[wcind, alpha[MZ,5]^2]/.adm->ad/.g0->-4/.nc->3/.g1->gaux1//logs//Simplify;


(*Union@Cases[wc, Log[__]^n_, Infinity]
Union@Cases[wc, Log[__], Infinity]
Union@Cases[wc, DTPHI1[__], Infinity]
Union@Cases[wc,Li2[__], Infinity]

Union@Cases[wcls, Log[__]^n_, Infinity]
Union@Cases[wcls, Log[__], Infinity]
Union@Cases[wcls, DTPHI1[__], Infinity]
Union@Cases[wcls,Li2[__], Infinity]*)


(* ::Section::Closed:: *)
(*phi functions*)


Clear[lambda,z,Cl2,phi1a,phi1b,phi2]

(*Cl2[x_]:=ResourceFunction["ClausenCl"][2, x];*)

(*DTPHI1*)
(*0<z<1*)
phi1a[z_]:=4 Sqrt[z/(1 - z)] Cl2[2 ArcSin[Sqrt[z]]];
(*z>1*)
(*lambda[z_]:=Sqrt[1-1/z];
phi1b[z_]:=1/lambda[z](-4 PolyLog[2,1/2-lambda[z] + 2 (Log[1/2 - lambda[z]])^2] - (Log[4 z])^2 + Pi^2/2);*)

(*DTPHI2*)
lambda[x_,y_]:=Sqrt[(1-x-y)^2 - 4x y]
phi2[x_,y_]:=2/Sqrt[-(lambda[x, y])^2] (
    Cl2[2 ArcCos[(-1 + x + y)/(2 Sqrt[x y])]] +
     Cl2[2 ArcCos[(1 + x - y)/(2 Sqrt[x])]] +
     Cl2[2 ArcCos[(1 - x + y)/(2 Sqrt[y])]])


(* ::Section:: *)
(*scheme independent WC MSbar*)


(* ::Subsection:: *)
(*wilson coefficient*)


Clear[alphals]
alphals = {alpha[mu,5] ->alpha[MZ,5] (1 + 2 flagalpha1 beta[0] alpha[MZ,5]/(4 Pi) Log[mu/MZ]+ 
2(alpha[MZ,5]/(4 Pi))^2 (2 flagalpha1^2 beta[0]^2 Log[mu/MZ]^2 + flagalphabeta1 beta[1] Log[mu/MZ]) )}/.flagalpha1->1/.flagalphabeta1->1;

Jexp=1 + alpha[mu,5]/(4 Pi)s1[1,1] + flagj2 (alpha[mu,5]/(4 Pi))^2 s2[1,1]/.g1->gaux1/.g0->-4/.
g2-> (-2 (ne qe^6 + nd nc qd^6 + nu nc qu^6) - 
44/9 (ne qe^2 + nd nc qd^2 + nu nc qu^2) * (ne qe^4 + nd nc qd^4 + nu nc qu^4))//Expand;

Clear[massls]
massls={MZ->MZ (1 - flagmass adm0 alpha[MZ,5]/(4 Pi) Log[mu/MZ](*+flagmass(alpha[MZ,5]/(4 Pi))^2 (((ad[0])^2/2 + beta[0] ad[0])(Log[mu/MZ])^2 - ad[1] Log[mu/MZ] )*))};


adm0


s1[1,1]
s2[1,1]//Expand


J2[mu,5]//Expand


adm0//Simplify


aaaa=alpha[mu,5]/.alphals;


Series[mu D[aaaa,mu]-aaaa 2(beta[0]/(4 Pi) aaaa+beta[1]/(4 Pi)^2 aaaa^2)/.{flagalpha1->1,flagalphabeta1->1,flagalphabeta0->1},{alpha[MZ,5],0,3}]


wcaux=wc/.muH->mu/.pi->Pi;
wc1 = Coefficient[wcaux,alpha[mu,5]]alpha[mu,5]/.massls;
wc2 = Coefficient[wcaux,alpha[mu,5]^2]alpha[mu,5]^2;
wcoef= 1 + wc1 + wc2//Collect[#, {alpha},Simplify]&;


(*Series[Uevol*wcoef, {alpha[mu,5],0,1}]//logs//Simplify//Normal*)


Series[uinv[mu,5]/.alphals,{ flagalpha,0,2}]//Normal


JC=Series[Jexp*wcoef/.alphals, {alpha[MZ,5],0,2}];
u=Normal[Series[uinv[mu,5]/.alphals, {alpha[MZ,5],0,2}]]//logs;
uJC = Normal[Series[u JC, {alpha[MZ,5],0,2}]]/.g0->-4(*/.g1->gaux1*)/.nc->3//logs//Expand;

Union@Cases[Simplify[uJC/.flagwc1->1/.flagwc2->1/.flagjg0->1/.MT->Mt/.flagmass->1], Log[__],Infinity]
Union@Cases[uJC/.flagwc1->1/.flagwc2->1, Log[__]^n_,Infinity]


(*Export["/home/ana/Documents/GitHub/gv_project_2L/src/Chat2loop.m",JC]*)


Coefficient[uJC, Log[mu]]/.flagwc1->1/.flagwc2->1/.flagjg0->1/.MT->Mt/.flagmass->1//Simplify

Coefficient[uJC, Log[mu]^2]/.flagwc1->1/.flagwc2->1//Simplify


Union@Cases[uJC, qe, Infinity]


40849/3969//N


Coefficient[JC,alpha[MZ,5]^2];
Coefficient[%, a1qu]/.nc->3//Simplify


simplifymass={x->Mt^2/MW^2,y->MH^2/MW^2,z->MZ^2/MW^2};


martin1l=Get["/home/ana/Documents/GitHub/Vud_EW_NLO/chat1.m"];


martin1l/.ae[_,_]:>1/.m->mu^2/MW^2/.simplifymass//logs//Simplify


4 Pi Coefficient[JC,alpha[MZ,5]]//Expand


martin2l=Get["/home/ana/Documents/GitHub/Vud_EW_NLO/chat2.m"];


Coefficient[m2l,Zeta[3]]
Coefficient[Coefficient[JC,alpha[MZ,5]^2],Zeta[3]]
%/%%


JC


m2l=martin2l/.m->mu^2/MW^2/.simplifymass/.pi->Pi//logs//Simplify;


(* ::Subsection::Closed:: *)
(*save chat*)


(*JCplot = Series[Jexp*wcoef/.flagmass->0, {alpha[MZ,5],0,2}];*)


(*Chat=Series[JCplot(*/.flagmass->1*), {alpha[mu,5],0,2}]/.MT->Mt/.Li2[x_]:>PolyLog[2,x]/.a1qu->8/.g0->-4/.g1->gaux1/.nc->3/.
a2mu->4/.b1mu->(2 b2mu+832)/5/.(*S2->clausen/.*)
DTPHI1->phi1a/.DTPHI2->phi2/.
{beta[2]->0, gamma[2]->0, a2qu->0, b1qu->0, b2mu->0, b2qu->0}(*/.
Cl2[x_]:>ResourceFunction["ClausenCl"][2, x]*)//logs//Normal//Collect[#, {alpha[___]},Simplify]&;*)


(*Chataux = Coefficient[Chat, alpha[mu,5]^2]alpha[mu,5]^2;*)


(*Chatinc=CForm[Chataux];*)


(*Export["/home/ana/Documents/GitHub/GV/gv/src/expression.txt",Chatinc]*)


(* ::Section:: *)
(*scheme independent OS*)


(* ::Subsection::Closed:: *)
(*wilson coefficient in MSbar*)


wcoefms=wc/.muH->mu/.pi->Pi//Collect[#, {alpha},Simplify]&;


(* ::Subsection:: *)
(*function XZ with B0 from Denner section 4.3.2*)


(*functions B0 (B1) Jegerlehner*)

(*Clear[B1]
B1/: B1[m1_,m2_,p_]:=(Integrate[Log[m1/mu^2 x + m2/mu^2 (1-x) - p/mu^2 x (1-x)],x]/.x->1)-
(Integrate[Log[m1/mu^2 x + m2/mu^2 (1-x) - p/mu^2 x (1-x)],x]/.x->0)*)


ClearAll[r, B0, ep, mu, delta]

(* r function *)
r[m0_, m1_, p_] := Module[{A, r1, r2},
  A = (m0^2 + m1^2 - p^2 - I*ep)/(m0 m1); 
  r1 = (A + Sqrt[A^2 - 4])/2;
  r2 = (A - Sqrt[A^2 - 4])/2;
  r1
]

delta = 0;

(* B0 function *)
B0/: B0[m0_, m1_, p_] := -(delta + 2 - Log[m0 m1 / mu^2] + 
  (m0^2 - m1^2)/p^2 Log[m1/m0] - 
  m0 m1/p^2 (1/r[m0, m1, p] - r[m0, m1, p]) Log[r[m0, m1, p]] )/; (m0 =!= 0 && m1 =!= 0)

B0/: B0[0, 0, p_] :=-( delta + 2 - Log[p^2 / mu^2]); (*I am not sure of this definition*)


(* XZ1 in terms of On-Shell masses. *)
XZ1boson = 13/18 - 1/6 Log[MWos^2/mu^2] + 4/3 B0[MWos, MWos, MZos] + 
  MHos^4/(MWos^2 MZos^2) (1/12 - 1/12 Log[MHos^2/mu^2] + 1/12 B0[MHos, MZos, MZos]) + 
  MHos^2/MWos^2 (7/12 + 1/12 Log[MZos^2/mu^2] - 1/2 Log[MHos^2/mu^2] - 1/3 B0[MHos, MZos, MZos]) + 
  MZos^2/MWos^2 (2/9 - 1/6 Log[MZos^2/mu^2] + 1/12 B0[MWos, MWos, MZos] + B0[MHos, MZos, MZos]) + 
  MWos^2/MZos^2 (-4/3 Log[MWos^2/mu^2] - 17/3 B0[MWos, MWos, MZos]) + 
  MWos^4/MZos^4 (4 Log[MWos^2/mu^2] - 4 B0[MWos, MWos, MZos]) + 
  MWos^2/MHos^2 (1 - 3 Log[MWos^2/mu^2]) + 
  MZos^4/(MWos^2 MHos^2) (1/2 - 3/2 Log[MZos^2/mu^2]);


(*XZ1fermionaux = 1/3 nF (-2 + MZos^2/MWos^2 + 1/2 MZos^2/MWos^2 B0[0, 0, MZos] + 4/3 MWos^2/MZos^2 + Nc (11/27 MZos^2/MWos^2 + 20/27 MWos^2/MZos^2 - 22/27)) + 
  Sum[4 ml^2/MZos^2 (1 - 2/3 MWos^2/MZos^2) (Log[ml^2/mu^2] - B0[ml, ml, MZos]) - 
    ml^2/MWos^2 (5/3 Log[ml^2/mu^2] - 7/6 B0[ml, ml, MZos]) - 
    2 ml^4/(MHos^2 MWos^2) (1 - Log[ml^2/mu^2]) + 
    B0[ml, ml, MZos] (5/6 MZos^2/MWos^2 + 4/3 MWos^2/MZos^2 - 2), {ml, leptons}] + 
  Nc Sum[2 muq^4/(MHos^2 MWos^2) (Log[muq^2/mu^2] - 1) + 
    (17/54 MZos^2/MWos^2 + 16/27 MWos^2/MZos^2 - 20/27) B0[muq, muq, MZos] - 
    muq^2/MWos^2 (17/27 Log[muq^2/mu^2] - 7/54 B0[muq, muq, MZos]) + 
    (40/27 muq^2/MZos^2 - 32/27 (muq^2 MWos^2)/MZos^4) (Log[muq^2/mu^2] - B0[muq, muq, MZos]), {muq, uquarks}] + 
  Nc Sum[2 md^4/(MHos^2 MWos^2) (Log[md^2/mu^2] - 1) + 
    (5/54 MZos^2/MWos^2 + 4/27 MWos^2/MZos^2 - 2/27) B0[md, md, MZos] - 
    md^2/MWos^2 (5/27 Log[md^2/mu^2] + 17/54 B0[md, md, MZos]) + 
    (4/27 md^2/MZos^2 - 8/27 (md^2 MWos^2)/MZos^4) (Log[md^2/mu^2] - B0[md, md, MZos]), {md, dquarks}];*)


(* constants for generations and colors*)
nF = 3; 
Nc = 3;

XZ1fermion = 1/3 nF (-2 + MZos^2/MWos^2 + 1/2 MZos^2/MWos^2 B0[0, 0, MZos] + 4/3 MWos^2/MZos^2 + 
  Nc (11/27 MZos^2/MWos^2 + 20/27 MWos^2/MZos^2 - 22/27)) + 
  (* lepton part *)
  3 * B0[0, 0, MZos] * (5/6 MZos^2/MWos^2 + 4/3 MWos^2/MZos^2 - 2) + 
  (* quark down part *)
  Nc * 3 * B0[0, 0, MZos] * (5/54 MZos^2/MWos^2 + 4/27 MWos^2/MZos^2 - 2/27) +
  (* top-Quark *)
  Nc * (2 Mtos^4/(MHos^2 MWos^2) (Log[Mtos^2/mu^2] - 1) + 
    (17/54 MZos^2/MWos^2 + 16/27 MWos^2/MZos^2 - 20/27) B0[Mtos, Mtos, MZos] - 
    Mtos^2/MWos^2 (17/27 Log[Mtos^2/mu^2] - 7/54 B0[Mtos, Mtos, MZos]) + 
    (40/27 Mtos^2/MZos^2 - 32/27 (Mtos^2 MWos^2)/MZos^4) (Log[Mtos^2/mu^2] - B0[Mtos, Mtos, MZos])) +
  (* up and charm *)
  Nc * 2 * (17/54 MZos^2/MWos^2 + 16/27 MWos^2/MZos^2 - 20/27) B0[0, 0, MZos];


 XZ1 = XZ1boson+XZ1fermion;


(* ::Subsection::Closed:: *)
(*convert run masses to on shell masses*)


wRaw = Normal[wcoefms] /. alpha[mu, 5] -> ae;

(*Isolate the Tree, 1-loop, and 2-loop coefficients *)
term0 = Coefficient[wRaw, ae, 0];
term1 = Coefficient[wRaw, ae, 1];
term2 = Coefficient[wRaw, ae, 2];


(*Apply the shift only to the 1-loop term and expand - MZ is the only mass that generates an O(ae^2) *)
shiftRule = MZ ->  MZos * (1 - 1/2 * ae/(4 Pi * (1-MWos^2/MZos^2)) * XZ1);
term1Shifted = Normal[Series[term1 /. shiftRule, {ae, 0, 1}]];
term1Shifted = Normal[Series[term1 /. shiftRule, {ae, 0, 1}]];


(*at 2 loop theres no correction cause the correction is O(ae^3)*)
massRules2Loop = {MZ -> MZos, MW -> MWos, MH -> MHos, Mt -> Mtos};
term2Shifted = term2 /. massRules2Loop;


(* put it together*)
wcoefos = Normal[Series[term0 + ae * term1Shifted + ae^2 * term2Shifted, {ae, 0, 2}]] /. ae -> alpha[mu, 5];


Union@Cases[wcoefos,Log[__]^n_, Infinity];
Union@Cases[wcoefos,Log[__], Infinity]


wcoefos/.MHos->125/.Mtos->173/.MZos->90/.MWos->80/.ep->0//N;


(* ::Subsection:: *)
(*Scheme independent On Shell Wilson Coefficient*)


alphalsOs = alphals/.massRules2Loop/.alpha[MZos,f_]:>alpha[MZ,f]


uOs = u/.massRules2Loop/.alpha[MZos,f_]:>alpha[MZ,f]


JCos=Normal[Series[Series[Jexp*wcoefos/.alphalsOs, {alpha[MZ,5],0,2}],{ep,0,0}]]/.g0->-4/.g1->gaux1/.a1qu->8/.nc->3//logs//Expand;
uJCos = Normal[Series[uOs JCos, {alpha[MZ,5],0,2}]]//logs//Expand;


(*JCos/.a2mu->0/.b1mu->0/.a2qu->0/. b1qu->0/.b2qu->0/.Log[__]:>0/.Li2[__]:>0/.
DTPHI1[a_]:>0/.DTPHI2[a_,b_]:>0/.b2mu->0/.Complex[0,x_]:>0//Simplify*)


nummasses@Union@Cases[uJCos, Log[__],Infinity]


Union@Cases[uJCos, Log[__]^n_,Infinity]


Coefficient[uJCos, Log[mu]]//Simplify
Coefficient[uJCos, Log[mu]^2]


(* Check the explicit mu-dependence of your shift *)
Simplify[mu D[XZ1, mu]]/sw^2/.MHos->MH/.MWos->MW/.MZos->MZ/.Mtos->MT/.sw->Sqrt[1-MW^2/MZ^2]//Simplify
adm0//Simplify
%/%%//Simplify


(* ::Subsection::Closed:: *)
(*export 2 loop On Shell Wilson Coefficient to do the plot in numerics*)


(*Chatos=Series[Jexp*wcoefos, {alpha[mu,5],0,2}]/.Li2[x_]:>PolyLog[2,x]/.a1qu->8/.g0->-4/.g1->gaux1/.nc->3/.
a2mu->4/.b1mu->(2 b2mu+832)/5/.(*S2->clausen/.*)
DTPHI1->phi1a/.DTPHI2->phi2/.
{beta[2]->0, gamma[2]->0, a2qu->0, b1qu->0, b2mu->0, b2qu->0}(*/.
Cl2[x_]:>ResourceFunction["ClausenCl"][2, x]*)//logs//Normal//Collect[#, {alpha[___],Log[__], PolyLog[a_,b_]},Simplify]&;*)


(*Chatosaux = Coefficient[Simplify[Chatos],alpha[mu,5]^2]alpha[mu,5]^2;*)


(*Union@Cases[Chatosaux, SW,Infinity]*)


(*Chatincos = CForm[Chatosaux/.MHos->MH/.Mtos->Mt/.MZos->MZ/.MWos->MW];*)


(*Export["/home/ana/Documents/GitHub/GV/gv/src/expressionos.txt", Chatincos]*)


(* ::Section::Closed:: *)
(*plots*)


(*Clear[beta,ad, alphaexp]

beta /: beta[0]:= 4/3 (ne qe^2 + nd nc qd^2 + nu nc qu^2)/.nc->3/.ne->3/.nu->2/.nd->3/.qd->-1/3/.qe->-1/.qu->2/3;
beta /: beta[1]:= 4 (ne qe^4 + nd nc qd^4 + nu nc qu^4)/.nc->3/.ne->3/.nu->2/.nd->3/.qd->-1/3/.qe->-1/.qu->2/3;
ad /: ad[0]:= g0(*-4*);
ad /: ad[1]:= g1 (*gaux1*);

alphaexp/:alphaexp[mu_,5] := alpha[MZ,5](1 + (beta[0] alpha[MZ,5]/(2 Pi) Log[mZ/mu]) + (beta[0] alpha[MZ,5]/(2 Pi) Log[mZ/mu])^2)*)


(*Clear[beta, ad, alphaexp, WC]

(* beta-function coefficients *)
beta[0] := 4/3 (ne qe^2 + nd nc qd^2 + nu nc qu^2) /. {
    nc -> 3, ne -> 3, nu -> 2, nd -> 3,
    qd -> -1/3, qe -> -1, qu -> 2/3
};

beta[1] := 4 (ne qe^4 + nd nc qd^4 + nu nc qu^4) /. {
    nc -> 3, ne -> 3, nu -> 2, nd -> 3,
    qd -> -1/3, qe -> -1, qu -> 2/3
};

(* Input parameters *)
MZ = 91.1876;
alpha[MZ, 5] = 1/127.95;

(* Running alpha expanded around MZ *)
alphaexp[mu_, 5] :=
  alpha[MZ, 5]*
   (1 +
     beta[0] alpha[MZ, 5]/(2 Pi) Log[MZ/mu] +
     (beta[0] alpha[MZ, 5]/(2 Pi) Log[MZ/mu])^2);

(* Wilson coefficient *)
WC[mu_] :=
  1 + alphaexp[mu, 5]*
      (-40 - 48 Log[mu] + 48 Log[MZ])/(48 Pi);

(* Plot *)
Plot[
  {1, WC[mu]},
  {mu, 50, 300},
  PlotStyle -> {
    {Black, Dashed},   (* LO *)
    {Red, Thick}       (* NLO *)
  },
  PlotLegends -> {"CLO", "CNLO"},
  AxesLabel -> {"\[Mu] (GeV)", "C(\[Mu])"},
  GridLines -> Automatic,
  PlotRange -> All,
  ImageSize -> Large
]*)
