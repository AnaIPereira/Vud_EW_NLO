(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^2*(2*MW^2 + MZ^2))/(1024*e^2*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*(2*MW^2 + MZ^2)*Log[mu]^2)/(128*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (el^6*(2*MW^2*MZ + MZ^3)^2*Log[MW]^2)/(256*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (13*el^6*MZ^4*(2*MW^2 + MZ^2)*Log[MZ])/(1536*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
  (el^6*MZ^4*(2*MW^2 + MZ^2)*Log[MZ]^2)/(256*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  Log[MW]*((13*el^6*MZ^2*(2*MW^2 + MZ^2))/(1536*(-MW^2 + MZ^2)^3*Pi^4) - 
    (el^6*MZ^4*(2*MW^2 + MZ^2)*Log[MZ])/(128*MW^2*(MW^2 - MZ^2)^3*Pi^4)) + 
  ((13*el^6*MZ^2*(2*MW^2 + MZ^2))/(6144*(MW^3 - MW*MZ^2)^2*Pi^4) + 
    (el^6*MZ^2*(2*MW^2 + MZ^2)*Log[mu])/(256*(MW^3 - MW*MZ^2)^2*Pi^4) + 
    (el^6*MZ^2*(2*MW^2 + MZ^2)*Log[MW])/(256*(-MW^2 + MZ^2)^3*Pi^4) + 
    (el^6*MZ^4*(2*MW^2 + MZ^2)*Log[MZ])/(256*MW^2*(MW^2 - MZ^2)^3*Pi^4))/e + 
  Log[mu]*((13*el^6*MZ^2*(2*MW^2 + MZ^2))/(1536*(MW^3 - MW*MZ^2)^2*Pi^4) + 
    (el^6*MZ^2*(2*MW^2 + MZ^2)*Log[MW])/(64*(-MW^2 + MZ^2)^3*Pi^4) + 
    (el^6*MZ^4*(2*MW^2 + MZ^2)*Log[MZ])/(64*MW^2*(MW^2 - MZ^2)^3*Pi^4)) + 
  (el^6*MZ^2*(2*MW^2 + MZ^2)*((MW^2 - MZ^2)*(163 + 6*Pi^2) - 
     36*(MW^2 - 2*MZ^2)*PolyLog[2, 1 - MZ^2/MW^2]))/
   (36864*MW^2*(MW^2 - MZ^2)^3*Pi^4))
