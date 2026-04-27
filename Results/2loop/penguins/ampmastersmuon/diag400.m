(* Created with the Wolfram Language : www.wolfram.com *)
(el^6*Op*(mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2))))/(512*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*Op*(mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2))))/
  (1024*d*Pi^8*sw^4*mass[MW]^2) - 
 (d*el^6*Op*(mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2))))/(1024*Pi^8*sw^4*mass[MW]^2) + 
 (9*el^6*Op*(((-2 + d)*mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}])/
     (2*(-3 + d)*mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) - 
    mtad[{mass[MZ], 0, mass[MW]}, {1, 1, 1}]/(mass[MW]^2 - mass[MZ]^2)))/
  (1024*Pi^8*sw^4*mass[MW]^2) - 
 (9*el^6*Op*(((-2 + d)*mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}])/
     (2*(-3 + d)*mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) - 
    mtad[{mass[MZ], 0, mass[MW]}, {1, 1, 1}]/(mass[MW]^2 - mass[MZ]^2)))/
  (1024*d*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*Op*(mtad[{0, 0, mass[MW]}, {1, 1, 1}]/mass[MZ]^2 + 
    ((-2 + d)*mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}])/
     (2*(-3 + d)*mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MZ], 0, mass[MW]}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2))))/(512*Pi^8*sw^4*mass[MW]^2) + 
 (el^6*Op*(mtad[{0, 0, mass[MW]}, {1, 1, 1}]/mass[MZ]^2 + 
    ((-2 + d)*mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}])/
     (2*(-3 + d)*mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MZ], 0, mass[MW]}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2))))/
  (1024*d*Pi^8*sw^4*mass[MW]^2) + 
 (d*el^6*Op*(mtad[{0, 0, mass[MW]}, {1, 1, 1}]/mass[MZ]^2 + 
    ((-2 + d)*mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}])/
     (2*(-3 + d)*mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MZ], 0, mass[MW]}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2))))/(1024*Pi^8*sw^4*mass[MW]^2)
