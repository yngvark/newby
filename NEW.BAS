'
'
'
'
'           Dette spillet er laget av Yngvar Kristiansen
'
'           Bes›k min hjemmeside p†: http://biosys.net/yk
'           eller send meg post p†: yngvark@usa.net
'
'
'           Trykk F5 for † starte
'
'
'
'
'
'
' Ver 3.63

DECLARE SUB cya ()

RANDOMIZE TIMER
no = 1
Innsats% = 1
Penger% = 50
Bank:
gev% = 0
gevinst% = 0
CLS
IF Penger% <= 0 THEN GOTO Fer
COLOR 10, 0
LOCATE 2, 1: PRINT "Du har"; Penger%; "Kroner"
LOCATE 1, 1: INPUT "Hvor mange kroner legger du p†? ", bink%
IF bink% = 0 THEN GOTO move
IF bink% >= Penger% + 1 THEN GOTO FLP
Penger% = Penger% - bink%
GOTO Start1
Start:
IF i% = 1 AND a% = 1 AND y% = 1 THEN GOTO Win
IF i% = 2 AND a% = 2 AND y% = 2 THEN GOTO Win
IF i% = 3 AND a% = 3 AND y% = 3 THEN GOTO Win
IF i% = 4 AND a% = 4 AND y% = 4 THEN GOTO Win
IF i% = 5 AND a% = 5 AND y% = 5 THEN GOTO Win
IF i% = 6 AND a% = 6 AND y% = 6 THEN GOTO Win
IF i% = 7 AND a% = 7 AND y% = 7 THEN GOTO Win

Start1:
Start2:
tfq% = 0
IF NOT wwxxee = 0 THEN tfq = wwxxee
www2xe = www2xe + 1
IF ww2xe = INT(RND * 45) THEN GOTO Flax
wwxxee = 2
Start4:
IF bink% = 9 AND Innsats% >= 10 THEN Innsats% = 9
IF bink% = 8 AND Innsats% >= 9 THEN Innsats% = 8
IF bink% = 7 AND Innsats% >= 8 THEN Innsats% = 7
IF bink% = 6 AND Innsats% >= 7 THEN Innsats% = 6
IF bink% = 5 AND Innsats% >= 6 THEN Innsats% = 5
IF bink% = 4 AND Innsats% >= 5 THEN Innsats% = 4
IF bink% = 3 AND Innsats% >= 4 THEN Innsats% = 3
IF bink% = 2 AND Innsats% >= 3 THEN Innsats% = 2
IF bink% = 1 AND Innsats% >= 2 THEN Innsats% = 1

IF gev% = 9 AND Innsats% >= 10 THEN Innsats% = 9
IF gev% = 8 AND Innsats% >= 9 THEN Innsats% = 8
IF gev% = 7 AND Innsats% >= 8 THEN Innsats% = 7
IF gev% = 6 AND Innsats% >= 7 THEN Innsats% = 6
IF gev% = 5 AND Innsats% >= 6 THEN Innsats% = 5
IF gev% = 4 AND Innsats% >= 5 THEN Innsats% = 4
IF gev% = 3 AND Innsats% >= 4 THEN Innsats% = 3
IF gev% = 2 AND Innsats% >= 3 THEN Innsats% = 2
IF gev% = 1 AND Innsats% >= 2 THEN Innsats% = 1

COLOR 12, 0
CLS
START3:
IF bink% <= 0 THEN : bink% = 0: LOCATE 4, 11: PRINT bink%
IF bink% <= 0 AND gev% <= 0 THEN GOTO Bank

res% = 0
LOCATE 1, 1: PRINT "Space = Start   U = Utbetal    S = Skift innsats   A = Avlsutt    G = Gevinster"
COLOR 10
LOCATE 23, 1: PRINT "L = Hente penger fra en fil  V = Lagre pengene du har  D = Slette en lagret fil"
COLOR 12
LOCATE 3, 1: PRINT "Du har   ="; Penger%
LOCATE 4, 1: PRINT "Bank     ="; bink%
LOCATE 5, 1: PRINT "Gevinst  ="; gev%
LOCATE 6, 1: PRINT "Innsats  ="; Innsats%

hei = TIMER

DO
IF i% = 1 AND a% = 1 AND y% = 1 THEN GOTO Win
IF i% = 2 AND a% = 2 AND y% = 2 THEN GOTO Win
IF i% = 3 AND a% = 3 AND y% = 3 THEN GOTO Win
IF i% = 4 AND a% = 4 AND y% = 4 THEN GOTO Win
IF i% = 5 AND a% = 5 AND y% = 5 THEN GOTO Win
IF i% = 6 AND a% = 6 AND y% = 6 THEN GOTO Win
IF i% = 7 AND a% = 7 AND y% = 7 THEN GOTO Win
r$ = INKEY$
SELECT CASE LCASE$(r$)

CASE CHR$(9): GOTO Rull
CASE CHR$(32): GOTO Rull
CASE "g": GOTO GevHelp
CASE "u": GOTO Utbetal
CASE "s": GOTO Si
CASE "a": GOTO move
CASE "v": GOTO Save
CASE "l": GOTO Hent
CASE "d": GOTO delite

CASE CHR$(13)
IF LCASE$(kode$) = "new7th" THEN GOTO seventh
LOCATE 2, 1: PRINT STRING$(80, 32)
kode$ = ""

