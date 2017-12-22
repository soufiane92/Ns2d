#include $(CS2_HOME)/make.inc

FC=gfortran -fdefault-real-8 

SOURCES_F90 =\
module_mesh.f90\
module_discretization.f90\
module_solver.f90

OBJECTS=$(SOURCES_F90:.f90=.o) $(SOURCES_F77:.f=.o)



all: 


.PHONY: clean
clean:
	rm -f *.o *.mod lib*.a *.x

.PHONY: realclean
realclean: clean
	rm -f *~ \#*\#

ns2d: $(OBJECTS)
	$(FC) -o $@.x $@.f90 $(OBJECTS)

%.o: %.f90
	$(FC) $(INCS) $(FCFLAGS) -c $< -o $@

%.o: %.f
	$(FC) $(INCS) $(FCFLAGS) -c $< -o $@
