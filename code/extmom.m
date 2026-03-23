(* ::Package:: *)

(* ::Section:: *)
(*amplitude  generation*)


(*function to generate the amplitude*)
amp[j_,diags_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diags,{j}],GaugeRules->{},Truncated->True],
IncomingMomenta->{p1},OutgoingMomenta->{p1},LoopMomenta->{q1},LorentzIndexNames -> {Lor1, Lor2},List->False,
ChangeDimension->d,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{SMP["m_b"]->mass[mf],SMP["m_s"]->mass[mf],SMP["m_c"]->mass[mf],SMP["m_u"]->mass[mf],SMP["m_d"]->mass[mf],
SMP["m_e"]->mass[me],SMP["m_mu"]->mass[me],SMP["m_tau"]->mass[me],
SMP["sin_W"]->SW,SMP["cos_W"]->CW}


(*(*function to generate the amplitude*)
amp[j_,diags_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diags,{j}],GaugeRules->{},Truncated->True],
IncomingMomenta->{p1},OutgoingMomenta->{p1},LoopMomenta->{q1},LorentzIndexNames -> {Lor1, Lor2},List->False,
ChangeDimension->d,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{SMP["m_b"]->mass[mf],SMP["m_s"]->mass[mf],SMP["m_c"]->mass[mf],SMP["m_u"]->mass[mf],SMP["m_d"]->mass[mf],
SMP["m_e"]->mass[mf],SMP["m_mu"]->mass[mf],SMP["m_tau"]->mass[mf],
SMP["sin_W"]->SW,SMP["cos_W"]->CW}*)


amp2loop[j_,diags_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[diags,{j}],GaugeRules->{},Truncated->True],
IncomingMomenta->{p1},OutgoingMomenta->{p1},LoopMomenta->{q1,q2},List->False, Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->True,UndoChiralSplittings->False]/.
{SMP["m_b"]->mass[mf],SMP["m_s"]->mass[mf],SMP["m_c"]->mass[mf],SMP["m_u"]->mass[mf],SMP["m_d"]->mass[mf],SMP["m_e"]->mass[me],SMP["m_mu"]->mass[me],SMP["m_tau"]->mass[me],
SMP["sin_W"]->SW,SMP["cos_W"]->CW}


(* ::Section:: *)
(*infrared  rearrengement*)


ClearAll[listextmom,cutpower,extmom, extmom1]

(*cutpower[x_]:=x/.{p[i_,j_]:>extmom[p[i,j]],p[i_]:>extmom[p[i]]}*)

listextmom[x_] := x /. {
  p[i_]^n_Integer?Positive :> extmom @@ ConstantArray[p[i], n],
  p[i_, j_]                :> extmom[p[i, j]],
  p[i_]                    :> extmom[p[i]]
}

extmom /: extmom[a___]extmom[b___]:= extmom[a,b];
extmom /: extmom[extmom[a___]] := extmom[a];
extmom /: extmom[extmom1[a___]] := extmom[a];


cutpower[x_] :=x//. extmom->extmom1;

extmom1/: extmom1[a___]extmom1[b___]:= extmom1[a,b];
extmom1[args__] := 0 /; Length[{args}] > 1;



(*cutpowerb[x_] :=x//. extmom->extmom1b;

extmom1b/: extmom1b[a___]extmom1b[b___]:= extmom1b[a,b];
extmom1b[args__] := 0 /; Length[{args}] > 3;*)


ClearAll[listintmom,intmom]

(*cutpower[x_]:=x/.{p[i_,j_]:>extmom[p[i,j]],p[i_]:>extmom[p[i]]}*)

listintmom[x_] := x /. {
  q[i_]^n_Integer?Positive     :> intmom @@ ConstantArray[q[i], n],
  q[i_, j_]                    :> intmom[q[i, j]],
  q[i_]                        :> intmom[q[i]]
}
intmom/: intmom[a___]intmom[b___]:= intmom[a,b];
intmom/: intmom[intmom[a___]]:= intmom[a];


ClearAll[propstandform, campden]
propstandform[x_]:=x//.{ampden->campden}

campden/: campden[a__,m__]:=1/(a^2-m^2)/.extmom1[p__]->Times[p]




Clear[uniondens, uniden]
uniondens[x_] := x /. {
  sampden[i___]^n_Integer?Positive :> uniden @@ ConstantArray[sampden[i], n],
  sampden[i___] :> uniden[sampden[i]]
}

