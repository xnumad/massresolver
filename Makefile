
all: massresolver

massresolver: massresolver.c
	$(CC) -O2 -o massresolver massresolver.c -lunbound -lldns -DUSE_LOCALHOST=1 -DMAX_RUNNING=750 -DQTYPE=LDNS_RR_TYPE_ANY

clean:
	rm -f massresolver

distclean: clean
