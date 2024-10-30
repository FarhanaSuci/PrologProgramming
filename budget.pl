destination(paris,1000).
destination(london,1200).
destination(tokyo,1500).
destination(newYork,1300).
destination(losAngeles,1100).
destination(sydney,1400).

activity(sightSeeing,50).
activity(shopping,100).
activity(foodTesting,75).
activity(beach,25).
activity(hiking,30).
activity(museum,40).

recommend(Destination,Activity):-
    destination(Destination,DestinationCost),
    activity(Activity,ActivityCost),
    TotalCost is DestinationCost + ActivityCost,
    write('Enter Your Budget '),
    read(Budget),
    Budget >= TotalCost.
    