uniden/: uniden[a___]uniden[b___]:=uniden[a, b];


Clear[countpow]

countpow/: countpow[a_, b_]intmom[c___]:= countpow[a + Length[intmom[c]], b]intmomf[c];
countpow/: countpow[a_, b_]uniden[c___]:= countpow[a, b + Length[uniden[c]]*2]unidenf[c];


ClearAll[mtad, mtad1loop]
mtad/: mtad[{0,0,0},__]:=0
mtad/: mtad[{i_,j_,k_},{0,b_,c_}]:=mtad[{0,j,k},{0,b,c}]/;i=!=0
mtad/: mtad[{i_,j_,k_},{a_,0,c_}]:=mtad[{i,0,k},{a,0,c}]/;j=!=0
mtad/: mtad[{i_,j_,k_},{a_,b_,0}]:=mtad[{i,j,0},{a,b,0}]/;k=!=0

mtad1loop/: mtad1loop[{m_,0,0},{a_,0,0}] := mtad1loop[{m},{a}] /; (a=!=0 && m=!=0);


(*ClearAll[expandpropmass, expandpropmassless]

expandpropmass[expr_] := expr //. {
1/(a_ + (- q[i_] + p[j_])^2) :> 1/(a + (q[i] - p[j])^2)}//.{
1/(a_ + (- q[i_] + p[j_])^2)^2 :> 1/(a + (q[i] - p[j])^2)^2 }//.{
  1/(a_ + (q[i_] - p[j_])^2) :> 
    1/(q[i]^2 + a) + 
    2 sp[q[i], p[j]]/(q[i]^2 + a)^2 - 
    sp[p[j], p[j]]/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2 + a)^3,

  1/(a_ + (q[i_] - p[j_])^2)^2 :> 
    1/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2 + a)^3 - 
    2 sp[p[j], p[j]]/(q[i]^2 + a)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2 + a)^4
}

expandpropmassless[expr_] := expr //. {
 1/((-q[i_] + p[j_])^2) :>  1/((q[i] - p[j])^2) }//.{
1/((-q[i_] + p[j_])^2)^2 :> 1/( (q[i] - p[j])^2)^2 }//.{
  1/((q[i_] - p[j_])^2) :> 
    1/(q[i]^2 ) + 
    2 sp[q[i], p[j]]/(q[i]^2 )^2 - 
    sp[p[j], p[j]]/(q[i]^2 )^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2 )^3,

  1/( (q[i_] - p[j_])^2)^2 :> 
    1/(q[i]^2 )^2 + 
    4 sp[q[i], p[j]]/(q[i]^2 )^3 - 
    2 sp[p[j], p[j]]/(q[i]^2 )^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2 )^4
}*)


(*ClearAll[expandpropmass, expandpropmassless]

expandpropmass[expr_] := expr //. {
  1/(a_ + (- q[i_] + p[j_])^2) :> 1/(a + (q[i] - p[j])^2),
  1/(a_ + (- q[i_] + p[j_])^2)^2 :> 1/(a + (q[i] - p[j])^2)^2
} //. {
  1/(a_ + (q[i_] - p[j_])^2) :> 
    1/(q[i]^2 + a) + 
    2 sp[q[i], p[j]]/(q[i]^2 + a)^2 - 
    sp[p[j], p[j]]/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2 + a)^3,

  1/(a_ + (q[i_] - p[j_])^2)^2 :> 
    1/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2 + a)^3 - 
    2 sp[p[j], p[j]]/(q[i]^2 + a)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2 + a)^4,

  1/(a_ + (q[i_] - p[j_])^2)^3 :> 
    1/(q[i]^2 + a)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2 + a)^4 - 
    3 sp[p[j], p[j]]/(q[i]^2 + a)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2 + a)^5,

  1/(a_ + (q[i_] - p[j_])^2)^4 :> 
    1/(q[i]^2 + a)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2 + a)^5 - 
    4 sp[p[j], p[j]]/(q[i]^2 + a)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2 + a)^6,

  1/(a_ + (q[i_] + p[j_])^2) :> 
    1/(q[i]^2 + a) + 
    2 sp[q[i], p[j]]/(q[i]^2 + a)^2 + 
    sp[p[j], p[j]]/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2 + a)^3,

  1/(a_ + (q[i_] + p[j_])^2)^2 :> 
    1/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2 + a)^3 + 
    2 sp[p[j], p[j]]/(q[i]^2 + a)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2 + a)^4,

  1/(a_ + (q[i_] + p[j_])^2)^3 :> 
    1/(q[i]^2 + a)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2 + a)^4 + 
    3 sp[p[j], p[j]]/(q[i]^2 + a)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2 + a)^5,

  1/(a_ + (q[i_] + p[j_])^2)^4 :> 
    1/(q[i]^2 + a)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2 + a)^5 + 
    4 sp[p[j], p[j]]/(q[i]^2 + a)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2 + a)^6
}


