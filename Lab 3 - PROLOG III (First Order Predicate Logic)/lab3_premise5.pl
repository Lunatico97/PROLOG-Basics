
member("Dave","dancing club").
member("Fred","dancing club").
cant_do("Fred's dad","waltz").
cant_do(X,Y):-
	parent(Z,X),
	cant_do(Z,Y).
cant_do(X,"waltz"):-
	member(X,"dancing club"),
	can_do(X,"jive").
cant_do(X,"jive"):-
	member(X,"dancing club"),
	can_do(X,"waltz").
can_do("Dave",X):-
	cant_do("Fred",X).
	parent("Fred's dad","Fred").

% member(X,"dancing club"),cant_do(X,"jive").
