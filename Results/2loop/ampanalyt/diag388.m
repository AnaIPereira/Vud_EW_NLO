(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*(-4*MH^4*MW^2 + 8*MH^2*MW^4 - 4*MW^6 + 4*MH^4*MZ^2 - 
     8*MH^2*MW^2*MZ^2 + 4*MW^4*MZ^2 + 8*MH^4*MW^2*sw^2 - 16*MH^2*MW^4*sw^2 + 
     8*MW^6*sw^2 - 8*MH^4*MZ^2*sw^2 + 16*MH^2*MW^2*MZ^2*sw^2 - 
     8*MW^4*MZ^2*sw^2)*Log[MH]^2)/(8192*cw^2*MW^4*MZ^2*(MW^2 - MZ^2)*Pi^4*
    sw^4) + (el^6*(4*MH^4*MZ^2 - 12*MH^2*MW^2*MZ^2 - 8*MH^4*MZ^2*sw^2 + 
     24*MH^2*MW^2*MZ^2*sw^2)*Log[MW]^2)/(8192*cw^2*MW^4*MZ^2*(MW^2 - MZ^2)*
    Pi^4*sw^4) + (el^6*(-4*MH^2*MW^2*MZ^2 + 4*MW^4*MZ^2 + 
     8*MH^2*MW^2*MZ^2*sw^2 - 8*MW^4*MZ^2*sw^2)*Log[MZ])/
   (8192*cw^2*MW^4*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
  Log[MW]*((el^6*(4*MH^2*MW^2*MZ^2 - 4*MW^4*MZ^2 - 8*MH^2*MW^2*MZ^2*sw^2 + 
       8*MW^4*MZ^2*sw^2))/(8192*cw^2*MW^4*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
    (el^6*(-4*MH^4*MW^2 + 8*MH^2*MW^4 - 4*MW^6 + 4*MH^2*MW^2*MZ^2 + 
       4*MW^4*MZ^2 + 8*MH^4*MW^2*sw^2 - 16*MH^2*MW^4*sw^2 + 8*MW^6*sw^2 - 
       8*MH^2*MW^2*MZ^2*sw^2 - 8*MW^4*MZ^2*sw^2)*Log[MZ])/
     (8192*cw^2*MW^4*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4)) + 
  Log[MH]*((el^6*(4*MH^4*MW^2 - 8*MH^2*MW^4 + 4*MW^6 - 8*MH^4*MZ^2 + 
       20*MH^2*MW^2*MZ^2 - 4*MW^4*MZ^2 - 8*MH^4*MW^2*sw^2 + 
       16*MH^2*MW^4*sw^2 - 8*MW^6*sw^2 + 16*MH^4*MZ^2*sw^2 - 
       40*MH^2*MW^2*MZ^2*sw^2 + 8*MW^4*MZ^2*sw^2)*Log[MW])/
     (8192*cw^2*MW^4*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
    (el^6*(4*MH^4*MW^2 - 8*MH^2*MW^4 + 4*MW^6 - 4*MH^2*MW^2*MZ^2 - 
       4*MW^4*MZ^2 - 8*MH^4*MW^2*sw^2 + 16*MH^2*MW^4*sw^2 - 8*MW^6*sw^2 + 
       8*MH^2*MW^2*MZ^2*sw^2 + 8*MW^4*MZ^2*sw^2)*Log[MZ])/
     (8192*cw^2*MW^4*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4)) + 
  (el^6*(-(MH^4*MZ^2*Phi[MH^2/(4*MW^2)]) + 5*MH^2*MW^2*MZ^2*
      Phi[MH^2/(4*MW^2)] - 4*MW^4*MZ^2*Phi[MH^2/(4*MW^2)] + 
     2*MH^4*MZ^2*sw^2*Phi[MH^2/(4*MW^2)] - 10*MH^2*MW^2*MZ^2*sw^2*
      Phi[MH^2/(4*MW^2)] + 8*MW^4*MZ^2*sw^2*Phi[MH^2/(4*MW^2)] - 
     2*MH^4*MW^2*PolyLog[2, 1 - MW^2/MH^2] + 
     4*MH^2*MW^4*PolyLog[2, 1 - MW^2/MH^2] - 
     2*MW^6*PolyLog[2, 1 - MW^2/MH^2] + 2*MH^4*MZ^2*
      PolyLog[2, 1 - MW^2/MH^2] - 4*MH^2*MW^2*MZ^2*
      PolyLog[2, 1 - MW^2/MH^2] + 2*MW^4*MZ^2*PolyLog[2, 1 - MW^2/MH^2] + 
     4*MH^4*MW^2*sw^2*PolyLog[2, 1 - MW^2/MH^2] - 
     8*MH^2*MW^4*sw^2*PolyLog[2, 1 - MW^2/MH^2] + 
     4*MW^6*sw^2*PolyLog[2, 1 - MW^2/MH^2] - 4*MH^4*MZ^2*sw^2*
      PolyLog[2, 1 - MW^2/MH^2] + 8*MH^2*MW^2*MZ^2*sw^2*
      PolyLog[2, 1 - MW^2/MH^2] - 4*MW^4*MZ^2*sw^2*
      PolyLog[2, 1 - MW^2/MH^2] + MH^2*MW^2*MZ^2*Psi[MH^2/MZ^2, MW^2/MZ^2] - 
     MW^4*MZ^2*Psi[MH^2/MZ^2, MW^2/MZ^2] - 2*MH^2*MW^2*MZ^2*sw^2*
      Psi[MH^2/MZ^2, MW^2/MZ^2] + 2*MW^4*MZ^2*sw^2*
      Psi[MH^2/MZ^2, MW^2/MZ^2]))/(8192*cw^2*MW^4*MZ^2*(MW^2 - MZ^2)*Pi^4*
    sw^4))
