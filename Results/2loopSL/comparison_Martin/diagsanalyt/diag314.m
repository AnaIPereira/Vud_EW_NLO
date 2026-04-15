(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*(el^6/(32768*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
  (el^6*MZ^2)/(32768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
  el^6/(196608*cw^4*(MW^2 - MZ^2)*Pi^2*sw^6) - 
  (el^6*MZ^2)/(98304*cw^4*MW^2*(MW^2 - MZ^2)*Pi^2*sw^6) + 
  (el^6*MZ^4)/(196608*cw^4*MW^4*(MW^2 - MZ^2)*Pi^2*sw^6) - 
  el^6/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
  (el^6*MZ^2)/(49152*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
  el^6/(294912*cw^4*(MW^2 - MZ^2)*Pi^2*sw^4) + 
  (el^6*MZ^2)/(147456*cw^4*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4) - 
  (el^6*MZ^4)/(294912*cw^4*MW^4*(MW^2 - MZ^2)*Pi^2*sw^4) + 
  (el^6/(8192*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*MZ^2)/(8192*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    (el^6*MZ^4)/(16384*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    el^6/(12288*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
    (el^6*MZ^2)/(12288*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
    (el^6*MZ^4)/(24576*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MW]^2 + 
  ((5*el^6)/(32768*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*MZ^2)/(16384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (5*el^6)/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
    (el^6*MZ^2)/(24576*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ] + 
  (el^6/(4096*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    el^6/(6144*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[mu]*Log[MZ] + 
  (-1/8192*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*MZ^2)/(8192*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    (el^6*MZ^4)/(16384*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    el^6/(12288*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
    (el^6*MZ^2)/(12288*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
    (el^6*MZ^4)/(24576*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ]^2 + 
  Log[MW]*((-5*el^6)/(32768*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    (el^6*MZ^2)/(16384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    (5*el^6)/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
    (el^6*MZ^2)/(24576*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
    (-1/4096*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
      el^6/(6144*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[mu] + 
    ((el^6*MZ^2)/(4096*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
      (el^6*MZ^4)/(8192*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
      (el^6*MZ^2)/(6144*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
      (el^6*MZ^4)/(12288*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ]) + 
  ((el^6*(-3 + 2*sw^2)*Log[MW])/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*(-3 + 2*sw^2)*Log[MZ])/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6))/e + 
  (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(32768*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
  (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(16384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*
    sw^6) + (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (32768*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
  (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
  (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*
    sw^4) - (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
   (49152*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4))
