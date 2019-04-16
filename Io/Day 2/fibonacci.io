recursive := method(
	n := call sender doMessage(call message argAt(0))
	if(n == 1, 1, 
		if(n == 2, 1, 
			recursive(n - 1) + recursive(n - 2)
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