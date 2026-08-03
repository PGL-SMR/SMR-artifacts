CC=clang
CFLAGS=
LIBS=-lopenblas -lpthread

PROGRAMA = darknet_dot
CFILE = main.c
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
