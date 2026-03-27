(* Created with the Wolfram Language : www.wolfram.com *)
tomass[(el^6*MZ^4*(2*QFTSymbols`MW^2 - MZ^2)*\[Xi]w*Flag[tadpolem]*
   (MZ^2*(MZ^2 - MW^2*\[Xi]w)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2*
     (Ev3*((-6 + d)*MW^2 - (-4 + d)*MZ^2)*(MW^2 - MZ^2*\[Xi]z)^2 + 
      Op*((-6 + d)*MW^6*(17 + d*(-2 + \[Xi]z) - \[Xi]z) + 
        (64 - 20*d + d^2)*MZ^6*\[Xi]z^2 + MW^2*MZ^4*\[Xi]z*
         (-130 + 43*d - 3*d^2 - 94*\[Xi]z + 19*d*\[Xi]z) + 
        MW^4*MZ^2*(68 + 192*\[Xi]z - 4*\[Xi]z^2 + 
          d^2*(2 + 2*\[Xi]z - \[Xi]z^2) + d*(-25 - 44*\[Xi]z + 5*\[Xi]z^2))))*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW}, {0, 1, 1}] + 
    2*MW^4*(Ev3*(MZ^2 - MW^2*\[Xi]w)^2 + Op*(-((-16 + d)*MW^4*\[Xi]w^2) + 
        2*MW^2*MZ^2*\[Xi]w*(-17 - d*(-2 + \[Xi]w) + \[Xi]w) + 
        MZ^4*(17 - \[Xi]w^2 + d*(-2 + \[Xi]w^2))))*(MW^2 - MZ^2*\[Xi]z)^2*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)^2*sorttad[{0, MW*Sqrt[\[Xi]w], MZ}, 
      {0, 1, 1}] + (MW^2 - MZ^2)^2*Op*(MZ^2*(MW^2 - MZ^2*\[Xi]z)^2*
       (-((-4 + d)*d*MZ^6*\[Xi]z^2) + (-6 + d)*MW^6*\[Xi]w^3*
         (-1 + d + \[Xi]z) + MW^2*MZ^4*\[Xi]w*\[Xi]z*(2 - 2*\[Xi]z + 
          d^2*(2 + \[Xi]z) - d*(9 + 5*\[Xi]z)) - MW^4*MZ^2*\[Xi]w^2*
         (4 - 4*\[Xi]z^2 + d^2*(1 + 2*\[Xi]z) + 
          d*(-5 - 12*\[Xi]z + \[Xi]z^2)))*sorttad[{0, MW*Sqrt[\[Xi]w], 
         MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 2*MW^4*(MZ^2 - MW^2*\[Xi]w)^2*
       (d*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2 + MZ^2*(-1 + \[Xi]w)*\[Xi]z*
         (-2*MW^2*\[Xi]w + MZ^2*(1 + \[Xi]w)*\[Xi]z))*
       sorttad[{0, MW*Sqrt[\[Xi]w], MZ*Sqrt[\[Xi]z]}, {0, 1, 1}])))/
  (8192*d*MH^2*MW^2*QFTSymbols`MW^2*(MW - MZ)^2*(MW + MZ)^2*
   (QFTSymbols`MW^2 - MZ^2)^3*Pi^8*(MZ^2 - MW^2*\[Xi]w)^2*
   (MW^2 - MZ^2*\[Xi]z)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2)]
