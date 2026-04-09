(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*((el^6*MW^2)/(18432*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (el^6*MZ^2)/(9216*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (el^6*MZ^4)/(18432*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (7*el^6)/(221184*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) + 
   (7*el^6*MW^2)/(221184*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^4) + 
   ((-5*el^6)/(6144*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (5*el^6*MW^2)/(6144*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (5*el^6*MZ^2)/(6144*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MW]^2 + 
   ((-95*el^6)/(110592*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (137*el^6*MW^2)/(110592*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (149*el^6*MZ^2)/(110592*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (el^6*MZ^4)/(9216*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ] + 
   ((-5*el^6)/(4608*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (5*el^6*MW^2)/(4608*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (5*el^6*MZ^2)/(4608*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[mu]*Log[MZ] + 
   ((5*el^6)/(18432*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (5*el^6*MW^2)/(18432*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (5*el^6*MZ^2)/(18432*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ]^2 + 
   Log[MW]*((95*el^6)/(110592*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (137*el^6*MW^2)/(110592*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (149*el^6*MZ^2)/(110592*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (el^6*MZ^4)/(9216*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     ((5*el^6)/(4608*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       (5*el^6*MW^2)/(4608*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
       (5*el^6*MZ^2)/(4608*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[mu] + 
     ((5*el^6)/(9216*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       (5*el^6*MW^2)/(9216*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
       (5*el^6*MZ^2)/(9216*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ]) + 
   (5*el^6*Phi[1/4])/(24576*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (5*el^6*Phi[MZ^2/(4*MW^2)])/(73728*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (5*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(18432*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*
     sw^4) - (53*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(73728*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (5*el^6*MW^4*Phi[MZ^2/(4*MW^2)])/(18432*MZ^2*(MW^2 - MZ^2)^2*
     Pi^4*sw^4) + (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(1536*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) - (17*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(73728*MW^2*(MW^2 - MZ^2)^2*
     Pi^4*sw^4) + (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(36864*MW^4*(MW^2 - MZ^2)^2*
     Pi^4*sw^4) + (7*el^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (36864*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (7*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/(36864*(MW - MZ)*MZ^2*(MW + MZ)*
     Pi^4*sw^4) - (5*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (12288*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (13*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(18432*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) - (13*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (36864*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/(18432*MW^4*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (7*el^6*(3*MW^2*Phi[1/4] - 4*MW^2*Phi[MZ^2/(4*MW^2)] + 
      MZ^2*Phi[MZ^2/(4*MW^2)] - 2*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      2*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(18432*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^4)) + Op*((3*el^6*MW^2)/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (3*el^6*MZ^2)/(1024*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (3*el^6*MZ^4)/(2048*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (149*el^6)/(331776*(MW - MZ)*(MW + MZ)*Pi^2*sw^4) - 
   (149*el^6*MW^2)/(331776*(MW - MZ)*MZ^2*(MW + MZ)*Pi^2*sw^4) + 
   (115*el^6)/(165888*(-MW + MZ)*(MW + MZ)*Pi^2*sw^4) - 
   (115*el^6*MW^2)/(165888*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^2*sw^4) + 
   (el^6/(576*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     el^6/(576*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))*Log[MW]^2 + 
   ((-221*el^6)/(27648*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (91*el^6)/(13824*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (5*el^6*MW^2)/(1152*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (67*el^6*MZ^2)/(9216*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (3*el^6*MZ^4)/(1024*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4))*Log[MZ] + 
   (el^6/(432*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     el^6/(432*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))*Log[mu]*Log[MZ] + 
   (-1/1728*el^6/((MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     el^6/(1728*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))*Log[MZ]^2 + 
   Log[MW]*((221*el^6)/(27648*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (91*el^6)/(13824*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (5*el^6*MW^2)/(1152*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (67*el^6*MZ^2)/(9216*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
     (3*el^6*MZ^4)/(1024*MW^2*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
     (-1/432*el^6/((MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       el^6/(432*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))*Log[mu] + 
     (-1/864*el^6/((MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       el^6/(864*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4))*Log[MZ]) - 
   (el^6*Phi[1/4])/(2304*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (el^6*Phi[1/4])/(2304*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) - 
   (el^6*Phi[MZ^2/(4*MW^2)])/(6912*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(1728*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) - 
   (el^6*Phi[MZ^2/(4*MW^2)])/(6912*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(1728*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*
     sw^4) - (3*el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(1024*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (27*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(4096*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) - (9*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(2048*MW^2*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (3*el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(4096*MW^4*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) - (149*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(55296*(MW - MZ)*(MW + MZ)*
     Pi^4*sw^4) + (149*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (55296*(MW - MZ)*MZ^2*(MW + MZ)*Pi^4*sw^4) - 
   (115*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(27648*(-MW + MZ)*(MW + MZ)*Pi^4*
     sw^4) + (115*el^6*MW^2*PolyLog[2, 1 - MZ^2/MW^2])/
    (27648*MZ^2*(-MW + MZ)*(MW + MZ)*Pi^4*sw^4) + 
   (9*el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(2048*(MW^2 - MZ^2)^2*Pi^4*sw^4) - 
   (3*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(512*MW^2*(MW^2 - MZ^2)^2*Pi^4*
     sw^4) + (3*el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/
    (2048*MW^4*(MW^2 - MZ^2)^2*Pi^4*sw^4) + 
   (9*el^6*(3*MW^2*Phi[1/4] - 4*MW^2*Phi[MZ^2/(4*MW^2)] + 
      MZ^2*Phi[MZ^2/(4*MW^2)] - 2*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      2*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(2048*MW^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^4))
