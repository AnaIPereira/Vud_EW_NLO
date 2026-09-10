(* ::Package:: *)

(* ::Section::Closed:: *)
(*Renormalization constants Jegherlener*)


(* 1-Loop Bosonic Mass Renormalization Constants *)

Clear[Z11H, Z11W, Z11Z]

(* Paper I eq 4.7*)
Z11H[t_] := -3/2-(3/4)*(MZ2[t]/MW2[t])+(3/4)*(MH2[t]/MW2[t]);

(*Paper I eq 4.8*)
Z11W[t_] := -(3/4)*(MH2[t]/MW2[t])-3*(MW2[t]/MH2[t]) - 
            (3/2)*(MZ2[t]^2/(MH2[t]*MW2[t]))+(3/4)*(MZ2[t]/MW2[t])-17/3;

(*Paper I eq 4.9*)
Z11Z[t_] := -(3/4)*(MH2[t]/MW2[t])-3*(MW2[t]/MH2[t])- 
            (3/2)*(MZ2[t]^2/(MW2[t]*MH2[t]))+(11/12)*(MZ2[t]/MW2[t])- 
            7*(MW2[t]/MZ2[t])+7/6;


(* ::Section:: *)
(*functions to convert on - shell to msbar*)


(* ::Subsection:: *)
(*B0 functions*)


ClearAll[r, B0, ep, mu, delta]

(* r function *)
r[m0_, m1_, p_] := Module[{A, r1, r2},
  A = (m0^2 + m1^2 - p^2 - I*ep)/(m0 m1); 
  r1 = (A + Sqrt[A^2 - 4])/2;
  r2 = (A - Sqrt[A^2 - 4])/2;
  r1
]

delta = 0;

(* B0 function: Both masses non-zero *)
B0/: B0[m0_, m1_, p_] := -(delta + 2 - Log[m0 m1 / mu^2] + 
  (m0^2 - m1^2)/p^2 Log[m1/m0] - 
  m0 m1/p^2 (1/r[m0, m1, p] - r[m0, m1, p]) Log[r[m0, m1, p]] ) /; (m0 =!= 0 && m1 =!= 0 && p =!= 0);

(* B0 function: First mass zero *)
B0/: B0[0, m_, p_] := -( delta + 2 - Log[m^2 / mu^2] + 
  (m^2/p^2 - 1) * Log[1 - (p^2 + I*ep)/m^2] ) /; (m =!= 0 && p =!= 0);

(* B0 function: Second mass zero (Symmetry) *)
B0/: B0[m_, 0, p_] := B0[0, m, p] /; (m =!= 0 && p =!= 0);
 

B0/: B0[0, 0, p_] :=-( delta + 2 - Log[p^2 / mu^2]); (*I am not sure of this definition*)


(* constants for generations and colors*)
Clear[nF,Nc]
nF = 3; 
Nc = 3;


(* ::Subsection::Closed:: *)
(*Z*)


(* XZ1 in terms of On-Shell masses. *)
XZ1boson = 13/18 - 1/6 Log[MWos^2/mu^2] + 4/3 B0[MWos, MWos, MZos] + 
  MHos^4/(MWos^2 MZos^2) (1/12 - 1/12 Log[MHos^2/mu^2] + 1/12 B0[MHos, MZos, MZos]) + 
  MHos^2/MWos^2 (7/12 + 1/12 Log[MZos^2/mu^2] - 1/2 Log[MHos^2/mu^2] - 1/3 B0[MHos, MZos, MZos]) + 
  MZos^2/MWos^2 (2/9 - 1/6 Log[MZos^2/mu^2] + 1/12 B0[MWos, MWos, MZos] + B0[MHos, MZos, MZos]) + 
  MWos^2/MZos^2 (-4/3 Log[MWos^2/mu^2] - 17/3 B0[MWos, MWos, MZos]) + 
  MWos^4/MZos^4 (4 Log[MWos^2/mu^2] - 4 B0[MWos, MWos, MZos]) + 
  MWos^2/MHos^2 (1 - 3 Log[MWos^2/mu^2]) + 
  MZos^4/(MWos^2 MHos^2) (1/2 - 3/2 Log[MZos^2/mu^2]);


