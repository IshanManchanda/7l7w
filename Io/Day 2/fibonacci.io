recursive := method(
	if(call sender doMessage(call message argAt(0)) == 1, 1, 
		if(call sender doMessage(call message argAt(0)) == 2, 1, 
			recursive(call sender doMessage(call message argAt(0)) - 1) + recursive(call sender doMessage(call message argAt(0)) - 2)
		)
	)
)

iterative := method(
	a := 0
	b := 1
	c := 0
	for(i, 2, call sender doMessage(call message argAt(0)), c = a; a = b; b = b + c)
	b
)

recursive(20) println
iterative(20) println