(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*(-1/256*EL^4/(MW^2*Pi^2*sw^2) - EL^4/(384*e*MW^2*Pi^2*sw^2) - 
   (e*EL^4*(21 + Pi^2))/(4608*MW^2*Pi^2*sw^2) - 
   (e*EL^4*ln[mu]^2)/(192*MW^2*Pi^2*sw^2) + 
   ((EL^4*(1/(cw^2*(MW^2 - MZ^2)) + 1/(MW^2*sw^2)))/(192*Pi^2) + 
     (e*EL^4*(1/(cw^2*(MW^2 - MZ^2)) + 1/(MW^2*sw^2)))/(128*Pi^2))*ln[MW] + 
   (e*EL^4*(-(1/(cw^2*(MW^2 - MZ^2))) - 1/(MW^2*sw^2))*ln[MW]^2)/(192*Pi^2) + 
   (-1/192*EL^4/(cw^2*(MW^2 - MZ^2)*Pi^2) - 
     (e*EL^4)/(128*cw^2*(MW^2 - MZ^2)*Pi^2))*ln[MZ] + 
   (e*EL^4*ln[MZ]^2)/(192*cw^2*(MW^2 - MZ^2)*Pi^2) + 
   ln[mu]*(-1/192*EL^4/(MW^2*Pi^2*sw^2) - (e*EL^4)/(128*MW^2*Pi^2*sw^2) + 
     (e*EL^4*(1/(cw^2*(MW^2 - MZ^2)) + 1/(MW^2*sw^2))*ln[MW])/(96*Pi^2) - 
     (e*EL^4*ln[MZ])/(96*cw^2*(MW^2 - MZ^2)*Pi^2))) + 
 Op*((EL^4*((-1 + 2*sw^2)*\[Xi]z + 3*cw^2*(2 + \[Xi]w + 
        sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z)))/(128*cw^2*e*MW^2*Pi^2*sw^4) + 
   (EL^4*(5*cw^2*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) + 
      (-1 + 2*sw^2)*(-3 + 2*\[Xi]z)))/(256*cw^2*MW^2*Pi^2*sw^4) + 
   (e*EL^4*(3*cw^2*(9 + Pi^2)*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + 
        \[Xi]z) + (-1 + 2*sw^2)*(-15 + (12 + Pi^2)*\[Xi]z)))/
    (1536*cw^2*MW^2*Pi^2*sw^4) + 
   (e*EL^4*((-1 + 2*sw^2)*\[Xi]z + 3*cw^2*(2 + \[Xi]w + 
        sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z))*ln[mu]^2)/
    (64*cw^2*MW^2*Pi^2*sw^4) + 
   (3*e*EL^4*(-(MZ^6*sw^2*(2 + \[Xi]A + \[Xi]w)*\[Xi]z) + 
      MW^6*\[Xi]w*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) - 
      MW^4*MZ^2*(2 + \[Xi]z + 3*\[Xi]w*\[Xi]z + \[Xi]w^2*(1 + \[Xi]z) + 
        sw^2*(3*\[Xi]w - \[Xi]z - \[Xi]w*\[Xi]z + 
          \[Xi]A*(1 + \[Xi]w + \[Xi]w*\[Xi]z))) + 
      MW^2*MZ^4*((3 + \[Xi]w^2)*\[Xi]z + sw^2*(2 + \[Xi]w - \[Xi]z + 
          3*\[Xi]w*\[Xi]z + \[Xi]A*(1 + \[Xi]z + \[Xi]w*\[Xi]z))))*ln[MW]^2)/
    (64*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (e*EL^4*(((-1 + 2*sw^2)*\[Xi]z)/cw^2 + 
      (3*MZ^2*(-1 + sw^2)*(MZ^4*\[Xi]z*(2 + \[Xi]w + \[Xi]z) + 
         MW^4*\[Xi]w*(3 + \[Xi]z^2) - MW^2*MZ^2*(2 + \[Xi]z^2 + 
           \[Xi]w*(1 + 3*\[Xi]z + \[Xi]z^2))))/((MW^2 - MZ^2)*
        (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)))*ln[MZ]^2)/
    (64*MW^2*Pi^2*sw^4) + ((3*EL^4*\[Xi]w*(MZ^2*sw^2 - MW^2*\[Xi]w))/
      (128*MW^2*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)) + 
     (5*e*EL^4*\[Xi]w*(MZ^2*sw^2 - MW^2*\[Xi]w))/(256*MW^2*Pi^2*sw^4*
       (-MZ^2 + MW^2*\[Xi]w)))*ln[\[Xi]w] + 
   (3*e*EL^4*\[Xi]w*(-(MZ^2*sw^2) + MW^2*\[Xi]w)*ln[\[Xi]w]^2)/
    (256*MW^2*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)) + 
   ln[MW]*((3*EL^4*(MZ^6*sw^2*(2 + \[Xi]A + \[Xi]w)*\[Xi]z - 
        MW^6*\[Xi]w*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) + 
        MW^4*MZ^2*(2 + \[Xi]z + 3*\[Xi]w*\[Xi]z + \[Xi]w^2*(1 + \[Xi]z) + 
          sw^2*(3*\[Xi]w - \[Xi]z - \[Xi]w*\[Xi]z + 
            \[Xi]A*(1 + \[Xi]w + \[Xi]w*\[Xi]z))) - 
        MW^2*MZ^4*((3 + \[Xi]w^2)*\[Xi]z + sw^2*(2 + \[Xi]w - \[Xi]z + 
            3*\[Xi]w*\[Xi]z + \[Xi]A*(1 + \[Xi]z + \[Xi]w*\[Xi]z)))))/
      (64*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + 
     (5*e*EL^4*(MZ^6*sw^2*(2 + \[Xi]A + \[Xi]w)*\[Xi]z - 
        MW^6*\[Xi]w*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) + 
        MW^4*MZ^2*(2 + \[Xi]z + 3*\[Xi]w*\[Xi]z + \[Xi]w^2*(1 + \[Xi]z) + 
          sw^2*(3*\[Xi]w - \[Xi]z - \[Xi]w*\[Xi]z + 
            \[Xi]A*(1 + \[Xi]w + \[Xi]w*\[Xi]z))) - 
        MW^2*MZ^4*((3 + \[Xi]w^2)*\[Xi]z + sw^2*(2 + \[Xi]w - \[Xi]z + 
            3*\[Xi]w*\[Xi]z + \[Xi]A*(1 + \[Xi]z + \[Xi]w*\[Xi]z)))))/
      (128*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (3*e*EL^4*\[Xi]w*(-(MZ^2*sw^2) + MW^2*\[Xi]w)*
       ln[\[Xi]w])/(64*MW^2*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w))) + 
   ((e*EL^4*\[Xi]z*(MW^2*(2 - 4*sw^2) + MZ^2*(-2 + 4*sw^2 - 
          5*cw^2*(-1 + sw^2))*\[Xi]z))/(256*cw^2*MW^2*Pi^2*sw^4*
       (MW^2 - MZ^2*\[Xi]z)) + (EL^4*\[Xi]z*(MW^2*(1 - 2*sw^2) + 
        MZ^2*(-1 + 2*sw^2 - 3*cw^2*(-1 + sw^2))*\[Xi]z))/
      (128*cw^2*MW^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)))*ln[\[Xi]z] + 
   (e*EL^4*\[Xi]z*(MW^2*(-1 + 2*sw^2) + 
      MZ^2*(1 - 2*sw^2 + 3*cw^2*(-1 + sw^2))*\[Xi]z)*ln[\[Xi]z]^2)/
    (256*cw^2*MW^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)) + 
   ln[mu]*((EL^4*((-1 + 2*sw^2)*\[Xi]z + 3*cw^2*(2 + \[Xi]w + 
          sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z)))/(64*cw^2*MW^2*Pi^2*sw^4) + 
     (e*EL^4*(5*cw^2*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) + 
        (-1 + 2*sw^2)*(-3 + 2*\[Xi]z)))/(128*cw^2*MW^2*Pi^2*sw^4) + 
     (3*e*EL^4*(MZ^6*sw^2*(2 + \[Xi]A + \[Xi]w)*\[Xi]z - 
        MW^6*\[Xi]w*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) + 
        MW^4*MZ^2*(2 + \[Xi]z + 3*\[Xi]w*\[Xi]z + \[Xi]w^2*(1 + \[Xi]z) + 
          sw^2*(3*\[Xi]w - \[Xi]z - \[Xi]w*\[Xi]z + 
            \[Xi]A*(1 + \[Xi]w + \[Xi]w*\[Xi]z))) - 
        MW^2*MZ^4*((3 + \[Xi]w^2)*\[Xi]z + sw^2*(2 + \[Xi]w - \[Xi]z + 
            3*\[Xi]w*\[Xi]z + \[Xi]A*(1 + \[Xi]z + \[Xi]w*\[Xi]z))))*ln[MW])/
      (32*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (e*EL^4*((\[Xi]z - 2*sw^2*\[Xi]z)/cw^2 - 
        (3*MZ^2*(-1 + sw^2)*(MZ^4*\[Xi]z*(2 + \[Xi]w + \[Xi]z) + 
           MW^4*\[Xi]w*(3 + \[Xi]z^2) - MW^2*MZ^2*(2 + \[Xi]z^2 + 
             \[Xi]w*(1 + 3*\[Xi]z + \[Xi]z^2))))/((MW^2 - MZ^2)*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)))*ln[MZ])/
      (32*MW^2*Pi^2*sw^4) + (3*e*EL^4*\[Xi]w*(MZ^2*sw^2 - MW^2*\[Xi]w)*
       ln[\[Xi]w])/(64*MW^2*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)) + 
     (e*EL^4*\[Xi]z*(MW^2*(1 - 2*sw^2) + MZ^2*(-1 + 2*sw^2 - 
          3*cw^2*(-1 + sw^2))*\[Xi]z)*ln[\[Xi]z])/(64*cw^2*MW^2*Pi^2*sw^4*
       (MW^2 - MZ^2*\[Xi]z))) + 
   ln[MZ]*((EL^4*((\[Xi]z - 2*sw^2*\[Xi]z)/cw^2 - 
        (3*MZ^2*(-1 + sw^2)*(MZ^4*\[Xi]z*(2 + \[Xi]w + \[Xi]z) + 
           MW^4*\[Xi]w*(3 + \[Xi]z^2) - MW^2*MZ^2*(2 + \[Xi]z^2 + 
             \[Xi]w*(1 + 3*\[Xi]z + \[Xi]z^2))))/((MW^2 - MZ^2)*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z))))/(64*MW^2*Pi^2*sw^4) + 
     (e*EL^4*(-(MW^6*(-1 + 2*sw^2)*\[Xi]w*(-3 + 2*\[Xi]z)) + 
        MZ^6*\[Xi]z*(-5*cw^2*(-1 + sw^2)*(2 + \[Xi]w + \[Xi]z) + 
          (-1 + 2*sw^2)*(-3 + 2*\[Xi]z)) + MW^2*MZ^4*
         (-((-1 + 2*sw^2)*(-3 + 2*\[Xi]z)*(1 + \[Xi]z + \[Xi]w*\[Xi]z)) + 
          5*cw^2*(-1 + sw^2)*(2 + \[Xi]z^2 + \[Xi]w*(1 + 3*\[Xi]z + 
              \[Xi]z^2))) + MW^4*MZ^2*(3 - 2*\[Xi]z + 
          \[Xi]w*(3 + \[Xi]z - 2*\[Xi]z^2 + 5*cw^2*(3 + \[Xi]z^2)) - 
          sw^2*(6 - 4*\[Xi]z + \[Xi]w*(6 + 2*\[Xi]z - 4*\[Xi]z^2 + 
              5*cw^2*(3 + \[Xi]z^2))))))/(128*cw^2*MW^2*(MW^2 - MZ^2)*Pi^2*
       sw^4*(-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
     (e*EL^4*\[Xi]z*(MW^2*(-1 + 2*sw^2) + MZ^2*(1 - 2*sw^2 + 
          3*cw^2*(-1 + sw^2))*\[Xi]z)*ln[\[Xi]z])/(64*cw^2*MW^2*Pi^2*sw^4*
       (MW^2 - MZ^2*\[Xi]z)))) + 
 Op*((EL^4*((-9 + 18*sw^2 - 8*sw^4)*\[Xi]z + 
      27*cw^2*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z)))/
    (1152*cw^2*e*MW^2*Pi^2*sw^4) + 
   (EL^4*(45*cw^2*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) - 
      (9 - 18*sw^2 + 8*sw^4)*(-3 + 2*\[Xi]z)))/(2304*cw^2*MW^2*Pi^2*sw^4) + 
   (e*EL^4*(27*cw^2*(9 + Pi^2)*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + 
        \[Xi]z) - (9 - 18*sw^2 + 8*sw^4)*(-15 + (12 + Pi^2)*\[Xi]z)))/
    (13824*cw^2*MW^2*Pi^2*sw^4) + 
   (e*EL^4*((-9 + 18*sw^2 - 8*sw^4)*\[Xi]z + 
      27*cw^2*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z))*ln[mu]^2)/
    (576*cw^2*MW^2*Pi^2*sw^4) + 
   (3*e*EL^4*(-(MZ^6*sw^2*(2 + \[Xi]A + \[Xi]w)*\[Xi]z) + 
      MW^6*\[Xi]w*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) - 
      MW^4*MZ^2*(2 + \[Xi]z + 3*\[Xi]w*\[Xi]z + \[Xi]w^2*(1 + \[Xi]z) + 
        sw^2*(3*\[Xi]w - \[Xi]z - \[Xi]w*\[Xi]z + 
          \[Xi]A*(1 + \[Xi]w + \[Xi]w*\[Xi]z))) + 
      MW^2*MZ^4*((3 + \[Xi]w^2)*\[Xi]z + sw^2*(2 + \[Xi]w - \[Xi]z + 
          3*\[Xi]w*\[Xi]z + \[Xi]A*(1 + \[Xi]z + \[Xi]w*\[Xi]z))))*ln[MW]^2)/
    (64*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + 
   (e*EL^4*(-(((9 - 18*sw^2 + 8*sw^4)*\[Xi]z)/cw^2) + 
      (27*MZ^2*(-1 + sw^2)*(MZ^4*\[Xi]z*(2 + \[Xi]w + \[Xi]z) + 
         MW^4*\[Xi]w*(3 + \[Xi]z^2) - MW^2*MZ^2*(2 + \[Xi]z^2 + 
           \[Xi]w*(1 + 3*\[Xi]z + \[Xi]z^2))))/((MW^2 - MZ^2)*
        (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)))*ln[MZ]^2)/
    (576*MW^2*Pi^2*sw^4) + ((3*EL^4*\[Xi]w*(MZ^2*sw^2 - MW^2*\[Xi]w))/
      (128*MW^2*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)) + 
     (5*e*EL^4*\[Xi]w*(MZ^2*sw^2 - MW^2*\[Xi]w))/(256*MW^2*Pi^2*sw^4*
       (-MZ^2 + MW^2*\[Xi]w)))*ln[\[Xi]w] + 
   (3*e*EL^4*\[Xi]w*(-(MZ^2*sw^2) + MW^2*\[Xi]w)*ln[\[Xi]w]^2)/
    (256*MW^2*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)) + 
   ln[MW]*((3*EL^4*(MZ^6*sw^2*(2 + \[Xi]A + \[Xi]w)*\[Xi]z - 
        MW^6*\[Xi]w*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) + 
        MW^4*MZ^2*(2 + \[Xi]z + 3*\[Xi]w*\[Xi]z + \[Xi]w^2*(1 + \[Xi]z) + 
          sw^2*(3*\[Xi]w - \[Xi]z - \[Xi]w*\[Xi]z + 
            \[Xi]A*(1 + \[Xi]w + \[Xi]w*\[Xi]z))) - 
        MW^2*MZ^4*((3 + \[Xi]w^2)*\[Xi]z + sw^2*(2 + \[Xi]w - \[Xi]z + 
            3*\[Xi]w*\[Xi]z + \[Xi]A*(1 + \[Xi]z + \[Xi]w*\[Xi]z)))))/
      (64*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + 
     (5*e*EL^4*(MZ^6*sw^2*(2 + \[Xi]A + \[Xi]w)*\[Xi]z - 
        MW^6*\[Xi]w*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) + 
        MW^4*MZ^2*(2 + \[Xi]z + 3*\[Xi]w*\[Xi]z + \[Xi]w^2*(1 + \[Xi]z) + 
          sw^2*(3*\[Xi]w - \[Xi]z - \[Xi]w*\[Xi]z + 
            \[Xi]A*(1 + \[Xi]w + \[Xi]w*\[Xi]z))) - 
        MW^2*MZ^4*((3 + \[Xi]w^2)*\[Xi]z + sw^2*(2 + \[Xi]w - \[Xi]z + 
            3*\[Xi]w*\[Xi]z + \[Xi]A*(1 + \[Xi]z + \[Xi]w*\[Xi]z)))))/
      (128*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (3*e*EL^4*\[Xi]w*(-(MZ^2*sw^2) + MW^2*\[Xi]w)*
       ln[\[Xi]w])/(64*MW^2*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w))) + 
   ((EL^4*\[Xi]z*(MW^2*(9 - 18*sw^2 + 8*sw^4) + 
        MZ^2*(-9 + 18*sw^2 - 8*sw^4 - 27*cw^2*(-1 + sw^2))*\[Xi]z))/
      (1152*cw^2*MW^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)) + 
     (e*EL^4*\[Xi]z*(2*MW^2*(9 - 18*sw^2 + 8*sw^4) + 
        MZ^2*(-45*cw^2*(-1 + sw^2) - 2*(9 - 18*sw^2 + 8*sw^4))*\[Xi]z))/
      (2304*cw^2*MW^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)))*ln[\[Xi]z] + 
   (e*EL^4*\[Xi]z*(MW^2*(-9 + 18*sw^2 - 8*sw^4) + 
      MZ^2*(9 - 18*sw^2 + 8*sw^4 + 27*cw^2*(-1 + sw^2))*\[Xi]z)*ln[\[Xi]z]^2)/
    (2304*cw^2*MW^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)) + 
   ln[mu]*((EL^4*((-9 + 18*sw^2 - 8*sw^4)*\[Xi]z + 
        27*cw^2*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z)))/
      (576*cw^2*MW^2*Pi^2*sw^4) + 
     (e*EL^4*(45*cw^2*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) - 
        (9 - 18*sw^2 + 8*sw^4)*(-3 + 2*\[Xi]z)))/(1152*cw^2*MW^2*Pi^2*sw^4) + 
     (3*e*EL^4*(MZ^6*sw^2*(2 + \[Xi]A + \[Xi]w)*\[Xi]z - 
        MW^6*\[Xi]w*(2 + \[Xi]w + sw^2*(\[Xi]A - \[Xi]z) + \[Xi]z) + 
        MW^4*MZ^2*(2 + \[Xi]z + 3*\[Xi]w*\[Xi]z + \[Xi]w^2*(1 + \[Xi]z) + 
          sw^2*(3*\[Xi]w - \[Xi]z - \[Xi]w*\[Xi]z + 
            \[Xi]A*(1 + \[Xi]w + \[Xi]w*\[Xi]z))) - 
        MW^2*MZ^4*((3 + \[Xi]w^2)*\[Xi]z + sw^2*(2 + \[Xi]w - \[Xi]z + 
            3*\[Xi]w*\[Xi]z + \[Xi]A*(1 + \[Xi]z + \[Xi]w*\[Xi]z))))*ln[MW])/
      (32*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + 
     (e*EL^4*(((9 - 18*sw^2 + 8*sw^4)*\[Xi]z)/cw^2 - 
        (27*MZ^2*(-1 + sw^2)*(MZ^4*\[Xi]z*(2 + \[Xi]w + \[Xi]z) + 
           MW^4*\[Xi]w*(3 + \[Xi]z^2) - MW^2*MZ^2*(2 + \[Xi]z^2 + 
             \[Xi]w*(1 + 3*\[Xi]z + \[Xi]z^2))))/((MW^2 - MZ^2)*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)))*ln[MZ])/
      (288*MW^2*Pi^2*sw^4) + (3*e*EL^4*\[Xi]w*(MZ^2*sw^2 - MW^2*\[Xi]w)*
       ln[\[Xi]w])/(64*MW^2*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)) + 
     (e*EL^4*\[Xi]z*(MW^2*(9 - 18*sw^2 + 8*sw^4) + 
        MZ^2*(-9 + 18*sw^2 - 8*sw^4 - 27*cw^2*(-1 + sw^2))*\[Xi]z)*
       ln[\[Xi]z])/(576*cw^2*MW^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z))) + 
   ln[MZ]*((EL^4*(((9 - 18*sw^2 + 8*sw^4)*\[Xi]z)/cw^2 - 
        (27*MZ^2*(-1 + sw^2)*(MZ^4*\[Xi]z*(2 + \[Xi]w + \[Xi]z) + 
           MW^4*\[Xi]w*(3 + \[Xi]z^2) - MW^2*MZ^2*(2 + \[Xi]z^2 + 
             \[Xi]w*(1 + 3*\[Xi]z + \[Xi]z^2))))/((MW^2 - MZ^2)*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z))))/
      (576*MW^2*Pi^2*sw^4) + 
     (e*EL^4*(MW^6*(9 - 18*sw^2 + 8*sw^4)*\[Xi]w*(-3 + 2*\[Xi]z) + 
        MZ^6*\[Xi]z*(-45*cw^2*(-1 + sw^2)*(2 + \[Xi]w + \[Xi]z) - 
          (9 - 18*sw^2 + 8*sw^4)*(-3 + 2*\[Xi]z)) + 
        MW^2*MZ^4*((9 - 18*sw^2 + 8*sw^4)*(-3 + 2*\[Xi]z)*
           (1 + \[Xi]z + \[Xi]w*\[Xi]z) + 45*cw^2*(-1 + sw^2)*
           (2 + \[Xi]z^2 + \[Xi]w*(1 + 3*\[Xi]z + \[Xi]z^2))) + 
        MW^4*MZ^2*(-8*sw^4*(-3 + 2*\[Xi]z)*(1 + \[Xi]w + \[Xi]w*\[Xi]z) - 
          9*sw^2*(6 - 4*\[Xi]z + \[Xi]w*(6 + 2*\[Xi]z - 4*\[Xi]z^2 + 
              5*cw^2*(3 + \[Xi]z^2))) + 9*(3 - 2*\[Xi]z + 
            \[Xi]w*(3 + \[Xi]z - 2*\[Xi]z^2 + 5*cw^2*(3 + \[Xi]z^2))))))/
      (1152*cw^2*MW^2*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (e*EL^4*\[Xi]z*(MW^2*(-9 + 18*sw^2 - 8*sw^4) + 
        MZ^2*(9 - 18*sw^2 + 8*sw^4 + 27*cw^2*(-1 + sw^2))*\[Xi]z)*ln[\[Xi]z])/
      (576*cw^2*MW^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)))) + 
 Op*(-1/32*(EL^4*(2 + \[Xi]A))/(e*MW^2*Pi^2*sw^2) - 
   (e*EL^4*(66 - 3*a1q + 24*\[Xi]A + 2*Pi^2*(2 + \[Xi]A)))/
    (768*MW^2*Pi^2*sw^2) + (EL^4*(a1q - 6*(5 + 2*\[Xi]A)))/
    (384*MW^2*Pi^2*sw^2) - (e*EL^4*(2 + \[Xi]A)*ln[mu]^2)/
    (16*MW^2*Pi^2*sw^2) + 
   (e*EL^4*(-16/cw^2 - 16/sw^2 + (16*MZ^2)/(MW^2*sw^2) + 
      (-4*cw^2*MZ^8*sw^2*(2 + 3*\[Xi]A)*\[Xi]z^2 + 2*MW^2*MZ^6*\[Xi]z*
         ((9 + 6*\[Xi]w - 6*sw^2*(3 + 2*\[Xi]w) + sw^4*(4 + 6*\[Xi]w))*
           \[Xi]z + 2*cw^2*sw^2*(2 + 3*\[Xi]A)*(1 + \[Xi]w)*(1 + \[Xi]z)) - 
        2*MW^8*\[Xi]w^2*(9 + 2*sw^2*(-9 + cw^2*(2 + 3*\[Xi]A) - 6*\[Xi]z) + 
          6*\[Xi]z + sw^4*(4 + 6*\[Xi]z)) - MW^4*MZ^4*
         (4*cw^2*sw^2*(2 + 3*\[Xi]A)*(\[Xi]z + \[Xi]w^2*\[Xi]z + 
            \[Xi]w*(1 + \[Xi]z)^2) + \[Xi]z*(9*(1 + \[Xi]z) + 
            30*\[Xi]w*(1 + \[Xi]z) + 3*\[Xi]w^2*(3 + \[Xi]z) - 
            6*sw^2*(3*(1 + \[Xi]z) + 10*\[Xi]w*(1 + \[Xi]z) + 
              \[Xi]w^2*(3 + \[Xi]z)) + sw^4*(-1 + 9*\[Xi]z + 20*\[Xi]w*(1 + 
                \[Xi]z) + 3*\[Xi]w^2*(3 + \[Xi]z)))) + 
        MW^6*MZ^2*\[Xi]w*(9 + 30*\[Xi]z + 9*\[Xi]z^2 + 
          3*\[Xi]w*(3 + 10*\[Xi]z + \[Xi]z^2) + sw^4*(-1 + 20*\[Xi]z + 
            9*\[Xi]z^2 + \[Xi]w*(9 + 20*\[Xi]z + 3*\[Xi]z^2)) + 
          2*sw^2*(2*cw^2*(2 + 3*\[Xi]A)*(1 + \[Xi]w)*(1 + \[Xi]z) - 
            3*(3 + 10*\[Xi]z + 3*\[Xi]z^2 + \[Xi]w*(3 + 10*\[Xi]z + 
                \[Xi]z^2)))))/(cw^2*MW^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
        (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)))*ln[MW]^2)/
    (192*(MW^2 - MZ^2)*Pi^2) + 
   (e*EL^4*(16 + (-2*MZ^6*(9 + 6*\[Xi]w - 6*sw^2*(3 + 2*\[Xi]w) + 
          sw^4*(4 + 6*\[Xi]w))*\[Xi]z^2 + 2*MW^6*\[Xi]w^2*
         (9 + 6*\[Xi]z - 6*sw^2*(3 + 2*\[Xi]z) + sw^4*(4 + 6*\[Xi]z)) + 
        MW^2*MZ^4*\[Xi]z*(9*(1 + \[Xi]z) + 30*\[Xi]w*(1 + \[Xi]z) + 
          3*\[Xi]w^2*(3 + \[Xi]z) - 6*sw^2*(3*(1 + \[Xi]z) + 
            10*\[Xi]w*(1 + \[Xi]z) + \[Xi]w^2*(3 + \[Xi]z)) + 
          sw^4*(-1 + 9*\[Xi]z + 20*\[Xi]w*(1 + \[Xi]z) + 
            3*\[Xi]w^2*(3 + \[Xi]z))) - MW^4*MZ^2*\[Xi]w*
         (9 + 30*\[Xi]z + 9*\[Xi]z^2 + 3*\[Xi]w*(3 + 10*\[Xi]z + \[Xi]z^2) - 
          6*sw^2*(3 + 10*\[Xi]z + 3*\[Xi]z^2 + \[Xi]w*(3 + 10*\[Xi]z + 
              \[Xi]z^2)) + sw^4*(-1 + 20*\[Xi]z + 9*\[Xi]z^2 + 
            \[Xi]w*(9 + 20*\[Xi]z + 3*\[Xi]z^2))))/
       (sw^4*(-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)*
        (MW^2*\[Xi]w - MZ^2*\[Xi]z)))*ln[MZ]^2)/(192*cw^2*(MW^2 - MZ^2)*
     Pi^2) + 
   ((EL^4*((sw^2*(3 + \[Xi]A))/MW^2 + ((-1 + sw^2)^2*\[Xi]w*
          (-4*MZ^2*\[Xi]z + MW^2*\[Xi]w*(3 + \[Xi]z)))/
         (cw^2*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z))))/
      (128*Pi^2*sw^4) + (e*EL^4*((sw^2*(5 + 3*\[Xi]A))/MW^2 + 
        ((-1 + sw^2)^2*\[Xi]w*(-8*MZ^2*\[Xi]z + MW^2*\[Xi]w*(5 + 3*\[Xi]z)))/
         (cw^2*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z))))/
      (256*Pi^2*sw^4))*ln[\[Xi]w] + 
   (e*EL^4*(-((sw^2*(3 + \[Xi]A))/MW^2) - 
      ((-1 + sw^2)^2*\[Xi]w*(-4*MZ^2*\[Xi]z + MW^2*\[Xi]w*(3 + \[Xi]z)))/
       (cw^2*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*
     ln[\[Xi]w]^2)/(256*Pi^2*sw^4) + 
   ln[MW]*((e*EL^4*(48/(cw^2*(MW^2 - MZ^2)) - 2*a1q*(1/(cw^2*(MW^2 - MZ^2)) + 
          1/(MW^2*sw^2)) + 48/((MW^2 - MZ^2)*sw^2) - 
        (48*MZ^2)/(MW^2*(MW^2 - MZ^2)*sw^2) + 
        (3*(4*cw^2*MZ^8*sw^2*(1 + 2*\[Xi]A)*\[Xi]z^2 - 2*MW^2*MZ^6*\[Xi]z*
            ((5 + 4*\[Xi]w + sw^4*(2 + 4*\[Xi]w) - 2*sw^2*(5 + 4*\[Xi]w))*
              \[Xi]z + 2*cw^2*sw^2*(1 + 2*\[Xi]A)*(1 + \[Xi]w)*
              (1 + \[Xi]z)) + 2*MW^8*\[Xi]w^2*(5 + 2*sw^2*(-5 + cw^2*
                (1 + 2*\[Xi]A) - 4*\[Xi]z) + 4*\[Xi]z + 
             sw^4*(2 + 4*\[Xi]z)) - MW^6*MZ^2*\[Xi]w*(5 + 5*\[Xi]w + 
             18*\[Xi]z + 18*\[Xi]w*\[Xi]z + 5*\[Xi]z^2 + 3*\[Xi]w*\[Xi]z^2 + 
             sw^4*(-1 + 12*\[Xi]z + 5*\[Xi]z^2 + \[Xi]w*(5 + 12*\[Xi]z + 
                 3*\[Xi]z^2)) + 2*sw^2*(-5 - 18*\[Xi]z - 5*\[Xi]z^2 + 2*cw^2*
                (1 + 2*\[Xi]A)*(1 + \[Xi]w)*(1 + \[Xi]z) - \[Xi]w*
                (5 + 18*\[Xi]z + 3*\[Xi]z^2))) + MW^4*MZ^4*
            (4*cw^2*sw^2*(1 + 2*\[Xi]A)*(\[Xi]z + \[Xi]w^2*\[Xi]z + \[Xi]w*
                (1 + \[Xi]z)^2) + \[Xi]z*(5*(1 + \[Xi]z) + 18*\[Xi]w*
                (1 + \[Xi]z) + \[Xi]w^2*(5 + 3*\[Xi]z) + sw^4*
                (-1 + 5*\[Xi]z + 12*\[Xi]w*(1 + \[Xi]z) + \[Xi]w^2*
                  (5 + 3*\[Xi]z)) - 2*sw^2*(5*(1 + \[Xi]z) + 18*\[Xi]w*
                  (1 + \[Xi]z) + \[Xi]w^2*(5 + 3*\[Xi]z))))))/
         (cw^2*MW^2*(MW^2 - MZ^2)*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
          (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z))))/(384*Pi^2) + 
     (EL^4*(16*(1/(cw^2*(MW^2 - MZ^2)) + 1/(MW^2*sw^2)) + 
        (4*cw^2*MZ^8*sw^2*(2 + 3*\[Xi]A)*\[Xi]z^2 - 2*MW^2*MZ^6*\[Xi]z*
           ((9 + 6*\[Xi]w - 6*sw^2*(3 + 2*\[Xi]w) + sw^4*(4 + 6*\[Xi]w))*
             \[Xi]z + 2*cw^2*sw^2*(2 + 3*\[Xi]A)*(1 + \[Xi]w)*(1 + \[Xi]z)) + 
          2*MW^8*\[Xi]w^2*(9 + 2*sw^2*(-9 + cw^2*(2 + 3*\[Xi]A) - 6*\[Xi]z) + 
            6*\[Xi]z + sw^4*(4 + 6*\[Xi]z)) + MW^4*MZ^4*
           (4*cw^2*sw^2*(2 + 3*\[Xi]A)*(\[Xi]z + \[Xi]w^2*\[Xi]z + 
              \[Xi]w*(1 + \[Xi]z)^2) + \[Xi]z*(9*(1 + \[Xi]z) + 
              30*\[Xi]w*(1 + \[Xi]z) + 3*\[Xi]w^2*(3 + \[Xi]z) - 
              6*sw^2*(3*(1 + \[Xi]z) + 10*\[Xi]w*(1 + \[Xi]z) + 
                \[Xi]w^2*(3 + \[Xi]z)) + sw^4*(-1 + 9*\[Xi]z + 20*\[Xi]w*
                 (1 + \[Xi]z) + 3*\[Xi]w^2*(3 + \[Xi]z)))) - 
          MW^6*MZ^2*\[Xi]w*(9 + 30*\[Xi]z + 9*\[Xi]z^2 + 
            3*\[Xi]w*(3 + 10*\[Xi]z + \[Xi]z^2) + sw^4*(-1 + 20*\[Xi]z + 
              9*\[Xi]z^2 + \[Xi]w*(9 + 20*\[Xi]z + 3*\[Xi]z^2)) + 
            2*sw^2*(2*cw^2*(2 + 3*\[Xi]A)*(1 + \[Xi]w)*(1 + \[Xi]z) - 
              3*(3 + 10*\[Xi]z + 3*\[Xi]z^2 + \[Xi]w*(3 + 10*\[Xi]z + 
                  \[Xi]z^2)))))/(cw^2*MW^2*(MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - 
           MZ^2*\[Xi]z))))/(192*Pi^2) + 
     (e*EL^4*(-((sw^2*(3 + \[Xi]A))/MW^2) - ((-1 + sw^2)^2*\[Xi]w*
          (-4*MZ^2*\[Xi]z + MW^2*\[Xi]w*(3 + \[Xi]z)))/
         (cw^2*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*
       ln[\[Xi]w])/(64*Pi^2*sw^4)) + 
   ((EL^4*(-1 + sw^2)^2*\[Xi]z*(-4*MW^2*\[Xi]w + MZ^2*(3 + \[Xi]w)*\[Xi]z))/
      (128*cw^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
     (e*EL^4*(-1 + sw^2)^2*\[Xi]z*(-8*MW^2*\[Xi]w + MZ^2*(5 + 3*\[Xi]w)*
         \[Xi]z))/(256*cw^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)))*ln[\[Xi]z] + 
   (e*EL^4*(-1 + sw^2)^2*\[Xi]z*(4*MW^2*\[Xi]w - MZ^2*(3 + \[Xi]w)*\[Xi]z)*
     ln[\[Xi]z]^2)/(256*cw^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
   ln[MZ]*((e*EL^4*(-48 + 2*a1q + 
        (3*(2*MZ^6*(5 + 4*\[Xi]w + sw^4*(2 + 4*\[Xi]w) - 
             2*sw^2*(5 + 4*\[Xi]w))*\[Xi]z^2 - 2*MW^6*\[Xi]w^2*
            (5 + 4*\[Xi]z + sw^4*(2 + 4*\[Xi]z) - 2*sw^2*(5 + 4*\[Xi]z)) - 
           MW^2*MZ^4*\[Xi]z*(5*(1 + \[Xi]z) + 18*\[Xi]w*(1 + \[Xi]z) + 
             \[Xi]w^2*(5 + 3*\[Xi]z) + sw^4*(-1 + 5*\[Xi]z + 12*\[Xi]w*
                (1 + \[Xi]z) + \[Xi]w^2*(5 + 3*\[Xi]z)) - 
             2*sw^2*(5*(1 + \[Xi]z) + 18*\[Xi]w*(1 + \[Xi]z) + \[Xi]w^2*
                (5 + 3*\[Xi]z))) + MW^4*MZ^2*\[Xi]w*(5 + 18*\[Xi]z + 
             5*\[Xi]z^2 + \[Xi]w*(5 + 18*\[Xi]z + 3*\[Xi]z^2) + 
             sw^4*(-1 + 12*\[Xi]z + 5*\[Xi]z^2 + \[Xi]w*(5 + 12*\[Xi]z + 
                 3*\[Xi]z^2)) - 2*sw^2*(5 + 18*\[Xi]z + 5*\[Xi]z^2 + \[Xi]w*
                (5 + 18*\[Xi]z + 3*\[Xi]z^2)))))/(sw^4*(-MZ^2 + MW^2*\[Xi]w)*
          (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z))))/
      (384*cw^2*(MW^2 - MZ^2)*Pi^2) + 
     (EL^4*(-16 + (2*MZ^6*(9 + 6*\[Xi]w - 6*sw^2*(3 + 2*\[Xi]w) + 
            sw^4*(4 + 6*\[Xi]w))*\[Xi]z^2 - 2*MW^6*\[Xi]w^2*
           (9 + 6*\[Xi]z - 6*sw^2*(3 + 2*\[Xi]z) + sw^4*(4 + 6*\[Xi]z)) - 
          MW^2*MZ^4*\[Xi]z*(9*(1 + \[Xi]z) + 30*\[Xi]w*(1 + \[Xi]z) + 
            3*\[Xi]w^2*(3 + \[Xi]z) - 6*sw^2*(3*(1 + \[Xi]z) + 
              10*\[Xi]w*(1 + \[Xi]z) + \[Xi]w^2*(3 + \[Xi]z)) + 
            sw^4*(-1 + 9*\[Xi]z + 20*\[Xi]w*(1 + \[Xi]z) + 3*\[Xi]w^2*(3 + 
                \[Xi]z))) + MW^4*MZ^2*\[Xi]w*(9 + 30*\[Xi]z + 9*\[Xi]z^2 + 
            3*\[Xi]w*(3 + 10*\[Xi]z + \[Xi]z^2) - 6*sw^2*(3 + 10*\[Xi]z + 
              3*\[Xi]z^2 + \[Xi]w*(3 + 10*\[Xi]z + \[Xi]z^2)) + 
            sw^4*(-1 + 20*\[Xi]z + 9*\[Xi]z^2 + \[Xi]w*(9 + 20*\[Xi]z + 
                3*\[Xi]z^2))))/(sw^4*(-MZ^2 + MW^2*\[Xi]w)*
          (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z))))/
      (192*cw^2*(MW^2 - MZ^2)*Pi^2) + (e*EL^4*(-1 + sw^2)^2*\[Xi]z*
       (4*MW^2*\[Xi]w - MZ^2*(3 + \[Xi]w)*\[Xi]z)*ln[\[Xi]z])/
      (64*cw^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z))) + 
   ln[mu]*(-1/16*(EL^4*(2 + \[Xi]A))/(MW^2*Pi^2*sw^2) + 
     (e*EL^4*(a1q - 6*(5 + 2*\[Xi]A)))/(192*MW^2*Pi^2*sw^2) + 
     (e*EL^4*(16/cw^2 + 16/sw^2 - (16*MZ^2)/(MW^2*sw^2) + 
        (4*cw^2*MZ^8*sw^2*(2 + 3*\[Xi]A)*\[Xi]z^2 - 2*MW^2*MZ^6*\[Xi]z*
           ((9 + 6*\[Xi]w - 6*sw^2*(3 + 2*\[Xi]w) + sw^4*(4 + 6*\[Xi]w))*
             \[Xi]z + 2*cw^2*sw^2*(2 + 3*\[Xi]A)*(1 + \[Xi]w)*(1 + \[Xi]z)) + 
          2*MW^8*\[Xi]w^2*(9 + 2*sw^2*(-9 + cw^2*(2 + 3*\[Xi]A) - 6*\[Xi]z) + 
            6*\[Xi]z + sw^4*(4 + 6*\[Xi]z)) + MW^4*MZ^4*
           (4*cw^2*sw^2*(2 + 3*\[Xi]A)*(\[Xi]z + \[Xi]w^2*\[Xi]z + 
              \[Xi]w*(1 + \[Xi]z)^2) + \[Xi]z*(9*(1 + \[Xi]z) + 
              30*\[Xi]w*(1 + \[Xi]z) + 3*\[Xi]w^2*(3 + \[Xi]z) - 
              6*sw^2*(3*(1 + \[Xi]z) + 10*\[Xi]w*(1 + \[Xi]z) + 
                \[Xi]w^2*(3 + \[Xi]z)) + sw^4*(-1 + 9*\[Xi]z + 20*\[Xi]w*
                 (1 + \[Xi]z) + 3*\[Xi]w^2*(3 + \[Xi]z)))) - 
          MW^6*MZ^2*\[Xi]w*(9 + 30*\[Xi]z + 9*\[Xi]z^2 + 
            3*\[Xi]w*(3 + 10*\[Xi]z + \[Xi]z^2) + sw^4*(-1 + 20*\[Xi]z + 
              9*\[Xi]z^2 + \[Xi]w*(9 + 20*\[Xi]z + 3*\[Xi]z^2)) + 
            2*sw^2*(2*cw^2*(2 + 3*\[Xi]A)*(1 + \[Xi]w)*(1 + \[Xi]z) - 
              3*(3 + 10*\[Xi]z + 3*\[Xi]z^2 + \[Xi]w*(3 + 10*\[Xi]z + 
                  \[Xi]z^2)))))/(cw^2*MW^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
          (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)))*ln[MW])/
      (96*(MW^2 - MZ^2)*Pi^2) + 
     (e*EL^4*(-16 + (2*MZ^6*(9 + 6*\[Xi]w - 6*sw^2*(3 + 2*\[Xi]w) + 
            sw^4*(4 + 6*\[Xi]w))*\[Xi]z^2 - 2*MW^6*\[Xi]w^2*
           (9 + 6*\[Xi]z - 6*sw^2*(3 + 2*\[Xi]z) + sw^4*(4 + 6*\[Xi]z)) - 
          MW^2*MZ^4*\[Xi]z*(9*(1 + \[Xi]z) + 30*\[Xi]w*(1 + \[Xi]z) + 
            3*\[Xi]w^2*(3 + \[Xi]z) - 6*sw^2*(3*(1 + \[Xi]z) + 
              10*\[Xi]w*(1 + \[Xi]z) + \[Xi]w^2*(3 + \[Xi]z)) + 
            sw^4*(-1 + 9*\[Xi]z + 20*\[Xi]w*(1 + \[Xi]z) + 3*\[Xi]w^2*(3 + 
                \[Xi]z))) + MW^4*MZ^2*\[Xi]w*(9 + 30*\[Xi]z + 9*\[Xi]z^2 + 
            3*\[Xi]w*(3 + 10*\[Xi]z + \[Xi]z^2) - 6*sw^2*(3 + 10*\[Xi]z + 
              3*\[Xi]z^2 + \[Xi]w*(3 + 10*\[Xi]z + \[Xi]z^2)) + 
            sw^4*(-1 + 20*\[Xi]z + 9*\[Xi]z^2 + \[Xi]w*(9 + 20*\[Xi]z + 
                3*\[Xi]z^2))))/(sw^4*(-MZ^2 + MW^2*\[Xi]w)*
          (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)))*ln[MZ])/
      (96*cw^2*(MW^2 - MZ^2)*Pi^2) + 
     (e*EL^4*((sw^2*(3 + \[Xi]A))/MW^2 + ((-1 + sw^2)^2*\[Xi]w*
          (-4*MZ^2*\[Xi]z + MW^2*\[Xi]w*(3 + \[Xi]z)))/
         (cw^2*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*
       ln[\[Xi]w])/(64*Pi^2*sw^4) + (e*EL^4*(-1 + sw^2)^2*\[Xi]z*
       (-4*MW^2*\[Xi]w + MZ^2*(3 + \[Xi]w)*\[Xi]z)*ln[\[Xi]z])/
      (64*cw^2*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - 
        MZ^2*\[Xi]z)))) + 
 Op*(-1/256*(EL^4*(-4*cw*MW*MZ^3*\[Xi]z^2 + cw^4*MH^2*
        (MZ^2*(17 + 5*\[Xi]w - 6*\[Xi]z) + MW^2*(20 - 6*\[Xi]w + 5*\[Xi]w^2 + 
           5*\[Xi]z)) + cw^2*(7*MH^4 + 8*(MW^4 - 2*MT^4*nc) + 
         MH^2*(2*MT^2*nc + MW^2*(-8 + 3*\[Xi]w - 5*\[Xi]w^2 + 
             sw^2*(15 + 2*\[Xi]A - 6*\[Xi]w + 5*\[Xi]w^2)) + 
           3*MZ^2*\[Xi]z)) + MW^2*(-(MH^2*sw^4*(5 + 3*\[Xi]z)) + 
         4*MZ^2*(1 + \[Xi]z^2))))/(cw^2*MH^2*MW^4*Pi^2*sw^4) - 
   (EL^4*(-2*cw*MW*MZ^3*\[Xi]z^2 + cw^4*MH^2*
       (MZ^2*(3 + 3*\[Xi]w - 2*\[Xi]z) + MW^2*(12 - 2*\[Xi]w + 3*\[Xi]w^2 + 
          3*\[Xi]z)) + cw^2*(3*MH^4 + 12*MW^4 - 8*MT^4*nc + 
        MH^2*(2*MT^2*nc + MW^2*(-12 + \[Xi]w - 3*\[Xi]w^2 + 
            sw^2*(9 + 2*\[Xi]A - 2*\[Xi]w + 3*\[Xi]w^2)) + MZ^2*\[Xi]z)) + 
      MW^2*(-(MH^2*sw^4*(3 + \[Xi]z)) + 2*MZ^2*(3 + \[Xi]z^2))))/
    (128*cw^2*e*MH^2*MW^4*Pi^2*sw^4) - 
   (e*EL^4*(-2*cw*MW*MZ^3*(12 + Pi^2)*\[Xi]z^2 + 
      cw^2*(12*MW^4*(4 + Pi^2) - 8*MT^4*nc*(12 + Pi^2) + 3*MH^4*(15 + Pi^2) + 
        MH^2*(2*MT^2*nc*(3 + Pi^2) + MW^2*(Pi^2*(-12 + \[Xi]w - 3*\[Xi]w^2 + 
              sw^2*(9 + 2*\[Xi]A - 2*\[Xi]w + 3*\[Xi]w^2)) + 
            3*(-16 + 7*\[Xi]w - 9*\[Xi]w^2 + sw^2*(27 + 2*\[Xi]A - 
                14*\[Xi]w + 9*\[Xi]w^2))) + MZ^2*(21 + Pi^2)*\[Xi]z)) + 
      cw^4*MH^2*(MZ^2*(87 + 27*\[Xi]w + Pi^2*(3 + 3*\[Xi]w - 2*\[Xi]z) - 
          42*\[Xi]z) + MW^2*(Pi^2*(12 - 2*\[Xi]w + 3*\[Xi]w^2 + 3*\[Xi]z) + 
          3*(36 - 14*\[Xi]w + 9*\[Xi]w^2 + 9*\[Xi]z))) + 
      MW^2*(-(MH^2*sw^4*(Pi^2*(3 + \[Xi]z) + 3*(9 + 7*\[Xi]z))) + 
        2*MZ^2*(12*(1 + \[Xi]z^2) + Pi^2*(3 + \[Xi]z^2)))))/
    (1536*cw^2*MH^2*MW^4*Pi^2*sw^4) + 
   (3*e*EL^4*MH^2*(MH^2 - 2*MW^2)*ln[MH]^2)/(64*MW^4*(-MH^2 + MW^2)*Pi^2*
     sw^4) - (e*EL^4*MT^2*(MH^2 - 4*MT^2)*nc*ln[MT]^2)/
    (32*MH^2*MW^4*Pi^2*sw^4) - 
   (e*EL^4*(-2*cw*MW*MZ^3*\[Xi]z^2 + cw^4*MH^2*
       (MZ^2*(3 + 3*\[Xi]w - 2*\[Xi]z) + MW^2*(12 - 2*\[Xi]w + 3*\[Xi]w^2 + 
          3*\[Xi]z)) + cw^2*(3*MH^4 + 12*MW^4 - 8*MT^4*nc + 
        MH^2*(2*MT^2*nc + MW^2*(-12 + \[Xi]w - 3*\[Xi]w^2 + 
            sw^2*(9 + 2*\[Xi]A - 2*\[Xi]w + 3*\[Xi]w^2)) + MZ^2*\[Xi]z)) + 
      MW^2*(-(MH^2*sw^4*(3 + \[Xi]z)) + 2*MZ^2*(3 + \[Xi]z^2)))*ln[mu]^2)/
    (64*cw^2*MH^2*MW^4*Pi^2*sw^4) + 
   ln[MH]*((3*EL^4*MH^2*(MH^2 - 2*MW^2))/(64*MW^4*(MH^2 - MW^2)*Pi^2*sw^4) + 
     (e*EL^4*MH^2*(-7*MH^2 + 12*MW^2))/(128*MW^4*(-MH^2 + MW^2)*Pi^2*sw^4) + 
     (3*e*EL^4*MH^2*(MH^2 - 2*MW^2)*ln[mu])/(32*MW^4*(MH^2 - MW^2)*Pi^2*
       sw^4)) + ln[MT]*((e*EL^4*MT^2*(MH^2 - 8*MT^2)*nc)/
      (64*MH^2*MW^4*Pi^2*sw^4) + (EL^4*MT^2*(MH^2 - 4*MT^2)*nc)/
      (32*MH^2*MW^4*Pi^2*sw^4) + (e*EL^4*MT^2*(MH^2 - 4*MT^2)*nc*ln[mu])/
      (16*MH^2*MW^4*Pi^2*sw^4)) + 
   (e*EL^4*(-12/(MH^2*sw^4) + \[Xi]w^2/(sw^4*(MH^2 - MW^2*\[Xi]w)) - 
      (MH^2*(3 + \[Xi]w^2))/((MH^2 - MW^2)*sw^4*(MH^2 - MW^2*\[Xi]w)) + 
      (3*(3 + \[Xi]w^2) - sw^2*(9 + 2*\[Xi]A - 2*\[Xi]w + 3*\[Xi]w^2))/
       (MW^2*sw^4) - (3*cw^2*MW^4*\[Xi]w*(4 + \[Xi]w^2 + \[Xi]z))/
       ((MW^2 - MZ^2)*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
      \[Xi]w^2/(sw^4*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
      (2*cw^2*\[Xi]w^2)/(sw^4*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
      (15*cw^2*MZ^4*\[Xi]z)/((-MW^2 + MZ^2)*sw^4*(MZ^2 - MW^2*\[Xi]w)*
        (-MW^2 + MZ^2*\[Xi]z)) + (3*cw^2*MZ^4*\[Xi]w^3*\[Xi]z)/
       ((-MW^2 + MZ^2)*sw^4*(MZ^2 - MW^2*\[Xi]w)*(-MW^2 + MZ^2*\[Xi]z)) - 
      (4*MZ^2*\[Xi]w*\[Xi]z)/(cw^2*(MZ^2 - MW^2*\[Xi]w)*
        (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
      (MW^2*((\[Xi]w^2*(3 + \[Xi]z))/(cw^2*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - 
         ((\[Xi]w*(3 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w))/((MH^2 - MW^2)*
             (MH^2 - MW^2*\[Xi]w)) + (3*cw^2*MZ^2*(4 + \[Xi]z + 
              5*\[Xi]w*\[Xi]z + \[Xi]w^3*(1 + \[Xi]z)))/((MW^2 - MZ^2)*
             (MW^2 - MZ^2*\[Xi]z)))/sw^4))/(MZ^2 - MW^2*\[Xi]w))*ln[MW]^2)/
    (64*Pi^2) + (e*EL^4*MZ^2*(cw^2*MH^2*MZ^2*(MW^2 - MZ^2)*
       (-MZ^2 + MW^2*\[Xi]w)*\[Xi]z^2*(MW^2 - MZ^2*\[Xi]z) + 
      2*cw*MW*MZ*(MW^2 - MZ^2)*(-MZ^2 + MW^2*\[Xi]w)*\[Xi]z^2*
       (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z) - 
      MW^2*(MW^2 - MZ^2)*(MW^2 - MZ^2*\[Xi]z)*
       (2*MW^4*\[Xi]w^2*(3 + \[Xi]z^2) - MW^2*\[Xi]w*(3 + \[Xi]z^2)*
         (-(MH^2*sw^4) + 2*MZ^2*(1 + \[Xi]z)) + MZ^2*\[Xi]z*
         (-(MH^2*sw^4*(3 + \[Xi]z)) + 2*MZ^2*(3 + \[Xi]z^2))) + 
      cw^4*MH^2*(MZ^8*\[Xi]z^2*(-3 - 3*\[Xi]w + 2*\[Xi]z) + 
        3*MW^8*\[Xi]w^2*(3 + \[Xi]z^2) + MW^2*MZ^6*\[Xi]z*
         (3 + 3*\[Xi]w^2 - 11*\[Xi]z - 5*\[Xi]z^2 + 
          \[Xi]w*(6 + 6*\[Xi]z - 2*\[Xi]z^2)) - MW^6*MZ^2*\[Xi]w*
         (9 + 9*\[Xi]z + 5*\[Xi]z^2 + 3*\[Xi]z^3 + 
          3*\[Xi]w*(-2 + 3*\[Xi]z + \[Xi]z^2)) + 
        MW^4*MZ^4*(-3*\[Xi]w^2*(1 + 2*\[Xi]z) + \[Xi]z*(9 + 2*\[Xi]z + 
            3*\[Xi]z^2) + \[Xi]w*(-3 + 3*\[Xi]z + 14*\[Xi]z^2 + 
            5*\[Xi]z^3))))*ln[MZ]^2)/(64*cw^2*MH^2*MW^4*(MW^2 - MZ^2)*Pi^2*
     sw^4*(-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
   ((e*EL^4*(cw^2*(MZ^2 - MW^2*\[Xi]w)*(MW^2*\[Xi]w*(\[Xi]w*(-3 + 5*\[Xi]w) + 
            sw^2*(5 + 3*\[Xi]A + 6*\[Xi]w - 5*\[Xi]w^2)) - 
          MZ^2*(5*\[Xi]w^2 + sw^2*(5 + 3*\[Xi]A + 6*\[Xi]w - 5*\[Xi]w^2))*
           \[Xi]z) + MW^2*sw^4*\[Xi]w*(8*MZ^2*\[Xi]z - 
          MW^2*\[Xi]w*(5 + 3*\[Xi]z)) + cw^4*MW^2*\[Xi]w^2*
         (MW^2*\[Xi]w*(-6 + 5*\[Xi]w) + MZ^2*(6 - 5*\[Xi]w*\[Xi]z))))/
      (256*cw^2*MW^2*Pi^2*sw^4*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + 
        MZ^2*\[Xi]z)) + (EL^4*(cw^2*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w*(\[Xi]w - 3*\[Xi]w^2 - sw^2*(3 + \[Xi]A + 2*\[Xi]w - 
              3*\[Xi]w^2)) + MZ^2*(3*\[Xi]w^2 + sw^2*(3 + \[Xi]A + 2*\[Xi]w - 
              3*\[Xi]w^2))*\[Xi]z) - MW^2*sw^4*\[Xi]w*(-4*MZ^2*\[Xi]z + 
          MW^2*\[Xi]w*(3 + \[Xi]z)) + cw^4*MW^2*\[Xi]w^2*
         (MW^2*\[Xi]w*(-2 + 3*\[Xi]w) + MZ^2*(2 - 3*\[Xi]w*\[Xi]z))))/
      (128*cw^2*MW^2*Pi^2*sw^4*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + 
        MZ^2*\[Xi]z)))*ln[\[Xi]w] + 
   (e*EL^4*(-(cw^2*(-MZ^2 + MW^2*\[Xi]w)*
        (MW^2*\[Xi]w*(\[Xi]w - 3*\[Xi]w^2 - sw^2*(3 + \[Xi]A + 2*\[Xi]w - 
             3*\[Xi]w^2)) + MZ^2*(3*\[Xi]w^2 + sw^2*(3 + \[Xi]A + 2*\[Xi]w - 
             3*\[Xi]w^2))*\[Xi]z)) + MW^2*sw^4*\[Xi]w*
       (-4*MZ^2*\[Xi]z + MW^2*\[Xi]w*(3 + \[Xi]z)) + 
      cw^4*MW^2*\[Xi]w^2*(MW^2*(2 - 3*\[Xi]w)*\[Xi]w + 
        MZ^2*(-2 + 3*\[Xi]w*\[Xi]z)))*ln[\[Xi]w]^2)/
    (256*cw^2*MW^2*Pi^2*sw^4*(MZ^2 - MW^2*\[Xi]w)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
   ln[MW]*((EL^4*(12/(MH^2*sw^4) + \[Xi]w^2/(sw^4*(-MH^2 + MW^2*\[Xi]w)) + 
        (MH^2*(3 + \[Xi]w^2))/((MH^2 - MW^2)*sw^4*(MH^2 - MW^2*\[Xi]w)) + 
        (-3*(3 + \[Xi]w^2) + sw^2*(9 + 2*\[Xi]A - 2*\[Xi]w + 3*\[Xi]w^2))/
         (MW^2*sw^4) + (15*cw^2*MZ^4*\[Xi]z)/((MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
        (3*cw^2*MZ^4*\[Xi]w^3*\[Xi]z)/((MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
        (3*cw^2*MW^4*\[Xi]w*(4 + \[Xi]w^2 + \[Xi]z))/((MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
        \[Xi]w^2/(sw^4*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (2*cw^2*\[Xi]w^2)/
         (sw^4*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (4*MZ^2*\[Xi]w*\[Xi]z)/
         (cw^2*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
        (MW^2*((\[Xi]w^2*(3 + \[Xi]z))/(cw^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
           ((\[Xi]w*(3 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w))/((MH^2 - MW^2)*(
                MH^2 - MW^2*\[Xi]w)) + (3*cw^2*MZ^2*(4 + \[Xi]z + 
                5*\[Xi]w*\[Xi]z + \[Xi]w^3*(1 + \[Xi]z)))/((MW^2 - MZ^2)*(
                MW^2 - MZ^2*\[Xi]z)))/sw^4))/(MZ^2 - MW^2*\[Xi]w)))/
      (64*Pi^2) + (e*EL^4*(8/(MH^2*sw^4) - (3*\[Xi]w^2)/
         (sw^4*(MH^2 - MW^2*\[Xi]w)) + (MH^2*(5 + 3*\[Xi]w^2))/
         ((MH^2 - MW^2)*sw^4*(MH^2 - MW^2*\[Xi]w)) + 
        (-3 - 5*\[Xi]w^2 + sw^2*(15 + 2*\[Xi]A - 6*\[Xi]w + 5*\[Xi]w^2))/
         (MW^2*sw^4) + (25*cw^2*MZ^4*\[Xi]z)/((MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
        (5*cw^2*MZ^4*\[Xi]w^3*\[Xi]z)/((MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
        (5*cw^2*MW^4*\[Xi]w*(4 + \[Xi]w^2 + \[Xi]z))/((MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
        (3*\[Xi]w^2)/(sw^4*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) - 
        (6*cw^2*\[Xi]w^2)/(sw^4*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
        (8*MZ^2*\[Xi]w*\[Xi]z)/(cw^2*(MZ^2 - MW^2*\[Xi]w)*
          (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
        (MW^2*((\[Xi]w^2*(5 + 3*\[Xi]z))/(cw^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
           ((\[Xi]w*(5 + 3*\[Xi]w)*(-MZ^2 + MW^2*\[Xi]w))/((MH^2 - MW^2)*(
                MH^2 - MW^2*\[Xi]w)) + (5*cw^2*MZ^2*(4 + \[Xi]z + 
                5*\[Xi]w*\[Xi]z + \[Xi]w^3*(1 + \[Xi]z)))/((MW^2 - MZ^2)*(
                MW^2 - MZ^2*\[Xi]z)))/sw^4))/(MZ^2 - MW^2*\[Xi]w)))/
      (128*Pi^2) + (e*EL^4*(-(cw^2*(-MZ^2 + MW^2*\[Xi]w)*
          (MW^2*\[Xi]w*(\[Xi]w - 3*\[Xi]w^2 - sw^2*(3 + \[Xi]A + 2*\[Xi]w - 3*
                \[Xi]w^2)) + MZ^2*(3*\[Xi]w^2 + sw^2*(3 + \[Xi]A + 2*\[Xi]w - 
               3*\[Xi]w^2))*\[Xi]z)) + MW^2*sw^4*\[Xi]w*
         (-4*MZ^2*\[Xi]z + MW^2*\[Xi]w*(3 + \[Xi]z)) + 
        cw^4*MW^2*\[Xi]w^2*(MW^2*(2 - 3*\[Xi]w)*\[Xi]w + 
          MZ^2*(-2 + 3*\[Xi]w*\[Xi]z)))*ln[\[Xi]w])/(64*cw^2*MW^2*Pi^2*sw^4*
       (MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z))) + 
   ((EL^4*MZ^2*\[Xi]z^2*(MW^2*(MH^2*sw^4 + 2*MW^2*\[Xi]w - 2*MZ^2*\[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z) - 2*cw*MW*MZ*(MW^2 - MZ^2*\[Xi]z)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z) + cw^2*MH^2*MZ^2*(-MW^2 + MZ^2*\[Xi]z) + 
        cw^4*MH^2*(-3*MW^4*\[Xi]w - 2*MZ^4*\[Xi]z + 
          MW^2*MZ^2*(2 + 3*\[Xi]z))))/(128*cw^2*MH^2*MW^4*Pi^2*sw^4*
       (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
     (e*EL^4*MZ^2*\[Xi]z^2*(MW^2*(3*MH^2*sw^4 + 4*MW^2*\[Xi]w - 
          4*MZ^2*\[Xi]z)*(MW^2 - MZ^2*\[Xi]z) - 4*cw*MW*MZ*
         (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z) + 
        3*cw^2*MH^2*MZ^2*(-MW^2 + MZ^2*\[Xi]z) + 
        cw^4*MH^2*(-5*MW^4*\[Xi]w - 6*MZ^4*\[Xi]z + 
          MW^2*MZ^2*(6 + 5*\[Xi]z))))/(256*cw^2*MH^2*MW^4*Pi^2*sw^4*
       (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)))*ln[\[Xi]z] + 
   (e*EL^4*MZ^2*\[Xi]z^2*(cw^2*MH^2*MZ^2*(MW^2 - MZ^2*\[Xi]z) - 
      MW^2*(MH^2*sw^4 + 2*MW^2*\[Xi]w - 2*MZ^2*\[Xi]z)*(MW^2 - MZ^2*\[Xi]z) + 
      2*cw*MW*MZ*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z) + 
      cw^4*MH^2*(3*MW^4*\[Xi]w + 2*MZ^4*\[Xi]z - MW^2*MZ^2*(2 + 3*\[Xi]z)))*
     ln[\[Xi]z]^2)/(256*cw^2*MH^2*MW^4*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
   ln[MZ]*((e*EL^4*MZ^2*(-4*cw*MW*MZ*(MW^2 - MZ^2)*(-MZ^2 + MW^2*\[Xi]w)*
         \[Xi]z^2*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z) + 
        3*cw^2*MH^2*MZ^2*(-MW^2 + MZ^2)*(MZ^2 - MW^2*\[Xi]w)*\[Xi]z^2*
         (-MW^2 + MZ^2*\[Xi]z) + MW^2*(MW^2 - MZ^2)*(MW^2 - MZ^2*\[Xi]z)*
         (-(MH^2*MZ^2*sw^4*\[Xi]z*(5 + 3*\[Xi]z)) + 4*MW^4*\[Xi]w^2*
           (1 + \[Xi]z^2) + 4*MZ^4*\[Xi]z*(1 + \[Xi]z^2) + 
          MH^2*MW^2*sw^4*\[Xi]w*(5 + 3*\[Xi]z^2) - 4*MW^2*MZ^2*\[Xi]w*
           (1 + \[Xi]z + \[Xi]z^2 + \[Xi]z^3)) + 
        cw^4*MH^2*(MZ^8*(17 + 5*\[Xi]w - 6*\[Xi]z)*\[Xi]z^2 - 
          MW^8*\[Xi]w^2*(3 + 5*\[Xi]z^2) + MW^6*MZ^2*\[Xi]w*
           (3 + 3*\[Xi]z + 11*\[Xi]z^2 + 5*\[Xi]z^3 + 
            \[Xi]w*(-22 + 3*\[Xi]z + 5*\[Xi]z^2)) + MW^2*MZ^6*\[Xi]z*
           (-17 - 5*\[Xi]w^2 + 9*\[Xi]z + 11*\[Xi]z^2 + 
            \[Xi]w*(-22 - 22*\[Xi]z + 6*\[Xi]z^2)) + 
          MW^4*MZ^4*(\[Xi]w^2*(5 + 22*\[Xi]z) - \[Xi]z*(3 + 6*\[Xi]z + 
              5*\[Xi]z^2) + \[Xi]w*(17 + 19*\[Xi]z - 14*\[Xi]z^2 - 
              11*\[Xi]z^3)))))/(128*cw^2*MH^2*MW^4*(MW^2 - MZ^2)*Pi^2*sw^4*
       (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - 
        MZ^2*\[Xi]z)) - (EL^4*MZ^2*(cw^2*MH^2*MZ^2*(MW^2 - MZ^2)*
         (-MZ^2 + MW^2*\[Xi]w)*\[Xi]z^2*(MW^2 - MZ^2*\[Xi]z) + 
        2*cw*MW*MZ*(MW^2 - MZ^2)*(-MZ^2 + MW^2*\[Xi]w)*\[Xi]z^2*
         (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z) - 
        MW^2*(MW^2 - MZ^2)*(MW^2 - MZ^2*\[Xi]z)*
         (2*MW^4*\[Xi]w^2*(3 + \[Xi]z^2) - MW^2*\[Xi]w*(3 + \[Xi]z^2)*
           (-(MH^2*sw^4) + 2*MZ^2*(1 + \[Xi]z)) + MZ^2*\[Xi]z*
           (-(MH^2*sw^4*(3 + \[Xi]z)) + 2*MZ^2*(3 + \[Xi]z^2))) + 
        cw^4*MH^2*(MZ^8*\[Xi]z^2*(-3 - 3*\[Xi]w + 2*\[Xi]z) + 
          3*MW^8*\[Xi]w^2*(3 + \[Xi]z^2) + MW^2*MZ^6*\[Xi]z*
           (3 + 3*\[Xi]w^2 - 11*\[Xi]z - 5*\[Xi]z^2 + 
            \[Xi]w*(6 + 6*\[Xi]z - 2*\[Xi]z^2)) - MW^6*MZ^2*\[Xi]w*
           (9 + 9*\[Xi]z + 5*\[Xi]z^2 + 3*\[Xi]z^3 + 3*\[Xi]w*
             (-2 + 3*\[Xi]z + \[Xi]z^2)) + MW^4*MZ^4*
           (-3*\[Xi]w^2*(1 + 2*\[Xi]z) + \[Xi]z*(9 + 2*\[Xi]z + 3*\[Xi]z^2) + 
            \[Xi]w*(-3 + 3*\[Xi]z + 14*\[Xi]z^2 + 5*\[Xi]z^3)))))/
      (64*cw^2*MH^2*MW^4*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
     (e*EL^4*MZ^2*\[Xi]z^2*(cw^2*MH^2*MZ^2*(MW^2 - MZ^2*\[Xi]z) - 
        MW^2*(MH^2*sw^4 + 2*MW^2*\[Xi]w - 2*MZ^2*\[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z) + 2*cw*MW*MZ*(MW^2 - MZ^2*\[Xi]z)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z) + cw^4*MH^2*(3*MW^4*\[Xi]w + 
          2*MZ^4*\[Xi]z - MW^2*MZ^2*(2 + 3*\[Xi]z)))*ln[\[Xi]z])/
      (64*cw^2*MH^2*MW^4*Pi^2*sw^4*(MW^2 - MZ^2*\[Xi]z)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z))) + 
   ln[mu]*(-1/128*(e*EL^4*(-4*cw*MW*MZ^3*\[Xi]z^2 + 
         cw^4*MH^2*(MZ^2*(17 + 5*\[Xi]w - 6*\[Xi]z) + 
           MW^2*(20 - 6*\[Xi]w + 5*\[Xi]w^2 + 5*\[Xi]z)) + 
         cw^2*(7*MH^4 + 8*(MW^4 - 2*MT^4*nc) + MH^2*(2*MT^2*nc + 
             MW^2*(-8 + 3*\[Xi]w - 5*\[Xi]w^2 + sw^2*(15 + 2*\[Xi]A - 
                 6*\[Xi]w + 5*\[Xi]w^2)) + 3*MZ^2*\[Xi]z)) + 
         MW^2*(-(MH^2*sw^4*(5 + 3*\[Xi]z)) + 4*MZ^2*(1 + \[Xi]z^2))))/
       (cw^2*MH^2*MW^4*Pi^2*sw^4) - 
     (EL^4*(-2*cw*MW*MZ^3*\[Xi]z^2 + cw^4*MH^2*
         (MZ^2*(3 + 3*\[Xi]w - 2*\[Xi]z) + MW^2*(12 - 2*\[Xi]w + 3*\[Xi]w^2 + 
            3*\[Xi]z)) + cw^2*(3*MH^4 + 12*MW^4 - 8*MT^4*nc + 
          MH^2*(2*MT^2*nc + MW^2*(-12 + \[Xi]w - 3*\[Xi]w^2 + 
              sw^2*(9 + 2*\[Xi]A - 2*\[Xi]w + 3*\[Xi]w^2)) + MZ^2*\[Xi]z)) + 
        MW^2*(-(MH^2*sw^4*(3 + \[Xi]z)) + 2*MZ^2*(3 + \[Xi]z^2))))/
      (64*cw^2*MH^2*MW^4*Pi^2*sw^4) + 
     (e*EL^4*(12/(MH^2*sw^4) + \[Xi]w^2/(sw^4*(-MH^2 + MW^2*\[Xi]w)) + 
        (MH^2*(3 + \[Xi]w^2))/((MH^2 - MW^2)*sw^4*(MH^2 - MW^2*\[Xi]w)) + 
        (-3*(3 + \[Xi]w^2) + sw^2*(9 + 2*\[Xi]A - 2*\[Xi]w + 3*\[Xi]w^2))/
         (MW^2*sw^4) + (15*cw^2*MZ^4*\[Xi]z)/((MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
        (3*cw^2*MZ^4*\[Xi]w^3*\[Xi]z)/((MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
        (3*cw^2*MW^4*\[Xi]w*(4 + \[Xi]w^2 + \[Xi]z))/((MW^2 - MZ^2)*sw^4*
          (-MZ^2 + MW^2*\[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
        \[Xi]w^2/(sw^4*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (2*cw^2*\[Xi]w^2)/
         (sw^4*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (4*MZ^2*\[Xi]w*\[Xi]z)/
         (cw^2*(MZ^2 - MW^2*\[Xi]w)*(-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
        (MW^2*((\[Xi]w^2*(3 + \[Xi]z))/(cw^2*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
           ((\[Xi]w*(3 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w))/((MH^2 - MW^2)*(
                MH^2 - MW^2*\[Xi]w)) + (3*cw^2*MZ^2*(4 + \[Xi]z + 
                5*\[Xi]w*\[Xi]z + \[Xi]w^3*(1 + \[Xi]z)))/((MW^2 - MZ^2)*(
                MW^2 - MZ^2*\[Xi]z)))/sw^4))/(MZ^2 - MW^2*\[Xi]w))*ln[MW])/
      (32*Pi^2) - (e*EL^4*MZ^2*(cw^2*MH^2*MZ^2*(MW^2 - MZ^2)*
         (-MZ^2 + MW^2*\[Xi]w)*\[Xi]z^2*(MW^2 - MZ^2*\[Xi]z) + 
        2*cw*MW*MZ*(MW^2 - MZ^2)*(-MZ^2 + MW^2*\[Xi]w)*\[Xi]z^2*
         (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z) - 
        MW^2*(MW^2 - MZ^2)*(MW^2 - MZ^2*\[Xi]z)*
         (2*MW^4*\[Xi]w^2*(3 + \[Xi]z^2) - MW^2*\[Xi]w*(3 + \[Xi]z^2)*
           (-(MH^2*sw^4) + 2*MZ^2*(1 + \[Xi]z)) + MZ^2*\[Xi]z*
           (-(MH^2*sw^4*(3 + \[Xi]z)) + 2*MZ^2*(3 + \[Xi]z^2))) + 
        cw^4*MH^2*(MZ^8*\[Xi]z^2*(-3 - 3*\[Xi]w + 2*\[Xi]z) + 
          3*MW^8*\[Xi]w^2*(3 + \[Xi]z^2) + MW^2*MZ^6*\[Xi]z*
           (3 + 3*\[Xi]w^2 - 11*\[Xi]z - 5*\[Xi]z^2 + 
            \[Xi]w*(6 + 6*\[Xi]z - 2*\[Xi]z^2)) - MW^6*MZ^2*\[Xi]w*
           (9 + 9*\[Xi]z + 5*\[Xi]z^2 + 3*\[Xi]z^3 + 3*\[Xi]w*
             (-2 + 3*\[Xi]z + \[Xi]z^2)) + MW^4*MZ^4*
           (-3*\[Xi]w^2*(1 + 2*\[Xi]z) + \[Xi]z*(9 + 2*\[Xi]z + 3*\[Xi]z^2) + 
            \[Xi]w*(-3 + 3*\[Xi]z + 14*\[Xi]z^2 + 5*\[Xi]z^3))))*ln[MZ])/
      (32*cw^2*MH^2*MW^4*(MW^2 - MZ^2)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z)) + 
     (e*EL^4*(cw^2*(-MZ^2 + MW^2*\[Xi]w)*(MW^2*\[Xi]w*(\[Xi]w - 3*\[Xi]w^2 - 
            sw^2*(3 + \[Xi]A + 2*\[Xi]w - 3*\[Xi]w^2)) + 
          MZ^2*(3*\[Xi]w^2 + sw^2*(3 + \[Xi]A + 2*\[Xi]w - 3*\[Xi]w^2))*
           \[Xi]z) - MW^2*sw^4*\[Xi]w*(-4*MZ^2*\[Xi]z + 
          MW^2*\[Xi]w*(3 + \[Xi]z)) + cw^4*MW^2*\[Xi]w^2*
         (MW^2*\[Xi]w*(-2 + 3*\[Xi]w) + MZ^2*(2 - 3*\[Xi]w*\[Xi]z)))*
       ln[\[Xi]w])/(64*cw^2*MW^2*Pi^2*sw^4*(MZ^2 - MW^2*\[Xi]w)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
     (e*EL^4*MZ^2*\[Xi]z^2*(MW^2*(MH^2*sw^4 + 2*MW^2*\[Xi]w - 2*MZ^2*\[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z) - 2*cw*MW*MZ*(MW^2 - MZ^2*\[Xi]z)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z) + cw^2*MH^2*MZ^2*(-MW^2 + MZ^2*\[Xi]z) + 
        cw^4*MH^2*(-3*MW^4*\[Xi]w - 2*MZ^4*\[Xi]z + 
          MW^2*MZ^2*(2 + 3*\[Xi]z)))*ln[\[Xi]z])/(64*cw^2*MH^2*MW^4*Pi^2*sw^4*
       (MW^2 - MZ^2*\[Xi]z)*(MW^2*\[Xi]w - MZ^2*\[Xi]z))))
