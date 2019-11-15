# Prolog Notes:
* Collection of Facts and Rules we can Query
* Facts/Rules stored in Database/Knowledge Base

* `halt.` - to exit prolog
* `[filename].` compile prolog program

* Fact/Rules a.k.a. Clause
---
### Hello World
```prolog
	?- write('Hello World'), nl,
	write('Let\'s Program').
```
>Hello World
>Let's Program

* Use `nl` for new line
* `write` = print
* `.` for ending a line
---
### Anatomy of a Fact
```prolog
	loves(romeo, juliet).
```
* loves(romeo, juliet). - Fact
* `loves` - Predicate
* `romeo` & `juliet` - Atoms
* in other words - `x(y,z) -> 'y x z'`
* in other words- `loves(romeo, juliet) -> 'romeo loves juliet'`
---
### Anatomy of a Rule
```prolog
:-
```
* Syntax for defining a Rule
* Similar to 'if'
```prolog
loves(juliet, romeo) :- loves(romeo, juliet).
```
* in other words - `x :- y` -> `x is true IF y is true`
* in other words -` loves(juliet, romeo) :- loves(romeo, juliet)` -> `juliet loves romeo IF romeo loves juliet`
* output: `yes` (true)
---
### Anatomy of a Variable
* Object we can't name at the time of execution
* Variable starts with uppercase letter
* Used for querying the database
---
### Anatomy of an Atom
* Atoms start with lowercase letter
---
### Query Terminal
* Query database for an answer
* ex:
```prolog
	?- loves(romeo, X).
```
* Asking database 'Who loves romeo?'
* returns:
```prolog
	X = juliet
```
---
### Deep into Facts
* Write relationship first, followed by paranthesis, followed by dot
* Always start with lowercase letters
* Can contain lowercase/uppercase letters, numbers, symbols(+, - , _, *, /)
* Never start an Atom with underscore
#### Fact Checking:
* Insert facts into database
```prolog
	male(bob).
	male(jim).
	
	female(sam).
	female(may).
```
* Query the database(fact check)
```prolog
	?- female(may).
```
* Returns: `yes` (true)

#### Listing Facts:
* Query the database
```prolog
	?- listing(male).
```
* Returns:
```prolog
	male(jim).
	male(bob).
```
#### Cycle through pairs:
* Query the database
```prolog
	?- male(X), female(Y).
```
* This query will show all combinations of male and female
```prolog
	X = jim
	Y = sam ? ;

	X = jim
	Y = may ? ;

	X = bob
	Y = sam ? ;

	X = bob
	Y = may
	
	yes
```