expandpropmassless[expr_] := expr //. {
  1/((-q[i_] + p[j_])^2) :> 1/((q[i] - p[j])^2),
  1/((-q[i_] + p[j_])^2)^2 :> 1/((q[i] - p[j])^2)^2
} //. {
  1/((q[i_] - p[j_])^2) :> 
    1/(q[i]^2) + 
    2 sp[q[i], p[j]]/(q[i]^2)^2 - 
    sp[p[j], p[j]]/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2)^3,

  1/((q[i_] - p[j_])^2)^2 :> 
    1/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2)^3 - 
    2 sp[p[j], p[j]]/(q[i]^2)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2)^4,

  1/((q[i_] - p[j_])^2)^3 :> 
    1/(q[i]^2)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2)^4 - 
    3 sp[p[j], p[j]]/(q[i]^2)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2)^5,

  1/((q[i_] - p[j_])^2)^4 :> 
    1/(q[i]^2)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2)^5 - 
    4 sp[p[j], p[j]]/(q[i]^2)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2)^6,

  1/((q[i_] + p[j_])^2) :> 
    1/(q[i]^2) + 
    2 sp[q[i], p[j]]/(q[i]^2)^2 + 
    sp[p[j], p[j]]/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2)^3,

  1/((q[i_] + p[j_])^2)^2 :> 
    1/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2)^3 + 
    2 sp[p[j], p[j]]/(q[i]^2)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2)^4,

  1/((q[i_] + p[j_])^2)^3 :> 
    1/(q[i]^2)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2)^4 + 
    3 sp[p[j], p[j]]/(q[i]^2)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2)^5,

  1/((q[i_] + p[j_])^2)^4 :> 
    1/(q[i]^2)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2)^5 + 
    4 sp[p[j], p[j]]/(q[i]^2)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2)^6
}
*)


ClearAll[expandpropmass, expandpropmassless]

expandpropmass[expr_] := expr //. {
  1/(a_ + (- q[i_] + p[j_])^2) :> 1/(a + (q[i] - p[j])^2),
  1/(a_ + (- q[i_] + p[j_])^2)^2 :> 1/(a + (q[i] - p[j])^2)^2,
  1/(a_ + (- q[i_] + p[j_])^2)^3 :> 1/(a + (q[i] - p[j])^2)^3,
   1/(a_ + (- q[i_] + p[j_])^2)^4 :> 1/(a + (q[i] - p[j])^2)^4 } //. {
  1/(a_ + (q[i_] - p[j_])^2) :> 
    1/(q[i]^2 + a) + 
    2 sp[q[i], p[j]]/(q[i]^2 + a)^2 (*- 
    sp[p[j], p[j]]/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2 + a)^3*),

  1/(a_ + (q[i_] - p[j_])^2)^2 :> 
    1/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2 + a)^3 (*- 
    2 sp[p[j], p[j]]/(q[i]^2 + a)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2 + a)^4*),

  1/(a_ + (q[i_] - p[j_])^2)^3 :> 
    1/(q[i]^2 + a)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2 + a)^4 (*- 
    3 sp[p[j], p[j]]/(q[i]^2 + a)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2 + a)^5*),

  1/(a_ + (q[i_] - p[j_])^2)^4 :> 
    1/(q[i]^2 + a)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2 + a)^5 (*- 
    4 sp[p[j], p[j]]/(q[i]^2 + a)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2 + a)^6*),

  1/(a_ + (q[i_] + p[j_])^2) :> 
    1/(q[i]^2 + a) + 
  -  2 sp[q[i], p[j]]/(q[i]^2 + a)^2 (*+ 
    sp[p[j], p[j]]/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2 + a)^3*),

  1/(a_ + (q[i_] + p[j_])^2)^2 :> 
    1/(q[i]^2 + a)^2 + 
  -  4 sp[q[i], p[j]]/(q[i]^2 + a)^3 (*+ 
    2 sp[p[j], p[j]]/(q[i]^2 + a)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2 + a)^4*),

  1/(a_ + (q[i_] + p[j_])^2)^3 :> 
    1/(q[i]^2 + a)^3 + 
 -   6 sp[q[i], p[j]]/(q[i]^2 + a)^4 (*+ 
    3 sp[p[j], p[j]]/(q[i]^2 + a)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2 + a)^5*),

  1/(a_ + (q[i_] + p[j_])^2)^4 :> 
    1/(q[i]^2 + a)^4 + 
  -  8 sp[q[i], p[j]]/(q[i]^2 + a)^5 (*+ 
    4 sp[p[j], p[j]]/(q[i]^2 + a)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2 + a)^6*)
}


