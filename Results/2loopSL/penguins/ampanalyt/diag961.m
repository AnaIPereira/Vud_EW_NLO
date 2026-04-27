(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^2)/(8192*e^2*(MW^2 - MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*Log[mu]^2)/(1024*(MW^2 - MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*(-10*MW^2 + MZ^2)*Log[MW]^2)/(2048*(MW^2 - MZ^2)^3*Pi^4) + 
  (el^6*MZ^2*(-68*MW^2 + 19*MZ^2)*Log[MZ])/(12288*(MW^2 - MZ^2)^3*Pi^4) + 
  (el^6*MZ^2*(-4*MW^2 + MZ^2)*Log[MZ]^2)/(2048*(-MW^2 + MZ^2)^3*Pi^4) + 
  ((19*el^6*MZ^2)/(49152*(MW^2 - MZ^2)^2*Pi^4) + (el^6*MZ^2*Log[mu])/
     (2048*(MW^2 - MZ^2)^2*Pi^4) + (3*el^6*MW^2*MZ^2*Log[MW])/
     (2048*(MW^2 - MZ^2)^3*Pi^4) + (el^6*MZ^2*(-4*MW^2 + MZ^2)*Log[MZ])/
     (2048*(MW^2 - MZ^2)^3*Pi^4))/e + 
  Log[mu]*((19*el^6*MZ^2)/(12288*(MW^2 - MZ^2)^2*Pi^4) + 
    (3*el^6*MW^2*MZ^2*Log[MW])/(512*(MW^2 - MZ^2)^3*Pi^4) + 
    (el^6*MZ^2*(-4*MW^2 + MZ^2)*Log[MZ])/(512*(MW^2 - MZ^2)^3*Pi^4)) + 
  Log[MW]*((49*el^6*MW^2*MZ^2)/(12288*(MW^2 - MZ^2)^3*Pi^4) + 
    (el^6*MZ^2*(-4*MW^2 + MZ^2)*Log[MZ])/(1024*(-MW^2 + MZ^2)^3*Pi^4)) - 
  (el^6*(MZ^4*(91 + 2*Pi^2) - MW^2*MZ^2*(91 + 2*Pi^2 + 36*Phi[1/4]) + 
     12*(8*MW^4 - 6*MW^2*MZ^2 + MZ^4)*Phi[MZ^2/(4*MW^2)]))/
   (98304*(MW^2 - MZ^2)^3*Pi^4))
