(* Created with the Wolfram Language : www.wolfram.com *)
(Ev3*(1 - 6*sw^2 + 8*sw^4)*
   (-(el^6*auxdensimp[{0, 0, 0}, {}, {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*
      Flag[tadpolem]*NF[{ML}]) - el^6*auxdensimp[{0, 0, 0}, {{0, 1}}, 
      {{0, 1}, {MW, 1}, {MZ, 1}}, {}]*Flag[tadpolem]*NF[{ML}] + 
    el^6*auxdensimp[{0, 0, 1}, {{0, 1}}, {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*
     Flag[tadpolem]*NF[{ML}]))/(32768*cw^4*Pi^8*sw^6) + 
 (Op*(1 - 6*sw^2 + 8*sw^4)*(-16*el^6*auxdensimp[{0, 0, 0}, {}, 
      {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*Flag[tadpolem]*NF[{ML}] - 
    16*el^6*auxdensimp[{0, 0, 0}, {{0, 1}}, {{0, 1}, {MW, 1}, {MZ, 1}}, {}]*
     Flag[tadpolem]*NF[{ML}] + 16*el^6*auxdensimp[{0, 0, 1}, {{0, 1}}, 
      {{0, 2}, {MW, 1}, {MZ, 1}}, {}]*Flag[tadpolem]*NF[{ML}]))/
  (32768*cw^4*Pi^8*sw^6)
