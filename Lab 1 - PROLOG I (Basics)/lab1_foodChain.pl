:-style_check(-singleton).
kills('Termite', '').
kills('Frog', 'Termite').
kills('Snake', 'Frog').
kills('Eagle', 'Snake').

food_chain(A):-
	write(A),
	kills(A, B), write(' -> '),
	food_chain(B).
	
food_chain(''):-
	write('END !').
	
