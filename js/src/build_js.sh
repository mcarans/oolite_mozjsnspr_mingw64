rm -vrf WINNT5.1_OPT.OBJ
make BUILD_OPT=1 JS_DIST=../../nspr4/dist JS_THREADSAFE=1 -fMakefile.ref -j16
make BUILD_OPT=1 JS_DIST=../../nspr4/dist JS_THREADSAFE=1 -fMakefile.ref -j16
as -o WINNT5.1_OPT.OBJ/methodjit/TrampolinemingwX64.o -mtune=generic64 methodjit/TrampolinemingwX64.s
./linkit64.bat