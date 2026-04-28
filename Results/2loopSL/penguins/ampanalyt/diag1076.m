(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^4*(2*MW^2 + MZ^2)*nc*NF[{MB}, {MT}])/
   (8192*e^2*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (el^6*MZ^4*(2*MW^2 + MZ^2)*nc*Log[mu]^2*NF[{MB}, {MT}])/
   (1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
  (el^6*MZ^4*(2*MW^2 + MZ^2)*(2*MT^2*(9*MW^2 + 2*MZ^2) + 
     3*(MW^4 - 6*MW^2*MZ^2))*nc*Log[MW]*NF[{MB}, {MT}])/
   (12288*MW^2*(MW^2 - MZ^2)^5*Pi^4) - 
  (el^6*MZ^4*(2*MW^2 + MZ^2)*(MT^4 - 2*MW^4 - 4*MT^2*MZ^2 + 4*MW^2*MZ^2)*nc*
    Log[MW]^2*NF[{MB}, {MT}])/(2048*MW^2*(MW^2 - MZ^2)^5*Pi^4) + 
  (el^6*MZ^6*(22*MT^2 - 15*MZ^2)*(2*MW^2 + MZ^2)*nc*Log[MZ]*NF[{MB}, {MT}])/
   (12288*MW^2*(MW^2 - MZ^2)^5*Pi^4) + 
  (el^6*MZ^4*(2*MW^2 + MZ^2)*(MT^4 - 4*MT^2*MZ^2 + 2*MZ^4)*nc*Log[MZ]^2*
    NF[{MB}, {MT}])/(2048*MW^2*(MW^2 - MZ^2)^5*Pi^4) + 
  Log[MT]*(-1/2048*(el^6*MT^2*MZ^4*(2*MW^2 + MZ^2)*nc*NF[{MB}, {MT}])/
      (MW^2*(MW^2 - MZ^2)^4*Pi^4) + (el^6*MT^4*MZ^4*(2*MW^2 + MZ^2)*nc*
      Log[MW]*NF[{MB}, {MT}])/(1024*MW^2*(MW^2 - MZ^2)^5*Pi^4) - 
    (el^6*MT^4*MZ^4*(2*MW^2 + MZ^2)*nc*Log[MZ]*NF[{MB}, {MT}])/
     (1024*MW^2*(MW^2 - MZ^2)^5*Pi^4)) + 
  Log[mu]*((el^6*MZ^4*(8*MT^2 + MW^2 - 5*MZ^2)*(2*MW^2 + MZ^2)*nc*
      NF[{MB}, {MT}])/(4096*MW^2*(MW^2 - MZ^2)^4*Pi^4) - 
    (el^6*MZ^4*(2*MW^2 + MZ^2)*(MW^4 + 2*MT^2*MZ^2 - 2*MW^2*MZ^2)*nc*Log[MW]*
      NF[{MB}, {MT}])/(512*MW^2*(MW^2 - MZ^2)^5*Pi^4) - 
    (el^6*MZ^6*(-2*MT^2 + MZ^2)*(2*MW^2 + MZ^2)*nc*Log[MZ]*NF[{MB}, {MT}])/
     (512*MW^2*(MW^2 - MZ^2)^5*Pi^4)) + 
  ((el^6*MZ^4*(8*MT^2 + MW^2 - 5*MZ^2)*(2*MW^2 + MZ^2)*nc*NF[{MB}, {MT}])/
     (16384*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MZ^4*(2*MW^2 + MZ^2)*nc*Log[mu]*NF[{MB}, {MT}])/
     (2048*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^4*(2*MW^2 + MZ^2)*(MW^4 + 2*MT^2*MZ^2 - 2*MW^2*MZ^2)*nc*Log[MW]*
      NF[{MB}, {MT}])/(2048*MW^2*(MW^2 - MZ^2)^5*Pi^4) - 
    (el^6*MZ^6*(-2*MT^2 + MZ^2)*(2*MW^2 + MZ^2)*nc*Log[MZ]*NF[{MB}, {MT}])/
     (2048*MW^2*(MW^2 - MZ^2)^5*Pi^4))/e + 
  (el^6*MZ^4*(2*MW^2 + MZ^2)*nc*NF[{MB}, {MT}]*
    ((MW^2 - MZ^2)*(88*MT^2 + MW^2*(3 + 2*Pi^2) - MZ^2*(63 + 2*Pi^2)) - 
     24*(MT^2 - MW^2)*(MT^2 + MW^2 - 2*MZ^2)*PolyLog[2, 1 - MT^2/MW^2] + 
     24*(MT^2 - MZ^2)^2*PolyLog[2, 1 - MT^2/MZ^2]))/
   (98304*MW^2*(MW^2 - MZ^2)^5*Pi^4))
