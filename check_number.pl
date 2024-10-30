checkNumber(X):-
     X>0,
     write(X),
     write(' is a positive number').
checkNumber(X):-
     X<0,
     write(X),
     write(' is  a negative number').
checkNumber(X):-
     X=0,
     write(X),
     write(' is a zero').
