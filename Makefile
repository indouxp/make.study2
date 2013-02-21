
#SHELLS = $(wildcard *.sh)
SHELLS = tst010.sh tst020.sh
LOGS = $(SHELLS:.sh=.log)

.SUFFIXES: .sh .log
.sh.log:
	./$< > $@

all: $(LOGS)
	@echo $(LOGS)

touch:
	touch $(SHELLS)
