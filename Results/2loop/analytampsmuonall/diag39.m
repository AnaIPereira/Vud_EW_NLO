(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*((el^6*MW^4)/(196608*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^2*sw^6) + 
   (el^6*MW^2)/(196608*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^6) - 
   (el^6*MZ^2)/(196608*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) - 
   (el^6*MZ^4)/(196608*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) - 
   (el^6*MW^4)/(98304*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^2*sw^4) - 
   (el^6*MW^2)/(98304*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^4) + 
   (el^6*MZ^2)/(98304*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) + 
   (el^6*MZ^4)/(98304*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) + 
   (-1/16384*(el^6*MW^4)/(cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
     (3*el^6*MW^2)/(16384*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(16384*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^4)/(16384*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MW^4)/(8192*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^4) - 
     (3*el^6*MW^2)/(8192*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(8192*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*MZ^4)/(8192*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4))*Log[MW]^2 + 
   (el^6/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     el^6/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4))*Log[MZ] + 
   (-1/16384*(el^6*MW^4)/(cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
     (3*el^6*MW^2)/(16384*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(16384*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^4)/(16384*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MW^4)/(8192*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^4) - 
     (3*el^6*MW^2)/(8192*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(8192*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*MZ^4)/(8192*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4))*Log[MZ]^2 + 
   Log[MW]*(-1/8192*el^6/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     el^6/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     ((el^6*MW^4)/(8192*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) - 
       (3*el^6*MW^2)/(8192*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
       (el^6*MZ^2)/(8192*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
       (el^6*MZ^4)/(8192*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (el^6*MW^4)/(4096*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^4) + 
       (3*el^6*MW^2)/(4096*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) - 
       (el^6*MZ^2)/(4096*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       (el^6*MZ^4)/(4096*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4))*Log[MZ]) + 
   (el^6*Phi[MW^2/(4*MZ^2)])/(16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(65536*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*
     sw^6) - (5*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(65536*cw^2*(MW - MZ)*MZ^2*
     (MW + MZ)*Pi^4*sw^6) - (el^6*Phi[MW^2/(4*MZ^2)])/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(32768*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*
     sw^4) + (5*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(32768*cw^2*(MW - MZ)*MZ^2*
     (MW + MZ)*Pi^4*sw^4) - (el^6*Phi[MZ^2/(4*MW^2)])/
    (16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (5*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(65536*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^6) - (el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(65536*cw^2*MW^4*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^6) + (el^6*Phi[MZ^2/(4*MW^2)])/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (5*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(32768*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^4) + (el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(32768*cw^2*MW^4*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^4) - (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (16384*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(16384*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*
     Pi^4*sw^6) + (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (16384*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(16384*cw^2*MW^4*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^6) + (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (8192*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^4) - 
   (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(8192*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*
     Pi^4*sw^4) - (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (8192*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(8192*cw^2*MW^4*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^4)) + 
 Op*((-95*el^6*MW^4)/(442368*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^2*sw^6) + 
   (25*el^6*MW^2)/(221184*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^6) + 
   (el^6*MZ^2)/(49152*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) + 
   (el^6*MZ^4)/(12288*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) - 
   (43*el^6*MW^4)/(221184*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^2*sw^6) + 
   (43*el^6*MW^2)/(221184*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^2*sw^6) + 
   (95*el^6*MW^4)/(221184*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^2*sw^4) - 
   (25*el^6*MW^2)/(110592*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^4) - 
   (el^6*MZ^2)/(24576*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) - 
   (el^6*MZ^4)/(6144*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) + 
   (43*el^6*MW^4)/(110592*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^2*sw^4) - 
   (43*el^6*MW^2)/(110592*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^2*sw^4) + 
   ((95*el^6*MW^4)/(36864*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) - 
     (95*el^6*MW^2)/(12288*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(4096*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MZ^4)/(1024*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (43*el^6*MW^4)/(18432*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (43*el^6*MW^2)/(6144*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (95*el^6*MW^4)/(18432*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^4) + 
     (95*el^6*MW^2)/(6144*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) - 
     (el^6*MZ^2)/(2048*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (el^6*MZ^4)/(512*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (43*el^6*MW^4)/(9216*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (43*el^6*MW^2)/(3072*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))*
    Log[MW]^2 + ((-131*el^6)/(36864*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (43*el^6)/(18432*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (131*el^6)/(18432*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (43*el^6)/(9216*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))*Log[MZ] + 
   ((95*el^6*MW^4)/(36864*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) - 
     (95*el^6*MW^2)/(12288*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(4096*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MZ^4)/(1024*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (43*el^6*MW^4)/(18432*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (43*el^6*MW^2)/(6144*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (95*el^6*MW^4)/(18432*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^4) + 
     (95*el^6*MW^2)/(6144*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) - 
     (el^6*MZ^2)/(2048*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (el^6*MZ^4)/(512*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (43*el^6*MW^4)/(9216*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (43*el^6*MW^2)/(3072*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))*
    Log[MZ]^2 + Log[MW]*((131*el^6)/(36864*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^6) + (43*el^6)/(18432*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (131*el^6)/(18432*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (43*el^6)/(9216*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
     ((-95*el^6*MW^4)/(18432*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
       (95*el^6*MW^2)/(6144*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
       (el^6*MZ^2)/(2048*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (el^6*MZ^4)/(512*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (43*el^6*MW^4)/(9216*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) + 
       (43*el^6*MW^2)/(3072*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) + 
       (95*el^6*MW^4)/(9216*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^4) - 
       (95*el^6*MW^2)/(3072*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) + 
       (el^6*MZ^2)/(1024*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (el^6*MZ^4)/(256*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (43*el^6*MW^4)/(4608*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) - 
       (43*el^6*MW^2)/(1536*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))*
      Log[MZ]) - (95*el^6*Phi[MW^2/(4*MZ^2)])/(36864*cw^2*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^6) - (95*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
    (147456*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
   (475*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(147456*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*
     Pi^4*sw^6) - (43*el^6*Phi[MW^2/(4*MZ^2)])/(18432*cw^2*(-MW + MZ)*
     (MW + MZ)*Pi^4*sw^6) - (43*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
    (73728*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (215*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(73728*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*
     Pi^4*sw^6) + (95*el^6*Phi[MW^2/(4*MZ^2)])/(18432*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^4) + (95*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
    (73728*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^4) - 
   (475*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(73728*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*
     Pi^4*sw^4) + (43*el^6*Phi[MW^2/(4*MZ^2)])/(9216*cw^2*(-MW + MZ)*
     (MW + MZ)*Pi^4*sw^4) + (43*el^6*MW^4*Phi[MW^2/(4*MZ^2)])/
    (36864*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (215*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(36864*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*
     Pi^4*sw^4) + (287*el^6*Phi[MZ^2/(4*MW^2)])/(73728*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^6) - (43*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (18432*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
   (133*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(73728*cw^2*MW^2*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^6) + (el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(4096*cw^2*MW^4*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^6) + (215*el^6*Phi[MZ^2/(4*MW^2)])/
    (73728*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
   (43*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(18432*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*
     Pi^4*sw^6) - (43*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/
    (73728*cw^2*MW^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
   (287*el^6*Phi[MZ^2/(4*MW^2)])/(36864*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (43*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(9216*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*
     sw^4) + (133*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(36864*cw^2*MW^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^4) - (el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/
    (2048*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (215*el^6*Phi[MZ^2/(4*MW^2)])/(36864*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*
     sw^4) + (43*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(9216*cw^2*MZ^2*(-MW + MZ)*
     (MW + MZ)*Pi^4*sw^4) + (43*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/
    (36864*cw^2*MW^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (43*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(12288*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^6) + (95*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (36864*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) - 
   (335*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(73728*cw^2*(MW - MZ)*MZ^2*
     (MW + MZ)*Pi^4*sw^6) - (185*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (73728*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(1024*cw^2*MW^4*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^6) + (43*el^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (12288*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (43*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(18432*cw^2*MZ^4*(-MW + MZ)*
     (MW + MZ)*Pi^4*sw^6) - (43*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (9216*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
   (43*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(36864*cw^2*MW^2*(-MW + MZ)*
     (MW + MZ)*Pi^4*sw^6) - (43*el^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (6144*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (95*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(18432*cw^2*(MW - MZ)*MZ^4*
     (MW + MZ)*Pi^4*sw^4) + (335*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (36864*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) + 
   (185*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(36864*cw^2*MW^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^4) - (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (512*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (43*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(6144*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*
     sw^4) - (43*el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (9216*cw^2*MZ^4*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (43*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(4608*cw^2*MZ^2*(-MW + MZ)*
     (MW + MZ)*Pi^4*sw^4) + (43*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (18432*cw^2*MW^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))
