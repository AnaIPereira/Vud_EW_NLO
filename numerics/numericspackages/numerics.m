(* ::Package:: *)

(* ::Section::Closed:: *)
(*load packages*)


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/numerics/numericspackages/rge.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/numerics/numericspackages/ostomsbar.m"]


Get["/home/ana/Documents/GitHub/Vud_EW_NLO/numerics/numericspackages/phifunctions.m"]


(* ::Section::Closed:: *)
(*auxiliary functions*)


Clear[logs]
logs[x_]:=x//.{Log[a_/b_]:>Log[a]-Log[b],Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b]),
Log[Power[a_,2]]:>2Log[a],Log[a_ b_/Power[c_,2]]:>Log[a]+Log[b]-2Log[c]}


Clear[ratio]
ratio[a_,b_]:=a/b;


clausen=4/9/Sqrt[3]*ResourceFunction["ClausenCl"][2, Pi/3]//N;


Clear[charges]
charges = {nc->3,ne->3,nu->2,nd->3,qd->-1/3,qe->-1,qu->2/3,nl->3};


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


(* ::Section:: *)
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


(* ::Subsection:: *)
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
(*check cancelation of logs of high scale - evolution from high scale from low scale (*commented out*)*)


(*(*U = J U_LO J^-1
U_LO = (alpha(mu)/alpha(MZ)^(-3/2/Q^2)) for QED*)
(*this only contains 1 loop J, so we can only check the mu cancelation at
1 loop order*)
Clear[U]
U =1-(alpha[muH,5] ad[0]/(4 Pi)) Log[muH/muL]+ (alpha[muH,5]/(4 Pi))^2 (-ad[1] Log[muH/muL]+(ad[0]^2/2 - beta[0] ad[0])Log[muH/muL]^2);*)


