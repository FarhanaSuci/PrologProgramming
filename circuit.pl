not(0,1).
not(1,0).
and(0,0,0).
and(1,0,0).
and(0,1,0).
and(1,1,1).
nand(0,0,1).
nand(1,0,1).
nand(0,1,1).
nand(1,1,0).
xnor(0,0,1).
xnor(1,0,0).
xnor(0,1,0).
xnor(1,1,1).
dff(0,0,1).
dff(1,1,0).

circuit(A,B,C,Q,R):-
  not(A,T1),
  and(A,B,T2),
  nand(T1,T2,T3),
  xnor(T3,C,T4),
  dff(T4,Q,R).
  




