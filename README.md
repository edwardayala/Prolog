<div style="text-align:center"><img src="https://camo.githubusercontent.com/60bbbdf4fe36938bee8b1ead8268a206bc504ee9/687474703a2f2f7777772e7377692d70726f6c6f672e6f72672f69636f6e732f737769706c2e706e67"/></div>

# Prolog Notes:
### Basic Notes
* Collection of Facts and Rules we can Query
* Facts/Rules stored in Database/Knowledge Base
* `halt.` - to exit prolog
* `[filename].` compile prolog program
* Fact/Rules a.k.a. Clause
* Predicates - used to keep commands brief

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
* Similar to conditional statement
	* `:-` = **IF**
	* `,` = **AND**
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
* Can contain lowercase/uppercase letters, numbers, symbols(+, - , _ , * , / )
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

##### side-note:  when `?` appears, it means there are more pairs to show, enter `;` to show the next pair until there are none left to show *(prevalent in OSX Prolog)*

### Deep into Rules:
* Use rules when a fact depends on group of other facts
* Reminder: 

`:-` = **IF** 

`,` = **AND**


```prolog
% Fact 1:
loves(romeo, juliet).
% Rule 1:
loves(juliet, romeo) :- loves(romeo, juliet).

% More Facts:
happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

% Rule:
runs(albert) :-
	happy(albert).
```


 Rundown:
* Fact 1: Romeo *loves* Juliet
* Rule 1: Juliet *loves* Romeo **IF** Romeo *loves* Juliet 
* More Facts:
	* Albert is *Happy*
	* Alice is *Happy*
	* Bob is *Happy*
	* Bill is *Happy*
	* Alice is *With_Robert*
* Rule: Albert *runs* **IF** Albert is *Happy*

```prolog
?- runs(albert).

yes
```

-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-

```prolog
% New Rule:
dances(alice) :-
	happy(alice),
	with_albert(alice).
```
Rundown:
* New Rule: Alice *dances* **IF** Alice is *With_Albert*


```prolog
?- dances(alice)

yes
```

-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-


```prolog
% New New Rule(Predicate):
does_alice_dance :- dances(alice),
	write('When Alice is happy and with Albert she dances').

% New Broken Rule:
swims(bob) :-
	 happy(bob),
	 near_water(bob).
```


Rundown:
* New New Rule(Predicate): `does_alice_dance`
	* Checks **IF** `dances(alice)` is true
		* Alice is *dancing*
	* If true, print: `When Alice is happy and with Albert she dances`
* New Broken Rule: `swims(bob)`
	* Checks **IF** `happy(bob)` is true
		* Bob is *happy*
	* **AND** 
	* Checks **IF** `near_water(bob)`
		* Bob is *near water*
	* This rule is broken because `near_water()` *Fact* is not defined
	* This can be fixed by defining `near_water()` Fact:
	
	
```prolog
near_water(bob).
```


```prolog
?- does_alice_dance.

yes
When Alice is happy and with Albert she dances
```

---
### Printing
Using `write('...')`:
```prolog
write('The Quick Brown Fox Jumps Over The Lazy Dog.')
```
Prints:
```prolog
The Quick Brown Fox Jumps Over The Lazy Dog.
``` 
Using `format('...',[... , ...])`:
```prolog
printSomething(X,Y,Z) :- format('~w is a ~w ~w', [X, Y, Z]).
```
Query:
```prolog
?- printSomething(prolog, fun, language).
```
Prints:
```
prolog is a fun language
```
