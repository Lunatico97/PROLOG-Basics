:-style_check(-singleton).

deleteFromList(Item, [Item], []).
deleteFromList(Item, [Item|My_list], My_list).
deleteFromList(Item, [H|My_list], [H|Temp_list]):-
	deleteFromList(Item, My_list, Temp_list).
