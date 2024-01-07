
%PREDICATES
bigger(integer, integer, integer).

%CLAUSES
bigger(X, Y, Z):- X>Y, Z=X.
bigger(X, Y, Z):- X<Y, Z=Y.

%GOALS
bigger(5, 7, X).
