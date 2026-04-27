(* Created with the Wolfram Language : www.wolfram.com *)
Op*(-1/2048*(el^6*(MH^2 - MW^2)^2*MZ^2*(2*MW^2 - MZ^2)*Log[MH]^2)/
    (MW^6*(MW^2 - MZ^2)^2*Pi^4) + 
  (el^6*MZ^4*(-2*MW^2 + MZ^2)*(2*MW^6 + 7*MW^4*MZ^2 + MH^4*(-2*MW^2 + MZ^2) + 
     2*MH^2*(MW^4 - MW^2*MZ^2))*Log[MW]^2)/(2048*MW^6*(MW^2 - MZ^2)^4*Pi^4) + 
  (el^6*MZ^4*(-2*MW^2 + MZ^2)*(MH^2 - MW^2 + 9*MZ^2)*Log[MZ])/
   (2048*MW^2*(MW^2 - MZ^2)^4*Pi^4) - 
  (3*el^6*MZ^6*(-2*MW^2 + MZ^2)*Log[MZ]^2)/(2048*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
  ((3*el^6*MZ^4*(-2*MW^2 + MZ^2))/(4096*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (3*el^6*MZ^6*(-2*MW^2 + MZ^2)*Log[MW])/(2048*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
    (3*el^6*MZ^6*(-2*MW^2 + MZ^2)*Log[MZ])/(2048*MW^2*(MW^2 - MZ^2)^4*Pi^4))/
   e + Log[mu]*((3*el^6*MZ^4*(-2*MW^2 + MZ^2))/(1024*MW^2*(MW^2 - MZ^2)^3*
      Pi^4) - (3*el^6*MZ^6*(-2*MW^2 + MZ^2)*Log[MW])/
     (512*MW^2*(MW^2 - MZ^2)^4*Pi^4) + (3*el^6*MZ^6*(-2*MW^2 + MZ^2)*Log[MZ])/
     (512*MW^2*(MW^2 - MZ^2)^4*Pi^4)) + 
  Log[MW]*(-1/2048*(el^6*MZ^4*(-2*MW^2 + MZ^2)*(5*MW^4 + 3*MW^2*MZ^2 + 
        MH^2*(2*MW^2 - MZ^2)))/(MW^4*(MW^2 - MZ^2)^4*Pi^4) - 
    (el^6*MZ^2*(2*MW^2 - MZ^2)*(MH^4 + MW^4 - 4*MW^2*MZ^2 - 3*MZ^4 - 
       2*MH^2*(MW^2 - MZ^2))*Log[MZ])/(2048*MW^2*(MW^2 - MZ^2)^4*Pi^4)) + 
  Log[MH]*((el^6*MH^2*MZ^4*(-2*MW^2 + MZ^2))/(2048*MW^4*(MW^2 - MZ^2)^3*
      Pi^4) + (el^6*MZ^2*(2*MW^2 - MZ^2)*(MW^8 - MW^4*MZ^4 + 
       MH^4*(MW^4 - 4*MW^2*MZ^2 + 2*MZ^4) - 2*MH^2*(MW^6 - 3*MW^4*MZ^2 + 
         2*MW^2*MZ^4))*Log[MW])/(2048*MW^6*(MW^2 - MZ^2)^4*Pi^4) - 
    (el^6*MZ^2*(-2*MW^2 + MZ^2)*(MH^4 + MW^4 - 4*MW^2*MZ^2 + 3*MZ^4 - 
       2*MH^2*(MW^2 - MZ^2))*Log[MZ])/(2048*MW^2*(MW^2 - MZ^2)^4*Pi^4)) - 
  (el^6*MZ^2*(2*MW^2 - MZ^2)*
    (-(MZ^2*(MH^4*(-2*MW^2 + MZ^2) + 2*MW^4*(MW^2 + 3*MZ^2) + 
        MH^2*(6*MW^4 - 4*MW^2*MZ^2))*Phi[MH^2/(4*MW^2)]) + 
     2*(MW^2 - MZ^2)*(MW^2*(MH^2 + 8*MW^2)*MZ^2 + (MH^2 - MW^2)^2*
        (MW^2 - MZ^2)*PolyLog[2, 1 - MW^2/MH^2]) + 
     MW^4*MZ^2*(-MH^2 + MW^2 - 3*MZ^2)*Psi[MH^2/MZ^2, MW^2/MZ^2]))/
   (8192*MW^6*(MW^2 - MZ^2)^4*Pi^4))
