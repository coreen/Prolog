/* Coreen Yuen */


/* twice rule returns true if second argument is a list with 0 or more occurences of the first argument */
/* edge case */
twice(_,[]).
/* general case */
twice(X,[X|Ys]) :- twice(X,Ys).


/* unit tests */
:- begin tests(twice).

/* empty list, should succeed */
test(twice1,[nondet]) :- twice(hello,[]).
/* list with a non-repeat, should fail */
test(twice2,[fail]) :- twice(world,[world,world,hello]).
/* list with only repeats, should succeed */
test(twice3,[nondet] :- twice(hello,[hello,hello,hello,hello]).

:- end_tests(twice).

/* run the unit tests */
:- run_tests.