CASE CHR$(48) TO CHR$(122)
kode$ = kode$ + r$

CASE ELSE
IF NOT no = 0 GOTO hei
COLOR 12
seventh:
kode$ = ""
DO
r = TIMER - hei

IF r > .3 THEN
IF orn = 0 THEN
IF i% < 7 THEN i% = i% + 1
IF i% > 7 THEN i% = i% - 1
IF i% = 7 THEN orn = 1
LOCATE 9, 10: PRINT i%
END IF

IF orn = 1 THEN
IF a% < 7 THEN a% = a% + 1
IF a% > 7 THEN a% = a% - 1
IF a% = 7 THEN orn = 2
LOCATE 9, 10: PRINT i%; a%
END IF

IF orn = 2 THEN
IF y% < 7 THEN y% = y% + 1
IF y% > 7 THEN y% = y% - 1
IF y% = 7 THEN no = 1: orn = 0
LOCATE 9, 10: PRINT i%; a%; y%

END IF
hei = TIMER
END IF
LOOP WHILE INKEY$ = ""


hei:

END SELECT
LOOP

Rull:
IF bink% = 9 AND Innsats% >= 10 THEN Innsats% = 9
IF bink% = 8 AND Innsats% >= 9 THEN Innsats% = 8
IF bink% = 7 AND Innsats% >= 8 THEN Innsats% = 7
IF bink% = 6 AND Innsats% >= 7 THEN Innsats% = 6
IF bink% = 5 AND Innsats% >= 6 THEN Innsats% = 5
IF bink% = 4 AND Innsats% >= 5 THEN Innsats% = 4
IF bink% = 3 AND Innsats% >= 4 THEN Innsats% = 3
IF bink% = 2 AND Innsats% >= 3 THEN Innsats% = 2
IF bink% = 1 AND Innsats% >= 2 THEN Innsats% = 1

IF gev% = 9 AND Innsats% >= 10 THEN Innsats% = 9
IF gev% = 8 AND Innsats% >= 9 THEN Innsats% = 8
IF gev% = 7 AND Innsats% >= 8 THEN Innsats% = 7
IF gev% = 6 AND Innsats% >= 7 THEN Innsats% = 6
IF gev% = 5 AND Innsats% >= 6 THEN Innsats% = 5
IF gev% = 4 AND Innsats% >= 5 THEN Innsats% = 4
IF gev% = 3 AND Innsats% >= 4 THEN Innsats% = 3
IF gev% = 2 AND Innsats% >= 3 THEN Innsats% = 2
IF gev% = 1 AND Innsats% >= 2 THEN Innsats% = 1

LOCATE 6, 11: PRINT Innsats%
COLOR 14, 0
IF bink% <= 0 THEN gev% = gev% - Innsats%: GOTO Kh
bink% = bink% - Innsats%
Kh:
IF bink% <= 0 AND Penger% >= 1 THEN COLOR 12, 0: LOCATE 4, 1: PRINT "Bank     ="; bink%: COLOR 28, 0: LOCATE 5, 11: PRINT gev%: GOTO Ykk
LOCATE 4, 11: PRINT bink%
IF bink% <= 0 THEN COLOR 28: LOCATE 5, 11: PRINT gev%
Ykk:
COLOR 12, 0

DO
i% = INT(RND * 10)
LOCATE 9, 10: PRINT i%; i%; i%
LOOP WHILE INKEY$ = ""
IF i% = 0 THEN LOCATE 9, 17: PRINT "B"

DO
a% = INT(RND * 10)
LOCATE 9, 10: PRINT a%; a%
LOOP WHILE INKEY$ = ""
IF a% = 0 THEN LOCATE 9, 14: PRINT "B"

DO
y% = INT(RND * 10)
LOCATE 9, 10: PRINT y%
LOOP WHILE INKEY$ = ""
IF y% = 0 THEN LOCATE 9, 11: PRINT "B"

Stepp:
IF i% = 0 AND a% = 0 AND y% = 0 THEN GOTO WinBank
IF i% = 1 AND a% = 1 AND y% = 1 THEN GOTO Win
IF i% = 2 AND a% = 2 AND y% = 2 THEN GOTO Win
IF i% = 3 AND a% = 3 AND y% = 3 THEN GOTO Win
IF i% = 4 AND a% = 4 AND y% = 4 THEN GOTO Win
IF i% = 5 AND a% = 5 AND y% = 5 THEN GOTO Win
IF i% = 6 AND a% = 6 AND y% = 6 THEN GOTO Win
IF i% = 7 AND a% = 7 AND y% = 7 THEN GOTO Win
IF i% = 8 AND a% = 8 AND y% = 8 THEN GOTO Win
IF i% = 9 AND a% = 9 AND y% = 9 THEN GOTO Win

COLOR 15

tall = 14

COLOR 14
LOCATE 10, tall: PRINT ""
COLOR 10

DO

IF i% = 0 AND a% = 0 AND y% = 0 THEN GOTO WinBank
IF i% = 1 AND a% = 1 AND y% = 1 THEN GOTO Win
IF i% = 2 AND a% = 2 AND y% = 2 THEN GOTO Win
IF i% = 3 AND a% = 3 AND y% = 3 THEN GOTO Win
IF i% = 4 AND a% = 4 AND y% = 4 THEN GOTO Win
IF i% = 5 AND a% = 5 AND y% = 5 THEN GOTO Win
IF i% = 6 AND a% = 6 AND y% = 6 THEN GOTO Win
IF i% = 7 AND a% = 7 AND y% = 7 THEN GOTO Win
IF i% = 8 AND a% = 8 AND y% = 8 THEN GOTO Win
IF i% = 9 AND a% = 9 AND y% = 9 THEN GOTO Win
IF tfq% >= wwxxee THEN GOTO YouWinNot2
a$ = INKEY$
SELECT CASE a$

