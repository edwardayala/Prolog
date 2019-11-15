%goofs - goofy programs

%----------suppress errors--------------
:- discontiguous is_cat/1.
:- discontiguous loves/2.
%---------------------------------------

% Fact 1.0: Edward feeds Cats
feeds(edward, X).
% Fact 1.1: Edward loves Cats
loves(edward, cats).
% Rule 1: Cats love Edward _IF_ Edward feeds Cats
loves(cats, edward) :- feeds(edward, cats).

% Rule 2: X loves Edward _IF_ Edward feeds X
loves(X, edward) :- feeds(edward, X).

% Fact 2: Gracie is a Cat
is_cat(gracie).
% Rule 2 (Predicate): Gracie is a fat cat _IF_ Gracie is a Cat _AND_ Edward feeds Cats
is_gracie_a_fat_cat :- is_cat(gracie),
    feeds(edward, cats),
    write('Gracie is a very fat cat.').

% Fact 3: Malaki is a Cat
is_cat(malaki).
is_cute(malaki).
% Rule 3: 'Overloaded' rules - describe each cat
% * _IF_ cat is a cat _AND_ is cute -> it is a good boy
% * _IF_ Edward feeds a cat -> it is a fat cat
desc_cat(X) :- 
    is_cat(X),
    is_cute(X),
    format('~w is a ~s', [X,'good boy']).
desc_cat(X) :- 
    feeds(edward,X),
    format('~w is a ~s', [X,'fat cat']).