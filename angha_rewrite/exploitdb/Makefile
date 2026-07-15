CC=clang
CFLAGS=
LIBS=-lopenblas -lpthread

PROGRAMA = exploit.pgl
CFILE = 17769.c
MLIRFILE = modified.mlir
LLFILE = modified.ll
PATFILE = pat.pat

$(PROGRAMA): $(LLFILE)
	$(CC) $(LLFILE) $(CFLAGS) $(LIBS) -o $(PROGRAMA)

$(LLFILE): $(MLIRFILE)
	cir-translate --cir-to-llvmir $(MLIRFILE) -o $(LLFILE)

$(MLIRFILE): $(CFILE) $(PATFILE)
	smr $(CFILE) $(PATFILE) -o $(MLIRFILE)

clean:
	rm -f $(PROGRAMA) $(MLIRFILE) $(LLFILE)
