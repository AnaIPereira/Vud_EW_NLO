(* Created with the Wolfram Language : www.wolfram.com *)
Op*((3*el^6*MZ^6)/(32768*e^2*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (3*el^6*MZ^6*Log[mu]^2)/(4096*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (3*el^6*MZ^6*(-2*MH^4 + 4*MW^4 + 7*MH^2*MZ^2 + 5*MW^2*MZ^2)*Log[MW]^2)/
   (8192*MW^2*(MW^2 - MZ^2)^5*Pi^4) + 
  (el^6*MZ^8*(68*MH^2 + 68*MW^2 - 21*MZ^2)*Log[MZ])/
   (16384*MW^2*(MW^2 - MZ^2)^5*Pi^4) + 
  (3*el^6*MZ^8*(-4*MH^2 - 4*MW^2 + MZ^2)*Log[MZ]^2)/
   (8192*MW^2*(MW^2 - MZ^2)^5*Pi^4) + 
  ((3*el^6*MZ^6*(16*MH^2 + 19*MW^2 - 7*MZ^2))/(65536*MW^2*(MW^2 - MZ^2)^4*
      Pi^4) + (3*el^6*MZ^6*Log[mu])/(8192*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (3*el^6*MZ^6*(MW^4 + 4*MH^2*MZ^2 + 2*MW^2*MZ^2)*Log[MW])/
     (8192*MW^2*(MW^2 - MZ^2)^5*Pi^4) + (3*el^6*MZ^8*(4*MH^2 + 4*MW^2 - MZ^2)*
      Log[MZ])/(8192*MW^2*(MW^2 - MZ^2)^5*Pi^4))/e + 
  Log[mu]*((3*el^6*MZ^6*(16*MH^2 + 19*MW^2 - 7*MZ^2))/
     (16384*MW^2*(MW^2 - MZ^2)^4*Pi^4) - 
    (3*el^6*MZ^6*(MW^4 + 4*MH^2*MZ^2 + 2*MW^2*MZ^2)*Log[MW])/
     (2048*MW^2*(MW^2 - MZ^2)^5*Pi^4) + (3*el^6*MZ^8*(4*MH^2 + 4*MW^2 - MZ^2)*
      Log[MZ])/(2048*MW^2*(MW^2 - MZ^2)^5*Pi^4)) + 
  Log[MW]*(-1/16384*(el^6*MZ^6*(57*MW^4 - 10*MW^2*MZ^2 + 
        4*MH^2*(9*MW^2 + 8*MZ^2)))/(MW^2*(MW^2 - MZ^2)^5*Pi^4) + 
    (3*el^6*MZ^6*(2*MH^4 - 2*MW^4 - 3*MH^2*MZ^2 - 5*MW^2*MZ^2 + MZ^4)*
      Log[MZ])/(8192*MW^2*(MW^2 - MZ^2)^5*Pi^4)) + 
  Log[MH]*((-3*el^6*MH^2*MZ^6)/(4096*MW^2*(MW^2 - MZ^2)^4*Pi^4) - 
    (3*el^6*MZ^6*(-2*MH^4 + 2*MW^4 - 5*MH^2*MZ^2 - 3*MW^2*MZ^2 + MZ^4)*
      Log[MW])/(8192*MW^2*(MW^2 - MZ^2)^5*Pi^4) + 
    (3*el^6*MZ^6*(-2*MH^4 + 2*MW^4 - 5*MH^2*MZ^2 - 3*MW^2*MZ^2 + MZ^4)*
      Log[MZ])/(8192*MW^2*(MW^2 - MZ^2)^5*Pi^4)) + 
  (el^6*MZ^6*((MW^2 - MZ^2)*(272*MH^2 - MZ^2*(105 + 2*Pi^2) + 
       MW^2*(293 + 2*Pi^2)) + 12*(2*MH^4 - 7*MW^4 + 3*MW^2*MZ^2 - 
       MH^2*(4*MW^2 + 3*MZ^2))*Phi[MH^2/(4*MW^2)] + 
     12*MZ^2*(-2*MH^2 - 2*MW^2 + MZ^2)*Psi[MH^2/MZ^2, MW^2/MZ^2]))/
   (131072*MW^2*(MW^2 - MZ^2)^5*Pi^4))
