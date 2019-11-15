father(anakinSkywalker, lukeSkywalker).
father(unknown, anakinSkywalker).
father(ruweeNaberrie, padmeNaberrie).
father(hanSolo, benSolo).

mother(padmeNaberrie, lukeSkywalker).
mother(shmiSkywalker, anakinSkywalker).
mother(jobalNaberrie, padmeNaberrie).
mother(padmeNaberrie, leiaOrgana).
mother(leiaOrgana, benSolo).

parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).

% father(X, aName) 	 ex: ?- father(FATHER, anakinSkywalker) will return anakinSkywalker's father
% mother(X, aName) 	 ex: ?- mother(MOTHER, anakinSkywalker) will return anakinSkywalker's mother
% parent(X, aName) 	 ex: ?- parent(PARENT, lukeSkywalker) will return lukeSkywalker's parents
% ancestor(X, aName) ex: ?- ancestor(ANCESTOR,benSolo) will return parents, great-grandparents, & grandparents
