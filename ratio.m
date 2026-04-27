(* ::Package:: *)

(* ::Section::Closed:: *)
(*functions*)


tomass[x_]:=x/.sw->Sqrt[1-cw^2]/.cw->MW/MZ


(* ::Section::Closed:: *)
(*rules*)


(* ::Subsection::Closed:: *)
(*1 loop sm*)


(*rules*)
Clear[Psimp]
Clear[CTsimp]
Clear[Prules]
Clear[CTrules]
Clear[Ppeng]
Clear[CTpeng]
(*the tree level is the same in both decays*)
Prules/: Prules[SL,Op,0]:=Prules[L,Op,0]; (*setting vud to 1*)

(*ASSUMPTIONS 1 LOOP*)
(*the renormalized self energies and CT at 1 loop of the SL cancel the L in ratio*)
Prules/: Prules[SL, s, Op, 1]:=Prules[L, s, Op, 1]-CTrules[SL,s,Op,1]+CTrules[L,s,Op,1]

(*penguins at 1 loop are separated with a heavy and a light loop as well as ct*)
Ppeng/: Ppeng[d_, p, Op, 1]:=Ppeng[d, p, Op, 1,1,0] + Ppeng[d, p, Op, 1,0,1] ;
CTpeng/: CTpeng[d_, p, Op, 1]:=CTpeng[d, p, Op, 1,0,1,0,0]+ CTpeng[d, p, Op, 1,0,0,0,1];

(*renormalized penguins at 1loop w/ heavy loop summed to the field renormalization cancel in the ratio*)
Prules/: Prules[SL,p,Op,1,1,0] :=
(-CTrules[SL, p, Op, 1,0,1,0,0] +
CTrules[L, p, Op, 1,0,1,0,0] +
Prules[L,p,Op,1,1,0]+ LSZ[L,p,Op,1]-LSZ[SL,p,Op,1] +z[SL,extpart,1,1] - z[L,extpart,1,1]);

(*FRen/: FRen[SL,p,Op,1]:=-{Prules[SL, p, Op, 1,1,0] + Prules[SL, p, Op, 1,0,1] }-{CTrules[SL, p, Op, 1,1,0] + CTrules[SL, p, Op, 1,0,1] }+
{Prules[L, p, Op, 1,1,0] + Prules[L, p, Op, 1,0,1] }+{CTrules[L, p, Op, 1,1,0] + CTrules[L, p, Op, 1,0,1] }+FRen[L,p,Op,1]*)

(*renormalized penguins at 1loop w/ light loop cancel in the ratio*)
Prules/: Prules[SL,p,Op,1,0,1] :=Prules[L,p,Op,1,0,1]-CTrules[SL, p, Op, 1,0,0,0,1]+
CTrules[L, p, Op, 1,0,0,0,1];



(* ::Subsection::Closed:: *)
(*2  loop sm*)


(*ASSUMPTIONS 2 LOOP*)
(*self energies at 2 loop only project on the physical as well as their counterterms*)
Psimp/: Psimp[d_, s, Ev3, 2]:=0;
Psimp/: Psimp[d_, s, Ev5, 2]:=0;
CTsimp/: CTsimp[d_, s, Ev3, 2]:=0;
CTsimp/: CTsimp[d_, s, Ev5, 2]:=0;
(*penguins at 2 loop only project on the physical as well as their counterterms*)
Psimp/: Psimp[d_, p, Ev3, 2]:=0;
Psimp/: Psimp[d_, p, Ev5, 2]:=0;
CTsimp/: CTsimp[d_, p, Ev3, 2]:=0;
CTsimp/: CTsimp[d_, p, Ev5, 2]:=0;

(*the renormalized self energies of the SL cancel the L*)
Prules/: Prules[SL, s, Op, 2] := Prules[L, s, Op, 2];
CTrules/: CTrules[SL, s, Op, 2] := CTrules[L, s, Op, 2];

(*penguins at 2 loop are separated with a heavy and a light loop as well as ct*)
Ppeng/: Ppeng[d_, p, Op, 2]:=
Ppeng[d, p, Op, 2,2,0]  +
Ppeng[d, p, Op, 2,0,2]  +
Ppeng[d, p, Op, 2,1,1]+
(*mixing between peng and self energy*)
Ppeng[d,p,Op,1,1,0] (*prop*) Ppeng[d,s,Op,1]+
Ppeng[d,p,Op,1,0,1] (*prop*) Ppeng[d,s,Op,1];

Ppeng/: Ppeng[d_, p, Op, 2,1,1] := Ppeng[d, p, Op, 1,1,0] (*prop*) Ppeng[d, p, Op, 1,0,1];

CTpeng/: CTpeng[d_, p, Op, 2]:=
CTpeng[d, p, Op, 2,0,2,0,0]+CTpeng[d, p, Op, 2,0,0,0,2]+
CTpeng[d, p, Op, 2,1,1,0,0]+CTpeng[d, p, Op, 2,1,0,0,1]+
CTpeng[d, p, Op, 2,0,1,1,0]+CTpeng[d, p, Op, 2,0,0,1,1]+
CTpeng[d, p, Op, 2,0,1,0,1]+
(*mixing between penguin and self energy*)
Ppeng[d, p, Op, 1, 1,0] (*prop*) CTpeng[d, s, Op, 1]+
Ppeng[d, p, Op, 1, 0,1] (*prop*) CTpeng[d, s, Op, 1]+
Ppeng[d, s, Op, 1] (*prop*) CTpeng[d, p, Op, 1,0,1,0,0]+
Ppeng[d, s, Op, 1] (*prop*) CTpeng[d, p, Op, 1,0,0,0,1]+
CTpeng[d, s, Op, 1] (*prop*) CTpeng[d, p, Op, 1,0,1,0,0]+
CTpeng[d, s, Op, 1] (*prop*) CTpeng[d, p, Op, 1,0,0,0,1];

CTpeng/: CTpeng[d_, p, Op, 2,1,0,0,1]:=Ppeng[d, p, Op, 1, 1,0](*prop*) CTpeng[d, p, Op, 1,0,0,0,1];
CTpeng/: CTpeng[d_, p, Op, 2,0,1,1,0]:=Ppeng[d, p, Op, 1, 0,1](*prop*) CTpeng[d, p, Op, 1,0,1,0,0];
CTpeng/: CTpeng[d_, p, Op, 2,0,1,0,1]:=CTpeng[d, p, Op, 1,0,1,0,0](*prop*) CTpeng[d, p, Op, 1,0,0,0,1];

(*renormalized penguins at 2loop w/ heavy loop summed to the finite renormalization cancel in the ratio*)
Prules/: Prules[SL,p,Op,2,2,0]:=-(CTrules[SL,p,Op,2,1,1,0,0]+CTrules[SL,p,Op,2,0,2,0,0]+LSZ[SL,p,Op,2])+
Prules[L,p,Op,2,2,0]+CTrules[L,p,Op,2,1,1,0,0]+CTrules[L,p,Op,2,0,2,0,0]+LSZ[L,p,Op,2]+
(z[SL,extpart,2,1]+z[SL,extpart,2,2])-
(z[L,extpart,2,1]+z[L,extpart,2,2]);

(*renormalized penguins at 2loop w/ light loop cancel in the ratio*)
Prules/: Prules[SL,p,Op,2,0,2]:=-(CTrules[SL,p,Op,2,0,0,0,2]+CTrules[SL,p,Op,2,0,0,1,1])+
Prules[L,p,Op,2,0,2]+CTrules[L,p,Op,2,0,0,0,2]+CTrules[L,p,Op,2,0,0,1,1];


(* ::Subsection::Closed:: *)
(*EFT*)


Clear[Qeft]
Qeft/: Qeft[SL,op_,0]:=Qeft[L,op,0]


Clear[Zeft]
Zeft/: Zeft[d_,1,a_, b_, c_]:=Zeft[d,op,a,b,c];
Zeft/: Zeft[d_,2,a_, b_, c_]:=Zeft[d,ev3,a,b,c];
Zeft/: Zeft[d_,3,a_, b_, c_]:=Zeft[d,ev5,a,b,c];
Zeft/: Zeft[d_,a_,1, b_, c_]:=Zeft[d,a,op,b,c];
Zeft/: Zeft[d_,a_,2,b_, c_]:=Zeft[d,a,ev3,b,c];
Zeft/: Zeft[d_,a_,3,b_, c_]:=Zeft[d,a,ev5,b,c];
Zeft/: Zeft[d_,op,b_, c_,0]:=0;
Zeft/: Zeft[d_,ev3,ev3, c_,0]:=0;
Zeft/: Zeft[d_,ev3,ev5, c_,0]:=0;
Zeft/: Zeft[d_,ev5,b_, c_,0]:=0;


(* ::Subsection::Closed:: *)
(*logs*)


logs[x_]:=x/.{ln[a_* b_]:>ln[a]+ln[b]}/.{ln[c_/d_]:>ln[c]-ln[d]}/.{ln[1/e_]:>-ln[e]}/.ln[1/(MW^2 \[Xi]z)]->-2ln[MW]-ln[\[Xi]z]/.
{ln[mu^2]->2 ln[mu]}/.{ln[1/MW^2]->-2 ln[MW]}/.ln[Sqrt[v_]]:>1/2 ln[v];
logsinv[x_]:=x/.{ln[a_]+ln[b_]:>ln[a* b]}/.{ln[c_]-ln[d_]:>ln[c/d]};
rulesxyz[fun_]:=fun/.{MT->Sqrt[x]*MW}/.{MH->Sqrt[y]*MW}/.{MZ->Sqrt[z]*MW}


(* ::Subsection::Closed:: *)
(*alpha correction*)


