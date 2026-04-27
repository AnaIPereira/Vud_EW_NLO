(* Created with the Wolfram Language : www.wolfram.com *)
Op*((31*el^6)/(32768*cw^2*MW^2*Pi^4*sw^6) + 
  el^6/(8192*cw^2*e^2*MW^2*Pi^4*sw^6) + 
  (3*el^6)/(16384*cw^2*MZ^2*Pi^4*sw^6) - (7*el^6*(MW^2 + MZ^2))/
   (16384*cw^2*MW^2*MZ^2*Pi^4*sw^6) + el^6/(16384*cw^2*MW^2*Pi^2*sw^6) + 
  (el^6*MW^2)/(24576*cw^2*MZ^4*Pi^2*sw^6) - 
  el^6/(24576*cw^2*MZ^2*Pi^2*sw^6) - (el^6*(MW^2 + MZ^2))/
   (24576*cw^2*MW^2*MZ^2*Pi^2*sw^6) + 
  ((3*el^6)/(1024*cw^2*MW^2*Pi^4*sw^6) + el^6/(512*cw^2*MZ^2*Pi^4*sw^6) - 
    (el^6*(MW^2 + MZ^2))/(512*cw^2*MW^2*MZ^2*Pi^4*sw^6))*Log[mu]^2 + 
  (el^6/(2048*cw^2*MZ^2*Pi^4*sw^6) - (el^6*(MW^2 + MZ^2))/
     (2048*cw^2*MW^2*MZ^2*Pi^4*sw^6))*Log[MW]^2 + 
  (-1/1024*el^6/(cw^2*MW^2*Pi^4*sw^6) - el^6/(4096*cw^2*MZ^2*Pi^4*sw^6) + 
    (3*el^6*(MW^2 + MZ^2))/(4096*cw^2*MW^2*MZ^2*Pi^4*sw^6))*Log[MZ] + 
  (el^6/(1024*cw^2*MW^2*Pi^4*sw^6) + el^6/(2048*cw^2*MZ^2*Pi^4*sw^6) - 
    (el^6*(MW^2 + MZ^2))/(2048*cw^2*MW^2*MZ^2*Pi^4*sw^6))*Log[MZ]^2 + 
  Log[MW]*((-3*el^6)/(4096*cw^2*MW^2*Pi^4*sw^6) - 
    (5*el^6)/(4096*cw^2*MZ^2*Pi^4*sw^6) + (3*el^6*(MW^2 + MZ^2))/
     (4096*cw^2*MW^2*MZ^2*Pi^4*sw^6) + (el^6/(512*cw^2*MW^2*Pi^4*sw^6) + 
      el^6/(1024*cw^2*MZ^2*Pi^4*sw^6) - (el^6*(MW^2 + MZ^2))/
       (1024*cw^2*MW^2*MZ^2*Pi^4*sw^6))*Log[MZ]) + 
  Log[mu]*((7*el^6)/(4096*cw^2*MW^2*Pi^4*sw^6) + 
    (3*el^6)/(2048*cw^2*MZ^2*Pi^4*sw^6) - (3*el^6*(MW^2 + MZ^2))/
     (2048*cw^2*MW^2*MZ^2*Pi^4*sw^6) + (-1/512*el^6/(cw^2*MW^2*Pi^4*sw^6) - 
      el^6/(512*cw^2*MZ^2*Pi^4*sw^6) + (el^6*(MW^2 + MZ^2))/
       (512*cw^2*MW^2*MZ^2*Pi^4*sw^6))*Log[MW] + 
    (-1/256*el^6/(cw^2*MW^2*Pi^4*sw^6) - el^6/(512*cw^2*MZ^2*Pi^4*sw^6) + 
      (el^6*(MW^2 + MZ^2))/(512*cw^2*MW^2*MZ^2*Pi^4*sw^6))*Log[MZ]) + 
  (el^6/(16384*cw^2*MW^2*Pi^4*sw^6) + (el^6*Log[mu])/
     (2048*cw^2*MW^2*Pi^4*sw^6) - (el^6*Log[MZ])/(2048*cw^2*MW^2*Pi^4*sw^6))/
   e - (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^2*MW^2*Pi^4*sw^6) - 
  (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^2*MZ^4*Pi^4*sw^6) + 
  (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^2*MZ^2*Pi^4*sw^6))
