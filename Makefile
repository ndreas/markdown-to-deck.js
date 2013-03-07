PRESENTATIONS := $(wildcard *.md)
OBJS := $(patsubst %.md, %, $(PRESENTATIONS))
PANDOC_FLAGS = -t dzslides --data-dir ./data
PANDOC_VARS = -V deck-path:data/deck.js/

all: $(OBJS)
	@echo Built all presentations

clean:
	rm *.html

%:
	pandoc $(PANDOC_FLAGS) $(PANDOC_VARS) -s $@.md -o $@.html

