(* Created with the Wolfram Language : www.wolfram.com *)
tomass[(el^6*MZ^6*Flag[selfm]*(MZ^2*(MZ^2 - MW^2*\[Xi]w)^2*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)^2*
     (-(Ev3*((-6 + d)*MW^2 - (-4 + d)*MZ^2)*(MW^2 - MZ^2*\[Xi]z)^2) + 
      Op*(-5*(-4 + d)^2*MZ^6*\[Xi]z^2 + (-6 + d)*MW^6*(-19 - \[Xi]z + 
          d*(4 + \[Xi]z)) + MW^2*MZ^4*\[Xi]z*(d^2*(9 + 6*\[Xi]z) - 
          d*(77 + 53*\[Xi]z) + 2*(79 + 61*\[Xi]z)) - (-4 + d)*MW^4*MZ^2*
         (-19 - 60*\[Xi]z - \[Xi]z^2 + d*(4 + 10*\[Xi]z + \[Xi]z^2))))*
     sorttad[{0, MW, MH}, {0, 1, 1}] - 2*MW^4*(Ev3*(MZ^2 - MW^2*\[Xi]w)^2 + 
      Op*(-5*(-4 + d)*MW^4*\[Xi]w^2 + 2*MW^2*MZ^2*\[Xi]w*
         (-19 - \[Xi]w + d*(4 + \[Xi]w)) + MZ^4*(19 + \[Xi]w^2 - 
          d*(4 + \[Xi]w^2))))*(MW^2 - MZ^2*\[Xi]z)^2*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)^2*sorttad[{0, MZ, MH}, {0, 1, 1}] + 
    (MW^2 - MZ^2)^2*Op*(MZ^2*(MW^2 - MZ^2*\[Xi]z)^2*
       (-((-4 + d)*d*MZ^6*\[Xi]z^2) + (-6 + d)*MW^6*\[Xi]w^3*
         (-1 + d + \[Xi]z) + MW^2*MZ^4*\[Xi]w*\[Xi]z*(2 - 2*\[Xi]z + 
          d^2*(2 + \[Xi]z) - d*(9 + 5*\[Xi]z)) - MW^4*MZ^2*\[Xi]w^2*
         (4 - 4*\[Xi]z^2 + d^2*(1 + 2*\[Xi]z) + 
          d*(-5 - 12*\[Xi]z + \[Xi]z^2)))*sorttad[{0, MW*Sqrt[\[Xi]w], MH}, 
        {0, 1, 1}] + 2*MW^4*(MZ^2 - MW^2*\[Xi]w)^2*
       (d*(MW^2*\[Xi]w - MZ^2*\[Xi]z)^2 + MZ^2*(-1 + \[Xi]w)*\[Xi]z*
         (-2*MW^2*\[Xi]w + MZ^2*(1 + \[Xi]w)*\[Xi]z))*
       sorttad[{0, MZ*Sqrt[\[Xi]z], MH}, {0, 1, 1}])))/
  (16384*d*MW^4*QFTSymbols`MW^2*(MW^2 - MZ^2)^2*(QFTSymbols`MW^2 - MZ^2)^3*
   Pi^8*(MZ^2 - MW^2*\[Xi]w)^2*(MW^2 - MZ^2*\[Xi]z)^2*
   (MW^2*\[Xi]w - MZ^2*\[Xi]z)^2)]