CASE CHR$(27): SYSTEM
CASE CHR$(32): GOTO YouWinNot2

CASE CHR$(0) + "K"
LOCATE 10, tall: COLOR 0: PRINT ""
tall = tall - 3
IF tall <= 10 THEN tall = 17
LOCATE 10, tall: COLOR 14: PRINT ""


CASE CHR$(0) + "M"
LOCATE 10, tall: COLOR 0: PRINT ""
tall = tall + 3
IF tall >= 18 THEN tall = 11
LOCATE 10, tall: COLOR 14: PRINT ""






CASE CHR$(0) + "H"
tfq% = tfq% + 1
IF tall = 11 THEN y% = y% + 1
IF tall = 14 THEN a% = a% + 1
IF tall = 17 THEN i% = i% + 1
IF y% >= 10 THEN y% = 0
IF a% >= 10 THEN a% = 0
IF i% >= 10 THEN i% = 0
IF tall = 11 THEN LOCATE 9, tall - 1: COLOR 10: PRINT y%
IF tall = 14 THEN LOCATE 9, tall - 1: COLOR 10: PRINT a%
IF tall = 17 THEN LOCATE 9, tall - 1: COLOR 10: PRINT i%
IF y% = 0 THEN IF tall = 11 THEN LOCATE 9, tall: COLOR 10: PRINT "B"
IF a% = 0 THEN IF tall = 14 THEN LOCATE 9, tall: COLOR 10: PRINT "B"
IF i% = 0 THEN IF tall = 17 THEN LOCATE 9, tall: COLOR 10: PRINT "B"

CASE CHR$(0) + "P"
tfq% = tfq% + 1
IF tall = 11 THEN y% = y% - 1
IF tall = 14 THEN a% = a% - 1
IF tall = 17 THEN i% = i% - 1
IF y% <= -1 THEN y% = 9
IF a% <= -1 THEN a% = 9
IF i% <= -1 THEN i% = 9
IF tall = 11 THEN LOCATE 9, tall - 1: COLOR 10: PRINT y%
IF tall = 14 THEN LOCATE 9, tall - 1: COLOR 10: PRINT a%
IF tall = 17 THEN LOCATE 9, tall - 1: COLOR 10: PRINT i%
IF y% = 0 THEN IF tall = 11 THEN LOCATE 9, tall: COLOR 10: PRINT "B"
IF a% = 0 THEN IF tall = 14 THEN LOCATE 9, tall: COLOR 10: PRINT "B"
IF i% = 0 THEN IF tall = 17 THEN LOCATE 9, tall: COLOR 10: PRINT "B"

END SELECT
LOOP
GOTO YouWinNot2















FLP:
PRINT
COLOR 28
PRINT "Du har ikke s† mye penger"
COLOR 12, 0
DO: LOOP WHILE INKEY$ = ""
GOTO Bank

Win:
gevinst% = 0
IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 1 THEN gevinst% = 1
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 1 THEN gevinst% = 2
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 1 THEN gevinst% = 5
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 1 THEN gevinst% = 7
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 1 THEN gevinst% = 10
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 1 THEN gevinst% = 12
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 1 THEN gevinst% = 15
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 1 THEN gevinst% = 17
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 1 THEN gevinst% = 20

IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 2 THEN gevinst% = 2
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 2 THEN gevinst% = 4
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 2 THEN gevinst% = 8
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 2 THEN gevinst% = 10
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 2 THEN gevinst% = 12
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 2 THEN gevinst% = 16
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 2 THEN gevinst% = 20
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 2 THEN gevinst% = 23
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 2 THEN gevinst% = 25

IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 3 THEN gevinst% = 3
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 3 THEN gevinst% = 6
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 3 THEN gevinst% = 9
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 3 THEN gevinst% = 12
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 3 THEN gevinst% = 15
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 3 THEN gevinst% = 18
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 3 THEN gevinst% = 21
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 3 THEN gevinst% = 24
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 3 THEN gevinst% = 27

IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 4 THEN gevinst% = 4
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 4 THEN gevinst% = 8
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 4 THEN gevinst% = 12
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 4 THEN gevinst% = 16
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 4 THEN gevinst% = 20
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 4 THEN gevinst% = 24
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 4 THEN gevinst% = 28
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 4 THEN gevinst% = 32
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 4 THEN gevinst% = 36

IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 5 THEN gevinst% = 5
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 5 THEN gevinst% = 10
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 5 THEN gevinst% = 15
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 5 THEN gevinst% = 20
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 5 THEN gevinst% = 25
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 5 THEN gevinst% = 30
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 5 THEN gevinst% = 35
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 5 THEN gevinst% = 40
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 5 THEN gevinst% = 45
                                               
IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 6 THEN gevinst% = 6
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 6 THEN gevinst% = 12
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 6 THEN gevinst% = 18
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 6 THEN gevinst% = 24
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 6 THEN gevinst% = 30
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 6 THEN gevinst% = 36
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 6 THEN gevinst% = 42
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 6 THEN gevinst% = 48
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 6 THEN gevinst% = 54

IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 7 THEN gevinst% = 7
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 7 THEN gevinst% = 14
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 7 THEN gevinst% = 21
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 7 THEN gevinst% = 28
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 7 THEN gevinst% = 35
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 7 THEN gevinst% = 42
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 7 THEN gevinst% = 49
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 7 THEN gevinst% = 56
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 7 THEN gevinst% = 63

IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 8 THEN gevinst% = 8
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 8 THEN gevinst% = 16
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 8 THEN gevinst% = 24
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 8 THEN gevinst% = 32
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 8 THEN gevinst% = 40
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 8 THEN gevinst% = 48
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 8 THEN gevinst% = 56
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 8 THEN gevinst% = 65
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 8 THEN gevinst% = 72

IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 9 THEN gevinst% = 9
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 9 THEN gevinst% = 18
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 9 THEN gevinst% = 27
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 9 THEN gevinst% = 36
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 9 THEN gevinst% = 45
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 9 THEN gevinst% = 54
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 9 THEN gevinst% = 63
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 9 THEN gevinst% = 72
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 9 THEN gevinst% = 81

IF i% = 1 AND a% = 1 AND y% = 1 AND Innsats% = 10 THEN gevinst% = 10
IF i% = 2 AND a% = 2 AND y% = 2 AND Innsats% = 10 THEN gevinst% = 20
IF i% = 3 AND a% = 3 AND y% = 3 AND Innsats% = 10 THEN gevinst% = 30
IF i% = 4 AND a% = 4 AND y% = 4 AND Innsats% = 10 THEN gevinst% = 40
IF i% = 5 AND a% = 5 AND y% = 5 AND Innsats% = 10 THEN gevinst% = 50
IF i% = 6 AND a% = 6 AND y% = 6 AND Innsats% = 10 THEN gevinst% = 60
IF i% = 7 AND a% = 7 AND y% = 7 AND Innsats% = 10 THEN gevinst% = 70
IF i% = 8 AND a% = 8 AND y% = 8 AND Innsats% = 10 THEN gevinst% = 80
IF i% = 9 AND a% = 9 AND y% = 9 AND Innsats% = 10 THEN gevinst% = 90

SOUND (240), .5
SOUND (110), .5
SOUND (560), .5
SOUND (220), .5
SOUND (580), .5
SOUND (630), .5
SOUND (540), .5
SOUND (470), .5
SOUND (360), .5
SOUND (240), .5
SOUND (140), .5
SOUND (240), .5
SOUND (240), .5
COLOR 28
LOCATE 15, 5: PRINT "DU VANT HELE"; gevinst%; "KRONER"
IF gevinst% = 1 THEN LOCATE 15, 5: PRINT "DU VANT EN HEL KRONE."
Again:
COLOR 0
LOCATE 17, 5: PRINT "Trykk enter - for † stoppe"
COLOR 10
LOCATE 16, 5: PRINT "Vil du satse gevinsten? [j, n]"
Back:
DO
SELECT CASE LCASE$(INKEY$)
CASE "": GOTO Cheat
CASE "j": GOTO Sats
CASE "n": GOTO Vid
END SELECT
LOOP

Vid:
gev% = gev% + gevinst%
i% = 3
a% = 7
y% = 1
GOTO Start1

YouWinNow:
GOTO Again
YouWinNot:
gev% = gev% + gevinst%
gevinst% = 0
i% = 3
a% = 9
y% = 5
DO: LOOP WHILE INKEY$ = ""
GOTO Start1

YouWinNot2:
gev% = gev% + gevinst%
gevinst% = 0
GOTO Start1


WinBank:
SOUND (400), .5
SOUND (360), .5
SOUND (230), .5
SOUND (540), .5
SOUND (320), .5
SOUND (250), .5
SOUND (110), .5
SOUND (202), .5
SOUND (150), .5
SOUND (430), .5
SOUND (310), .5
SOUND (200), .5
SOUND (150), .5
COLOR 25
LOCATE 15, 5: PRINT "DU VANT 10 KRONER MER P BANKEN"
DO: LOOP WHILE INKEY$ = ""
bink% = bink% + 10
gevinst% = 0
GOTO Start1

Utbetal:
CLS
SOUND (340), .5
SOUND (520), .5
SOUND (160), .5
SOUND (220), .5
SOUND (420), .5
SOUND (340), .5

COLOR 15, 0: PRINT "Du fikk utbetalt"; gev%; "kroner og n† har du"; gev% + Penger%; "Kroner"
COLOR 12
DO: LOOP WHILE INKEY$ = ""
Penger% = Penger% + gev%
gev% = 0
gevinst% = 0
GOTO START3

Si:
PRINT
Innsats% = Innsats% + 1
IF Innsats% = 11 THEN Innsats% = 1
LOCATE 6, 11: PRINT Insatts%
GOTO START3

move:
CLS
Penger% = Penger% + gev%
PRINT "Du f†r utbetalt"; gev%; "kroner og tilsammen har du n†"; Penger%; "Kroner"
IF Penger% <= 49 THEN GOTO Tap
PRINT "Det betyr at du har tjent"; Penger% - 50; "Kroner"
COLOR 0, 0: cya
Tap:
PRINT "Det betyr at du har tapt"; 50 - Penger%; "Kroner"
COLOR 0, 0: cya

