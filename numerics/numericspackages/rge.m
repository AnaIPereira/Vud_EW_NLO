(* ::Package:: *)

(*
package to run the RGEs
1 loop EW implemented
*)


(* ::Section::Closed:: *)
(*table from mr*)


(* Headers: mu, g, gp, v, lambda, yt *)
Clear[atable]
atable = {
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
};

anaft=TableForm[atable, 
 TableHeadings -> {None, {"mu", "g2", "g1", "v", "lam", "yt"}}];


(* ::Section::Closed:: *)
(*table Kai*)


(* mu, MW, MZ, MH, Mt, e6 *)

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
};


Gf=Table[kt[[i,6]]^2/(4 Sqrt[2] kt[[i,2]]^2 (1- kt[[i,2]]^2/kt[[i,3]]^2)),{i,13}];


v=1/(Sqrt[Sqrt[2] Gf]);


g=Table[2* kt[[i,2]]/v[[i]],{i,13}];


gp=Table[2/v[[i]]*(Sqrt[kt[[i,3]]^2-kt[[i,2]]^2]),{i,13}];


lambda=Table[(kt[[i,4]]^2)/2/v[[i]]^2,{i,13}];


lambdakai=Table[(kt[[i,4]]^2)*2/v[[i]]^2,{i,13}];


ytop=Table[Sqrt[2] * kt[[i,5]]/v[[i]],{i,13}];


kt2 = Table[
  {kt[[i, 1]], g[[i]], gp[[i]], v[[i]], lambda[[i]], ytop[[i]]}, 
  {i, 13}
];

kaift=TableForm[kt2, 
 TableHeadings -> {None, {"mu", "g2", "g1", "v", "lam", "yt"}}];


kaift
anaft;


(* ::Section::Closed:: *)
(*running fundamental parameters Pikelner*)


(* ::Subsection::Closed:: *)
(*beta functions fundamental parameters  Pikelner*)


ClearAll[betaG1,betaG2,betaG3,betaLam,betaLamp,betam2,betam2p,betaYt,betaYb]
Clear[a1,a2,a3,at,atau,ab,lambdaHat]

(*
to reproduce Kais result i need to use no GUT because I extracted g1 from the masses so
betag1 = prefactor 41/6
and a1 = 5/3 g1^2
*)

