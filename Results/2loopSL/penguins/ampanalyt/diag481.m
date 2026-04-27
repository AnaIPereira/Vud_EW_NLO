(* Created with the Wolfram Language : www.wolfram.com *)
Op*((27*el^6*MZ^4)/(8192*e^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (27*el^6*MZ^4*Log[mu]^2)/(1024*(MW^2 - MZ^2)^3*Pi^4) + 
  (9*el^6*MZ^2*(MW^4 + 6*MW^2*MZ^2 - 3*MZ^4)*Log[MW]^2)/
   (2048*(MW^2 - MZ^2)^4*Pi^4) + (9*el^6*MZ^4*(2*MW^2 + 15*MZ^2)*Log[MZ])/
   (4096*(MW^2 - MZ^2)^4*Pi^4) + (9*el^6*MZ^2*(MW^4 - 9*MZ^4)*Log[MZ]^2)/
   (2048*(MW^2 - MZ^2)^4*Pi^4) + 
  ((153*el^6*MZ^4)/(16384*(MW^2 - MZ^2)^3*Pi^4) + (27*el^6*MZ^4*Log[mu])/
     (2048*(MW^2 - MZ^2)^3*Pi^4) - (27*el^6*MW^2*MZ^4*Log[MW])/
     (2048*(MW^2 - MZ^2)^4*Pi^4) + (27*el^6*MZ^6*Log[MZ])/
     (2048*(MW^2 - MZ^2)^4*Pi^4))/e + 
  Log[mu]*((153*el^6*MZ^4)/(4096*(MW^2 - MZ^2)^3*Pi^4) - 
    (27*el^6*MW^2*MZ^4*Log[MW])/(512*(MW^2 - MZ^2)^4*Pi^4) + 
    (27*el^6*MZ^6*Log[MZ])/(512*(MW^2 - MZ^2)^4*Pi^4)) + 
  Log[MW]*((9*el^6*MZ^4*(-19*MW^2 + 2*MZ^2))/(4096*(MW^2 - MZ^2)^4*Pi^4) - 
    (9*el^6*MZ^2*(MW^4 - 3*MZ^4)*Log[MZ])/(1024*(MW^2 - MZ^2)^4*Pi^4)) + 
  (9*el^6*MZ^2*(-4*(MW^6 - 2*MW^4*MZ^2 - 8*MW^2*MZ^4)*Phi[MW^2/(4*MZ^2)] - 
     4*(-4*MW^2*MZ + MZ^3)^2*Phi[MZ^2/(4*MW^2)] + 
     (MW^2 - MZ^2)*(MW^2*MZ^2*(77 + 2*Pi^2) + 8*(MW^2 - MZ^2)^2*
        PolyLog[2, 1 - MZ^2/MW^2])))/(32768*MW^2*(MW^2 - MZ^2)^4*Pi^4))