Fer:
CLS
IF gev% >= 1 THEN GOTO Sporr
COLOR 0, 15: PRINT "Du har ikke mere penger!!!"
COLOR 0, 0: SYSTEM

Cheat:
DO
SELECT CASE INKEY$
CASE CHR$(27): GOTO Back
CASE "": OrCheat = 200: GOTO SatsOrCheat
END SELECT
LOOP
GOTO SatsOrCheat

Sporr:
i% = 0
a% = 0
y% = 0
IF gev% = 0 THEN GOTO Bank
CLS
LOCATE 1, 1: PRINT "Bank ="; bink%
LOCATE 2, 1: PRINT "Gevinst ="; gev%
LOCATE 3, 1: INPUT "Vil du overf›re gevinst til bank? ", janei$
IF janei$ = "n" THEN GOTO Bank
IF janei$ = "j" THEN GOTO LaLa2
GOTO Sporr
LaLa2:
bink% = bink% + gev%
gev% = 0
gevinst% = 0
GOTO Start

GevHelp:
CLS
COLOR 10
PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
PRINT "³    [1 Kr innsats]           [2 Kr innsats]         ³"
PRINT "³    111 = 1 Kr               111 = 2 Kr             ³"
PRINT "³    222 = 2 Kr               222 = 4 Kr             ³"
PRINT "³    333 = 5 Kr               333 = 8 Kr             ³"
PRINT "³    444 = 7 Kr               444 = 10 Kr            ³"
PRINT "³    555 = 10 Kr              555 = 12 Kr            ³"
PRINT "³    666 = 12 Kr              666 = 16 Kr            ³"
PRINT "³    777 = 15 Kr              777 = 20 Kr            ³"
PRINT "³    888 = 17 Kr              888 = 23 Kr            ³"
PRINT "³    999 = 20 Kr              999 = 25 Kr            ³"
PRINT "³                                                    ³"
PRINT "³    [3 Kr innsats]           [4 Kr innsats]         ³"
PRINT "³    111 = 3 Kr               111 = 4 Kr             ³"
PRINT "³    222 = 6 Kr               222 = 8 Kr             ³"
PRINT "³    333 = 9 Kr               333 = 12 Kr            ³"
PRINT "³    444 = 12 Kr              444 = 16 Kr            ³"
PRINT "³    555 = 15 Kr              555 = 20 Kr            ³"
PRINT "³    666 = 18 Kr              666 = 24 Kr            ³"
PRINT "³    777 = 21 Kr              777 = 28 Kr            ³"
PRINT "³    888 = 24 Kr              888 = 32 Kr            ³"
PRINT "³    999 = 27 Kr              999 = 36 Kr            ³"
PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
DO: LOOP WHILE INKEY$ = ""
CLS
PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
PRINT "³    [5 Kr innsats]           [6 Kr innsats]         ³"
PRINT "³    111 = 5 Kr               111 = 6 Kr             ³"
PRINT "³    222 = 10 Kr              222 = 12 Kr            ³"
PRINT "³    333 = 15 Kr              333 = 18 Kr            ³"
PRINT "³    444 = 20 Kr              444 = 24 Kr            ³"
PRINT "³    555 = 25 Kr              555 = 30 Kr            ³"
PRINT "³    666 = 30 Kr              666 = 36 Kr            ³"
PRINT "³    777 = 35 Kr              777 = 42 Kr            ³"
PRINT "³    888 = 40 Kr              888 = 48 Kr            ³"
PRINT "³    999 = 45 Kr              999 = 54 Kr            ³"
PRINT "³                                                    ³"
PRINT "³    [7 Kr innsats]           [8 Kr innsats]         ³"
PRINT "³    111 = 7 Kr               111 = 8 Kr             ³"
PRINT "³    222 = 14 Kr              222 = 16 Kr            ³"
PRINT "³    333 = 21 Kr              333 = 24 Kr            ³"
PRINT "³    444 = 28 Kr              444 = 32 Kr            ³"
PRINT "³    555 = 35 Kr              555 = 45 Kr            ³"
PRINT "³    666 = 42 Kr              666 = 48 Kr            ³"
PRINT "³    777 = 49 Kr              777 = 56 Kr            ³"
PRINT "³    888 = 56 Kr              888 = 64 Kr            ³"
PRINT "³    999 = 63 Kr              999 = 72 Kr            ³"
PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"

DO: LOOP WHILE INKEY$ = ""
CLS
PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
PRINT "³                                                    ³"
PRINT "³      [9 Kr innsats]      [10 Kr innsats]           ³"
PRINT "³      111 = 9             111 = 10                  ³"
PRINT "³      222 = 18            222 = 20                  ³"
PRINT "³      333 = 27            333 = 30                  ³"
PRINT "³      444 = 36            444 = 40                  ³"
PRINT "³      555 = 45            555 = 50                  ³"
PRINT "³      666 = 54            666 = 60                  ³"
PRINT "³      777 = 63            777 = 70                  ³"
PRINT "³      888 = 72            888 = 80                  ³"
PRINT "³      999 = 81            999 = 90                  ³"
PRINT "³                                                    ³"
PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
DO: LOOP WHILE INKEY$ = ""
CLS
GOTO Start1

Flax:
CLS
COLOR 10, 0
LOCATE 10: PRINT "Trykk þSpaceþ n†r du vil stoppe."
wwxxee = 1
DO
wwwx = INT(RND * 6)
wwwe = INT(RND * 15)
IF wwwx = 0 THEN wwwx = 1
IF wwwe = 0 THEN wwwe = 1

