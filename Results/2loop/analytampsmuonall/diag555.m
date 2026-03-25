(* Created with the Wolfram Language : www.wolfram.com *)
(Ev3*(-cw^2 + sw^2 + 2*cw^2*sw^2 - 2*sw^4)*
   (el^6*auxdensimp[{0, 0, 0}, {{MW, 1}}, {{0, 1}, {MW, 1}, {MZ, 1}}, {}]*
     Flag[tadpolem] - el^6*auxdensimp[{0, 0, 1}, {{MW, 1}}, 
      {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*Flag[tadpolem] + 
    el^6*auxdensimp[{1, 0, 0}, {{MW, 1}}, {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*
     Flag[tadpolem]))/(32768*cw^4*Pi^8*sw^6) + 
 (Op*(-cw^2 + sw^2 + 2*cw^2*sw^2 - 2*sw^4)*
   (16*el^6*auxdensimp[{0, 0, 0}, {{MW, 1}}, {{0, 1}, {MW, 1}, {MZ, 1}}, {}]*
     Flag[tadpolem] - 16*el^6*auxdensimp[{0, 0, 1}, {{MW, 1}}, 
      {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*Flag[tadpolem] + 
    16*el^6*auxdensimp[{1, 0, 0}, {{MW, 1}}, {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*
     Flag[tadpolem]))/(32768*cw^4*Pi^8*sw^6)
