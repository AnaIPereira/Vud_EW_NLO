(* Created with the Wolfram Language : www.wolfram.com *)
(el^6*Op*(mtad[{mass[MH], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) - 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MH]^2 - mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) - 
    mtad[{mass[MZ], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MH]^2 - mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2))))/
  (4096*Pi^8*sw^6) - 
 (el^6*Op*(mtad[{mass[MH], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) - 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MH]^2 - mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) - 
    mtad[{mass[MZ], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MH]^2 - mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2))))/
  (3072*Pi^8*sw^4) + 
 (el^6*Op*(-1/2*((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
      ((-3 + d)*mass[MH]^2*mass[MW]^2*mass[MZ]^2) + 
    mtad[{mass[MH], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MH]^2*(mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MH], mass[MW], mass[MW]}, {1, 1, 1}])/
     (mass[MH]^2*(mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((-mass[MH]^2 + mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MZ]^2*(-mass[MH]^2 + mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MZ], mass[MW], mass[MW]}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MH]^2 + mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2))))/
  (4096*Pi^8*sw^6) - 
 (el^6*Op*(-1/2*((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
      ((-3 + d)*mass[MH]^2*mass[MW]^2*mass[MZ]^2) + 
    mtad[{mass[MH], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MH]^2*(mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MH], mass[MW], mass[MW]}, {1, 1, 1}])/
     (mass[MH]^2*(mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((-mass[MH]^2 + mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MZ]^2*(-mass[MH]^2 + mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MZ], mass[MW], mass[MW]}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MH]^2 + mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2))))/
  (3072*Pi^8*sw^4) - 
 (el^6*Op*(-1/2*((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
      ((-3 + d)*mass[MH]^2*mass[MW]^2*mass[MZ]^2) + 
    mtad[{mass[MH], mass[MW], 0}, {1, 1, 0}]/
     (mass[MH]^2*(mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MH], mass[MW], mass[MW]}, {1, 1, 1}])/
     (mass[MH]^2*(mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], mass[MW], 0}, {1, 1, 0}]/
     (mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((-mass[MH]^2 + mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], mass[MW], 0}, {1, 1, 0}]/
     (mass[MZ]^2*(-mass[MH]^2 + mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MZ], mass[MW], mass[MW]}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MH]^2 + mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2))))/
  (4096*Pi^8*sw^6) + 
 (el^6*Op*(-1/2*((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
      ((-3 + d)*mass[MH]^2*mass[MW]^2*mass[MZ]^2) + 
    mtad[{mass[MH], mass[MW], 0}, {1, 1, 0}]/
     (mass[MH]^2*(mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MH], mass[MW], mass[MW]}, {1, 1, 1}])/
     (mass[MH]^2*(mass[MH]^2 - mass[MW]^2)*(mass[MH]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], mass[MW], 0}, {1, 1, 0}]/
     (mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((-mass[MH]^2 + mass[MW]^2)*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], mass[MW], 0}, {1, 1, 0}]/
     (mass[MZ]^2*(-mass[MH]^2 + mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MZ], mass[MW], mass[MW]}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MH]^2 + mass[MZ]^2)*(-mass[MW]^2 + mass[MZ]^2))))/
  (3072*Pi^8*sw^4)
