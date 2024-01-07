:-style_check(-singleton).
findLength([], Length):-
	Length is 0.
findLength([H|T], Length):- 
	findLength(T, Count),
	Length is Count + 1.

