(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MW*MZ)/(1024*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (5*el^6*MZ^3)/(4096*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
  (el^6*MZ^5)/(4096*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
  (el^6*MW*MZ)/(512*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (5*el^6*MZ^3)/(2048*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
  (el^6*MZ^5)/(2048*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  ((el^6*MW^3)/(2048*cw*MZ*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW*MZ)/(1024*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^3)/(2048*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW^3)/(1024*cw*MZ*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MW*MZ)/(512*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^3)/(1024*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MW]^2 + 
  ((el^6*MW*MZ)/(2048*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^3)/(2048*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^5)/(2048*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW*MZ)/(1024*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^3)/(1024*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^5)/(1024*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ] + 
  ((el^6*MW^3)/(2048*cw*MZ*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW*MZ)/(1024*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (3*el^6*MZ^3)/(2048*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW^3)/(1024*cw*MZ*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MW*MZ)/(512*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (3*el^6*MZ^3)/(1024*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ]^2 + 
  Log[mu]*((el^6*MW*MZ)/(1024*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MZ^3)/(1024*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MW*MZ)/(512*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MZ^3)/(512*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (-1/512*(el^6*MZ^3)/(cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
      (el^6*MZ^3)/(256*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MW] + 
    ((el^6*MZ^3)/(512*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
      (el^6*MZ^3)/(256*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ]) + 
  Log[MW]*((-3*el^6*MW*MZ)/(2048*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^3)/(2048*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
    (el^6*MZ^5)/(2048*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (3*el^6*MW*MZ)/(1024*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^3)/(1024*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MZ^5)/(1024*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (-1/1024*(el^6*MW^3)/(cw*MZ*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
      (el^6*MW*MZ)/(512*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
      (el^6*MZ^3)/(1024*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
      (el^6*MW^3)/(512*cw*MZ*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
      (el^6*MW*MZ)/(256*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
      (el^6*MZ^3)/(512*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ]) + 
  (-1/4096*(el^6*MW*MZ*(-1 + 2*sw^2))/(cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^3*(-1 + 2*sw^2))/(4096*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
    (el^6*MZ^3*(-1 + 2*sw^2)*Log[MW])/(2048*cw*MW*(MW^2 - MZ^2)^2*Pi^4*
      sw^4) - (el^6*MZ^3*(-1 + 2*sw^2)*Log[MZ])/(2048*cw*MW*(MW^2 - MZ^2)^2*
      Pi^4*sw^4))/e - (el^6*MW^3*Phi[MW^2/(4*MZ^2)])/
   (8192*cw*MZ*(MW^2 - MZ^2)^2*Pi^4*sw^4) + (el^6*MW*MZ*Phi[MW^2/(4*MZ^2)])/
   (2048*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) + (el^6*MW^3*Phi[MW^2/(4*MZ^2)])/
   (4096*cw*MZ*(MW^2 - MZ^2)^2*Pi^4*sw^2) - (el^6*MW*MZ*Phi[MW^2/(4*MZ^2)])/
   (1024*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) - (5*el^6*MW*MZ*Phi[MZ^2/(4*MW^2)])/
   (4096*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) + (3*el^6*MZ^3*Phi[MZ^2/(4*MW^2)])/
   (2048*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^4) - (3*el^6*MZ^5*Phi[MZ^2/(4*MW^2)])/
   (4096*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^4) + (el^6*MZ^7*Phi[MZ^2/(4*MW^2)])/
   (8192*cw*MW^5*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
  (5*el^6*MW*MZ*Phi[MZ^2/(4*MW^2)])/(2048*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
  (3*el^6*MZ^3*Phi[MZ^2/(4*MW^2)])/(1024*cw*MW*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (3*el^6*MZ^5*Phi[MZ^2/(4*MW^2)])/(2048*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
  (el^6*MZ^7*Phi[MZ^2/(4*MW^2)])/(4096*cw*MW^5*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (el^6*MW^3*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw*MZ*(MW^2 - MZ^2)^2*Pi^4*
    sw^4) - (el^6*MW*MZ*PolyLog[2, 1 - MZ^2/MW^2])/
   (1024*cw*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
  (3*el^6*MZ^3*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw*MW*(MW^2 - MZ^2)^2*Pi^4*
    sw^4) - (el^6*MZ^5*PolyLog[2, 1 - MZ^2/MW^2])/
   (1024*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
  (el^6*MZ^7*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw*MW^5*(MW^2 - MZ^2)^2*Pi^4*
    sw^4) - (el^6*MW^3*PolyLog[2, 1 - MZ^2/MW^2])/
   (2048*cw*MZ*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (el^6*MW*MZ*PolyLog[2, 1 - MZ^2/MW^2])/(512*cw*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
  (3*el^6*MZ^3*PolyLog[2, 1 - MZ^2/MW^2])/(1024*cw*MW*(MW^2 - MZ^2)^2*Pi^4*
    sw^2) + (el^6*MZ^5*PolyLog[2, 1 - MZ^2/MW^2])/
   (512*cw*MW^3*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
  (el^6*MZ^7*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw*MW^5*(MW^2 - MZ^2)^2*Pi^4*
    sw^2))
