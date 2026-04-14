(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*((el^6*MW^2)/(147456*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^2) + 
   (el^6*MW^6)/(147456*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^2) - 
   (el^6*MW^4)/(73728*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^2) - 
   (el^6*MW^2)/(98304*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^2*sw^2) - 
   (el^6*MW^6)/(98304*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^2*sw^2) + 
   (el^6*MW^4)/(49152*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^2*sw^2) + 
   (-1/12288*(el^6*MW^6)/(cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^4)/(4096*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^2)/(6144*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^4)/(12288*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^6)/(8192*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^2) - 
     (3*el^6*MW^4)/(8192*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) + 
     (el^6*MW^2)/(4096*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
     (el^6*MW^4)/(8192*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*
    Log[MW]^2 + ((el^6*MW^6)/(6144*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^4)/(2048*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^2)/(3072*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^4)/(6144*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^6)/(4096*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^2) + 
     (3*el^6*MW^4)/(4096*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) - 
     (el^6*MW^2)/(2048*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
     (el^6*MW^4)/(4096*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*Log[MW]*
    Log[MZ] + (-1/12288*(el^6*MW^6)/(cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*
        Pi^4) + (el^6*MW^4)/(4096*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^2)/(6144*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^4)/(12288*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^6)/(8192*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^2) - 
     (3*el^6*MW^4)/(8192*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) + 
     (el^6*MW^2)/(4096*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
     (el^6*MW^4)/(8192*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*
    Log[MZ]^2 + (el^6*MW^2*Phi[1/4])/(16384*cw^4*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4) - (3*el^6*MW^2*Phi[1/4])/(32768*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*
     sw^2) + (el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(12288*cw^4*(MW - MZ)^2*
     (MW + MZ)^2*Pi^4) + (el^6*MW^6*Phi[MW^2/(4*MZ^2)])/
    (49152*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4) - 
   (5*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(49152*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*
     Pi^4) + (el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(12288*cw^4*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4) - (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
    (49152*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
   (el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(8192*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4*
     sw^2) - (el^6*MW^6*Phi[MW^2/(4*MZ^2)])/(32768*cw^4*(MW - MZ)^2*MZ^4*
     (MW + MZ)^2*Pi^4*sw^2) + (5*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
    (32768*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) - 
   (el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(8192*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*
     sw^2) + (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(32768*cw^4*MZ^2*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4*sw^2) - (5*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (49152*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4) + 
   (el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(12288*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*
     Pi^4) + (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(49152*cw^4*(MW - MZ)^2*
     (MW + MZ)^2*Pi^4) - (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (16384*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
   (el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(12288*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4) + (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(49152*cw^4*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4) + (5*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (32768*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
   (el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(8192*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*
     Pi^4*sw^2) - (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(32768*cw^4*(MW - MZ)^2*
     (MW + MZ)^2*Pi^4*sw^2) + (3*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (32768*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
   (el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(8192*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4*sw^2) - (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(32768*cw^4*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4*sw^2) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (6144*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4) - 
   (el^6*MW^6*PolyLog[2, 1 - MZ^2/MW^2])/(12288*cw^4*(MW - MZ)^2*MZ^4*
     (MW + MZ)^2*Pi^4) + (5*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (24576*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) + 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^4*(MW - MZ)^2*(MW + MZ)^2*
     Pi^4) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (12288*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
   (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^4*MZ^2*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4) + (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (24576*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
   (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^4*(MW - MZ)^2*(MW + MZ)^2*
     Pi^4*sw^2) + (el^6*MW^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (8192*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^2) - 
   (5*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(16384*cw^4*(MW - MZ)^2*MZ^2*
     (MW + MZ)^2*Pi^4*sw^2) - (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (16384*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
   (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(8192*cw^4*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4*sw^2) - (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (16384*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(16384*cw^4*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4*sw^2)) + 
 Op*(-1/36864*(el^6*MW^2)/(cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^2) - 
   (el^6*MW^6)/(36864*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^2) + 
   (el^6*MW^4)/(18432*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^2) + 
   (el^6*MW^2)/(24576*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^2*sw^2) + 
   (el^6*MW^6)/(24576*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^2*sw^2) - 
   (el^6*MW^4)/(12288*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^2*sw^2) + 
   ((el^6*MW^6)/(3072*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^4)/(1024*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^2)/(1536*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^4)/(3072*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^6)/(2048*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^2) + 
     (3*el^6*MW^4)/(2048*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) - 
     (el^6*MW^2)/(1024*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
     (el^6*MW^4)/(2048*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*
    Log[MW]^2 + (-1/1536*(el^6*MW^6)/(cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*
        Pi^4) + (el^6*MW^4)/(512*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^2)/(768*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^4)/(1536*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^6)/(1024*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^2) - 
     (3*el^6*MW^4)/(1024*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) + 
     (el^6*MW^2)/(512*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
     (el^6*MW^4)/(1024*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*Log[MW]*
    Log[MZ] + ((el^6*MW^6)/(3072*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^4)/(1024*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) + 
     (el^6*MW^2)/(1536*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^4)/(3072*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
     (el^6*MW^6)/(2048*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^2) + 
     (3*el^6*MW^4)/(2048*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) - 
     (el^6*MW^2)/(1024*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
     (el^6*MW^4)/(2048*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2))*
    Log[MZ]^2 - (el^6*MW^2*Phi[1/4])/(4096*cw^4*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4) + (3*el^6*MW^2*Phi[1/4])/(8192*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*
     sw^2) - (el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(3072*cw^4*(MW - MZ)^2*
     (MW + MZ)^2*Pi^4) - (el^6*MW^6*Phi[MW^2/(4*MZ^2)])/
    (12288*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4) + 
   (5*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(12288*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*
     Pi^4) - (el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(3072*cw^4*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4) + (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
    (12288*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
   (el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(2048*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4*
     sw^2) + (el^6*MW^6*Phi[MW^2/(4*MZ^2)])/(8192*cw^4*(MW - MZ)^2*MZ^4*
     (MW + MZ)^2*Pi^4*sw^2) - (5*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
    (8192*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4*sw^2) + 
   (el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(2048*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*
     sw^2) - (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(8192*cw^4*MZ^2*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4*sw^2) + (5*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (12288*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4) - 
   (el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(3072*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*
     Pi^4) - (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(12288*cw^4*(MW - MZ)^2*
     (MW + MZ)^2*Pi^4) + (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (4096*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) + 
   (el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(3072*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4) - (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(12288*cw^4*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4) - (5*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (8192*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
   (el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(2048*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*
     Pi^4*sw^2) + (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(8192*cw^4*(MW - MZ)^2*
     (MW + MZ)^2*Pi^4*sw^2) - (3*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (8192*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
   (el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(2048*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4*sw^2) + (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(8192*cw^4*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4*sw^2) + (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (1536*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4) + 
   (el^6*MW^6*PolyLog[2, 1 - MZ^2/MW^2])/(3072*cw^4*(MW - MZ)^2*MZ^4*
     (MW + MZ)^2*Pi^4) - (5*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (6144*cw^4*(MW - MZ)^2*MZ^2*(MW + MZ)^2*Pi^4) - 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(6144*cw^4*(MW - MZ)^2*(MW + MZ)^2*
     Pi^4) + (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (3072*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
   (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(6144*cw^4*MZ^2*(-MW + MZ)^2*
     (MW + MZ)^2*Pi^4) - (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (6144*cw^4*(-MW + MZ)^2*(MW + MZ)^2*Pi^4) - 
   (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(1024*cw^4*(MW - MZ)^2*(MW + MZ)^2*
     Pi^4*sw^2) - (el^6*MW^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (2048*cw^4*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^2) + 
   (5*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^4*(MW - MZ)^2*MZ^2*
     (MW + MZ)^2*Pi^4*sw^2) + (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (4096*cw^4*(MW - MZ)^2*(MW + MZ)^2*Pi^4*sw^2) - 
   (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^4*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4*sw^2) + (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (4096*cw^4*MZ^2*(-MW + MZ)^2*(MW + MZ)^2*Pi^4*sw^2) + 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^4*(-MW + MZ)^2*(MW + MZ)^2*
     Pi^4*sw^2))
