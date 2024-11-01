% Define products with their base prices
product(apple, 1.5).
product(banana, 0.5).
product(cherry, 2.0).
product(date, 1.0).

% Define customers with their budgets
customer(alice, 5.0).
customer(bob, 2.0).
customer(charlie, 10.0).

% Define sales history with format: sale(Customer, Product, Quantity).
sale(alice, apple, 2).
sale(alice, banana, 4).
sale(bob, cherry, 1).
sale(charlie, date, 3).
sale(charlie, banana, 10).

% Predicate to calculate the total price of a product based on quantity
total_price(Product, Quantity, TotalPrice) :-
    product(Product, PricePerUnit),
    TotalPrice is PricePerUnit * Quantity.

% Predicate to check if the sale meets the customer's budget
meets_budget(Customer, Product, Quantity, TotalPrice) :-
    total_price(Product, Quantity, TotalPrice),
    customer(Customer, Budget),
    TotalPrice =< Budget.

% Predicate to generate a sales report of sales meeting the customer's budget for a specific product
sales_report(Product, Report) :-
    findall((Customer, Product, Quantity, TotalPrice), 
            (sale(Customer, Product, Quantity),
             meets_budget(Customer, Product, Quantity, TotalPrice)), 
            Report).
