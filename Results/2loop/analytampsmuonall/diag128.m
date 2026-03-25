(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*(-1/16384*el^6/(cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (el^6*MW^2)/(49152*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (el^6*MZ^2)/(24576*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (7*el^6*MZ^2)/(589824*cw^2*MW^2*(MW^2 - MZ^2)*Pi^2*sw^6) + 
   (el^6*MZ^4)/(65536*cw^2*MW^4*(MW^2 - MZ^2)*Pi^2*sw^6) - 
   (el^6*MZ^6)/(294912*cw^2*MW^6*(MW^2 - MZ^2)*Pi^2*sw^6) + 
   (el^6/(2048*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MW^4)/(24576*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (7*el^6*MW^2)/(16384*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (7*el^6*MZ^2)/(49152*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (3*el^6*MZ^4)/(16384*cw^2*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^6)/(24576*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*sw^6))*Log[MW]^2 + 
   ((29*el^6)/(24576*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MW^2)/(24576*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(24576*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6))*Log[MZ] + 
   (3*el^6*Log[mu]*Log[MZ])/(2048*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (-1/1024*el^6/(cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MW^4)/(24576*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (7*el^6*MW^2)/(16384*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (7*el^6*MZ^2)/(49152*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (3*el^6*MZ^4)/(16384*cw^2*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^6)/(24576*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*sw^6))*Log[MZ]^2 + 
   Log[MW]*((-29*el^6)/(24576*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*MW^2)/(24576*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(24576*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (3*el^6*Log[mu])/(2048*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6/(2048*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       (el^6*MW^4)/(12288*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       (7*el^6*MW^2)/(8192*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       (7*el^6*MZ^2)/(24576*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       (3*el^6*MZ^4)/(8192*cw^2*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       (el^6*MZ^6)/(12288*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*sw^6))*Log[MZ]) + 
   ((-3*el^6*Log[MW])/(8192*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (3*el^6*Log[MZ])/(8192*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6))/e + 
   (17*el^6*Phi[MW^2/(4*MZ^2)])/(49152*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(98304*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (25*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(196608*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*
     sw^6) - (el^6*Phi[MZ^2/(4*MW^2)])/(8192*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (19*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(98304*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*
     sw^6) + (19*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(196608*cw^2*MW^4*
     (MW^2 - MZ^2)*Pi^4*sw^6) - (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/
    (98304*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (5*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(49152*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*
     sw^6) + (7*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (32768*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (19*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(98304*cw^2*MW^2*(MW^2 - MZ^2)*
     Pi^4*sw^6) + (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (4096*cw^2*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*
     sw^6)) + Op*((-3*el^6)/(4096*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (el^6*MW^2)/(4096*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (el^6*MZ^2)/(2048*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (el^6*MZ^2)/(49152*cw^2*MW^2*(MW^2 - MZ^2)*Pi^2*sw^6) + 
   (el^6*MZ^4)/(16384*cw^2*MW^4*(MW^2 - MZ^2)*Pi^2*sw^6) - 
   (el^6*MZ^6)/(24576*cw^2*MW^6*(MW^2 - MZ^2)*Pi^2*sw^6) + 
   ((17*el^6)/(9216*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MW^4)/(2048*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (203*el^6*MW^2)/(36864*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(4096*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (3*el^6*MZ^4)/(4096*cw^2*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^6)/(2048*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (11*el^6)/(2304*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
     (11*el^6*MW^2)/(2304*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^6))*Log[MW]^2 + 
   ((91*el^6)/(6144*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (3*a1mu*el^6)/(8192*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MW^2)/(2048*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(2048*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (11*el^6)/(768*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6))*Log[MZ] + 
   ((61*el^6)/(4608*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (11*el^6)/(576*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6))*Log[mu]*Log[MZ] + 
   ((-35*el^6)/(3072*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MW^4)/(2048*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (203*el^6*MW^2)/(36864*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(4096*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (3*el^6*MZ^4)/(4096*cw^2*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^6)/(2048*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (11*el^6)/(768*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
     (11*el^6*MW^2)/(2304*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^6))*Log[MZ]^2 + 
   Log[MW]*((-91*el^6)/(6144*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (3*a1mu*el^6)/(8192*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*MW^2)/(2048*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(2048*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (11*el^6)/(768*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
     ((-61*el^6)/(4608*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       (11*el^6)/(576*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6))*Log[mu] + 
     ((11*el^6)/(1152*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       (el^6*MW^4)/(1024*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       (203*el^6*MW^2)/(18432*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       (el^6*MZ^2)/(2048*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       (3*el^6*MZ^4)/(2048*cw^2*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       (el^6*MZ^6)/(1024*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       (11*el^6)/(1152*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
       (11*el^6*MW^2)/(1152*cw^2*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^6))*Log[MZ]) + 
   ((3*el^6*Log[MW])/(2048*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (3*el^6*Log[MZ])/(2048*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6))/e + 
   (167*el^6*Phi[MW^2/(4*MZ^2)])/(36864*cw^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(8192*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (239*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(147456*cw^2*MZ^2*(MW^2 - MZ^2)*Pi^4*
     sw^6) + (11*el^6*Phi[MW^2/(4*MZ^2)])/(2304*cw^2*(-MW^2 + MZ^2)*Pi^4*
     sw^6) - (11*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(9216*cw^2*MZ^2*(-MW^2 + MZ^2)*
     Pi^4*sw^6) - (61*el^6*Phi[MZ^2/(4*MW^2)])/(18432*cw^2*(MW^2 - MZ^2)*Pi^4*
     sw^6) - (29*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(73728*cw^2*MW^2*(MW^2 - MZ^2)*
     Pi^4*sw^6) + (13*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/
    (16384*cw^2*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(8192*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (11*el^6*Phi[MZ^2/(4*MW^2)])/(2304*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
   (11*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(9216*cw^2*MW^2*(-MW^2 + MZ^2)*Pi^4*
     sw^6) - (79*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(18432*cw^2*(MW^2 - MZ^2)*
     Pi^4*sw^6) - (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (4096*cw^2*MZ^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (203*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(73728*cw^2*MZ^2*(MW^2 - MZ^2)*
     Pi^4*sw^6) + (59*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (73728*cw^2*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (3*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^2*MW^4*(MW^2 - MZ^2)*Pi^4*
     sw^6) - (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (2048*cw^2*MW^6*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (11*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(2304*cw^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
   (11*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(4608*cw^2*MZ^2*(-MW^2 + MZ^2)*
     Pi^4*sw^6) + (11*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (4608*cw^2*MW^2*(-MW^2 + MZ^2)*Pi^4*sw^6))
