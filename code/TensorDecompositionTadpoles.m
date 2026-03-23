BeginPackage["TensorDecompositionTadpoles`"]

(*Needs["QFTSymbols`",$MultiLoopPath<>"QFTSymbols.m"]*)

tensorToScalar::usage = "tensorToScalar[l1,l2,...,ln] does the tensor decomposition for an n-loop massive tadpole. l1 etc are of the form {a, b}, where a is the Integer of d-dimensional loop integrations over momentum 1 and b the corresponding integration in the HV-epsilon space."

epsexp::usage = "wrapper which contains the epsilon expansion of the cofficient of the metric tensor sum."

mTsum::usage = "wrapper which contains the metric tensor sum."

contractmTsum::usage = ""

Begin["`Private`"]
Needs["QFTSymbols`"]

SetAttributes[mt, Orderless];
SetAttributes[mtp, Orderless];
mtp[a_, a_, b___] := mtp[b] d;
mtp[mt[a_, b_], mt[b_, c_], d___] := mtp[mt[a, c], d];

Clear[newMetric];
Clear[symMetric];
newMetric[a_, {b__}] := Map[Union[{a}, #] &, {b}];
symMetric[a__] := 0 /; OddQ[Length[{a}]];
symMetric[a_, b_] := {{{a, b}}};
symMetric[a_, b__] := 
  Flatten[Map[
    newMetric[{a, #}, Apply[symMetric, Complement[{b}, {#}]]] &, {b}],
    1];

tensorToScalar[a__] /; OddQ[Plus @@ Flatten@{a}] := 0;

tensorToScalar[a__] /; Plus @@ Flatten@{a} === 0 := mTsum[1];

tensorToScalar[ml__] := 
 Module[{dummy, mat, inv, mom, dir}, 
  dummy = symMetric @@ 
    Join @@ MapIndexed[
      Join[Range[100*(#2)[[1]] + 1, 100*(#2)[[1]] + (#1)[[1]]], 
        Range[1000 + 100*(#2)[[1]] + 1, 
         1000 + 100*(#2)[[1]] + (#1)[[2]]]] &, {ml}];
  dummy = 
   MapThread[
    List, {dummy /. {a_Integer, b_Integer} :> 
       sp[q[Floor[a/100]], q[Floor[b/100]]], 
     dummy /. {a_Integer, b_Integer} :> mT[a, b]}];
  dummy = 
   dummy //. {sp[q[a_Integer], q[b_Integer]] :> 
      sph[q[a - 10], q[b]] /; a > 10, 
     sph[q[a_Integer], q[b_Integer]] :> 
      sph[q[a - 10], q[b]] /; a > 10, 
     mT[a_, b_] :> mTh[a, b] /; a > 1000 || b > 1000};
  dummy = 
   Apply[Times, 
     dummy, {2}] //. {a___, {b_, c_}, d___, {b_, e_}, 
      f___} :> {a, {b, c + e}, d, f};
  mom = Part[#, 1] & /@ dummy;
  dir = Part[#, 2] & /@ dummy;
  mat = Array[
    contractMetricTensor[
      dir[[#2]]*
       If[Head[dir[[#1]]] === Plus, dir[[#1]][[1]], 
        dir[[#1]]]] &, {Length[mom], Length[mom]}];
(*  inv = Normal[Series[Inverse[mat /. d -> 4 - 2 e], {e, 0, 2}]];*)
  inv = Inverse[mat];
  Map[mTsum,dir].Map[epsexp,inv,{2}].mom]

contractMetricTensor[amp_]:=
  amp //. 
    {Plus[mT[a_, b_] c__ + d__] e__ :> mT[a,b] c e + Plus[d] e,
     mT[a_, b_] mT[a_, c_] -> mT[b, c],
     mT[a_, b_]^2 -> d,
     Plus[mTh[a_, b_] c__ + d__] e__ :> mTh[a,b] c e + Plus[d] e,
      mT[a_, b_] mTh[a_, c_] -> mTh[b, c],
     mTh[a_, b_] mTh[a_, c_] -> mTh[b, c],
     mTh[a_, b_]^2 -> d - 4(*,
     mT[a_, b_] dT[c__, {b_}, e___] -> dT[c, {a}, e],
     mT[a_, b_] dL[c__, {b_}, e___] -> dL[c, {a}, e],
     mT[a_, b_] q[c_, b_] -> q[c, a],
     mT[a_, b_] k[c_, b_] -> k[c, a],
     mT[a_, b_] sp[c_,{b_}] -> sp[c,{a}],
     mT[a_, b_] eps[c___,{a_},d___] -> eps[c,{b},d],
     mTh[a_, b_] eps[c___,{a_},d___] -> 0*)}

contractmTsum[arg_] := Block[
    {dummy,mtlist,mtrule},
    dummy = Expand[arg];
    dummy = dummy //. {
	mT[a__] mTsum[b_] -> mTsum[mT[a] b],
	dL[a__] mTsum[b_] -> mTsum[dL[a] b],
	dT[a__] mTsum[b_] -> mTsum[dT[a] b],
	k[a__]  mTsum[b_] -> mTsum[ k[a] b]};
    mtlist = Union@Cases[dummy, mTsum[__], Infinity];
    mtrule = MapThread[Rule,{mtlist,mtlist /. mTsum -> contractLorentz}];
    dummy /. mtrule ]
			    

End[]
    
EndPackage[]
