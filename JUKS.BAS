CLS
i = 2000
COLOR 28
LOCATE 3, 30
PRINT "Newby juks"
DO: LOOP WHILE INKEY$ = ""
COLOR 10
INPUT "Filnavn: ", File$
IF NOT LCASE$(RIGHT$(File$, a)) = ".sav" THEN File$ = File$ + ".sav"
OPEN File$ FOR OUTPUT AS #1
INPUT "Hvor my penger vil du ha? ", cheat
PRINT #1, cheat / 6; ", 6 8 ﬂy36›éd8 hﬂ-ˇi  ÅhFˇD@Y˛vî "
FOR kkkhhh = 1 TO i
COLOR 15, 4
LOCATE 1, 1
PRINT INT(100 * kkkhhh / i); "% Finish"
COLOR 13, 0
NEXT kkkhhh
FOR haha = 1 TO 100
kkk$ = CHR$((RND * 255))
kkk1$ = CHR$((RND * 255))
kkk2$ = CHR$((RND * 255))
kkk3$ = CHR$((RND * 255))
kkk4$ = CHR$((RND * 255))
PRINT #1, kkk$; kkk1$; kkk2$; kkk3$; kkk4$;
NEXT haha
LOCATE 6, 1: PRINT "NÜ har du fÜtt"; cheat; "kroner pÜ filen "; UCASE$(File$)
CLOSE
COLOR 0, 0
SYSTEM

