(* ::Package:: *)

(* ::Section:: *)
(*tensor  reduction and metric*)


Clear[tred]

tred[q[ind_,i_]]:=0;
tred[q[ind_,i_]q[ind1_,i1_]q[ind2_,i2_]]:=0 ;
tred[q[ind_,i_]q[ind1_,i1_]q[ind2_,i2_]q[ind3_,i3_]q[ind4_,i4_]]:=0 ;
tred[q[ind_,i_]q[ind1_,i1_]q[ind2_,i2_]q[ind3_,i3_]q[ind4_,i4_]q[ind5_,i5_]q[ind6_,i6_]]:=0 ;

tred[q[ind_,i_]q[ind1_,j_]]:=1/d sp[q[ind],q[ind1]] mt[i,j];

tred[q[ind_,i_]q[ind_,j_]q[ind1_,k_]q[ind1_,l_]]:=
1/(d (d^2 + d - 2))((d+1) q[ind]^2 q[ind1]^2 - 2 sp[q[ind],q[ind1]]^2) mt[i,j] mt[k,l] + 
	1/(d (d^2 + d - 2)) (- q[ind]^2 q[ind1]^2 + d sp[q[ind],q[ind1]]^2)*(mt[i,k] mt[j,l] + mt[i,l] mt[j,k])/;(ind=!=ind1)
	


tred[q[ind_,i_]q[ind1_,j_]q[ind1_,k_]q[ind1_,l_]]:=
1/(d^2+2d) sp[q[ind],q[ind1]] q[ind1]^2 (mt[i,j]mt[k,l]+mt[i,l]mt[k,j]+mt[i,k]mt[j,l]) /; (ind=!=ind1)


tred[q[ind_, i_] q[ind_, j_] q[ind_, k_] q[ind_, l_]] :=
  1/(d (d + 2)) q[ind]^4 (mt[i, j] mt[k, l] + mt[i, k] mt[j, l] + mt[i, l] mt[j, k])


(*tred[q[ind_,\[Mu]1_]q[ind_,\[Mu]2_]q[ind_,\[Mu]3_]q[ind_,\[Mu]4_]q[ind1_,\[Mu]5_]q[ind1_,\[Mu]6_]]:=(1/((-1+d) d (2+d) (4+d)))q[ind]^2 (-((mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]6]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]5] mt[\[Mu]4,\[Mu]6]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]5] mt[\[Mu]4,\[Mu]6]-(3+d) (mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]3]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]4]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]4]) mt[\[Mu]5,\[Mu]6]) q[ind]^2 q[ind1]^2)+(d (mt[\[Mu]1,\[Mu]4] (mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]6])+(mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]6]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]6]) mt[\[Mu]4,\[Mu]5]+(mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]5]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]5]) mt[\[Mu]4,\[Mu]6])-4 (mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]3]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]4]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]4]) mt[\[Mu]5,\[Mu]6]) sp[q[ind],q[ind1]]^2-mt[\[Mu]1,\[Mu]6] (mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]5]) (q[ind]^2 q[ind1]^2-d sp[q[ind],q[ind1]]^2)-mt[\[Mu]1,\[Mu]5] (mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]6]+mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]6]) (q[ind]^2 q[ind1]^2-d sp[q[ind],q[ind1]]^2))

tred[q[ind_,\[Mu]1_]q[ind_,\[Mu]2_]q[ind_,\[Mu]3_]q[ind1_,\[Mu]4_]q[ind1_,\[Mu]5_]q[ind1_,\[Mu]6_]]:= (1/((-1+d) d (2+d) (4+d)))sp[q[ind],q[ind1]] (-3 mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]5] q[ind]^2 q[ind1]^2-3 mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]6] mt[\[Mu]4,\[Mu]5] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]6] mt[\[Mu]4,\[Mu]5] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]6] mt[\[Mu]4,\[Mu]5] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]6] mt[\[Mu]4,\[Mu]5] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]5] mt[\[Mu]4,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]5] mt[\[Mu]4,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]5] mt[\[Mu]4,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]5] mt[\[Mu]4,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]3] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]3] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]4] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]4] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]4] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]4] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+(mt[\[Mu]1,\[Mu]4] ((2+d) (mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]6])-2 mt[\[Mu]2,\[Mu]3] mt[\[Mu]5,\[Mu]6])-2 (mt[\[Mu]1,\[Mu]3] (mt[\[Mu]2,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]2,\[Mu]5] mt[\[Mu]4,\[Mu]6]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]5,\[Mu]6])+mt[\[Mu]1,\[Mu]2] (mt[\[Mu]3,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]3,\[Mu]5] mt[\[Mu]4,\[Mu]6]+mt[\[Mu]3,\[Mu]4] mt[\[Mu]5,\[Mu]6]))) sp[q[ind],q[ind1]]^2+mt[\[Mu]1,\[Mu]6] ((-3 mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]4]-3 mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]5]+(1+d) mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]5]) q[ind]^2 q[ind1]^2+((2+d) (mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]5])-2 mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]5]) sp[q[ind],q[ind1]]^2)+mt[\[Mu]1,\[Mu]5] ((-3 mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]4]-3 mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]6]+(1+d) mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]6]) q[ind]^2 q[ind1]^2+((2+d) (mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]6])-2 mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]6]) sp[q[ind],q[ind1]]^2))
*)


