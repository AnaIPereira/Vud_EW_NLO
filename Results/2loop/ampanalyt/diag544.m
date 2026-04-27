(* Created with the Wolfram Language : www.wolfram.com *)
Op*((5*el^6*MW^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4) - 
  (5*el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4) - 
  (el^6*MW^2)/(3072*cw^2*(MW^2 - MZ^2)^2*Pi^2) + 
  (el^6*MW^4)/(6144*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^2) + 
  (el^6*MZ^2)/(6144*cw^2*(MW^2 - MZ^2)^2*Pi^2) - 
  (5*el^6*MW^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (5*el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (el^6*MW^2)/(6144*cw^2*(MW^2 - MZ^2)^2*Pi^2*sw^2) - 
  (el^6*MW^4)/(12288*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^2*sw^2) - 
  (el^6*MZ^2)/(12288*cw^2*(MW^2 - MZ^2)^2*Pi^2*sw^2) + 
  ((9*el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4) - 
    (9*el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MW]^2 + 
  ((el^6*MW^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4) + 
    (9*el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4) - 
    (el^6*MW^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (9*el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ] + 
  ((-3*el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4) + 
    (3*el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ]^2 + 
  Log[mu]*((3*el^6*MW^2)/(256*cw^2*(MW^2 - MZ^2)^2*Pi^4) - 
    (3*el^6*MZ^2)/(256*cw^2*(MW^2 - MZ^2)^2*Pi^4) - 
    (3*el^6*MW^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (3*el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    ((-3*el^6*MZ^2)/(128*cw^2*(MW^2 - MZ^2)^2*Pi^4) + 
      (3*el^6*MZ^2)/(256*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MW] + 
    ((3*el^6*MZ^2)/(128*cw^2*(MW^2 - MZ^2)^2*Pi^4) - 
      (3*el^6*MZ^2)/(256*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ]) + 
  Log[MW]*((-7*el^6*MW^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4) - 
    (3*el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4) + 
    (7*el^6*MW^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (3*el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    ((-3*el^6*MZ^2)/(256*cw^2*(MW^2 - MZ^2)^2*Pi^4) + 
      (3*el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ]) + 
  ((3*el^6*MW^2*(-1 + 2*sw^2))/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (3*el^6*MZ^2*(-1 + 2*sw^2))/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (3*el^6*MZ^2*(-1 + 2*sw^2)*Log[MW])/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*
      sw^2) + (3*el^6*MZ^2*(-1 + 2*sw^2)*Log[MZ])/(1024*cw^2*(MW^2 - MZ^2)^2*
      Pi^4*sw^2))/e - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
   (512*cw^2*(MW^2 - MZ^2)^2*Pi^4) - (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (1024*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^4) + 
  (3*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4) + 
  (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*
    sw^2) + (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (2048*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
  (3*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*
    sw^2))
