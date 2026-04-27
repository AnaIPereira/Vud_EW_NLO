(* Created with the Wolfram Language : www.wolfram.com *)
-1/3072*(el^6*nc*Op*mass[MT]^2*((-2*mtad[{mass[MW], mass[MT], 0}, {1, 1, 0}])/
      mass[MW]^6 + ((-2 + d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 0}])/
      (2*mass[MW]^6))*NF[{MB}, {MT}, {MW}])/(Pi^8*sw^4*mass[MW]^2) + 
 (el^6*nc*Op*mass[MT]^2*((2*mass[MT]^2*mtad[{0, mass[MT], 0}, {1, 1, 1}])/
     mass[MW]^6 + ((3 - d)*mtad[{0, mass[MT], 0}, {1, 1, 1}])/mass[MW]^4 - 
    (2*mass[MT]^2*mtad[{mass[MW], mass[MT], 0}, {1, 1, 1}])/mass[MW]^6 + 
    (mass[MT]^2*(((2 - d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 0}])/
        (2*mass[MW]^2*(-mass[MT]^2 + mass[MW]^2)) + 
       ((-3 + d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 1}])/
        (-mass[MT]^2 + mass[MW]^2)))/mass[MW]^4)*NF[{MB}, {MT}, {MW}])/
  (3072*Pi^8*sw^4*mass[MW]^2) - 
 (el^6*nc*Op*mass[MT]^2*(mtad[{0, mass[MT], 0}, {1, 1, 1}]/mass[MW]^4 - 
    mtad[{mass[MW], mass[MT], 0}, {1, 1, 1}]/mass[MW]^4 + 
    (((2 - d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 0}])/
       (2*mass[MW]^2*(-mass[MT]^2 + mass[MW]^2)) + 
      ((-3 + d)*mtad[{mass[MW], mass[MT], 0}, {1, 1, 1}])/
       (-mass[MT]^2 + mass[MW]^2))/mass[MW]^2)*NF[{MB}, {MT}, {MW}])/
  (3072*Pi^8*sw^4*mass[MW]^2)
