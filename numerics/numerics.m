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


(* ::Section:: *)
(*scheme independent WC MSbar*)


(* ::Subsection::Closed:: *)
(*chat MSbar*)


wcaux=wc/.muH->mu/.pi->Pi;
wc1 = Coefficient[wcaux,alpha[mu,5]]alpha[mu,5]/.massls;
wc2 = Coefficient[wcaux,alpha[mu,5]^2]alpha[mu,5]^2;
wcoef= 1 + wc1 + wc2//Collect[#, {alpha},Simplify]&;


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


(* ::Subsection:: *)
(*save chat for c++ code*)


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


Export["/home/ana/Documents/GitHub/GV/gv/src/expression.txt",Chatinc]


(* ::Section:: *)
(*scheme independent OS*)


(* ::Subsection::Closed:: *)
(*wilson coefficient in MSbar*)


wcoefms=wc/.muH->mu/.pi->Pi//Collect[#, {alpha},Simplify]&;


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


(* ::Subsection::Closed:: *)
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