expandpropmassless[expr_] := expr //. {
  1/((-q[i_] + p[j_])^2) :> 1/((q[i] - p[j])^2),
  1/((-q[i_] + p[j_])^2)^2 :> 1/((q[i] - p[j])^2)^2
} //. {
  1/((q[i_] - p[j_])^2) :> 
    1/(q[i]^2) + 
    2 sp[q[i], p[j]]/(q[i]^2)^2 (*- 
    sp[p[j], p[j]]/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2)^3*),

  1/((q[i_] - p[j_])^2)^2 :> 
    1/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2)^3 (*- 
    2 sp[p[j], p[j]]/(q[i]^2)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2)^4*),

  1/((q[i_] - p[j_])^2)^3 :> 
    1/(q[i]^2)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2)^4 (*- 
    3 sp[p[j], p[j]]/(q[i]^2)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2)^5*),

  1/((q[i_] - p[j_])^2)^4 :> 
    1/(q[i]^2)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2)^5 (*- 
    4 sp[p[j], p[j]]/(q[i]^2)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2)^6*),

  1/((q[i_] + p[j_])^2) :> 
    1/(q[i]^2) + 
    2 sp[q[i], p[j]]/(q[i]^2)^2 (*+ 
    sp[p[j], p[j]]/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2)^3*),

  1/((q[i_] + p[j_])^2)^2 :> 
    1/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2)^3 (*+ 
    2 sp[p[j], p[j]]/(q[i]^2)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2)^4*),

  1/((q[i_] + p[j_])^2)^3 :> 
    1/(q[i]^2)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2)^4 (*+ 
    3 sp[p[j], p[j]]/(q[i]^2)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2)^5*),

  1/((q[i_] + p[j_])^2)^4 :> 
    1/(q[i]^2)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2)^5 (*+ 
   4 sp[p[j], p[j]]/(q[i]^2)^5 + 
   32 sp[q[i], p[j]]^2/(q[i]^2)^6*)
}



ClearAll[expandpropmassb, expandpropmasslessb]

expandpropmassb[expr_] := expr //. {
  1/(a_ + (- q[i_] + p[j_])^2) :> 1/(a + (q[i] - p[j])^2),
  1/(a_ + (- q[i_] + p[j_])^2)^2 :> 1/(a + (q[i] - p[j])^2)^2
} //. {
  1/(a_ + (q[i_] - p[j_])^2) :> 
    1/(q[i]^2 + a) + 
    2 sp[q[i], p[j]]/(q[i]^2 + a)^2 - 
    sp[p[j], p[j]]/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2 + a)^3,

  1/(a_ + (q[i_] - p[j_])^2)^2 :> 
    1/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2 + a)^3 - 
    2 sp[p[j], p[j]]/(q[i]^2 + a)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2 + a)^4,

  1/(a_ + (q[i_] - p[j_])^2)^3 :> 
    1/(q[i]^2 + a)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2 + a)^4 - 
    3 sp[p[j], p[j]]/(q[i]^2 + a)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2 + a)^5,

  1/(a_ + (q[i_] - p[j_])^2)^4 :> 
    1/(q[i]^2 + a)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2 + a)^5 - 
    4 sp[p[j], p[j]]/(q[i]^2 + a)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2 + a)^6,

  1/(a_ + (q[i_] + p[j_])^2) :> 
    1/(q[i]^2 + a) + 
    2 sp[q[i], p[j]]/(q[i]^2 + a)^2 + 
    sp[p[j], p[j]]/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2 + a)^3,

  1/(a_ + (q[i_] + p[j_])^2)^2 :> 
    1/(q[i]^2 + a)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2 + a)^3 + 
    2 sp[p[j], p[j]]/(q[i]^2 + a)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2 + a)^4,

  1/(a_ + (q[i_] + p[j_])^2)^3 :> 
    1/(q[i]^2 + a)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2 + a)^4 + 
    3 sp[p[j], p[j]]/(q[i]^2 + a)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2 + a)^5,

  1/(a_ + (q[i_] + p[j_])^2)^4 :> 
    1/(q[i]^2 + a)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2 + a)^5 + 
    4 sp[p[j], p[j]]/(q[i]^2 + a)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2 + a)^6
}


