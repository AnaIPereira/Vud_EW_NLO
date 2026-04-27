(* Created with the Wolfram Language : www.wolfram.com *)
Op*((3*el^6*(4*MH^4*MW^2 - 8*MH^2*MW^4 + 4*MW^6 - 4*MH^4*MZ^2 + 
     8*MH^2*MW^2*MZ^2 - 4*MW^4*MZ^2)*Log[MH]^2)/
   (8192*(MH - MW)*MW^2*(MH + MW)*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
  (3*el^6*(-4*MH^4*MZ^2 + 24*MH^2*MW^2*MZ^2 - 12*MW^4*MZ^2 + 12*MW^2*MZ^4)*
    Log[MW]^2)/(8192*(MH - MW)*MW^2*(MH + MW)*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
  (3*el^6*(4*MH^2*MW^2*MZ^2 - 4*MW^4*MZ^2)*Log[MZ])/
   (8192*(MH - MW)*MW^2*(MH + MW)*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
  Log[MW]*((3*el^6*(-4*MH^2*MW^2*MZ^2 + 4*MW^4*MZ^2))/
     (8192*(MH - MW)*MW^2*(MH + MW)*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    (3*el^6*(4*MH^4*MW^2 - 8*MH^2*MW^4 + 4*MW^6 - 16*MH^2*MW^2*MZ^2 + 
       8*MW^4*MZ^2 - 12*MW^2*MZ^4)*Log[MZ])/(8192*(MH - MW)*MW^2*(MH + MW)*
      MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6)) + 
  Log[MH]*((3*el^6*(-4*MH^4*MW^2 + 8*MH^2*MW^4 - 4*MW^6 + 8*MH^4*MZ^2 - 
       32*MH^2*MW^2*MZ^2 + 16*MW^4*MZ^2 - 12*MW^2*MZ^4)*Log[MW])/
     (8192*(MH - MW)*MW^2*(MH + MW)*MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6) + 
    (3*el^6*(-4*MH^4*MW^2 + 8*MH^2*MW^4 - 4*MW^6 + 16*MH^2*MW^2*MZ^2 - 
       8*MW^4*MZ^2 + 12*MW^2*MZ^4)*Log[MZ])/(8192*(MH - MW)*MW^2*(MH + MW)*
      MZ^2*(MW^2 - MZ^2)*Pi^4*sw^6)) + 
  (3*el^6*(-9*MW^4*MZ^2*Phi[1/4] + MH^4*MZ^2*Phi[MH^2/(4*MW^2)] - 
     8*MH^2*MW^2*MZ^2*Phi[MH^2/(4*MW^2)] + 16*MW^4*MZ^2*Phi[MH^2/(4*MW^2)] + 
     12*MW^4*MZ^2*Phi[MZ^2/(4*MW^2)] - 3*MW^2*MZ^4*Phi[MZ^2/(4*MW^2)] + 
     2*MH^4*MW^2*PolyLog[2, 1 - MW^2/MH^2] - 
     4*MH^2*MW^4*PolyLog[2, 1 - MW^2/MH^2] + 
     2*MW^6*PolyLog[2, 1 - MW^2/MH^2] - 2*MH^4*MZ^2*
      PolyLog[2, 1 - MW^2/MH^2] + 4*MH^2*MW^2*MZ^2*
      PolyLog[2, 1 - MW^2/MH^2] - 2*MW^4*MZ^2*PolyLog[2, 1 - MW^2/MH^2] - 
     MH^2*MW^2*MZ^2*Psi[MH^2/MZ^2, MW^2/MZ^2] + 
     MW^4*MZ^2*Psi[MH^2/MZ^2, MW^2/MZ^2] + 3*MW^2*MZ^4*
      Psi[MH^2/MZ^2, MW^2/MZ^2]))/(8192*(MH - MW)*MW^2*(MH + MW)*MZ^2*
    (MW^2 - MZ^2)*Pi^4*sw^6))