wxe2 = wxe2 + 1
FOR wxe = 1 TO 100
NEXT wxe
wwxxee = wwxxee + 1
IF wwxxee = 5 THEN wwxxee = 1
LOCATE wwwx, wwwe: PRINT wwxxee
LOCATE 15: PRINT wx2
LOOP WHILE INKEY$ = ""

FOR wxee = 1 TO 1000
NEXT wxee
COLOR 28
LOCATE wwwx, wwwe: PRINT wwxxee
COLOR 10
LOCATE 11: PRINT "Du f†r"; wwxxee; "stepp neste gang"
DO: LOOP WHILE INKEY$ = ""
GOTO Start4


Sats:
OrCheat = 20
SatsOrCheat:
wls = 1
COLOR 13
LOCATE 17, 5: PRINT "Trykk enter Ù for † stoppe"
COLOR 14
Habahaba = 0

DO
Habahaba = Habahaba + 1

FOR LoseOrWin = 1 TO OrCheat
COLOR 0
LOCATE 19, 3: PRINT "Vinn"
COLOR 14
LOCATE 19, 8: PRINT "Tap"

IF INKEY$ = CHR$(13) THEN GOTO WL
wls = 1

NEXT LoseOrWin

FOR WINORLOSE = 1 TO OrCheat
COLOR 0
LOCATE 19, 8: PRINT "Tap"
COLOR 14
LOCATE 19, 3: PRINT "Vinn"
wls = 2
IF INKEY$ = CHR$(13) THEN GOTO WL

NEXT WINORLOSE

LOOP

WL:
ON ERROR GOTO Finished
LOCATE 19, 8: COLOR 14: PRINT "Tap": COLOR 0: LOCATE 19, 3: PRINT "Vinn"
IF wls = 1 THEN gevinst% = 0: GOTO YouWinNot
IF wls = 2 THEN gevinst% = gevinst% * 2
COLOR 12
LOCATE 5, 11: PRINT gev% + gevinst%
COLOR 14
LOCATE 19, 3: PRINT "Vinn"
COLOR 0
LOCATE 19, 8: PRINT "Tap"
COLOR 14
FOR Sond = 100 TO 300
SOUND Sond, Sond / 1700
NEXT Sond
times = times + 1
IF times >= 3 THEN GOTO WinAndExit
GOTO YouWinNow

WinAndExit:
gev% = gev% + gevinst%
times = 0
GOTO Start1

Finished:
CLS
COLOR 10
COLOR 26
PRINT "DU HAR KLART SPILLET."
COLOR 0, 0
SYSTEM

Save:

Defime$ = ""
All$ = ""
Thap$ = ""

CLS
COLOR 13

LOCATE 2, 1: PRINT "Trykk p† en stasjons bokstav"

DO
DL$ = INKEY$
LOOP WHILE DL$ = ""

DL$ = DL$ + ":"
COLOR 13

LOCATE 11, 39: PRINT UCASE$(DL$)

CLS

Colour = 10
All$ = DL$ + Thap$ + Defime$
theone$ = "³                 ³"
thetwo$ = "³                         ³"
thethree$ = "ßßßßßßßßßßßßßßß"

deone$ = "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
dethree$ = "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"

COLOR 13
LOCATE 1, 1: PRINT "CTRL + P = Path"
LOCATE 2, 1: PRINT "CTRL + D = Stasjon"
LOCATE 3, 1: PRINT "CTRL + T = Tilbake"
LOCATE 4, 1: PRINT "Visst du skriver noen"
LOCATE 5, 1: PRINT "ugyldige tegn, avlsuttes"
LOCATE 6, 1: PRINT "spillet."
LOCATE 11, 39: PRINT UCASE$(DL$)

COLOR 9
LOCATE 1, 80 / 2 - LEN(deone$) / 2: PRINT deone$
LOCATE 2, 80 / 2 - LEN(theone$) / 2: PRINT theone$
LOCATE 3, 80 / 2 - LEN(theone$) / 2: PRINT theone$
COLOR 12
LOCATE 3, 80 / 2 - LEN(thethree$) / 2: PRINT thethree$
COLOR 9
LOCATE 4, 80 / 2 - LEN(theone$) / 2: PRINT theone$
LOCATE 5, 80 / 2 - LEN(theone$) / 2: PRINT theone$

COLOR 10
LOCATE 6, 80 / 2 - LEN(dethree$) / 2: PRINT dethree$
LOCATE 7, 80 / 2 - LEN(thetwo$) / 2: PRINT thetwo$
LOCATE 8, 80 / 2 - LEN(thetwo$) / 2: PRINT thetwo$
LOCATE 9, 80 / 2 - LEN(thetwo$) / 2: PRINT thetwo$

COLOR 13
DO
KI$ = INKEY$

LOCATE 2, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
LOCATE 13, 80 / 2 - LEN(All$) / 2: PRINT UCASE$(All$)

SELECT CASE KI$

CASE CHR$(27): GOTO Start4

CASE CHR$(13): GOTO Skid

CASE CHR$(8)

COLOR 0
LOCATE 13, 80 / 2 - LEN(All$) / 2: PRINT UCASE$(All$)
LOCATE 2, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
IF NOT LEN(Defime$) = 0 THEN Defime$ = MID$(Defime$, 1, LEN(Defime$) - 1)
COLOR 13
LOCATE 2, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
All$ = DL$ + Thap$ + Defime$ + ".SAV"
LOCATE 13, 80 / 2 - LEN(All$) / 2: PRINT UCASE$(All$)

