ifeq ($(OS),Windows_NT)
	STELLABIN=${K65_PATH}\bin\Stella.exe
	MAKEPROPS=_makeprops.bat
else
	STELLABIN=stella
	MAKEPROPS=_makeprops.sh
endif

K65=${K65_PATH}/workdir/k65.exe	
FilesList=files.lst

all:  main run

main: 
	$(K65) @$(FilesList)
	./$(MAKEPROPS)
	
run:
	$(STELLABIN) -tv.phosphor always -propsfile props.cfg bin\supervcsboy.bin
