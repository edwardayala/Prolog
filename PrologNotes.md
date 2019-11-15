# Prolog Notes:
* Collection of Facts and Rules we can Query
* Facts/Rules stored in Database/Knowledge Base

* halt. - to exit prolog
* [filename]. compile prolog program

* Fact/Rules a.k.a. Clause

### Hello World
	?- write('Hello World'), nl,
	write('Let\'s Program').

	>Hello World
	>Let's Program

* Use 'nl' for new line
* write = print
* '.' for ending a line

### Anatomy of a Fact
	loves(romeo, juliet).

* loves(romeo, juliet). - Fact
* loves - Predicate
* romeo & juliet - Atoms
* in other words - x(y,z) -> 'y x z'
* in other words- loves(romeo, juliet) -> 'romeo loves juliet'

### Anatomy of a Rule
	:-

* Syntax for defining a Rule
* Similar to 'if'
 
	loves(juliet, romeo) :- loves(romeo, juliet).

* in other words - x :- y -> 'x is true IF y is true
* in other words - loves(juliet, romeo) :- loves(romeo, juliet) -> juliet loves romeo IF romeo loves juliet
* output: yes (true)

### Anatomy of a Variable
* Object we can't name at the time of execution
* Variable starts with uppercase letter

### Anatomy of an Atom









