BeginPackage["QFTSymbols`"]

topo::usage = "topo[\"Name\"][indicies] denotes a topology" 

cP::usage = "Denotes P_R = (1+g5)/2."

cM::usage = "Denotes P_L = (1-g5)/2."

indexDelta::usage =
    "indexDelta[a,b] denotes a lie algebra kronecker delta."

eps::usage =
    "eps[a,b,c,d] dentoes the antisymmetric tensor"
    
mT::usage  =
    "mT[a,b] dentoes the metric tensor."
    
sp::usage  =
    "sp[a,b] dentoes the scalar product."
    
d::usage   =
    "d denotes the space-time dimension 4 - 2 epsilon."

m::usage   =
  "m denotes the IR regulator mass."

e::usage   =
    "e denotes the epsilon in d = 4 - 2 epsilon."
    
q::usage   =
    "q[a] denotes the ath loop momentum and q[a,b] the bth Lorentz component of the ath momentum."

k::usage   =
    "q[a] denotes the ath outgoing momentum and q[a,b] the bth Lorentz component of the ath momentum."

momQ::usage =
    "Checks if argument is an internal or external momentum, i.e. if it equals (q|k)[Integer]."

dN::usage =
    "dN[a,b,...n] denotes the product of propagtors, where each element a,b,...n is a propagtor dP."

dP::usage =
    "dP[a,b] denotes a propagtor of the form 1/(a^2-m^2), where a is a sum of momenta and b a mss."

dL::usage =
    "dL[{a,b},c...] denotes a line of Dirac objects like, e.g. gamma matrices denoted by {integer}. The first element {a,b} denotes the final and initial fermions."

dT::usage =
    "dT[a...] denotes a trace over Dirac objects like -- see dL[...] for notation."

tadpole::usuage = "denotes the tadpole integral"

contractLorentz::usuage =
    "contractLorentz[arg_] will contract all Lorentz indices of the form arg = a ( b mT[..] + c mT[..] + ...)"

contractLorentzFast::usuage =
    "contractLorentzFast[arg_] will contract all Lorentz indices, but not HV"

MT::usage = "The top mass."
MH::usage = "The Higgs mass."
MW::usage = "The W mass."

SUNT::usage =
    "SUNT[a,...,i,j] represents the product of a,... SUN generators, where i and j are the colour indices."

SUNF::usage =
    "SUNF[a,...,i,j] represents the structure constants of a lie algebra."

nC::usage =
    "denotes the dimensions of the fundamental representation of the lie algebra."

lHold::usage = "lHold holds the loop stuff";  

(* options *)

loops::usage =
    "Option set to integer the gives number of loops"

integration::usage =
    "Option to determine if integration should be performed"

fermionLines::usage =
    "Option that sepcifies number of fermion lines, 1 or 2 are implemented"

expandPower::usage =
    "Option set to integer that gives the expansion power"

multiLoopOptions = {printTime -> False,
		    expandPower -> 2,
		    loops -> 1,
		    integration -> False,
		    fermionLines -> 1,
		    ndr -> True,
		    expansion -> taylorExpansion}
  
Begin["`Private`"]

momQ = MatchQ[#, (q | k)[_Integer]] &

eps[a__] /; (Not[OrderedQ@{a}] && {Integer} == Union[Head /@ {a}]) :=
    Signature@{a}*eps @@ Sort@{a}

SetAttributes[indexDelta, Orderless];

SetAttributes[mT, Orderless];
mT /: mT[a_Integer, b_Integer]^2 := d;
mT[a_Integer, a_Integer]         := d;

SetAttributes[mt, Orderless];
mt /: mt[a_Integer, b_Integer]^2 = d;
mt[a_Integer, a_Integer]         = d;
mt /: mt[a_,b_]  mt[b_,c_]           = mt[a,c];
mt /: mt[a_, b_] dT[c__, {b_}, e___] = dT[c, {a}, e];
mt /: mt[a_, b_] dL[c__, {b_}, e___] = dL[c, {a}, e];
mt /: mt[a_, b_] qq[c_, b_]          = qq[c, a];
mt /: mt[a_, b_] kk[c_, b_]          = kk[c, a];

kk /: kk[a_, b_] dL[c__, {b_}, d___] = dL[c, kk[a], d];
kk /: kk[a_, b_] dT[c__, {b_}, d___] = dT[c, kk[a], d];
qq /: qq[a_, b_] dL[c__, {b_}, d___] = dL[c, qq[a], d];
qq /: qq[a_, b_] dT[c__, {b_}, d___] = dT[c, qq[a], d];

kk /: kk[a_,b_] kk[c_,b_] = sp[kk[a],kk[c]];
kk /: kk[a_,b_]^2         = sp[kk[a],kk[a]];
kk /: kk[a_,b_] qq[c_,b_] = sp[kk[a],qq[c]];
qq /: qq[a_,b_] qq[c_,b_] = sp[qq[a],qq[c]];
qq /: qq[a_,b_]^2         = sp[qq[a],qq[a]];

contractLorentzFast[amp_] :=
  Expand[amp /. {
    k[a__] -> kk[a], q[a__] -> qq[a], mT[a__] -> mt[a]}] /. {
      kk[a__] -> k[a], qq[a__] -> q[a], mt[a__] -> mT[a]};

contractLorentz[amp_]:=
  amp //. 
    { Plus[mT[a_, b_] c__ + d__] e__ :> mT[a,b] c e + Plus[d] e,
      mT[a_, b_] mT[a_, c_] -> mT[b, c],
      mT[a_, b_]^2 -> d,
      Plus[mTh[a_, b_] c__ + d__] e__ :> mTh[a,b] c e + Plus[d] e,
      mT[a_, b_] mTh[a_, c_] -> mTh[b, c],
      mTh[a_, b_] mTh[a_, c_] -> mTh[b, c],
      mTh[a_, b_]^2 -> d - 4,
      mT[a_, b_] dT[c__, {b_}, e___] -> dT[c, {a}, e],
      mT[a_, b_] dL[c__, {b_}, e___] -> dL[c, {a}, e],
      k[a_, b_]  dL[c__, {b_}, d___] -> dL[c, k[a], d],
      mT[a_, b_] q[c_, b_] -> q[c, a],
      mT[a_, b_] k[c_, b_] -> k[c, a],
      mT[a_, b_] sp[c_,{b_}] -> sp[c,{a}],
      mT[a_, b_] eps[c___,{a_},d___] -> eps[c,{b},d],
      mTh[a_, b_] eps[c___,{a_},d___] -> 0,
      k[a_,b_] k[c_,b_] -> sp[k[a],k[c]],
      k[a_,b_] q[c_,b_] -> sp[k[a],q[c]],
      q[a_,b_] q[c_,b_] -> sp[q[a],q[c]],
      k[a_,b_]^2 -> sp[k[a],k[a]],
      q[a_,b_]^2 -> sp[q[a],q[a]]};

SetAttributes[sp, Orderless];
sp[_,0]         =  0;
sp[-a_, b_]    := -sp[a, b];
sp[{a_},{b_}]  :=  mT[a, b];
sp[q[a_],{b_}] :=  q[a,b];
sp[k[a_],{b_}] :=  k[a,b];

End[]
    
EndPackage[]
