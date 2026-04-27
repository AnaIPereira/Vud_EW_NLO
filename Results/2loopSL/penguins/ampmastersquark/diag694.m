(* Created with the Wolfram Language : www.wolfram.com *)
(el^6*nc*Op*mass[MT]^2*((-2*mtad[{mass[MW], mass[MT], 0}, {1, 1, 0}])/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)^2) + 
    (mass[MZ]^2*mtad[{mass[MW], mass[MT], 0}, {1, 1, 0}])/
     (mass[MW]^4*(mass[MW]^2 - mass[MZ]^2)^2) + 
    ((-2 + d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 0}])/
     (2*mass[MW]^4*(mass[MW]^2 - mass[MZ]^2)) + 
    mtad[{mass[MZ], mass[MT], 0}, {1, 1, 0}]/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2)^2))*NF[{MB}, {MT}, {MW}])/
  (2048*cw^2*Pi^8*sw^4*mass[MW]^2) + 
 (el^6*nc*Op*mass[MT]^2*(-(mtad[{mass[MW], mass[MT], 0}, {1, 1, 1}]/
      (mass[MW]^2 - mass[MZ]^2)^2) + 
    (((2 - d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 0}])/
       (2*mass[MW]^2*(-mass[MT]^2 + mass[MW]^2)) + 
      ((-3 + d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 1}])/
       (-mass[MT]^2 + mass[MW]^2))/(mass[MW]^2 - mass[MZ]^2) + 
    mtad[{mass[MZ], mass[MT], 0}, {1, 1, 1}]/(mass[MW]^2 - mass[MZ]^2)^2)*
   NF[{MB}, {MT}, {MW}])/(2048*cw^2*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*nc*Op*mass[MT]^2*(-((mass[MT]^2*mtad[{0, mass[MT], 0}, {1, 1, 1}])/
      (mass[MW]^4*mass[MZ]^2)) - 
    (2*mass[MT]^2*mtad[{mass[MW], mass[MT], 0}, {1, 1, 1}])/
     (mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)^2) + 
    (mass[MT]^2*mass[MZ]^2*mtad[{mass[MW], mass[MT], 0}, {1, 1, 1}])/
     (mass[MW]^4*(mass[MW]^2 - mass[MZ]^2)^2) + 
    (mass[MT]^2*(((2 - d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 0}])/
        (2*mass[MW]^2*(-mass[MT]^2 + mass[MW]^2)) + 
       ((-3 + d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 1}])/
        (-mass[MT]^2 + mass[MW]^2)))/(mass[MW]^2*(mass[MW]^2 - mass[MZ]^2)) + 
    (mass[MT]^2*mtad[{mass[MZ], mass[MT], 0}, {1, 1, 1}])/
     (mass[MZ]^2*(-mass[MW]^2 + mass[MZ]^2)^2))*NF[{MB}, {MT}, {MW}])/
  (2048*cw^2*Pi^8*sw^4*mass[MW]^2)
