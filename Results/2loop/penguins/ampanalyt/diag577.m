(* Created with the Wolfram Language : www.wolfram.com *)
Op*((3*el^6*(2*MW^4 - 7*MW^2*MZ^2 + 3*MZ^4)*Log[MW]^2)/
   (512*(MW^2 - MZ^2)^3*Pi^4) - (3*el^6*(-2*MW^2*MZ^2 + MZ^4)*Log[MZ])/
   (512*MW^4*(MW^2 - MZ^2)*Pi^4) + (3*el^6*(2*MW^4 - 7*MW^2*MZ^2 + 3*MZ^4)*
    Log[MZ]^2)/(512*(MW^2 - MZ^2)^3*Pi^4) + 
  Log[MW]*((3*el^6*(-2*MW^2*MZ^2 + MZ^4))/(512*MW^4*(MW^2 - MZ^2)*Pi^4) - 
    (3*el^6*(2*MW^4 - 7*MW^2*MZ^2 + 3*MZ^4)*Log[MZ])/
     (256*(MW^2 - MZ^2)^3*Pi^4)) - 
  (3*el^6*(2*MW^2 - MZ^2)*((MW^6 - 4*MW^4*MZ^2)*Phi[MW^2/(4*MZ^2)] + 
     (7*MW^4*MZ^2 - 5*MW^2*MZ^4 + MZ^6)*Phi[MZ^2/(4*MW^2)] - 
     2*(MW^2 - MZ^2)*(MW^2*MZ^2 + (MW^2 - MZ^2)^2*
        PolyLog[2, 1 - MZ^2/MW^2])))/(2048*MW^6*(MW^2 - MZ^2)^2*Pi^4))
