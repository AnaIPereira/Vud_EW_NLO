(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*(el^6/(16384*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
  (el^6*MW^2)/(16384*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
  el^6/(98304*cw^2*(-MW^2 + MZ^2)*Pi^2*sw^6) + 
  (el^6*MW^4)/(98304*cw^2*MZ^4*(-MW^2 + MZ^2)*Pi^2*sw^6) - 
  (el^6*MW^2)/(49152*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^2*sw^6) - 
  el^6/(24576*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
  (el^6*MW^2)/(24576*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4) - 
  el^6/(147456*cw^2*(-MW^2 + MZ^2)*Pi^2*sw^4) - 
  (el^6*MW^4)/(147456*cw^2*MZ^4*(-MW^2 + MZ^2)*Pi^2*sw^4) + 
  (el^6*MW^2)/(73728*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^2*sw^4) + 
  ((-3*el^6)/(8192*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
    el^6/(4096*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MW]^2 + 
  ((-5*el^6)/(16384*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
    (el^6*MW^2)/(8192*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
    (5*el^6)/(24576*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^4) - 
    (el^6*MW^2)/(12288*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ] + 
  (-1/2048*el^6/(cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
    el^6/(3072*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[mu]*Log[MZ] + 
  (el^6/(8192*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
    el^6/(12288*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ]^2 + 
  Log[MW]*((5*el^6)/(16384*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
    (el^6*MW^2)/(8192*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
    (5*el^6)/(24576*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
    (el^6*MW^2)/(12288*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
    (el^6/(2048*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
      el^6/(3072*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[mu] + 
    (el^6/(4096*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
      el^6/(6144*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ]) + 
  ((el^6*(-3 + 2*sw^2)*Log[MW])/(24576*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
    (el^6*(-3 + 2*sw^2)*Log[MZ])/(24576*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6))/e - 
  (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(16384*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
  (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(16384*cw^2*MZ^4*(-MW^2 + MZ^2)*Pi^4*
    sw^6) + (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
   (8192*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
  (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
  (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^2*MZ^4*(-MW^2 + MZ^2)*Pi^4*
    sw^4) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
   (12288*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4))
