test:
	./test.sh
watch:
	find . -name '*.sh' -not -path "./vendor/*" | entr ./test.sh

.PHONY: test watch
