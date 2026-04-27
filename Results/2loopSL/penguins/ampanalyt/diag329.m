(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*(4*MW^6 - MW^4*MZ^2 - 24*MW^2*MZ^4 + 6*MZ^6)*Log[MW]^2)/
   (2048*MW^2*(MW - MZ)^3*(MW + MZ)^3*Pi^4) + 
  (el^6*(4*MW^2*MZ^2 - MZ^4)*Log[MZ])/(2048*MW^2*(MW - MZ)^2*(MW + MZ)^2*
    Pi^4) + (el^6*(4*MW^6 - MW^4*MZ^2 - 24*MW^2*MZ^4 + 6*MZ^6)*Log[MZ]^2)/
   (2048*MW^2*(MW - MZ)^3*(MW + MZ)^3*Pi^4) + 
  Log[MW]*((el^6*MZ^2*(-4*MW^2 + MZ^2))/(2048*MW^2*(MW - MZ)^2*(MW + MZ)^2*
      Pi^4) - (el^6*(4*MW^6 - MW^4*MZ^2 - 24*MW^2*MZ^4 + 6*MZ^6)*Log[MZ])/
     (1024*MW^2*(MW - MZ)^3*(MW + MZ)^3*Pi^4)) - 
  (el^6*(4*MW^2 - MZ^2)*(-9*MW^4*MZ^2*Phi[1/4] + 
     (MW^6 - 2*MW^4*MZ^2 - 8*MW^2*MZ^4)*Phi[MW^2/(4*MZ^2)] + 
     (28*MW^4*MZ^2 - 11*MW^2*MZ^4 + MZ^6)*Phi[MZ^2/(4*MW^2)] - 
     2*MW^6*PolyLog[2, 1 - MZ^2/MW^2] + 6*MW^4*MZ^2*
      PolyLog[2, 1 - MZ^2/MW^2] - 6*MW^2*MZ^4*PolyLog[2, 1 - MZ^2/MW^2] + 
     2*MZ^6*PolyLog[2, 1 - MZ^2/MW^2]))/(8192*MW^4*(MW - MZ)^3*(MW + MZ)^3*
    Pi^4))
