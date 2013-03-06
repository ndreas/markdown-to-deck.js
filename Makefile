PRESENTATIONS := $(wildcard *.md)
OBJS := $(patsubst %.md, %, $(PRESENTATIONS))
PANDOC_FLAGS = -t dzslides --data-dir ./data

all: $(OBJS)
	@echo Built all presentations

clean:
	rm *.html

%:
	pandoc $(PANDOC_FLAGS) -s $@.md -o $@.html

