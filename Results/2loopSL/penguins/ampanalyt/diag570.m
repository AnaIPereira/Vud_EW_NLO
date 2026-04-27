(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^2*(2*MW^4 - 5*MW^2*MZ^2 - 3*MZ^4)*Log[MW]^2)/
   (6144*MW^2*(MW^2 - MZ^2)^3*Pi^4) + (el^6*MZ^4*(2*MW^2 + MZ^2)*Log[MZ])/
   (6144*MW^4*(MW^2 - MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*(2*MW^4 - 5*MW^2*MZ^2 - 3*MZ^4)*Log[MZ]^2)/
   (6144*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  Log[MW]*(-1/6144*(el^6*MZ^4*(2*MW^2 + MZ^2))/(MW^4*(MW^2 - MZ^2)^2*Pi^4) + 
    (el^6*MZ^2*(-2*MW^4 + 5*MW^2*MZ^2 + 3*MZ^4)*Log[MZ])/
     (3072*MW^2*(MW^2 - MZ^2)^3*Pi^4)) + 
  (el^6*MZ^2*(2*MW^2 + MZ^2)*(-((MW^4 - 4*MW^2*MZ^2)*Phi[MW^2/(4*MZ^2)]) + 
     (-4*MW^2*MZ^2 + MZ^4)*Phi[MZ^2/(4*MW^2)] + 2*(MW^2 - MZ^2)^2*
      PolyLog[2, 1 - MZ^2/MW^2]))/(24576*MW^6*(MW^2 - MZ^2)^2*Pi^4))
