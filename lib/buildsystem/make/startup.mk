#
# Set make flags, see man pages for details
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-builtin-variables

ifndef VERBOSE
MAKEFLAGS += --no-print-directory
MAKEFLAGS += --silent
VERBOSE_INFO_MESSAGE:= INFO: Running in silent mode: export VERBOSE=1 to change
else
VERBOSE_INFO_MESSAGE:= INFO: Running in verbose mode: unset VERBOSE to change
endif

#
# Define an default number of job slots for parallel make
ifdef NOTPARALLEL
JOB_SLOTS := 1
PARALLEL_INFO_MESSAGE:=INFO: Running in single-threaded mode: unset NOTPARALLEL to change
else
JOB_SLOTS := 8
PARALLEL_INFO_MESSAGE:=INFO: Running in multi-threaded mode: export NOTPARALLEL=1 to change
endif

#
# On the first pass of make, report any useful information
ifndef MAKE_RESTARTS
$(info $(VERBOSE_INFO_MESSAGE))
$(info $(PARALLEL_INFO_MESSAGE))
else
$(info INFO : Make has restarted $(MAKE_RESTARTS) time(s))
endif
