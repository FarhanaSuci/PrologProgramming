male(khaled).
male(sakib).
male(mustafiz).
male(subro).
female(tina).
female(mina).
female(keya).
female(suci).
female(shreya).
female(sruti).
parents(suci,shreya).
parents(suci,sruti).
parents(suci,subro).
parents(khaled,shreya).
parents(khaled,sruti).
parents(khaled,subro).
parents(shreya,tina).
parents(shreya,mina).
parents(sruti,keya).
parents(subro,sakib).
parents(subro,mustafiz).

mother(X,Y):-
  parents(X,Y),
  female(X).
father(X,Y):-
  parents(X,Y),
  male(X).
sister(X,Y):-
  parents(M,X),
  parents(M,Y),
  female(X),
  X \=Y.
brother(X,Y):-
  parents(M,X),
  parents(M,Y),
  male(X),
  X \=Y.
grandparents(X,Y):-
 parents(M,Y),
 parents(X,M).
grandfather(X,Y):-
  parents(M,Y),
  parents(X,M),
  male(X).
grandmother(X,Y):-
  parents(M,Y),
  parents(X,M),
  female(X).
couples(X,Y):-
  parents(X,M),
  parents(Y,M),
  X\=Y.
cousine(X,Y):-
  grandparents(M,X),
  grandparents(M,Y),
  X \=Y.
siblings(X,Y):-
    parents(Z,X),
    parents(Z,Y),
    X \= Y.
 
 
