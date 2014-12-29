# NXtoolDatabase
*eine kostenlose und einfach zu managende Werkzeug- und Materialdatenbank für Siemens NX*

## Was ist die NXtoolDatabase?
Die NXtoolDatabase ist eine Datenbank voller Fräser und Bohrer für das CAD/CAM-Programm *Siemens NX*, das einerseits ein sehr gutes CAD-Programm und andererseits eine vielseitig konfigurierbare CAM-Suite (computer aided manufacturing). Dafür werder Werkzeuge und Materialien benötigt, die nicht im Programm enthalten sind.
Die toolDatabase enthält Werkzeuge zum Fräsen und Drehen (*noch nich*) sowie Materialien und die nötigen Schnittdaten - eben alles, was man sonst aufwändig und vor allem jedes mal bei der Erstellung des CNC-Programms neu eingeben muss.

## Wer kann die NXtoolDatabase verwenden?
Jeder, der Siemens NX nutzen kann und damit nicht nur 3d-Modelle erstellt, sondern auch CNC Programme.

## Wie verwende ich die toolDatabase und wo sollen die Dateien hin?
Die Dateien müssen vor dem Start von NX in den Installationsordner kopiert werden - dazu ist das batchfile zu verwenden, das du im Repo auf oberster Ebene findest.
Es kopiert nur die Datenbankdateien über die Orginaldateien, wobei es ein mal (beim ersten Ausführen) eine Kopie der Orginaldateien anlegt und startet dann NX.

### Nötige Anpassungen vor der ersten Verwendung:
* Vollzugriffsrechte am Ordner **MECH** beschaffen. Der Ordner ist unter "C:\Program Files\Siemens\NX 9.0" zu finden.
* erstellen einer Verknüpfung zur batchdatei *StartNX.bat*, die im Repo auf der obersten Ebene zu finden ist. z.B. auf dem Windows-Desktop (die Datei wird der Programmstarter)
* Anpassen der Variablen *repo*, *nx9* und *lib* in der batchdatei auf das eigene System

### Was noch?
nichts. Doppelklick die batchdatei und schau selbst, ob NX startet und die Werkzeuge da sind.
Wenn nicht, schau zuerst, ob die Windows-Konsole einen Fehler geworfen hat und kontrolliere auch, ob die Variablen richtig konfiguriert sind! 

#### TODOs?
ja sicher!

Es wäre schön, noch ein **git pull** mit in die batchdatei einzubauen, dass sich mit einem Klick zuerst das Repository aktualisiert, dann die Dateien korrekt in den NX-Programmordner kopiert werden und dann schließlich das Programm gestartet wird.
