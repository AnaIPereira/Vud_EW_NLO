(* Created with the Wolfram Language : www.wolfram.com *)
(el^6*Op*(mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MW] - mass[MZ])*(mass[MW] + mass[MZ])) - 
    mtad[{mass[MW], mass[MZ], mass[MW]}, {1, 1, 1}]/
     ((mass[MW] - mass[MZ])*(mass[MW] + mass[MZ]))))/
  (2048*d*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*Op*(-1/2*((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
      ((-3 + d)*mass[MW]^2*(mass[MW] - mass[MZ])*(mass[MW] + mass[MZ])) + 
    mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}]/((mass[MW] - mass[MZ])*
      (mass[MW] + mass[MZ])) + mtad[{mass[MW], mass[MW], 0}, {1, 1, 0}]/
     (mass[MW]^2*(mass[MW] - mass[MZ])*(mass[MW] + mass[MZ])) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MW] - mass[MZ])*(mass[MW] + mass[MZ])) - 
    mtad[{mass[MW], mass[MZ], 0}, {1, 1, 0}]/
     (mass[MW]^2*(mass[MW] - mass[MZ])*(mass[MW] + mass[MZ])) - 
    mtad[{mass[MW], mass[MZ], mass[MW]}, {1, 1, 1}]/
     ((mass[MW] - mass[MZ])*(mass[MW] + mass[MZ]))))/
  (2048*d*Pi^8*sw^4*mass[MW]^2) - 
 (3*el^6*Op*(-1/2*((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
      ((-3 + d)*mass[MW]^2*(mass[MW] - mass[MZ])*(mass[MW] + mass[MZ])) - 
    (mass[MZ]^2*mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^2*(-mass[MW] + mass[MZ])*(mass[MW] + mass[MZ])) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MW] - mass[MZ])*(mass[MW] + mass[MZ])) + 
    (mass[MZ]^2*mtad[{mass[MW], mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^2*(-mass[MW] + mass[MZ])*(mass[MW] + mass[MZ]))))/
  (2048*d*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*Op*(-1/4*((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
      ((-5 + d)*mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) - 
    ((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
     (2*(-3 + d)*mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MZ]^2*mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MZ]^2*(((-2 + d)*mtad[{0, mass[MZ], mass[MW]}, {0, 1, 1}])/
        (-mass[MW]^2 + mass[MZ]^2)^2 - ((-3 + d)*(mass[MW]^2 + mass[MZ]^2)*
         mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}])/(-mass[MW]^2 + mass[MZ]^2)^
         2))/(mass[MW]^2 - mass[MZ]^2) + 
    mtad[{mass[MW], mass[MW], 0}, {1, 1, 0}]/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     (mass[MW]^2 - mass[MZ]^2) - 
    (mass[MZ]^2*mtad[{mass[MW], mass[MZ], 0}, {1, 1, 0}])/
     (mass[MW]^4*(mass[MW]^2 - mass[MZ]^2)) - 
    (mass[MZ]^2*mtad[{mass[MW], mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2))))/(512*d*Pi^8*sw^4*mass[MW]^2) + 
 (el^6*Op*(-1/4*((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
      ((-5 + d)*mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) - 
    ((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
     (2*(-3 + d)*mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MZ]^4*mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^4*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MZ]^4*(((-2 + d)*mtad[{0, mass[MZ], mass[MW]}, {0, 1, 1}])/
        (-mass[MW]^2 + mass[MZ]^2)^2 - ((-3 + d)*(mass[MW]^2 + mass[MZ]^2)*
         mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}])/(-mass[MW]^2 + mass[MZ]^2)^
         2))/(mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}]/mass[MW]^4 + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     (mass[MW]^2 - mass[MZ]^2) - 
    (mass[MZ]^4*mtad[{mass[MW], mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^4*(mass[MW]^2 - mass[MZ]^2))))/(512*d*Pi^8*sw^4*mass[MW]^2)
