(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*((el^6/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) + 
     el^6/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     el^6/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
     (5*el^6*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) - 
     (5*el^6*\[Xi]A)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (5*el^6*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MW] + 
   ((el^6*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) + 
     (el^6*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (el^6*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MW]^2 + 
   (-1/512*el^6/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4) - 
     el^6/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     el^6/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
     (5*el^6*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) + 
     (5*el^6*\[Xi]A)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (5*el^6*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ] + 
   (-1/512*(el^6*\[Xi]A)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4) - 
     (el^6*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ]^2 + 
   Log[mu]*((-1/256*(el^6*\[Xi]A)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4) - 
       (el^6*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (el^6*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MW] + 
     ((el^6*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) + 
       (el^6*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       (el^6*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ]) + 
   ((-1/1024*(el^6*\[Xi]A)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4) - 
       (el^6*\[Xi]A)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (el^6*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MW] + 
     ((el^6*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) + 
       (el^6*\[Xi]A)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       (el^6*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2))*Log[MZ])/e) + 
 Op*((el^6*MZ^2)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (el^6*MZ^2)/(32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
     (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
   (el^6*MZ^2)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A)/(4096*cw^2*(MW - MZ)*(MW + MZ)*
     Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
   (el^6*MZ^2*\[Xi]A)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*
     (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A)/
    (16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A)/(32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*
     sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
   (5*el^6*MZ^2*\[Xi]A)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
     (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A)/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]w)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]w)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]w)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/(8192*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
   (5*el^6*MZ^2*\[Xi]A*\[Xi]w)/(16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
     (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/(8192*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^2*sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
   (el^6*MZ^2*\[Xi]z)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]z)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]z)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/(8192*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
   (5*el^6*MZ^2*\[Xi]A*\[Xi]z)/(16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
     (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/(8192*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^2*sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
   (el^6*MZ^2*\[Xi]w*\[Xi]z)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]w*\[Xi]z)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]w*\[Xi]z)/(8192*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
   (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
     (-1 + \[Xi]z)) + (el^6*MW^2)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
   (el^6*MW^2)/(32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     sw^2*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
   (5*el^6*MW^2*\[Xi]A)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(8192*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^2*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
   (5*el^6*MW^2*\[Xi]A)/(16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
     (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/(8192*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^2*sw^2*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
   (el^6*MW^2*\[Xi]w)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w)/(32768*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
   (el^6*MW^2*\[Xi]w)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
   (el^6*MW^2*\[Xi]A*\[Xi]w)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*
     (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w)/
    (16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^2*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z)/(8192*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
   (el^6*MW^2*\[Xi]z)/(32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z)/(8192*cw^2*(MW - MZ)*
     (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
   (5*el^6*MW^2*\[Xi]A*\[Xi]z)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
     (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
   (5*el^6*MW^2*\[Xi]A*\[Xi]z)/(16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
     (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]z)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^2*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w*\[Xi]z)/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
   (el^6*MW^2*\[Xi]w*\[Xi]z)/(32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
     (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w*\[Xi]z)/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
   (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*
     (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (32768*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^4*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
    (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^2*sw^2*(-1 + \[Xi]w)*
     (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^2)/
    (8192*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^2)/
    (32768*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^2)/
    (8192*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
    (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
    (8192*cw^2*Pi^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
    (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
    (32768*cw^2*Pi^2*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
    (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
    (8192*cw^2*Pi^2*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^3)/
    (8192*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^3)/
    (32768*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^3)/
    (8192*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
    (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
    (8192*cw^2*Pi^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
    (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
    (32768*cw^2*Pi^2*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
    (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
    (8192*cw^2*Pi^2*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^2*\[Xi]z)/
    (8192*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^2*\[Xi]z)/
    (32768*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^2*\[Xi]z)/
    (8192*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
    (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
    (8192*cw^2*Pi^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
    (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
    (32768*cw^2*Pi^2*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
    (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
    (8192*cw^2*Pi^2*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^3*\[Xi]z)/
    (8192*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^3*\[Xi]z)/
    (32768*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^3*\[Xi]z)/
    (8192*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
    (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
    (8192*cw^2*Pi^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
    (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
    (32768*cw^2*Pi^2*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
    (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
    (8192*cw^2*Pi^2*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
     (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^2)/
    (8192*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^2)/
    (32768*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]z^2)/
    (8192*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
    (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
    (8192*cw^2*Pi^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
    (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
    (32768*cw^2*Pi^2*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
    (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
    (8192*cw^2*Pi^2*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]w*\[Xi]z^2)/
    (8192*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]w*\[Xi]z^2)/
    (32768*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]w*\[Xi]z^2)/
    (8192*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
    (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
    (8192*cw^2*Pi^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
    (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
    (32768*cw^2*Pi^2*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
    (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
    (8192*cw^2*Pi^2*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]z^3)/
    (8192*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]z^3)/
    (32768*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^3)/
    (8192*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
    (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
    (8192*cw^2*Pi^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
    (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
    (32768*cw^2*Pi^2*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
    (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
    (8192*cw^2*Pi^2*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]w*\[Xi]z^3)/
    (8192*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]w*\[Xi]z^3)/
    (32768*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]w*\[Xi]z^3)/
    (8192*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
    (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
    (8192*cw^2*Pi^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
    (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
    (32768*cw^2*Pi^2*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
    (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
    (8192*cw^2*Pi^2*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
     (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
   ((el^6*MZ^2*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/(2048*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]A*\[Xi]w)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/(2048*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]A*\[Xi]z)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MW^2*\[Xi]A)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[mu]^2 + 
   (-1/128*(el^6*\[Xi]A)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4) - 
     (el^6*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
     (el^6*MZ^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A)/(512*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - 
     (el^6*MZ^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A)/(512*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/(128*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(128*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]A*\[Xi]z)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z)/(64*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]z)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z)/(64*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]A*\[Xi]z)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z)/(256*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]z)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)))*Log[MW]^2 + 
   ((el^6*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) + 
     (el^6*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (el^6*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
     (el^6*MZ^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A)/(512*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + 
     (el^6*MZ^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A)/(512*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/(512*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (el^6*MZ^2*\[Xi]A*\[Xi]w)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/(512*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (el^6*MZ^2*\[Xi]A*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (el^6*MW^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/(128*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]z)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z)/(256*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]z)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]A*\[Xi]z)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z)/(64*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]z)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z)/(64*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[MZ]^2 + 
   ((3*el^6*MW^2*\[Xi]w)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2*\[Xi]w)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MW^2*\[Xi]w)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2*\[Xi]w)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MW^2*\[Xi]w)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2*\[Xi]w)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MW^2*\[Xi]w^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2*\[Xi]w^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MW^2*\[Xi]w^2)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2*\[Xi]w^2)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MW^2*\[Xi]w^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2*\[Xi]w^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)))*Log[\[Xi]w] + 
   ((el^6*MW^2*\[Xi]A*\[Xi]w)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)))*Log[\[Xi]w]^2 + 
   Log[MW]*(-1/512*(el^6*\[Xi]A)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4) - 
     (el^6*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
     (el^6*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
     (a1mu*el^6*(1 - 4*sw^2 + 4*sw^4)*\[Xi]A)/(4096*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^4) + (3*el^6*MZ^2)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2)/(512*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - 
     (el^6*MZ^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A)/(512*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + 
     (el^6*MZ^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2*\[Xi]w)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2*\[Xi]w^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (5*el^6*MW^2*\[Xi]A)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A)/(8192*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
     (5*el^6*MW^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(128*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/(128*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (5*el^6*MW^2*\[Xi]A*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]z)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z)/(256*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (5*el^6*MW^2*\[Xi]z)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]A*\[Xi]z)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + 
     ((el^6*MW^2*\[Xi]A*\[Xi]w)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)))*Log[\[Xi]w]) + 
   ((el^6*MW^2*\[Xi]A*\[Xi]z)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]z^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]z^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[\[Xi]z] + 
   (-1/512*(el^6*MW^2*\[Xi]A*\[Xi]z)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
        (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MZ^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(1024*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MZ^2*\[Xi]z^2)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]A*\[Xi]z^2)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + 
     (el^6*MZ^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]z^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[\[Xi]z]^2 + 
   Log[mu]*((5*el^6*MZ^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (5*el^6*MZ^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]w)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w)/(2048*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z)/(2048*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (5*el^6*MW^2*\[Xi]A)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A)/(8192*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
     (5*el^6*MW^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]z)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
     ((el^6*\[Xi]A)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) + 
       (el^6*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       (el^6*\[Xi]A)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
       (el^6*MZ^2*\[Xi]A)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + 
       (el^6*MZ^2*\[Xi]A)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
         (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
       (el^6*MW^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(64*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
       (el^6*MW^2*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z)/(32*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
       (el^6*MW^2*\[Xi]z)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(32*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
       (el^6*MW^2*\[Xi]z^2)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (256*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (1024*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (256*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (256*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (1024*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (256*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (256*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (1024*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (256*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (256*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (1024*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (256*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z)/(128*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) - 
       (el^6*MW^2*\[Xi]z)/(32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
         (-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(128*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + 
       (el^6*MW^2*\[Xi]z^2)/(32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
         (-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)))*Log[MW] + 
     (-1/64*(el^6*\[Xi]A)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4) - 
       (el^6*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (el^6*\[Xi]A)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
       (el^6*MZ^2*\[Xi]A)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - 
       (el^6*MZ^2*\[Xi]A)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
         (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
       (el^6*MZ^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
       (el^6*MZ^2*\[Xi]A*\[Xi]w)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
       (el^6*MZ^2*\[Xi]A*\[Xi]z)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) - (el^6*MW^2*\[Xi]A)/(64*cw^2*(MW - MZ)*(MW + MZ)*
         Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(64*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
       (el^6*MW^2*\[Xi]z)/(32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z)/(128*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
       (el^6*MW^2*\[Xi]z)/(32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/(32*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
       (el^6*MW^2*\[Xi]z^2)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z)/(32*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) - 
       (el^6*MW^2*\[Xi]z)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
        (32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/(128*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) - 
       (el^6*MW^2*\[Xi]z^2)/(32*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
         (-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (256*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (1024*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (256*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (256*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (1024*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (256*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (256*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (1024*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (256*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (256*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (1024*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (256*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[MZ] + 
     (-1/128*(el^6*MW^2*\[Xi]A*\[Xi]w)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
          (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (512*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)))*Log[\[Xi]w] + 
     ((el^6*MW^2*\[Xi]A*\[Xi]z)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
       (el^6*MZ^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
       (el^6*MZ^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
       (el^6*MW^2*\[Xi]A*\[Xi]z^2)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) - 
       (el^6*MZ^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) - 
       (el^6*MZ^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[\[Xi]z]) + 
   ((el^6*MZ^2)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (el^6*MZ^2)/(16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (el^6*MZ^2)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A)/(8192*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (el^6*MZ^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]w)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]w)/(16384*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]w)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/(8192*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]A*\[Xi]w)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]z)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]z)/(16384*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]z)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/(8192*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]A*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]w*\[Xi]z)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]w*\[Xi]z)/(16384*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (el^6*MZ^2*\[Xi]w*\[Xi]z)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (el^6*MW^2)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2)/(16384*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]A)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w)/(4096*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]w)/(16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z)/(4096*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
     (el^6*MW^2*\[Xi]z)/(16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w*\[Xi]z)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w*\[Xi]z)/
      (16384*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w*\[Xi]z)/
      (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^2)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^2)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^2)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^3)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^3)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^3)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^2*\[Xi]z)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^2*\[Xi]z)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^2*\[Xi]z)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^3*\[Xi]z)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]w^3*\[Xi]z)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]w^3*\[Xi]z)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
       (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^2)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^2)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]z^2)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]w*\[Xi]z^2)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]w*\[Xi]z^2)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]w*\[Xi]z^2)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]z^3)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]z^3)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^3)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]w*\[Xi]z^3)/
      (4096*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]w*\[Xi]z^3)/
      (16384*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]w*\[Xi]z^3)/
      (4096*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
     ((el^6*MZ^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*
         Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
       (el^6*MZ^2*\[Xi]A*\[Xi]w)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/(1024*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
       (el^6*MZ^2*\[Xi]A*\[Xi]z)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/(1024*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
       (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
       (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
       (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MW^2*\[Xi]A)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(4096*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
       (el^6*MW^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
         (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[mu] + 
     ((el^6*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) + 
       (el^6*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
       (el^6*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
       (el^6*MZ^2*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + 
       (el^6*MZ^2*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
         (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) - 
       (el^6*MW^2*\[Xi]A)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]w)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
       (el^6*MW^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)))*Log[MW] + 
     (-1/256*(el^6*\[Xi]A)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4) - 
       (el^6*\[Xi]A)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) + 
       (el^6*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) + 
       (el^6*MZ^2*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - 
       (el^6*MZ^2*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
         (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A)/(1024*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
       (el^6*MZ^2*\[Xi]A)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/(1024*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
       (el^6*MZ^2*\[Xi]A*\[Xi]w)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/(1024*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
       (el^6*MZ^2*\[Xi]A*\[Xi]z)/(4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (4096*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-MZ^2 + MW^2*\[Xi]w)*
         (-1 + \[Xi]z)) - (el^6*MW^2*\[Xi]A)/(256*cw^2*(MW - MZ)*(MW + MZ)*
         Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
       (el^6*MW^2*\[Xi]A*\[Xi]z)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (1024*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (4096*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (1024*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[MZ] + 
     (-1/512*(el^6*MW^2*\[Xi]A*\[Xi]w)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
          (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
         (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2)/
        (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3)/
        (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^2*\[Xi]z)/
        (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (2048*cw^2*Pi^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]w^3*\[Xi]z)/
        (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)*
         (MW^2*\[Xi]w - MZ^2*\[Xi]z)))*Log[\[Xi]w] + 
     ((el^6*MW^2*\[Xi]A*\[Xi]z)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[\[Xi]z])/e + 
   Log[MZ]*((el^6*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4) + 
     (el^6*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4) - 
     (el^6*\[Xi]A)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2) - 
     (a1mu*el^6*(1 - 4*sw^2 + 4*sw^4)*\[Xi]A)/(4096*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^4) - (3*el^6*MZ^2)/(512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2)/(512*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^2*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) + 
     (el^6*MZ^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A)/(512*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*(-MZ^2 + MW^2*\[Xi]w)) - 
     (el^6*MZ^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2*\[Xi]w)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (3*el^6*MZ^2*\[Xi]w^2)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (3*el^6*MZ^2*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) + (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (el^6*MZ^2*\[Xi]A*\[Xi]w^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]w)*
       (-MZ^2 + MW^2*\[Xi]w)) - (5*el^6*MZ^2*\[Xi]A)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) - (5*el^6*MZ^2*\[Xi]A)/(8192*cw^2*(MW - MZ)*(MW + MZ)*
       Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (5*el^6*MZ^2*\[Xi]A)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w)/(8192*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]w)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z)/
      (2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-MZ^2 + MW^2*\[Xi]w)*
       (-1 + \[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z)/(8192*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       (-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(8192*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^4*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) + 
     (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z)/(2048*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
       sw^2*(-MZ^2 + MW^2*\[Xi]w)*(-1 + \[Xi]z)) - 
     (el^6*MW^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A)/(512*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]A)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z)/(256*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - 
     (5*el^6*MW^2*\[Xi]z)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
     (el^6*MW^2*\[Xi]A*\[Xi]z)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
      (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
      (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (MW^2 - MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z)/(256*cw^2*(MW - MZ)*
       (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) - 
     (5*el^6*MW^2*\[Xi]z)/(1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
       (-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (5*el^6*MW^2*\[Xi]z^2)/
      (1024*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) - (5*el^6*MW^2*\[Xi]z^2)/
      (256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
       (-MW^2 + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (8192*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (5*el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
      (2048*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
       (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + 
     (-1/128*(el^6*MW^2*\[Xi]A*\[Xi]z)/(cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
          (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
       (el^6*MZ^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
       (el^6*MZ^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) + 
       (el^6*MW^2*\[Xi]A*\[Xi]z^2)/(128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*
         (-1 + \[Xi]z)*(MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]A*\[Xi]z^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (128*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (MW^2 - MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + 
       (el^6*MZ^2*\[Xi]z^2)/(64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MW^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*
         (MW + MZ)*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + 
       (el^6*MZ^2*\[Xi]z^2)/(256*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^4*
         (-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)) + (el^6*MW^2*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]z^2)/
        (64*cw^2*(MW - MZ)*(MW + MZ)*Pi^4*sw^2*(-1 + \[Xi]z)*
         (-MW^2 + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^2)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^2)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]z^3)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (512*cw^2*Pi^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) - (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (2048*cw^2*Pi^4*sw^4*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)) + (el^6*MZ^2*\[Xi]A*\[Xi]w*\[Xi]z^3)/
        (512*cw^2*Pi^4*sw^2*(-1 + \[Xi]z)*(-MW^2 + MZ^2*\[Xi]z)*
         (-(MW^2*\[Xi]w) + MZ^2*\[Xi]z)))*Log[\[Xi]z]))
