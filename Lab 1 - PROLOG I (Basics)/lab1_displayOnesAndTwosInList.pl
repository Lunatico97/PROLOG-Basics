
:-style_check(-singleton).
get_list(My_list):-
	write("[ "),
	displayOnesAndTwos(My_list).
displayOnesAndTwos([H|T]):-
	(H =:= 1 ; H =:= 2),
	write(H),
	write(', '),
	displayOnesAndTwos(T).
displayOnesAndTwos([H|T]):-
	displayOnesAndTwos(T).
displayOnesAndTwos([]):-
	write("]").

