(* Created with the Wolfram Language : www.wolfram.com *)
tomass[(el^6*MT^2*MZ^4*(2*QFTSymbols`MW^2 - MZ^2)*nc*Flag[tadpolem]*
   NF[{MT}, {MW}]*(2*MZ^4*(MZ^2 - MW^2*\[Xi]w)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^
      2*(Ev3*(MW^2 - MZ^2*\[Xi]z)^2 + Op*(-((-16 + d)*MZ^4*\[Xi]z^2) + 
        2*MW^2*MZ^2*\[Xi]z*(-17 - d*(-2 + \[Xi]z) + \[Xi]z) + 
        MW^4*(17 - \[Xi]z^2 + d*(-2 + \[Xi]z^2))))*sorttad[{0, MT, MW}, 
      {0, 1, 1}] - MW^2*(Ev3*((-4 + d)*MW^2 - (-6 + d)*MZ^2)*
       (MZ^2 - MW^2*\[Xi]w)^2 - 
      Op*((-6 + d)*MZ^6*(17 + d*(-2 + \[Xi]w) - \[Xi]w) + 
        (64 - 20*d + d^2)*MW^6*\[Xi]w^2 + MW^4*MZ^2*\[Xi]w*
         (-130 + 43*d - 3*d^2 - 94*\[Xi]w + 19*d*\[Xi]w) + 
        MW^2*MZ^4*(68 + 192*\[Xi]w - 4*\[Xi]w^2 + 
          d^2*(2 + 2*\[Xi]w - \[Xi]w^2) + d*(-25 - 44*\[Xi]w + 5*\[Xi]w^2))))*
     (MW^2 - MZ^2*\[Xi]z)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2*
     sorttad[{0, MT, MZ}, {0, 1, 1}] - (MW^2 - MZ^2)^2*Op*
     (-2*MZ^4*(MW^2 - MZ^2*\[Xi]z)^2*(d*MZ^4*\[Xi]z^2 - 
        2*MW^2*MZ^2*\[Xi]w*\[Xi]z*(-1 + d + \[Xi]z) + 
        MW^4*\[Xi]w^2*(-1 + d + \[Xi]z^2))*sorttad[{0, MT, MW*Sqrt[\[Xi]w]}, 
        {0, 1, 1}] + MW^2*(MZ^2 - MW^2*\[Xi]w)^2*
       (d^2*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2 + 
        2*MZ^2*(-1 + \[Xi]w)*\[Xi]z*(MW^4*\[Xi]w - 2*MW^2*MZ^2*(1 + \[Xi]w)*
           \[Xi]z + 3*MZ^4*\[Xi]z^2) + d*(-4*MW^6*\[Xi]w^2 + 
          MW^4*MZ^2*\[Xi]w*(9 + 5*\[Xi]w)*\[Xi]z + MW^2*MZ^4*
           (-5 - 12*\[Xi]w + \[Xi]w^2)*\[Xi]z^2 - MZ^6*(-7 + \[Xi]w)*
           \[Xi]z^3))*sorttad[{0, MT, MZ*Sqrt[\[Xi]z]}, {0, 1, 1}])))/
  (2048*d*MH^2*MW^2*QFTSymbols`MW^4*(MW - MZ)^2*(MW + MZ)^2*
   (QFTSymbols`MW^2 - MZ^2)^3*Pi^8*(MZ^2 - MW^2*\[Xi]w)^2*
   (MW^2 - MZ^2*\[Xi]z)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2)]
