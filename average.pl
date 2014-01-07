/* Coreen Yuen */


/* average rule computes the average of a list of numbers */
average(X,Y) :- mysum(X,S), mylength(X,N), N > 0, Y is S/N.

/* average rule helper mysum adds together elements of a list */
mysum([],0).
mysum([X|Xs],S) :- mysum(Xs,S1), S is S1+X.

/* average rule helper mylength computes the length of a list */
mylength([],0).
mylength([_|Xs],N) :- mylength(Xs,N1), N is N1+1.

