% Base case: The sum of an empty list is 0.
% Debug a faulty program that is intended to find the sum of elements in a list.
sum_list([], 0).

% Recursive case: Check if the head is a number, then proceed.
sum_list([Head|Tail], Sum) :-
    number(Head),               % Ensures the head is a number
    sum_list(Tail, TailSum),    % Recursively find the sum of the tail
    Sum is Head + TailSum.       % Add the head to the sum of the tail
