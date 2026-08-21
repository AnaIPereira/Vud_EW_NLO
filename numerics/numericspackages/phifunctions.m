(* ::Package:: *)

(* ::Section:: *)
(*phi functions*)


Clear[lambda,z,Cl2,phi1a,phi1b,phi2]

(*Cl2[x_]:=ResourceFunction["ClausenCl"][2, x];*)

(*DTPHI1*)
(*0<z<1*)
phi1a[z_]:=4 Sqrt[z/(1 - z)] Cl2[2 ArcSin[Sqrt[z]]];
(*z>1*)
(*lambda[z_]:=Sqrt[1-1/z];
phi1b[z_]:=1/lambda[z](-4 PolyLog[2,1/2-lambda[z] + 2 (Log[1/2 - lambda[z]])^2] - (Log[4 z])^2 + Pi^2/2);*)

(*DTPHI2*)
lambda[x_,y_]:=Sqrt[(1-x-y)^2 - 4x y]
phi2[x_,y_]:=2/Sqrt[-(lambda[x, y])^2] (
    Cl2[2 ArcCos[(-1 + x + y)/(2 Sqrt[x y])]] +
     Cl2[2 ArcCos[(1 + x - y)/(2 Sqrt[x])]] +
     Cl2[2 ArcCos[(1 - x + y)/(2 Sqrt[y])]])
