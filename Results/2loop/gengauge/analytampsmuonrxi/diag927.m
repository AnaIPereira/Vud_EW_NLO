(* Created with the Wolfram Language : www.wolfram.com *)
(el^6*Ev3*(-2*QFTSymbols`MW^2 + MZ^2)^2*Flag[selfm]*
   ((MW^3 - MW*MZ^2)^2*\[Xi]w*(MW^2*\[Xi]w + MZ^2*(1 - d + 2*\[Xi]w))*
     sorttad[{0, 0, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    MZ^4*(MW^2*(-4 + d - 3*\[Xi]w) + MZ^2*(3 - d + 2*\[Xi]w))*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    MW^2*MZ^4*(-1 + \[Xi]w)*(-(MZ^2*(-3 + d + 2*\[Xi]w)) + 
      MW^2*(-4 + d + 3*\[Xi]w))*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + MW^4*((MZ^2 + MW^2*\[Xi]w)*
       sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
      (MZ^2 - MW^2*\[Xi]w)^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}])))/
  (8192*(-1 + d)*d*MW^4*QFTSymbols`MW^2*MZ^2*(MW^2 - MZ^2)^2*
   (QFTSymbols`MW^2 - MZ^2)^2*Pi^8) + 
 (el^6*(-2*QFTSymbols`MW^2 + MZ^2)^2*Op*Flag[selfm]*
   ((-3 + d)*MW^2*(MW^2 - MZ^2)^2*\[Xi]w*(-MZ^2 + MW^2*\[Xi]w)*
     ((20 - 6*d + d^2)*MW^2*\[Xi]w - MZ^2*(-11*d^2 + d^3 + 
        10*d*(3 + \[Xi]w) - 20*(1 + 2*\[Xi]w)))*(MW^2 - MZ^2*\[Xi]z)^2*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)*sorttad[{0, 0, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + (-3 + d)*MZ^4*(MZ^2 - MW^2*\[Xi]w)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)*(5*(-4 + d)*MZ^6*(-3 + d - 2*\[Xi]w)*
       \[Xi]z^2 - MW^6*(-4 + d - 3*\[Xi]w)*(-19 - \[Xi]z + d*(4 + \[Xi]z)) - 
      MW^2*MZ^4*\[Xi]z*(118 + 82*\[Xi]z + d^2*(9 + 6*\[Xi]z) + 
        \[Xi]w*(79 + 61*\[Xi]z) - d*(67 + 43*\[Xi]z + 
          \[Xi]w*(19 + 16*\[Xi]z))) + MW^4*MZ^2*(57 + 160*\[Xi]z + 
        3*\[Xi]z^2 + d^2*(4 + 10*\[Xi]z + \[Xi]z^2) + 
        2*\[Xi]w*(19 + 60*\[Xi]z + \[Xi]z^2) - 
        d*(31 + 80*\[Xi]z + 4*\[Xi]z^2 + 2*\[Xi]w*(4 + 15*\[Xi]z + 
            \[Xi]z^2))))*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    228*MW^10*MZ^6*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    181*d*MW^10*MZ^6*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    47*d^2*MW^10*MZ^6*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^3*MW^10*MZ^6*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    171*MW^8*MZ^8*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    150*d*MW^8*MZ^8*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    43*d^2*MW^8*MZ^8*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    4*d^3*MW^8*MZ^8*\[Xi]w*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    228*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    181*d*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    47*d^2*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    4*d^3*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    228*MW^10*MZ^6*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    124*d*MW^10*MZ^6*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    16*d^2*MW^10*MZ^6*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    285*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    212*d*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    51*d^2*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^3*MW^8*MZ^8*\[Xi]w^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    399*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    274*d*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    59*d^2*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^3*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    114*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    119*d*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    39*d^2*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    4*d^3*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    114*MW^8*MZ^8*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    62*d*MW^8*MZ^8*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d^2*MW^8*MZ^8*\[Xi]w^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    171*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    93*d*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*d^2*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    114*MW^10*MZ^6*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    62*d*MW^10*MZ^6*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    8*d^2*MW^10*MZ^6*\[Xi]w^4*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    228*MW^8*MZ^8*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    181*d*MW^8*MZ^8*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    47*d^2*MW^8*MZ^8*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    4*d^3*MW^8*MZ^8*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    171*MW^6*MZ^10*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    150*d*MW^6*MZ^10*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    43*d^2*MW^6*MZ^10*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^3*MW^6*MZ^10*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    240*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 200*d*MW^10*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    55*d^2*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 5*d^3*MW^10*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    252*MW^8*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 276*d*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    94*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 10*d^3*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    69*MW^6*MZ^10*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 107*d*MW^6*MZ^10*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    43*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 5*d^3*MW^6*MZ^10*\[Xi]w*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 19*d*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d^2*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    60*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 95*d*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    40*d^2*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 5*d^3*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    600*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 410*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    85*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 5*d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    477*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 393*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    105*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 9*d^3*MW^6*MZ^10*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    21*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 31*d*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    11*d^2*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    660*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 505*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    125*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 10*d^3*MW^10*MZ^6*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    117*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 183*d*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    75*d^2*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 9*d^3*MW^8*MZ^8*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    237*MW^6*MZ^10*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 136*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    19*d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 9*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    12*d*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 3*d^2*MW^12*MZ^4*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    360*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 210*d*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    30*d^2*MW^10*MZ^6*\[Xi]w^4*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 237*MW^8*MZ^8*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    136*d*MW^8*MZ^8*\[Xi]w^4*\[Xi]z*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 19*d^2*MW^8*MZ^8*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*MW^8*MZ^8*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    19*d*MW^8*MZ^8*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d^2*MW^8*MZ^8*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^8*MZ^8*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    480*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    400*d*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    110*d^2*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 10*d^3*MW^6*MZ^10*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    354*MW^4*MZ^12*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    319*d*MW^4*MZ^12*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    94*d^2*MW^4*MZ^12*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    9*d^3*MW^4*MZ^12*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    12*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 19*d*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    8*d^2*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^10*MZ^6*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    468*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 384*d*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    106*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 10*d^3*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    240*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 80*d*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    15*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 5*d^3*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    411*MW^4*MZ^12*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 290*d*MW^4*MZ^12*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    63*d^2*MW^4*MZ^12*\[Xi]w*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 4*d^3*MW^4*MZ^12*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 16*d*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^2*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 600*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    410*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 85*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    5*d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 480*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    400*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 110*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    10*d^3*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 63*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    99*d*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 41*d^2*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    5*d^3*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 6*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    11*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 6*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    d^3*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 63*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    102*d*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 45*d^2*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*d^3*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 120*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    10*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 25*d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    5*d^3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 120*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    70*d*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 10*d^2*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    6*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 8*d*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^2*MW^10*MZ^6*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 183*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    109*d*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 16*d^2*MW^8*MZ^8*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    120*MW^6*MZ^10*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 70*d*MW^6*MZ^10*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    10*d^2*MW^6*MZ^10*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 9*MW^6*MZ^10*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 15*d*MW^6*MZ^10*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 7*d^2*MW^6*MZ^10*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^6*MZ^10*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    246*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    211*d*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    61*d^2*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    6*d^3*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    180*MW^2*MZ^14*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    165*d*MW^2*MZ^14*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    50*d^2*MW^2*MZ^14*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    5*d^3*MW^2*MZ^14*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    9*MW^8*MZ^8*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 15*d*MW^8*MZ^8*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    7*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^8*MZ^8*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    231*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 188*d*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    52*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 5*d^3*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    249*MW^4*MZ^12*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 155*d*MW^4*MZ^12*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    27*d^2*MW^4*MZ^12*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^4*MZ^12*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    300*MW^2*MZ^14*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 235*d*MW^2*MZ^14*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    60*d^2*MW^2*MZ^14*\[Xi]w*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 5*d^3*MW^2*MZ^14*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    15*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 23*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    9*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    423*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 312*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    75*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 6*d^3*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    117*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 126*d*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    44*d^2*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 5*d^3*MW^4*MZ^12*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    120*MW^2*MZ^14*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 70*d*MW^2*MZ^14*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    10*d^2*MW^2*MZ^14*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 6*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    8*d*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^2*MW^8*MZ^8*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    183*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 109*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    16*d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 120*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    70*d*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 10*d^2*MW^4*MZ^12*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MW, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    57*MW^10*MZ^4*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    31*d*MW^10*MZ^4*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    4*d^2*MW^10*MZ^4*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    60*MW^14*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    38*d*MW^14*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    9*d^2*MW^14*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d^3*MW^14*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    6*MW^12*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    14*d*MW^12*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    10*d^2*MW^12*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    2*d^3*MW^12*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    3*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    7*d*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    5*d^2*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    d^3*MW^10*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    57*MW^8*MZ^6*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    31*d*MW^8*MZ^6*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    4*d^2*MW^8*MZ^6*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    114*MW^8*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 62*d*MW^8*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    8*d^2*MW^8*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 60*MW^12*MZ^2*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    38*d*MW^12*MZ^2*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 9*d^2*MW^12*MZ^2*\[Xi]w^2*\[Xi]z*
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
      {0, 1, 1}] + 120*MW^12*MZ^2*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    76*d*MW^12*MZ^2*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 18*d^2*MW^12*MZ^2*\[Xi]w^3*\[Xi]z*
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
      {0, 1, 1}] + 114*MW^6*MZ^8*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 62*d*MW^6*MZ^8*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 8*d^2*MW^6*MZ^8*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 57*MW^6*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    31*d*MW^6*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 4*d^2*MW^6*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    120*MW^10*MZ^4*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 76*d*MW^10*MZ^4*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    18*d^2*MW^10*MZ^4*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
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
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    60*MW^10*MZ^4*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] + 38*d*MW^10*MZ^4*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    9*d^2*MW^10*MZ^4*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
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
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    57*MW^4*MZ^10*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    31*d*MW^4*MZ^10*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    4*d^2*MW^4*MZ^10*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    60*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {0, 1, 1}] - 38*d*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] + 
    9*d^2*MW^8*MZ^6*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
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
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {0, 1, 1}] - 
    57*MW^10*MZ^6*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    31*d*MW^10*MZ^6*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    4*d^2*MW^10*MZ^6*\[Xi]w*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    171*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    93*d*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    12*d^2*MW^12*MZ^4*\[Xi]w^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    168*MW^14*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    86*d*MW^14*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    7*d^2*MW^14*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^14*MZ^2*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    14*d*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    10*d^2*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^12*MZ^4*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    7*d*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    5*d^2*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^10*MZ^6*\[Xi]w^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    60*MW^16*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    38*d*MW^16*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    9*d^2*MW^16*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^16*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    6*MW^14*MZ^2*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    14*d*MW^14*MZ^2*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    10*d^2*MW^14*MZ^2*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    2*d^3*MW^14*MZ^2*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    7*d*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    5*d^2*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    d^3*MW^12*MZ^4*\[Xi]w^4*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    57*MW^8*MZ^8*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    31*d*MW^8*MZ^8*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    4*d^2*MW^8*MZ^8*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    171*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 93*d*MW^10*MZ^6*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*d^2*MW^10*MZ^6*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 114*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    62*d*MW^8*MZ^8*\[Xi]w*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 8*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    168*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 86*d*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    7*d^2*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^12*MZ^4*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    336*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 172*d*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    14*d^2*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^10*MZ^6*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 7*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    5*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    60*MW^14*MZ^2*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 38*d*MW^14*MZ^2*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    9*d^2*MW^14*MZ^2*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + d^3*MW^14*MZ^2*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    342*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 186*d*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    24*d^2*MW^12*MZ^4*\[Xi]w^3*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
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
      {1, 1, 1}] - 120*MW^14*MZ^2*\[Xi]w^4*\[Xi]z*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    76*d*MW^14*MZ^2*\[Xi]w^4*\[Xi]z*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 18*d^2*MW^14*MZ^2*\[Xi]w^4*\[Xi]z*
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
      {1, 1, 1}] - 114*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 62*d*MW^6*MZ^10*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 8*d^2*MW^6*MZ^10*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    342*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 186*d*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    24*d^2*MW^8*MZ^8*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 57*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    31*d*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 4*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    336*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 172*d*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    14*d^2*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^10*MZ^6*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    159*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 65*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    8*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 4*d^3*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    6*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 14*d*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    10*d^2*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^6*MZ^10*\[Xi]w^2*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    120*MW^12*MZ^4*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 76*d*MW^12*MZ^4*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    18*d^2*MW^12*MZ^4*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 2*d^3*MW^12*MZ^4*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    180*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 114*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    27*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 3*d^3*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 7*d*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    5*d^2*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - d^3*MW^6*MZ^10*\[Xi]w^3*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    60*MW^12*MZ^4*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 38*d*MW^12*MZ^4*\[Xi]w^4*\[Xi]z^2*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    9*d^2*MW^12*MZ^4*\[Xi]w^4*\[Xi]z^2*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
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
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    57*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    31*d*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    4*d^2*MW^4*MZ^12*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    171*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 93*d*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    12*d^2*MW^6*MZ^10*\[Xi]w*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 168*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] - 
    86*d*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] + 7*d^2*MW^8*MZ^8*\[Xi]w^2*\[Xi]z^3*
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
      {1, 1, 1}] - 60*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^3*
     sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, {1, 1, 1}] + 
    38*d*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^3*sorttad[{0, MZ, MW*Sqrt[\[Xi]w]}, 
      {1, 1, 1}] - 9*d^2*MW^10*MZ^6*\[Xi]w^3*\[Xi]z^3*
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
   QFTSymbols`MW^2*MZ^2*(MW^2 - MZ^2)^2*(QFTSymbols`MW^2 - MZ^2)^2*Pi^8*
   (MZ^2 - MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)^2*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z))
