(* Created with the Wolfram Language : www.wolfram.com *)
-1/8192*(el^6*Ev3*(2*QFTSymbols`MW^2 - MZ^2)*Flag[selfm]*
    ((MW^3 - MW*MZ^2)^2*\[Xi]w*(MW^2*\[Xi]w + MZ^2*(1 - d + 2*\[Xi]w))*
      sorttad[{0, 0, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
     MZ^4*(MW^2*(-4 + d - 3*\[Xi]w) + MZ^2*(3 - d + 2*\[Xi]w))*
      sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
     MW^2*MZ^4*(-1 + \[Xi]w)*(-(MZ^2*(-3 + d + 2*\[Xi]w)) + 
       MW^2*(-4 + d + 3*\[Xi]w))*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
       {1, 1, 1}] + MW^4*((MZ^2 + MW^2*\[Xi]w)*
        sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
       (MZ^2 - MW^2*\[Xi]w)^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}])))/
   ((-1 + d)*d*MW^4*QFTSymbols`MW^2*(MW^2 - MZ^2)^2*
    (QFTSymbols`MW^2 - MZ^2)^2*Pi^8) + 
 (el^6*(2*QFTSymbols`MW^2 - MZ^2)*Op*Flag[selfm]*
   ((-3 + d)*MW^2*(MW^2 - MZ^2)^2*\[Xi]w*(-MZ^2 + MW^2*\[Xi]w)*
     ((-16 + d^2)*MW^2*\[Xi]w - MZ^2*(16 - 5*d^2 + d^3 + 32*\[Xi]w - 
        2*d*(6 + \[Xi]w)))*(MW^2 - MZ^2*\[Xi]z)^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)*
     sorttad[{0, 0, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    (-3 + d)*MZ^4*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)*
     (MW^6*(-4 + d - 3*\[Xi]w)*(17 + d*(-2 + \[Xi]z) - \[Xi]z) + 
      (-16 + d)*MZ^6*(-3 + d - 2*\[Xi]w)*\[Xi]z^2 + 
      MW^2*MZ^4*\[Xi]z*(-98 - 3*d^2 - 62*\[Xi]z - \[Xi]w*(65 + 47*\[Xi]z) + 
        d*(41 + 17*\[Xi]z + \[Xi]w*(5 + 2*\[Xi]z))) + 
      MW^4*MZ^2*(51 + 128*\[Xi]z - 3*\[Xi]z^2 + 
        \[Xi]w*(34 + 96*\[Xi]z - 2*\[Xi]z^2) + 
        d^2*(2 + 2*\[Xi]z - \[Xi]z^2) + d*(-23 - 40*\[Xi]z + 4*\[Xi]z^2 + 
          2*\[Xi]w*(-2 - 3*\[Xi]z + \[Xi]z^2))))*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    204*MW^10*MZ^6*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    143*d*MW^10*MZ^6*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    31*d^2*MW^10*MZ^6*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^10*MZ^6*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    153*MW^8*MZ^8*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    120*d*MW^8*MZ^8*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    29*d^2*MW^8*MZ^8*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^3*MW^8*MZ^8*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    204*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    143*d*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    31*d^2*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^3*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    204*MW^10*MZ^6*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    92*d*MW^10*MZ^6*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    8*d^2*MW^10*MZ^6*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    255*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    166*d*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    33*d^2*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    357*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    212*d*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    37*d^2*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    102*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    97*d*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    27*d^2*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^3*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    102*MW^8*MZ^8*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    46*d*MW^8*MZ^8*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    4*d^2*MW^8*MZ^8*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    153*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    69*d*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    6*d^2*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    102*MW^10*MZ^6*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    46*d*MW^10*MZ^6*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^2*MW^10*MZ^6*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    204*MW^8*MZ^8*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    143*d*MW^8*MZ^8*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    31*d^2*MW^8*MZ^8*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^3*MW^8*MZ^8*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    153*MW^6*MZ^10*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    120*d*MW^6*MZ^10*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    29*d^2*MW^6*MZ^10*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^6*MZ^10*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    192*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 124*d*MW^10*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    23*d^2*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^10*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    180*MW^8*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 156*d*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    38*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    39*MW^6*MZ^10*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 55*d*MW^6*MZ^10*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    17*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^6*MZ^10*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 19*d*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d^2*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    48*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 67*d*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    20*d^2*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    480*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 238*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    29*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    387*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 255*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    51*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 3*d^3*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    21*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 31*d*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    11*d^2*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    528*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 305*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    49*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    99*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 141*d*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    45*d^2*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 3*d^3*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    195*MW^6*MZ^10*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 80*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    5*d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 9*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    12*d*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 3*d^2*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    288*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 114*d*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*d^2*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 195*MW^8*MZ^8*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    80*d*MW^8*MZ^8*\[Xi]w^4*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 5*d^2*MW^8*MZ^8*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*MW^8*MZ^8*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    19*d*MW^8*MZ^8*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d^2*MW^8*MZ^8*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^8*MZ^8*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    384*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    248*d*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    46*d^2*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    294*MW^4*MZ^12*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    221*d*MW^4*MZ^12*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    50*d^2*MW^4*MZ^12*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*d^3*MW^4*MZ^12*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    12*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 19*d*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    8*d^2*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    396*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 264*d*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    50*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    192*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 28*d*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    15*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    345*MW^4*MZ^12*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 196*d*MW^4*MZ^12*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    33*d^2*MW^4*MZ^12*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 2*d^3*MW^4*MZ^12*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 16*d*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^2*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 480*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    238*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 29*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 384*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    248*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 46*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^3*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 45*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    63*d*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 19*d^2*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 6*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    11*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 6*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 45*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    60*d*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 15*d^2*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    96*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 10*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    17*d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    96*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 38*d*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^2*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 6*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 2*d^2*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    141*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 53*d*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^2*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 96*MW^6*MZ^10*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    38*d*MW^6*MZ^10*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^2*MW^6*MZ^10*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    9*MW^6*MZ^10*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    15*d*MW^6*MZ^10*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    7*d^2*MW^6*MZ^10*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^6*MZ^10*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    186*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    113*d*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    17*d^2*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    144*MW^2*MZ^14*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    105*d*MW^2*MZ^14*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    22*d^2*MW^2*MZ^14*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^2*MZ^14*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    9*MW^8*MZ^8*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 15*d*MW^8*MZ^8*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    7*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^8*MZ^8*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    201*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 136*d*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    26*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    183*MW^4*MZ^12*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 61*d*MW^4*MZ^12*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*d^2*MW^4*MZ^12*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^4*MZ^12*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    240*MW^2*MZ^14*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 143*d*MW^2*MZ^14*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    24*d^2*MW^2*MZ^14*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^2*MZ^14*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    15*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 23*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    9*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    333*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 174*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    21*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 99*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    90*d*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 22*d^2*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 96*MW^2*MZ^14*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    38*d*MW^2*MZ^14*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^2*MW^2*MZ^14*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 8*d*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^2*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 141*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    53*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    96*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 38*d*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^2*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 51*MW^10*MZ^4*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 23*d*MW^10*MZ^4*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 2*d^2*MW^10*MZ^4*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 48*MW^14*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 16*d*MW^14*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 3*d^2*MW^14*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + d^3*MW^14*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 6*MW^12*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 14*d*MW^12*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 10*d^2*MW^12*MZ^2*\[Xi]w^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d^3*MW^12*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    3*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    7*d*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    5*d^2*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d^3*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    51*MW^8*MZ^6*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    23*d*MW^8*MZ^6*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    2*d^2*MW^8*MZ^6*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    102*MW^8*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 46*d*MW^8*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    4*d^2*MW^8*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 48*MW^12*MZ^2*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    16*d*MW^12*MZ^2*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 3*d^2*MW^12*MZ^2*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    d^3*MW^12*MZ^2*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 6*MW^10*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    14*d*MW^10*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 10*d^2*MW^10*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    2*d^3*MW^10*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 3*MW^8*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    7*d*MW^8*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 5*d^2*MW^8*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    d^3*MW^8*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 96*MW^12*MZ^2*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    32*d*MW^12*MZ^2*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 6*d^2*MW^12*MZ^2*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d^3*MW^12*MZ^2*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 12*MW^10*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    28*d*MW^10*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 20*d^2*MW^10*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    4*d^3*MW^10*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 6*MW^8*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    14*d*MW^8*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 10*d^2*MW^8*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d^3*MW^8*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 102*MW^6*MZ^8*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 46*d*MW^6*MZ^8*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 4*d^2*MW^6*MZ^8*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 51*MW^6*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    23*d*MW^6*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 2*d^2*MW^6*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    96*MW^10*MZ^4*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 32*d*MW^10*MZ^4*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    6*d^2*MW^10*MZ^4*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 2*d^3*MW^10*MZ^4*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    12*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 28*d*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    20*d^2*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 4*d^3*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    6*MW^6*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 14*d*MW^6*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    10*d^2*MW^6*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 2*d^3*MW^6*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    48*MW^10*MZ^4*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 16*d*MW^10*MZ^4*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    3*d^2*MW^10*MZ^4*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + d^3*MW^10*MZ^4*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    6*MW^8*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 14*d*MW^8*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    10*d^2*MW^8*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 2*d^3*MW^8*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    3*MW^6*MZ^8*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 7*d*MW^6*MZ^8*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    5*d^2*MW^6*MZ^8*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + d^3*MW^6*MZ^8*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    51*MW^4*MZ^10*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    23*d*MW^4*MZ^10*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    2*d^2*MW^4*MZ^10*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    48*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 16*d*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    3*d^2*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - d^3*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    6*MW^6*MZ^8*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 14*d*MW^6*MZ^8*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    10*d^2*MW^6*MZ^8*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 2*d^3*MW^6*MZ^8*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    3*MW^4*MZ^10*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 7*d*MW^4*MZ^10*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    5*d^2*MW^4*MZ^10*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - d^3*MW^4*MZ^10*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    51*MW^10*MZ^6*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    23*d*MW^10*MZ^6*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^2*MW^10*MZ^6*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    153*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    69*d*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*d^2*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    156*MW^14*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    76*d*MW^14*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    11*d^2*MW^14*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^14*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    14*d*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    10*d^2*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    7*d*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    5*d^2*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    48*MW^16*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    16*d*MW^16*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*d^2*MW^16*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^16*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*MW^14*MZ^2*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    14*d*MW^14*MZ^2*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    10*d^2*MW^14*MZ^2*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^14*MZ^2*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    7*d*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    5*d^2*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    51*MW^8*MZ^8*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    23*d*MW^8*MZ^8*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^2*MW^8*MZ^8*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    153*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 69*d*MW^10*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    6*d^2*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 102*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    46*d*MW^8*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 4*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    156*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 76*d*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    11*d^2*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    312*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 152*d*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    22*d^2*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 7*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    5*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    48*MW^14*MZ^2*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 16*d*MW^14*MZ^2*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*d^2*MW^14*MZ^2*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^14*MZ^2*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    306*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 138*d*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*d^2*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 9*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    21*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 15*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*d^3*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 6*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    14*d*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 10*d^2*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 96*MW^14*MZ^2*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    32*d*MW^14*MZ^2*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 6*d^2*MW^14*MZ^2*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^14*MZ^2*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 12*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    28*d*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 20*d^2*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^3*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 6*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    14*d*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 10*d^2*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 102*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 46*d*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 4*d^2*MW^6*MZ^10*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    306*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 138*d*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 51*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    23*d*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 2*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    312*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 152*d*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    22*d^2*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    165*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 97*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    26*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 4*d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    6*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 14*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    10*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    96*MW^12*MZ^4*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 32*d*MW^12*MZ^4*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    6*d^2*MW^12*MZ^4*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^12*MZ^4*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    144*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 48*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    9*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 3*d^3*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 7*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    5*d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    48*MW^12*MZ^4*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 16*d*MW^12*MZ^4*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*d^2*MW^12*MZ^4*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^12*MZ^4*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 14*d*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    10*d^2*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 2*d^3*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 7*d*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    5*d^2*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    51*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    23*d*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^2*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    153*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 69*d*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    6*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 156*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    76*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 11*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 6*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    14*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 10*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^3*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 3*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    7*d*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 5*d^2*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 48*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    16*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 3*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 6*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    14*d*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 10*d^2*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^3*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    7*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 5*d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + MW^10*MZ^4*\[Xi]w*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 2*d*MW^10*MZ^4*\[Xi]w*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d^2*MW^10*MZ^4*\[Xi]w*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 2*MW^8*MZ^6*\[Xi]w*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 4*d*MW^8*MZ^6*\[Xi]w*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d^2*MW^8*MZ^6*\[Xi]w*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + MW^6*MZ^8*\[Xi]w*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 2*d*MW^6*MZ^8*\[Xi]w*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d^2*MW^6*MZ^8*\[Xi]w*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + d*MW^8*MZ^6*\[Xi]z*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - d^2*MW^8*MZ^6*\[Xi]z*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d*MW^6*MZ^8*\[Xi]z*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 2*d^2*MW^6*MZ^8*\[Xi]z*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d*MW^4*MZ^10*\[Xi]z*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - d^2*MW^4*MZ^10*\[Xi]z*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    MW^10*MZ^4*\[Xi]w*\[Xi]z*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + d*MW^10*MZ^4*\[Xi]w*\[Xi]z*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    2*d*MW^8*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 2*d^2*MW^8*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    3*MW^6*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 7*d*MW^6*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    4*d^2*MW^6*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 2*MW^4*MZ^10*\[Xi]w*\[Xi]z*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    4*d*MW^4*MZ^10*\[Xi]w*\[Xi]z*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 2*d^2*MW^4*MZ^10*\[Xi]w*\[Xi]z*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d*MW^6*MZ^8*\[Xi]z^2*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 2*d^2*MW^6*MZ^8*\[Xi]z^2*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    4*d*MW^4*MZ^10*\[Xi]z^2*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 4*d^2*MW^4*MZ^10*\[Xi]z^2*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d*MW^2*MZ^12*\[Xi]z^2*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 2*d^2*MW^2*MZ^12*\[Xi]z^2*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    2*MW^8*MZ^6*\[Xi]w*\[Xi]z^2*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 2*d*MW^8*MZ^6*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    3*MW^6*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 2*d*MW^6*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d^2*MW^6*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 2*d*MW^4*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d^2*MW^4*MZ^10*\[Xi]w*\[Xi]z^2*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + MW^2*MZ^12*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d*MW^2*MZ^12*\[Xi]w*\[Xi]z^2*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + d^2*MW^2*MZ^12*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d*MW^4*MZ^10*\[Xi]z^3*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - d^2*MW^4*MZ^10*\[Xi]z^3*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d*MW^2*MZ^12*\[Xi]z^3*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 2*d^2*MW^2*MZ^12*\[Xi]z^3*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d*MZ^14*\[Xi]z^3*sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - d^2*MZ^14*\[Xi]z^3*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - MW^6*MZ^8*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d*MW^6*MZ^8*\[Xi]w*\[Xi]z^3*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 2*MW^4*MZ^10*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d*MW^4*MZ^10*\[Xi]w*\[Xi]z^3*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - MW^2*MZ^12*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW*Sqrt[\[Xi]w], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d*MW^2*MZ^12*\[Xi]w*\[Xi]z^3*sorttad[{0, MW*Sqrt[\[Xi]w], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 6*MW^10*MZ^4*\[Xi]w^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    8*d*MW^10*MZ^4*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 2*d^2*MW^10*MZ^4*\[Xi]w^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    12*MW^8*MZ^6*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 16*d*MW^8*MZ^6*\[Xi]w^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    4*d^2*MW^8*MZ^6*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 6*MW^6*MZ^8*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 8*d*MW^6*MZ^8*\[Xi]w^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    2*d^2*MW^6*MZ^8*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 6*MW^12*MZ^2*\[Xi]w^3*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    8*d*MW^12*MZ^2*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 2*d^2*MW^12*MZ^2*\[Xi]w^3*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    12*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 16*d*MW^10*MZ^4*\[Xi]w^3*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    4*d^2*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 6*MW^8*MZ^6*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 8*d*MW^8*MZ^6*\[Xi]w^3*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d^2*MW^8*MZ^6*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 3*MW^8*MZ^6*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 4*d*MW^8*MZ^6*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    d^2*MW^8*MZ^6*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 6*MW^6*MZ^8*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 8*d*MW^6*MZ^8*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    2*d^2*MW^6*MZ^8*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 3*MW^4*MZ^10*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 4*d*MW^4*MZ^10*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    d^2*MW^4*MZ^10*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 3*MW^10*MZ^4*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    4*d*MW^10*MZ^4*\[Xi]w*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + d^2*MW^10*MZ^4*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    6*MW^8*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 8*d*MW^8*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d^2*MW^8*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 3*MW^6*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    4*d*MW^6*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + d^2*MW^6*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    3*MW^8*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 4*d*MW^8*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    d^2*MW^8*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 6*MW^6*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    8*d*MW^6*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 2*d^2*MW^6*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    3*MW^4*MZ^10*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 4*d*MW^4*MZ^10*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    d^2*MW^4*MZ^10*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 3*MW^10*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    4*d*MW^10*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + d^2*MW^10*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    6*MW^8*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 8*d*MW^8*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d^2*MW^8*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 3*MW^6*MZ^8*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    4*d*MW^6*MZ^8*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + d^2*MW^6*MZ^8*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    12*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 16*d*MW^12*MZ^4*\[Xi]w^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    4*d^2*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 24*MW^10*MZ^6*\[Xi]w^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    32*d*MW^10*MZ^6*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 8*d^2*MW^10*MZ^6*\[Xi]w^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    12*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 16*d*MW^8*MZ^8*\[Xi]w^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    4*d^2*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 12*MW^14*MZ^2*\[Xi]w^3*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    16*d*MW^14*MZ^2*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 4*d^2*MW^14*MZ^2*\[Xi]w^3*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    18*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 24*d*MW^12*MZ^4*\[Xi]w^3*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    6*d^2*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 6*MW^8*MZ^8*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 8*d*MW^8*MZ^8*\[Xi]w^3*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^2*MW^8*MZ^8*\[Xi]w^3*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 6*MW^14*MZ^2*\[Xi]w^4*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d*MW^14*MZ^2*\[Xi]w^4*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 2*d^2*MW^14*MZ^2*\[Xi]w^4*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 16*d*MW^12*MZ^4*\[Xi]w^4*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^2*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 6*MW^10*MZ^6*\[Xi]w^4*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d*MW^10*MZ^6*\[Xi]w^4*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 2*d^2*MW^10*MZ^6*\[Xi]w^4*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    9*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 12*d*MW^10*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*d^2*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 18*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    24*d*MW^8*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 6*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    9*MW^6*MZ^10*\[Xi]w*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 12*d*MW^6*MZ^10*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 9*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*d*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 3*d^2*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    24*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 32*d*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d^2*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 21*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    28*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 7*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 8*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 6*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 2*d^2*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    9*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 12*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 4*d*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^2*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 6*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 2*d^2*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*MW^8*MZ^8*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 4*d*MW^8*MZ^8*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^2*MW^8*MZ^8*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 3*MW^8*MZ^8*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d*MW^8*MZ^8*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^2*MW^8*MZ^8*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 8*d*MW^6*MZ^10*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^2*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 3*MW^4*MZ^12*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d*MW^4*MZ^12*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^2*MW^4*MZ^12*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 4*d*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^2*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 6*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 2*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 4*d*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 8*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    2*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 3*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + d^2*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 4*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 6*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 2*d^2*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 4*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ*Sqrt[\[Xi]z], MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ*Sqrt[\[Xi]z], 
       MW*Sqrt[\[Xi]w]}, {1, 1, 1}]))/(8192*(-3 + d)*(-1 + d)*d*MW^4*
   QFTSymbols`MW^2*(MW^2 - MZ^2)^2*(QFTSymbols`MW^2 - MZ^2)^2*Pi^8*
   (MZ^2 - MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)^2*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z))
