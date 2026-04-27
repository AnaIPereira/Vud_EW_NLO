(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^4*Log[MW]^2)/(2048*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (el^6*MZ^6*(MW^4 + MW^2*MZ^2 + MZ^4)*Log[MZ])/(2048*MW^4*(MW^2 - MZ^2)^4*
    Pi^4) + (el^6*MZ^4*(MW^4 - 2*MW^2*MZ^2 - 3*MZ^4)*Log[MZ]^2)/
   (2048*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
  ((el^6*MZ^6)/(4096*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^8*Log[MW])/(2048*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MZ^8*Log[MZ])/(2048*MW^2*(MW^2 - MZ^2)^4*Pi^4))/e + 
  Log[mu]*((el^6*MZ^6)/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^8*Log[MW])/(512*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MZ^8*Log[MZ])/(512*MW^2*(MW^2 - MZ^2)^4*Pi^4)) + 
  Log[MW]*(-1/2048*(el^6*MZ^6*(3*MW^4 - MW^2*MZ^2 + MZ^4))/
      (MW^4*(MW^2 - MZ^2)^4*Pi^4) + (el^6*MZ^4*(-MW^4 + 2*MW^2*MZ^2 + MZ^4)*
      Log[MZ])/(1024*MW^2*(MW^2 - MZ^2)^4*Pi^4)) + 
  (el^6*MZ^4*(-((MW^8 - 4*MW^6*MZ^2)*Phi[MW^2/(4*MZ^2)]) + 
     (-10*MW^6*MZ^2 + 12*MW^4*MZ^4 - 6*MW^2*MZ^6 + MZ^8)*Phi[MZ^2/(4*MW^2)] + 
     2*(MW^2 - MZ^2)*(4*MW^4*MZ^2 - MW^2*MZ^4 + (MW^2 - MZ^2)^3*
        PolyLog[2, 1 - MZ^2/MW^2])))/(8192*MW^6*(MW^2 - MZ^2)^4*Pi^4))
