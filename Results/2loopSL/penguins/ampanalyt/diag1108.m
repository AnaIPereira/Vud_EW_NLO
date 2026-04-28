(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MZ^2*(2*MW^2 + MZ^2))/(16384*e^2*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*(2*MW^2 + MZ^2)*Log[mu]^2)/(2048*(MW^3 - MW*MZ^2)^2*Pi^4) + 
  (el^6*MZ^2*(4*MW^6 + 6*MW^4*MZ^2 - MZ^6)*Log[MW]^2)/
   (4096*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
  (el^6*MZ^4*(68*MW^4 - 4*MW^2*MZ^2 - 19*MZ^4)*Log[MZ])/
   (24576*MW^2*(MW^2 - MZ^2)^4*Pi^4) + (el^6*MZ^4*(-4*MW^4 + MZ^4)*Log[MZ]^2)/
   (4096*MW^2*(MW^2 - MZ^2)^4*Pi^4) + 
  Log[mu]*((el^6*MZ^2*(62*MW^4 - 7*MW^2*MZ^2 - 19*MZ^4))/
     (24576*MW^2*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MW^2*MZ^2*(2*MW^2 + MZ^2)*Log[MW])/(1024*(MW^2 - MZ^2)^4*Pi^4) - 
    (el^6*MZ^4*(-4*MW^4 + MZ^4)*Log[MZ])/(1024*MW^2*(MW^2 - MZ^2)^4*Pi^4)) + 
  ((el^6*MZ^2*(62*MW^4 - 7*MW^2*MZ^2 - 19*MZ^4))/(98304*MW^2*(MW^2 - MZ^2)^3*
      Pi^4) + (el^6*MZ^2*(2*MW^2 + MZ^2)*Log[mu])/(4096*(MW^3 - MW*MZ^2)^2*
      Pi^4) - (el^6*MW^2*MZ^2*(2*MW^2 + MZ^2)*Log[MW])/
     (4096*(MW^2 - MZ^2)^4*Pi^4) - (el^6*MZ^4*(-4*MW^4 + MZ^4)*Log[MZ])/
     (4096*MW^2*(MW^2 - MZ^2)^4*Pi^4))/e + 
  Log[MW]*((el^6*MZ^2*(-62*MW^4 + MW^2*MZ^2 + 16*MZ^4))/
     (24576*(MW^2 - MZ^2)^4*Pi^4) + (el^6*MZ^4*(-4*MW^4 + MZ^4)*Log[MZ])/
     (2048*MW^2*(MW^2 - MZ^2)^4*Pi^4)) + 
  (el^6*MZ^2*(2*MW^2 + MZ^2)*(-(MZ^2*(91 + 2*Pi^2)) + MW^2*(151 + 2*Pi^2) - 
     24*(MW^2 - MZ^2)*PolyLog[2, 1 - MZ^2/MW^2]))/
   (196608*MW^2*(MW^2 - MZ^2)^3*Pi^4))
