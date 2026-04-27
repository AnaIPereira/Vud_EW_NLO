(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*(-12*MH^4*MW^2 + 24*MH^2*MW^2*MZ^2 - 12*MW^2*MZ^4)*Log[MH]^2)/
   (12288*cw^4*MH^2*(MH - MW)*MW^2*(MH + MW)*MZ^2*Pi^4*sw^6) + 
  (el^6*(12*MH^2*MW^4 - 24*MH^2*MW^2*MZ^2 + 12*MH^2*MZ^4)*Log[MW]^2)/
   (12288*cw^4*MH^2*(MH - MW)*MW^2*(MH + MW)*MZ^2*Pi^4*sw^6) + 
  (el^6*(-12*MH^4*MW^2 + 12*MH^2*MW^4 + 12*MH^2*MZ^4 - 12*MW^2*MZ^4)*
    Log[MZ]^2)/(12288*cw^4*MH^2*(MH - MW)*MW^2*(MH + MW)*MZ^2*Pi^4*sw^6) + 
  Log[MW]*(el^6/(1024*cw^4*(MH - MW)*(MH + MW)*Pi^4*sw^6) + 
    (el^6*(-24*MH^2*MW^4 + 48*MH^2*MW^2*MZ^2 - 24*MH^2*MZ^4)*Log[MZ])/
     (12288*cw^4*MH^2*(MH - MW)*MW^2*(MH + MW)*MZ^2*Pi^4*sw^6)) + 
  Log[MH]*(-1/1024*el^6/(cw^4*(MH - MW)*(MH + MW)*Pi^4*sw^6) + 
    (el^6*(24*MH^4*MW^2 - 48*MH^2*MW^2*MZ^2 + 24*MW^2*MZ^4)*Log[MZ])/
     (12288*cw^4*MH^2*(MH - MW)*MW^2*(MH + MW)*MZ^2*Pi^4*sw^6)) + 
  (el^6*(MH^2*MZ^4*Pi^2 - MW^2*MZ^4*Pi^2 + 3*MH^4*MW^2*Phi[MH^2/(4*MZ^2)] - 
     12*MH^2*MW^2*MZ^2*Phi[MH^2/(4*MZ^2)] - 3*MH^2*MW^4*Phi[MW^2/(4*MZ^2)] + 
     12*MH^2*MW^2*MZ^2*Phi[MW^2/(4*MZ^2)] - 
     6*MH^4*MW^2*PolyLog[2, 1 - MZ^2/MH^2] + 12*MH^2*MW^2*MZ^2*
      PolyLog[2, 1 - MZ^2/MH^2] - 6*MW^2*MZ^4*PolyLog[2, 1 - MZ^2/MH^2] + 
     6*MH^2*MW^4*PolyLog[2, 1 - MZ^2/MW^2] - 12*MH^2*MW^2*MZ^2*
      PolyLog[2, 1 - MZ^2/MW^2] + 6*MH^2*MZ^4*PolyLog[2, 1 - MZ^2/MW^2]))/
   (12288*cw^4*MH^2*(MH - MW)*MW^2*(MH + MW)*MZ^2*Pi^4*sw^6))
