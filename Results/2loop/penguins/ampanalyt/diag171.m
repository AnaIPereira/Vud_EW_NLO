(* Created with the Wolfram Language : www.wolfram.com *)
Op*((3*el^6*MZ^6)/(4096*e^2*MW^2*(MW^2 - MZ^2)^3*Pi^4) + 
  (3*el^6*MZ^6*Log[mu]^2)/(512*MW^2*(MW - MZ)^3*(MW + MZ)^3*Pi^4) + 
  (3*el^6*MZ^6*(4*MW^4 + 2*MW^2*MZ^2 - MZ^4)*Log[MW]^2)/
   (2048*MW^4*(MW - MZ)^4*(MW + MZ)^4*Pi^4) + (5*el^6*MZ^8*Log[MZ])/
   (2048*MW^2*(MW - MZ)^4*(MW + MZ)^4*Pi^4) - 
  (3*el^6*MZ^8*(2*MW^2 + MZ^2)*Log[MZ]^2)/(2048*MW^4*(MW - MZ)^4*(MW + MZ)^4*
    Pi^4) + ((el^6*MZ^6)/(4096*MW^2*(MW - MZ)^3*(MW + MZ)^3*Pi^4) + 
    (3*el^6*MZ^6*Log[mu])/(1024*MW^2*(MW - MZ)^3*(MW + MZ)^3*Pi^4) - 
    (3*el^6*MZ^6*Log[MW])/(1024*(MW - MZ)^4*(MW + MZ)^4*Pi^4) + 
    (3*el^6*MZ^8*Log[MZ])/(1024*MW^2*(MW - MZ)^4*(MW + MZ)^4*Pi^4))/e + 
  Log[mu]*((el^6*MZ^6)/(1024*MW^2*(MW - MZ)^3*(MW + MZ)^3*Pi^4) - 
    (3*el^6*MZ^6*Log[MW])/(256*(MW - MZ)^4*(MW + MZ)^4*Pi^4) + 
    (3*el^6*MZ^8*Log[MZ])/(256*MW^2*(MW - MZ)^4*(MW + MZ)^4*Pi^4)) + 
  Log[MW]*(-1/2048*(el^6*MZ^6*(2*MW^2 + 3*MZ^2))/(MW^2*(MW - MZ)^4*
       (MW + MZ)^4*Pi^4) + (3*el^6*MZ^8*(-2*MW^2 + MZ^2)*Log[MZ])/
     (1024*MW^4*(MW - MZ)^4*(MW + MZ)^4*Pi^4)) + 
  (el^6*MZ^6*(MZ^2*Pi^2 + MW^2*(-1 + 2*Pi^2) - 6*(MW^2 - MZ^2)*
      PolyLog[2, 1 - MZ^2/MW^2]))/(8192*MW^4*(MW - MZ)^3*(MW + MZ)^3*Pi^4))
