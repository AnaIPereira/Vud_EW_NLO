(* Created with the Wolfram Language : www.wolfram.com *)
Op*(((8*el^6*MH^2*MW^4 - 4*el^6*MW^6 - 16*el^6*MH^2*MW^2*MZ^2 + 
     4*el^6*MW^4*MZ^2 + 8*el^6*MH^2*MZ^4 + 4*el^6*MW^2*MZ^4 - 4*el^6*MZ^6)*
    Log[MH]^2)/(4096*cw^4*MW^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^4) + 
  ((4*el^6*MH^4*MZ^2 - 12*el^6*MH^2*MW^2*MZ^2)*Log[MW]^2)/
   (4096*cw^4*MW^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^4) + 
  ((4*el^6*MW^4*MZ^2 - 4*el^6*MW^2*MZ^4)*Log[MZ])/
   (4096*cw^4*MW^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^4) + 
  ((4*el^6*MH^4*MW^2 - 12*el^6*MH^2*MW^2*MZ^2)*Log[MZ]^2)/
   (4096*cw^4*MW^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^4) + 
  Log[MW]*((-4*el^6*MW^4*MZ^2 + 4*el^6*MW^2*MZ^4)/(4096*cw^4*MW^2*(MW - MZ)^2*
      MZ^2*(MW + MZ)^2*Pi^4*sw^4) + 
    ((-4*el^6*MH^4*MW^2 + 8*el^6*MH^2*MW^4 - 4*el^6*MW^6 - 4*el^6*MH^4*MZ^2 + 
       8*el^6*MH^2*MW^2*MZ^2 + 4*el^6*MW^4*MZ^2 + 8*el^6*MH^2*MZ^4 + 
       4*el^6*MW^2*MZ^4 - 4*el^6*MZ^6)*Log[MZ])/(4096*cw^4*MW^2*(MW - MZ)^2*
      MZ^2*(MW + MZ)^2*Pi^4*sw^4)) + 
  Log[MH]*(((4*el^6*MH^4*MW^2 - 8*el^6*MH^2*MW^4 + 4*el^6*MW^6 - 
       4*el^6*MH^4*MZ^2 + 16*el^6*MH^2*MW^2*MZ^2 - 4*el^6*MW^4*MZ^2 - 
       8*el^6*MH^2*MZ^4 - 4*el^6*MW^2*MZ^4 + 4*el^6*MZ^6)*Log[MW])/
     (4096*cw^4*MW^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^4) + 
    ((-4*el^6*MH^4*MW^2 - 8*el^6*MH^2*MW^4 + 4*el^6*MW^6 + 4*el^6*MH^4*MZ^2 + 
       16*el^6*MH^2*MW^2*MZ^2 - 4*el^6*MW^4*MZ^2 - 8*el^6*MH^2*MZ^4 - 
       4*el^6*MW^2*MZ^4 + 4*el^6*MZ^6)*Log[MZ])/(4096*cw^4*MW^2*(MW - MZ)^2*
      MZ^2*(MW + MZ)^2*Pi^4*sw^4)) + 
  (-(el^6*MH^4*MZ^2*Phi[MH^2/(4*MW^2)]) + 5*el^6*MH^2*MW^2*MZ^2*
     Phi[MH^2/(4*MW^2)] - 4*el^6*MW^4*MZ^2*Phi[MH^2/(4*MW^2)] - 
    el^6*MH^4*MW^2*Phi[MH^2/(4*MZ^2)] + 5*el^6*MH^2*MW^2*MZ^2*
     Phi[MH^2/(4*MZ^2)] - 4*el^6*MW^2*MZ^4*Phi[MH^2/(4*MZ^2)] - 
    2*el^6*MH^4*MW^2*PolyLog[2, 1 - MW^2/MH^2] + 
    4*el^6*MH^2*MW^4*PolyLog[2, 1 - MW^2/MH^2] - 
    2*el^6*MW^6*PolyLog[2, 1 - MW^2/MH^2] + 2*el^6*MH^4*MZ^2*
     PolyLog[2, 1 - MW^2/MH^2] - 4*el^6*MH^2*MW^2*MZ^2*
     PolyLog[2, 1 - MW^2/MH^2] + 2*el^6*MW^4*MZ^2*PolyLog[2, 1 - MW^2/MH^2] + 
    2*el^6*MH^4*MW^2*PolyLog[2, 1 - MZ^2/MH^2] - 
    2*el^6*MH^4*MZ^2*PolyLog[2, 1 - MZ^2/MH^2] - 4*el^6*MH^2*MW^2*MZ^2*
     PolyLog[2, 1 - MZ^2/MH^2] + 4*el^6*MH^2*MZ^4*PolyLog[2, 1 - MZ^2/MH^2] + 
    2*el^6*MW^2*MZ^4*PolyLog[2, 1 - MZ^2/MH^2] - 
    2*el^6*MZ^6*PolyLog[2, 1 - MZ^2/MH^2] + el^6*MH^2*MW^2*MZ^2*
     Psi[MH^2/MZ^2, MW^2/MZ^2] - el^6*MW^4*MZ^2*Psi[MH^2/MZ^2, MW^2/MZ^2] + 
    el^6*MH^2*MZ^4*Psi[MH^2/MZ^2, MW^2/MZ^2] - 
    el^6*MZ^6*Psi[MH^2/MZ^2, MW^2/MZ^2])/(4096*cw^4*MW^2*(MW - MZ)^2*MZ^2*
    (MW + MZ)^2*Pi^4*sw^4))
