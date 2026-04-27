(* Created with the Wolfram Language : www.wolfram.com *)
Op*((3*el^6*MZ^6)/(4096*e^2*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (3*el^6*MZ^6*Log[mu]^2)/(512*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (3*el^6*Log[MW]^2)/(1024*MW^2*(1 - MW^2/MZ^2)^3*Pi^4) + 
  (el^6*MZ^4*(MW^2 - 3*MZ^2)*Log[MZ])/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (3*el^6*MZ^6*Log[MZ]^2)/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  ((5*el^6*MZ^6)/(8192*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
    (3*el^6*MZ^6*Log[mu])/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
    (3*el^6*Log[MZ])/(1024*MW^2*(1 - MW^2/MZ^2)^3*Pi^4))/e + 
  Log[mu]*((5*el^6*MZ^6)/(2048*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
    (3*el^6*Log[MZ])/(256*MW^2*(1 - MW^2/MZ^2)^3*Pi^4)) + 
  Log[MW]*((el^6*MZ^4*(-2*MW^2 + MZ^2))/(2048*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
    (3*el^6*MZ^6*Log[MZ])/(512*MW^2*(MW^2 - MZ^2)^3*Pi^4)) + 
  (el^6*MZ^2*(4*MW^6*Pi^2 - 6*MW^4*MZ^2*(4 + Pi^2) + 
     3*MW^2*MZ^4*(17 + 2*Pi^2) - 6*(-4*MW^2*MZ + MZ^3)^2*Phi[MZ^2/(4*MW^2)] - 
     12*(2*MW^6 - 3*MW^4*MZ^2 + MZ^6)*PolyLog[2, 1 - MZ^2/MW^2]))/
   (49152*MW^4*(MW^2 - MZ^2)^3*Pi^4))
