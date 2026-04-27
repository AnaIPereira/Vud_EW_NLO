(* Created with the Wolfram Language : www.wolfram.com *)
(el^6*Op*(mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}]/mass[MW]^2 + 
    mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MZ]^2*mtad[{mass[MW], mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2)) + 
    mtad[{mass[MZ], mass[MZ], mass[MW]}, {1, 1, 1}]/
     (-mass[MW]^2 + mass[MZ]^2)))/(4096*cw^2*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*Op*(mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}]/mass[MW]^2 + 
    mtad[{mass[MW], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MZ]^2*mtad[{mass[MW], mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], 0, mass[MW]}, {1, 0, 1}]/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2)) + 
    mtad[{mass[MZ], mass[MZ], mass[MW]}, {1, 1, 1}]/
     (-mass[MW]^2 + mass[MZ]^2)))/(2048*cw^2*Pi^8*sw^2*mass[MW]^2) - 
 (el^6*Op*(mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}]/mass[MZ]^2 + 
    mtad[{mass[MW], mass[MZ], 0}, {1, 1, 0}]/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], mass[MZ], mass[MW]}, {1, 1, 1}]/
     (mass[MW]^2 - mass[MZ]^2) + mtad[{mass[MZ], mass[MZ], 0}, {1, 1, 0}]/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MZ], mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2))))/
  (4096*cw^2*Pi^8*sw^4*mass[MW]^2) + 
 (el^6*Op*(mtad[{0, mass[MZ], mass[MW]}, {1, 1, 1}]/mass[MZ]^2 + 
    mtad[{mass[MW], mass[MZ], 0}, {1, 1, 0}]/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MW], mass[MZ], mass[MW]}, {1, 1, 1}]/
     (mass[MW]^2 - mass[MZ]^2) + mtad[{mass[MZ], mass[MZ], 0}, {1, 1, 0}]/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2)) + 
    (mass[MW]^2*mtad[{mass[MZ], mass[MZ], mass[MW]}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2))))/
  (2048*cw^2*Pi^8*sw^2*mass[MW]^2)
