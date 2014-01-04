/* Coreen Yuen */

/* twice rule returns true if second argument is a list with 0 or more occurences of the first argument */
twice(_,[]).
twice(X,[X|Ys]) :- twice(X,Ys).
