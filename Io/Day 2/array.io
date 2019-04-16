sum_2d := method(
	s := 0
	call sender doMessage(call message argAt(0)) foreach(l,
		l foreach(v, s = s + v)
	)
	s
)

sum_2d(list(list(1, 2, 3), list(4, 5, 6), list(7, 8, 9))) println

average := method(
	s := 0
	list = call sender doMessage(call message argAt(0))
	list foreach(v, s = s + v)
	s / (list size)
)


average(list(1, 2, 3, 4, 5, 6, 7, 8, 9)) println