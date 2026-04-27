(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MH^2*(2*MH^4 - 5*MH^2*MW^2 + MW^4)*MZ^4*Log[MH]^2)/
   (1024*MW^8*(MW^2 - MZ^2)^2*Pi^4) + (el^6*MH^4*Log[MW])/
   (512*MW^6*(-1 + MW^2/MZ^2)^2*Pi^4) + 
  (el^6*MH^2*(2*MH^4 - 5*MH^2*MW^2 + MW^4)*MZ^4*Log[MW]^2)/
   (1024*MW^8*(MW^2 - MZ^2)^2*Pi^4) + 
  Log[MH]*(-1/512*(el^6*MH^4)/(MW^6*(-1 + MW^2/MZ^2)^2*Pi^4) - 
    (el^6*MH^2*(2*MH^4 - 5*MH^2*MW^2 + MW^4)*MZ^4*Log[MW])/
     (512*MW^8*(MW^2 - MZ^2)^2*Pi^4)) - 
  (el^6*MH^2*MZ^4*(4*MH^2*MW^2 - 4*MW^4 + (2*MH^4 - 9*MH^2*MW^2 + 7*MW^4)*
      Phi[MH^2/(4*MW^2)] - 2*(2*MH^4 - 5*MH^2*MW^2 + MW^4)*
      PolyLog[2, 1 - MW^2/MH^2]))/(4096*MW^8*(MW^2 - MZ^2)^2*Pi^4))
