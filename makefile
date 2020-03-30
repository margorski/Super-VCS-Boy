STELLABIN=${K65_PATH}\bin\Stella.exe
K65=${K65_PATH}\bin\k65.exe
FilesList=files.lst

all:  main run

main: 
	$(K65) @$(FilesList)
	_makeprops.bat
	
run:
	$(STELLABIN) -propsfile props.cfg bin\supervcsboy.bin
