(* ::Package:: *)

(* ::Section::Closed:: *)
(*phi functions and auxiliary functions*)


Clear[logs]
logs[x_]:=x//.{Log[a_/b_]:>Log[a]-Log[b],Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b]),
Log[Power[a_,2]]:>2Log[a],Log[a_ b_/Power[c_,2]]:>Log[a]+Log[b]-2Log[c]}


Clear[ratio]
ratio[a_,b_]:=a/b;


clausen=4/9/Sqrt[3]*ResourceFunction["ClausenCl"][2, Pi/3]//N


Clear[charges]
charges = {nc->3,ne->3,nu->2,nd->3,qd->-1/3,qe->-1,qu->2/3,nl->3};


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


(* ::Section::Closed:: *)
(*Wilson coeficients*)


clo = Get["/home/ana/Documents/GitHub/Vud_EW_NLO/CLOfinal_noflags.m"][[1]]/.rat->ratio;


cnlo = Get["/home/ana/Documents/GitHub/Vud_EW_NLO/CNLOfinal_noflags.m"][[1]]/.rat->ratio;


cnnlo = Get["/home/ana/Documents/GitHub/Vud_EW_NLO/CNNLOfinal_noflags.m"][[1]]/.rat->ratio;


Clear[CLO,CNLO, CNNLO,Cr]
CLO = 1;
CNLO[mu_, f_] := cnlo;
CNNLO[mu_,5] := cnnlo;
Cr[mu_,f_] := CLO + alpha[mu, f]/(4 Pi) CNLO[mu,f] + (alpha[mu, f]/(4 Pi))^2 CNNLO[mu,5];


wc=Series[Cr[mu,5],{alpha[mu,5],0,2}]/.mu->muH//Normal;


wc/.MW->80/.MZ->90/.MH->125/.Mt->172//N


wcaux=wc/.muH->mu/.pi->Pi;


(* ::Section::Closed:: *)
(*RGE, beta, ads and Js*)


(* ::Subsection::Closed:: *)
(*derivation of J (s) from Martin theses - this has sign differences compares to the draft result that I use bellow*)


Clear[s1,beta, G1,G2, a, gamma]
s1[i_,j_]:=beta[1]/beta[0]a[i]KroneckerDelta[i,j] - G1/(2 beta[0] (1+a[i]-a[j]))/.gamma[0]->g0/.gamma[1]->g1;
s2[i_,j_]:=beta[2]/(2 beta[0])a[i]KroneckerDelta[i,j]+
Sum[(1+a[i]-a[k])/(2+a[i]-a[j])*(s1[i,k]s1[k,j]-beta[1]/beta[0]s1[i,j]KroneckerDelta[j,k]),{k,1}]-
G2/(2 beta[0](2+a[i]-a[j]))/.gamma[0]->g0/.gamma[1]->g1/.gamma[2]->g2;

a[k_]:=gamma[0]/(2 beta[0]);
G1:=gamma[1];
G2:=gamma[2];


(* ::Subsection::Closed:: *)
(*J , U , Q defined - using draft+ Martin paper*)


Clear[ui,ui1,Q5,J1,J2,J1l,J2l]

ui /: ui[mu_,f_]:= (alpha[mu,f]/alpha[MZ,f])^(-3/2/Q5[2])
ui1 /: ui1[mu_,f_]:= (alpha[mu,f]/alpha[MZ,f])^(ad[0]/(2 beta[0]))

Q5 /: Q5[n_]:= nc(nu qu^n + nd qd^n) + ne qe^n /. {nc->3,qu->2/3,qd->-1/3,qe->-1, nu->2, nd->3,ne->3};

J1 /: J1[f_]:= -ad[0] beta[1]/(2 (beta[0])^2) + ad[1]/(2 beta[0]);

J2 /: J2[f_]:=-ad[0] beta[2]/(2 beta[0])^2 + 1/2 ((J1[5])^2 - beta[1]/beta[0] J1[5])+ ad[2]/(4 beta[0]);

J1l /: J1l[f_]:= -adl[0] beta[1]/(2 (beta[0])^2) + adl[1]/(2 beta[0]);

J2l /: J2l[f_]:=-adl[0] beta[2]/(2 beta[0])^2 + 1/2 ((J1l[5])^2 - beta[1]/beta[0] J1l[5])+ adl[2]/(4 beta[0]);