betaG1[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := (*(41/10)*)(41/6) * (1/(16*Pi^2)) * g1^3; (*JHEP01(2013)17*) (*GUT 41/10/ no GUT 41/6*)
betaG2[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := -(19/6) * (1/(16*Pi^2)) * g2^3; (*JHEP01(2013)17*) (*GUT renormalisation*)
betaG3[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := 0; (*placeholder for qcd gauge coupl*)

(*1303.2890 Chetyrkin, Zoller (not using, just to compare)*)
betaLam[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := (-ytau^4-3*yb^4+(9/16)*g2^4+(3/8)*g1^2*g2^2+(3/16)*g1^4+ 
2*lam*ytau^2+6*lam*yb^2-(9/2)*lam*g2^2-(3/2)*lam*g1^2+12*lam^2+ 6*yt^2*lam-3*yt^4)/.g1->Sqrt[5/3]g1;

(*1303.4364 Pikelner et al*)
betaLamp[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := 
(12*lambdaHat^2 - (9/10)*a1*lambdaHat - (9/2)*a2*lambdaHat + 
   (27/400)*a1^2 + (9/40)*a1*a2 + (9/16)*a2^2 - 3*at^2 - 3*ab^2 - atau^2 + 
   6*at*lambdaHat + 6*ab*lambdaHat + 2*atau*lambdaHat) /. {
   a1->(5/3)*g1^2/(16*Pi^2),a2->g2^2/(16*Pi^2),atau->ytau^2/(16*Pi^2),ab->yb^2/(16*Pi^2),at->yt^2/(16*Pi^2),
   lambdaHat->lam/(16*Pi^2)};

(*(*1303.2890 Chetyrkin, Zoller - not using*)
betam2[g1_, g2_, gs_, yt_, yb_, ytau_, lam_] := (ytau^2+ 3*yb^2- (9/4)*g2^2- (3/4)*g1^2+ 6*lam+ 3*yt^2);*)

(*1303.4364 Pikelner et al*)
betam2p[g1_, g2_, gs_, yt_, yb_, ytau_, lam_] := 
  (-(9/20)*a1 - (9/4)*a2 + 3*at + 3*ab + atau + 6*lambdaHat) /. {
   a1->(5/3)*g1^2/(16*Pi^2),a2->g2^2/(16*Pi^2),atau->ytau^2/(16*Pi^2),ab->yb^2/(16*Pi^2),
   at->yt^2/(16*Pi^2),lambdaHat->lam/(16*Pi^2)};

(* 1212.6829 Pikelner et al. *)
betaYt[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := 
  (at * ((9/2)*at + atau + (3/2)*ab - (9/4)*a2 - (17/20)*a1)) /. {
   a1->(5/3)*g1^2/(16*Pi^2),a2->g2^2/(16*Pi^2),atau->ytau^2/(16*Pi^2),ab->yb^2/(16*Pi^2),
   at->yt^2/(16*Pi^2)};

(*1212.6829 Pikelner et al*)
betaYb[g1_, g2_, g3_, yt_, yb_, ytau_, lam_] := 
  (ab * (-a1/4 - (9/4)*a2 + (9/2)*ab + (3/2)*at + atau)) /. {
  a1->(5/3)*g1^2/(16*Pi^2),a2->g2^2/(16*Pi^2),atau->ytau^2/(16*Pi^2),ab->yb^2/(16*Pi^2),
  at->yt^2/(16*Pi^2)};


(* ::Subsection::Closed:: *)
(*rges*)


(* Coupled ODEs with yb on to try to agree with the mr library*)
rge = {
  D[g1[t], t]   == 1/2 betaG1[g1[t], g2[t], 0, yt[t], yb[t], 0, lam[t]],
  D[g2[t], t]   == 1/2 betaG2[g1[t], g2[t], 0, yt[t], yb[t], 0, lam[t]],
  D[mp[t], t]   == 1/2 mp[t] * betam2p[g1[t], g2[t], 0, yt[t], yb[t], 0, lam[t]],
  D[yt[t], t]   == ((16 * Pi^2) / (2 * yt[t])) * betaYt[g1[t], g2[t], 0, yt[t], yb[t], 0, lam[t]],
  D[yb[t], t]   == ((16 * Pi^2) / (2 * yb[t])) * betaYb[g1[t], g2[t], 0, yt[t], yb[t], 0, lam[t]],
  D[lam[t], t]  == (16 * Pi^2) * betaLamp[g1[t], g2[t], 0, yt[t], yb[t], 0, lam[t]]
};

(* Coupled ODEs with yb off*)
rgeyboff = {
  D[g1[t], t]   == 1/2 betaG1[g1[t], g2[t], 0, yt[t], 0, 0, lam[t]],
  D[g2[t], t]   == 1/2 betaG2[g1[t], g2[t], 0, yt[t], 0, 0, lam[t]],
  D[mp[t], t]   == 1/2 mp[t] * betam2p[g1[t], g2[t], 0, yt[t], 0, 0, lam[t]],
  D[yt[t], t]   == ((16 * Pi^2) / (2 * yt[t])) * betaYt[g1[t], g2[t], 0, yt[t], 0, 0, lam[t]],
  D[yb[t], t]   == ((16 * Pi^2) / (2 * yb[t])) * betaYb[g1[t], g2[t], 0, yt[t], 0, 0, lam[t]],
  D[lam[t], t]  == (16 * Pi^2) * betaLamp[g1[t], g2[t], 0, yt[t], 0, 0, lam[t]]
};


(* ::Subsection::Closed:: *)
(*initial conditions*)


Clear[initConds, g1, g2, g3, yt, yb, lam, mp]
muToT[mu_] := Log[mu^2];
tInit = muToT[40];

(* Initial Conditions from mr code current output at mu = 173.2 GeV *)
mric={0.3567520579,0.6553823386,0.9643671365,0.0237155024,0.1619818780,131.55};

(*my initial cond for mu=40*)
anaic={anaft[[1,1,3]],anaft[[1,1,2]],anaft[[1,1,6]],0,anaft[[1,1,5]],0};

(*Kai initial cond for mu=40*)
kaiic={kaift[[1,1,3]],kaift[[1,1,2]],kaift[[1,1,6]],0,kaift[[1,1,5]],0};

initCondsana = {
  g1[tInit] ==(* kaiic[[1]]*)anaic[[1]],
  g2[tInit] ==(*kaiic[[2]] *)anaic[[2]],   
  yt[tInit] ==(*kaiic[[3]]*)anaic[[3]],   
  yb[tInit] ==(*kaiic[[4]]*)anaic[[4]],   
  lam[tInit] ==(*kaiic[[5]]*)anaic[[5]],  
  mp[tInit] ==(*kaiic[[6]]*)anaic[[6]]
};

initCondskai = {
  g1[tInit] == kaiic[[1]],
  g2[tInit] ==kaiic[[2]] ,   
  yt[tInit] == kaiic[[3]],   
  yb[tInit] == kaiic[[4]],   
  lam[tInit] == kaiic[[5]],  
  mp[tInit] == kaiic[[6]]
};

initCondsmr = {
  g1[tInit] ==mric[[1]],
  g2[tInit] ==mric[[2]],   
  yt[tInit] ==mric[[3]],   
  yb[tInit] ==mric[[4]],   
  lam[tInit] ==mric[[5]],  
  mp[tInit] ==mric[[6]]
};


(* ::Subsection::Closed:: *)
(*solution*)


(* Solve from mu = 40 GeV to mu = 160 GeV *)
sol = NDSolve[
  Join[rge, initCondsmr],
  {g1, g2, mp, yt, yb, lam},
  {t, muToT[40], muToT[160]}
];


(* ::Subsection::Closed:: *)
(*tests*)


tablerge = Table[
  {mu, g2[muToT[mu]]/. sol[[1]], 
   g1[muToT[mu]]/. sol[[1]](*, yb[muToT[mu]]/.sol[[1]]*), 
   lam[muToT[mu]]/. sol[[1]], yt[muToT[mu]]/. sol[[1]](*, 
   mp[muToT[mu]]/. sol[[1]]*)}, {mu, 40, 160, 10}];

trunmath=TableForm[tablerge, 
 TableHeadings -> {None, {"mu", "g2", "g1", "lam", "yt"}}]


(*kaift;
anaft*)


(*Export["/home/ana/Documents/GitHub/Vud_EW_NLO/numerics/rge_reproduce_kai.pdf", trunmath]*)


(*Export["/home/ana/Documents/GitHub/Vud_EW_NLO/numerics/ana_results_from_mr.pdf", anaft]*)


(* ::Section::Closed:: *)
(*running fundamental parameters Arason*)


(* ::Subsection::Closed:: *)
(*beta function fundamental parameters Arason*)


(*Clear[Bg1,Bg2,Blambda,Byt] (*g1 is U(1)_y coupling constant*)

Bg1 = (41/10) g1[t]^3;

Bg2 = (-19/6) g2[t]^3;

Byt = yt[t](9/2*yt[t]^2-(17/20*g1[t]^2 + 9/4*g2[t]^2));

Blambda = 12*lam[t]^2-lam[t]*(9/5 g1[t]^2+9 g2[t]^2)+
9/4*(3/25 g1[t]^4 +2/5 g1[t]^2*g2[t]^2+g2[t]^4)+
12*lam[t]*yt[t]^2-12*yt[t]^4;*)


(*Blambda/.g1[t]->g1/.g2[t]->g2/.yt[t]->yt/.lam[t]->lam//Expand*)


(*(12*lambdaHat^2 - (9/10)*a1*lambdaHat - (9/2)*a2*lambdaHat + 
   (27/400)*a1^2 + (9/40)*a1*a2 + (9/16)*a2^2 - 3*at^2 - 3*ab^2 - atau^2 + 
   6*at*lambdaHat + 6*ab*lambdaHat + 2*atau*lambdaHat)(16 Pi^2)^2 /. {
   a1->(*(5/3)**)g1^2/(16*Pi^2),a2->g2^2/(16*Pi^2),atau->ytau^2/(16*Pi^2),ab->yb^2/(16*Pi^2),at->yt^2/(16*Pi^2),
   lambdaHat->lam/(16*Pi^2)}/.yb->0/.ytau->0/.g1->Sqrt[2]g1/.
   g2->Sqrt[2]g2/.yt->Sqrt[2]yt//Expand*)


(* ::Subsection::Closed:: *)
(*rges arason*)


(*rgearason = {
  D[g1[t], t]   == 1/(16 Pi^2)* Bg1,
  D[g2[t], t]   == 1/(16 Pi^2)* Bg2,
  D[yt[t], t]   == 1/(16 Pi^2)* Byt,
  D[lam[t], t]  == 1/(16 Pi^2)* Blambda
};*)


(* ::Subsection::Closed:: *)
(*initial condition*)


(*Clear[initConds]
muToTarason[mu_] := Log[mu];
tInit=muToTarason[40];

initConds = {
  g1[tInit] ==(* kaiic[[1]]*)kaiic[[1]] Sqrt[5/3],
  g2[tInit] ==(*kaiic[[2]] *)kaiic[[2]],   
  yt[tInit] ==(*kaiic[[3]]*)kaiic[[3]],   
  lam[tInit] ==(*kaiic[[5]]*)kaiic[[5]]  
};
*)


(* ::Subsection::Closed:: *)
(*solution*)


(*(* Solve from mu = 40 GeV to mu = 160 GeV *)
sol = NDSolve[

  Join[rgearason, initConds],
  {g1, g2, yt, lam},
  {t, muToTarason[40], muToTarason[160]}
];*)


(* ::Subsection::Closed:: *)
(*tests*)


(*resarason = Table[
  {mu, g2[muToTarason[mu]]/. sol[[1]], 
   g1[muToTarason[mu]] Sqrt[3/5]/. sol[[1]], 
   lam[muToTarason[mu]]/. sol[[1]],
   yt[muToTarason[mu]]/. sol[[1]]}, {mu, 40, 160, 10}];

arasontable=TableForm[resarason, 
 TableHeadings -> {None, {"mu", "g2", "g1", "lam", "yt"}}]*)


(*kaift;
anaft*)
