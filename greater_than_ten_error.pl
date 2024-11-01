%Identify and correct the errors in the greater_than_ten predicate.
% greater_than_ten(Number) succeeds if Number is a number and is greater than 10.
greater_than_ten(Number) :-
    number(Number),  % Checks if input is numeric
    Number > 10.
