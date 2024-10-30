leapYear(X):-
   0 is X mod 4,
   \+ 0 is X mod 100,
   write(X),
   write('is leapyear').
leapYear(x):-
   0 is X mod 400,
   write(X),
   write(' is leapYear').
leapYear(X):-
  write(X),
  write(' is not leapYear').

   