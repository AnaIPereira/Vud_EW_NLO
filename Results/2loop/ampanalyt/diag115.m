(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*(4*MH^4 - 8*MH^2*MW^2 - 4*MW^4)*Log[MH]^2)/
   (4096*(MH - MW)*MW^4*(MH + MW)*Pi^4*sw^4) + 
  (el^6*MH^2*Log[MW])/(1024*(MH - MW)*MW^2*(MH + MW)*Pi^4*sw^4) + 
  (el^6*(4*MH^4 - 8*MH^2*MW^2 - 4*MW^4)*Log[MW]^2)/
   (4096*(MH - MW)*MW^4*(MH + MW)*Pi^4*sw^4) + 
  Log[MH]*(-1/1024*(el^6*MH^2)/((MH - MW)*MW^2*(MH + MW)*Pi^4*sw^4) + 
    (el^6*(-8*MH^4 + 16*MH^2*MW^2 + 8*MW^4)*Log[MW])/
     (4096*(MH - MW)*MW^4*(MH + MW)*Pi^4*sw^4)) + 
  (el^6*(-2*MH^2*MW^2 + 2*MW^4 - 3*MW^4*Phi[1/4] - MH^4*Phi[MH^2/(4*MW^2)] + 
     4*MH^2*MW^2*Phi[MH^2/(4*MW^2)] + 2*MH^4*PolyLog[2, 1 - MW^2/MH^2] - 
     4*MH^2*MW^2*PolyLog[2, 1 - MW^2/MH^2] - 
     2*MW^4*PolyLog[2, 1 - MW^2/MH^2]))/(4096*(MH - MW)*MW^4*(MH + MW)*Pi^4*
    sw^4))
