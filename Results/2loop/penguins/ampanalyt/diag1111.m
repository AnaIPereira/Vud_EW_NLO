(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^2*(2*MW^2 + MZ^2))/(16384*e^2*(-MW^2 + MZ^2)^3*Pi^4) + 
  (el^6*MZ^2*(2*MW^2 + MZ^2)*Log[mu]^2)/(2048*(-MW^2 + MZ^2)^3*Pi^4) + 
  (3*el^6*MZ^2*(2*MW^6 + MW^4*MZ^2 + 2*MW^2*MZ^4 + MZ^6)*Log[MW]^2)/
   (4096*(-MW^2 + MZ^2)^5*Pi^4) + 
  (7*el^6*MZ^4*(8*MW^4 + 10*MW^2*MZ^2 + 3*MZ^4)*Log[MZ])/
   (24576*(-MW^2 + MZ^2)^5*Pi^4) + 
  (el^6*MZ^2*(-2*MW^6 + 7*MW^4*MZ^2 + 10*MW^2*MZ^4 + 3*MZ^6)*Log[MZ]^2)/
   (4096*(MW^2 - MZ^2)^5*Pi^4) + 
  Log[mu]*(-1/24576*(el^6*MZ^2*(62*MW^4 + 41*MW^2*MZ^2 + 5*MZ^4))/
      ((MW^2 - MZ^2)^4*Pi^4) + (el^6*MZ^2*(2*MW^6 + MW^4*MZ^2 + 4*MW^2*MZ^4 + 
       2*MZ^6)*Log[MW])/(1024*(MW^2 - MZ^2)^5*Pi^4) - 
    (el^6*MZ^4*(2*MW^2 + MZ^2)^2*Log[MZ])/(1024*(MW^2 - MZ^2)^5*Pi^4)) + 
  (-1/98304*(el^6*MZ^2*(62*MW^4 + 41*MW^2*MZ^2 + 5*MZ^4))/
      ((MW^2 - MZ^2)^4*Pi^4) + (el^6*MZ^2*(2*MW^2 + MZ^2)*Log[mu])/
     (4096*(-MW^2 + MZ^2)^3*Pi^4) + 
    (el^6*MZ^2*(2*MW^6 + MW^4*MZ^2 + 4*MW^2*MZ^4 + 2*MZ^6)*Log[MW])/
     (4096*(MW^2 - MZ^2)^5*Pi^4) - (el^6*MZ^4*(2*MW^2 + MZ^2)^2*Log[MZ])/
     (4096*(MW^2 - MZ^2)^5*Pi^4))/e + 
  Log[MW]*((el^6*MZ^2*(62*MW^6 + 35*MW^4*MZ^2 + 34*MW^2*MZ^4 + 16*MZ^6))/
     (24576*(MW^2 - MZ^2)^5*Pi^4) + (el^6*MZ^2*(2*MW^4 + 3*MW^2*MZ^2 + MZ^4)*
      Log[MZ])/(2048*(MW^2 - MZ^2)^4*Pi^4)) - 
  (el^6*MZ^2*(2*MW^2 + MZ^2)*((MW^2 - MZ^2)*(MZ^2*(45 - 2*Pi^2) + 
       MW^2*(151 + 2*Pi^2)) - 12*(MW^4 - 4*MW^2*MZ^2)*Phi[MW^2/(4*MZ^2)] - 
     12*(4*MW^4 - 2*MW^2*MZ^2 + MZ^4)*Phi[MZ^2/(4*MW^2)]))/
   (196608*(MW^2 - MZ^2)^5*Pi^4))