CASE CHR$(16)

LOCATE 10, 33: INPUT "Path: ", Thap$
IF NOT Thap$ = "" THEN IF NOT MID$(Thap$, LEN(Thap$), LEN(Thap$)) = "\" THEN Thap$ = Thap$ + "\"
All$ = DL$ + Thap$ + Defime$ + ".SAV"

CASE CHR$(20): GOTO Start4

CASE CHR$(4)
LOCATE 2, 1: PRINT "Trykk p† en stasjons bokstav"

DO
DL$ = INKEY$
LOOP WHILE DL$ = ""

DL$ = DL$ + ":"

COLOR 13
LOCATE 2, 1: PRINT "CTRL + D = Stasjon           "
LOCATE 11, 39: PRINT UCASE$(DL$)
All$ = DL$ + Thap$ + Defime$ + ".SAV"

CASE CHR$(0) TO CHR$(255)

IF LEN(Defime$) < 12 THEN Defime$ = Defime$ + KI$
All$ = DL$ + Thap$ + Defime$ + ".SAV"

END SELECT
LOOP

Skid:

FOR a = 1 TO 3

COLOR 9
LOCATE a, 80 / 2 - LEN(deone$) / 2: PRINT deone$
COLOR 13
LOCATE a + 1, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
COLOR 12
IF NOT a = 3 THEN LOCATE a + 2, 80 / 2 - LEN(thethree$) / 2: PRINT thethree$

FOR s = 1 TO 100
NEXT s

COLOR 0
LOCATE a, 80 / 2 - LEN(deone$) / 2: PRINT deone$
LOCATE a + 1, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
IF NOT a = 3 THEN LOCATE a + 2, 80 / 2 - LEN(thethree$) / 2: PRINT thethree$

NEXT a

COLOR 9
LOCATE a, 80 / 2 - LEN(deone$) / 2: PRINT deone$
COLOR 13
LOCATE a + 1, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$

FOR a = 1 TO 900
NEXT a

ON ERROR GOTO BadFileNamer

GOTO Kod

BadFileNamer:
COLOR 12
LOCATE 8, 80 / 2 - LEN("Ugyldig filnavn") / 2
PRINT "Ugyldig filnavn"
SYSTEM

Kod:

OPEN All$ FOR OUTPUT AS #1

PRINT #1, Penger% / 6; ", 6 8 ßy36ÝŽd8 hß-ÿi  hFD@Yþv”"

FOR kkkhhh = 1 TO 2000
NEXT kkkhhh

FOR haha = 1 TO 100
ch$ = CHR$((RND * 255))
ch1$ = CHR$((RND * 255))
ch2$ = CHR$((RND * 255))
ch3$ = CHR$((RND * 255))
ch4$ = CHR$((RND * 255))
PRINT #1, ch$; ch1$; ch2$; ch3$; ch4$;
NEXT haha

LOCATE 14, 1: PRINT "N† har du lagret pengene dine p† filen "; UCASE$(Defime$); ".SAV"
CLOSE #1
DO: LOOP WHILE INKEY$ = ""
Defime$ = ""
GOTO Start1

Qwrong:
BEEP

Hent:
CLS

SHELL "DIR *.SAV /A /O /B |more"
DO: LOOP WHILE INKEY$ = ""

CLS
COLOR 13

LOCATE 2, 1: PRINT "Trykk p† en stasjons bokstav"

DO
DL$ = INKEY$
LOOP WHILE DL$ = ""

DL$ = DL$ + ":"
COLOR 13

LOCATE 11, 39: PRINT UCASE$(DL$)

All$ = ""
Defime$ = ""
Thap$ = ""

CLS

COLOR 14
LOCATE 1, 75: PRINT "Load"

Colour = 10
All$ = DL$ + Thap$ + Defime$
theone$ = "³                 ³"
thetwo$ = "³                         ³"
thethree$ = "ßßßßßßßßßßßßßßß"

deone$ = "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
dethree$ = "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"

COLOR 13
LOCATE 1, 1: PRINT "CTRL + P = Path"
LOCATE 2, 1: PRINT "CTRL + D = Stasjon"
LOCATE 3, 1: PRINT "CTRL + T = Tilbake"
LOCATE 4, 1: PRINT "Visst du skriver noen"
LOCATE 5, 1: PRINT "ugyldige tegn, avlsuttes"
LOCATE 6, 1: PRINT "spillet."
LOCATE 11, 39: PRINT UCASE$(DL$)

COLOR 9
LOCATE 1, 80 / 2 - LEN(deone$) / 2: PRINT deone$
LOCATE 2, 80 / 2 - LEN(theone$) / 2: PRINT theone$
LOCATE 3, 80 / 2 - LEN(theone$) / 2: PRINT theone$
COLOR 12
LOCATE 3, 80 / 2 - LEN(thethree$) / 2: PRINT thethree$
COLOR 9
LOCATE 4, 80 / 2 - LEN(theone$) / 2: PRINT theone$
LOCATE 5, 80 / 2 - LEN(theone$) / 2: PRINT theone$

