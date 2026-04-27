(* Created with the Wolfram Language : www.wolfram.com *)
(el^6*Op*(mtad[{mass[MW], mass[MH], mass[MW]}, {1, 1, 1}]/
     ((mass[MH] - mass[MW])*(mass[MH] + mass[MW])) - 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((mass[MH] - mass[MW])*(mass[MH] + mass[MW]))))/
  (3072*d*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*Op*(-((mass[MH]^2*mtad[{0, mass[MH], mass[MW]}, {1, 1, 1}])/
      ((mass[MH] - mass[MW])*mass[MW]^2*(mass[MH] + mass[MW]))) - 
    ((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
     (2*(-3 + d)*mass[MW]^2*(-mass[MH] + mass[MW])*(mass[MH] + mass[MW])) + 
    (mass[MH]^2*mtad[{mass[MW], mass[MH], mass[MW]}, {1, 1, 1}])/
     ((mass[MH] - mass[MW])*mass[MW]^2*(mass[MH] + mass[MW])) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((-mass[MH] + mass[MW])*(mass[MH] + mass[MW]))))/
  (1024*d*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*Op*(mtad[{0, mass[MH], mass[MW]}, {1, 1, 1}]/
     ((-mass[MH] + mass[MW])*(mass[MH] + mass[MW])) - 
    ((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
     (2*(-3 + d)*mass[MW]^2*(-mass[MH] + mass[MW])*(mass[MH] + mass[MW])) + 
    mtad[{mass[MW], mass[MH], 0}, {1, 1, 0}]/((mass[MH] - mass[MW])*
      mass[MW]^2*(mass[MH] + mass[MW])) - 
    mtad[{mass[MW], mass[MH], mass[MW]}, {1, 1, 1}]/
     ((-mass[MH] + mass[MW])*(mass[MH] + mass[MW])) - 
    mtad[{mass[MW], mass[MW], 0}, {1, 1, 0}]/((mass[MH] - mass[MW])*
      mass[MW]^2*(mass[MH] + mass[MW])) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     ((-mass[MH] + mass[MW])*(mass[MH] + mass[MW]))))/
  (3072*d*Pi^8*sw^4*mass[MW]^2) + 
 (el^6*Op*((mass[MH]^4*mtad[{0, mass[MH], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^4*(-mass[MH]^2 + mass[MW]^2)) + 
    (mass[MH]^4*(((-2 + d)*mtad[{0, mass[MH], mass[MW]}, {0, 1, 1}])/
        (mass[MH]^2 - mass[MW]^2)^2 - ((-3 + d)*(mass[MH]^2 + mass[MW]^2)*
         mtad[{0, mass[MH], mass[MW]}, {1, 1, 1}])/(mass[MH]^2 - mass[MW]^2)^
         2))/(mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)) - 
    ((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
     (4*(-5 + d)*mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)) - 
    ((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
     (2*(-3 + d)*mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)) + 
    mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}]/mass[MW]^4 - 
    (mass[MH]^4*mtad[{mass[MW], mass[MH], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^4*(-mass[MH]^2 + mass[MW]^2)) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     (-mass[MH]^2 + mass[MW]^2)))/(768*d*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*Op*((mass[MH]^2*mtad[{0, mass[MH], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)) - 
    (mass[MH]^2*(((-2 + d)*mtad[{0, mass[MH], mass[MW]}, {0, 1, 1}])/
        (mass[MH]^2 - mass[MW]^2)^2 - ((-3 + d)*(mass[MH]^2 + mass[MW]^2)*
         mtad[{0, mass[MH], mass[MW]}, {1, 1, 1}])/(mass[MH]^2 - mass[MW]^2)^
         2))/(mass[MH]^2 - mass[MW]^2) - 
    ((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
     (4*(-5 + d)*mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)) - 
    ((-2 + d)*mtad[{0, mass[MW], mass[MW]}, {0, 1, 1}])/
     (2*(-3 + d)*mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)) - 
    (mass[MH]^2*mtad[{mass[MW], mass[MH], 0}, {1, 1, 0}])/
     (mass[MW]^4*(-mass[MH]^2 + mass[MW]^2)) - 
    (mass[MH]^2*mtad[{mass[MW], mass[MH], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)) + 
    mtad[{mass[MW], mass[MW], 0}, {1, 1, 0}]/
     (mass[MW]^2*(-mass[MH]^2 + mass[MW]^2)) + 
    mtad[{mass[MW], mass[MW], mass[MW]}, {1, 1, 1}]/
     (-mass[MH]^2 + mass[MW]^2)))/(768*d*Pi^8*sw^4*mass[MW]^2)
