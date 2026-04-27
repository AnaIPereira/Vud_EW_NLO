(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^2)/(1024*e^2*MW^2*(MW^2 - MZ^2)*Pi^4) + 
  (el^6*MZ^2*Log[mu]^2)/(128*MW^2*(MW^2 - MZ^2)*Pi^4) + 
  (el^6*MZ^2*Log[MW]^2)/(512*MW^2*(MW^2 - MZ^2)*Pi^4) + 
  (3*el^6*Log[MZ])/(1024*MW^2*(1 - MW^2/MZ^2)*Pi^4) + 
  (el^6*MZ^2*Log[MZ]^2)/(512*MW^2*(MW^2 - MZ^2)*Pi^4) + 
  (el^6/(2048*MW^2*(1 - MW^2/MZ^2)*Pi^4) + (el^6*MZ^2*Log[mu])/
     (256*MW^2*(MW^2 - MZ^2)*Pi^4) + (el^6*Log[MW])/
     (512*MW^2*(1 - MW^2/MZ^2)*Pi^4) + (el^6*Log[MZ])/
     (512*MW^2*(1 - MW^2/MZ^2)*Pi^4))/e + 
  Log[mu]*(el^6/(512*MW^2*(1 - MW^2/MZ^2)*Pi^4) + 
    (el^6*Log[MW])/(128*MW^2*(1 - MW^2/MZ^2)*Pi^4) + 
    (el^6*Log[MZ])/(128*MW^2*(1 - MW^2/MZ^2)*Pi^4)) + 
  Log[MW]*((5*el^6*MZ^2)/(1024*MW^2*(MW^2 - MZ^2)*Pi^4) + 
    (el^6*MZ^2*Log[MZ])/(256*MW^2*(MW^2 - MZ^2)*Pi^4)) + 
  (el^6*(MZ^2*(45 + 2*Pi^2) + 6*(-4*MW^2 + MZ^2)*Phi[MZ^2/(4*MW^2)]))/
   (12288*MW^2*(MW^2 - MZ^2)*Pi^4))
