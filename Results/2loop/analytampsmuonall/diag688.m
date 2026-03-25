(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*((el^6*Flag[selfm])/(32768*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
  (el^6*MZ^2*Flag[selfm])/(32768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
  (el^6*Flag[selfm])/(196608*cw^4*(MW^2 - MZ^2)*Pi^2*sw^6) - 
  (el^6*MZ^2*Flag[selfm])/(98304*cw^4*MW^2*(MW^2 - MZ^2)*Pi^2*sw^6) + 
  (el^6*MZ^4*Flag[selfm])/(196608*cw^4*MW^4*(MW^2 - MZ^2)*Pi^2*sw^6) - 
  (el^6*Flag[selfm])/(16384*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
  (el^6*MZ^2*Flag[selfm])/(16384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
  (el^6*Flag[selfm])/(98304*cw^4*(MW^2 - MZ^2)*Pi^2*sw^4) + 
  (el^6*MZ^2*Flag[selfm])/(49152*cw^4*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4) - 
  (el^6*MZ^4*Flag[selfm])/(98304*cw^4*MW^4*(MW^2 - MZ^2)*Pi^2*sw^4) + 
  ((el^6*Flag[selfm])/(8192*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*MZ^2*Flag[selfm])/(8192*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    (el^6*MZ^4*Flag[selfm])/(16384*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*Flag[selfm])/(4096*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
    (el^6*MZ^2*Flag[selfm])/(4096*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
    (el^6*MZ^4*Flag[selfm])/(8192*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4))*
   Log[MW]^2 + ((5*el^6*Flag[selfm])/(32768*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*MZ^2*Flag[selfm])/(16384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (5*el^6*Flag[selfm])/(16384*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
    (el^6*MZ^2*Flag[selfm])/(8192*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*
   Log[MZ] + ((el^6*Flag[selfm])/(4096*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*Flag[selfm])/(2048*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[mu]*Log[MZ] + 
  (-1/8192*(el^6*Flag[selfm])/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*MZ^2*Flag[selfm])/(8192*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    (el^6*MZ^4*Flag[selfm])/(16384*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    (el^6*Flag[selfm])/(4096*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
    (el^6*MZ^2*Flag[selfm])/(4096*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
    (el^6*MZ^4*Flag[selfm])/(8192*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4))*
   Log[MZ]^2 + ((el^6*(-1 + 2*sw^2)*Flag[selfm]*Log[MW])/
     (16384*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*(-1 + 2*sw^2)*Flag[selfm]*Log[MZ])/(16384*cw^4*(MW^2 - MZ^2)*Pi^4*
      sw^6))/e + Log[MW]*((-5*el^6*Flag[selfm])/(32768*cw^4*(MW^2 - MZ^2)*
      Pi^4*sw^6) + (el^6*MZ^2*Flag[selfm])/(16384*cw^4*MW^2*(MW^2 - MZ^2)*
      Pi^4*sw^6) + (5*el^6*Flag[selfm])/(16384*cw^4*(MW^2 - MZ^2)*Pi^4*
      sw^4) - (el^6*MZ^2*Flag[selfm])/(8192*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*
      sw^4) + (-1/4096*(el^6*Flag[selfm])/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
      (el^6*Flag[selfm])/(2048*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[mu] + 
    ((el^6*MZ^2*Flag[selfm])/(4096*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
      (el^6*MZ^4*Flag[selfm])/(8192*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
      (el^6*MZ^2*Flag[selfm])/(2048*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
      (el^6*MZ^4*Flag[selfm])/(4096*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4))*
     Log[MZ]) + (el^6*Flag[selfm]*PolyLog[2, 1 - MZ^2/MW^2])/
   (32768*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
  (el^6*MZ^2*Flag[selfm]*PolyLog[2, 1 - MZ^2/MW^2])/
   (16384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
  (el^6*MZ^4*Flag[selfm]*PolyLog[2, 1 - MZ^2/MW^2])/
   (32768*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
  (el^6*Flag[selfm]*PolyLog[2, 1 - MZ^2/MW^2])/(16384*cw^4*(MW^2 - MZ^2)*Pi^4*
    sw^4) + (el^6*MZ^2*Flag[selfm]*PolyLog[2, 1 - MZ^2/MW^2])/
   (8192*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
  (el^6*MZ^4*Flag[selfm]*PolyLog[2, 1 - MZ^2/MW^2])/
   (16384*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4))
