% Define foods
food(pizza).
food(soup).
food(salad).

% Define ingredients for each food
ingredient(pizza, dough).
ingredient(pizza, tomato_sauce).
ingredient(pizza, cheese).
ingredient(soup, broth).
ingredient(soup, vegetables).
ingredient(salad, lettuce).
ingredient(salad, tomatoes).

% Define allergens
allergen(milk).
allergen(wheat).
allergen(gluten).
allergen(shellfish).

% Define which ingredients contain specific allergens
contains_allergen(dough, gluten).
contains_allergen(cheese, milk).
contains_allergen(broth, shellfish). % If broth might contain shellfish
contains_allergen(tomato_sauce, gluten). % If tomato sauce might contain gluten

% Check if a food item contains any allergens for a user with specific allergies
food_contains_allergen(Food, Allergies) :-
    ingredient(Food, Ingredient),
    member(Allergen, Allergies),
    contains_allergen(Ingredient, Allergen).

% Check if a food item is safe for a user with specific allergies
is_safe_food(Food, Allergies) :-
    \+ food_contains_allergen(Food, Allergies).
