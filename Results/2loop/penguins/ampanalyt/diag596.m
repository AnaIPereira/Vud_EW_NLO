(* Created with the Wolfram Language : www.wolfram.com *)
Op*((-3*el^6*MZ^6*Log[MW]^2)/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (el^6*MZ^4*(MW^2 - 3*MZ^2)*Log[MZ])/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (el^6*MZ^6*Log[MZ]^2)/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  Log[mu]*(-1/512*(el^6*MZ^4)/((MW^3 - MW*MZ^2)^2*Pi^4) + 
    (el^6*MZ^6*Log[MW])/(256*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^6*Log[MZ])/(256*MW^2*(MW^2 - MZ^2)^3*Pi^4)) + 
  (-1/2048*(el^6*MZ^4)/((MW^3 - MW*MZ^2)^2*Pi^4) + 
    (el^6*MZ^6*Log[MW])/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^6*Log[MZ])/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4))/e + 
  Log[MW]*((el^6*MZ^4*(MW^2 + MZ^2))/(1024*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
    (el^6*MZ^6*Log[MZ])/(512*MW^2*(MW^2 - MZ^2)^3*Pi^4)) + 
  (el^6*MZ^2*(MW^2*Pi^2 - MZ^2*(12 + Pi^2) - 6*(MW^2 - MZ^2)*
      PolyLog[2, 1 - MZ^2/MW^2]))/(12288*(MW^3 - MW*MZ^2)^2*Pi^4))
