% PLC -  Prolog Assignment | Edward Ayala | Braxton Brown | Suvaik Patel
% Found on https://swish.swi-prolog.org/ || https://swish.swi-prolog.org/p/PLC%20Prolog%20Assignment.pl

% -------------- FACTS --------------

phone(id(z101),name('Samsung Galaxy'),country('Japan'),new_version('S8')).
phone(id(z102),name('LG'),country('Japan'), new_version('G7 ThinQ')).
phone(id(x103),name('Sony'),country('China'), new_version('Xperia XZ2')).
phone(id(x104),name('Samsung'),country('China'), new_version('Galaxy Note8')).
phone(id(x105),name('Sony'),country('Japan'), new_version('Xperia X3')).
phone(id(z106),name('LG'),country('Japan'), new_version('G8')).

% os(OSType,TypeList) - The list of phones by operating system.

os(android,[z101,x103,z106]).
os(iphone,[z102,x104,x105]).

%oscost(OSType,CostList) - The list of phones by unitcost.

ostypecost(android,[1000,2700,2100]).
ostypecost(iphone,[1500,1200,1700]).

% version(phone_id, otherversion) - A list of other versions for the phones.

version(id(z101),[xperia1,v8]).
version(id(z102),[v8,xperia3]).
version(id(x103),[xperia1,xperia2,xperia3]).
version(id(x104),[xperia1,note7]).
version(id(x105),[note7,v8]).
version(id(z106),[note7,xperia2]).

% -------------- RULES --------------

%Useful predicates%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
in_list(X,[X|_]).
in_list(X,[_|T]) :- in_list(X,T).

countList([], 0).
countList([_|T], N) :- countList(T, NT), N is 1+NT.

phone_avg(OSType,Avg):-
    ostypecost(OSType,List),
    sumList(List,sum),
    countList(List,Count),
    Avg is Sum/Count.


phonemax(OSType,Max,Min):-
    ostypecost(Type,List),
    maxList(List,Max),
    minList(List,Min).


sumList([], 0).
sumList([H|T],S) :- sumList(T, NS), S is H + NS.

maxList([E],E).
maxList([H|T],Y):- maxList(T,Y), H < Y,!.
maxList([H|_],H).

minList([E],E).
minList([H|T],Y):- minList(T,Y), H > Y,!.
minList([H|_],H).

% -------------- OUTPUT --------------

list_phones:- write('Name'),write(" "),write('Country'),write(" "),
    write('New Version'),write(" "),write('Operating System'),write(" "),get_details.

get_details:-phone(id(ID), name(Nam), country(Count), new_version(NewVer)),
    os(OSType,List), in_list(ID,List),nl,write(Nam),write(" "),write(Count),write(" "),
    write(NewVer),write(" "),write(OSType),false.

listphoneversion:-write('The following phones are associated with version  ').
phone_version(V):-listphoneversion,write(V),version(id(ID),List),phone(id(ID),name(Nam),_,_),in_list(V,List),
    nl,write(Nam),false.
