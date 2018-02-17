SQLITE  = sqlite3
SOURCES = $(wildcard *.sql)
TARGETS = $(SOURCES:.sql=.db)
DUMPS   = $(SOURCES:.sql=.dump)

all: $(TARGETS)

info:
	@echo "SOURCES: $(SOURCES)"
	@echo "TARGETS: $(TARGETS)"
	@echo "DUMPS:   $(DUMPS)"

%.db: %.sql
	$(RM) $@
	$(SQLITE) $@ < $<

%.dump: %.db
	$(SQLITE) $< .dump > $@

dumps: $(DUMPS)

clean:
	$(RM) $(TARGETS) $(DUMPS)
