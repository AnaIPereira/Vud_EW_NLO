(* ::Package:: *)

(* ::Section:: *)
(*Functions*)


(* ::Subsection:: *)
(*generate the amplitudes*)


(*generate the amplitude with feynarts and convert to FeynCalc notation for 1 loop and 2 loop*)


ampmuongen1loop[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diagsmuongen,{j}],GaugeRules -> {}],
IncomingMomenta->{p1,p2},OutgoingMomenta->{p3,p4},LoopMomenta->{q1},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->False,UndoChiralSplittings->False]


(*ampmuongen[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diagsmuongen,{j}],GaugeRules -> {}],
IncomingMomenta->{p1,p2},OutgoingMomenta->{p3,p4},LoopMomenta->{q1,q2},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->False,UndoChiralSplittings->False]*)


(* ::Subsection:: *)
(*convert to my notation*)


(*masses*)
masses[x_] := x //. {FCGV[a___] :> mass[ToExpression[a]] /; StringStartsQ[ToString[ToExpression[a]], "M"]}

masses1[x_] := x //. {FCGV["MW"]->mass[MW],FCGV["MZ"]->mass[MZ],
FCGV["MM"]->mass[MM],FCGV["ME"]->mass[ME],
FCGV["MT"]->mass[MT],FCGV["MB"]->mass[MB],
FCGV["MD"]->mass[MD],FCGV["MU"]->mass[MU],
FCGV["MC"]->mass[MC],FCGV["MS"]->mass[MS],
FCGV["MH"]->mass[MH],
FCGV["ML"]->mass[ML]}


(*couplings*)
coupl[x_] := x //.{FCGV["EL"]->el, FCGV["SW"]->sw, FCGV["CW"]->cw}/.
{GaugeXi[W]->\[Xi]w,GaugeXi[Z]->\[Xi]z,GaugeXi[A]->\[Xi]A}


(*spinor*)
simpspinor[x_]:= x //.{Spinor[Momentum[p___,d],mass___,1]->phi[p]}//.
{phi[p1]->phi[22],phi[p2]->phi[11],phi[p3]->phi[21],phi[p4]->phi[12]}


(*set external momemta to zero*)
extmomzero[x_]:= x //.{p1->0, p2->0, p3->0, p4->0}


(*set masses to zero*)
(*
ME -> electron mass
MM -> muon mass
ML -> tau mass
MU -> up quark mass
MD -> down quark mass
MB -> bottom quark mass
MS -> strange quark mass
MC -> charm quark mass
*)
massestozero[x_]:=x //. {mass[ME]->0, mass[MM]->0,mass[ML]->0,
 mass[MU]->0, mass[MD]->0, mass[MB]->0, mass[MS]->0, mass[MC]->0}


(*simplify numerators*)
split[y_]:=y//FeynAmpDenominatorSplit

auxfrac[y_]:=y//.
FeynAmpDenominator[PropagatorDenominator[mom___, mass[M_]]]->ampden[mom,mass[M]]//.
FeynAmpDenominator[PropagatorDenominator[mom___, 0]]->ampden[mom,0]//.
FeynAmpDenominator[PropagatorDenominator[mom___, \[Xi]_^(1/2)*mass[M_]]]->ampden[mom,Sqrt[\[Xi]] mass[M]]


(*momentum to my notation*)


Clear[momentum]
momentum[x_]:=x//.{Momentum->mom}//.{Pair->pair}
mom[q1,d]:= q[1]
mom[a_ q1,d]:= a q[1]/;IntegerQ[a]
mom[q2,d]:= q[2]
mom[a_ q2,d]:= a q[2]/;IntegerQ[a]
mom[-q1,d]:= -q[1]
mom[-q2,d]:= -q[2]
mom[p1,d]:= p[1]
mom[p2,d]:= p[2]
mom[a_ p1,d]:= a p[1]/;IntegerQ[a]
mom[a_ p2,d]:= a p[2]/;IntegerQ[a]
mom[-p1,d]:= -p[1]
mom[-p2,d]:= -p[2]
mom[Plus[q1_,q2_],d]:=mom[q1,d]+mom[q2,d]
mom[a_ q1_ + b_ q2_ ,d]:= mom[a q1,d]+ mom[b q2,d]
mom[a___*Plus[q1_,q2_],d]:=a mom[Plus[q1,q2],d]
Pair[LorentzIndex[mu_,d],LorentzIndex[nu_,d]]:=mt[mu,nu]
(*Pair[LorentzIndex[mu_,d],mom[ind_,d]]:=q[ind,mu]*)
Pair[LorentzIndex[mu_,d],q[ind_]]:=q[ind,mu]
Pair[LorentzIndex[mu_,d],p[ind_]]:=p[ind,mu]
Pair[q[ind_],q[ind1_]]:=sp[q[ind],q[ind1]]
Pair[p[ind_],p[ind1_]]:=sp[p[ind],p[ind1]]
Pair[q[ind_],p[ind1_]]:=sp[q[ind],p[ind1]]
Pair[a_,b_+c_]:=Pair[a,b]+Pair[a,c]


