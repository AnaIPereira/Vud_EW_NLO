(* Created with the Wolfram Language : www.wolfram.com *)
(Ev3*(-1 + 8*sw^2 - 20*sw^4 + 16*sw^6)*
   (-(el^6*auxdensimp[{0, 0, 0}, {}, {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*
      Flag[tadpolem]*NF[{MM}]) - el^6*auxdensimp[{0, 0, 0}, {{0, 1}}, 
      {{0, 1}, {MW, 1}, {MZ, 1}}, {}]*Flag[tadpolem]*NF[{MM}] + 
    el^6*auxdensimp[{0, 0, 1}, {{0, 1}}, {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*
     Flag[tadpolem]*NF[{MM}]))/(32768*cw^4*Pi^8*sw^6) + 
 (Op*(-1 + 8*sw^2 - 20*sw^4 + 16*sw^6)*
   (-16*el^6*auxdensimp[{0, 0, 0}, {}, {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*
     Flag[tadpolem]*NF[{MM}] - 16*el^6*auxdensimp[{0, 0, 0}, {{0, 1}}, 
      {{0, 1}, {MW, 1}, {MZ, 1}}, {}]*Flag[tadpolem]*NF[{MM}] + 
    16*el^6*auxdensimp[{0, 0, 1}, {{0, 1}}, {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*
     Flag[tadpolem]*NF[{MM}]))/(32768*cw^4*Pi^8*sw^6)
