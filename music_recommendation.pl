artist(john).
artist(bob).
artist(henry).
artist(alice).

genre(rock).
genre(country).
genre(pop).
genre(rap).

like(suci,henry,rock).
like(suci,bob,country).
like(suci,henry,rap).
like(suci,alice,pop).
like(suci,alice,rap).

like(sumi,henry,rock).
like(sumi,bob,country).
like(sumi,henry,rap).
like(sumi,alice,pop).
like(sumi,alice,rap).

recommend_artist(User,Artist,Genre):-
  like(User,_,Genre),
  genre(Genre),
  like(User,Artist,Genre).
recommend_report(User):-
  recommend_artist(User,Artist,Genre),
  write(Artist),
  write(' '),
  write(Genre),
  writeln(' Recommended'),fail.
   
  

    