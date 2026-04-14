(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*(-1/36864*(el^6*MW^2)/((MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (el^6*MZ^2)/(18432*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (el^6*MZ^4)/(36864*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (7*el^6)/(442368*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) - 
   (7*el^6*MW^2)/(442368*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^4) + 
   ((5*el^6)/(12288*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (5*el^6*MW^2)/(12288*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^2)/(12288*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MW]^2 + 
   ((95*el^6)/(221184*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (137*el^6*MW^2)/(221184*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (149*el^6*MZ^2)/(221184*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (el^6*MZ^4)/(18432*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ] + 
   ((5*el^6)/(9216*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (5*el^6*MW^2)/(9216*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^2)/(9216*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[mu]*Log[MZ] + 
   ((-5*el^6)/(36864*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (5*el^6*MW^2)/(36864*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (5*el^6*MZ^2)/(36864*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ]^2 + 
   Log[MW]*((-95*el^6)/(221184*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (137*el^6*MW^2)/(221184*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (149*el^6*MZ^2)/(221184*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (el^6*MZ^4)/(18432*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     ((-5*el^6)/(9216*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (5*el^6*MW^2)/(9216*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
       (5*el^6*MZ^2)/(9216*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[mu] + 
     ((-5*el^6)/(18432*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (5*el^6*MW^2)/(18432*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
       (5*el^6*MZ^2)/(18432*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ]) - 
   (5*el^6*Phi[1/4])/(49152*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (5*el^6*Phi[MZ^2/(4*MW^2)])/(147456*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (5*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(36864*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*
     sw^4) + (53*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(147456*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) - (5*el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(36864*MZ^2*(MW^2 - MZ^2)^2*
     Pi^4*sw^4) - (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(3072*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (17*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(147456*MW^2*(MW^2 - MZ^2)^2*
     Pi^4*sw^4) - (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(73728*MW^4*(MW^2 - MZ^2)^2*
     Pi^4*sw^4) - (7*el^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (73728*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (7*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(73728*(MW - MZ)*MZ^2*(MW + MZ)*
     Pi^4*sw^4) + (5*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (24576*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (13*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(36864*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (13*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (73728*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/(36864*MW^4*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) - (7*el^6*(3*MW^2*Phi[1/4] - 4*MW^2*Phi[MZ^2/(4*MW^2)] + 
      MZ^2*Phi[MZ^2/(4*MW^2)] - 2*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      2*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(36864*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^4)) + Op*((5*el^6*MW^2)/(12288*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (5*el^6*MZ^2)/(6144*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (5*el^6*MZ^4)/(12288*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (113*el^6)/(663552*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) + 
   (113*el^6*MW^2)/(663552*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^4) - 
   (79*el^6)/(331776*(-MW + MZ)*(MW + MZ)*Pi^2*sw^4) + 
   (79*el^6*MW^2)/(331776*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^2*sw^4) + 
   ((-17*el^6)/(9216*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (31*el^6)/(4608*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (5*el^6*MW^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MW]^2 + 
   ((61*el^6)/(27648*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (107*el^6)/(27648*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (127*el^6*MW^2)/(18432*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (7*el^6*MZ^2)/(1152*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^4)/(6144*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ] + 
   ((-17*el^6)/(6912*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (31*el^6)/(3456*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (5*el^6*MW^2)/(768*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^2)/(768*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[mu]*Log[MZ] + 
   ((17*el^6)/(27648*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (31*el^6)/(13824*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (5*el^6*MW^2)/(3072*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (5*el^6*MZ^2)/(3072*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ]^2 + 
   Log[MW]*((-61*el^6)/(27648*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (107*el^6)/(27648*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (127*el^6*MW^2)/(18432*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (7*el^6*MZ^2)/(1152*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (5*el^6*MZ^4)/(6144*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     ((17*el^6)/(6912*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (31*el^6)/(3456*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (5*el^6*MW^2)/(768*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
       (5*el^6*MZ^2)/(768*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[mu] + 
     ((17*el^6)/(13824*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (31*el^6)/(6912*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (5*el^6*MW^2)/(1536*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
       (5*el^6*MZ^2)/(1536*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ]) + 
   (17*el^6*Phi[1/4])/(36864*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (31*el^6*Phi[1/4])/(18432*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (17*el^6*Phi[MZ^2/(4*MW^2)])/(110592*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (17*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(27648*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*
     sw^4) + (31*el^6*Phi[MZ^2/(4*MW^2)])/(55296*(-MW + MZ)*(MW + MZ)*Pi^4*
     sw^4) - (31*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(13824*MZ^2*(-MW + MZ)*
     (MW + MZ)*Pi^4*sw^4) + (35*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/
    (12288*(MW^2 - MZ^2)^2*Pi^4*sw^4) - (5*el^6*MW^4*Phi[MZ^2/(4*MW^2)])/
    (3072*MZ^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - (5*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/
    (8192*(MW^2 - MZ^2)^2*Pi^4*sw^4) - (5*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/
    (6144*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + (5*el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/
    (24576*MW^4*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (113*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(110592*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^4) - (113*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (110592*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) + 
   (79*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(55296*(-MW + MZ)*(MW + MZ)*Pi^4*
     sw^4) - (79*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (55296*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (5*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (25*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(12288*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) - (5*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (6144*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (5*el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/(12288*MW^4*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) - (el^6*(3*MW^2*Phi[1/4] - 4*MW^2*Phi[MZ^2/(4*MW^2)] + 
      MZ^2*Phi[MZ^2/(4*MW^2)] - 2*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      2*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(12288*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^4))
