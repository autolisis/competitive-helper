default:
	@echo "No targets specified."
%.out: %
	cp $< $@
	chmod +x $@