(*-2/3 - 16/9 ln[mt^2/mw^2] - 47/9 ln[\[Mu]^2/mw^2]*)


alphcor1 = -2/3 - 14 ln[mu/MW] + 32/27 nc ln[mu/MT] + e (-7 Pi^2/12 + 4 Pi^2/81 nc + 32/27 nc (ln[mu/MT])^2 - 4/3 ln[mu/MW] - 14 (ln[mu/MW])^2);
alphcor2 = deltaalpha2;
alphacorr1L[x_]:=x + alphcor1 tree
alphacorr2L[x_]:=x + 2 alphcor1 1Lcorr + alphcor2 tree


Series[logs@rulesxyz@logs@alphcor1/.nc->3,{e,0,0}]//Normal


Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/results/treelevelmuon.m"]/.mw->MW/.mz->MZ;


(* ::Section:: *)
(*load  packages  and  notation*)


(* ::Subsection::Closed:: *)
(*definition of operators and series*)


charges={Qe->-1,Qmu->-1,Qtau->-1, Qd->-1/3, Qu->2/3};


defoperm1[x_]:=Series[x/.{Ev3->Ev3 + (16 - a1mu e)Op}/.{Ev5->Ev5 + (256-b1mu e)Op + cmu1 Ev3},{e,0,1}]
defoperq1[x_]:=Series[x/.{Ev3->Ev3 + (16 - a1q e)Op}/.{Ev5->Ev5 + (256-b1q e)Op + cq1 Ev3},{e,0,1}]


defoperm2[x_]:=Series[x/.{Ev3->Ev3 + (16 - a1mu e)Op}/.{Ev5->Ev5 + (256-b1mu e)Op + cmu1 Ev3},{e,0,0}]
defoperq2[x_]:=Series[x/.{Ev3->Ev3 + (16 - a1q e)Op}/.{Ev5->Ev5 + (256-b1q e)Op + cq1 Ev3},{e,0,0}]


(* ::Subsection::Closed:: *)
(*tree*)


tree1=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/results/treelevelmuon.m"]/.
e->EL/.mw->MW/.mz->MZ;
tree=tree1/.Op->1;
rulesxyz@logs@%;


(* ::Subsection::Closed:: *)
(*1  loop*)


(*new not, with ep corr, 1 loop*)


boxmep1op = -defoperm1[Get["/home/ana/Desktop/bm1.m"]/.el->EL/.Log->ln]/.Ev3->0//Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


boxqep1op = defoperq1[Get["/home/ana/Desktop/bq1.m"]/.el->EL/.Log->ln]/.Ev3->0//Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


boxmep1ev = -defoperm1[Get["/home/ana/Desktop/bm1.m"]/.el->EL/.Log->ln]/.Op->0//Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


boxqep1ev = defoperq1[Get["/home/ana/Desktop/bq1.m"]/.el->EL/.Log->ln]/.Op->0//Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


(*self energy coming from quark decay*)
selfqep1op = defoperq1[Get["/home/ana/Desktop/sq1.m"]/.el->EL(*/.\[Xi]A->1/.\[Xi]w->1/.\[Xi]z->1*)/.Log->ln]/.Ev3->0//
Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


(*self energy coming from muon decay*)
selfmep1op = -defoperm1[Get["/home/ana/Desktop/sm1.m"]/.el->EL(*/.\[Xi]A->1/.\[Xi]w->1/.\[Xi]z->1*)/.Log->ln]/.Ev3->0//
Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


(*peng SL decay with loop in quark line*)
pengqqep1op = defoperq1[Get["/home/ana/Desktop/pqq1.m"]/.el->EL(*/.\[Xi]A->1/.\[Xi]w->1/.\[Xi]z->1*)/.Log->ln]/.Ev3->0//
Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


(*peng L decay with loop in muon line*)
pengmqep1op = -defoperm1[Get["/home/ana/Desktop/pmq1.m"]/.el->EL(*/.\[Xi]A->1/.\[Xi]w->1/.\[Xi]z->1*)/.Log->ln]/.Ev3->0//
Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


(*peng SL decay with loop in electron line*)
pengqeep1op = defoperq1[Get["/home/ana/Desktop/pqe1.m"]/.el->EL(*/.\[Xi]A->1/.\[Xi]w->1/.\[Xi]z->1*)/.Log->ln]/.Ev3->0//
Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


