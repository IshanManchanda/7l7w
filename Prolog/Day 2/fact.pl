fact(0, 1) :- !.
fact(X, Y) :-
	X > 0,
	X1 is X - 1,
	fact(X1, Y1),
	Y is X * Y1.