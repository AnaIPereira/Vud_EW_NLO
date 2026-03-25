(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*(-1/12288*(el^6*MW^2)/((MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (el^6*MZ^2)/(6144*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (el^6*MZ^4)/(12288*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   el^6/(16384*(MW^2 - MZ^2)*Pi^2*sw^4) + 
   (el^6*MW^2)/(16384*MZ^2*(MW^2 - MZ^2)*Pi^2*sw^4) - 
   el^6/(9216*(-MW^2 + MZ^2)*Pi^2*sw^4) + 
   (el^6*MW^2)/(9216*MZ^2*(-MW^2 + MZ^2)*Pi^2*sw^4) + 
   ((-5*el^6*MW^2)/(4096*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^2)/(4096*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (3*el^6)/(4096*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     el^6/(512*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MW]^2 + 
   ((-137*el^6*MW^2)/(73728*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (149*el^6*MZ^2)/(73728*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (el^6*MZ^4)/(6144*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     el^6/(8192*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (13*el^6)/(9216*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ] + 
   ((-5*el^6*MW^2)/(3072*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^2)/(3072*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     el^6/(1024*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     el^6/(384*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[mu]*Log[MZ] + 
   ((5*el^6*MW^2)/(12288*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (5*el^6*MZ^2)/(12288*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     el^6/(4096*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     el^6/(1536*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ]^2 + 
   Log[MW]*((137*el^6*MW^2)/(73728*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (149*el^6*MZ^2)/(73728*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (el^6*MZ^4)/(6144*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     el^6/(8192*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (13*el^6)/(9216*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
     ((5*el^6*MW^2)/(3072*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
       (5*el^6*MZ^2)/(3072*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
       el^6/(1024*(MW^2 - MZ^2)*Pi^4*sw^4) + 
       el^6/(384*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[mu] + 
     ((5*el^6*MW^2)/(6144*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
       (5*el^6*MZ^2)/(6144*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
       el^6/(2048*(MW^2 - MZ^2)*Pi^4*sw^4) + 
       el^6/(768*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ]) + 
   (3*el^6*Phi[1/4])/(16384*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (el^6*Phi[1/4])/(2048*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
   (53*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(49152*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (5*el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(12288*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (17*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(49152*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(24576*MW^4*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (el^6*Phi[MZ^2/(4*MW^2)])/(16384*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(4096*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (el^6*Phi[MZ^2/(4*MW^2)])/(6144*(-MW^2 + MZ^2)*Pi^4*sw^4) - 
   (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(1536*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
   (5*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(8192*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (13*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(12288*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (13*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (24576*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/(12288*MW^4*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (3*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(8192*(MW^2 - MZ^2)*Pi^4*
     sw^4) - (3*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (8192*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4) + (el^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (1536*(-MW^2 + MZ^2)*Pi^4*sw^4) - (el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (1536*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4) - 
   (7*el^6*(3*MW^2*Phi[1/4] - 4*MW^2*Phi[MZ^2/(4*MW^2)] + 
      MZ^2*Phi[MZ^2/(4*MW^2)] - 2*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      2*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(12288*MW^2*(MW^2 - MZ^2)*Pi^4*
     sw^4)) + Op*((5*el^6*MW^2)/(4096*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (5*el^6*MZ^2)/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (5*el^6*MZ^4)/(4096*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (497*el^6)/(221184*(MW^2 - MZ^2)*Pi^2*sw^4) + 
   (497*el^6*MW^2)/(221184*MZ^2*(MW^2 - MZ^2)*Pi^2*sw^4) - 
   (271*el^6)/(110592*(-MW^2 + MZ^2)*Pi^2*sw^4) + 
   (271*el^6*MW^2)/(110592*MZ^2*(-MW^2 + MZ^2)*Pi^2*sw^4) + 
   ((-15*el^6*MW^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (15*el^6*MZ^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (113*el^6)/(3072*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (79*el^6)/(1536*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MW]^2 + 
   ((-127*el^6*MW^2)/(6144*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (7*el^6*MZ^2)/(384*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^4)/(2048*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (49*el^6)/(3072*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (35*el^6)/(1024*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ] + 
   ((-5*el^6*MW^2)/(256*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^2)/(256*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (113*el^6)/(2304*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (79*el^6)/(1152*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[mu]*Log[MZ] + 
   ((5*el^6*MW^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (5*el^6*MZ^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (113*el^6)/(9216*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (79*el^6)/(4608*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ]^2 + 
   Log[MW]*((127*el^6*MW^2)/(6144*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (7*el^6*MZ^2)/(384*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (5*el^6*MZ^4)/(2048*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (49*el^6)/(3072*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (35*el^6)/(1024*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
     ((5*el^6*MW^2)/(256*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
       (5*el^6*MZ^2)/(256*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
       (113*el^6)/(2304*(MW^2 - MZ^2)*Pi^4*sw^4) + 
       (79*el^6)/(1152*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[mu] + 
     ((5*el^6*MW^2)/(512*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
       (5*el^6*MZ^2)/(512*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
       (113*el^6)/(4608*(MW^2 - MZ^2)*Pi^4*sw^4) + 
       (79*el^6)/(2304*(-MW^2 + MZ^2)*Pi^4*sw^4))*Log[MZ]) + 
   (113*el^6*Phi[1/4])/(12288*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (79*el^6*Phi[1/4])/(6144*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
   (35*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(4096*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (5*el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(1024*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (15*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(8192*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (5*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(2048*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (5*el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(8192*MW^4*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (113*el^6*Phi[MZ^2/(4*MW^2)])/(36864*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (113*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(9216*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (79*el^6*Phi[MZ^2/(4*MW^2)])/(18432*(-MW^2 + MZ^2)*Pi^4*sw^4) - 
   (79*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(4608*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4) + 
   (15*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) - (25*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (4096*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (5*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(2048*MW^2*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (5*el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (4096*MW^4*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (497*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(36864*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (497*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(36864*MZ^2*(MW^2 - MZ^2)*Pi^4*
     sw^4) + (271*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(18432*(-MW^2 + MZ^2)*Pi^4*
     sw^4) - (271*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (18432*MZ^2*(-MW^2 + MZ^2)*Pi^4*sw^4) - 
   (el^6*(3*MW^2*Phi[1/4] - 4*MW^2*Phi[MZ^2/(4*MW^2)] + 
      MZ^2*Phi[MZ^2/(4*MW^2)] - 2*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      2*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(4096*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4))
