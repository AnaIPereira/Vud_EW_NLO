#!/usr/bin/env wolframscript
(* ::Package:: *)

charges={nc->3,ne->3,nu->2,nd->3,qd->-1/3,qe->-1,qu->2/3,nl->3};


(*J(mu) = alpha(mu)/(4 Pi) J1 + (alpha(mu)/(4 Pi))^2 J2 + ...*)
Clear[J1,J2]
J1[f_] := -ad[0] beta[1]/(2 (beta[0])^2) + ad[1]/(2 beta[0]);
J2[f_]:=-ad[0] beta[2]/(2 beta[0])^2 + 1/2 ((J1[5])^2 - beta[1]/beta[0] J1[5])+ ad[2]/(4 beta[0]);


Clear[beta,ad]
(*beta function*)
beta[0]:= 4/3 (ne qe^2 + nd nc qd^2 + nu nc qu^2)/.charges;
beta[1]:= 4 (ne qe^4 + nd nc qd^4 + nu nc qu^4)/.charges;
beta[2] := (-2 (ne qe^6 + nd nc qd^6 + nu nc qu^6) - 
44/9 (ne qe^2 + nd nc qd^2 + nu nc qu^2) * (ne qe^4 + nd nc qd^4 + nu nc qu^4))/.charges;
(*operator anomalous dimension for semi-leptonic*)
ad[0]:= -4;
ad[1]:= (16/9 nl + 64/81 nc nu + 16/81 nc nd )/8*(a1qu-8)/.charges;
ad[2]:=(-((14016 + 1016*a1qu + 6*a1qu^2 - 192*a2qu - 63*b1qu + 6*b2qu)*(ne qe^2 + nd nc qd^2 + nu nc qu^2)) - 
  16*(a1qu - 6*(40 + a2qu))*(ne qe^2 + nd nc qd^2 + nu nc qu^2)^2 + 
  24*(-562 + 9*(ne qe^4 + nd nc qd^4 + nu nc qu^4)*(62 + a1qu - 96*Zeta[3])))/324/.charges;