XZ1fermion = 1/3 nF (-2 + MZos^2/MWos^2 + 1/2 MZos^2/MWos^2 B0[0, 0, MZos] + 4/3 MWos^2/MZos^2 + 
  Nc (11/27 MZos^2/MWos^2 + 20/27 MWos^2/MZos^2 - 22/27)) + 
  (* lepton part *)
  3 * B0[0, 0, MZos] * (5/6 MZos^2/MWos^2 + 4/3 MWos^2/MZos^2 - 2) + 
  (* quark down part *)
  Nc * 3 * B0[0, 0, MZos] * (5/54 MZos^2/MWos^2 + 4/27 MWos^2/MZos^2 - 2/27) +
  (* top-Quark *)
  Nc * (2 Mtos^4/(MHos^2 MWos^2) (Log[Mtos^2/mu^2] - 1) + 
    (17/54 MZos^2/MWos^2 + 16/27 MWos^2/MZos^2 - 20/27) B0[Mtos, Mtos, MZos] - 
    Mtos^2/MWos^2 (17/27 Log[Mtos^2/mu^2] - 7/54 B0[Mtos, Mtos, MZos]) + 
    (40/27 Mtos^2/MZos^2 - 32/27 (Mtos^2 MWos^2)/MZos^4) (Log[Mtos^2/mu^2] - B0[Mtos, Mtos, MZos])) +
  (* up and charm *)
  Nc * 2 * (17/54 MZos^2/MWos^2 + 16/27 MWos^2/MZos^2 - 20/27) B0[0, 0, MZos];


 XZ1 = XZ1boson+XZ1fermion;


Union@Cases[XZ1, B0[__], Infinity]


(* ::Subsection:: *)
(*W*)


(* XW1 in terms of On-Shell masses. *)
XW1boson = 73/9 - 3 Log[MWos^2/mu^2] + 2 Log[MZos^2/mu^2] - 17/3 B0[MZos, MWos, MWos] + B0[MHos, MWos, MWos] + 
  MHos^4/MWos^4 (1/12 - 1/12 Log[MHos^2/mu^2] + 1/12 B0[MHos, MWos, MWos]) + 
  MHos^2/MWos^2 (7/12 + 1/12 Log[MWos^2/mu^2] - 1/2 Log[MHos^2/mu^2] - 1/3 B0[MHos, MWos, MWos]) + 
  MZos^4/MWos^4 (1/12 - 1/12 Log[MZos^2/mu^2] + 1/12 B0[MZos, MWos, MWos]) + 
  MZos^2/MWos^2 (3/4 + 1/12 Log[MWos^2/mu^2] - 2/3 Log[MZos^2/mu^2] + 4/3 B0[MZos, MWos, MWos]) + 
  MWos^2/MZos^2 (-8 + 4 Log[MWos^2/mu^2] - 4 B0[MZos, MWos, MWos]) + 
  MWos^2/MHos^2 (1 - 3 Log[MWos^2/mu^2]) + 
  MZos^4/(MWos^2 MHos^2) (1/2 - 3/2 Log[MZos^2/mu^2]);


XW1fermion = 1/3 nF (1/3 + 1/3 Nc) + 
  (* lepton part *)
  3*(1/6 B0[0, 0, MWos]) * 2 + 
  (* quark part separated by generation doublets (u/d, c/s, t/b) *)
  Nc * (
    (* Up-Down *)
    (1/6 * (2 )) * B0[0, 0, MWos]+
    (*  Charm-Strange  *)
    (1/6 * (2)) * B0[0, 0, MWos] + 
(* Top-Bottom doublet *)
    (1/6 * (2 - Mtos^4/MWos^4 - Mtos^2/MWos^2 )) * B0[0, Mtos, MWos] + 
    (-1/3 Mtos^2/MWos^2 Log[Mtos^2/mu^2]) + 
    (- 1/6 Mtos^4/MWos^4 - 2 Mtos^4/(MWos^2 MHos^2)) (1 - Log[Mtos^2/mu^2])
  );


 XW1 = XW1boson+XW1fermion;


Union@Cases[XW1, B0[__], Infinity]


(* ::Subsection:: *)
(*H*)


(* XH1 in terms of On-Shell masses. *)
XH1boson = 1/2 - 1/2 Log[MWos^2/mu^2] - B0[MWos, MWos, MHos] + 
  MHos^2/MWos^2 (-3/2 + 9/8 (Pi/Sqrt[3]) + 3/8 Log[MHos^2/mu^2] + 1/4 B0[MWos, MWos, MHos] + 1/8 B0[MZos, MZos, MHos]) + 
  MZos^2/MWos^2 (1/4 - 1/4 Log[MZos^2/mu^2] - 1/2 B0[MZos, MZos, MHos]) + 
  MWos^2/MHos^2 (3 - 3 Log[MWos^2/mu^2] + 3 B0[MWos, MWos, MHos]) + 
  MZos^4/(MWos^2 MHos^2) (3/2 - 3/2 Log[MZos^2/mu^2] + 3/2 B0[MZos, MZos, MHos]);


(* XH1 in terms of On-Shell masses *)
XH1fermion = 
  Nc * (1/2 Mtos^2/MWos^2 (B0[Mtos, Mtos, MHos] (1 - 4 Mtos^2/MHos^2) - 
  4 Mtos^2/MHos^2 (1 - Log[Mtos^2/mu^2])));


 XH1 = XH1boson+XH1fermion;


Union@Cases[XH1, B0[__], Infinity]


(* ::Subsection:: *)
(*top (*I think ther emight be a mistake here*)*)


