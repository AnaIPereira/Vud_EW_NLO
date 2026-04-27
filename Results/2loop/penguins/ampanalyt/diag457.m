(* Created with the Wolfram Language : www.wolfram.com *)
Op*(-1/2048*(el^6*(MH^2 - MW^2)^2*MZ^4*Log[MH]^2)/
    (MW^6*(MW^2 - MZ^2)^2*Pi^4) + (el^6*(MH^4 - 3*MH^2*MW^2)*MZ^6*Log[MW]^2)/
   (2048*MW^6*(MW^2 - MZ^2)^3*Pi^4) + (el^6*(-MH^2 + MW^2)*MZ^6*Log[MZ])/
   (2048*MW^4*(MW^2 - MZ^2)^3*Pi^4) + 
  Log[MH]*((el^6*MZ^4*(MW^6 - MW^4*MZ^2 + MH^4*(MW^2 - 2*MZ^2) + 
       MH^2*(-2*MW^4 + 5*MW^2*MZ^2))*Log[MW])/(2048*MW^6*(MW^2 - MZ^2)^3*
      Pi^4) + (el^6*MZ^4*(MH^4 + MW^4 - MW^2*MZ^2 - MH^2*(2*MW^2 + MZ^2))*
      Log[MZ])/(2048*MW^4*(MW^2 - MZ^2)^3*Pi^4)) + 
  Log[MW]*((el^6*(MH^2 - MW^2)*MZ^6)/(2048*MW^4*(MW^2 - MZ^2)^3*Pi^4) + 
    (el^6*MZ^4*(-MH^4 - MW^4 + MW^2*MZ^2 + MH^2*(2*MW^2 + MZ^2))*Log[MZ])/
     (2048*MW^4*(MW^2 - MZ^2)^3*Pi^4)) - 
  (el^6*(MH^2 - MW^2)*MZ^4*((MH^2 - 4*MW^2)*MZ^2*Phi[MH^2/(4*MW^2)] + 
     2*(MH^2 - MW^2)*(MW^2 - MZ^2)*PolyLog[2, 1 - MW^2/MH^2] - 
     MW^2*MZ^2*Psi[MH^2/MZ^2, MW^2/MZ^2]))/(8192*MW^6*(MW^2 - MZ^2)^3*Pi^4))
