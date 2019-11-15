cats([william, gracie, malaki, waffle, oswald, bella]).

solve([William, Gracie, Malaki, Waffle, Oswald, Bella],
      [Tabby, Fat, Good_Boy, Orange, Spotted, Calico]) :-
    % init the professions
    cats(Cats),
    % complete this predicate
    permutation([William, Gracie, Malaki, Waffle, Oswald, Bella], Cats),
    permutation([Tabby, Fat, Good_Boy, Orange, Spotted, Calico], Cats),
    
    % rule 1
   	William \= Tabby, 
    Gracie \= Fat, 
    Malaki \= Good_Boy, 
    Waffle \= Orange,
    Oswald \= Spotted, 
    Bella \= Calico,
    
    % rule 2
    William \= Tabby, 
    Gracie \= Tabby, 
    Malaki \= Orange, 
    Waffle \= Orange,
    Oswald \= Spotted, 
    Bella \= Calico.
	
% used to find types of cats
% william = tabby
% gracie = fat
% malaki = good_boy
% waffle = orange
% oswald = spotted
% bella = calico

% cats([Tabby, Fat, Good_Boy, Orange, Spotted, Calico])
