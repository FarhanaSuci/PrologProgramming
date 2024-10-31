course(bangla).
course(english).
course(math).
course(biology).
course(chemistry).

timeslot(sunday,9).
timeslot(monday,8).
timeslot(monday,12).
timeslot(tuesday,10).
timeslot(wednesday,9).
timeslot(wednesday,12).
timeslot(thrusday,9).
timeslot(thrusday,12).

instructor(suci).
instructor(farhana).
instructor(sriti).
instructor(sruti).

schedule(Course,Day,Time,Instructor):-
  course(Course),
  timeslot(Day,Time),
  instructor(Instructor).





