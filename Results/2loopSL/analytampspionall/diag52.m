(* Created with the Wolfram Language : www.wolfram.com *)
Op*(el^6/(1024*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*MZ^2)/(1024*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*MZ^2)/(6144*MW^4*Pi^2*sw^4) - el^6/(768*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (el^6*MZ^2)/(768*MW^2*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (el^6*MZ^2)/(4608*MW^4*Pi^2*sw^2) + 
   (-1/512*(el^6*MZ^2)/(MW^4*Pi^4*sw^4) + (el^6*MZ^2)/(384*MW^4*Pi^4*sw^2))*
    Log[MW]^2 + (el^6/(512*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (el^6*MZ^2)/(512*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     el^6/(384*(MW^2 - MZ^2)*Pi^4*sw^2) + (el^6*MZ^2)/
      (384*MW^2*(MW^2 - MZ^2)*Pi^4*sw^2))*Log[MZ] + 
   (-1/512*(el^6*MZ^2)/(MW^4*Pi^4*sw^4) + (el^6*MZ^2)/(384*MW^4*Pi^4*sw^2))*
    Log[MZ]^2 + Log[MW]*(-1/512*el^6/((MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(512*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     el^6/(384*(MW^2 - MZ^2)*Pi^4*sw^2) - (el^6*MZ^2)/
      (384*MW^2*(MW^2 - MZ^2)*Pi^4*sw^2) + 
     ((el^6*MZ^2)/(256*MW^4*Pi^4*sw^4) - (el^6*MZ^2)/(192*MW^4*Pi^4*sw^2))*
      Log[MZ]) + (el^6*Phi[MZ^2/(4*MW^2)])/(512*MW^2*Pi^4*sw^4) - 
   (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(2048*MW^4*Pi^4*sw^4) - 
   (9*el^6*Phi[MZ^2/(4*MW^2)])/(2048*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(512*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (3*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(1024*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(2048*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*Phi[MZ^2/(4*MW^2)])/(384*MW^2*Pi^4*sw^2) + 
   (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(1536*MW^4*Pi^4*sw^2) + 
   (3*el^6*Phi[MZ^2/(4*MW^2)])/(512*(MW^2 - MZ^2)*Pi^4*sw^2) - 
   (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(384*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^2) - 
   (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(256*MW^2*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(1536*MW^4*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(512*MW^2*Pi^4*sw^4) - 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(512*MW^4*Pi^4*sw^4) - 
   (3*el^6*PolyLog[2, 1 - MZ^2/MW^2])/(1024*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(256*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(1024*MW^4*(MW^2 - MZ^2)*Pi^4*
     sw^4) - (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(384*MW^2*Pi^4*sw^2) + 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(384*MW^4*Pi^4*sw^2) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(256*(MW^2 - MZ^2)*Pi^4*sw^2) - 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(192*MW^2*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/(768*MW^4*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (el^6*(MW^2*Pi^2 - 12*MW^2*Phi[MZ^2/(4*MW^2)] + 
      3*MZ^2*Phi[MZ^2/(4*MW^2)] - 6*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(6144*MW^2*MZ^2*Pi^4*sw^4) - 
   (el^6*(MW^2*Pi^2 - 12*MW^2*Phi[MZ^2/(4*MW^2)] + 
      3*MZ^2*Phi[MZ^2/(4*MW^2)] - 6*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(4608*MW^2*MZ^2*Pi^4*sw^2)) + 
 Ev3*(el^6/(6144*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*MZ^2)/(6144*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*MZ^2)/(73728*MW^4*Pi^2*sw^4) + 
   (el^6*MZ^2)/(73728*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4) - 
   (el^6*MZ^4)/(36864*MW^4*(MW^2 - MZ^2)*Pi^2*sw^4) + 
   (el^6*MZ^6)/(73728*MW^6*(MW^2 - MZ^2)*Pi^2*sw^4) - 
   el^6/(4608*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (el^6*MZ^2)/(4608*MW^2*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (el^6*MZ^2)/(55296*MW^4*Pi^2*sw^2) - 
   (el^6*MZ^2)/(55296*MW^2*(MW^2 - MZ^2)*Pi^2*sw^2) + 
   (el^6*MZ^4)/(27648*MW^4*(MW^2 - MZ^2)*Pi^2*sw^2) - 
   (el^6*MZ^6)/(55296*MW^6*(MW^2 - MZ^2)*Pi^2*sw^2) + 
   (-1/6144*(el^6*MZ^2)/(MW^4*Pi^4*sw^4) + (el^6*MZ^2)/
      (6144*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (el^6*MZ^4)/(3072*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6*MZ^6)/(6144*MW^6*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(4608*MW^4*Pi^4*sw^2) - (el^6*MZ^2)/(4608*MW^2*(MW^2 - MZ^2)*
       Pi^4*sw^2) + (el^6*MZ^4)/(2304*MW^4*(MW^2 - MZ^2)*Pi^4*sw^2) - 
     (el^6*MZ^6)/(4608*MW^6*(MW^2 - MZ^2)*Pi^4*sw^2))*Log[MW]^2 + 
   (el^6/(6144*(MW^2 - MZ^2)*Pi^4*sw^4) - (el^6*MZ^2)/
      (6144*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     el^6/(4608*(MW^2 - MZ^2)*Pi^4*sw^2) + (el^6*MZ^2)/
      (4608*MW^2*(MW^2 - MZ^2)*Pi^4*sw^2))*Log[MZ] + 
   (-1/6144*(el^6*MZ^2)/(MW^4*Pi^4*sw^4) + (el^6*MZ^2)/
      (6144*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
     (el^6*MZ^4)/(3072*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6*MZ^6)/(6144*MW^6*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(4608*MW^4*Pi^4*sw^2) - (el^6*MZ^2)/(4608*MW^2*(MW^2 - MZ^2)*
       Pi^4*sw^2) + (el^6*MZ^4)/(2304*MW^4*(MW^2 - MZ^2)*Pi^4*sw^2) - 
     (el^6*MZ^6)/(4608*MW^6*(MW^2 - MZ^2)*Pi^4*sw^2))*Log[MZ]^2 + 
   Log[MW]*(-1/6144*el^6/((MW^2 - MZ^2)*Pi^4*sw^4) + 
     (el^6*MZ^2)/(6144*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
     el^6/(4608*(MW^2 - MZ^2)*Pi^4*sw^2) - (el^6*MZ^2)/
      (4608*MW^2*(MW^2 - MZ^2)*Pi^4*sw^2) + 
     ((el^6*MZ^2)/(3072*MW^4*Pi^4*sw^4) - (el^6*MZ^2)/
        (3072*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) + (el^6*MZ^4)/
        (1536*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4) - (el^6*MZ^6)/
        (3072*MW^6*(MW^2 - MZ^2)*Pi^4*sw^4) - (el^6*MZ^2)/
        (2304*MW^4*Pi^4*sw^2) + (el^6*MZ^2)/(2304*MW^2*(MW^2 - MZ^2)*Pi^4*
         sw^2) - (el^6*MZ^4)/(1152*MW^4*(MW^2 - MZ^2)*Pi^4*sw^2) + 
       (el^6*MZ^6)/(2304*MW^6*(MW^2 - MZ^2)*Pi^4*sw^2))*Log[MZ]) + 
   (el^6*Phi[MZ^2/(4*MW^2)])/(6144*MW^2*Pi^4*sw^4) - 
   (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(24576*MW^4*Pi^4*sw^4) - 
   (13*el^6*Phi[MZ^2/(4*MW^2)])/(24576*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(6144*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (5*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(8192*MW^2*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (7*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(24576*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(24576*MW^6*(MW^2 - MZ^2)*Pi^4*sw^4) - 
   (el^6*Phi[MZ^2/(4*MW^2)])/(4608*MW^2*Pi^4*sw^2) + 
   (el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(18432*MW^4*Pi^4*sw^2) + 
   (13*el^6*Phi[MZ^2/(4*MW^2)])/(18432*(MW^2 - MZ^2)*Pi^4*sw^2) - 
   (el^6*MW^2*Phi[MZ^2/(4*MW^2)])/(4608*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^2) - 
   (5*el^6*MZ^2*Phi[MZ^2/(4*MW^2)])/(6144*MW^2*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (7*el^6*MZ^4*Phi[MZ^2/(4*MW^2)])/(18432*MW^4*(MW^2 - MZ^2)*Pi^4*sw^2) - 
   (el^6*MZ^6*Phi[MZ^2/(4*MW^2)])/(18432*MW^6*(MW^2 - MZ^2)*Pi^4*sw^2) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(6144*MW^2*Pi^4*sw^4) - 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(6144*MW^4*Pi^4*sw^4) - 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(4096*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(1536*MW^2*(MW^2 - MZ^2)*Pi^4*
     sw^4) - (7*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (12288*MW^4*(MW^2 - MZ^2)*Pi^4*sw^4) + 
   (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/(6144*MW^6*(MW^2 - MZ^2)*Pi^4*
     sw^4) - (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(4608*MW^2*Pi^4*sw^2) + 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(4608*MW^4*Pi^4*sw^2) + 
   (el^6*PolyLog[2, 1 - MZ^2/MW^2])/(3072*(MW^2 - MZ^2)*Pi^4*sw^2) - 
   (el^6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2])/(1152*MW^2*(MW^2 - MZ^2)*Pi^4*
     sw^2) + (7*el^6*MZ^4*PolyLog[2, 1 - MZ^2/MW^2])/
    (9216*MW^4*(MW^2 - MZ^2)*Pi^4*sw^2) - 
   (el^6*MZ^6*PolyLog[2, 1 - MZ^2/MW^2])/(4608*MW^6*(MW^2 - MZ^2)*Pi^4*
     sw^2) + (el^6*(MW^2*Pi^2 - 12*MW^2*Phi[MZ^2/(4*MW^2)] + 
      3*MZ^2*Phi[MZ^2/(4*MW^2)] - 6*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(73728*MW^2*MZ^2*Pi^4*sw^4) - 
   (el^6*(MW^2*Pi^2 - 12*MW^2*Phi[MZ^2/(4*MW^2)] + 
      3*MZ^2*Phi[MZ^2/(4*MW^2)] - 6*MW^2*PolyLog[2, 1 - MZ^2/MW^2] + 
      6*MZ^2*PolyLog[2, 1 - MZ^2/MW^2]))/(55296*MW^2*MZ^2*Pi^4*sw^2))