tred[q[ind_,\[Mu]1_]q[ind_,\[Mu]2_]q[ind_,\[Mu]3_]q[ind_,\[Mu]4_]q[ind1_,\[Mu]5_]q[ind1_,\[Mu]6_]]:=(1/((-1+d) d (2+d) (4+d)))q[ind]^2 (-((mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]6]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]5] mt[\[Mu]4,\[Mu]6]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]5] mt[\[Mu]4,\[Mu]6]-(3+d) (mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]3]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]4]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]4]) mt[\[Mu]5,\[Mu]6]) q[ind]^2 q[ind1]^2)+(d (mt[\[Mu]1,\[Mu]4] (mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]6])+(mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]6]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]6]) mt[\[Mu]4,\[Mu]5]+(mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]5]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]5]) mt[\[Mu]4,\[Mu]6])-4 (mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]3]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]4]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]4]) mt[\[Mu]5,\[Mu]6]) sp[q[ind],q[ind1]]^2-mt[\[Mu]1,\[Mu]6] (mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]5]) (q[ind]^2 q[ind1]^2-d sp[q[ind],q[ind1]]^2)-mt[\[Mu]1,\[Mu]5] (mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]6]+mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]6]) (q[ind]^2 q[ind1]^2-d sp[q[ind],q[ind1]]^2))

tred[q[ind_,\[Mu]1_]q[ind_,\[Mu]2_]q[ind_,\[Mu]3_]q[ind1_,\[Mu]4_]q[ind1_,\[Mu]5_]q[ind1_,\[Mu]6_]]:= (1/((-1+d) d (2+d) (4+d)))sp[q[ind],q[ind1]] (-3 mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]5] q[ind]^2 q[ind1]^2-3 mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]6] mt[\[Mu]4,\[Mu]5] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]6] mt[\[Mu]4,\[Mu]5] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]6] mt[\[Mu]4,\[Mu]5] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]6] mt[\[Mu]4,\[Mu]5] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]5] mt[\[Mu]4,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]5] mt[\[Mu]4,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]5] mt[\[Mu]4,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]5] mt[\[Mu]4,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]3] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]3] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]4] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]4] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]4] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+d mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]4] mt[\[Mu]5,\[Mu]6] q[ind]^2 q[ind1]^2+(mt[\[Mu]1,\[Mu]4] ((2+d) (mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]6])-2 mt[\[Mu]2,\[Mu]3] mt[\[Mu]5,\[Mu]6])-2 (mt[\[Mu]1,\[Mu]3] (mt[\[Mu]2,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]2,\[Mu]5] mt[\[Mu]4,\[Mu]6]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]5,\[Mu]6])+mt[\[Mu]1,\[Mu]2] (mt[\[Mu]3,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]3,\[Mu]5] mt[\[Mu]4,\[Mu]6]+mt[\[Mu]3,\[Mu]4] mt[\[Mu]5,\[Mu]6]))) sp[q[ind],q[ind1]]^2+mt[\[Mu]1,\[Mu]6] ((-3 mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]4]-3 mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]5]+(1+d) mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]5]) q[ind]^2 q[ind1]^2+((2+d) (mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]5])-2 mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]5]) sp[q[ind],q[ind1]]^2)+mt[\[Mu]1,\[Mu]5] ((-3 mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]4]-3 mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]6]+(1+d) mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]6]) q[ind]^2 q[ind1]^2+((2+d) (mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]6])-2 mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]6]) sp[q[ind],q[ind1]]^2))

