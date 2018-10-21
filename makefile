default:
	@echo "No targets specified."
%.c.out: %.c
	gcc -g -o $@ $<
%.cpp.out: %.cpp
	g++ -g -o $@ $<
%.C.out: %.C
	g++ -g -o $@ $<
%.out: %
	cp $< $@
	chmod +x $@
