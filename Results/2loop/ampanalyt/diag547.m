(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MH^2)/(1024*MW^4*Pi^4*sw^4) + (7*el^6)/(2048*MW^2*Pi^4*sw^4) + 
  (3*el^6)/(2048*e*MW^2*Pi^4*sw^4) + 
  (-1/512*(el^6*MH^4)/(MW^6*Pi^4*sw^4) + (el^6*MH^2)/(512*MW^4*Pi^4*sw^4) + 
    el^6/(512*MW^2*Pi^4*sw^4))*Log[MH]^2 + 
  (3*el^6*Log[mu])/(512*MW^2*Pi^4*sw^4) + 
  (-1/512*(el^6*MH^2)/(MW^4*Pi^4*sw^4) - (3*el^6)/(512*MW^2*Pi^4*sw^4))*
   Log[MW] + (-1/512*(el^6*MH^4)/(MW^6*Pi^4*sw^4) + 
    (el^6*MH^2)/(512*MW^4*Pi^4*sw^4) + el^6/(512*MW^2*Pi^4*sw^4))*Log[MW]^2 + 
  Log[MH]*((el^6*MH^2)/(512*MW^4*Pi^4*sw^4) + 
    ((el^6*MH^4)/(256*MW^6*Pi^4*sw^4) - (el^6*MH^2)/(256*MW^4*Pi^4*sw^4) - 
      el^6/(256*MW^2*Pi^4*sw^4))*Log[MW]) + (el^6*MH^4*Phi[MH^2/(4*MW^2)])/
   (2048*MW^6*Pi^4*sw^4) - (3*el^6*MH^2*Phi[MH^2/(4*MW^2)])/
   (2048*MW^4*Pi^4*sw^4) - (el^6*Phi[MH^2/(4*MW^2)])/(2048*MW^2*Pi^4*sw^4) - 
  (el^6*MH^4*PolyLog[2, 1 - MW^2/MH^2])/(1024*MW^6*Pi^4*sw^4) + 
  (el^6*MH^2*PolyLog[2, 1 - MW^2/MH^2])/(1024*MW^4*Pi^4*sw^4) + 
  (el^6*PolyLog[2, 1 - MW^2/MH^2])/(1024*MW^2*Pi^4*sw^4))