tred[q[ind_,\[Mu]1_]q[ind_,\[Mu]2_]q[ind_,\[Mu]3_]q[ind_,\[Mu]4_]q[ind_,\[Mu]5_]q[ind1_,\[Mu]6_]]:= (1/(d (2+d) (4+d)) (mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]6]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]6] mt[\[Mu]4,\[Mu]5]+mt[\[Mu]1,\[Mu]6] (mt[\[Mu]2,\[Mu]5] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]5]+mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]5])+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]5] mt[\[Mu]4,\[Mu]6]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]5] mt[\[Mu]4,\[Mu]6]+mt[\[Mu]1,\[Mu]5] (mt[\[Mu]2,\[Mu]6] mt[\[Mu]3,\[Mu]4]+mt[\[Mu]2,\[Mu]4] mt[\[Mu]3,\[Mu]6]+mt[\[Mu]2,\[Mu]3] mt[\[Mu]4,\[Mu]6])+(mt[\[Mu]1,\[Mu]4] mt[\[Mu]2,\[Mu]3]+mt[\[Mu]1,\[Mu]3] mt[\[Mu]2,\[Mu]4]+mt[\[Mu]1,\[Mu]2] mt[\[Mu]3,\[Mu]4]) mt[\[Mu]5,\[Mu]6]) q[1]^4 sp[q[1],q[2]])


Clear[tredh]
tredh /: tredh[a_]tredh[b_]:=tredh[a b];
tredh /: tredh[a___ q[i_,j_]^2 b___]:= q[i]^2tredh[a b];
tredh /: tredh[a___ q[i_,ind_] b___ q[j_, ind_] c___] := sp[q[i],q[j]] tredh[a b c] ;
tredh /: tredh[1] := 1;


Clear[mt]
Clear[q]
Clear[p]
SetAttributes[mt,Orderless]

mt /: mt[i_, j_] stexdL[a_, x___,gamma[i_],y___]:= stexdL[a, x, gamma[j], y];
mt /: mt[i_, j_] stexdL[a_, x___, gamma[i_], z___, gamma[j_], y___]:= stexdL[a, x, gamma[j], z, gamma[j], y];
mt /: mt[a_, b_] mt[a_,c_]:= mt[b, c];
mt /: mt[a_, b_] q[id_, a_]:= q[id, b];
mt /: mt[a_, b_] p[id_, a_]:= p[id, b];
(*mt /: mt[a_, b_] extmom1[p[id_, a_]]:= extmom1[p[id, b]];*)
(*mt /: mt[a_, b_] extmom[p[id_, a_]]:= extmom[p[id, b]];*)
mt /: mt[i_, i_]:=d;
mt /: mt[i_, j_]^2:=d;

q /: q[ind_, ind1_]^2:= q[ind]^2
p /: p[ind_, ind1_]^2:= p[ind]^2


oper[arg_]:=Collect[arg,{_stexdL}]//.

{stexdL[{phi[12],phi[11]},gamma[R],gamma[a_],gamma[b_],gamma[c_],gamma[d_],gamma[e_]]
stexdL[{phi[21],phi[22]},gamma[R],gamma[a_],gamma[b_],gamma[c_],gamma[d_],gamma[e_]]:> Ev5}//.

{stexdL[{phi[12],phi[11]},gamma[R],gamma[a_],gamma[b_],gamma[c_]]
stexdL[{phi[21],phi[22]},gamma[R],gamma[a_],gamma[b_],gamma[c_]]:> Ev3(* + (16 - a1mu * e)Op*)}//.

{stexdL[{phi[12],phi[11]},gamma[R],gamma[a_]]stexdL[{phi[21],phi[22]},gamma[R],gamma[a_]]:> Op}


oper1[arg_]:=Collect[arg,{_stexdL}]//.

{stexdL[{phi[12],phi[11]},gamma[R],gamma[a_],gamma[b_],gamma[c_],gamma[d_],gamma[e_]]
stexdL[{phi[21],phi[22]},gamma[R],gamma[a_],gamma[b_],gamma[c_],gamma[d_],gamma[e_]]:> Ev5}//.

{stexdL[{phi[12],phi[11]},gamma[R],gamma[a_],gamma[b_],gamma[c_]]
stexdL[{phi[21],phi[22]},gamma[R],gamma[a_],gamma[b_],gamma[c_]]:> Ev3 (*+ (16 - a1mu * e)Op*)}//.

{stexdL[{phi[12],phi[11]},gamma[R],gamma[a_]]stexdL[{phi[21],phi[22]},gamma[R],gamma[a_]]:> Op}
