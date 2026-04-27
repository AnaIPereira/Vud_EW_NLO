(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MW^2)/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (el^6*MZ^2)/(4096*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (el^6*MZ^4)/(4096*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (el^6*MW^2)/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (el^6*MZ^2)/(4096*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (el^6*MZ^4)/(4096*cw^2*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  ((el^6*MW^2)/(512*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW^4)/(2048*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^2)/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MW^4)/(2048*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^2)/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MW]^2 + 
  (-1/2048*(el^6*MW^2)/((MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (5*el^6*MZ^2)/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MZ^4)/(2048*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MW^2)/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (5*el^6*MZ^2)/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MZ^4)/(2048*cw^2*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ] + 
  ((el^6*MW^2)/(512*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW^4)/(2048*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (3*el^6*MZ^2)/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MW^4)/(2048*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (3*el^6*MZ^2)/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ]^2 + 
  Log[mu]*((el^6*MW^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MZ^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (-1/512*(el^6*MZ^2)/((MW^2 - MZ^2)^2*Pi^4*sw^4) + 
      (el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MW] + 
    ((el^6*MZ^2)/(512*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
      (el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ]) + 
  Log[MW]*(-1/2048*(el^6*MW^2)/((MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (3*el^6*MZ^2)/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^4)/(2048*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MW^2)/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (3*el^6*MZ^2)/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^4)/(2048*cw^2*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (-1/256*(el^6*MW^2)/((MW^2 - MZ^2)^2*Pi^4*sw^4) + 
      (el^6*MW^4)/(1024*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
      (el^6*MZ^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
      (el^6*MW^2)/(256*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
      (el^6*MW^4)/(1024*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
      (el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ]) + 
  (-1/4096*(el^6*MW^2*(-cw^2 + sw^2))/(cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^2*(-cw^2 + sw^2))/(4096*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^2*(-cw^2 + sw^2)*Log[MW])/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*
      sw^4) - (el^6*MZ^2*(-cw^2 + sw^2)*Log[MZ])/(2048*cw^2*(MW^2 - MZ^2)^2*
      Pi^4*sw^4))/e - (3*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/
   (4096*(MW^2 - MZ^2)^2*Pi^4*sw^4) + (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
   (8192*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + (el^6*MZ^2*Phi[MW^2/(4*MZ^2)])/
   (1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) + (3*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/
   (4096*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
   (8192*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
  (el^6*MZ^2*Phi[MW^2/(4*MZ^2)])/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (3*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
  (3*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(4096*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(8192*MW^4*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (3*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
  (3*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(4096*cw^2*MW^2*(MW^2 - MZ^2)^2*Pi^4*
    sw^2) + (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(8192*cw^2*MW^4*(MW^2 - MZ^2)^2*
    Pi^4*sw^2) + (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
   (1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) - (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (4096*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (3*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
  (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(1024*MW^2*(MW^2 - MZ^2)^2*Pi^4*
    sw^4) - (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/
   (4096*MW^4*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*
    sw^2) + (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (4096*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (3*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*
    sw^2) - (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (1024*cw^2*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^2*MW^4*(MW^2 - MZ^2)^2*Pi^4*
    sw^2))