expandpropmasslessb[expr_] := expr //. {
  1/((-q[i_] + p[j_])^2) :> 1/((q[i] - p[j])^2),
  1/((-q[i_] + p[j_])^2)^2 :> 1/((q[i] - p[j])^2)^2
} //. {
  1/((q[i_] - p[j_])^2) :> 
    1/(q[i]^2) + 
    2 sp[q[i], p[j]]/(q[i]^2)^2 - 
    sp[p[j], p[j]]/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2)^3,

  1/((q[i_] - p[j_])^2)^2 :> 
    1/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2)^3 - 
    2 sp[p[j], p[j]]/(q[i]^2)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2)^4,

  1/((q[i_] - p[j_])^2)^3 :> 
    1/(q[i]^2)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2)^4 - 
    3 sp[p[j], p[j]]/(q[i]^2)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2)^5,

  1/((q[i_] - p[j_])^2)^4 :> 
    1/(q[i]^2)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2)^5 - 
    4 sp[p[j], p[j]]/(q[i]^2)^5 + 
    32 sp[q[i], p[j]]^2/(q[i]^2)^6,

  1/((q[i_] + p[j_])^2) :> 
    1/(q[i]^2) + 
    2 sp[q[i], p[j]]/(q[i]^2)^2 + 
    sp[p[j], p[j]]/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]^2/(q[i]^2)^3,

  1/((q[i_] + p[j_])^2)^2 :> 
    1/(q[i]^2)^2 + 
    4 sp[q[i], p[j]]/(q[i]^2)^3 + 
    2 sp[p[j], p[j]]/(q[i]^2)^3 + 
    12 sp[q[i], p[j]]^2/(q[i]^2)^4,

  1/((q[i_] + p[j_])^2)^3 :> 
    1/(q[i]^2)^3 + 
    6 sp[q[i], p[j]]/(q[i]^2)^4 + 
    3 sp[p[j], p[j]]/(q[i]^2)^4 + 
    18 sp[q[i], p[j]]^2/(q[i]^2)^5,

  1/((q[i_] + p[j_])^2)^4 :> 
    1/(q[i]^2)^4 + 
    8 sp[q[i], p[j]]/(q[i]^2)^5 + 
   4 sp[p[j], p[j]]/(q[i]^2)^5 + 
   32 sp[q[i], p[j]]^2/(q[i]^2)^6
}



(* ::Section:: *)
(*reduction  to  masters*)


mf1=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf1.m"]/.
{G[a_,b_]->mtad[{m1,0,0},b]};

mf2=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf2.m"]/.
{G[a_,b_]->mtad[{0,m1,0},b]};

mf3=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf3.m"]/.
{G[a_,b_]->mtad[{0,0,m1},b]};

mf4=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf4.m"]/.
{G[a_,b_]->mtad[{m1,m1,0},b]};

mf5=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf5.m"]/.
{G[a_,b_]->mtad[{0,m1,m1},b]};

mf6=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf6.m"]/.
{G[a_,b_]->mtad[{m1,0,m1},b]};

mf7=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf7.m"]/.
{G[a_,b_]->mtad[{m1,m2,0},b]};

mf8=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf8.m"]/.
{G[a_,b_]->mtad[{0,m1,m2},b]};

mf9=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf9.m"]/.
{G[a_,b_]->mtad[{m1,0,m2},b]};

mf10=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf10.m"]/.
{G[a_,b_]->mtad[{m1,m1,m2},b]};

mf12=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf12.m"]/.
{G[a_,b_]->mtad[{m1,m2,m1},b]};

