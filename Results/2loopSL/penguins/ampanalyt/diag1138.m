(* Created with the Wolfram Language : www.wolfram.com *)
Op*((9*el^6*MZ^2)/(4096*e^2*(MW^2 - MZ^2)^2*Pi^4) + 
  (9*el^6*MZ^2*Log[mu]^2)/(512*(MW^2 - MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*(169*MW^2 + 162*MZ^2)*Log[MW])/(6144*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (9*el^6*MZ^2*Log[MW]^2)/(512*(MW^2 - MZ^2)^2*Pi^4) + 
  Log[mu]*(-1/6144*(el^6*MZ^2*(169*MW^2 + 216*MZ^2))/
      ((MW^3 - MW*MZ^2)^2*Pi^4) - (9*el^6*MZ^2*Log[MW])/
     (256*(MW^2 - MZ^2)^2*Pi^4)) + 
  (-1/24576*(el^6*MZ^2*(169*MW^2 + 216*MZ^2))/((MW^3 - MW*MZ^2)^2*Pi^4) + 
    (9*el^6*MZ^2*Log[mu])/(1024*(MW^2 - MZ^2)^2*Pi^4) - 
    (9*el^6*MZ^2*Log[MW])/(1024*(MW^2 - MZ^2)^2*Pi^4))/e + 
  (9*el^6*MZ^4*Log[MZ])/(1024*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*(-283*MW^4 - 312*MW^2*MZ^2 + 6*MW^4*Pi^2 + 
     36*(2*MW^4 + 2*MW^2*MZ^2 - MZ^4)*Phi[MZ^2/(4*MW^2)] + 
     72*(MW^4 - MZ^4)*PolyLog[2, 1 - MZ^2/MW^2]))/
   (16384*MW^4*(MW^2 - MZ^2)^2*Pi^4))
