(* ::Package:: *)

(* ::Section:: *)
(*set up directory*)


(*to run locally*)
(*direc=SetDirectory["/home/ana/Documents/GitHub/Vud_EW_NLO"];*)


(*to run in cluster*)
direc=SetDirectory["/z/users/acpereira/Vud_EW_NLO"];


(* ::Section::Closed:: *)
(*Load  packages*)


(*Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;*)


Get[direc <> "/code/QFTSymbols.m"]


Get[direc <> "/code/MassiveTadpole.m"]


Get[direc <> "/code/notation.m"]


Get[direc <> "/code/fermionline.m"]


Get[direc <> "/code/tensred.m"]


Get[direc <> "/code/integration_2loop.m"]


(* ::Section::Closed:: *)
(*load files*)


(*list with diagrams to compare with Martin*)
(*diag22 = Get[direc <> "/Results/2loop/amplitmuonmasters.m"]/.mass[x_]:>x;*)


(*list with all diagrams for muon 2 loop (with tadpoles) in terms of masters*)
diag22 = Get[direc <> "/Results/2loop/amplitmuonmasterswithtad.m"]/.mass[x_]:>x;


Length[diag22]


(*separate each element of the list into a seperate file - this inly needs to be runned once and then commented*)


(*Table[
  Export[
    direc <> "/Results/2loop/ampmastersmuonall/diag" <> ToString[i] <> ".m",
    diag22[[i]]
  ],
  {i, Length[diag22]}
];*)


(* ::Section:: *)
(*analytical*)


(*Clear[sorttad]
sorttad/: sorttad[{0,MW,0},{1,1,1}]:=sorttad[{0,0,MW},{1,1,1}]
sorttad/: sorttad[{0,MZ,0},{1,1,1}]:=sorttad[{0,0,MZ},{1,1,1}]
sorttad/: sorttad[{MW,0,0},{1,1,1}]:=sorttad[{0,0,MW},{1,1,1}]
analyticTad[{MW,0,MZ},{1,0,1}]:=analyticTad[{0,MW,MZ},{0,1,1}]
analyticTad[{MW,0,MZ},{1,1,1}]:=analyticTad[{0,MW,MZ},{1,1,1}]
analyticTad[{MW,MZ,0},{1,1,0}]:=analyticTad[{0,MW,MZ},{0,1,1}]
analyticTad[{MW,MZ,0},{1,1,1}]:=analyticTad[{0,MW,MZ},{1,1,1}]*)


