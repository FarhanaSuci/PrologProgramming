% Available customer
customer(suci,50000).
customer(ajmir,30000).
customer(sumi,20000).
customer(majeda,2000).
customer(aminul,200).

%Available Product
product(laptop,30000).
product(shoes,2000).
product(watch,2000).
product(keyboard,500).

sale(suci,labtop,1).
sale(ajmir,shoes,5).
sale(sumi,watch,5).
sale(aminul,keyboard,1).

price(Customer,Product,Price,Quantity):-
  customer(Customer,Budget),
  product(Product,UnitPrice),
  sale(Customer,Product,Quantity),
  Price is UnitPrice * Quantity,
  Price =< Budget.

sales_report(Customer):-
  price(Customer,Product,Price,Quantity).
  


  
  



