
C = terralib.includec("stdio.h")
terra foo()
	C.printf("hello, world\n")
	C.printf("hello, world\n")
	C.printf("hello, world\n")
	C.printf("hello, world\n")
	C.printf("hello, world\n")
	C.printf("hello, world\n")
	C.printf("hello, world\n")
	C.printf("hello, world\n")
	C.printf("hello, world\n")
	C.printf("hello, world\n")
end

foo:setinlined(true)

terra bar()
	foo()
	return 4 
end

bar:compile()
bar:disas()
