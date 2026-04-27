(* Created with the Wolfram Language : www.wolfram.com *)
Op*((el^6*MT^4*nc*NF[{MB}, {MT}, {MW}])/(512*MW^6*Pi^4*sw^4) - 
  (3*el^6*MT^2*nc*NF[{MB}, {MT}, {MW}])/(1024*MW^4*Pi^4*sw^4) - 
  (el^6*MT^2*nc*NF[{MB}, {MT}, {MW}])/(1024*e*MW^4*Pi^4*sw^4) - 
  (el^6*MT^6*nc*NF[{MB}, {MT}, {MW}])/(3072*MW^8*Pi^2*sw^4) + 
  (el^6*MT^4*nc*NF[{MB}, {MT}, {MW}])/(3072*MW^6*Pi^2*sw^4) - 
  (el^6*MT^2*nc*Log[mu]*NF[{MB}, {MT}, {MW}])/(256*MW^4*Pi^4*sw^4) + 
  Log[MT]^2*(-1/256*(el^6*MT^6*nc*NF[{MB}, {MT}, {MW}])/(MW^8*Pi^4*sw^4) + 
    (el^6*MT^4*nc*NF[{MB}, {MT}, {MW}])/(256*MW^6*Pi^4*sw^4)) + 
  Log[MW]^2*(-1/256*(el^6*MT^6*nc*NF[{MB}, {MT}, {MW}])/(MW^8*Pi^4*sw^4) + 
    (el^6*MT^4*nc*NF[{MB}, {MT}, {MW}])/(256*MW^6*Pi^4*sw^4)) + 
  Log[MW]*(-1/256*(el^6*MT^4*nc*NF[{MB}, {MT}, {MW}])/(MW^6*Pi^4*sw^4) + 
    (el^6*MT^2*nc*NF[{MB}, {MT}, {MW}])/(256*MW^4*Pi^4*sw^4)) + 
  Log[MT]*((el^6*MT^4*nc*NF[{MB}, {MT}, {MW}])/(256*MW^6*Pi^4*sw^4) + 
    Log[MW]*((el^6*MT^6*nc*NF[{MB}, {MT}, {MW}])/(128*MW^8*Pi^4*sw^4) - 
      (el^6*MT^4*nc*NF[{MB}, {MT}, {MW}])/(128*MW^6*Pi^4*sw^4))) - 
  (el^6*MT^6*nc*NF[{MB}, {MT}, {MW}]*PolyLog[2, 1 - MT^2/MW^2])/
   (512*MW^8*Pi^4*sw^4) + (el^6*MT^4*nc*NF[{MB}, {MT}, {MW}]*
    PolyLog[2, 1 - MT^2/MW^2])/(512*MW^6*Pi^4*sw^4))
