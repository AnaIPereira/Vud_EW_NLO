(* Created with the Wolfram Language : www.wolfram.com *)
Op*((3*el^6)/(4096*e*MW^2*(1 - MW^2/MZ^2)^3*Pi^4) + 
  (3*el^6*Log[mu])/(1024*MW^2*(1 - MW^2/MZ^2)^3*Pi^4) + 
  (3*el^6*MZ^4*Log[MW]^2)/(2048*MW^4*(MW^2 - MZ^2)*Pi^4) + 
  (3*el^6*MZ^6*Log[MZ])/(2048*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (3*el^6*MZ^4*Log[MZ]^2)/(2048*MW^4*(MW^2 - MZ^2)*Pi^4) + 
  Log[MW]*((3*el^6*MZ^6)/(2048*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (3*el^6*MZ^4*Log[MZ])/(1024*MW^4*(MW^2 - MZ^2)*Pi^4)) + 
  (el^6*MZ^4*(-17*MW^2*MZ^2 + MZ^4*Pi^2 - 3*(MW^4 - 4*MW^2*MZ^2)*
      Phi[MW^2/(4*MZ^2)] + 6*(MW^2 - MZ^2)^2*PolyLog[2, 1 - MZ^2/MW^2]))/
   (8192*MW^4*(MW^2 - MZ^2)^3*Pi^4))
