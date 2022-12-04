andtest: andtest.o and.o
	ld -g andtest.o and.o -o andtest

andtest.o: andtest.s
	as -g andtest.s -o andtest.o

and.o: and.s
	as -g and.s -o and.o

ortest: ortest.o or.o
	ld -g ortest.o or.o -o ortest

ortest.o: ortest.s
	as -g ortest.s -o ortest.o

or.o: or.s
	as -g or.s -o or.o

sumtest: sumtest.o sum.o
	ld -g sumtest.o sum.o -o sumtest

sumtest.o: sumtest.s
	as -g sumtest.s -o sumtest.o

sum.o: sum.s
	as -g sum.s -o sum.o
