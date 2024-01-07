

%PREDICATES
hcf(integer, integer, integer).

%CLAUSES
hcf(X, Y, Z) :- X=:=Y, Z is X ;
		X>Y, hcf(X-Y, Y, Z) ;
		X<Y, hcf(X, Y-X, Z).

