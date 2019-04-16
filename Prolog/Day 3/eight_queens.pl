:- use_module(library(clpfd)).


valid([]).
valid([Head|Tail]) :-
	all_distinct(Head),
	valid(Tail).


valid_queen((Row, Col)) :-
	Range = [1, 2, 3, 4, 5, 6, 7, 8],
	member(Row, Range),
	member(Col, Range) .

cols([], []).
cols([(_, Col)|QueensTail], [Col|ColsTail]) :- cols(QueensTail, ColsTail).

rows([], []).
rows([(Row, _)|QueensTail], [Row|RowsTail]) :- rows(QueensTail, RowsTail).

diags_WE([], []).
diags_WE([(Row, Col)|QueensTail], [Diagonal|DiagonalsTail]) :-
	Diagonal is Col - Row,
	diags_WE(QueensTail, DiagonalsTail).

diags_EW([], []).
diags_EW([(Row, Col)|QueensTail], [Diagonal|DiagonalsTail]) :-
	Diagonal is Col + Row,
	diags_EW(QueensTail, DiagonalsTail).


valid_board([]).
valid_board([Head|Tail]) :- valid_queen(Head), valid_board(Tail).

queens(Puzzle) :-
	length(Puzzle, 3),
	valid_board(Puzzle),
	cols(Puzzle, Cols), rows(Puzzle, Rows),
	diags_EW(Puzzle, Diags_EW), diags_WE(Puzzle, Diags_WE),
	valid([Rows, Cols, Diags_WE, Diags_EW]).