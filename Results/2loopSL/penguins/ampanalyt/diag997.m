(* Created with the Wolfram Language : www.wolfram.com *)
Op*((9*el^6*MZ^2)/(2048*e^2*(MW^2 - MZ^2)^2*Pi^4) + 
  (9*el^6*MZ^2*Log[mu]^2)/(256*(MW^2 - MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*(169*MW^2 + 162*MZ^2)*Log[MW])/(3072*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (9*el^6*MZ^2*Log[MW]^2)/(256*(MW^2 - MZ^2)^2*Pi^4) + 
  Log[mu]*(-1/3072*(el^6*MZ^2*(169*MW^2 + 216*MZ^2))/
      ((MW^3 - MW*MZ^2)^2*Pi^4) - (9*el^6*MZ^2*Log[MW])/
     (128*(MW^2 - MZ^2)^2*Pi^4)) + 
  (-1/12288*(el^6*MZ^2*(169*MW^2 + 216*MZ^2))/((MW^3 - MW*MZ^2)^2*Pi^4) + 
    (9*el^6*MZ^2*Log[mu])/(512*(MW^2 - MZ^2)^2*Pi^4) - 
    (9*el^6*MZ^2*Log[MW])/(512*(MW^2 - MZ^2)^2*Pi^4))/e + 
  (9*el^6*MZ^4*Log[MZ])/(512*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*(-283*MW^4 - 312*MW^2*MZ^2 + 6*MW^4*Pi^2 + 
     36*(2*MW^4 + 2*MW^2*MZ^2 - MZ^4)*Phi[MZ^2/(4*MW^2)] + 
     72*(MW^4 - MZ^4)*PolyLog[2, 1 - MZ^2/MW^2]))/
   (8192*MW^4*(MW^2 - MZ^2)^2*Pi^4))
