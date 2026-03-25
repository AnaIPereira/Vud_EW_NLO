(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*(-1/16384*el^6/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MW^2)/(49152*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MZ^2)/(24576*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
   (7*el^6*MZ^2)/(589824*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) + 
   (el^6*MZ^4)/(65536*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) - 
   (el^6*MZ^6)/(294912*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) + 
   (el^6/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MW^4)/(24576*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
     (7*el^6*MW^2)/(16384*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
     (7*el^6*MZ^2)/(49152*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (3*el^6*MZ^4)/(16384*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^6)/(24576*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^4*sw^6))*Log[MW]^2 + 
   ((29*el^6)/(24576*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MW^2)/(24576*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(24576*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6))*Log[MZ] + 
   (3*el^6*Log[mu]*Log[MZ])/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (-1/1024*el^6/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MW^4)/(24576*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
     (7*el^6*MW^2)/(16384*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
     (7*el^6*MZ^2)/(49152*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (3*el^6*MZ^4)/(16384*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^6)/(24576*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^4*sw^6))*Log[MZ]^2 + 
   Log[MW]*((-29*el^6)/(24576*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MW^2)/(24576*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(24576*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (3*el^6*Log[mu])/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
       (el^6*MW^4)/(12288*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) - 
       (7*el^6*MW^2)/(8192*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
       (7*el^6*MZ^2)/(24576*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (3*el^6*MZ^4)/(8192*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
       (el^6*MZ^6)/(12288*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^4*sw^6))*
      Log[MZ]) + ((-3*el^6*Log[MW])/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^6) + (3*el^6*Log[MZ])/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6))/
    e + (17*el^6*Phi[MW^2/(4*MZ^2)])/(49152*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^6) + (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(98304*cw^2*(MW - MZ)*MZ^4*
     (MW + MZ)*Pi^4*sw^6) - (25*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/
    (196608*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
   (el^6*Phi[MZ^2/(4*MW^2)])/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
   (19*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(98304*cw^2*MW^2*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^6) + (19*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/
    (196608*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
   (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(98304*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^6) - (5*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^6) - (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (49152*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
   (7*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(32768*cw^2*(MW - MZ)*MZ^2*
     (MW + MZ)*Pi^4*sw^6) - (19*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (98304*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^2*MW^4*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^6) - (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (24576*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^4*sw^6)) + 
 Op*(el^6/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
   (el^6*MW^2)/(12288*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
   (el^6*MZ^2)/(6144*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (25*el^6*MZ^2)/(147456*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) - 
   (3*el^6*MZ^4)/(16384*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) + 
   (el^6*MZ^6)/(73728*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) + 
   ((-13*el^6)/(3072*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MW^4)/(6144*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
     (5*el^6*MW^2)/(12288*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
     (25*el^6*MZ^2)/(12288*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (9*el^6*MZ^4)/(4096*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MZ^6)/(6144*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (5*el^6)/(768*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (5*el^6*MW^2)/(768*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6))*
    Log[MW]^2 + ((7*el^6)/(6144*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MW^2)/(6144*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(6144*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (5*el^6)/(256*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6))*Log[MZ] + 
   ((-5*el^6)/(1536*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (5*el^6)/(192*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6))*Log[mu]*Log[MZ] + 
   (-1/1024*el^6/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MW^4)/(6144*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) + 
     (5*el^6*MW^2)/(12288*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
     (25*el^6*MZ^2)/(12288*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (9*el^6*MZ^4)/(4096*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MZ^6)/(6144*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (5*el^6)/(256*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (5*el^6*MW^2)/(768*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6))*
    Log[MZ]^2 + Log[MW]*((-7*el^6)/(6144*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^6) - (el^6*MW^2)/(6144*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(6144*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (5*el^6)/(256*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) + 
     ((5*el^6)/(1536*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (5*el^6)/(192*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6))*Log[mu] + 
     (el^6/(192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (el^6*MW^4)/(3072*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*Pi^4*sw^6) - 
       (5*el^6*MW^2)/(6144*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
       (25*el^6*MZ^2)/(6144*cw^2*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
       (9*el^6*MZ^4)/(2048*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (el^6*MZ^6)/(3072*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
       (5*el^6)/(384*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (5*el^6*MW^2)/(384*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6))*
      Log[MZ]) + ((15*el^6*Log[MW])/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^6) - (15*el^6*Log[MZ])/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6))/
    e + (3*el^6*Phi[MW^2/(4*MZ^2)])/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^6) - (el^6*MW^4*Phi[MW^2/(4*MZ^2)])/(24576*cw^2*(MW - MZ)*MZ^4*
     (MW + MZ)*Pi^4*sw^6) - (el^6*MW^2*Phi[MW^2/(4*MZ^2)])/
    (49152*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
   (5*el^6*Phi[MW^2/(4*MZ^2)])/(768*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) - 
   (5*el^6*MW^2*Phi[MW^2/(4*MZ^2)])/(3072*cw^2*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*
     sw^6) - (19*el^6*Phi[MZ^2/(4*MW^2)])/(6144*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^6) + (77*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(24576*cw^2*MW^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^6) - (37*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/
    (49152*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(24576*cw^2*MW^6*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^6) - (5*el^6*Phi[MZ^2/(4*MW^2)])/(768*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*
     sw^6) + (5*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(3072*cw^2*MW^2*(-MW + MZ)*
     (MW + MZ)*Pi^4*sw^6) - (17*el^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (6144*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MW^4*PolyLog[2, 1 - MZ^2/MW^2])/(12288*cw^2*(MW - MZ)*MZ^4*(MW + MZ)*
     Pi^4*sw^6) + (5*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (24576*cw^2*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) + 
   (39*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(8192*cw^2*MW^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^6) - (5*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (2048*cw^2*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/(6144*cw^2*MW^6*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^6) - (5*el^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (768*cw^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (5*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(1536*cw^2*MZ^2*(-MW + MZ)*
     (MW + MZ)*Pi^4*sw^6) + (5*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (1536*cw^2*MW^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^6))
