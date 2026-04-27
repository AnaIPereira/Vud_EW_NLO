(* Created with the Wolfram Language : www.wolfram.com *)
Op*(-1/6144*(el^6*(MH^2 - MW^2)^2*MZ^2*(4*MW^2 - MZ^2)*Log[MH]^2)/
    (MW^6*(MW^2 - MZ^2)^2*Pi^4) + (el^6*MH^2*(MH^2 - 3*MW^2)*MZ^4*
    (4*MW^2 - MZ^2)*Log[MW]^2)/(6144*MW^6*(MW^2 - MZ^2)^3*Pi^4) + 
  (el^6*(-MH^2 + MW^2)*MZ^4*(4*MW^2 - MZ^2)*Log[MZ])/
   (6144*MW^4*(MW^2 - MZ^2)^3*Pi^4) + 
  Log[MW]*((el^6*(MH^2 - MW^2)*MZ^4*(4*MW^2 - MZ^2))/
     (6144*MW^4*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^2*(4*MW^2 - MZ^2)*(MH^4 + MW^4 - MW^2*MZ^2 - 
       MH^2*(2*MW^2 + MZ^2))*Log[MZ])/(6144*MW^4*(MW^2 - MZ^2)^3*Pi^4)) + 
  Log[MH]*((el^6*MZ^2*(4*MW^2 - MZ^2)*(MW^6 - MW^4*MZ^2 + 
       MH^4*(MW^2 - 2*MZ^2) + MH^2*(-2*MW^4 + 5*MW^2*MZ^2))*Log[MW])/
     (6144*MW^6*(MW^2 - MZ^2)^3*Pi^4) + 
    (el^6*MZ^2*(4*MW^2 - MZ^2)*(MH^4 + MW^4 - MW^2*MZ^2 - 
       MH^2*(2*MW^2 + MZ^2))*Log[MZ])/(6144*MW^4*(MW^2 - MZ^2)^3*Pi^4)) - 
  (el^6*(MH^2 - MW^2)*MZ^2*(4*MW^2 - MZ^2)*
    ((MH^2 - 4*MW^2)*MZ^2*Phi[MH^2/(4*MW^2)] + 2*(MH^2 - MW^2)*(MW^2 - MZ^2)*
      PolyLog[2, 1 - MW^2/MH^2] - MW^2*MZ^2*Psi[MH^2/MZ^2, MW^2/MZ^2]))/
   (24576*MW^6*(MW^2 - MZ^2)^3*Pi^4))