(*wcls = Expand[U wc, {alpha[muH,5],0,2}]/.muH->mu/.muL->MZ//logs//Normal;*)


(*wcsub = wcls/.massls/.alphals/.flagmass->1;*)


(*wcind = Series[wcsub, {alpha[MZ,5],0,2}]//Normal;*)


(*Coefficient[wcind, Log[mu]^2]//Simplify*)


(*Coefficient[wcind, Log[mu]]//Simplify*)


(* ::Section:: *)
(*scheme independent WC MSbar*)


(* ::Subsection:: *)
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
(*comparison with Martin results - 1 loop agrees, 2 loop no (*commented out*)*)


(*simplifymass={x->Mt^2/MW^2,y->MH^2/MW^2,z->MZ^2/MW^2};*)


(*martin1l=Get["/home/ana/Documents/GitHub/Vud_EW_NLO/chat1.m"]/.
ae[__]:>1/.simplifymass/.m->mu^2/MW^2//logs//Simplify;*)


(*JCsimp1(4 Pi);
martin1l;
%-%%//Simplify*)


(*martin2l=Get["/home/ana/Documents/GitHub/Vud_EW_NLO/chat2.m"]/.pi->Pi/.
ae[__]:>1/.simplifymass/.m->mu^2/MW^2//logs//Simplify;*)


(*A=JCsimp2 (4Pi)^2//Simplify;
B=martin2l//Simplify;*)


(*Coefficient[Coefficient[A, Log[MZ]],MW^2]//Simplify;
Coefficient[Coefficient[B, Log[MZ]],MW^2]//Simplify;
%/%%//Simplify*)


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


(* ::Section:: *)
(*scheme independent OS*)


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
(*chat on - shell *)


JCos=Normal[Series[Series[Jexpl/Jexp*wcoefos/.alphalsOs, {alpha[MZ,5],0,2}],{ep,0,0}]]/.nc->3//logs//
Collect[#, {a1qu, a2qu, b1qu, b2qu, a1mu, a2mu, b1mu, b2mu},Simplify]&;


uJCos = Normal[Series[uOs JCos, {alpha[MZ,5],0,2}]]//logs//
Collect[#, {Log[__], Log[__]^n_},Simplify]&;


Union@Cases[uJCos, Log[__]^n_,Infinity]
Union@Cases[uJCos, Log[__],Infinity]


Coefficient[uJCos, Log[mu]]
Coefficient[uJCos, Log[mu]^2]


(*All logs dependent on mu in uJCos have cancelled*)


(* ::Subsection::Closed:: *)
(*checks of independence of evanescent definition*)


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



(* ::Subsection::Closed:: *)
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


(*Export["/home/ana/Documents/GitHub/GV/gv/src/expressionos.txt", Chatincos]*)


(* ::Section::Closed:: *)
(*PLOT Onshell*)


pdgmasses = {MWos->80.377, MZos->91.1876, MHos->125.25,Mtos->172.69, alpha[MZ,5]->1/127.93};


JCosplt=Normal[Series[Series[Jexpl/Jexp*wcoefos, {alpha[mu,5],0,2}],{ep,0,0}]]/.nc->3//logs//
Collect[#, {a1qu, a2qu, b1qu, b2qu, a1mu, a2mu, b1mu, b2mu},Simplify]&;


JCosplt1l=Normal[Series[JCosplt,{alpha[mu,5],0,1}]];


uJCosplt = 1/(ui[mu,5])* JCosplt//logs//
Collect[#, {Log[__], Log[__]^n_},Simplify]&;


uJCosplt1 = 1/(ui[mu,5])* JCosplt1l//logs//
Collect[#, {Log[__], Log[__]^n_},Simplify]&;


Cosplt=uJCosplt/.nc->3/.Zeta[x_]:>N[Zeta[x]]/.Li2[x_]:>PolyLog[2,x]/.S2->clausen/.
DTPHI1->phi1a/.DTPHI2->phi2/.pdgmasses/.
Cl2[x_]:>ResourceFunction["ClausenCl"][2, x]//N//Chop//Simplify


Cosplt1=uJCosplt1/.nc->3/.Zeta[x_]:>N[Zeta[x]]/.Li2[x_]:>PolyLog[2,x]/.S2->clausen/.
DTPHI1->phi1a/.DTPHI2->phi2/.pdgmasses/.
Cl2[x_]:>ResourceFunction["ClausenCl"][2, x]//N//Chop//Simplify


(*test*)
Cosplt1/.alpha->alphaf/.pdgmasses/.mu->40//Simplify


Clear[alphaf]
alphaf[mu_,a_]:=alpha[MZ,5]/ (1 - (alpha[MZ,5] / (2 * Pi)) * beta[0] * Log[mu / MZos]);


Plot[
  {Cosplt/.alpha->alphaf/.pdgmasses, Cosplt1/.alpha->alphaf/.pdgmasses},
  {mu, 40, 300},
  Frame -> True,
  FrameLabel -> {"\[Mu] [GeV]", "C(\[Mu])"},
  PlotStyle -> {
    {Thick, Red},
    {Thick, Dashed, Red}
  },
  PlotLegends -> {"Cos2l", "Cos1l"},
  GridLines -> Automatic,
  PlotRange -> All
]


(* ::Section:: *)
(*PLOT MSbar*)


(* ::Subsection::Closed:: *)
(*original fixed scale code*)


(*(* 1. Define OS Parameters and Initial Scale *)
MZosVal = 91.1876; MWosVal = 80.379; MHosVal = 125.1; MtosVal = 172.5;
mu0 = MZosVal; (* Typically choose MZ or Mt as the starting scale *)
aeVal = 1/127.95; (* Alpha EW at mu0 *)

(* 2. Convert OS to MSbar masses at mu0 *)
(* Using shift structures from numerics.m and variables from ostomsbar.m *)
shiftFactor = aeVal / (4 Pi);

(* Note: You must define the correct algebraic prefactors for W, H, t shifts *)
MZmsbar0 = MZosVal * (1 - 1/2 * shiftFactor / (1 - MWosVal^2/MZosVal^2) * XZ1) /. 
    {MZos -> MZosVal, MWos -> MWosVal, MHos -> MHosVal, Mtos -> MtosVal, mu -> mu0};
MWmsbar0 = MWosVal * (1 - shiftFactor * (* PREFACTOR *) * XW1) /. 
    {MZos -> MZosVal, MWos -> MWosVal, MHos -> MHosVal, Mtos -> MtosVal, mu -> mu0};
MHmsbar0 = MHosVal * (1 - shiftFactor * (* PREFACTOR *) * XH1) /. 
    {MZos -> MZosVal, MWos -> MWosVal, MHos -> MHosVal, Mtos -> MtosVal, mu -> mu0};
Mtmsbar0 = MtosVal * (1 - shiftFactor * (* PREFACTOR *) * Xtfermionaux) /. 
    {MZos -> MZosVal, MWos -> MWosVal, MHos -> MHosVal, Mtos -> MtosVal, mu -> mu0};

(* 3. Map MSbar masses to fundamental parameters at mu0 *)
v0 = 2 * MWmsbar0 / Sqrt[4 * Pi * aeVal / (1 - MWmsbar0^2/MZmsbar0^2)]; (* or from GF *)
g2Init = 2 * MWmsbar0 / v0;
g1Init = 2 * Sqrt[MZmsbar0^2 - MWmsbar0^2] / v0;
lamInit = MHmsbar0^2 / (2 * v0^2);
ytInit = Sqrt[2] * Mtmsbar0 / v0;
mpInit = lamInit * v0^2; (* Assuming mp[t] corresponds to the mass parameter m^2 *)

(* 4. Setup and Solve RGEs *)
tInit = Log[mu0^2];
myInitConds = {
  g1[tInit] == g1Init,
  g2[tInit] == g2Init,
  yt[tInit] == ytInit,
  yb[tInit] == 0, (* Using rgeyboff where yb is turned off *)
  lam[tInit] == lamInit,
  mp[tInit] == mpInit
};

targetMu = 160.0;
tTarget = Log[targetMu^2];

(* Using rgeyboff defined in rge.m *)
sol = NDSolve[
  Join[rgeyboff, myInitConds], 
  {g1, g2, mp, yt, yb, lam}, 
  {t, tInit, tTarget}
];

(* 5. Reconstruct MSbar masses at the target scale targetMu *)
vTarget = Sqrt[mp[tTarget] / lam[tTarget]] /. sol[[1]];
MWmsbarTarget = g2[tTarget] * vTarget / 2 /. sol[[1]];
MZmsbarTarget = Sqrt[g1[tTarget]^2 + g2[tTarget]^2] * vTarget / 2 /. sol[[1]];
MHmsbarTarget = Sqrt[2 * lam[tTarget]] * vTarget /. sol[[1]];
MtmsbarTarget = yt[tTarget] * vTarget / Sqrt[2] /. sol[[1]];

(* 6. Evaluate the Wilson Coefficient *)
(* wcaux is your MSbar Wilson Coefficient expression from numerics.m *)
finalWC = wcaux /. {
  MW -> MWmsbarTarget, 
  MZ -> MZmsbarTarget, 
  MH -> MHmsbarTarget, 
  Mt -> MtmsbarTarget, 
  mu -> targetMu
};*)


(* ::Subsection:: *)
(*rge at mass pole for each mass*)


pdgmasses


GF = 1.1663787*10^(-5);


(*initial conditions for the masses*)
MZmsbar0=N[Normal[Series[MZos*(1-1/2*ae/(4 Pi*(1-MWos^2/MZos^2))*XZ1),{ep,0,0}]]/.ae->alphaf[mu,5]/.mu->MZos/.pdgmasses]//Chop;
MWmsbar0=N[Normal[Series[MWos*(1-1/2*ae/(4 Pi*(1-MWos^2/MZos^2))*XW1),{ep,0,0}]]/.ae->alphaf[mu,5]/.mu->MWos/.pdgmasses]//Chop;
MHmsbar0=N[Normal[Series[MHos*(1-1/2*ae/(4 Pi*(1-MWos^2/MZos^2))*XH1),{ep,0,0}]]/.ae->alphaf[mu,5]/.mu->MHos/.pdgmasses]//Chop;
Mtmsbar0=ComplexExpand[Re[N[Normal[Series[Mtos*(1-1/2*ae/(4 Pi*(1-MWos^2/MZos^2))*Xt1),{ep,0,0}]]/.ae->alphaf[mu,5]/.mu->Mtos/.pdgmasses]]]//Chop;


(*initial conditions for the fundamental parameters *)
v0 = 1 / Sqrt[Sqrt[2] * GF]; 
g2Init = 2 * MWmsbar0 / v0;
g1Init = 2 * Sqrt[MZmsbar0^2 - MWmsbar0^2] / v0;
lamInit = MHmsbar0^2 / (2 * v0^2);
ytInit = Sqrt[2] * Mtmsbar0 / v0;
mpInit = lamInit * v0^2;


(*v0 
g2Init
g1Init
lamInit 
ytInit 
mpInit 
Sqrt[%]*)


(*solve RGEs*)
myInitConds = {
  g1[tInit] == g1Init,
  g2[tInit] == g2Init,
  yt[tInit] == ytInit,
  yb[tInit] == 0, (* Using rgeyboff where yb is turned off *)
  lam[tInit] == lamInit,
  mp[tInit] == mpInit
};

solver = NDSolve[
  Join[rgeyboff, myInitConds], 
  {g1, g2, mp, yt, yb, lam}, 
  {t, muToT[40],muToT[300]}
];


(*  Reconstruct MSbar masses  *)
vmu[mu_] := Sqrt[mp[muToT[mu]] / lam[muToT[mu]]] /. solver[[1]];
MWmu[mu_] := (g2[muToT[mu]] /. solver[[1]]) * vmu[mu] / 2;
MZmu[mu_] := Sqrt[(g1[muToT[mu]] /. solver[[1]])^2 + (g2[muToT[mu]] /. solver[[1]])^2] * vmu[mu] / 2;
MHmu[mu_] := Sqrt[2 * (lam[muToT[mu]] /. solver[[1]])] * vmu[mu];
Mtmu[mu_] := (yt[muToT[mu]] /. solver[[1]]) * vmu[mu] / Sqrt[2];


(*alpha??*)


MWmu[80]
MZmu[90]
MHmu[125]
Mtmu[173]


(* ::Subsection::Closed:: *)
(*prep the WC*)


JCplt=Normal[Series[Series[Jexpl/Jexp*wcoef, {alpha[mu,5],0,2}],{ep,0,0}]]/.nc->3//logs//
Collect[#, {a1qu, a2qu, b1qu, b2qu, a1mu, a2mu, b1mu, b2mu},Simplify]&;


JCplt1l=Normal[Series[JCplt,{alpha[mu,5],0,1}]];


uJCplt = 1/(ui[mu,5])* JCplt//logs//
Collect[#, {Log[__], Log[__]^n_},Simplify]&;


uJCplt1 = 1/(ui[mu,5])* JCplt1l//logs//
Collect[#, {Log[__], Log[__]^n_},Simplify]&;


Cplt=uJCplt/.nc->3/.Zeta[x_]:>N[Zeta[x]]/.Li2[x_]:>PolyLog[2,x]/.S2->clausen/.
DTPHI1->phi1a/.DTPHI2->phi2/.
Cl2[x_]:>ResourceFunction["ClausenCl"][2, x]//N//Chop//Simplify;


Cplt/.MW->80/.MZ->90/.MH->125/.Mt->173//Simplify


(*test*)
Cosplt1/.alpha->alphaf/.pdgmasses/.mu->40//Simplify


(*Clear[alphaf]
alphaf[mu_,a_]:=alpha[MZ,5]/ (1 - (alpha[MZ,5] / (2 * Pi)) * beta[0] * Log[mu / MZos]);*)


(*Plot[
  {Cosplt/.alpha->alphaf/.pdgmasses, Cosplt1/.alpha->alphaf/.pdgmasses},
  {mu, 40, 300},
  Frame -> True,
  FrameLabel -> {"\[Mu] [GeV]", "C(\[Mu])"},
  PlotStyle -> {
    {Thick, Red},
    {Thick, Dashed, Red}
  },
  PlotLegends -> {"Cos2l", "Cos1l"},
  GridLines -> Automatic,
  PlotRange -> All
]*)