(*Clear[sorttad]
sorttad[{a_,0,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;
sorttad[{0,a_,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;
sorttad[{a_,0,b_},{1,0,1}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,0,b_},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,b_,0},{1,1,0}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,b_,0},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);*)


Clear[sorttad]
sorttad[{a_,0,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;
sorttad[{0,a_,0},{1,1,1}]:=sorttad[{0,0,a},{1,1,1}]/;a=!=0;
sorttad[{a_,0,b_},{1,0,1}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,0,b_},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,b_,0},{1,1,0}]:=sorttad[{0,a,b},{0,1,1}]/;(a=!=0&&b=!=0);
sorttad[{a_,b_,0},{1,1,1}]:=sorttad[{0,a,b},{1,1,1}]/;(a=!=0&&b=!=0);
sorttad[{0,MZ,MW},{0,1,1}]:=sorttad[{0,MW,MZ},{0,1,1}];
sorttad[{0,MZ,MW},{1,1,1}]:=sorttad[{0,MW,MZ},{1,1,1}];
sorttad[{0,MW,MH},{1,1,1}]:=sorttad[{0,MH,MW},{1,1,1}];
sorttad[{0,MZ,MH},{1,1,1}]:=sorttad[{0,MH,MZ},{1,1,1}];
sorttad[{MW,MZ,MW},{1,1,1}]:=sorttad[{MW,MW,MZ},{1,1,1}];
sorttad[{MZ,MZ,MW},{1,1,1}]:=sorttad[{MW,MZ,MZ},{1,1,1}];
sorttad[{MZ,MW,MH},{1,1,1}]:=sorttad[{MW,MZ,MH},{1,1,1}];

sorttad[{0,a_ MZ,MW},{0,1,1}]:=sorttad[{0,MW,a MZ},{0,1,1}];
sorttad[{0, MZ, a_ MW},{0,1,1}]:=sorttad[{0,a MW, MZ},{0,1,1}];

sorttad[{0,MZ,MW},{1,1,1}]:=sorttad[{0,MW,MZ},{1,1,1}];
sorttad[{0,a_ MZ,MW},{1,1,1}]:=sorttad[{0,MW,a MZ},{1,1,1}];
sorttad[{0,MZ,a_ MW},{1,1,1}]:=sorttad[{0,a MW,MZ},{1,1,1}];
sorttad[{0,a_ MZ,b_ MW},{1,1,1}]:=sorttad[{0,b MW,a MZ},{1,1,1}];

sorttad[{0,MW,MH},{1,1,1}]:=sorttad[{0,MH,MW},{1,1,1}];
sorttad[{0,a_ MW,MH},{1,1,1}]:=sorttad[{0,MH,a MW},{1,1,1}];

sorttad[{0,MZ,MH},{1,1,1}]:=sorttad[{0,MH,MZ},{1,1,1}];
sorttad[{0,a_ MZ,MH},{1,1,1}]:=sorttad[{0,MH,a MZ},{1,1,1}];

sorttad[{MW,MZ,MW},{1,1,1}]:=sorttad[{MW,MW,MZ},{1,1,1}];
sorttad[{a_ MW,MZ,MW},{1,1,1}]:=sorttad[{a MW,MW,MZ},{1,1,1}];
sorttad[{MW,MZ,a_ MW},{1,1,1}]:=sorttad[{a MW,MW,MZ},{1,1,1}];
sorttad[{a_ MW,MZ,b_ MW},{1,1,1}]:=sorttad[{a MW,b MW,MZ},{1,1,1}];
sorttad[{MW,a_ MZ,MW},{1,1,1}]:=sorttad[{MW,MW,a MZ},{1,1,1}];
sorttad[{a_ MW,b_ MZ,MW},{1,1,1}]:=sorttad[{a MW,MW,b MZ},{1,1,1}];
sorttad[{MW,b_ MZ,a_ MW},{1,1,1}]:=sorttad[{a MW,MW,b MZ},{1,1,1}];

sorttad[{MZ,MZ,MW},{1,1,1}]:=sorttad[{MW,MZ,MZ},{1,1,1}];
sorttad[{a_ MZ,MZ,MW},{1,1,1}]:=sorttad[{MW,MZ,a MZ},{1,1,1}];
sorttad[{MZ,a_ MZ,MW},{1,1,1}]:=sorttad[{MW,MZ,a MZ},{1,1,1}];
sorttad[{a_ MZ,b_ MZ,MW},{1,1,1}]:=sorttad[{MW,a MZ,b MZ},{1,1,1}];
sorttad[{MZ,a_ MZ,b_ MW},{1,1,1}]:=sorttad[{b MW,MZ,a MZ},{1,1,1}];
sorttad[{a_ MZ,MZ,b_ MW},{1,1,1}]:=sorttad[{b MW,MZ,a MZ},{1,1,1}];
sorttad[{a_ MZ,b_ MZ,c_ MW},{1,1,1}]:=sorttad[{c MW,a MZ,b MZ},{1,1,1}];

sorttad[{MZ,MW,MH},{1,1,1}]:=sorttad[{MW,MZ,MH},{1,1,1}];
sorttad[{MZ,a_ MW,MH},{1,1,1}]:=sorttad[{a MW,MZ,MH},{1,1,1}];
sorttad[{b_ MZ,MW,MH},{1,1,1}]:=sorttad[{MW,b MZ,MH},{1,1,1}];


(*diag22=diag21/.mass[x_]:>x/.d->4-2e/.mtad->sorttad;*)


rule1 = Union@Cases[diag22, _mtad, Infinity]/.mtad->sorttad;


rules2 = Normal[Series[rule1/.sorttad->analyticTad,{e,0,0}]];


rule = Dispatch[Thread[rule1 -> rules2]];


(*run this to comparison with Martin*)
(*Do[
  diagram = Get[ direc <> "/Results/2loop/ampmasters/diag" <> ToString[i] <> ".m"];
  diagram1 = diagram/.d->4-2e/.mtad->sorttad/.rule;
  res = Normal[Series[diagram1, {e, 0, 0}]];
  res1 = res//Collect[#, {Op, Ev3, Ev5, 1/e, Log[__]}]&;
  Export[direc <> "/Results/2loop/analytampsmuon/diag" <> ToString[i] <> ".m",res1],
  {i, 1,20}
];*)


defoperm2[x_]:=Series[x/.{Ev3->Ev3 + (16 - a1mu e)Op}/.{Ev5->Ev5 + (256-b1mu e)Op + cmu1 Ev3},{e,0,0}]
defoperq2[x_]:=Series[x/.{Ev3->Ev3 + (16 - a1q e)Op}/.{Ev5->Ev5 + (256-b1q e)Op + cq1 Ev3},{e,0,0}]


Do[
  diagram = Get[ direc <> "/Results/2loop/ampmastersmuonall/diag" <> ToString[i] <> ".m"];
  diagram1 = diagram/.d->4-2e/.mtad->sorttad/.rule;
  res = Normal[Series[diagram1, {e, 0, 0}]];
  (*res1 = res//Collect[#, {Op, Ev3, Ev5, 1/e, Log[__]}]&;*)
  res1 = defoperm2[res]//Collect[#, {Op, Ev3, Ev5, 1/e, Log[__]}]&;
  Export[direc <> "/Results/2loop/analytampsmuonall/diag" <> ToString[i] <> ".m",res1],
  {i,1,Length[diag22]}
];


(*ana=Series[#, {e, 0, 0}] & /@ diag23;*)


(* ::Section::Closed:: *)
(*comparison martin diags feynman (*not running*)*)


(*ana1 = Table[Get[ "/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/res2lmuoncompmart/diag" <> ToString[i] <> ".m"],{i,401}];*)


(*martin=Get["/home/ana/Desktop/mydiagrams/sres2munutonue.m"]/.g[1,31]->Op/.g[3,31]->Ev3/.g[5,31]->Ev5;*)


(*martinemail = Get["/home/ana/Downloads/sres2munutonue (1).m"]/.g[1,31]->Op/.g[3,31]->Ev3/.g[5,31]->Ev5;*)


(*check=Table[Simplify[martin[[i]]-martinemail[[i]]],{i, 401}];*)


(*martin1 = Series[martin/.d->4 - 2 e, {e,0,0}]/.CW->cw/.SW->sw/.EL->el//Normal;*)


(*dif=Table[Simplify[ana1[[i]]-martin1[[i]]],{i,401}]/.NF[__]:>1;*)


(*Coefficient[ana1[[169]]/.NF[__]:>1,1/e]
Coefficient[martin1[[169]],1/e]
%/%%//Simplify*)


(*Table[If[dif[[i]]===0, 0,i],{i, Length[dif]}]*)


(*Coefficient[ana1[[183]],1/e^2]
Coefficient[martin1[[183]],1/e^2]
%/%%*)


(*diag21[[183]]/.mass[x_]:>x//Simplify
Coefficient[%, Ev3]
Union@Cases[%, _mtad, Infinity]
%/.mtad->sorttad
%/.sorttad->analyticTad//TableForm*)


(*Union@Cases[diag21[[10]]/.mass[x_]:>x, _mtad, Infinity]
%/.mtad->sorttad//TableForm
*)


(* ::Section::Closed:: *)
(*comparison with 2 loop muon all diagrams*)


(*ana = Get["/home/ana/Desktop/code m/ampmuon_ana_fg_withtad.m"];*)


(*ana1 = Table[Get[direc <> "/Results/2loop/analytampsmuonall/diag" <> ToString[i] <> ".m"],{i,1,Length[diag22]}]/.
sw->SW/.cw->CW/.el->EL;*)


(*defoperm2[x_]:=Series[x/.{Ev3->Ev3 + (16 - a1mu e)Op}/.{Ev5->Ev5 + (256-b1mu e)Op + cmu1 Ev3},{e,0,0}]
defoperq2[x_]:=Series[x/.{Ev3->Ev3 + (16 - a1q e)Op}/.{Ev5->Ev5 + (256-b1q e)Op + cq1 Ev3},{e,0,0}]*)


(*diferenceev5=Table[(*Print[i];*)Simplify[Coefficient[ana[[i]],Ev5]-Coefficient[defoperm2[ana1[[i]]],Ev5]], {i,1,Length[diag22]}];*)


(*diferenceev3=Table[(*Print[i];*)Simplify[Coefficient[ana[[i]],Ev3]-Coefficient[defoperm2[ana1[[i]]],Ev3]], {i,223}]*)


(*diferenceop=Table[Simplify[Coefficient[ana[[i]],Op]-Coefficient[defoperm2[ana1[[i]]],Op]], {i,Length[diag22]}]*)