mf13=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersf13.m"]/.
{G[a_,b_]->mtad[{m1,m2,m3},b]};


mf1a = Table[
  ReplacePart[mf1[[i]], 1 -> mf1[[i, 1]] /. mtad[{m1 , 0, 0}, a_] :> mtad[{m1_ /; m1 =!=0, 0, 0}, a]],
  {i, Length[mf1]}
];

mf2a=Table[
  ReplacePart[mf2[[i]], 1 -> mf2[[i, 1]] /. mtad[{0, m1, 0}, a_] :> mtad[{0, m1_ /; m1 =!=0, 0},a]],
  {i, Length[mf2]}
];

mf3a=Table[
  ReplacePart[mf3[[i]], 1 -> mf3[[i, 1]] /. mtad[{0, 0, m1}, a_] :> mtad[{0, 0, m1_ /; m1 =!=0},a]],
  {i, Length[mf3]}
];

mf4a=Table[
  ReplacePart[mf4[[i]], 1 -> mf4[[i, 1]]/. mtad[{m1,m1,0},a_] :> mtad[{m1_ /; m1 =!=0,m1_ /; m1 =!=0,0},a]],
  {i, Length[mf4]}
];

mf5a=Table[
  ReplacePart[mf5[[i]], 1 -> mf5[[i, 1]]/. mtad[{0,m1,m1},a_] :> mtad[{0,m1_ /; m1 =!=0,m1_ /; m1 =!=0},a]],
  {i, Length[mf5]}
];

mf6a=Table[
  ReplacePart[mf6[[i]], 1 -> mf6[[i, 1]]/. mtad[{m1,0,m1},a_] :> mtad[{m1_/; m1 =!=0,0,m1_/; m1 =!=0},a]],
  {i, Length[mf6]}
];

mf7a=Table[
  ReplacePart[mf7[[i]], 1 -> mf7[[i, 1]] /. mtad[{m1,m2,0},a_] :> mtad[{m1_/; m1 =!=0,m2_/; m2 =!=0,0},a]],
  {i, Length[mf7]}
];

mf8a=Table[
  ReplacePart[mf8[[i]], 1 -> mf8[[i, 1]] /. mtad[{0,m1,m2},a_] :> mtad[{0,m1_/; m1 =!=0,m2_/; m2 =!=0},a]],
  {i, Length[mf8]}
];

mf9a=Table[
  ReplacePart[mf9[[i]], 1 -> mf9[[i, 1]] /. mtad[{m1,0,m2},a_] :> mtad[{m1_ /; m1 =!=0,0,m2_ /; m2 =!=0},a]],
  {i, Length[mf9]}
];

mf10a=Table[
  ReplacePart[mf10[[i]], 1 -> mf10[[i, 1]] /. mtad[{m1,m1,m2},a_] :> mtad[{m1_ /; m1 =!=0,m1_ /; m1 =!=0,m2_ /; m2 =!=0},a]],
  {i, Length[mf10]}
];

mf12a=Table[
  ReplacePart[mf12[[i]], 1 -> mf12[[i, 1]]/. mtad[{m1,m2,m1},a_] :> mtad[{m1_ /; m1 =!=0,m2_ /; m2 =!=0,m1_ /; m1 =!=0},a]],
  {i, Length[mf12]}
];

mf13a=Table[
  ReplacePart[mf13[[i]], 1 -> mf13[[i, 1]]/. mtad[{m1,m2,m3},a_] :> mtad[{m1_ /; m1 =!=0,m2_ /; m2 =!=0,m3_ /; m3 =!=0},a]],
  {i, Length[mf13]}
];

mf14a=Table[
  ReplacePart[mf14[[i]], 1 -> mf14[[i, 1]] /. mtad[{m1,m1,m1},a_] :> mtad[{m1_ /; m1 =!=0,m1_ /; m1 =!=0,m1_ /; m1 =!=0},a]],
  {i, Length[mf14]}
];


mf1l=Get["/home/ana/Desktop/ext_momenta/masters.m"]/.
{G[a_,b_]->mtad1loop[{m1},b]};

mf1al = Table[
  ReplacePart[mf1l[[i]], 1 -> mf1l[[i, 1]] /. mtad1loop[{m1}, a_] :> mtad1loop[{m1__ /; m1 =!=0}, a]],
  {i, Length[mf1l]}
];
