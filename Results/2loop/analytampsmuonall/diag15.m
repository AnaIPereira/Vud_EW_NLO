(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MW^2)/(24576*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^6) - 
   (el^6*MZ^2)/(24576*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) - 
   (el^6*MW^2)/(6144*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^4) + 
   (el^6*MZ^2)/(6144*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) + 
   (el^6*MW^2)/(6144*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^2) - 
   (el^6*MZ^2)/(6144*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^2) + 
   (el^6/(512*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(2048*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     el^6/(128*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(512*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     el^6/(128*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
     (el^6*MZ^2)/(512*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MW]^2 + 
   ((3*el^6)/(2048*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (a1mu*el^6)/(16384*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (3*el^6)/(512*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (a1mu*el^6)/(4096*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (3*el^6)/(512*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
     (a1mu*el^6)/(4096*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ] + 
   (el^6/(256*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     el^6/(64*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     el^6/(64*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[mu]*Log[MZ] + 
   (-1/512*el^6/(cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(2048*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     el^6/(128*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(512*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     el^6/(128*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
     (el^6*MZ^2)/(512*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ]^2 + 
   ((-1/1024*el^6/(cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
       el^6/(256*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       el^6/(256*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MW] + 
     (el^6/(1024*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       el^6/(256*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       el^6/(256*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ])/e + 
   Log[MW]*((-3*el^6)/(2048*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (a1mu*el^6)/(16384*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (3*el^6)/(512*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (a1mu*el^6)/(4096*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (3*el^6)/(512*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
     (a1mu*el^6)/(4096*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
     (-1/256*el^6/(cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
       el^6/(64*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       el^6/(64*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[mu] + 
     ((el^6*MZ^2)/(1024*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (el^6*MZ^2)/(256*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (el^6*MZ^2)/(256*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ]) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(2048*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^6) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (4096*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(4096*cw^4*MW^2*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^6) - (el^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (512*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(1024*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*
     Pi^4*sw^4) + (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (1024*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(512*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^2) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (1024*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^2) - 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(1024*cw^4*MW^2*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^2)) + Ev3*(-1/98304*el^6/(cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
   (el^6*MZ^2)/(98304*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
   el^6/(589824*cw^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) + 
   (el^6*MW^2)/(294912*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^6) - 
   (el^6*MZ^4)/(589824*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^6) + 
   el^6/(24576*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (el^6*MZ^2)/(24576*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   el^6/(147456*cw^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) - 
   (el^6*MW^2)/(73728*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^4) + 
   (el^6*MZ^4)/(147456*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) - 
   el^6/(24576*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
   (el^6*MZ^2)/(24576*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
   el^6/(147456*cw^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^2) + 
   (el^6*MW^2)/(73728*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^2) - 
   (el^6*MZ^4)/(147456*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^2*sw^2) + 
   (el^6/(8192*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^4)/(49152*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     el^6/(2048*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*MZ^4)/(12288*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     el^6/(2048*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
     (el^6*MZ^4)/(12288*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MW]^2 + 
   ((7*el^6)/(98304*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (el^6*MZ^2)/(49152*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (7*el^6)/(24576*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (el^6*MZ^2)/(12288*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (7*el^6)/(24576*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
     (el^6*MZ^2)/(12288*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ] + 
   (el^6/(4096*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     el^6/(1024*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     el^6/(1024*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[mu]*Log[MZ] + 
   (-1/8192*el^6/(cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^4)/(49152*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     el^6/(2048*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*MZ^4)/(12288*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     el^6/(2048*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
     (el^6*MZ^4)/(12288*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ]^2 + 
   ((-1/16384*el^6/(cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
       el^6/(4096*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       el^6/(4096*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MW] + 
     (el^6/(16384*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       el^6/(4096*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       el^6/(4096*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ])/e + 
   Log[MW]*((-7*el^6)/(98304*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
     (el^6*MZ^2)/(49152*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
     (7*el^6)/(24576*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(12288*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (7*el^6)/(24576*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
     (el^6*MZ^2)/(12288*cw^4*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
     (-1/4096*el^6/(cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) + 
       el^6/(1024*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       el^6/(1024*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[mu] + 
     ((el^6*MZ^4)/(24576*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^6) - 
       (el^6*MZ^4)/(6144*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (el^6*MZ^4)/(6144*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ]) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(32768*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^6) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (49152*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^6) - 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(98304*cw^4*MW^4*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^6) - (el^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (8192*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(12288*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*
     Pi^4*sw^4) + (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (24576*cw^4*MW^4*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(8192*cw^4*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^2) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (12288*cw^4*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^2) - 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(24576*cw^4*MW^4*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^2))