(*dirac gamma to my notation*)


diracgamma[x_]:=x//.{DiracGamma[LorentzIndex[ind___,d],d]->gamma[ind]}//.
{DiracGamma[6]->gamma[R],DiracGamma[7]->gamma[L],DiracGamma[5]->gamma[g5]}


(*diracgamma2[x_]:=x//.
{DiracGamma[q[ind_], d]:>qslash[ind]}//.
{DiracGamma[q1, d]:>qslash[1]}//.
{DiracGamma[q2, d]:>qslash[2]}//.
{DiracGamma[-q1, d]:>-qslash[1]}//.
{DiracGamma[-q2, d]:>-qslash[2]}//.
{DiracGamma[Momentum[q1,d],d]:>qslash[1]}//.
{DiracGamma[Momentum[q2,d],d]:>qslash[2]}//.
{DiracGamma[p[ind_], d]:>pslash[ind]}//.
{DiracGamma[p1, d]:>pslash[1]}//.
{DiracGamma[p2, d]:>pslash[2]}//.
{DiracGamma[-p1, d]:>-pslash[1]}//.
{DiracGamma[-p2, d]:>-pslash[2]}//.
{DiracGamma[Momentum[p1,d],d]:>pslash[1]}//.
{DiracGamma[Momentum[p2,d],d]:>pslash[2]}*)


ClearAll[diracgamma2, dg]
diracgamma2[x_]:=x//.DiracGamma->dg
dg/: dg[q[ind_], d]:=qslash[ind]
dg/: dg[a__ q[ind_], d]:= a qslash[ind] /; IntegerQ[a]
dg/: dg[- a__ q[ind_], d]:= - a qslash[ind] /; IntegerQ[a]
dg/: dg[q1, d]:=qslash[1]
dg/: dg[q2, d]:=qslash[2]
dg/: dg[-q[1], d]:=-qslash[1]
dg/: dg[-q[2], d]:=-qslash[2]
dg/: dg[Momentum[q1,d],d]:=qslash[1]
dg/: dg[Momentum[q2,d],d]:=qslash[2]
dg/: dg[p[ind_], d]:=pslash[ind]
dg/: dg[p1, d]:=pslash[1]
dg/: dg[p2, d]:=pslash[2]
dg/: dg[-p[1], d]:=-pslash[1]
dg/: dg[-p[2], d]:=-pslash[2]
dg/: dg[Momentum[p1,d],d]:=pslash[1]
dg/: dg[Momentum[p2,d],d]:=pslash[2]


