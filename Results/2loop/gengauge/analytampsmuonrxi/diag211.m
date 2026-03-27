(* Created with the Wolfram Language : www.wolfram.com *)
tomass[(el^6*(2*QFTSymbols`MW^2 - MZ^2)*Flag[selfm]*
   (MZ^4*\[Xi]w*(MZ^2 - MW^2*\[Xi]w)*\[Xi]z*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)*
     (MZ^2*Op*(17 + d*(-2 + \[Xi]A) - \[Xi]A)*\[Xi]z + 
      Ev3*(-MW^2 + MZ^2*\[Xi]z) + MW^2*Op*(-17 + \[Xi]A*\[Xi]z + 
        d*(2 - \[Xi]A*\[Xi]z)))*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + MW^4*\[Xi]w*(-((-16 + d)*MW^2*Op*\[Xi]w) + 
      MZ^2*Op*(-17 - d*(-2 + \[Xi]w) + \[Xi]w) + Ev3*(-MZ^2 + MW^2*\[Xi]w))*
     \[Xi]z*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    (MW^2 - MZ^2)*Op*(-(MZ^4*\[Xi]z*(MW^2 - MZ^2*\[Xi]z)*
        (-(MZ^2*(-1 + d + \[Xi]A)*\[Xi]z) + MW^2*\[Xi]w*
          (-1 + d + \[Xi]A*\[Xi]z))*sorttad[{0, MW*Sqrt[\[Xi]w], 
          MW*Sqrt[\[Xi]w]}, {0, 1, 1}]) + MW^4*\[Xi]A*\[Xi]w*
       (MZ^2 - MW^2*\[Xi]w)*(MZ^2*(-1 + \[Xi]w)*\[Xi]z + 
        d*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z))*sorttad[{0, MZ*Sqrt[\[Xi]z], 
         MW*Sqrt[\[Xi]w]}, {0, 1, 1}])))/(1024*d*MW^4*(MW^2 - MZ^2)*
   (QFTSymbols`MW^3 - QFTSymbols`MW*MZ^2)^2*Pi^8*\[Xi]w*(-MZ^2 + MW^2*\[Xi]w)*
   \[Xi]z*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z))]
