(* Created with the Wolfram Language : www.wolfram.com *)
tomass[(el^6*MT^2*MZ^6*nc*Flag[tadpolem]*NF[{MT}, {MW}]*
   (-2*MZ^4*(MZ^2 - MW^2*\[Xi]w)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2*
     (Ev3*(MW^2 - MZ^2*\[Xi]z)^2 + Op*(-5*(-4 + d)*MZ^4*\[Xi]z^2 + 
        2*MW^2*MZ^2*\[Xi]z*(-19 - \[Xi]z + d*(4 + \[Xi]z)) + 
        MW^4*(19 + \[Xi]z^2 - d*(4 + \[Xi]z^2))))*sorttad[{0, MT, MW}, 
      {0, 1, 1}] + MW^2*(Ev3*((-4 + d)*MW^2 - (-6 + d)*MZ^2)*
       (MZ^2 - MW^2*\[Xi]w)^2 + Op*(-5*(-4 + d)^2*MW^6*\[Xi]w^2 + 
        (-6 + d)*MZ^6*(-19 - \[Xi]w + d*(4 + \[Xi]w)) + 
        MW^4*MZ^2*\[Xi]w*(d^2*(9 + 6*\[Xi]w) - d*(77 + 53*\[Xi]w) + 
          2*(79 + 61*\[Xi]w)) - (-4 + d)*MW^2*MZ^4*(-19 - 60*\[Xi]w - 
          \[Xi]w^2 + d*(4 + 10*\[Xi]w + \[Xi]w^2))))*(MW^2 - MZ^2*\[Xi]z)^2*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)^2*sorttad[{0, MT, MZ}, {0, 1, 1}] - 
    (MW^2 - MZ^2)^2*Op*(-2*MZ^4*(MW^2 - MZ^2*\[Xi]z)^2*
       (d*MZ^4*\[Xi]z^2 - 2*MW^2*MZ^2*\[Xi]w*\[Xi]z*(-1 + d + \[Xi]z) + 
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
