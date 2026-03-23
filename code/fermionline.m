(* ::Package:: *)

(* ::Input:: *)
(**)


(* ::Section::Closed:: *)
(*classes  of  objects*)


projectors = {gamma[L],gamma[R]};
noproj[arg_] := And@@(FreeQ[{arg},#]&/@projectors);
proj[arg_] := Not[(And@@(MemberQ[{arg},#]&/@projectors))];

(*
noproj acting on something returns true is there are no projectors (gamma[L] or gamma[R])
and returns false if there are projectors

proj acting on something returns True if there are projectors and false if there are no projectors)
*)


gamma5 = {gamma[g5]};
nogamma5[arg_] := And@@(FreeQ[{arg},#]&/@gamma5);
yesgamma5[arg_] := Not[(And@@(MemberQ[{arg},#]&/@gamma5))];


slashes = {qslash[1], qslash[2],pslash[1],pslash[2]};
noslash[arg___] := And@@(FreeQ[{arg},#]&/@slashes);
slash[arg___] := Not[(And@@(MemberQ[{arg},#]&/@slashes))];

(*
noslash acting on something returns true is there are no projectors qslash[1] or qslash[2]
and returns false if there are qslashes

slash acting on something returns True if there are qslashes and false if there are no qslashes)
*)


masses = {mass[MT], mass[f], mass[e]};
nomassive[arg_] := And@@(FreeQ[{arg},#]&/@masses);
massive[arg_] := Not[(And@@(MemberQ[{arg},#]&/@masses))];

(*
nomassive acting on something returns true is there are no masses
and returns false if there are masses

massive acting on something returns True if there are masses and false if there are no masses)
*)


(* ::Section:: *)
(*fermion  line  standard  order*)


Clear[diracstandardorder]
Clear[stexdL]
diracstandardorder[arg_]:=arg//.{exdL->stexdL}

(*bring the projector operator into a standard form - bring them all to the left side of the Dirac line

can optimise later trying to use levi-civita to have a sign associated with the permutation and then
assign gamma[L] or gamma[R] according to the sign of the permutation*)

stexdL[id_, a_, gamma[L], ids___]:= stexdL[id, gamma[R], a , ids] /; noproj[a]
stexdL[id_, a_, b_, gamma[L], ids___]:= stexdL[id, a , gamma[R], b, ids]/; noproj[b];
stexdL[id_, a_, b_, c_, gamma[L], ids___]:= stexdL[id, a , b, gamma[R], c, ids]/; noproj[c];
stexdL[id_, a_, b_, c_, d_, gamma[L], ids___]:= stexdL[id, a , b, c, gamma[R], d, ids]/; noproj[d];
stexdL[id_, a_, b_, c_, d_, e_, gamma[L], ids___]:= stexdL[id, a , b, c, d, gamma[R], e, ids]/; noproj[e];
stexdL[id_, a_, b_, c_, d_, e_,f_, gamma[L], ids___]:= stexdL[id, a , b, c, d, e, gamma[R], f, ids]/; noproj[f];
stexdL[id_, a_, b_, c_, d_, e_,f_, g_,gamma[L], ids___]:= stexdL[id, a , b, c, d, e, f,gamma[R], g, ids]/; noproj[g];
stexdL[id_, a_, b_, c_, d_, e_, f_, g_, h_,gamma[L], ids___]:= stexdL[id, a , b, c, d, e, f, g, gamma[R],h, ids]/; noproj[h];

stexdL[id_, a_, gamma[R], ids___]:= stexdL[id, gamma[L], a , ids]/; noproj[a];
stexdL[id_, a_, b_, gamma[R], ids___]:= stexdL[id, a , gamma[L], b, ids]/; noproj[b];
stexdL[id_, a_, b_, c_, gamma[R], ids___]:= stexdL[id, a , b, gamma[L], c, ids]/; noproj[c];
stexdL[id_, a_, b_, c_, d_, gamma[R], ids___]:= stexdL[id, a , b, c, gamma[L], d, ids]/; noproj[d];
stexdL[id_, a_, b_, c_, d_, e_, gamma[R], ids___]:= stexdL[id, a , b, c, d, gamma[L], e, ids]/; noproj[e];
stexdL[id_, a_, b_, c_, d_, e_, f_, gamma[R], ids___]:= stexdL[id, a , b, c, d,e, gamma[L], f, ids]/; noproj[f];
stexdL[id_, a_, b_, c_, d_, e_, f_, g_,gamma[R], ids___]:= stexdL[id, a , b, c, d, e, f,gamma[L], g, ids]/; noproj[g];
stexdL[id_, a_, b_, c_, d_, e_, f_, g_, h_,gamma[R], ids___]:= stexdL[id, a , b, c, d, e, f, g, gamma[L],h, ids]/; noproj[h];


stexdL[id_, ids___, gamma[L], gamma[R], ids1___]:= 0;
stexdL[id_, ids___, gamma[R], gamma[L], ids1___]:= 0;
stexdL[id_, ids___, gamma[L], gamma[L], ids1___]:= stexdL[id, ids, gamma[L] ,ids1];
stexdL[id_, ids___, gamma[R], gamma[R], ids1___]:= stexdL[id, ids,gamma[R],ids1];

(*simplify all the qslash*qslash and bring all the qslashes to the right side to further simplification in the
form of all the qslash[1] and then qslash[2] so that we have the dirac line in a standard form)*)

stexdL[id_, projector___, a___, qslash[i_], qslash[i_], b___] := q[i]q[i]stexdL[id, projector, a, b]
stexdL[id_, projector___, a___, pslash[i_], pslash[i_], b___] := p[i]p[i]stexdL[id, projector, a, b]

stexdL[id_, projector___, gamma[i_], gamma[i_], b___] := d stexdL[id, projector, b]

stexdL[id_, projector___, qslash[i_], gamma[ind_],b___]:=
2 q[i, ind]stexdL[id, projector, b] - stexdL[id, projector, gamma[ind], qslash[i], b]/;(noproj[gamma[ind]]&&nogamma5[gamma[ind]])
stexdL[id_, projector___, pslash[i_], gamma[ind_],b___]:=
2 p[i, ind]stexdL[id, projector, b] - stexdL[id, projector, gamma[ind], pslash[i], b]/;(noproj[gamma[ind]]&&nogamma5[gamma[ind]])

stexdL[id_, projector___, a___ , qslash[i_], gamma[ind_], b___]:=
2 q[i, ind]stexdL[id, projector, a, b] - stexdL[id, projector, a, gamma[ind], qslash[i], b]/;(noproj[gamma[ind]]&&nogamma5[gamma[ind]])
stexdL[id_, projector___, a___ , pslash[i_], gamma[ind_], b___]:=
2 p[i, ind]stexdL[id, projector, a, b] - stexdL[id, projector, a, gamma[ind], pslash[i], b]/;(noproj[gamma[ind]]&&nogamma5[gamma[ind]])

(*

stexdL[id_, a___ ,qslash[i_], gamma[ind_],b___]:=
2 q[i, ind]stexdL[id, a, b] - stexdL[id, a, gamma[ind], qslash[i], b]*)

(*
at this point all the qslashes should be on the right hand side of the dirac line
to do further simplification, we will order them, having all
qslash[1]...*qslash[2].
*) 

stexdL[id_, a___, qslash[j_], qslash[i_], b___]:=
2 sp[q[i], q[j]] stexdL[id, a, b] - stexdL[id, a, qslash[i], qslash[j], b]/;(j > i)

stexdL[id_, a___, pslash[j_], qslash[i_], b___]:=
2 sp[q[i], p[j]] stexdL[id, a, b] - stexdL[id, a, qslash[i], pslash[j], b]


(*
after simplifying the qslashes, let the momenta comute and come out of the dirac line
*)

stexdL[id_, ids___, q[a_,ind_]gamma[ind_],ids1___]:= q[a, ind]stexdL[id, ids, gamma[ind],ids1];
stexdL[id_, ids___, p[a_,ind_]gamma[ind_],ids1___]:= p[a, ind]stexdL[id, ids, gamma[ind],ids1];


stexdL[id_,projector_,gamma[i_],gamma[j_],b___]:=
2 mt[i,j]stexdL[id,projector, b] - stexdL[id,projector, gamma[j], gamma[i], b]/;((j < i)&& noproj[gamma[i]]&& noproj[gamma[j]] && nogamma5[gamma[i]] && nogamma5[gamma[j]])

stexdL[id_,projector_,a___,gamma[i_],gamma[j_],b___]:=
2 mt[i,j]stexdL[id,projector, a,b] - stexdL[id,projector,a,gamma[j], gamma[i], b]/;((j < i)&& noproj[gamma[i]]&& noproj[gamma[j]] && nogamma5[gamma[i]] && nogamma5[gamma[j]])

stexdL[id_,a___,gamma[i_],gamma[j_]]:=
2 mt[i,j]stexdL[id, a] - stexdL[id, a, gamma[j], gamma[i]]/;((j < i)&& noproj[gamma[i]]&& noproj[gamma[j]] && nogamma5[gamma[i]] && nogamma5[gamma[j]])

stexdL[id_,gamma[R],gamma[a_],gamma[b_],gamma[a_]]:=(2-d) stexdL[id,gamma[R],gamma[b]];


(* ::Section:: *)
(*trace  simplification*)


Clear[tracestandardorder]
Clear[strace]

tracestandardorder[arg_]:=arg//.{trace->strace}

(*
bring all the mases out of the trace
*)
strace[ids___, mass[MT],ids1___]:= mass[MT] strace[ids,ids1]
strace[ids___,mass[M_],ids1___]:= mass[M]strace[ids,ids1] /; M=!=MT
(*
bring the projector operator into a standard form - bring them all to the left side of the Dirac line

can optimise later trying to use levi-civita to have a sign associated with the permutation and then
assign gamma[L] or gamma[R] according to the sign of the permutation
*)

strace[ a_, gamma[L], ids___]:= strace[gamma[R], a , ids] /; (noproj[a]&&nomassive[a]);
strace[ a_, b_, gamma[L], ids___]:= strace[ a , gamma[R], b, ids]/; (noproj[b]&&nomassive[b]);
strace[ a_, b_, c_, gamma[L], ids___]:= strace[ a , b, gamma[R], c, ids]/; (noproj[c]&&nomassive[c]);
strace[a_, b_, c_, d_, gamma[L], ids___]:= strace[ a , b, c, gamma[R], d, ids]/; (noproj[d]&&nomassive[d]);
strace[ a_, b_, c_, d_, e_, gamma[L], ids___]:= strace[ a , b, c, d, gamma[R], e, ids]/; (noproj[e]&&nomassive[e]);
strace[ a_, b_, c_, d_, e_,f_, gamma[L], ids___]:= strace[ a , b, c, d, e, gamma[R], f, ids]/;(noproj[f]&&nomassive[f]);
strace[ a_, b_, c_, d_, e_,f_, g_,gamma[L], ids___]:= strace[ a , b, c, d, e, f,gamma[R], g, ids]/; (noproj[g]&&nomassive[g]);
strace[ a_, b_, c_, d_, e_,f_, g_, h_, gamma[L], ids___]:= strace[ a, b, c, d, e, f, g, gamma[R], h, ids]/; (noproj[h]&&nomassive[h]);
strace[ a_, b_, c_, d_, e_,f_, g_, h_, i_ ,gamma[L], ids___]:= strace[ a, b, c, d, e, f, g, h ,gamma[R], i, ids]/; (noproj[i]&&nomassive[i]);
strace[ a_, b_, c_, d_, e_,f_, g_, h_, i_ , j_, gamma[L], ids___]:= strace[ a, b, c, d, e, f, g, h ,i ,gamma[R], j, ids]/; (noproj[j]&&nomassive[j]);

strace[ a_, gamma[R], ids___]:= strace[ gamma[L], a , ids]/; (noproj[a]&&nomassive[a]);
strace[ a_, b_, gamma[R], ids___]:= strace[ a , gamma[L], b, ids]/; (noproj[b]&&nomassive[b]);
strace[ a_, b_, c_, gamma[R], ids___]:= strace[ a , b, gamma[L], c, ids]/; (noproj[c]&&nomassive[c]);
strace[ a_, b_, c_, d_, gamma[R], ids___]:= strace[ a , b, c, gamma[L], d, ids]/; (noproj[d]&&nomassive[d]);
strace[ a_, b_, c_, d_, e_, gamma[R], ids___]:= strace[ a , b, c, d, gamma[L], e, ids]/; (noproj[e]&&nomassive[e]);
strace[ a_, b_, c_, d_, e_, f_, gamma[R], ids___]:= strace[ a , b, c, d,e, gamma[L], f, ids]/; (noproj[f]&&nomassive[f]);
strace[ a_, b_, c_, d_, e_, f_, g_,gamma[R], ids___]:= strace[ a , b, c, d, e, f,gamma[L], g, ids]/;( noproj[g]&&nomassive[g]);
strace[ a_, b_, c_, d_, e_,f_, g_, h_, gamma[R], ids___]:= strace[ a, b, c, d, e, f, g, gamma[L], h, ids]/; (noproj[h]&&nomassive[h]);
strace[ a_, b_, c_, d_, e_,f_, g_, h_, i_ ,gamma[R], ids___]:= strace[ a, b, c, d, e, f, g, h ,gamma[L], i, ids]/; (noproj[i]&&nomassive[i]);
strace[ a_, b_, c_, d_, e_,f_, g_, h_, i_ , j_, gamma[R], ids___]:= strace[ a, b, c, d, e, f, g, h ,i ,gamma[L], j, ids]/; (noproj[j]&&nomassive[j]);


strace[ ids___, gamma[L], gamma[R], ids1___]:= 0;
strace[ ids___, gamma[R], gamma[L], ids1___]:= 0;
strace[ ids___, gamma[L], gamma[L], ids1___]:= strace[ ids, gamma[L],ids1];
strace[ ids___, gamma[R], gamma[R], ids1___]:= strace[ ids, gamma[R], ids1];

strace[] := 4;


(*simplify all the qslash*qslash and bring all the qslashes to the right side to further simplification in the
form of all the qslash[1] and then qslash[2] so that we have the dirac line in a standard form)*)

strace[ projector___, a___, qslash[i_], qslash[i_], b___] := q[i]^2strace[ projector, a, b]
strace[ projector___, a___, pslash[i_], pslash[i_], b___] := p[i]^2strace[ projector, a, b]

strace[ projector___, gamma[i_], gamma[i_], b___] := 4 * strace[ projector, b]/;noproj[gamma[i]]

strace[ projector___, qslash[i_], gamma[ind_],b___]:=
2 q[i, ind]strace[ projector, b] - strace[ projector, gamma[ind], qslash[i], b]/;noproj[gamma[ind]]
strace[ projector___, pslash[i_], gamma[ind_],b___]:=
2 p[i, ind]strace[ projector, b] - strace[ projector, gamma[ind], pslash[i], b]/;noproj[gamma[ind]]

strace[ projector___, a___ , qslash[i_], gamma[ind_], b___]:=
2 q[i, ind]strace[ projector, a, b] - strace[ projector, a, gamma[ind], qslash[i], b]/;noproj[gamma[ind]]
strace[ projector___, a___ , pslash[i_], gamma[ind_], b___]:=
2 p[i, ind]strace[ projector, a, b] - strace[ projector, a, gamma[ind], pslash[i], b]/;noproj[gamma[ind]]

strace[ qslash[i_], gamma[ind_], b___]:=
2 q[i, ind]strace[ b] - strace[ gamma[ind], qslash[i], b] /;noproj[gamma[ind]]
strace[ pslash[i_], gamma[ind_], b___]:=
2 p[i, ind]strace[ b] - strace[ gamma[ind], pslash[i], b] /;noproj[gamma[ind]]

(*
at this point all the qslashes should be on the right hand side of the dirac line
to do further simplification, we will order them, having all
qslash[1]...*qslash[2].
*) 

strace[ a___, qslash[j_], qslash[i_], b___]:=
2 sp[q[i], q[j]] strace[ a, b] - strace[ a, qslash[i], qslash[j], b]/;(j > i)
strace[ a___, pslash[j_], pslash[i_], b___]:=
2 sp[p[i], p[j]] strace[ a, b] - strace[ a, pslash[i], pslash[j], b]/;(j > i)


(*
 let the momenta comute and come out of the trace
*)

strace[ids___, q[a_,ind_]gamma[ind_],ids1___]:= q[a, ind]strace[ids, gamma[ind],ids1];
strace[ids___, sign_ q[a_,ind_]gamma[ind_],ids1___]:= sign q[a, ind]strace[ids, gamma[ind],ids1];
strace[ids___, p[a_,ind_]gamma[ind_],ids1___]:= p[a, ind]strace[ids, gamma[ind],ids1];
strace[ids___, sign_ p[a_,ind_]gamma[ind_],ids1___]:= sign p[a, ind]strace[ids, gamma[ind],ids1];


strace[projector___,gamma[i_],gamma[j_],b___]:=
2 mt[i, j]strace[projector, b] - strace[projector, gamma[j], gamma[i], b]/;((j < i)&& noproj[gamma[i]]&& noproj[gamma[j]] && nogamma5[gamma[i]] && nogamma5[gamma[j]])

strace[projector_,a___,gamma[i_],gamma[j_],b___]:=
2 mt[i, j]strace[projector, a, b] - strace[projector, a, gamma[j], gamma[i], b]/;((j < i)&& noproj[gamma[i]]&& noproj[gamma[j]] && nogamma5[gamma[i]] && nogamma5[gamma[j]])


(*brute force implement gL+gR=1*)

strace[ids___,a_ gamma[L] + a_ gamma[R],ids1___]:=a strace[ids,ids1];



strace[gamma[i_]] := 0 /; noproj[gamma[i]]

strace[gamma[i_], gamma[j_], gamma[k_]] := 0 /; (
noproj[gamma[i]]&&noproj[gamma[j]]&&noproj[gamma[k]])

strace[gamma[i_], gamma[j_], gamma[k_], gamma[l_], gamma[m_]] := 0  /; 
(noproj[gamma[i]]&&noproj[gamma[j]]&&noproj[gamma[k]]&&noproj[gamma[l]]&&noproj[gamma[m]])
(*strace[gamma[i_], gamma[j_], gamma[k_], gamma[l_], gamma[m_], gamma[n_], gamma[o_]] := 0*)

strace[gamma[i_],gamma[j_]] := 4 mt[i, j] /;( noproj[gamma[i]]&& noproj[gamma[j]])

strace[gamma[i_], gamma[j_], gamma[k_], gamma[l_]] := 
4(mt[i,j] mt[k,l] - mt[i,k] mt[j,l] + mt[i,l] mt[j,k]) /; 
(noproj[gamma[i]]&&noproj[gamma[j]]&&noproj[gamma[k]]&&noproj[gamma[l]])


(*
after simplifying the qslashes, let the momenta comute and come out of the dirac line
*)
(*
strace[id_, ids___, q[a_,ind_]gamma[ind_],ids1___]:= q[a, ind]strace[id, ids, gamma[ind],ids1];*)


Clear[tracestandardorder1]
Clear[strace1]

tracestandardorder1[arg_]:=arg//.{strace->strace1}

strace1[]:= 4

strace1[gamma[L], ids1___ ]:= 1/2 (strace1[ids1] - strace1[gamma[g5],ids1]);

strace1[gamma[R], ids1___ ]:= 1/2 (strace1[ids1] + strace1[gamma[g5],ids1]);


Clear[tracestandardorder2]
Clear[strace2]

tracestandardorder2[arg_]:=arg//.{strace1->strace2}

strace2[gamma[i_]] := 0 /; noproj[gamma[i]];

strace2[gamma[g5], gamma[j_]] := 0 /; 
(nogamma5[gamma[j]]);

strace2[gamma[i_], gamma[j_], gamma[k_]] := 0 /; 
(nogamma5[gamma[j]]&&nogamma5[gamma[k]]);

(*strace2[gamma[g5], gamma[j_], gamma[k_], gamma[l_], gamma[m_]] := -Ad I levicivita[j,k,l,m]  /; 
(nogamma5[gamma[j]]&&nogamma5[gamma[k]]&&nogamma5[gamma[l]]&&nogamma5[gamma[m]])*)

strace2[gamma[g5], gamma[j_], gamma[k_], gamma[l_], gamma[m_]] := 0  /; 
(nogamma5[gamma[j]]&&nogamma5[gamma[k]]&&nogamma5[gamma[l]]&&nogamma5[gamma[m]]);

strace2[gamma[g5], gamma[j_], gamma[k_], gamma[l_], gamma[m_], gamma[n_], gamma[o_]] := 0  /; 
(nogamma5[gamma[j]]&&nogamma5[gamma[k]]&&nogamma5[gamma[l]]&&nogamma5[gamma[m]]&&nogamma5[gamma[n]]&&nogamma5[gamma[o]]);

strace2[gamma[i_],gamma[j_]] := 4 mt[i, j] /;
( nogamma5[gamma[i]]&& nogamma5[gamma[j]]);

strace2[gamma[i_], gamma[j_], gamma[k_], gamma[l_]] := 
4(mt[i,j] mt[k,l] - mt[i,k] mt[j,l] + mt[i,l] mt[j,k]) /; 
(nogamma5[gamma[i]]&&nogamma5[gamma[j]]&&nogamma5[gamma[k]]&&nogamma5[gamma[l]]);

strace2[gamma[g5], gamma[j_], gamma[k_], gamma[l_]] := 0 /; 
(nogamma5[gamma[j]]&&nogamma5[gamma[k]]&&nogamma5[gamma[l]]);

strace2[gamma[i_], gamma[j_], gamma[k_], gamma[l_], gamma[m_]] := 0 /; 
(nogamma5[gamma[i]]&&nogamma5[gamma[j]]&&nogamma5[gamma[k]]&&nogamma5[gamma[l]]&&nogamma5[gamma[m]]);

strace2[gamma[i_], gamma[j_], gamma[k_], gamma[l_], gamma[m_], gamma[n_], gamma[o_]] := 0 /; 
(nogamma5[gamma[i]]&&nogamma5[gamma[j]]&&nogamma5[gamma[k]]&&nogamma5[gamma[l]]&&nogamma5[gamma[m]]&&nogamma5[gamma[n]]&&nogamma5[gamma[o]]);



(* ::Section:: *)
(*simplification  in  scalar  products*)


SetAttributes[sp, Orderless]
sp[q[1], q[1]] := q[1]^2;
sp[q[2], q[2]] := q[2]^2;
sp[p[i_], p[i_]] := p[i]^2;
sp[-q[a_], q[b_]] := - sp[q[a],q[b]];
sp[q[a_], -q[b_]] := - sp[q[a],q[b]];
sp[-p[a_], p[b_]] := - sp[p[a],p[b]];
sp[p[a_], -p[b_]] := - sp[p[a],p[b]];
sp[a_, - b_] := - sp[a, b];
sp[- a_, b_] := - sp[a, b];

sp[c_, a_ + b_] := sp[c,a] + sp[c,b];


ClearAll[convertsp,ps,qs]

convertsp[x_]:=x//.{p->ps,q->qs}

ps/: ps[a_,ind_]ps[b_,ind_]:=sp[ps[a],ps[b]];
qs/: qs[a_,ind_]qs[b_,ind_]:=sp[qs[a],qs[b]];
qs/: qs[a_,ind_]ps[b_,ind_]:=sp[qs[a],ps[b]];


(* ::Section:: *)
(*slashes  off and simplification*)


SetAttributes[qslash,Orderless]
qslash/: qslash[i_]qslash[i_]:=q[i]^2
SetAttributes[pslash,Orderless]
pslash/: pslash[i_]pslash[i_]:=p[i]^2


 (*
functions to simplify the slashes
*)

ClearAll[counter,offslash]

counter = 100;  

offslash[arg_] := arg /. {
qslash[ind_] :> (
Module[{currentCounter = counter}, 
    counter++; 
    gamma[currentCounter] q[ind, currentCounter]]),
pslash[ind1_]:> (
Module[{currentCounter = counter},    
    counter++;
    gamma[currentCounter] p[ind1, currentCounter]])
    };


(*ClearAll[count,offsp]

count = 1000;  

offsp[arg_] := arg /. {sp[q[ind_],p[ind1_]] :> (Module[{currentCounter = count}, 
    count++; q[ind,currentCounter] p[ind1, currentCounter]])};*)


(*ClearAll[count, offsp]

count = 1000;

offsp[arg_] := arg /. {
  sp[q[ind_], p[ind1_]] :> (
    Module[{currentCounter = count},
      count++;
      q[ind, currentCounter] p[ind1, currentCounter]
    ]),
  sp[p[ind_], p[ind1_]] :> (
    Module[{currentCounter = count},
      count++;
      p[ind, currentCounter] p[ind1, currentCounter]
    ])
};*)



(*ClearAll[count, offsp]

count = 1000;

offsp[expr_] := Module[{f},
  f[e_] := Which[
    
    Head[e] === Plus, Plus @@ (f /@ List @@ e),
    
    Head[e] === Times, Times @@ (f /@ List @@ e),
    
    Head[e] === Power && Head[e[[1]]] === sp && IntegerQ[e[[2]]] && e[[2]] > 0,
      Module[{base = e[[1]], n = e[[2]]},
        Times @@ Table[f[base], {n}]
      ],
    
    MatchQ[e, sp[q[a_], p[b_]]],
      Module[{currentCounter = count},
        count++;
        q[e[[1, 1]], currentCounter] p[e[[2, 1]], currentCounter]
      ],
    
    MatchQ[e, sp[p[a_], p[b_]]],
      Module[{currentCounter = count},
        count++;
        p[e[[1, 1]], currentCounter] p[e[[2, 1]], currentCounter]
      ],
    
    True, e
  ];
  
  f[expr]
];
*)


ClearAll[count, offsp]

count = 100000000;

offsp[expr_] := Module[{f},
  f[Power[sp[a_, b_], n_Integer?Positive]] := 
    Times @@ Table[f[sp[a, b]], {n}]/; (Head[a]==p||Head[b]==p);

  f[sp[q[i_], p[j_]]] := (
    Module[{c = count},
      count++;
      q[i, c] p[j, c]
    ]
  );

(*  f[sp[p[i_], p[j_]]] := (
    Module[{c = count},
      count++;
      p[i, c] p[j, c]
    ]
  );
  
  f[sp[q[i_], q[j_]]] := (
    Module[{c = count},
      count++;
      q[i, c] q[j, c]
    ]
  );*)

  f[Times[a_, b__]] := Times @@ (f /@ {a, b});
  f[Plus[a_, b__]] := Plus @@ (f /@ {a, b});
  f[other_] := other;

  f[expr]
];


(*ClearAll[count, offsp];
count = 1000000;

offsp[expr_] := Module[{f},
  
  f[Power[sp[a_, b_], n_Integer?Positive]] := 
    Times @@ Table[f[sp[a, b]], {n}] /; (MatchQ[a, p[_]] || MatchQ[b, p[_]]);
  
  f[sp[q[i_], p[j_]]] := Module[{c = count}, count++; q[i, c] p[j, c]];
  
  f[Times[args__]] := Times @@ (f /@ {args});
  f[Plus[args__]] := Plus @@ (f /@ {args});
  
  (* generic fallback: descend into any head *)
  f[h_[args___]] := h @@ (f /@ {args});
  
  f[other_] := other;
  
  f[expr]
];
*)
