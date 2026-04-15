(* Created with the Wolfram Language : www.wolfram.com *)
Ev3*((el^6*(36*MH^4*MW^4 - 72*MH^4*MW^2*MZ^2 - 72*MW^6*MZ^2 + 36*MH^4*MZ^4 + 
     144*MW^4*MZ^4 - 72*MW^2*MZ^6 - 24*MH^4*MW^4*sw^2 + 
     48*MH^4*MW^2*MZ^2*sw^2 + 48*MW^6*MZ^2*sw^2 - 24*MH^4*MZ^4*sw^2 - 
     96*MW^4*MZ^4*sw^2 + 48*MW^2*MZ^6*sw^2)*Log[MH]^2)/
   (294912*cw^4*MW^2*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^6) + 
  (el^6*(36*MH^4*MZ^4 - 144*MH^2*MW^2*MZ^4 + 72*MW^4*MZ^4 - 
     24*MH^4*MZ^4*sw^2 + 96*MH^2*MW^2*MZ^4*sw^2 - 48*MW^4*MZ^4*sw^2)*
    Log[MW]^2)/(294912*cw^4*MW^2*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^6) + 
  (el^6*(-72*MH^4*MW^2*MZ^2 + 144*MH^2*MW^4*MZ^2 - 72*MW^6*MZ^2 + 
     144*MH^2*MW^2*MZ^4 - 72*MW^2*MZ^6 + 48*MH^4*MW^2*MZ^2*sw^2 - 
     96*MH^2*MW^4*MZ^2*sw^2 + 48*MW^6*MZ^2*sw^2 - 96*MH^2*MW^2*MZ^4*sw^2 + 
     48*MW^2*MZ^6*sw^2)*Log[MW]*Log[MZ])/(294912*cw^4*MW^2*(MW - MZ)^2*MZ^4*
    (MW + MZ)^2*Pi^4*sw^6) + 
  (el^6*(36*MH^4*MW^4 - 144*MH^2*MW^4*MZ^2 + 72*MW^4*MZ^4 - 
     24*MH^4*MW^4*sw^2 + 96*MH^2*MW^4*MZ^2*sw^2 - 48*MW^4*MZ^4*sw^2)*
    Log[MZ]^2)/(294912*cw^4*MW^2*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^6) + 
  Log[MH]*((el^6*(72*MH^4*MW^2*MZ^2 - 144*MH^2*MW^4*MZ^2 + 72*MW^6*MZ^2 - 
       72*MH^4*MZ^4 + 144*MH^2*MW^2*MZ^4 - 144*MW^4*MZ^4 + 72*MW^2*MZ^6 - 
       48*MH^4*MW^2*MZ^2*sw^2 + 96*MH^2*MW^4*MZ^2*sw^2 - 48*MW^6*MZ^2*sw^2 + 
       48*MH^4*MZ^4*sw^2 - 96*MH^2*MW^2*MZ^4*sw^2 + 96*MW^4*MZ^4*sw^2 - 
       48*MW^2*MZ^6*sw^2)*Log[MW])/(294912*cw^4*MW^2*(MW - MZ)^2*MZ^4*
      (MW + MZ)^2*Pi^4*sw^6) + (el^6*(-72*MH^4*MW^4 + 72*MH^4*MW^2*MZ^2 + 
       144*MH^2*MW^4*MZ^2 + 72*MW^6*MZ^2 - 144*MH^2*MW^2*MZ^4 - 
       144*MW^4*MZ^4 + 72*MW^2*MZ^6 + 48*MH^4*MW^4*sw^2 - 
       48*MH^4*MW^2*MZ^2*sw^2 - 96*MH^2*MW^4*MZ^2*sw^2 - 48*MW^6*MZ^2*sw^2 + 
       96*MH^2*MW^2*MZ^4*sw^2 + 96*MW^4*MZ^4*sw^2 - 48*MW^2*MZ^6*sw^2)*
      Log[MZ])/(294912*cw^4*MW^2*(MW - MZ)^2*MZ^4*(MW + MZ)^2*Pi^4*sw^6)) + 
  (el^6*(-3*MH^4*MW^4*Pi^2 + 6*MH^4*MW^2*MZ^2*Pi^2 - 3*MH^4*MZ^4*Pi^2 + 
     2*MH^4*MW^4*Pi^2*sw^2 - 4*MH^4*MW^2*MZ^2*Pi^2*sw^2 + 
     2*MH^4*MZ^4*Pi^2*sw^2 - 9*MH^4*MZ^4*Phi[MH^2/(4*MW^2)] + 
     54*MH^2*MW^2*MZ^4*Phi[MH^2/(4*MW^2)] - 72*MW^4*MZ^4*Phi[MH^2/(4*MW^2)] + 
     6*MH^4*MZ^4*sw^2*Phi[MH^2/(4*MW^2)] - 36*MH^2*MW^2*MZ^4*sw^2*
      Phi[MH^2/(4*MW^2)] + 48*MW^4*MZ^4*sw^2*Phi[MH^2/(4*MW^2)] - 
     9*MH^4*MW^4*Phi[MH^2/(4*MZ^2)] + 54*MH^2*MW^4*MZ^2*Phi[MH^2/(4*MZ^2)] - 
     72*MW^4*MZ^4*Phi[MH^2/(4*MZ^2)] + 6*MH^4*MW^4*sw^2*Phi[MH^2/(4*MZ^2)] - 
     36*MH^2*MW^4*MZ^2*sw^2*Phi[MH^2/(4*MZ^2)] + 48*MW^4*MZ^4*sw^2*
      Phi[MH^2/(4*MZ^2)] - 36*MH^4*MW^2*MZ^2*PolyLog[2, 1 - MW^2/MH^2] + 
     72*MH^2*MW^4*MZ^2*PolyLog[2, 1 - MW^2/MH^2] - 
     36*MW^6*MZ^2*PolyLog[2, 1 - MW^2/MH^2] + 
     36*MH^4*MZ^4*PolyLog[2, 1 - MW^2/MH^2] - 72*MH^2*MW^2*MZ^4*
      PolyLog[2, 1 - MW^2/MH^2] + 36*MW^4*MZ^4*PolyLog[2, 1 - MW^2/MH^2] + 
     24*MH^4*MW^2*MZ^2*sw^2*PolyLog[2, 1 - MW^2/MH^2] - 
     48*MH^2*MW^4*MZ^2*sw^2*PolyLog[2, 1 - MW^2/MH^2] + 
     24*MW^6*MZ^2*sw^2*PolyLog[2, 1 - MW^2/MH^2] - 
     24*MH^4*MZ^4*sw^2*PolyLog[2, 1 - MW^2/MH^2] + 48*MH^2*MW^2*MZ^4*sw^2*
      PolyLog[2, 1 - MW^2/MH^2] - 24*MW^4*MZ^4*sw^2*
      PolyLog[2, 1 - MW^2/MH^2] + 36*MH^4*MW^4*PolyLog[2, 1 - MZ^2/MH^2] - 
     36*MH^4*MW^2*MZ^2*PolyLog[2, 1 - MZ^2/MH^2] - 
     72*MH^2*MW^4*MZ^2*PolyLog[2, 1 - MZ^2/MH^2] + 
     72*MH^2*MW^2*MZ^4*PolyLog[2, 1 - MZ^2/MH^2] + 
     36*MW^4*MZ^4*PolyLog[2, 1 - MZ^2/MH^2] - 
     36*MW^2*MZ^6*PolyLog[2, 1 - MZ^2/MH^2] - 24*MH^4*MW^4*sw^2*
      PolyLog[2, 1 - MZ^2/MH^2] + 24*MH^4*MW^2*MZ^2*sw^2*
      PolyLog[2, 1 - MZ^2/MH^2] + 48*MH^2*MW^4*MZ^2*sw^2*
      PolyLog[2, 1 - MZ^2/MH^2] - 48*MH^2*MW^2*MZ^4*sw^2*
      PolyLog[2, 1 - MZ^2/MH^2] - 24*MW^4*MZ^4*sw^2*
      PolyLog[2, 1 - MZ^2/MH^2] + 24*MW^2*MZ^6*sw^2*
      PolyLog[2, 1 - MZ^2/MH^2] + 18*MH^2*MW^2*MZ^4*
      Psi[MH^2/MZ^2, MW^2/MZ^2] - 18*MW^4*MZ^4*Psi[MH^2/MZ^2, MW^2/MZ^2] - 
     18*MW^2*MZ^6*Psi[MH^2/MZ^2, MW^2/MZ^2] - 12*MH^2*MW^2*MZ^4*sw^2*
      Psi[MH^2/MZ^2, MW^2/MZ^2] + 12*MW^4*MZ^4*sw^2*
      Psi[MH^2/MZ^2, MW^2/MZ^2] + 12*MW^2*MZ^6*sw^2*
      Psi[MH^2/MZ^2, MW^2/MZ^2]))/(294912*cw^4*MW^2*(MW - MZ)^2*MZ^4*
    (MW + MZ)^2*Pi^4*sw^6))
