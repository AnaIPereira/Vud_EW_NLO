(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*(el^6/(98304*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (el^6*MZ^2)/(98304*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   el^6/(589824*cw^4*(MW^2 - MZ^2)*Pi^2*sw^6) + 
   (el^6*MZ^4)/(589824*cw^4*MW^4*(MW^2 - MZ^2)*Pi^2*sw^6) - 
   el^6/(294912*cw^4*(-MW^2 + MZ^2)*Pi^2*sw^6) + 
   (el^6*MW^2)/(294912*cw^4*MZ^2*(-MW^2 + MZ^2)*Pi^2*sw^6) - 
   el^6/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (el^6*MZ^2)/(49152*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   el^6/(294912*cw^4*(MW^2 - MZ^2)*Pi^2*sw^4) - 
   (el^6*MZ^4)/(294912*cw^4*MW^4*(MW^2 - MZ^2)*Pi^2*sw^4) + 
   el^6/(147456*cw^4*(-MW^2 + MZ^2)*Pi^2*sw^4) - 
   (el^6*MW^2)/(147456*cw^4*MZ^2*(-MW^2 + MZ^2)*Pi^2*sw^4) + 
   (-1/12288*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*MZ^4)/(49152*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     el^6/(24576*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
     el^6/(6144*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (el^6*MZ^4)/(24576*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     el^6/(12288*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MW]^2 + 
   ((-7*el^6)/(98304*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(49152*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (7*el^6)/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(24576*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ] + 
   (el^6/(6144*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*MZ^4)/(49152*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     el^6/(24576*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
     el^6/(3072*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (el^6*MZ^4)/(24576*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     el^6/(12288*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ]^2 + 
   ((el^6/(16384*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       el^6/(8192*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MW] + 
     (-1/16384*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       el^6/(8192*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ])/e + 
   Log[mu]*((el^6/(4096*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       el^6/(2048*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MW] + 
     (-1/4096*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       el^6/(2048*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ]) + 
   Log[MW]*((7*el^6)/(98304*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(49152*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (7*el^6)/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (el^6*MZ^2)/(24576*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (-1/12288*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       (el^6*MZ^4)/(24576*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       el^6/(12288*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
       el^6/(6144*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
       (el^6*MZ^4)/(12288*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
       el^6/(6144*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ]) - 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(98304*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(98304*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*
     sw^6) + (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(49152*cw^4*(-MW^2 + MZ^2)*Pi^4*
     sw^6) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (49152*cw^4*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(49152*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(49152*cw^4*MW^4*(MW^2 - MZ^2)*Pi^4*
     sw^4) - (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^4*(-MW^2 + MZ^2)*Pi^4*
     sw^4) + (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (24576*cw^4*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4)) + 
 Op*(-1/110592*el^6/(cw^4*MW^2*Pi^4*sw^6) - 
   (53*el^6)/(110592*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (53*el^6*MZ^2)/(110592*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   el^6/(1024*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) - (el^6*(MW^2 + MZ^2))/
    (2048*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
   (5*el^6)/(73728*cw^4*(MW^2 - MZ^2)*Pi^2*sw^6) + 
   (5*el^6*MZ^2)/(73728*cw^4*MW^2*(MW^2 - MZ^2)*Pi^2*sw^6) - 
   (7*el^6)/(73728*cw^4*(-MW^2 + MZ^2)*Pi^2*sw^6) + 
   (el^6*MW^2)/(24576*cw^4*MZ^2*(-MW^2 + MZ^2)*Pi^2*sw^6) - 
   (el^6*(MW^2 + MZ^2))/(36864*cw^4*MW^2*(MW^2 - MZ^2)*Pi^2*sw^6) + 
   el^6/(55296*cw^4*MW^2*Pi^4*sw^4) + 
   (53*el^6)/(55296*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (53*el^6*MZ^2)/(55296*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   el^6/(512*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4) + (el^6*(MW^2 + MZ^2))/
    (1024*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (5*el^6)/(36864*cw^4*(MW^2 - MZ^2)*Pi^2*sw^4) - 
   (5*el^6*MZ^2)/(36864*cw^4*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4) + 
   (7*el^6)/(36864*cw^4*(-MW^2 + MZ^2)*Pi^2*sw^4) - 
   (el^6*MW^2)/(12288*cw^4*MZ^2*(-MW^2 + MZ^2)*Pi^2*sw^4) + 
   (el^6*(MW^2 + MZ^2))/(18432*cw^4*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4) + 
   (-1/768*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     el^6/(384*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) - (el^6*(MW^2 + MZ^2))/
      (768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     el^6/(384*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (el^6*MZ^2)/(384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     el^6/(192*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4) + (el^6*(MW^2 + MZ^2))/
      (384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[mu]^2 + 
   ((-7*el^6)/(6144*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (5*el^6*MZ^2)/(6144*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     el^6/(2048*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) - (el^6*(MW^2 + MZ^2))/
      (3072*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (7*el^6)/(3072*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (5*el^6*MZ^2)/(3072*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     el^6/(1024*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4) + (el^6*(MW^2 + MZ^2))/
      (1536*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MW]^2 + 
   (el^6/(2048*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (a1mu*el^6)/(16384*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(1536*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     el^6/(384*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) + (el^6*(MW^2 + MZ^2))/
      (1536*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     el^6/(1024*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (a1mu*el^6)/(8192*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     el^6/(192*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4) - (el^6*(MW^2 + MZ^2))/
      (768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ] + 
   (el^6/(6144*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (5*el^6*MZ^2)/(6144*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (13*el^6)/(6144*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) - 
     (el^6*(MW^2 + MZ^2))/(3072*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     el^6/(3072*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (5*el^6*MZ^2)/(3072*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (13*el^6)/(3072*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
     (el^6*(MW^2 + MZ^2))/(1536*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*
    Log[MZ]^2 + ((el^6/(1024*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       el^6/(512*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MW] + 
     (-1/1024*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       el^6/(512*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ])/e + 
   Log[mu]*(-1/768*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     el^6/(384*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) - (el^6*(MW^2 + MZ^2))/
      (768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     el^6/(384*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (el^6*MZ^2)/(384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     el^6/(192*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4) + (el^6*(MW^2 + MZ^2))/
      (384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6/(384*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - (el^6*MZ^2)/
        (768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + (el^6*(MW^2 + MZ^2))/
        (768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       el^6/(192*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
       (el^6*MZ^2)/(384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
       (el^6*(MW^2 + MZ^2))/(384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*
      Log[MW] + (-1/768*(el^6*MZ^2)/(cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       el^6/(192*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) + (el^6*(MW^2 + MZ^2))/
        (768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       (el^6*MZ^2)/(384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
       el^6/(96*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4) - (el^6*(MW^2 + MZ^2))/
        (384*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ]) + 
   Log[MW]*((5*el^6)/(6144*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (a1mu*el^6)/(16384*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(1536*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
     (el^6*(MW^2 + MZ^2))/(1536*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
     (5*el^6)/(3072*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (a1mu*el^6)/(8192*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (el^6*(MW^2 + MZ^2))/(768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (-1/3072*el^6/(cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       (el^6*MZ^2)/(3072*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) - 
       el^6/(1024*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^6) - (el^6*(MW^2 + MZ^2))/
        (1536*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
       el^6/(1536*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
       (el^6*MZ^2)/(1536*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
       el^6/(512*cw^4*(-MW^2 + MZ^2)*Pi^4*sw^4) + (el^6*(MW^2 + MZ^2))/
        (768*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))*Log[MZ]) - 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^4*(MW^2 - MZ^2)*Pi^4*sw^6) + 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*
     sw^6) + (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^4*(-MW^2 + MZ^2)*Pi^4*
     sw^6) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (4096*cw^4*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^6) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^4*MW^2*(MW^2 - MZ^2)*Pi^4*
     sw^4) - (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^4*(-MW^2 + MZ^2)*Pi^4*
     sw^4) + (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (2048*cw^4*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4))
