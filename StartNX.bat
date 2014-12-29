:: Startet Siemens NX und aktualisiert vorher die Werkzeugdatenbank und das Maschinenmodell der BZT PFX-500


@COLOR 0A

:: Variablen:
@set repo=E:\Dokumente\dev\NXtoolDatabase
@set nx9="C:\Program Files\Siemens\NX 9.0"
@set lib="C:\Program Files\Siemens\NX 9.0\MACH\resource\library"


@echo off
echo Guten Tag!
pause

:: prüfe ob schon eine Backupdatei existiert...

if exist %nx9%\MACH\resource\library\tool\metric\tool_database.dat.orig (
	@echo "alles ok. Update Datenbanken"
	goto normal
) else (
	@echo "noch keine Backups angelegt.. ei ei"
	goto firstrun
)



:: Erster Lauf - Backup machen
:firstrun
@echo firstrun
@copy %lib%\tool\metric\tool_database.dat %lib%\tool\metric\tool_database.dat.orig
qcopy %lib%\tool\metric\holder_database.dat %lib%\tool\metric\holder_database.dat.orig
@copy %lib%\feeds_speeds\ascii\tool_materials.dat %lib%\feeds_speeds\ascii\machining_data.dat.orig
@copy %lib%\feeds_speeds\ascii\tool_machining_data.dat %lib%\feeds_speeds\ascii\tool_machining_data.dat.orig

goto normal


:: Normale Verwendung - Dateien kopieren
:normal
@echo normal
@copy %repo%\files\tool_database.dat %lib%\tool\metric\
@copy %repo%\files\holder_database.dat %lib%\tool\metric\
@copy %repo%\files\tool_materials.dat %lib%\feeds_speeds\
@copy %repo%\files\tool_machining_data.dat %lib%\feeds_speeds\

goto start


:: aktualisieren des Maschinenmodells und start des Programms 
:start
@cd "C:\Program Files\Siemens\NX 9.0\UGII\"
@call "C:\Program Files\Siemens\NX 9.0\UGII\ugraf.exe" -nx

goto ende

:: ende des Pr0gramms...
:ende
:: nichts mehr zu tun.
exit