COLOR 10
LOCATE 6, 80 / 2 - LEN(dethree$) / 2: PRINT dethree$
LOCATE 7, 80 / 2 - LEN(thetwo$) / 2: PRINT thetwo$
LOCATE 8, 80 / 2 - LEN(thetwo$) / 2: PRINT thetwo$
LOCATE 9, 80 / 2 - LEN(thetwo$) / 2: PRINT thetwo$

COLOR 13
DO
KI$ = INKEY$

LOCATE 2, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
LOCATE 13, 80 / 2 - LEN(All$) / 2: PRINT UCASE$(All$)

SELECT CASE KI$

CASE CHR$(27): GOTO Start4

CASE CHR$(13): GOTO Fid

CASE CHR$(8)

COLOR 0
LOCATE 13, 80 / 2 - LEN(All$) / 2: PRINT UCASE$(All$)
LOCATE 2, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
IF NOT LEN(Defime$) = 0 THEN Defime$ = MID$(Defime$, 1, LEN(Defime$) - 1)
COLOR 13
LOCATE 2, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
All$ = DL$ + Thap$ + Defime$ + ".SAV"
LOCATE 13, 80 / 2 - LEN(All$) / 2: PRINT UCASE$(All$)

CASE CHR$(16)

LOCATE 10, 33: INPUT "Path: ", Thap$
IF NOT Thap$ = "" THEN IF NOT MID$(Thap$, LEN(Thap$), LEN(Thap$)) = "\" THEN Thap$ = Thap$ + "\"
All$ = DL$ + Thap$ + Defime$ + ".SAV"

CASE CHR$(20): GOTO Start4

CASE CHR$(4)
LOCATE 2, 1: PRINT "Trykk p† en stasjons bokstav"

DO
DL$ = INKEY$
LOOP WHILE DL$ = ""

DL$ = DL$ + ":"

COLOR 13
LOCATE 2, 1: PRINT "CTRL + D = Stasjon          "
LOCATE 11, 39: PRINT UCASE$(DL$)
All$ = DL$ + Thap$ + Defime$ + ".SAV"

CASE CHR$(0) TO CHR$(255)

IF LEN(Defime$) < 12 THEN Defime$ = Defime$ + KI$
All$ = DL$ + Thap$ + Defime$ + ".SAV"

END SELECT
LOOP

Fid:

FOR a = 1 TO 3

COLOR 9
LOCATE a, 80 / 2 - LEN(deone$) / 2: PRINT deone$
COLOR 13
LOCATE a + 1, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
COLOR 12
IF NOT a = 3 THEN LOCATE a + 2, 80 / 2 - LEN(thethree$) / 2: PRINT thethree$

FOR s = 1 TO 100
NEXT s

COLOR 0
LOCATE a, 80 / 2 - LEN(deone$) / 2: PRINT deone$
LOCATE a + 1, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
IF NOT a = 3 THEN LOCATE a + 2, 80 / 2 - LEN(thethree$) / 2: PRINT thethree$

NEXT a

COLOR 9
LOCATE a, 80 / 2 - LEN(deone$) / 2: PRINT deone$
COLOR 13
LOCATE a + 1, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$

FOR a = 1 TO 900
NEXT a

ON ERROR GOTO BadFileName

OPEN All$ FOR APPEND AS #1
IF LOF(1) = 0 THEN Wrong = 1
CLOSE #1

IF Wrong = 1 THEN COLOR 12
IF Wrong = 0 THEN COLOR 10

IF Wrong = 1 THEN LOCATE 8, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$
IF Wrong = 0 THEN LOCATE 8, 80 / 2 - LEN(Defime$) / 2: PRINT Defime$


IF Wrong = 1 THEN LOCATE 8, 80 / 2 - LEN("Ugyldig filnavn") / 2: PRINT "Ugyldig filnavn": KILL All$
IF Wrong = 0 THEN LOCATE 8, 80 / 2 - LEN("Filen funnet") / 2: PRINT "Filen funnet"

DO
LOOP WHILE INKEY$ = ""

IF Wrong = 1 THEN GOTO Start4

GOTO Gdi

BadFileName:
COLOR 12
LOCATE 8, 80 / 2 - LEN("Ugyldig filnavn") / 2
PRINT "Ugyldig filnavn"
SYSTEM

Gdi:

OPEN All$ FOR INPUT AS #1
INPUT #1, Look$

Penger% = VAL(Look$) * 6

LOCATE 14, 1
PRINT "N† har du f†tt"; Penger%; "kroner p† kontoen din!"
bink% = 0
gev% = 0
gevinst% = 0
CLOSE #1
DO: LOOP WHILE INKEY$ = ""
GOTO Start4

delite:
LOCATE 7
COLOR 11
SHELL "DIR *.SAV /O /B /P"
PRINT "T = Tilbake"
PRINT
INPUT "Slette saving: ", sav$
IF LCASE$(sav$) = "t" THEN GOTO Start1

IF NOT RIGHT$(sav$, 4) = ".sav" THEN sav$ = sav$ + ".sav"
ON ERROR GOTO FeilFil
KILL sav$
PRINT "Filen er slettet."
DO: LOOP WHILE INKEY$ = ""
gevinst% = 0
GOTO Start4

FeilFil:
CLS
COLOR 28
PRINT "Filen finnes ikke"
DO: LOOP WHILE INKEY$ = ""
GOTO Start4

SUB cya
DO: LOOP WHILE INKEY$ = ""
CLS
SHELL "about.com"
SYSTEM
END SUB

