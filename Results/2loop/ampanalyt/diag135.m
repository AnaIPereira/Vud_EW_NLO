(* Created with the Wolfram Language : www.wolfram.com *)
Op*(((3*el^6*MW^4)/(1024*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) - 
    (9*el^6*MZ^2)/(512*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) - 
    (3*el^6*MW^4)/(2048*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) + 
    (9*el^6*MZ^2)/(1024*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*Log[MW]^2 + 
  ((3*el^6*MW^2)/(1024*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) - 
    (3*el^6*MZ^2)/(1024*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) - 
    (3*el^6*MW^2)/(2048*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
    (3*el^6*MZ^2)/(2048*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*Log[MZ] + 
  ((3*el^6*MW^4)/(1024*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) - 
    (9*el^6*MZ^2)/(512*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) - 
    (3*el^6*MW^4)/(2048*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) + 
    (9*el^6*MZ^2)/(1024*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*Log[MZ]^2 + 
  Log[MW]*((-3*el^6*MW^2)/(1024*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) + 
    (3*el^6*MZ^2)/(1024*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) + 
    (3*el^6*MW^2)/(2048*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
    (3*el^6*MZ^2)/(2048*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
    ((-3*el^6*MW^4)/(512*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) + 
      (9*el^6*MZ^2)/(256*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) + 
      (3*el^6*MW^4)/(1024*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) - 
      (9*el^6*MZ^2)/(512*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*Log[MZ]) + 
  (27*el^6*MW^2*Phi[1/4])/(4096*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) - 
  (27*el^6*MW^2*Phi[1/4])/(8192*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
  (3*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(2048*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) - 
  (3*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(4096*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*
    Pi^4) + (3*el^6*MZ^2*Phi[MW^2/(4*MZ^2)])/(512*cw^2*(MW - MZ)^2*
    (MW + MZ)^2*Pi^4) - (3*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/
   (4096*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
  (3*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(8192*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*
    Pi^4*sw^2) - (3*el^6*MZ^2*Phi[MW^2/(4*MZ^2)])/
   (1024*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
  (21*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(1024*cw^2*(MW - MZ)^2*(MW + MZ)^2*
    Pi^4) + (33*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(4096*cw^2*(MW - MZ)^2*
    (MW + MZ)^2*Pi^4) - (3*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/
   (4096*cw^2*MW^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) + 
  (21*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(2048*cw^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*
    sw^2) - (33*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(8192*cw^2*(MW - MZ)^2*
    (MW + MZ)^2*Pi^4*sw^2) + (3*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/
   (8192*cw^2*MW^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
  (9*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^2*(MW - MZ)^2*(MW + MZ)^2*
    Pi^4) + (3*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (2048*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) + 
  (9*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^2*(MW - MZ)^2*(MW + MZ)^2*
    Pi^4) - (3*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (2048*cw^2*MW^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4) + 
  (9*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^2*(MW - MZ)^2*(MW + MZ)^2*
    Pi^4*sw^2) - (3*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (4096*cw^2*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) - 
  (9*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^2*(MW - MZ)^2*(MW + MZ)^2*
    Pi^4*sw^2) + (3*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (4096*cw^2*MW^2*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2))
