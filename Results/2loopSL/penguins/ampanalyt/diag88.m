(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^6*(-2*MW^2 + MZ^2))/(16384*e^2*MW^4*(MW^2 - MZ^2)^3*Pi^4) + 
  (el^6*MH^2*(MH - MW)*(MH + MW)*MZ^4*(2*MW^2 - MZ^2)*Log[MH]^2)/
   (4096*MW^6*(MW^2 - MZ^2)^3*Pi^4) + (el^6*MZ^6*(-2*MW^2 + MZ^2)*Log[mu]^2)/
   (2048*MW^4*(MW^2 - MZ^2)^3*Pi^4) + 
  (el^6*MZ^6*(-2*MW^2 + MZ^2)*(4*MH^6 - 15*MH^4*MW^2 + 10*MH^2*MW^4 - 
     7*MW^6 - 6*MW^4*MZ^2 + MW^2*MZ^4)*Log[MW]^2)/
   (16384*(MH - MW)*MW^6*(MH + MW)*(MW^2 - MZ^2)^4*Pi^4) + 
  (el^6*MZ^6*(-2*MW^2 + MZ^2)*(-4*MH^2 + 13*MZ^2)*Log[MZ])/
   (16384*MW^4*(MW^2 - MZ^2)^4*Pi^4) - (el^6*MZ^8*(-2*MW^2 + MZ^2)*Log[MZ]^2)/
   (4096*MW^4*(MW^2 - MZ^2)^4*Pi^4) + 
  ((3*el^6*MZ^6*(-2*MW^2 + MZ^2))/(16384*MW^4*(MW^2 - MZ^2)^3*Pi^4) + 
    (el^6*MZ^6*(-2*MW^2 + MZ^2)*Log[mu])/(4096*MW^4*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^6*(-2*MW^2 + MZ^2)*Log[MW])/(4096*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MZ^8*(-2*MW^2 + MZ^2)*Log[MZ])/(4096*MW^4*(MW^2 - MZ^2)^4*Pi^4))/
   e + Log[mu]*((3*el^6*MZ^6*(-2*MW^2 + MZ^2))/(4096*MW^4*(MW^2 - MZ^2)^3*
      Pi^4) - (el^6*MZ^6*(-2*MW^2 + MZ^2)*Log[MW])/(1024*MW^2*(MW^2 - MZ^2)^4*
      Pi^4) + (el^6*MZ^8*(-2*MW^2 + MZ^2)*Log[MZ])/(1024*MW^4*(MW^2 - MZ^2)^4*
      Pi^4)) + Log[MH]*((el^6*MH^2*MZ^6*(-2*MW^2 + MZ^2))/
     (16384*(MH - MW)*MW^4*(MH + MW)*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MZ^4*(-2*MW^2 + MZ^2)*(-4*MH^6*(MW^2 - 2*MZ^2) + 
       MW^2*MZ^2*(MW^2 - MZ^2)^2 + MH^4*(8*MW^4 - 23*MW^2*MZ^2) + 
       MH^2*(-4*MW^6 + 6*MW^4*MZ^2 - 4*MW^2*MZ^4))*Log[MW])/
     (16384*(MH - MW)*MW^6*(MH + MW)*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MZ^4*(-2*MW^2 + MZ^2)*(4*MH^6 - MH^4*(8*MW^2 + 7*MZ^2) + 
       (-(MW^2*MZ) + MZ^3)^2 + MH^2*(4*MW^4 - 2*MW^2*MZ^2 - 4*MZ^4))*Log[MZ])/
     (16384*(MH - MW)*MW^4*(MH + MW)*(MW^2 - MZ^2)^4*Pi^4)) + 
  Log[MW]*((el^6*MZ^6*(-2*MW^2 + MZ^2)*(4*MH^4 - 17*MH^2*MW^2 + 12*MW^4 + 
       MW^2*MZ^2))/(16384*(MH - MW)*MW^4*(MH + MW)*(MW^2 - MZ^2)^4*Pi^4) - 
    (el^6*MZ^4*(-2*MW^2 + MZ^2)*(4*MH^6 - MH^4*(8*MW^2 + 7*MZ^2) + 
       MZ^2*(MW^4 - 10*MW^2*MZ^2 + MZ^4) + MH^2*(4*MW^4 - 2*MW^2*MZ^2 + 
         4*MZ^4))*Log[MZ])/(16384*(MH - MW)*MW^4*(MH + MW)*(MW^2 - MZ^2)^4*
      Pi^4)) - (el^6*MZ^4*(-2*MW^2 + MZ^2)*(-78*MH^2*MW^4*MZ^2 + 
     78*MW^6*MZ^2 + 78*MH^2*MW^2*MZ^4 - 78*MW^4*MZ^4 - 
     2*MH^2*MW^4*MZ^2*Pi^2 + 2*MW^6*MZ^2*Pi^2 + 2*MH^2*MW^2*MZ^4*Pi^2 - 
     2*MW^4*MZ^4*Pi^2 - 27*MW^6*MZ^2*Phi[1/4] + 
     3*MH^2*(4*MH^4 - 23*MH^2*MW^2 + 28*MW^4)*MZ^2*Phi[MH^2/(4*MW^2)] + 
     3*(-4*MW^3*MZ + MW*MZ^3)^2*Phi[MZ^2/(4*MW^2)] + 
     24*MH^6*MW^2*PolyLog[2, 1 - MW^2/MH^2] - 
     48*MH^4*MW^4*PolyLog[2, 1 - MW^2/MH^2] + 
     24*MH^2*MW^6*PolyLog[2, 1 - MW^2/MH^2] - 
     24*MH^6*MZ^2*PolyLog[2, 1 - MW^2/MH^2] + 48*MH^4*MW^2*MZ^2*
      PolyLog[2, 1 - MW^2/MH^2] - 24*MH^2*MW^4*MZ^2*
      PolyLog[2, 1 - MW^2/MH^2] - 12*MH^4*MW^2*MZ^2*
      Psi[MH^2/MZ^2, MW^2/MZ^2] + 12*MH^2*MW^4*MZ^2*
      Psi[MH^2/MZ^2, MW^2/MZ^2] + 9*MH^2*MW^2*MZ^4*
      Psi[MH^2/MZ^2, MW^2/MZ^2] + 3*MW^4*MZ^4*Psi[MH^2/MZ^2, MW^2/MZ^2] - 
     3*MW^2*MZ^6*Psi[MH^2/MZ^2, MW^2/MZ^2]))/(196608*(MH - MW)*MW^6*(MH + MW)*
    (MW^2 - MZ^2)^4*Pi^4))
