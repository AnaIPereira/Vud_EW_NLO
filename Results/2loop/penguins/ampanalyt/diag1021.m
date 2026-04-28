(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^2*(2*MW^2 + MZ^2)*Log[MW]^2)/(6144*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (el^6*MZ^4*(2*MW^6 + 3*MW^4*MZ^2 + 3*MW^2*MZ^4 + MZ^6)*Log[MZ])/
   (6144*MW^4*(MW^2 - MZ^2)^4*Pi^4) - 
  (el^6*MZ^2*(-2*MW^6 + 3*MW^4*MZ^2 + 8*MW^2*MZ^4 + 3*MZ^6)*Log[MZ]^2)/
   (6144*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
  ((el^6*MZ^4*(2*MW^2 + MZ^2))/(12288*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^6*(2*MW^2 + MZ^2)*Log[MW])/(6144*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MZ^6*(2*MW^2 + MZ^2)*Log[MZ])/(6144*MW^2*(MW^2 - MZ^2)^4*Pi^4))/e + 
  Log[mu]*((el^6*MZ^4*(2*MW^2 + MZ^2))/(3072*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^6*(2*MW^2 + MZ^2)*Log[MW])/(1536*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MZ^6*(2*MW^2 + MZ^2)*Log[MZ])/(1536*MW^2*(MW^2 - MZ^2)^4*Pi^4)) + 
  Log[MW]*(-1/6144*(el^6*MZ^4*(6*MW^6 + MW^4*MZ^2 + MW^2*MZ^4 + MZ^6))/
      (MW^4*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MZ^2*(-2*MW^6 + 3*MW^4*MZ^2 + 4*MW^2*MZ^4 + MZ^6)*Log[MZ])/
     (3072*MW^2*(MW^2 - MZ^2)^4*Pi^4)) + 
  (el^6*MZ^2*(2*MW^2 + MZ^2)*(-((MW^8 - 4*MW^6*MZ^2)*Phi[MW^2/(4*MZ^2)]) + 
     (-10*MW^6*MZ^2 + 12*MW^4*MZ^4 - 6*MW^2*MZ^6 + MZ^8)*Phi[MZ^2/(4*MW^2)] + 
     2*(MW^2 - MZ^2)*(4*MW^4*MZ^2 - MW^2*MZ^4 + (MW^2 - MZ^2)^3*
        PolyLog[2, 1 - MZ^2/MW^2])))/(24576*MW^6*(MW^2 - MZ^2)^4*Pi^4))