cdl[arg_]:=(arg//.Dot->mDot//.{mDot[phi[a_],terms___,phi[b_]]:>exdL[{phi[a],phi[b]},terms]})(*/.exdL->dL*);


(*cdl0[arg_]:=(arg//.DiracTrace[a__, Dot[c__], b__]:>DiracTrace[a,mmDot[c],b])*)


cdl0[arg_] := arg /. DiracTrace[x___] :> DiracTrace @@ (Replace[{x}, d_Dot :> mmDot @@ List @@ d, {0, Infinity}])


cdl1[arg_]:=(arg//.Dot->mDot//.{mDot[terms___]:>exdL[{in[1],in[2]},terms]})


ClearAll[joindL, dLjoined]
joindL[arg_] := arg//. exdL->dLjoined
dLjoined/: dLjoined[in_, a___] dLjoined[in_, b___] := dLjoined[in, a, b]


(*noncommutativeObjectHeads={gamma,mDot};
noncommutativeObject={gamma[__],mDot[__]};
Clear[nonComQ];
(*nonComQ[arg_]:=Not[MemberQ[noncommutativeObjectHeads,Head[arg]]];*)
nonComQ[arg___]:=And@@(FreeQ[{arg},#]&/@noncommutativeObject);*)


(*non edited version*)
(*Clear[exdL];
exdL[id_,a___,b_ mDot[inside__],c___]:=b exdL[id,a,inside,c]/;nonComQ[b];
exdL[id_,a___,b_ mDot[inside__,gamma[L]]+b_ mDot[inside__,gamma[R]],c___]:=b exdL[id,a,inside,c]/;nonComQ[b];*)


(* Define noncommutative structures *)
noncommutativeObjectHeads = {gamma, mmDot, qslash, pslash};
noncommutativeObject = (#[__] &) /@ noncommutativeObjectHeads;

ClearAll[nonComQ]
SetAttributes[nonComQ, HoldAll]
nonComQ[arg___] := And @@ (FreeQ[{arg}, #] & /@ noncommutativeObject)


nonComQ[mass[m]]


Clear[exdL1];
exdL1/: q[j_, i_]exdL1[a___, gamma[i_], b___] := exdL1[a, qslash[j], b];


Clear[exdL];

exdL[id_,a___ ampden[x___ ],c___]:=ampden[x] exdL[id,a,c];
exdL[id_,a___ ampden[x___ ]^n_,c___]:=ampden[x]^n exdL[id,a,c];

exdL[id_,a___,b_ mDot[inside__],c___]:=b exdL[id,a,inside,c]/;nonComQ[b];

exdL[id_,a___,b_ mDot[inside__,gamma[L]]+b1_ mDot[inside1__,gamma[R]],c___]:=
b exdL[id,a,inside,gamma[L],c]+ b1 exdL[id,a,inside1,gamma[R],c]/;(nonComQ[b]&&nonComQ[b1]);
(**)
exdL[id_,a___,b_ mDot[inside__,gamma[L_]]+b1__,c___]:=
b exdL[id,a,inside,gamma[L],c]+ exdL[id,a,b1,c]/;nonComQ[b];
(**)

exdL[id_, a___, b__ gamma[L], c___] := 
  b exdL[id, a, gamma[L], c] /; nonComQ[b];

exdL[id_, a___, b__ gamma[R], c___] := 
  b exdL[id, a, gamma[R], c] /; nonComQ[b];

(**)

exdL[id_,a___, qslash[i_] + qslash[j_],b___]:= 
exdL[id,a,qslash[i],b] +  exdL[id,a,qslash[j],b];

exdL[id_,a___, p___ qslash[i_] + qslash[j_],b___]:= 
p exdL[id,a,qslash[i],b] + exdL[id,a,qslash[j],b]/; nonComQ[p];

exdL[id_,a___,  qslash[i_] + p_ qslash[j_],b___]:= 
 exdL[id,a,qslash[i],b] + p exdL[id,a,qslash[j],b]/; nonComQ[p];
 
exdL[id_,a___, pp_  qslash[i_] + p_ qslash[j_],b___]:= 
pp exdL[id,a,qslash[i],b] + p exdL[id,a,qslash[j],b]/; (nonComQ[p]&&nonComQ[pp]);

exdL[id_,a___, p___ (qslash[i_] + qslash[j_]),b___]:= 
p (exdL[id,a,qslash[i],b] + exdL[id,a,qslash[j],b]) /; nonComQ[p];

exdL[id_,a___, p___ (qslash[i_] + pslash[j_]),b___]:= 
p (exdL[id,a,qslash[i],b] + exdL[id,a,pslash[j],b]) /; nonComQ[p];

exdL[id_,a___, p___ (qslash[i_] - pslash[j_]),b___]:= 
p (exdL[id,a,qslash[i],b] - exdL[id,a,pslash[j],b]) /; nonComQ[p];

exdL[id_,a___, p___ (-qslash[i_] + pslash[j_]),b___]:= 
p (- exdL[id,a,qslash[i],b] + exdL[id,a,pslash[j],b]) /; nonComQ[p];

exdL[id_,a___, p___ (-qslash[i_] -qslash[r_] + pslash[j_]),b___]:= 
p (- exdL[id,a,qslash[i],b] - exdL[id,a,qslash[r],b] + exdL[id,a,pslash[j],b]) /; nonComQ[p];

exdL[id_,a___, p___ (-qslash[i_] +qslash[r_] + pslash[j_]),b___]:= 
p (- exdL[id,a,qslash[i],b] + exdL[id,a,qslash[r],b] + exdL[id,a,pslash[j],b]) /; nonComQ[p];

exdL[id_,a___, p___ (qslash[i_] - qslash[j_]),b___]:= 
p (exdL[id,a,qslash[i],b] - exdL[id,a,qslash[j],b]) /; nonComQ[p];

 exdL[id_,a___, mass[i_] + qslash[j_],b___]:= 
mass[i] exdL[id,a,b] + exdL[id,a,qslash[j],b];

exdL[id_,a___, c1___ qslash[i_] ,b___]:= 
c1 exdL[id,a,qslash[i],b] /;nonComQ[c1];
(**)
exdL[id_,a___, c1_ gamma[i_] ,b___]:= 
c1 exdL[id,a,gamma[i],b] /;nonComQ[c1];
(**)
exdL[id_,a___,0,b___] = 0;

exdL[id_,a___,mass[m_],b___] := mass[m] exdL[id,a,b];

exdL[id_, a___, - pslash[j_],b___]:= - exdL[id, a, pslash[j],b];

(* Generic sum handling *)
exdL[id_, a___, x_ + y_, b___] := 
  exdL[id, a, x, b] + exdL[id, a, y, b] /; FreeQ[{x, y}, exdL];

(* Generic subtraction *)
exdL[id_, a___, x_ - y_, b___] := 
  exdL[id, a, x, b] - exdL[id, a, y, b] /; FreeQ[{x, y}, exdL];



(*cdl[Dot[phi[12],gamma[1],I el Dot[gamma[2],gamma[3]],phi[22]]]*)


(*scalar products to my notation*)
convertsp[x_]:= x//.{Pair[a_,b_]->sp[a,b]}


(*traces to my notation*)
(*
Clear[tr]
Clear[trace]

tr[arg_]:=arg//.{DiracTrace->trace}

trace /: trace[mDot[terms___]] := trace[terms]

trace /: trace[i___,a___ mDot[terms1___] ,j___]:=a  trace[i,terms1,j] /; (nonComQ[a])

trace /: trace[i___, a__ mDot[terms1___]+b__ mDot[terms2___], j___]:= 
a trace[i,  terms1, j] + b trace[i, terms2, j] /; (nonComQ[a]&&nonComQ[b])

trace /: trace[a___, mass[i_] + p_ ,b___]:= trace[a,mass[i],b] + trace[a,p,b];

trace /: trace[a___, qslash[i_] + qslash[j_],b___]:= trace[a,qslash[i],b] + trace[a,qslash[j],b];

trace /: trace[a___, qslash[i_] - qslash[j_],b___]:= trace[a,qslash[i],b] - trace[a,qslash[j],b];

trace /: trace[a___, -qslash[i_] - qslash[j_],b___]:= -trace[a,qslash[i],b] - trace[a,qslash[j],b];

trace /: trace[a___, p_ qslash[i_] + pp_ qslash[j_],b___]:= p trace[a,qslash[i],b] + pp trace[a,qslash[j],b]/; (nonComQ[p]&&nonComQ[pp])

trace /: trace[a___, c1_ qslash[i_] ,b___]:= c1 trace[a,qslash[i],b] /;nonComQ[c1];

trace /: trace[a___,0,b___]:=0;
*)


(* Define noncommutative structures *)
noncommutativeObjectHeads = {gamma, mmDot, qslash, pslash};
noncommutativeObject = (#[__] &) /@ noncommutativeObjectHeads;

ClearAll[nonComQ]
SetAttributes[nonComQ, HoldAll]
nonComQ[arg___] := And @@ (FreeQ[{arg}, #] & /@ noncommutativeObject)


ClearAll[tr, trace, mmDot]

tr[arg_] := arg //. {dt -> trace}

(* Trace simplifications *)
trace /: trace[mmDot[terms___]] := trace[terms]
trace /: trace[i___, a_ mmDot[x___], j___] := a trace[i, x, j] /; nonComQ[a]
trace /: trace[i___, a_ mmDot[x___] + b_ mmDot[y___], j___] := 
  a trace[i, x, j] + b trace[i, y, j] /; (nonComQ[a] && nonComQ[b])

(* Distribute over sums, remove zeros *)
trace /: trace[a___, x_ + y_, b___] := trace[a, x, b] + trace[a, y, b]
trace /: trace[a___, 0, b___] := 0

(* Scalar factor extraction *)
trace /: trace[a___, c_ x_, b___] := c trace[a, x, b] /; (nonComQ[c])

(* Linearity in mass and qslash terms *)
trace /: trace[a___, mass[i_] + p_, b___] := trace[a, mass[i], b] + trace[a, p, b]
trace /: trace[a___, qslash[i_] + qslash[j_], b___] := trace[a, qslash[i], b] + trace[a, qslash[j], b]
trace /: trace[a___, qslash[i_] - qslash[j_], b___] := trace[a, qslash[i], b] - trace[a, qslash[j], b]

(* Flatten nested mDot *)
mmDot /: mmDot[a___, mmDot[b___], c___] := mmDot[a, b, c]

(* Define noncommutative dot product behavior *)
(*qslash /: qslash[i_] . x_ := mDot[qslash[i], x]
pslash /: pslash[i_] . x_ := mDot[pslash[i], x]
gamma /: gamma[a_] . x_ := mDot[gamma[a], x]
*)