(*Xt1fermionaux = 
  (20/9 - 7/36 MZos^2/MWos^2 - 17/36 MZos^4/(MWos^2 mup^2) + 10/9 MZos^2/mup^2 - 8/9 MWos^2/mup^2 - 16/9 MWos^2/MZos^2) * B0[Mtos, MZos, Mtos] + 
  (1/4 + 1/4 md^4/(MWos^2 mup^2) + 1/4 md^2/mup^2 + 1/4 mup^2/MWos^2 - 1/2 md^2/MWos^2 - 1/2 MWos^2/mup^2) * B0[MWos, md, mup] + 
  (mup^2/MWos^2 - 1/4 MHos^2/MWos^2) * B0[MHos, mup, mup] + 
  155/36 - 1/4 Log[MWos^2/mu^2] - 14/9 Log[mup^2/mu^2] + 
  MZos^2/MWos^2 (1/2 - 17/36 Log[mup^2/mu^2]) + 
  1/2 MZos^4/(MWos^2 MHos^2) (1 - 3 Log[MZos^2/mu^2]) + 
  MZos^2/mup^2 (10/9 - 17/36 MZos^2/MWos^2) (1 - Log[mup^2/mu^2]) + 
  1/2 MHos^2/MWos^2 (1 - Log[MHos^2/mu^2]) + 
  1/4 md^2/MWos^2 (1 + md^2/mup^2) (1 - Log[md^2/mu^2]) + 
  MWos^2/MHos^2 (1 - 3 Log[MWos^2/mu^2]) + 
  1/4 md^2/mup^2 (1 + Log[MWos^2/mu^2] - 2 Log[md^2/mu^2]) + 
  1/2 mup^2/MWos^2 (1 - Log[mup^2/mu^2]) + 
  MWos^2/mup^2 (-25/18 + 1/2 Log[MWos^2/mu^2] + 8/9 Log[MZos^2/mu^2]) - 
  16/9 MWos^2/MZos^2 (2 - Log[mup^2/mu^2]) - 
  (* Expanded quark sum over u, d, c, s, t, b *)
  Nc * (
    2 mup^4/(MWos^2 MHos^2) (1 - Log[mup^2/mu^2]) + 
    2 md^4/(MWos^2 MHos^2) (1 - Log[md^2/mu^2]) + 
    2 mc^4/(MWos^2 MHos^2) (1 - Log[mc^2/mu^2]) + 
    2 ms^4/(MWos^2 MHos^2) (1 - Log[ms^2/mu^2]) + 
    2 Mtos^4/(MWos^2 MHos^2) (1 - Log[Mtos^2/mu^2]) + 
    2 Mbos^4/(MWos^2 MHos^2) (1 - Log[Mbos^2/mu^2])
  ) - 
  (* Expanded lepton sum over e, mu, tau *)
  (
    2 me^4/(MWos^2 MHos^2) (1 - Log[me^2/mu^2]) + 
    2 mmu^4/(MWos^2 MHos^2) (1 - Log[mmu^2/mu^2]) + 
    2 mtau^4/(MWos^2 MHos^2) (1 - Log[mtau^2/mu^2])
  );*)


Xtfermionaux = 
  (20/9 - 7/36 MZos^2/MWos^2 - 17/36 MZos^4/(MWos^2 mup^2) + 
  10/9 MZos^2/mup^2 - 8/9 MWos^2/mup^2 - 16/9 MWos^2/MZos^2) * B0[Mtos, MZos, Mtos] + 
  (1/4 - 1/2 MWos^2/mup^2) * B0[MWos, 0, mup] + 
  (- 1/4 MHos^2/MWos^2) * B0[MHos, mup, mup] + 
  155/36 - 1/4 Log[MWos^2/mu^2] - 14/9 Log[mup^2/mu^2] + 
  MZos^2/MWos^2 (1/2 - 17/36 Log[mup^2/mu^2]) + 
  1/2 MZos^4/(MWos^2 MHos^2) (1 - 3 Log[MZos^2/mu^2]) + 
  MZos^2/mup^2 (10/9 - 17/36 MZos^2/MWos^2) (1 - Log[mup^2/mu^2]) + 
  1/2 MHos^2/MWos^2 (1 - Log[MHos^2/mu^2]) +  
  MWos^2/MHos^2 (1 - 3 Log[MWos^2/mu^2]) + 
  MWos^2/mup^2 (-25/18 + 1/2 Log[MWos^2/mu^2] + 8/9 Log[MZos^2/mu^2]) - 
  16/9 MWos^2/MZos^2 (2 - Log[mup^2/mu^2]) - 
  (* quark  t *)
  Nc * ( 2 Mtos^4/(MWos^2 MHos^2) (1 - Log[Mtos^2/mu^2]) )/.mup->Mtos;


Xt1 = Xtfermionaux;


Union@Cases[Xt1, B0[__], Infinity]
