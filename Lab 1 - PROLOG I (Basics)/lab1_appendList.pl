
appendList([], My_list, My_list).
appendList([H|T], My_list, [H|_temp]):-
  	appendList(T, My_list, _temp).
