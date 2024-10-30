evenOdd(X):-
  0 is X mod 2,
  write(X),
  write(' is an even number').

evenOdd(X):-
  1 is X mod 2,
  write(X),
  write(' is an odd number').