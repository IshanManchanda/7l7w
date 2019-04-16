count(0, []).
count(Count, [_|Tail]) :-
	count(TailCount, Tail),
	Count is TailCount + 1.

sum(0, []).
sum(Sum, [Head|Tail]) :-
	sum(TailSum, Tail),
	Sum is TailSum + Head.

average(Average, List) :-
sum(Sum, List),
average(Count, List),
Average is Sum / Count.


concatenate([], List, List).
concatenate([Head|Tail1], List, [Head|Tail2]) :- concatenate(Tail1, List, Tail2).


reverse([], []).
reverse([Head|Tail], List) :-
	reverse(Tail, ReversedTail),
	append(ReversedTail, Head, List).

list_min([Min], Min).
list_min([Head, Mid|Tail], Min) :-
	Head =< Mid,
	list_min([Head|Tail], Min).
list_min([Head, Mid|Tail], Min) :-
	Head > Mid,
	list_min([Mid|Tail], Min).