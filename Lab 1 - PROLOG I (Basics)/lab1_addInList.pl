
addInList([], Sum):-
	Sum is 0.
addInList([H|T], Sum) :-
	addInList(T, Prev_sum),
	Sum is H + Prev_sum.
	
	
