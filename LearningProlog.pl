% Learning Prolog
% Basic Concepts

% List of items based on 3(n) elements - query produces all possible combinations of elements
?- L = [_,_,_],
member(a,L), member(b,L), member(c,L).

% Notes:
%  > Query
%  > _ is a wildcard character
%  > All one line - two lines for easy readability
%  > member - True if Elem is a member of List
% Output:
% L = [a, b, c]
% L = [a, c, b]
% L = [b, a, c]
% L = [c, a, b]
% L = [b, c, a]
% L = [c, b, a]

% Dictionary [] - query which uses [] syntax to create dictionary structure, creating elements
% 				  using x(_,_) where x is the element variable and _ & _ are dictionary key-values
Dict = [p( one, uno), p( two, dos), p( three, tres)].

% Notes:
%  > "Dict" keyword not needed
%  > 'one' is key for value 'uno'.. etc.
%  > 'p' is element variable
% Output:
% Dict = [p(one, uno), p(two, dos), p(three, tres)]

% Dictionary (continued) - Using syntax member(x(VAR, value)) we can return the key of the dict
% 						   using syntax member(x(key, VAR)) we can return the value of the dict
Dict = [p(one, uno), p(two, dos), p(three, tres)],
member(p(En, tres), Dict),
member(p(one, Sp), Dict).

% Notes:
%  > "member" keyword is needed to access dict member
%  > member - True if Elem is a member of List
%  > All one line - multiple lines for easy readability
% Output:
% Dict = [p(one, uno), p(two, dos), p(three, tres)],
% En = three,
% Sp = uno

