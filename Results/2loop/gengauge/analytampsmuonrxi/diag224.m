(* Created with the Wolfram Language : www.wolfram.com *)
(el^6*Ev3*MT^2*(2*QFTSymbols`MW^2*MZ^4 - MZ^6)*nc*Flag[tadpolem]*
   NF[{MT}, {MW}]*(((-6 + d)*MW^2*MZ^2 - (-4 + d)*MZ^4)*
     sorttad[{0, MT, MW}, {0, 1, 1}] + 
    2*MW^4*sorttad[{0, MT, MZ}, {0, 1, 1}]))/
  (2048*d*MH^2*MW^4*QFTSymbols`MW^2*(MW - MZ)^2*(MW + MZ)^2*
   (QFTSymbols`MW^2 - MZ^2)^3*Pi^8) + 
 (el^6*MT^2*MZ^4*(2*QFTSymbols`MW^2 - MZ^2)*nc*Op*Flag[tadpolem]*
   NF[{MT}, {MW}]*(MZ^2*(MZ^2 - MW^2*\[Xi]w)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2*
     ((-6 + d)*MW^6*(17 + d*(-2 + \[Xi]z) - \[Xi]z) + 
      (64 - 20*d + d^2)*MZ^6*\[Xi]z^2 + MW^2*MZ^4*\[Xi]z*
       (-130 + 43*d - 3*d^2 - 94*\[Xi]z + 19*d*\[Xi]z) + 
      MW^4*MZ^2*(68 + 192*\[Xi]z - 4*\[Xi]z^2 + 
        d^2*(2 + 2*\[Xi]z - \[Xi]z^2) + d*(-25 - 44*\[Xi]z + 5*\[Xi]z^2)))*
     sorttad[{0, MT, MW}, {0, 1, 1}] - 
    2*MW^4*(2*MW^2*MZ^2*(17 + d*(-2 + \[Xi]w) - \[Xi]w)*\[Xi]w + 
      (-16 + d)*MW^4*\[Xi]w^2 + MZ^4*(-17 + \[Xi]w^2 - d*(-2 + \[Xi]w^2)))*
     (MW^2 - MZ^2*\[Xi]z)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2*
     sorttad[{0, MT, MZ}, {0, 1, 1}] + (MW^2 - MZ^2)^2*
     (MZ^2*(MW^2 - MZ^2*\[Xi]z)^2*(-((-4 + d)*d*MZ^6*\[Xi]z^2) + 
        (-6 + d)*MW^6*\[Xi]w^3*(-1 + d + \[Xi]z) + MW^2*MZ^4*\[Xi]w*\[Xi]z*
         (2 - 2*\[Xi]z + d^2*(2 + \[Xi]z) - d*(9 + 5*\[Xi]z)) - 
        MW^4*MZ^2*\[Xi]w^2*(4 - 4*\[Xi]z^2 + d^2*(1 + 2*\[Xi]z) + 
          d*(-5 - 12*\[Xi]z + \[Xi]z^2)))*sorttad[{0, MT, MW*Sqrt[\[Xi]w]}, 
        {0, 1, 1}] + 2*MW^4*(MZ^2 - MW^2*\[Xi]w)^2*
       (d*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2 + MZ^2*(-1 + \[Xi]w)*\[Xi]z*
         (-2*MW^2*\[Xi]w + MZ^2*(1 + \[Xi]w)*\[Xi]z))*
       sorttad[{0, MT, MZ*Sqrt[\[Xi]z]}, {0, 1, 1}])))/
  (2048*d*MH^2*MW^4*QFTSymbols`MW^2*(MW - MZ)^2*(MW + MZ)^2*
   (QFTSymbols`MW^2 - MZ^2)^3*Pi^8*(MZ^2 - MW^2*\[Xi]w)^2*
   (MW^2 - MZ^2*\[Xi]z)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2)
