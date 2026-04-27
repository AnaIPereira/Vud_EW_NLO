(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MW^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
  (el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (el^6*MW^2)/(6144*cw^2*(MW^2 - MZ^2)^2*Pi^2*sw^2) - 
  (el^6*MW^4)/(12288*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^2*sw^2) - 
  (el^6*MZ^2)/(12288*cw^2*(MW^2 - MZ^2)^2*Pi^2*sw^2) + 
  (3*el^6*MZ^2*Log[MW]^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (-1/1024*(el^6*MW^2)/(cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (3*el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))*Log[MZ] - 
  (el^6*MZ^2*Log[MZ]^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  Log[MW]*(-1/1024*(el^6*MW^2)/(cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^2)/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^2*Log[MZ])/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2)) + 
  ((el^6*MW^2)/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^2)/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^2*Log[MW])/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MZ^2*Log[MZ])/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))/e + 
  Log[mu]*((el^6*MW^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^2)/(512*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) - 
    (el^6*MZ^2*Log[MW])/(256*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
    (el^6*MZ^2*Log[MZ])/(256*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2)) - 
  (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(1024*cw^2*(MW^2 - MZ^2)^2*Pi^4*
    sw^2) + (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (2048*cw^2*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^2) + 
  (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^2*(MW^2 - MZ^2)^2*Pi^4*sw^2))
