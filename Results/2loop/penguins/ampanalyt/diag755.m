(* Created with the Wolfram Language : www.wolfram.com *)
Op*(-1/1024*(el^6*MT^6*MZ^4*nc*Log[MT]^2*NF[{MB}, {MT}, {MW}])/
    (MW^8*(MW^2 - MZ^2)^2*Pi^4) - 
  (el^6*MZ^6*(MT^4*(-2*MW^2 + MZ^2) + MT^2*MW^2*(2*MW^2 + MZ^2))*nc*Log[MW]*
    NF[{MB}, {MT}, {MW}])/(1024*MW^6*(MW^2 - MZ^2)^4*Pi^4) + 
  (el^6*MT^2*MZ^6*(-2*MT^2*MW^4 + 2*MW^4*MZ^2 + MT^4*(2*MW^2 - MZ^2))*nc*
    Log[MW]^2*NF[{MB}, {MT}, {MW}])/(1024*MW^8*(MW^2 - MZ^2)^4*Pi^4) - 
  (el^6*MT^2*MZ^6*(MT^2 - 3*MZ^2)*nc*Log[MZ]*NF[{MB}, {MT}, {MW}])/
   (1024*MW^4*(MW^2 - MZ^2)^4*Pi^4) - 
  (el^6*MT^2*MZ^4*(MT^4 - 2*MT^2*MZ^2 + 2*MZ^4)*nc*Log[MZ]^2*
    NF[{MB}, {MT}, {MW}])/(1024*MW^4*(MW^2 - MZ^2)^4*Pi^4) + 
  ((el^6*MT^2*MZ^6*nc*NF[{MB}, {MT}, {MW}])/(2048*MW^4*(MW^2 - MZ^2)^3*
      Pi^4) - (el^6*MT^2*MZ^8*nc*Log[MW]*NF[{MB}, {MT}, {MW}])/
     (1024*MW^4*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MT^2*MZ^8*nc*Log[MZ]*NF[{MB}, {MT}, {MW}])/
     (1024*MW^4*(MW^2 - MZ^2)^4*Pi^4))/e + 
  Log[mu]*((el^6*MT^2*MZ^6*nc*NF[{MB}, {MT}, {MW}])/
     (512*MW^4*(MW^2 - MZ^2)^3*Pi^4) - 
    (el^6*MT^2*MZ^8*nc*Log[MW]*NF[{MB}, {MT}, {MW}])/
     (256*MW^4*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MT^2*MZ^8*nc*Log[MZ]*NF[{MB}, {MT}, {MW}])/
     (256*MW^4*(MW^2 - MZ^2)^4*Pi^4)) + 
  Log[MT]*(-1/1024*(el^6*MT^4*MZ^6*nc*NF[{MB}, {MT}, {MW}])/
      (MW^6*(MW^2 - MZ^2)^3*Pi^4) + 
    (el^6*MZ^6*(2*MT^4*MW^4 + MT^6*(-2*MW^2 + MZ^2))*nc*Log[MW]*
      NF[{MB}, {MT}, {MW}])/(512*MW^8*(MW^2 - MZ^2)^4*Pi^4) + 
    (el^6*MZ^4*(MT^6 - 2*MT^4*MZ^2)*nc*Log[MZ]*NF[{MB}, {MT}, {MW}])/
     (512*MW^4*(MW^2 - MZ^2)^4*Pi^4)) - 
  (el^6*MT^2*MZ^4*nc*NF[{MB}, {MT}, {MW}]*
    ((MW^2 - MZ^2)*(6*MT^2*MW^2*MZ^2 - 18*MW^4*MZ^2 + 
       MT^4*(MW^2 - MZ^2)*Pi^2) - 6*MZ^2*(-2*MT^2*MW^4 + MW^4*MZ^2 + 
       MT^4*(2*MW^2 - MZ^2))*PolyLog[2, 1 - MT^2/MW^2] + 
     6*MW^4*(MT^2 - MZ^2)^2*PolyLog[2, 1 - MT^2/MZ^2]))/
   (12288*MW^8*(MW^2 - MZ^2)^4*Pi^4))