Clear[Jexp,Jexpl]
(*Jexp=1 + alpha[mu,5]/(4 Pi)s1[1,1] + flagj2 (alpha[mu,5]/(4 Pi))^2 s2[1,1]/.g1->gaux1/.g0->-4/.
g2-> (-2 (ne qe^6 + nd nc qd^6 + nu nc qu^6) - 
44/9 (ne qe^2 + nd nc qd^2 + nu nc qu^2) * (ne qe^4 + nd nc qd^4 + nu nc qu^4))//Expand;*)

(*commented because s1 and s2 derived from Martin theses do not
agree with the signs in the paper. J1 and J2 are
hardcodded to have the same values as in the paper, and we
are using these to check the mu independence of Chat*)

Jexp = 1 + alpha[mu,5]/(4 Pi) J1[5]+ (alpha[mu,5]/(4 Pi))^2 J2[5];
Jexpl = 1 + alpha[mu,5]/(4 Pi) J1l[5]+ (alpha[mu,5]/(4 Pi))^2 J2l[5];


(* ::Subsection::Closed:: *)
(*beta, anomalous dimension*)


Clear[beta,ad, adl]

beta /: beta[0]:= 4/3 Q5[2]/.charges;
beta /: beta[1]:= 4 Q5[4]/.charges;
beta /: beta[2] := (-2 Q5[6] - 44/9 Q5[2] * Q5[4])/.charges;

ad /: ad[0]:= -4;
ad /: ad[1]:= (16/9 nl + 64/81 nc nu + 16/81 nc nd )/8 (a1qu-8) /.charges;
ad /: ad[2]:= -1124/27-Q5[2]/324(14016+6 b2qu-63 b1qu -192 a2qu+1016 a1qu +6 (a1qu)^2) +
2/3 Q5[4] (62 +a1qu - 96 Zeta[3])+4/81 (Q5[2])^2 (240+6 a2qu-a1qu);
  
adl /: adl[0]:= 0;
adl /: adl[1]:= 2/3*Q5[2]*(4-a1mu)/.charges;
adl /: adl[2]:= 1/12 Q5[2] (152*(4-a1mu)-64*(4-a2mu)-2*(4-a1mu)^2+5*b1mu-2b2mu-832)+
2 Q5[4]*(4-a1mu)-4/27*(Q5[2])^2*((4-a1mu)-6*(4-a2mu));

(*alphaexp/:alphaexp[mu_,5] := alpha[MZ,5](1 + 
(beta[0] alpha[MZ,5]/(2 Pi) Log[mZ/mu]) + (beta[0] alpha[MZ,5]/(2 Pi) Log[mZ/mu])^2);*)


(* ::Subsection::Closed:: *)
(*Z mass anomalous dimension and mass running*)


dzmz = (*\[Alpha]/4/Pi/e*) (MZ^2)(29/6/cw^2 - 11/12/sw^2/cw^2 + 
11/3 sw^2/cw^2 - 3/2/sw^2/cw^2 Mt^2/MZ^2 - 3/4/sw^2/cw^2 MH^2/MZ^2 + 6/sw^2/cw^2 Mt^4/MZ^2/MH^2 -
3/2/sw^2/cw^2 MZ^2/MH^2 - 3/sw^2 MZ^2/MH^2 + 3 MZ^2/MH^2)/.sw->Sqrt[1-cw^2]/.cw->MW/MZ;


adm0=-dzmz/MZ^2;


Clear[massls]
massls={MZ->MZ (1 - (*flagmass*) adm0 alpha[MZ,5]/(4 Pi) Log[mu/MZ](*+flagmass(alpha[MZ,5]/(4 Pi))^2 (((ad[0])^2/2 + beta[0] ad[0])(Log[mu/MZ])^2 - ad[1] Log[mu/MZ] )*))};


(* ::Subsection::Closed:: *)
(*alpha running and mass running*)


Clear[alphals]
alphals = {alpha[mu,5] ->alpha[MZ,5] (1 + 2 beta[0] alpha[MZ,5]/(4 Pi) Log[mu/MZ]+ 
2(alpha[MZ,5]/(4 Pi))^2 (2 beta[0]^2 Log[mu/MZ]^2 + beta[1] Log[mu/MZ]) + 
    2 (alpha[MZ, 5]/(4 Pi))^3 (4 beta[0]^3 Log[mu/MZ]^3 + 5 beta[0] beta[1] Log[mu/MZ]^2 + beta[2] Log[mu/MZ]) )};


(* ::Subsubsection::Closed:: *)
(*check alpha running*)


aaaa = alpha[mu, 5] /. alphals;

Series[
  mu D[aaaa, mu] -
   2 aaaa (
     beta[0]/(4 Pi) aaaa +
     beta[1]/(4 Pi)^2 aaaa^2 +
     beta[2]/(4 Pi)^3 aaaa^3
   ),
  {alpha[MZ, 5], 0, 4}
]


ClearAll[alpha2Loop, alpha3Loop, mu];

alpha2Loop[mu_] := 
  alpha[MZ, 5] (
    1 
    + 2 beta[0] alpha[MZ, 5]/(4 Pi) Log[mu/MZ]
    + 2 (alpha[MZ, 5]/(4 Pi))^2 (
        2 beta[0]^2 Log[mu/MZ]^2 
        + beta[1] Log[mu/MZ]
      )
  ) /. 
    alpha[MZ, 5] -> 1/127.95 /. 
    MZ -> 91.1876;


alpha3Loop[mu_] := 
  alpha2Loop[mu] + 
  alpha[MZ, 5] *
    2 (alpha[MZ, 5]/(4 Pi))^3 (
      4 beta[0]^3 Log[mu/MZ]^3 
      + 5 beta[0] beta[1] Log[mu/MZ]^2 
      + beta[2] Log[mu/MZ]
    ) /. 
      alpha[MZ, 5] -> 1/127.95 /. 
      MZ -> 91.1876;


Plot[
  {alpha2Loop[mu], alpha3Loop[mu]},
  {mu, 40, 300},
  PlotStyle -> {
    {Yellow, Solid},
    {Blue,Dashed}
  },
  PlotLegends -> {"2-loop", "3-loop"},
  Frame -> True,
  FrameLabel -> {"\[Mu] [GeV]", "\[Alpha](\[Mu])"},
  PlotRange -> All,
  GridLines -> Automatic,
  ImageSize -> Small
]


(* ::Section::Closed:: *)
(*check cancelation of logs of high scale - evolution from high scale from low scale*)


(*U = J U_LO J^-1
U_LO = (alpha(mu)/alpha(MZ)^(-3/2/Q^2)) for QED*)
(*this only contains 1 loop J, so we can only check the mu cancelation at
1 loop order*)
Clear[U]
U =1-(alpha[muH,5] ad[0]/(4 Pi)) Log[muH/muL]+ (alpha[muH,5]/(4 Pi))^2 (-ad[1] Log[muH/muL]+(ad[0]^2/2 - beta[0] ad[0])Log[muH/muL]^2);


wcls = Expand[U wc, {alpha[muH,5],0,2}]/.muH->mu/.muL->MZ//logs//Normal;


wcsub = wcls/.massls/.alphals/.flagmass->1;


wcind = Series[wcsub, {alpha[MZ,5],0,2}]//Normal;


Coefficient[wcind, Log[mu]^2]//Simplify


Coefficient[wcind, Log[mu]]//Simplify


(* ::Section::Closed:: *)
(*scheme independent WC MSbar*)


(* ::Subsection::Closed:: *)
(*chat MSbar*)


wc1 = Coefficient[wcaux,alpha[mu,5]]alpha[mu,5]/.massls;
wc2 = Coefficient[wcaux,alpha[mu,5]^2]alpha[mu,5]^2;
wcoef= 1 + wc1 + wc2//Collect[#, {alpha},Simplify]&;


JC=Series[Jexpl/Jexp*wcoef/.alphals, {alpha[MZ,5],0,2}]/.nc->3//logs//
Collect[#, {a1qu, a2qu, b1qu, b2qu, a1mu, a2mu, b1mu, b2mu},Simplify]&;

u=Normal[Series[1/(ui[mu,5])/.alphals, {alpha[MZ,5],0,2}]]//logs;
uJC = Normal[Series[u JC, {alpha[MZ,5],0,2}]]/.nc->3//logs//Expand;


Union@Cases[Simplify[uJC/.flagwc1->1/.flagwc2->1/.flagjg0->1/.MT->Mt/.flagmass->1], Log[__],Infinity]
Union@Cases[uJC/.flagwc1->1/.flagwc2->1, Log[__]^n_,Infinity]

Coefficient[uJC, Log[mu]]/.flagwc1->1/.flagwc2->1/.flagjg0->1/.MT->Mt/.flagmass->1//Simplify
Coefficient[uJC, Log[mu]^2]/.flagwc1->1/.flagwc2->1//Simplify


u/.mu->300/.alpha[MZ,5]->1/127.951/.MZ->91.1876//N


JCsimp1=Coefficient[JC,alpha[MZ,5]];


JCsimp2=Coefficient[JC,alpha[MZ,5]^2];


JCsimp2;
Union@Cases[JCsimp2, Log[__], Infinity]
Union@Cases[JCsimp2, Log[__]^2, Infinity]

Coefficient[JCsimp2, a1qu]
Coefficient[JCsimp2, a2qu]
Coefficient[JCsimp2, b1qu]
Coefficient[JCsimp2, b2qu]

Coefficient[JCsimp2, a1mu]
Coefficient[JCsimp2, a2mu]
Coefficient[JCsimp2, b1mu]
Coefficient[JCsimp2, b2mu]


(* ::Subsection::Closed:: *)
(*comparison with Martin results - 1 loop agrees, 2 loop no*)


simplifymass={x->Mt^2/MW^2,y->MH^2/MW^2,z->MZ^2/MW^2};


martin1l=Get["/home/ana/Documents/GitHub/Vud_EW_NLO/chat1.m"]/.
ae[__]:>1/.simplifymass/.m->mu^2/MW^2//logs//Simplify;


JCsimp1(4 Pi);
martin1l;
%-%%//Simplify


martin2l=Get["/home/ana/Documents/GitHub/Vud_EW_NLO/chat2.m"]/.pi->Pi/.
ae[__]:>1/.simplifymass/.m->mu^2/MW^2//logs//Simplify;


A=JCsimp2 (4Pi)^2//Simplify;
B=martin2l//Simplify;


Coefficient[Coefficient[A, Log[MZ]],MW^2]//Simplify;
Coefficient[Coefficient[B, Log[MZ]],MW^2]//Simplify;
%/%%//Simplify


(* ::Subsection::Closed:: *)
(*save chat MSbar for c++ code*)


(*Export["/home/ana/Documents/GitHub/gv_project_2L/src/Chat2loop.m",JC]*)


(*currently giving as input J^(-1)(mu) C(mu) with no changes
code in c++ should do running of the masses and running of alpha*)


JCcpp=Series[Jexpl/Jexp*wcaux, {alpha[mu,5],0,2}]/.nc->3//logs//
Collect[#, {a1qu, a2qu, b1qu, b2qu, a1mu, a2mu, b1mu, b2mu},Simplify]&;


Chat=Series[JCcpp, {alpha[mu,5],0,2}]/.MT->Mt/.Li2[x_]:>PolyLog[2,x]/.nc->3/.
(*S2->clausen/.*)Zeta[3]->N[Zeta[3]]/.
DTPHI1->phi1a/.DTPHI2->phi2(*/.
Cl2[x_]:>ResourceFunction["ClausenCl"][2, x]*)//logs//Normal//Collect[#, {alpha[___]},Simplify]&;


Chataux = Coefficient[Chat, alpha[mu,5]^2]alpha[mu,5]^2;


Chatinc=CForm[Chataux];


(*Export["/home/ana/Documents/GitHub/GV/gv/src/expression.txt",Chatinc]*)


(* ::Section::Closed:: *)
(*scheme independent OS*)


(* ::Subsection::Closed:: *)
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


wRaw = Normal[wcaux] /. alpha[mu, 5] -> ae;

(*Isolate the Tree, 1-loop, and 2-loop coefficients *)
term0 = Coefficient[wRaw, ae, 0];
term1 = Coefficient[wRaw, ae, 1];
term2 = Coefficient[wRaw, ae, 2];


(*Apply the shift only to the 1-loop term and expand - MZ is the only mass that generates an O(ae^2) *)
shiftRule=MZ -> MZos*(1-1/2*ae/(4 Pi*(1-MWos^2/MZos^2))*XZ1);
term1Shifted=Normal[Series[term1/.shiftRule,{ae, 0, 1}]];


(*at 2 loop theres no correction cause the correction is O(ae^3)*)
massRules2Loop = {MZ -> MZos, MW -> MWos, MH -> MHos, Mt -> Mtos};
term2Shifted = term2 /. massRules2Loop;


(* put it together*)
wcoefos = Normal[Series[term0 + ae * term1Shifted + ae^2 * term2Shifted, {ae, 0, 2}]] /. ae -> alpha[mu, 5];


Union@Cases[wcoefos,Log[__]^n_, Infinity];
Union@Cases[wcoefos,Log[__], Infinity];


wcoefos/.MHos->125/.Mtos->173/.MZos->90/.MWos->80/.ep->0//N;


(* ::Subsection::Closed:: *)
(*running of alpha and u for on - shell scheme*)


alphalsOs = alphals/.massRules2Loop/.alpha[MZos,f_]:>alpha[MZ,f];


uOs = u/.massRules2Loop/.alpha[MZos,f_]:>alpha[MZ,f];


(* ::Subsection::Closed:: *)
(*chat on - shell*)


JCos=Normal[Series[Series[Jexpl/Jexp*wcoefos/.alphalsOs, {alpha[MZ,5],0,2}],{ep,0,0}]]/.nc->3//logs//
Collect[#, {a1qu, a2qu, b1qu, b2qu, a1mu, a2mu, b1mu, b2mu},Simplify]&;


uJCos = Normal[Series[uOs JCos, {alpha[MZ,5],0,2}]]//logs//
Collect[#, {Log[__], Log[__]^n_},Simplify]&;


Union@Cases[uJCos, Log[__]^n_,Infinity]
Union@Cases[uJCos, Log[__],Infinity]


Coefficient[uJCos, Log[mu]]
Coefficient[uJCos, Log[mu]^2]


JCossimp1=Coefficient[JCos,alpha[MZ,5]];


JCossimp2=Coefficient[JCos,alpha[MZ,5]^2];


JCossimp2;

Coefficient[JCossimp2, a1qu]
Coefficient[JCossimp2, a2qu]
Coefficient[JCossimp2, b1qu]
Coefficient[JCossimp2, b2qu]

Coefficient[JCossimp2, a1mu]
Coefficient[JCossimp2, a2mu]
Coefficient[JCossimp2, b1mu]
Coefficient[JCossimp2, b2mu]


(* ::Subsection::Closed:: *)
(*check Jegherlener B against admMZ*)


(* Check the explicit mu-dependence of shift *)
Simplify[mu D[XZ1, mu]]/sw^2/.MHos->MH/.MWos->MW/.MZos->MZ/.Mtos->MT/.sw->Sqrt[1-MW^2/MZ^2]//Simplify
adm0//Simplify
%/%%/.MT->Mt//Simplify



(* ::Subsection:: *)
(*save chat MSbar for c++ code*)


JCoscpp=Series[Series[Jexpl/Jexp*wcoefos, {alpha[mu,5],0,2}],{ep,0,0}]/.nc->3//logs//
Collect[#, {a1qu, a2qu, b1qu, b2qu, a1mu, a2mu, b1mu, b2mu, Log[__], Log[__]^n_},Simplify]&;


(*Coefficient[JCoscpp, a1qu]
Coefficient[JCoscpp, a2qu]
Coefficient[JCoscpp, b1qu]
Coefficient[JCoscpp, b2qu]

Coefficient[JCoscpp, a1mu]
Coefficient[JCoscpp, a2mu]
Coefficient[JCoscpp, b1mu]
Coefficient[JCoscpp, b2mu]*)


Chatos=JCoscpp/.nc->3/.Zeta[x_]:>N[Zeta[x]]/.Li2[x_]:>PolyLog[2,x]/.(*S2->clausen/.*)
DTPHI1->phi1a/.DTPHI2->phi2(*/.
Cl2[x_]:>ResourceFunction["ClausenCl"][2, x]*)//logs//Normal//
Collect[#, {alpha[__],Log[__],Log[__]^n_},Simplify]&;


Chatosaux = Coefficient[Chatos,alpha[mu,5]^2]alpha[mu,5]^2;


Chatincos = CForm[Chatosaux/.MHos->MH/.Mtos->Mt/.MZos->MZ/.MWos->MW];


Export["/home/ana/Documents/GitHub/GV/gv/src/expressionos.txt", Chatincos]


(* ::Section::Closed:: *)
(*plot jegherlener (*when running this part comment out the mr*)*)


(* ::Subsection::Closed:: *)
(*renormalization constants*)


(* 1-Loop Bosonic Mass Renormalization Constants *)

Clear[Z11H, Z11W, Z11Z]

(* Paper I eq 4.7*)
Z11H[t_] := -3/2-(3/4)*(MZ2[t]/MW2[t])+(3/4)*(MH2[t]/MW2[t]);

(*Paper I eq 4.8*)
Z11W[t_] := -(3/4)*(MH2[t]/MW2[t])-3*(MW2[t]/MH2[t]) - 
            (3/2)*(MZ2[t]^2/(MH2[t]*MW2[t]))+(3/4)*(MZ2[t]/MW2[t])-17/3;

(*Paper I eq 4.9*)
Z11Z[t_] := -(3/4)*(MH2[t]/MW2[t])-3*(MW2[t]/MH2[t])- 
            (3/2)*(MZ2[t]^2/(MW2[t]*MH2[t]))+(11/12)*(MZ2[t]/MW2[t])- 
            7*(MW2[t]/MZ2[t])+7/6;


(* ::Subsection::Closed:: *)
(*adms, beta functions 1 loop*)


Clear[cw, sw, numbers]
numbers = {nc -> 3, nf -> 3};

cw[t_] := Sqrt[MW2[t]/MZ2[t]];
sw[t_] := Sqrt[1 - MW2[t]/MZ2[t]];
e[t_]  := (g[t] * gp[t])/Sqrt[g[t]^2 + gp[t]^2];


(*1loop Beta functions*)
Clear[betaG, betaGp, betaE, betaLam, betaYt, gammaGF]
(*arXiv 0212319 page 17 (combined fermionic and bosonic part)*)
betaG[t_] := (g[t]^3 / (16 Pi^2)) * (-43/12 + 2/3 nf) /.numbers;
betaGp[t_] := (gp[t]^3 / (16 Pi^2)) * (1/12 + 10/9 nf) /. numbers;
(*arXiv 0105304 eq 4.5*)
betaE[t_] := e[t]^3 * (betaG[t]/g[t]^3 + betaGp[t]/gp[t]^3) // Simplify;
(*not defined in Jegherlerner TODO - look where I can take them from*)
betaLam[t_] := 0;
betaYt[t_]  := 0;


(* 1-Loop ADM for GF (From Paper I, Eq 4.24) - I am using atm their renormalization constants, 
need to check if is the same as mines - TODO LATER*)
gammaGF[t_] := (g[t]^2/(16 Pi^2))*(1/(4 MW2[t])) * (
    (2/MH2[t])*(3*(2 MW2[t]^2 +MZ2[t]^2)+MH2[t]^2-4*Mt2[t]^2) 
    - (3*(2 MW2[t]+MZ2[t])-MH2[t]-2*Mt2[t])); 


(*Masses adms*)
Clear[gammaW, gammaZ, gammaV2, gammaH, gammaT, g]

(*paper I, eq 4.24*)
gammaW[t_] := 2 * betaG[t] / g[t] - gammaGF[t];


gammaZ[t_] := gammaW[t] - (2 / (g[t]^2 * cw[t]^2)) * 
    (g[t] * betaG[t] * sw[t]^2 - e[t]^4 * (betaG[t]/g[t]^3 + betaGp[t]/gp[t]^3)) // Simplify;
  
     
gammaV2[t_] := gammaW[t] - (cw[t]^2 / sw[t]^2) * (gammaW[t] - gammaZ[t]) - 2 * betaE[t] / e[t] // Simplify;


gammaH[t_] := gammaV2[t] + betaLam[t] / lam[t] // Simplify;


gammaT[t_] := 2 * betaYt[t] / yt[t] + gammaV2[t] // Simplify;


(* ::Subsection::Closed:: *)
(*running 1 loop*)


(*RGE System*)

Clear[massODEs, couplingODEs, allODEs]

massODEs = {
  D[MW2[t], t] == gammaW[t] * MW2[t],
  D[MZ2[t], t] == gammaZ[t] * MZ2[t],
  D[MH2[t], t] == gammaH[t] * MH2[t],
  D[Mt2[t], t] == gammaT[t] * Mt2[t]
};

couplingODEs = {
  D[g[t], t]   == betaG[t],
  D[gp[t], t]  == betaGp[t],
  D[e[t], t]   == betaE[t],
  D[lam[t], t] == betaLam[t],
  D[yt[t], t]  == betaYt[t]
};

allODEs = Join[massODEs, couplingODEs];


(* ::Section:: *)
(*plot based no mr  (*when running this part comment out the jegherlener*)*)


ClearAll[loop2, qcd, rge,
betaG1,betaG2,betaG3,betaYt,betaYb,betaLam]

(* Beta Functions *)
betaG1[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := (41/10) * g1^3; (*JHEP01(2013)17*)
betaG2[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := -(19/6) * g2^3; (*JHEP01(2013)17*)
betaG3[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := 0; (*placeholder for qcd gauge coupl*)

betaLam[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := 
  24*lam^2 + lam*(12*yt^2 - 9*g2^2 - (9/5)*g1^2) - 6*yt^4 + (9/8)*g2^4 + (27/200)*g1^4 + (9/20)*g1^2*g2^2;

betaYt[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := 
  yt * ((9/2)*yt^2 - (17/20)*g1^2 - (9/4)*g2^2 - qcd*8*g3^2);

betaYb[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := 
  yb  * ((9/2)*yb^2 + (3/2)*yt^2 - (9/4)*g2^2 - (1/4)*g1^2 - qcd*8*g3^2);

(* Coupled ODEs - yb and ytau set to 0 for approximation *)
rge = {
  D[g1[t], t]   == (1/2) * (1/(16*Pi^2)) * betaG1[g1[t], g2[t], g3[t], yt[t], yb[t], 0, lam[t]],
  D[g2[t], t]   == (1/2) * (1/(16*Pi^2)) * betaG2[g1[t], g2[t], g3[t], yt[t], yb[t], 0, lam[t]],
  D[g3[t], t]   == (1/2) * (1/(16*Pi^2)) * betaG3[g1[t], g2[t], g3[t], yt[t], yb[t], 0, lam[t]],
  D[yt[t], t]   == (1/2) * (1/(16*Pi^2)) * betaYt[g1[t], g2[t], g3[t], yt[t], yb[t], 0, lam[t]],
  D[yb[t], t]   == (1/2) * (1/(16*Pi^2)) * betaYb[g1[t], g2[t], g3[t], yt[t], yb[t], 0, lam[t]],
  D[lam[t], t]  == (1/2) * (1/(16*Pi^2)) * betaLam[g1[t], g2[t], g3[t], yt[t], yb[t], 0, lam[t]]
};


betaG1[g1, g2, g3, yt, yb, ytau, lam]
betaG2[g1, g2, g3, yt, yb, ytau, lam]
betaYt[g1, g2, g3, yt, yb, ytau, lam]
betaYb[g1, g2, g3, yt, yb, ytau, lam]
betaLam[g1, g2, g3, yt, yb, ytau, lam]//Expand
%/.lam->lam/2


Clear[initConds, g1, g2, g3, yt, yb, lam]
muToT[mu_] := Log[mu / 173.2];

tMin = -2; 
t0 = 0;    
tMax = 35; 

(* Initial Conditions mr paper*)
initConds = {
  g1[muToT[173.2]] == 0.462(*/Sqrt[3/5]*),
  g2[muToT[173.2]] == 0.648,
  g3[t0] == 1.22,
  yt[muToT[173.2]] == 0.937,
  yb[muToT[173.2]] == 0.023,
  lam[muToT[173.2]] == 0.126
};


Sqrt[3/5]//N


(* Solution*)
Clear[allrge, vars, sol]
allrge = Join[rge, initConds];
vars = {g1, g2, g3,yb, yt, lam, m2};
sol = NDSolve[allrge, vars, {t, tMin, tMax}];


(* Test the Standard Model at \[Mu] = 160 GeV *)
Evaluate[g2[muToT[160]] /. sol[[1]]]
Evaluate[Sqrt[3/5] g1[muToT[160]] /. sol[[1]]]
Evaluate[lam[muToT[160]] /. sol[[1]]]
Evaluate[yt[muToT[160]] /. sol[[1]]]


at[[13]]


kt2[[13]]


3 3 11/45
%+9/5+1/10


lambda1 = 12 lam^2 - (9/5 g1^2 + 9 g2^2) lam +9/4 (3/25 g1^4 +2/5 g1^2 g2^2 + g2^4) + 4 lam 3 yt^2 - 4 3 yt^4


lambda2 = -ytau^4 - (yb^4)/3 + (9/16)*g2^4 + (3/8)*g1^2*g2^2 + (3/16)*g1^4 + 
              2*lam*ytau^2 + 6*lam*yb^2 - (9/2)*lam*g2^2 - (3/2)*lam*g1^2 + 
              12*lam^2 + 6*yt^2*lam - 3*yt^4;


lambda1/.yt->1/Sqrt[2] yt/. g1->Sqrt[5/3]1/Sqrt[2] g1/.g2->1/Sqrt[2] g2//Expand
lambda2/.ytau->0/.yb->0//Expand
%-%%//Simplify


(* ::Section::Closed:: *)
(*check table*)


(*(* mu, MW, MZ, MH, Mt, e6 *)

kt = {
  {40, 73.8182, 84.3964, 129.242, 155.052, 0.312345},
  {50, 75.0207, 85.8336, 129.731, 158.547, 0.312503},
  {60, 76.0782, 87.0954, 130.132, 161.595, 0.312632},
  {70, 77.0304, 88.2301, 130.472, 164.321, 0.312742},
  {80, 77.9024, 89.268, 130.767, 166.803, 0.312837},
  {90, 78.7108, 90.2294, 131.028, 169.093, 0.31292},
  {100, 79.4677, 91.1286, 131.261, 171.228, 0.312995},
  {110, 80.1813, 91.9759, 131.473, 173.232, 0.313063},
  {120, 80.8583, 92.7792, 131.666, 175.127, 0.313125},
  {130, 81.5042, 93.5451, 131.844, 176.929, 0.313182},
  {140, 82.1228, 94.2782, 132.009, 178.65, 0.313235},
  {150, 82.7174, 94.9826, 132.162, 180.3, 0.313284},
  {160, 83.2908, 95.6616, 132.306, 181.887, 0.313331}
};*)


(*Gf=Table[kt[[i,6]]^2/(4 Sqrt[2] kt[[i,2]]^2 (1- kt[[i,2]]^2/kt[[i,3]]^2)),{i,13}];*)


(*v=1/(Sqrt[Sqrt[2] Gf]);*)


(*g=Table[2* kt[[i,2]]/v[[i]],{i,13}];*)


(*gp=Table[2/v[[i]]*(Sqrt[kt[[i,3]]^2-kt[[i,2]]^2]),{i,13}];*)


(*lambda=Table[(kt[[i,4]]^2)/2/v[[i]]^2,{i,13}];*)


(*yt=Table[Sqrt[2] * kt[[i,5]]/v[[i]],{i,13}];*)


(*(* mu, MW, MZ, MH, Mt, e6 *)

kt2 = Table[
  {kt[[i, 1]], g[[i]], gp[[i]], v[[i]], lambda[[i]], yt[[i]]}, 
  {i, 13}
]*)


(*(* Headers: mu, g, gp, v, lambda, yt *)

at = {
  {40.0000, 0.6558, 0.3569, 216.3407, 0.1678, 0.9619},
  {50.0000, 0.6545, 0.3573, 223.8743, 0.1618, 0.9666},
  {60.0000, 0.6534, 0.3576, 229.8568, 0.1568, 0.9705},
  {70.0000, 0.6525, 0.3579, 234.8031, 0.1526, 0.9738},
  {80.0000, 0.6518, 0.3582, 239.0101, 0.1490, 0.9766},
  {90.0000, 0.6511, 0.3584, 242.6644, 0.1457, 0.9791},
  {100.0000, 0.6505, 0.3586, 245.8902, 0.1429, 0.9814},
  {110.0000, 0.6499, 0.3588, 248.7748, 0.1403, 0.9834},
  {120.0000, 0.6494, 0.3590, 251.3813, 0.1379, 0.9853},
  {130.0000, 0.6489, 0.3591, 253.7571, 0.1357, 0.9870},
  {140.0000, 0.6485, 0.3593, 255.9385, 0.1337, 0.9886},
  {150.0000, 0.6481, 0.3594, 257.9539, 0.1318, 0.9901},
  {160.0000, 0.6477, 0.3595, 259.8262, 0.1300, 0.9915}
}*)


(*Table[(kt2[[i,j]]-at[[i,j]])/(kt2[[i,j]]+at[[i,j]]),{i,13},{j, 6}]//TableForm*)


(*(* Headers: mu, g, gp, v, lambda, yt *)*)


(*kt2//TableForm*)


(*at//TableForm*)


(*atn=Transpose[Transpose[at]/at[[10]]];
kt2n=Transpose[N@Transpose[kt2]/kt2[[10]]];*)


(*TableForm[(at-kt2)/(at+kt2)]*)


(*TableForm[(atn-kt2n)/(atn+kt2n)]*)


(*at/0.1429//TableForm*)


(*kt2/0.13947059723438696//TableForm*)