(*peng L decay with loop in electron line*)
pengmep1op = -defoperm1[Get["/home/ana/Desktop/pme1.m"]/.el->EL(*/.\[Xi]A->1/.\[Xi]w->1/.\[Xi]z->1*)/.Log->ln]/.Ev3->0//
Collect[#, {Op,Ev3,ln[__],1/e}, Simplify]&;


ResDir1 = "/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/results";


(*SM divergent part of the renormalization constant of the electron (and muon)*)
dzelesm=Get[ResDir1<>"/deltazmuonelectron.m"]/\[Alpha] Pi(*/.{sw->Sqrt[1-cw^2]/.cw->mw/mz}*)/.\[Epsilon]->e//Simplify;


(*divergent part of the renormalization constant of the neutrinos*)
dzneutsm=Get[ResDir1<>"/deltazneutrinos.m"]/\[Alpha] Pi(*/.{sw->Sqrt[1-cw^2]/.cw->mw/mz}*)/.\[Epsilon]->e//Simplify;


count=Get[ResDir1<>"/counterterm.m"]/\[Alpha] Pi/.Op->1/.e->EL/.\[Epsilon]->e/.EL->1/.mw->MW/.mz->MZ/.mH->MH/.mt->MT/.
{flagdzele->1,flagdze->1,flagdzneut->1,flagdzmw->1,flagdzsw->1}//Simplify;


(*lszmuon=Get[ResDir1<>"/Zmuonfin.m"]/.mw->MW/.mz->MZ(*/.ln->Log*);*)


lszmuon = (-3*mw^2)/(mw^2 - mz^2) - (3*mz^4)/(2*mw^2*(mw^2 - mz^2)) + 
 (2*mz^2*\[Xi]w)/(mw^2 - mz^2) + (2*mw^2*\[Xi]z)/(mw^2 - mz^2) - 
 (2*mz^2*\[Xi]z)/(mw^2 - mz^2) + (mz^4*\[Xi]z)/(mw^2*(mw^2 - mz^2)) + 
 (2*mz^2*\[Xi]w*ln[\[Mu]^2/(mw^2*\[Xi]w)])/(mw^2 - mz^2) + 
 (2*mw^2*\[Xi]z*ln[\[Mu]^2/(mz^2*\[Xi]z)])/(mw^2 - mz^2) - 
 (2*mz^2*\[Xi]z*ln[\[Mu]^2/(mz^2*\[Xi]z)])/(mw^2 - mz^2) + 
 (mz^4*\[Xi]z*ln[\[Mu]^2/(mz^2*\[Xi]z)])/(mw^2*(mw^2 - mz^2))/.mw->MW/.mz->MZ;


(*lszquark=Get[ResDir1<>"/Zquarkfin.m"]/.mw->MW/.mz->MZ(*/.ln->Log*);*)


lszquark=(-7*mw^2)/(3*(mw^2 - mz^2)) - (4*mz^2)/(3*(mw^2 - mz^2)) - 
 (5*mz^4)/(6*mw^2*(mw^2 - mz^2)) + (2*mz^2*\[Xi]w)/(mw^2 - mz^2) + 
 (14*mw^2*\[Xi]z)/(9*(mw^2 - mz^2)) - (10*mz^2*\[Xi]z)/(9*(mw^2 - mz^2)) + 
 (5*mz^4*\[Xi]z)/(9*mw^2*(mw^2 - mz^2)) + 
 (2*mz^2*\[Xi]w*ln[\[Mu]^2/(mw^2*\[Xi]w)])/(mw^2 - mz^2) + 
 (14*mw^2*\[Xi]z*ln[\[Mu]^2/(mz^2*\[Xi]z)])/(9*(mw^2 - mz^2)) - 
 (10*mz^2*\[Xi]z*ln[\[Mu]^2/(mz^2*\[Xi]z)])/(9*(mw^2 - mz^2)) + 
 (5*mz^4*\[Xi]z*ln[\[Mu]^2/(mz^2*\[Xi]z)])/(9*mw^2*(mw^2 - mz^2))/.mw->MW/.mz->MZ;


(*1 loop counterterms joined*)


ctm = defoperm1[Get[ResDir1<>"/counterterm.m"]/.e->EL/.\[Epsilon]->e/.mH->MH/.mz->MZ/.mw->MW/.mt->MT/.
{flagdzele->1,flagdze->1,flagdzneut->1,flagdzmw->1,flagdzsw->1}]//Simplify;


ctmtot=Total@ctm;


ctq = defoperq1[Get[ResDir1<>"/counterterm_quark.m"]/.e->EL/.\[Epsilon]->e/.mH->MH/.mz->MZ/.mw->MW/.mt->MT]//Simplify;


ctqtot=Total@ctq;


(*1 loop counterterms separated*)


ctmql=ctm[[1]];
ctmel=ctm[[2]];
ctmsl=ctm[[3]];


ctqql=ctq[[1]];
ctqel=ctq[[2]];
ctqsl=ctq[[3]];


(* ::Subsection::Closed:: *)
(*2  loop*)


(*wf2 = Get["/home/ana/Desktop/wf2.m"];*)


am=Get["/home/ana/Desktop/code m/ampmuon_ana_fg_withtad.m"]/.flag[__]:>1/.CW->cw/.SW->sw/.Log->ln;
(*tadam = MapAt[Flag[tadm] # &, am, 223 ;; 686];*)
ampm = Total[%];


ap=Get["/home/ana/Desktop/code m/amppion_ana_fg_withtad.m"]/.flag[__]:>1/.CW->cw/.SW->sw/.Log->ln;
(*tadap = MapAt[Flag[tadp] # &, ap, 301 ;; 886];*)
ampp = Total[%]/.nc->1;


(*Want to change this result with new computation from git but for
Ev3 should be ok because poles agree in feynman gauge*)


ct2lm= Get["/home/ana/Documents/GitHub/Vud_EW_NLO/Results/Renormalisation/2loop/muon/feyn/ctm2l.m"](*/.sw->Sqrt[1-cw^2]/.cw->MW/MZ*);


ct2lq=Get["/home/ana/Documents/GitHub/Vud_EW_NLO/Results/Renormalisation/2loop/muon/feyn/ctq2l.m"](*/.sw->Sqrt[1-cw^2]/.cw->MW/MZ*);


(* ::Subsection::Closed:: *)
(*eft*)


Clear[prefact]
(*prefact = EL^2/(4 Pi)^2 tree;*)
prefact = 1;


eftm = Get["/home/ana/Desktop/2 loop EFT/muon_2_loop_EFT/totmuon.m"]/(2 Pi)^4/.SW->sw/.CW->cw/.Log->ln;


eftq = Get["/home/ana/Desktop/2 loop EFT/muon_2_loop_EFT/totquark.m"]/(2 Pi)^8/.SW->sw/.CW->cw/.Log->ln;


zeft2mooe2 = 0;


zeft2mooe1 = 1/e (-a1mu/9 - b1mu/32 + 67/9) ;


zeft2mev3ev5e1 = 1/e 1/4;


zeft2qev3ev5e1 = 1/e (-1/12);


zeftmev3ev3e1 = 1/e (cmu1/4 - 8);


zeftqev3ev3e1 = 1/e (-cq1/12 + 2/3);


zeft2qooe2 = 1/e^2 (-62/9) ;


zeft2qooe1 = 1/e ( 13 a1q/27 - b1q/288 - 95/27);


zeft2qoe5e2 = 1/e^2 (1/288)  ;


zeft2qoe5e1 = 1/e ( -7/192);


zeft2moe5e2 = 1/e^2 (1/32) ;


zeft2moe5e1 = 1/e ( -5/64) ;


zeft2qoe3e1 = 1/e (-7 cq1/192 + a1q/144 + 421/648);


zeft2qoe3e2 = 1/e^2 (cq1/288 - 17/54);


zeft2moe3e1 = 1/e (-5 cmu1/64 + a1mu/16 + 419/216);


zeft2moe3e2 = 1/e^2 (cmu1/32 + 1/9);


zeft1e1o0 = (24 + 8 a1mu - 1/4 b1mu);


(*renormalization constants for external particles*)


dzd2 = 3/4/e + \[Xi]A^2 /162/e^2;


dzu2 = 28/9/e + 8 \[Xi]A^2 /81/e^2;


dze2= 89/(12 e)+\[Xi]A^2/(2 e^2);


dzext2muon = dze2;


dzext2q = (dzd2+dzu2+dze2)/2;


dzext2muonep1=Coefficient[dzext2muon, e, -1]/e
dzext2muonep2=Coefficient[dzext2muon, e, -2]/e^2


dzext2quarkep1=Coefficient[dzext2q, e, -1]/e
dzext2quarkep2=Coefficient[dzext2q, e, -2]/e^2


(* ::Section:: *)
(*plug  in  amplitudes  and  counterterms*)


alphaorder=2;


(*tree0=tree/.EL->1*)


plugZ[x_]:=x/.{
Zeft[L,op,op,1,1]:>0,
z[L,extpart,1,1]:>flagextpartl (-\[Xi]A/e),
z[L,extpart,2,1]:>flagext2 dzext2muonep1 ,
z[L,extpart,2,2]:>flagext2 dzext2muonep2 ,
z[SL,extpart,2,1]:>flagext2sl dzext2quarkep1 ,
z[SL,extpart,2,2]:>flagext2sl dzext2quarkep2 ,
LSZ[L,p,Op,1]:>flaglsz tree 1/2 lszmuon/EL^2 /.\[Mu]->mu,
z[SL,extpart,1,1]:> flag[extpart] flagextpartsl (-7/9 \[Xi]A/e),
Zeft[SL,op,op,1,1]:> (-2/e) flag[eft],
LSZ[SL,p,Op,1]:>flaglsz tree 1/2 lszquark/EL^2  /.\[Mu]->mu,
Zeft[d_,ev3,op,1,1]:>0(*,
Zeft[d_,ev3,op,2,1]:>0,
Zeft[d_,ev3,op,2,2]:>0*)}/.
{
Zeft[SL,op,ev3,1,1]:> (-1/12/e)  ,
Zeft[L,op,ev3,1,1]:> flageftl1oe 1/4/e  ,
Zeft[SL,ev3,ev3,1,1]:>  zeftqev3ev3e1 ,
Zeft[L,ev3,ev3,1,1]:> flageftl1ee zeftmev3ev3e1 
}/.
{
Zeft[L,op,op,2,2]:>flageft2 zeft2mooe2 ,
Zeft[L,op,op,2,1]:>flageft2 zeft2mooe1 ,
Zeft[SL,op,op,2,2]:>flageft2 zeft2qooe2 ,
Zeft[SL,op,op,2,1]:>flageft2 zeft2qooe1
}/.
{
Zeft[L,ev3,ev5,1,1]:>flageft1 zeft2mev3ev5e1,
Zeft[SL,ev3,ev5,1,1]:>flageft1 zeft2qev3ev5e1,
Zeft[L,op,ev5,2,2]:>flageft2 zeft2moe5e2 ,
Zeft[L,op,ev5,2,1]:>flageft2 zeft2moe5e1 ,
Zeft[SL,op,ev5,2,2]:>flageft2 zeft2qoe5e2 ,
Zeft[SL,op,ev5,2,1]:>flageft2 zeft2qoe5e1 ,
Zeft[SL,op,ev3,2,1]:>flageft2 zeft2qoe3e1 ,
Zeft[SL,op,ev3,2,2]:>flageft2 zeft2qoe3e2 ,
Zeft[L,op,ev3,2,1]:>flageft2 zeft2moe3e1 ,
Zeft[L,op,ev3,2,2]:>flageft2 zeft2moe3e2
}/.
{
Zeft[L,ev3,op,1,0]-> zeft1e1o0
}


prefamp = 1/(EL^2/(4 Pi))FLAG


plugamp[x_]:=x/.{
P[L,s,Op,1]->selfmep1op prefamp^2 flagself,
P[L,p,Op,1,1,0]:> pengmqep1op prefamp^2 flagpeng,
P[L,p,Op,1,0,1]:>  pengmep1op prefamp^2 flagpeng,
P[L,b,Op,1]:>boxmep1op prefamp^2,
P[L,b,Ev3,1]:> boxmep1ev prefamp^2,
P[SL,b,Ev3,1]:>boxqep1ev prefamp^2,
P[L,b,Op,2]:> Coefficient[ampm,Op]Op  prefamp^3 (4 Pi) flagamp,
P[SL,s,Op,1]-> selfqep1op prefamp^2,
P[SL,p,Op,1,1,0]:>pengqqep1op prefamp^2,
P[SL,p,Op,1,0,1]:>pengqeep1op prefamp^2,
P[SL,b,Op,1]:> boxqep1op prefamp^2,
P[SL,b,Op,2]:>Coefficient[ampp,Op]Op  prefamp^3 (4 Pi),
P[SL,b,Ev5,2]:>  Coefficient[ampp,Ev5]Ev5  prefamp^3 (4 Pi) , 
P[L,b,Ev5,2]:>  Coefficient[ampm,Ev5]Ev5  prefamp^3 (4 Pi),
P[SL,b,Ev3,2]:>  Coefficient[ampp,Ev3]Ev3 prefamp^3 (4 Pi) ,
P[L,b,Ev3,2]:>  flagsmev2 Coefficient[ampm,Ev3]Ev3 prefamp^3 (4 Pi)
}


plugct[x_]:=x/.{
CT[L,s,Op,1]:> ctmsl prefamp^2 flagself,
CT[L,p,Op,1,0,0,0,1]:>ctmel prefamp^2 flagpeng,
CT[L,p,Op,1,0,1,0,0]:> ctmql prefamp^2 flagpeng,
CT[L,b,Op,2]:> Coefficient[ct2lm,Op] Op prefamp^3 (4 Pi) flagctt,
CT[SL,s,Op,1]:> ctqsl prefamp^2 flagself,
CT[SL,p,Op,1,0,0,0,1]:>ctqel prefamp^2 flagpeng,
CT[SL,p,Op,1,0,1,0,0]:> ctqql prefamp^2 flagpeng,
CT[SL,b,Op,2]:> Coefficient[ct2lq,Op] Op prefamp^3 (4 Pi),
CT[L,b,Ev3,2]:> flagct Coefficient[ct2lm,Ev3] Ev3 prefamp^3 (4 Pi),
CT[SL,b,Ev3,2]:> flagsct Coefficient[ct2lq,Ev3] Ev3 prefamp^3 (4 Pi) 
}


(* ::Section::Closed:: *)
(*amplitudes in SM*)


(*decay type*)
amp0=Table[P[decay[d],diagram[i],Op[j],loop[k]],{d,1,2}]/.decay[1]->L/.decay[2]->SL;


(*boxes, penguins and self energies*)
amp=Flatten@Table[amp0,{i,1,3}]/.diagram[1]->p/.diagram[2]->b/.diagram[3]->s;


(*operator type*)
amp1=Flatten@Table[amp,{j,1,3}]/.{Op[1]->Op, Op[2]->Ev3, Op[3]->Ev5};


(*2 loop order for amplitude - expand up to alpha*)
amp2=DeleteDuplicates[Flatten@Table[amp1,{k,1,alphaorder}]]/.loop[w_]:>w;


(*some simplifications*)
Clear[Paux]
(*at 1 loop do not have the 5 gammas operator*)
Paux/: Paux[decay_, t_, Ev5, 1]:=0
(*at 1 loop, peng and self only have the physical operator*)
Paux/: Paux[decay_, p, Ev3, 1]:=0
Paux/: Paux[decay_, s, Ev3, 1]:=0


amp2simp = Union@Cases[amp2/.P->Paux/.Paux->P, _P, Infinity];


(*separate the Leptonic and SLept decays*)


ampL=Cases[amp2simp,P[L,__],Infinity];


ampSL=Cases[amp2simp,P[SL,__],Infinity];


(* ::Section::Closed:: *)
(*counterterms SM*)


(*decay type*)
ct0=Table[CT[decay[d],diagram[i],Op[j],loop[k]],{d,1,2}]/.decay[1]->L/.decay[2]->SL;


(*boxes, penguins and self energies*)
ct=Flatten@Table[ct0,{i,1,3}]/.diagram[1]->p/.diagram[2]->b/.diagram[3]->s;


(*operator type*)
ct1=Flatten@Table[ct,{j,1,3}]/.{Op[1]->Op, Op[2]->Ev3, Op[3]->Ev5};


(*2 loop order for amplitude - expand up to alpha*)
ct2=DeleteDuplicates[Flatten@Table[ct1,{k,1,alphaorder(*-1*)}]]/.loop[w_]:>w;


(*some simplifications*)
Clear[CTaux]
(*at 1 loop all ct are penguin or self energy type*)
CTaux/: CTaux[decay_, b, Op_, 1]:=0
(*at 1 loop all ct only have Op*)
CTaux/: CTaux[decay_, t_, Ev3, 1]:=0
CTaux/: CTaux[decay_, t_, Ev5, 1]:=0
(*the 2 loop CT do not have EV5*)
CTaux/: CTaux[decay_, t_, Ev5, 2]:=0


ct2simp = Union@Cases[ct2/.CT->CTaux/.CTaux->CT, _CT, Infinity];


(*separate the Leptonic and SLept decays*)


ctL=Cases[ct2simp,CT[L,__],Infinity];


ctSL=Cases[ct2simp,CT[SL,__],Infinity];


(* ::Section::Closed:: *)
(*join  all SM part, define amplitude and counterterm*)


(*expand in alpha - a*)


ampexpL = Total@Table[
  If[MatchQ[ampL[[i]], P[__]], 
    With[{order = ampL[[i, 4]], oper=ampL[[i,3]]}, 
      alpha6f^order/(4 Pi)^order (*Sum[1/eps^var,{var,0,order}]*) ampL[[i]]*P[L, oper, 0]
    ], 
    ampL[[i]]
  ], 
  {i, Length[ampL]}
];


ampexpSL = Total@Table[
  If[MatchQ[ampSL[[i]], P[__]], 
    With[{order = ampSL[[i, 4]], oper=ampSL[[i,3]]}, 
      alpha6f^order/(4 Pi)^order (*Sum[1/eps^var,{var,0,order}]*) ampSL[[i]]*P[SL, oper, 0]
    ], 
    ampSL[[i]]
  ], 
  {i, Length[ampSL]}
] ;


ctexpL = Total@Table[
  If[MatchQ[ctL[[i]], CT[__]], 
    With[{order = ctL[[i, 4]](*+1*), oper=ctL[[i,3]]}, 
      alpha6f^order/(4 Pi)^order (*Sum[1/eps^var,{var,1,order}]*) ctL[[i]]*P[L, oper, 0]
    ], 
    ctL[[i]]
  ], 
  {i, Length[ctL]}
];


ctexpSL = Total@Table[
  If[MatchQ[ctSL[[i]], CT[__]], 
    With[{order = ctSL[[i, 4]](*+1*), oper=ctSL[[i,3]]}, 
      alpha6f^order/(4 Pi)^order(* Sum[1/eps^var,{var,1,order}]*) ctSL[[i]]*P[SL, oper, 0]
    ], 
    ctSL[[i]]
  ], 
  {i, Length[ctSL]}
];


(*fullSL =( P[SL, Op ,0] + ampexpSL + ctexpSL + 
alpha6f/(4 Pi) LSZ[SL,p,Op,1] P[SL, Op ,0] + 
alpha6f^2/(4 Pi)^2 ((LSZ[SL,p,Op,2])P[SL, Op ,0]+
LSZ[SL,p,Op,1](P[SL,b,Op,1]+P[SL,p,Op,1]+P[SL,s,Op,1]+P[SL,b,Ev3,1]+ CT[SL,p,Op,1]+CT[SL,s,Op,1])P[SL, Op ,0] ))*) alpha6f;


(*add 1 loop things + ct 1 loop things times LSZ factor correspondent to each diagram at 1 loop*)


(*(*run this for matching of EV3*)
fullL =( P[L, Op ,0] + ampexpL + ctexpL + 
alpha6f/(4 Pi) LSZ[L,p,Op,1] P[L, Op ,0] + 
alpha6f^2/(4 Pi)^2((LSZ[L,p,Op,2])P[L, Op ,0]+
LSZ[L,p,Op,1](P[L,b,Ev3,1]/tree0) P[L, Ev3 ,0] )) alpha6f;*)


(*run this for matching*)
fullL =( P[L, Op ,0] + ampexpL + ctexpL + 
alpha6f/(4 Pi) LSZ[L,p,Op,1] P[L, Op ,0] + 
alpha6f^2/(4 Pi)^2(LSZ[L,p,Op,2]P[L, Op ,0]+
LSZ[L,p,Op,1]( P[L,b,Op,1]/tree0 P[L, Op ,0] + P[L,b,Ev3,1]/tree0 P[L, Ev3 ,0]) )) alpha6f;


(*(*run this for matching of EV3*)
fullSL =( P[SL, Op ,0] + ampexpSL + ctexpSL + 
alpha6f/(4 Pi) LSZ[SL,p,Op,1] P[SL, Op ,0] + 
alpha6f^2/(4 Pi)^2((LSZ[SL,p,Op,2])P[SL, Op ,0]+
LSZ[SL,p,Op,1](P[SL,b,Ev3,1]/tree0) P[SL, Ev3 ,0] )) alpha6f;*)


(*run this for matching*)
fullSL =( P[SL, Op ,0] + ampexpSL + ctexpSL + 
alpha6f/(4 Pi) LSZ[SL,p,Op,1] P[SL, Op ,0] + 
alpha6f^2/(4 Pi)^2(LSZ[SL,p,Op,2]P[SL, Op ,0]+
LSZ[SL,p,Op,1]( P[SL,b,Op,1]/tree0 P[SL, Op ,0] + P[SL,b,Ev3,1]/tree0 P[SL, Ev3 ,0]) )) alpha6f;

(*
fullSL = alpha6f^2 (tree(Op) + 1loop(Op,Ev1) + CT(1loop) + LSZ1lxtree(Op)) +
         alpha6f^3 ( 2loop(Op,Ev1,Ev2) + CT(2loop,box) + LSZ2lxtree(Op) + LSZ1l*1loop(box))
*)


Series[Sqrt[1 + x alpha + y alpha^2]Sqrt[1 + xu alpha + yu alpha^2],{alpha,0,2}]/.x->xu/.y->yu//Normal


Clear[alpha6to5]
alpha6to5[x_]:=x/.{alpha6f->alpha5f(1 + deltaalpha1 alpha5f/(4 Pi) + deltaalpha2 alpha5f^2/(4 Pi)^2)};


fullSL5f=alpha6to5[fullSL];


fullL5f=alpha6to5[fullL];


(*P[decay, operator, 0] are the tree level amplitudes in the full theory.
These tree level amplitudes are of order alpha. 
I am taking this alpha out at this point so that I can implement here the alpha correction
from 6 to 5 flavour.*)


(* ::Section::Closed:: *)
(* EFT*)


(* ::Subsection::Closed:: *)
(*functions for the eft*)


Clear[CiQi];
CiQi[i_,j_,order_]:=c[d,j, b]*Z[d,j,i,order]*Q[d,i, a]


Clear[Zaux];
Zaux[d_,j_,i_, order_]:=deltaaux[i,j] + 
Sum[(alpha5f/(4 Pi))^k ( Sum[(*eps^(-varexp)*) Zcc[d,j, i,k,varexp], {varexp,0,k}]) ,{k,order} ]


Clear[Qaux];
Qaux[d_,op_,order_]:=  Sum[(alpha5f/(4 Pi))^k (*Sum[1/eps^var,{var,0,k}]*) Q[d,op, k],{k,0,order}]


Clear[Qproj]
Qproj[d_, x_, order_]:=Qproj[d, x, order,Op]+Qproj[d, x, order,Ev3] + 
Qproj[d, 1, order,Ev5]/; (order=!=0)
Qproj[d_, op_, 1, Ev5]:=0;


Clear[Cexp];
Cexp[d_,i_,order_]:= Sum[(alpha5f/(4 Pi))^k (c[d,i, k]),{k,0,order}]


Clear[deltaaux];
deltaaux/: deltaaux[i_, j_]:=1 /; i==j
deltaaux/: deltaaux[i_, j_]:=0 /; i=!=j


Clear[cutorder];
cutorder[exp_, alpha_, ord_]:= Series[exp, {alpha, 0, ord}]


Clear[Zpsi];
Zpsi[d_,psi_, order_]:=1 + 
Sum[(alpha5f/(4 Pi))^k Sum[(*eps^(-varexp)*) z[d,psi,k,varexp], {varexp,k}] ,{k,order} ]


(* ::Subsection::Closed:: *)
(*Expand  the  renormalization  constants*)


t1 = Total@Table[CiQi[j,i,order],{j,3}];


t2 = Total@Table[t1, {i,3}]/.Z[d_,a_, b_, c_]:>Zaux[d,a, b, alphaorder](*/.
Zcc[a1_, a2_, a3_, a4_,0]:>0*);
(*last step setz finite Z to zero*)


(* ::Subsection::Closed:: *)
(*Expand  Wilson  coefficients*)


t2a = t2/.c[d_,a_, b_]:>Cexp[d,a, alphaorder];


(* ::Subsection::Closed:: *)
(*Expand  the  matrix  elements*)


t3 = t2a/.Q[d_,i_,a_]:>Qaux[d,i,alphaorder];


t3a = t3/.Q->Qproj/.{Qproj[d_, 1, a_, a1_]:>Qproj[d, Op, a, a1], 
Qproj[d1_, 2, b_, b1_]:>Qproj[d1, Ev3, b, b1], 
Qproj[d2_, 3, c_, c1_]:>Qproj[d2, Ev5, c, c1]}/.{
Qproj[d3_,1,0]:>Qproj[d3,Op,0],
Qproj[d3_,2,0]:>Qproj[d3,Ev3,0],
Qproj[d3_,3,0]:>Qproj[d3,Ev5,0]};


t4 = cutorder[Expand[t3a], alpha5f,alphaorder]//Collect[#, {alpha5f, 1/eps}, Simplify]&;


(* ::Subsection::Closed:: *)
(*renormalization  of  the  external  particles*)


t6=cutorder[Zpsi[d,extpart, 2]t4,alpha5f,alphaorder]//Collect[#, {1/eps, alpha5f^n_}, Simplify]&;


(* ::Subsection::Closed:: *)
(*separate  the  decays*)


(*decay type*)
ampeftSL = t6/.d->SL;


ampeftL = t6/.d->L;


(* ::Subsection::Closed:: *)
(*ratio eft*)


eftl=Series[alpha5f ampeftL, {alpha5f, 0,3}]//Collect[#, {alpha5f, 1/eps}, Simplify]&;


eftsl=Series[alpha5f ampeftSL, {alpha5f, 0,3}]//Collect[#, {alpha5f, 1/eps}, Simplify]&;


ratioeft = Series[eftsl/eftl, {alpha5f,0,1}]/.Q[d_, op_, 0]:>Q[d,0]/.Q[d_,0]->Q[0]/.c[d_, 2,_]:>0//
Collect[#, {alpha5f, 1/eps}, Simplify]&;


(* ::Section::Closed:: *)
(*matching equation*)


SML=cutorder[fullL5f(*/.P->Prules/.CT->CTrules*), alpha5f,3]//Collect[#, {alpha},Simplify]&;


EFTL=cutorder[eftl, alpha5f, 3]//Collect[#, {alpha5f, 1/eps}, Simplify]&;


SMSL=cutorder[fullSL5f(*/.P->Prules/.CT->CTrules*), alpha5f,3]//Collect[#, {alpha},Simplify]&;


EFTSL=cutorder[eftsl, alpha5f, 3]//
Collect[#, {alpha5f, 1/eps}, Expand]&;


(* ::Section::Closed:: *)
(*SL  matching tree level and 1 loop*)


(* ::Subsection::Closed:: *)
(*SL  matching  at  order  0  projected  into  the  physical*)


Coefficient[EFTSL,alpha5f]/.Qproj[d_,Ev3,0]:>0/.Qproj[d_,Ev5,0]:>0
Coefficient[SMSL,alpha5f]

csl10=Solve[%==%%,c[SL,1,0]]


(* ::Subsection::Closed:: *)
(*SL  matching  at  order  0  projected  into  the  evanescent 3 gamma*)


Coefficient[EFTSL,alpha5f]/.Qproj[d_,Op,0]:>0/.Qproj[d_,Ev5,0]:>0
Coefficient[SMSL,alpha5f]/.P[d_,Op,0]:>0;

csl20=Solve[%==%%,c[SL,2,0]]


(* ::Subsection::Closed:: *)
(*SL  matching   at   order   0   projected   into   the   evanescent  5  gamma*)


Coefficient[EFTSL,alpha5f]/.Qproj[d_,Op,0]:>0/.Qproj[d_,Ev3,0]:>0
Coefficient[SMSL,alpha5f]/.P[d_,Op,0]:>0;

csl30=Solve[%==%%,c[SL,3,0]]


EFTSL/.alpha5f->0/.Qproj[d_,Op,0]:>0/.Qproj[d_,Ev3,0]:>0
SMSL/.alpha->0/.P[d_,Op,0]:>0

csl30=Solve[%==%%,c[SL,3,0]]


(* ::Subsection::Closed:: *)
(*SL matching  at  order  alpha   projected  into  the  physical*)


Coefficient[EFTSL,alpha5f^2]/.Qproj[d_,Ev3,0]:>0/.Qproj[d_,Ev5,0]:>0/.Qproj[d_,op_,1,Ev3]:>0(*/.c[L,2,0]:>0/.c[L,3,0]:>0*);
Coefficient[SMSL,alpha5f^2]/.P[d_,t_,Ev3,a_]:>0/.P[d_,t_,Ev5,a_]:>0
(*also alpha correction*)
cSl11a=Solve[%==%%,c[SL,1,1]]/.Qproj[d_,op_,1,p_]:>0/.P[SL,Op,0]->1/.Qproj[SL, Op,0]->1//
Collect[#, {c[SL,1,0]}, Simplify]&;
(*add separation of penguins*)
cSl11=%/.P->Ppeng/.CT->CTpeng/.Ppeng->P/.CTpeng->CT/.c[SL|L,2|3,0]:>0

%[[1,1,2]]/.c[SL,1,0]->1/(2 MW^2 (1-MW^2/MZ^2))/.Zcc->Zeft;
plugZ@plugamp@plugct@%;
%/.\[Alpha]->EL^2/(4 Pi)(*/.nc->3*);

Series[%/.deltaalpha1->delta1 tree /.Log->ln, {e,0,0}]/.
Op->1/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu/.flag[__]:>1//Collect[#, {Op,1/e}, Simplify]&;

logs@rulesxyz@%(*/.nc->3*)//Collect[#, {EL,Op, 1/e,ln[__]}, Simplify]&;

Collect[% /.ln[1/Sqrt[x]]->-1/2 ln[x], {Op, EL, ln[__], c[__], 1/Pi^2}, Together];

CSL11=% /.flaga->flagc/.flagc->1/.flag->1/.flaglsz->1/.FLAG->1/.delta1->delta1/EL^2//Collect[#, {ln[__]},Simplify]&;

CSL11a=Series[logs@rulesxyz[%/.delta1->alphcor1/.nc->3]/.ln[1/Sqrt[x]]->-1/2 ln[x],{e,0,0}]//
Collect[#, {ln[__]},Together]&;


CSL11a/.flagpeng->1/.flagself->1/.flagextpartsl->1//Collect[#, {ln[__]}, Simplify]&
%//Collect[#, {ln[__]}, ExpandNumerator]&


(*cancelation of the penguins*)
(*flag[SL]( pengqqep1op+ pengqeep1op +1/2  lszquark \[Alpha]/4/Pi tree + ctqtot)-
flag[L] (pengmqep1op+pengmep1op +1/2  lszmuon \[Alpha]/4/Pi tree +ctmtot)-
 EL^2/(4 Pi) tree (-7/9\[Xi]A/4/Pi/e)+ EL^2/(4 Pi) tree (-\[Xi]A/4/Pi/e) /.
\[Alpha]->EL^2/(4 Pi)/.nc->3/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu/.flag[__]:>1;
Series[%, {e,0,0}]/.Op->1;
logs@rulesxyz@%//Collect[#, {flag[__], 1/e}, Simplify]&*)


(* ::Subsection::Closed:: *)
(*SL matching  at  order  alpha   projected  into  the  evanescent 3 gamma*)


Coefficient[EFTSL,alpha5f^2]/.Qproj[d_,Op,0]:>0/.Qproj[d_,Ev5,0]:>0/.
Qproj[d_,op_,1,Op_]:>0/.c[SL,2,0]:>0/.c[SL,3,0]:>0/.c[SL,3,1]:>0;
Coefficient[SMSL,alpha5f^2]/.P[d_,t_,Op,___]:>0/.CT[d_, t_, Op, ___]:>0/.
LSZ[d_,p_,Op, ___]:>0;
Simplify[Solve[%==%%,c[SL,2,1]]/.Zcc->Zeft/.P[SL,Op,0]->0/.P[SL,Ev3,0]:>1/.Qproj[SL,Ev3,0]:>1]
cSl21=%[[1,1,2]]
%/.c[SL,1,0]->1/(2 MW^2 (1-MW^2/MZ^2));
plugZ@plugamp@plugct@%/.flageftl1->1/.Ev3->1//Collect[#, {e,ln[__]},Simplify]&;
(*Coefficient[%, 1/e]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ;*)

%/.Log->ln/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu//Collect[#, {Op,1/e}, Simplify]&;
(*logs@rulesxyz@*)%/.nc->3/.flageftl1oe->1//Collect[#, {EL,Op, 1/e,ln[__]}, Simplify]&;
Collect[% /.ln[1/Sqrt[x]]->-1/2 ln[x], {Op, EL, c[__],e}, Together];
CSL21= Series[%,{e,0,0}]/.FLAG->1//Collect[#,{Op, EL, ln[__], c[__], 1/Pi^2},Simplify]&


logs@rulesxyz@CSL21//Simplify//Expand
CL21
%/%%//Simplify


(* ::Subsection::Closed:: *)
(*SL matching   at   order   alpha    projected   into   the   evanescent  5  gamma*)


Coefficient[EFTSL,alpha5f^2]/.Qproj[d_,Op,0]:>0/.Qproj[d_,Ev3,0]:>0/.Qproj[d_,op_,1,Op_]:>0;
Coefficient[SMSL,alpha5f^2]/.P[SL,Op,0]->0/.P[d_,t_,Op,___]:>0/.P[d_,t_,Ev3,___]:>0/.CT[d_, t_, Op, ___]:>0/.LSZ[d_,p_,Op, ___]:>0;
csl31=Solve[%==%%,c[SL,3,1]]/.c[SL,2,0]:>0/.c[SL,3,0]:>0/.Zcc[d_,1,3,1,1]:>0/.Zcc->Zeft


(* ::Section::Closed:: *)
(*SL  matching 2 loop*)


(* ::Subsection::Closed:: *)
(*SL matching   at   order   alpha^2    projected   into   the   physical*)


Coefficient[EFTSL,alpha5f^3]/.Qproj[d_,Ev5,0]:>0/.Qproj[d_,Op,0]:>1/.
Qproj[d_,op_,1,op2_]:>0/.Qproj[d_,op_,2,op2_]:>0/.c[SL,2,0]:>0/.c[SL,3,0]:>0/.c[SL,3,1]:>0/.
Qproj[L_,Ev3,0]:>0;

Coefficient[SMSL,alpha5f^3]/.P->Psimp/.CT->CTsimp/.Psimp->P/.CTsimp->CT/.
P[d_,t_,Ev5,a_]:>0/.P[d_,t_,Ev3,a_]:>0/.P[d_, Op,0]:>1/.P[L_,Ev3,0]:>0/.
CT[L_, p|s, Op, 1|2]:>0/.P[L_, s|p, Op, 1|2]:>0;

Solve[%==%%,c[SL,1,2]]/.Zcc->Zeft
%/.c[SL,1,1]->CSL11 flagcl11/.c[SL,2,1]->CSL21 flagcl21/.c[SL,1,0]->1/(2 MW^2 (1-MW^2/MZ^2));
%[[1,1,2]];
resopS=plugZ@plugamp@plugct@%/.Log->ln/.\[Xi]A->1/.\[Xi]z->1/.\[Xi]w->1/.NF[{ME}]->1/.NF[{MM}]->1/.NF[{ML}]->1/.NF[__]->nc/.nc->3/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu/.\[Alpha]->EL^2/(4 Pi)/.flagself->1/.flagpeng->1//Collect[#, {1/e}]&;

res1opS=Series[logs@rulesxyz[%/.delta1->alphcor1/.deltaalpha1->alphcor1]/.nc->3/.ln[1/Sqrt[x]]->-1/2 ln[x],{e,0,-1}]/.Op->1;


flagtozero@tomass@Coefficient[res1opS, e, -2]/.flagextpartsl->1//Simplify


flagtozero@tomass@Coefficient[res1opS, e, -1]/.flagextpartsl->1//Collect[#, {ln[__]}, Simplify]&


(* ::Subsection::Closed:: *)
(*SL matching    at    order    alpha^2     projected    into    the    ev3*)


Coefficient[EFTSL,alpha5f^3]/.Qproj[d_,Ev5,0]:>0/.Qproj[d_,Op,0]:>0/.
Qproj[d_,op_,1,op2_]:>0/.Qproj[d_,op_,2,op2_]:>0/.c[SL,2,0]:>0/.c[SL,3,0]:>0/.c[SL,3,1]:>0/.
Qproj[L_,Ev3,0]:>1;

Coefficient[SMSL,alpha5f^3]/.P->Psimp/.CT->CTsimp/.CTsimp->CT/.Psimp->P/.
P[d_,t_,Ev5,a_]:>0/.P[d_,t_,Op,a_]:>0/.P[d_, Op,0]:>0/.P[L_,Ev3,0]:>1;

Solve[%==%%,c[SL,2,2]]/.Zcc->Zeft
%/.c[SL,1,1]->CSL11 /.c[SL,2,1]->CSL21 flagcsl21 /.c[SL,1,0]->1/(2 MW^2 (1-MW^2/MZ^2))/.tree0->1/(2 MW^2 (1-MW^2/MZ^2));
%[[1,1,2]];
res=plugZ@plugamp@plugct@%/.Log->ln/.Ev3->1/.\[Xi]A->1/.\[Xi]w->1/.\[Xi]z->1/.NF[{ME}]->1/.NF[{MM}]->1/.NF[{ML}]->1/.NF[__]->nc/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu//Collect[#, {1/e}]&;

resS1=Series[logs@rulesxyz[%/.delta1->alphcor1/.deltaalpha1->alphcor1/.nc->3]/.ln[1/Sqrt[x]]->-1/2 ln[x],{e,0,-1}];


Union@Cases[res, NF[__], Infinity]


flagtozero[x_] := x/.flageft2->1/.flagcl11->1/.flageft2->1/.flageftl1oe->1/.flagct->1/.flagsmev2->1/.
flagcl21 ->1/.Flag[__]:>1/.flg[__]:>1/.flageftl1ee->1/.FLAG->1/.flagw[__]:>1/.flag[__]:>1/.flagextpartl->1/.
flagsct->1/.flageft2->1/.flagsct->1/.flagself->1/.flagpeng->1/.flagcsl21->1/.flagextpartsl->1/.flaglsz->1


flagtozero[Coefficient[resS1, e, -2]]


flagtozero[Coefficient[resS1, e, -1]]//Simplify


resmsl=Get["/home/ana/Desktop/comp/finalresults/ChatE1qu2loopBox.m"][[1]]/.rat->ratio/.pi->Pi/.DTPHI1->Phi/.Li2->convLi2/.
Mt->MT/.Log->ln;


(* ::Subsection::Closed:: *)
(*SL matching    at    order    alpha^2     projected    into    the    ev5*)


Coefficient[EFTSL,alpha5f^3]/.Qproj[d_,Ev3,0]:>0/.Qproj[d_,Op,0]:>0/.Qproj[d_,op_,1,op2_]:>0/.
Qproj[d_,op_,2,op2_]:>0/.c[SL,2,0]:>0/.c[SL,3,0|1]:>0;

Coefficient[SMSL,alpha5f^3]/.P->Psimp/.CT->CTsimp/.CTsimp->CT/.Psimp->P/.
P[d_,t_,Ev3,a_]:>0/.P[d_,t_,Op,a_]:>0/.P[d_, Op,0]:>0/.CT[d_,t_,Ev3,a_]:>0;

Solve[%==%%,c[SL,3,2]]/.P->Ppeng/.CT->CTpeng/.Ppeng->Prules/.CTpeng->CTrules/.
CTrules->CT/.Prules->P/.Zcc[d_,1,3,1,1]:>0/.Zcc->Zeft/.P[d_,Ev5,0]:>1/.Qproj[d_,Ev5,0]:>1(*projection*)//Simplify;

cslev5=%[[1,1,2]]

%/.c[SL,2,1]->CSL21/.c[SL,1,0]->1/(2 MW^2 (1-MW^2/MZ^2));

cqev5=plugZ@plugamp@plugct@%/.Ev5->1/.Ev3->1;

Coefficient[cqev5, 1/e^2]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.flag[__]:>1/.flagsl5->1/.flageft2->1/.FLAG->1//Simplify
logs@rulesxyz[Coefficient[cqev5, 1/e]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ]/.flag[__]:>1/.flagsl5->1/.flageft1->1/.flageft2->1/.FLAG->1//Simplify

cqev5fin=logs@rulesxyz[cqev5/.flageft2->1/.flageft1->1/.flageft1->1/.
sw->Sqrt[1-cw^2]/.cw->MW/MZ]/.flag[__]:>1/.flagsl5->1/.FLAG->1//Collect[#, {EL^n_, ln[__],1/e}, Simplify]&


(*Export["/home/ana/Desktop/comp/E2q.m",cqev5fin]*)


(* ::Section::Closed:: *)
(*L  matching tree level and 1 loop*)


(* ::Subsection::Closed:: *)
(*L  matching  at  order  0  projected  into  the  physical*)


Coefficient[EFTL,alpha5f]/.Qproj[d_,Ev3,0]:>0/.Qproj[d_,Ev5,0]:>0;
Coefficient[SML,alpha5f]

cl10=Solve[%==%%,c[L,1,0]]


(* ::Subsection::Closed:: *)
(*L  matching  at  order  0  projected  into  the  evanescent 3 gamma*)


Coefficient[EFTL,alpha5f]/.Qproj[d_,Op,0]:>0/.Qproj[d_,Ev5,0]:>0;
Coefficient[SML,alpha5f]/.P[L,Op,0]->0

cl20=Solve[%==%%,c[L,2,0]]


(* ::Subsection::Closed:: *)
(*L   matching   at   order   0   projected   into   the   evanescent  5  gamma*)


Coefficient[EFTL,alpha5f]/.Qproj[d_,Ev3,0]:>0/.Qproj[d_,Op,0]:>0;
Coefficient[SML,alpha5f]/.P[L,Op,0]->0

cl30=Solve[%==%%,c[L,3,0]]


(* ::Subsection::Closed:: *)
(*L  matching  at  order  alpha   projected  into  the  physical*)


Coefficient[SML,alpha5f^2]


Coefficient[EFTL,alpha5f^2]/.Qproj[d_,Ev3,0]:>0/.Qproj[d_,Ev5,0]:>0/.Qproj[d_,op_,1,Ev3]:>0(*/.c[L,2,0]:>0/.c[L,3,0]:>0*);
Coefficient[SML,alpha5f^2]/.P[d_,t_,Ev3,a_]:>0/.P[d_,t_,Ev5,a_]:>0;
(*also alpha correction*)
cl11a=Solve[%==%%,c[L,1,1]]/.Qproj[d_,op_,1,p_]:>0/.P[L,Op,0]->1/.Qproj[L,Op,0]->1//
Collect[#, {c[L,1,0]}, Simplify]&;
(*add separation of penguins*)
cl11=%/.P->Ppeng/.CT->CTpeng/.Ppeng->P/.CTpeng->CT/.c[SL|L,2|3,0]:>0

%[[1,1,2]]/.Qproj[L,Op,0]->1(*/(prefact)*)/.c[L,1,0]->1/(2 MW^2 (1-MW^2/MZ^2))/.Zcc->Zeft;
plugZ@plugamp@plugct@%/.flagextpartl->1(*/.flagpeng->1/.flagself->1*)/.
\[Alpha]->EL^2/(4 Pi)/.nc->3;
Series[%/.deltaalpha1->delta1 tree /.Log->ln, {e,0,0}](*/.flaga->1/(EL^2/(4 Pi))/.flagc->1/(EL^2/(4 Pi))*)/.
Op->1/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu/.Zeft[L,op,op,1,1]:>0/.flag[__]:>1//Collect[#, {Op,1/e}, Simplify]&;
logs@rulesxyz@%/.nc->3//Collect[#, {EL,Op, 1/e,ln[__]}, Simplify]&;
Collect[% /.ln[1/Sqrt[x]]->-1/2 ln[x], {Op, EL, ln[__], c[__], 1/Pi^2}, Together];
CL11=% /.flaga->flagc/.flagc->1/.flag->1/.flaglsz->1/.FLAG->1/.delta1->delta1/EL^2//Collect[#, {ln[__]},Simplify]&; 
%//Collect[#, {ln[__]},Together]& ;
CL11a=Series[logs@rulesxyz[%/.delta1->alphcor1/.nc->3]/.ln[1/Sqrt[x]]->-1/2 ln[x],{e,0,0}]//
Collect[#, {ln[__]},Together]&;


CL11a/.flagpeng->1/.flagself->1//Collect[#, {ln[__]}, Simplify]&
%//Collect[#, {ln[__]}, ExpandNumerator]&


(* ::Subsection::Closed:: *)
(*L  matching  at  order  alpha   projected  into  the  evanescent 3 gamma*)


SMLaux=Coefficient[SML,alpha5f^2]+P[L,Ev3,0]/(4 Pi)deltaalpha1//Collect[#, {deltaalpha1},Simplify]&


Coefficient[EFTL,alpha5f^2]/.Qproj[d_,Op,0]:>0/.Qproj[d_,Ev5,0]:>0/.
Qproj[d_,op_,1,Op_]:>0/.c[L,2,0]:>0/.c[L,3,0]:>0/.c[L,3,1]:>0;
Coefficient[SML,alpha5f^2]/.P[L,Op,0]->0/.P[d_,t_,Op,___]:>0/.CT[d_, t_, Op, ___]:>0/.
LSZ[d_,p_,Op, ___]:>0;
Simplify[Solve[%==%%,c[L,2,1]]/.Zcc->Zeft/.P[L,Ev3,0]:>1/.Qproj[L,Ev3,0]:>1]
cl21=%[[1,1,2]]
%/.c[L,1,0]->1/(2 MW^2 (1-MW^2/MZ^2));
plugZ@plugamp@plugct@%/.flageftl1->1/.Ev3->1//Collect[#, {e,ln[__]},Simplify]&;
(*Coefficient[%, 1/e]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ;*)
Series[(*alphacorr*)%/.Log->ln, {e,0,0}]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu//Collect[#, {Op,1/e}, Simplify]&;
logs@rulesxyz@%/.nc->3/.flageftl1oe->1//Collect[#, {EL,Op, 1/e,ln[__]}, Simplify]&;
Collect[% /.ln[1/Sqrt[x]]->-1/2 ln[x], {Op, EL, c[__],e}, Together];
CL21=%/.FLAG->1//Collect[#,{Op, EL, ln[__], c[__], 1/Pi^2},Simplify]&


Coefficient[EFTL,alpha5f^2]/.Qproj[d_,Op,0]:>0/.Qproj[d_,Ev5,0]:>0/.
Qproj[d_,op_,1,Op_]:>0/.c[L,2,0]:>0/.c[L,3,0]:>0/.c[L,3,1]:>0;
SMLaux/.P[L,Op,0]->0/.P[d_,t_,Op,___]:>0/.CT[d_, t_, Op, ___]:>0/.
LSZ[d_,p_,Op, ___]:>0;
Simplify[Solve[%==%%,c[L,2,1]]/.Zcc->Zeft/.P[L,Ev3,0]:>1/.Qproj[L,Ev3,0]:>1]
cl21aux=%[[1,1,2]]
%/.c[L,1,0]->1/(2 MW^2 (1-MW^2/MZ^2));
plugZ@plugamp@plugct@%/.flageftl1->1/.Ev3->1//Collect[#, {e,ln[__]},Simplify]&;
(*Coefficient[%, 1/e]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ;*)
Series[%/.deltaalpha1-> tree0 alphcor1 flagdelta/.Log->ln, {e,0,0}]/.tree0->1/(2 MW^2 (1-MW^2/MZ^2))/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu//Collect[#, {Op,1/e}, Simplify]&;
logs@rulesxyz@%/.nc->3/.flageftl1oe->1//Collect[#, {EL,Op, 1/e,ln[__]}, Simplify]&;
Collect[% /.ln[1/Sqrt[x]]->-1/2 ln[x], {Op, EL, c[__],e}, Together];
CL21aux=%/.FLAG->1//Collect[#,{flagdelta},Simplify]&


(* ::Subsection::Closed:: *)
(*L   matching   at   order   alpha    projected   into   the   evanescent  5  gamma*)


Coefficient[EFTL,alpha5f^2]/.Qproj[d_,Op,0]:>0/.Qproj[d_,Ev3,0]:>0/.Qproj[d_,op_,1,Op_]:>0;
Coefficient[SML,alpha5f^2]/.P[L,Op,0]->0/.P[d_,t_,Op,___]:>0/.P[d_,t_,Ev3,___]:>0/.CT[d_, t_, Op, ___]:>0/.LSZ[d_,p_,Op, ___]:>0;
cl31=Solve[%==%%,c[L,3,1]]/.c[L,2,0]:>0/.c[L,3,0]:>0/.Zcc[d_,1,3,1,1]:>0/.Zcc->Zeft


(* ::Section:: *)
(*L  matching  2 loop*)


Clear[simpl]
simpl[x_]:=x/.\[Xi]A->1/.\[Xi]z->1/.\[Xi]w->1/.NF[__]:>1/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu/.\[Alpha]->EL^2/(4 Pi)/.tree0->1/(2 MW^2 (1-MW^2/MZ^2))/.flagself->1/.flagpeng->1


(* ::Subsection:: *)
(*L   matching   at   order   alpha^2    projected   into   the   physical*)


Coefficient[EFTL,alpha5f^3]/.Qproj[d_,Ev5,0]:>0/.Qproj[d_,Op,0]:>1/.
Qproj[d_,op_,1,op2_]:>0/.Qproj[d_,op_,2,op2_]:>0/.c[L,2,0]:>0/.c[L,3,0]:>0/.c[L,3,1]:>0(*/.P[L_,Ev3,0]:>1*)/.
Qproj[L_,Ev3,0]:>0;

Coefficient[SML,alpha5f^3]/.P->Psimp/.CT->CTsimp/.Psimp->P/.CTsimp->CT/.
P[d_,t_,Ev5,a_]:>0/.P[d_,t_,Ev3,a_]:>0/.P[d_, Op,0]:>1/.P[L_,Ev3,0]:>0/.CT[L_, s, Op, 1|2]:>0/.
CT[L_, p|s, Op, 1|2]:>0/.P[L_, s|p, Op, 1|2]:>0;

sol=Solve[%==%%,c[L,1,2]]/.Zcc->Zeft
%/.c[L,1,1]->CL11 flagcl11/.c[L,2,1]->CL21 flagcl21/.c[L,1,0]->1/(2 MW^2 (1-MW^2/MZ^2));
%[[1,1,2]];
resop=plugZ@plugamp@plugct@%/.Log->ln/.\[Xi]A->1/.\[Xi]z->1/.\[Xi]w->1/.
NF[__]:>1/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu/.\[Alpha]->EL^2/(4 Pi)/.tree0->1/(2 MW^2 (1-MW^2/MZ^2))/.flagself->0/.flagpeng->0//Collect[#, {1/e}]&;

res1op=Series[logs@rulesxyz[%/.delta1->alphcor1 flagalpha1/.deltaalpha1->alphcor1 flagalpha/.nc->3]/.ln[1/Sqrt[x]]->-1/2 ln[x],{e,0,-1}]/.Op->1;


flagtozero[tomass@Coefficient[res1op,e,-2]]/.flagext2->1/.flagamp->1/.flagctt->1//Simplify


rulesxyz@flagtozero@tomass[Coefficient[res1op,e,-1]]//Simplify;
%/.flagext2->1/.ln->Log/.FLAG->1(*/.flagcl11->1*)(*/.flagextpartl->1*)/.flagamp->1/.Flag[__]:>1/.
flagctt->1/.flageft2->1/.flaglsz->1 /.flagcl11->1/. flagextpartl->1//Simplify
Coefficient[%, Log[x]] /.flagalpha->1//Simplify


rulesxyz[ CL11 1/(2 MW^2 (1-MW^2/MZ^2))]/.flagself->1/.flagpeng->1//Simplify
Coefficient[%, ln[x]]//Simplify//Expand


-94/2


sol[[1,1,2]]//Expand


logs@rulesxyz@logs@alphcor1
Coefficient[%, ln[x]]


a1=logs[ rulesxyz@flagtozero@simpl@Coefficient[plugct[CT[L,b,Op,2]],e,-1]/.ln->Log/.Log->ln]//Simplify
a2=logs[rulesxyz@flagtozero@simpl@Coefficient[plugamp[2 deltaalpha1 P[L,b,Op,1]],e,-1]/.ln->Log/.Log->ln]//Simplify
a3=logs[ rulesxyz@flagtozero@simpl@Coefficient[plugZ@plugamp[(LSZ[L,p,Op,1] P[L,b,Op,1])/tree0/.tree0->1/(2 MW^2 (1-MW^2/MZ^2))],e,-1]/.ln->Log/.Log->ln]//Simplify
a4=logs[ rulesxyz@flagtozero@simpl@Coefficient[plugamp[P[L,b,Op,2]],e,-1]/.ln->Log/.Log->ln]//Simplify
a5=logs[ rulesxyz@flagtozero@simpl@Coefficient[plugZ[c[L,1,1] z[L,extpart,1,1]/.c[L,1,1]->CL11],e,-1]/.ln->Log/.Log->ln]//Simplify


Coefficient[a3,ln[x]]
Series[Coefficient[logs[rulesxyz[a2/.deltaalpha1->alphcor1]]/.ln[1/Sqrt[x]]->-1/2 ln[x],ln[x]]/.nc->3,{e,0,0}]//Normal
Series[Coefficient[logs[rulesxyz[a5/.delta1->alphcor1]]/.ln[1/Sqrt[x]]->-1/2 ln[x]/.nc->3,ln[x]],{e,0,0}]//Normal
t=%+%%/.Op->1//Simplify//ExpandNumerator


a1+a4/.flagamp->1/.flagctt->1/.nc->3/.Op->1//Simplify;
t1=Coefficient[%, ln[x]]//Simplify//ExpandNumerator


t-t1//Simplify


(* ::Subsection:: *)
(*L     matching     at     order     alpha^2      projected     into     the     ev3*)


Coefficient[EFTL,alpha5f^3]/.Qproj[d_,Ev5,0]:>0/.Qproj[d_,Op,0]:>0/.
Qproj[d_,op_,1,op2_]:>0/.Qproj[d_,op_,2,op2_]:>0/.c[L,2,0]:>0/.c[L,3,0]:>0/.c[L,3,1]:>0(*/.P[L_,Ev3,0]:>1*)/.
Qproj[L_,Ev3,0]:>1;

Coefficient[SML,alpha5f^3]/.P->Psimp/.CT->CTsimp/.CTsimp->CT/.Psimp->P/.
P[d_,t_,Ev5,a_]:>0/.P[d_,t_,Op,a_]:>0/.P[d_, Op,0]:>0/.P[L_,Ev3,0]:>1(*/.Qproj[L_,Ev3,0]:>tree*);

Solve[%==%%,c[L,2,2]]/.Zcc->Zeft
%/.c[L,1,1]->CL11 flagcl11/.c[L,2,1]->(CL21)flagcl21/.c[L,1,0]->1/(2 MW^2 (1-MW^2/MZ^2));
%[[1,1,2]];
res=plugZ@plugamp@plugct@%/.Log->ln/.Ev3->1(*/.\[Xi]A->1*)/.
NF[__]:>1/.nc->3/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu/.tree0->1/(2 MW^2 (1-MW^2/MZ^2))//Collect[#, {1/e}]&;

res1=Series[logs@rulesxyz[%/.delta1->alphcor1/.deltaalpha1->alphcor1/.nc->3]/.ln[1/Sqrt[x]]->-1/2 ln[x],{e,0,-1}];


flagtozero[x_] := x/.flageft2->1/.flagcl11->1/.flageft2->1/.flageftl1oe->1/.flagct->1/.flagsmev2->1/.
flagcl21 ->1/.Flag[__]:>1/.flg[__]:>1/.flageftl1ee->1/.FLAG->1/.flagw[__]:>1/.flag[__]:>1/.flagextpartl->1


Series[res1/.Log->ln, {e,0,-1}]/.mw->MW/.mz->MZ/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu//Collect[#, {1/e}]&;
flagtozero@Coefficient[%,e,-2](*/.flagpeng->0/.flagself->0*)/.\[Xi]z->1/.\[Xi]w->1/.\[Xi]A->1/.ln->Log//Simplify


Series[res1/.Log->ln, {e,0,-1}]/.mw->MW/.mz->MZ/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.\[Mu]->mu//Collect[#, {1/e}]&;
flagtozero@Coefficient[%, e,-1]/.flagpeng->1/.flagself->1/.\[Xi]z->1/.\[Xi]w->1/.\[Xi]A->1/.ln->Log;
pole1ev3=Simplify[rulesxyz@logs@%]/.flaglsz->1//Simplify


(* ::Subsubsection::Closed:: *)
(*manos result*)


Clear[ratio]
ratio[a_, b_]:=a/b;
Clear[convLi2]
convLi2[a_]:=PolyLog[2, a];


mres=Get["/home/ana/Desktop/comp/flags/ChatE1mu2loopBox.m"][[1]]/.rat->ratio/.pi->Pi/.DTPHI1->Phi/.Li2->convLi2/.
Mt->MT/.Log->ln;


Coefficient[mres, 1/ep]
Coefficient[%, tadpole]


Coefficient[mres, 1/ep^2]
Coefficient[%, tadpole]


Coefficient[mres, tadpole]


mresep1 = logs@rulesxyz@Coefficient[mres,1/ep]/.nc->3//Simplify
Coefficient[%, aethres1]/.nc->3//Simplify;


-((z^2 (3+47 ln[mu]-47 ln[MW]+8 ln[x]))/(72 MW^4 (-1+z)^2))/(( z (3+47 ln[mu]-47 ln[MW]+8 ln[x]))/(36 MW^2 (-1+z)))//Simplify


(*plugZ@plugamp@plugct@(P[L,b,Ev3,2]/tree)/.Ev3->1/.offflags/.Flag[__]:>1;
Coefficient[%,1/e^2]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify;

plugZ@plugamp@plugct@(CT[L,b,Ev3,2]/tree)/.Ev3->1/.offflags/.Flag[__]:>1;
Coefficient[%,1/e^2]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify;


(a+b)/.Log->ln/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.nc->3;
rulesxyz[%]//Collect[%,{1/e},Simplify]&
*)
(*plugZ@plugamp@plugct@(c[L,2,1] z[L,extpart,1,1])/.Ev3->1/.offflags;
Coefficient[%,1/e]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify

plugZ@plugamp@plugct@(c[L,2,1] Zeft[L,ev3,ev3,1,1])/.Ev3->1/.offflags;
Coefficient[%,1/e]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify

plugZ@plugamp@plugct@(c[L,1,1] Zeft[L,op,ev3,1,1])/.Ev3->1/.offflags;
Coefficient[%,1/e]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify

plugZ@plugamp@plugct@(Zeft[L,op,ev3,2,1])/.Ev3->1/.offflags;
Coefficient[%,1/e]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify*)


(* ::Subsection::Closed:: *)
(*L     matching     at     order     alpha^2      projected     into     the     ev5*)


Coefficient[EFTL,alpha5f^3]/.Qproj[d_,Ev3,0]:>0/.Qproj[d_,Op,0]:>0/.
Qproj[d_,op_,1,op2_]:>0/.
Qproj[d_,op_,2,op2_]:>0/.c[L,2,0]:>0/.c[L,3,0]:>0/.c[L,3,1]:>0;

Coefficient[SML,alpha5f^3]/.P->Psimp/.CT->CTsimp/.CTsimp->CT/.Psimp->P/.
P[d_,t_,Ev3,a_]:>0/.P[d_,t_,Op,a_]:>0/.P[d_, Op,0]:>0/.CT[d_,t_,Ev3,a_]:>0;

Solve[%==%%,c[L,3,2]]/.P->Ppeng/.CT->CTpeng/.Ppeng->Prules/.CTpeng->CTrules/.
CTrules->CT/.Prules->P/.Zcc[d_,1,3,1,1]:>0/.Zcc->Zeft/.P[d_,Ev5,0]:>1/. Qproj[d_,Ev5,0]:>1//Simplify
clev5=%[[1,1,2]];
%/.c[L,2,1]:>CL21(*/.c[L,1,0]:>1*)/.c[L,1,0]->1/(2 MW^2 (1-MW^2/MZ^2));
cmev5=plugZ@plugamp@plugct@%/.Ev3->1/.Ev5->1/.FLAG->1;
Coefficient[cmev5, 1/e^2]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.flag[__]:>1/.flagl5->1/.flageft1->1/.flageft2->1/.flageftl1oe->1//Simplify
logs@rulesxyz[Coefficient[cmev5, 1/e]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ]/.flag[__]:>1/.flagl5->1/.flageft1->1/.flageft2->1//Simplify

cmev5fin=cmev5/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.flag[__]:>1/.flagl5->1/.flageftl1->1/.flageft1->1/.
flageft2->1/.flageftl1oe->1//Collect[#, {1/e, ln[__]},Simplify]&;
rulesxyz@logs@%//Collect[#, {1/e, ln[__]},Simplify]&


(*Export["/home/ana/Desktop/comp/E2m.m",cmev5fin]*)
