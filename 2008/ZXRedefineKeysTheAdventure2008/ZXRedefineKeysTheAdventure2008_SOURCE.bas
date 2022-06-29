   5 REM ZX Redefine Keys The Adventure 2008 The Adventure v0.5
  10 REM A game written using advanced assembly techniques.
  11 REM Source code is encrypted to look like a simple BASIC program but IT'S NOT.
  12 REM (c) Firelord Quality Games LTD (trister12[at]yahoo[dot]gr - Put the word "SPECTRUM" somewhere in the subject line if you mail me )
  13 CLS : REM
  14 REM ****Intro coding***
  15 RANDOMIZE
  20 BORDER 6: PAPER 0
  50 PAPER 3: PRINT "   ZX Redefine Keys 2008    ": PRINT "          The Adventure         ": PAPER 7
  52 INK 6: PAPER 0: PRINT "       Written by Firelord      ": PRINT " (c) Firelord Quality Games LTD ": INK 0
  54 PAPER 5
  56 PRINT "A fully configurable game that  uses undocumented commands to   enable the quad core features ofthe z80,making your spectrum    equivalent to a 3GHz Pentium 6!!"
  57 PAPER 7
  66 PRINT
  68 REM *****initialise control selection menu****
  69 PRINT "Please select control method: "
  70 PRINT "  1. Keyboard.": PRINT "  2. Virtual Reality glove.": PRINT "  3. Redefine Keyboard.": PRINT "  5. Cat": PRINT "  6. Let Someone else select"
  79 PRINT "Please make your selection and press any random key. "
  80 PAUSE 0: INK 3: PRINT " Thank you for selecting Redefine Keyboard. Now press any key": INK 0: PAUSE 0
  90 CLS
  94 REM LET l$="1" : LET u$="2" : LET d$="3" : LET r$="4":
  95 LET l$=CHR$ (INT (RND*9)): LET u$=CHR$ (INT (RND*9)): LET d$=CHR$ (INT (RND*9)): LET r$=CHR$ (INT (RND*9))
 150 INK 0: PAPER 7: FLASH 0: INVERSE 0
 200 PRINT "REDEFINE KEYBOARD"
 210 PRINT "Please Press a key for ": INK 5: FLASH 1: PRINT "LEFT"
 250 INK 0: PAPER 7: FLASH 0: INVERSE 0
 300 INPUT l$: INVERSE 1: PRINT "LEFT = ";l$: INVERSE 0
 310 PRINT "Please Press a key for ": INK 5: FLASH 1: PRINT "UP"
 350 INK 0: PAPER 7: FLASH 0: INVERSE 0
 400 INPUT u$: INVERSE 1: PRINT "UP = ";u$: INVERSE 0
 410 PRINT "Please Press a key for ": INK 5: FLASH 1: PRINT "DOWN"
 450 INK 0: PAPER 7: FLASH 0: INVERSE 0
 460 INPUT d$: INVERSE 1: PRINT "DOWN = ";d$: INVERSE 0
 510 PRINT "Please Press a key for ": INK 5: FLASH 1: PRINT "RIGHT"
 550 INK 0: PAPER 7: FLASH 0: INVERSE 0
 600 INPUT r$: INVERSE 1: PRINT "RIGHT = ";r$: INVERSE 0
 650 PRINT "Are you sure Y/N?"
 700 INK 0: PAPER 7: FLASH 0: INVERSE 0
 750 INPUT "Are you adsolutely sure Y/N",a$
 800 IF a$="N" THEN GO TO 90: IF a$="n" THEN GO TO 90
 840 REM **** RECHECK KEYS ****
 850 CLS
 860 INK 0: PAPER 7: FLASH 0: INVERSE 0
 900 PRINT "Just to be sure lets make another check , so you haven't forgot your assigned keys. "
1210 PRINT "Please Press again the key you picked for ": INK 4: FLASH 1: PRINT "LEFT"
1220 INK 0: PAPER 7: FLASH 0: INVERSE 0
1230 INPUT "LEFT",b$
1240 IF b$<>l$ THEN GO TO 6000
1310 PRINT "Please Press again the key you picked for ": INK 4: FLASH 1: PRINT "RIGHT"
1320 INK 0: PAPER 7: FLASH 0: INVERSE 0
1330 INPUT b$
1340 IF b$<>r$ THEN GO TO 6000
1410 PRINT "Please Press again the key you picked for ": INK 4: FLASH 1: PRINT "DOWN"
1420 INK 0: PAPER 7: FLASH 0: INVERSE 0
1430 INPUT b$
1440 IF b$<>d$ THEN GO TO 6000
1510 PRINT "Please Press again the key you picked for ": INK 4: FLASH 1: PRINT "UP"
1520 INK 0: PAPER 7: FLASH 0: INVERSE 0
1530 INPUT b$
1540 IF b$<>u$ THEN GO TO 6000
1600 PRINT "Correct !!! . Now press any key ": PAUSE 0
1700 CLS
1800 FLASH 1: PRINT "Now its time to start the game!!!!": FLASH 0
1850 PAUSE 50
1860 FLASH 1: PRINT "Before the game lets make another check to be absolutely sure that you haven't forgotten the keys": FLASH 0
1870 PAUSE 100
2000 REM **** RAndom check ****
2010 CLS
2015 FOR v=0 TO 10
2020 INK 0: PAPER 7: FLASH 0: INVERSE 0
2100 PRINT "Test #";v;" - Please press the key you selected for :"
2150 PAPER 3: INK 5: INVERSE 1: GO SUB 5510+10*INT (RND*4)
2200 IF b$<>k$ THEN GO TO 6000
2300 NEXT v
4000 CLS : FLASH 1: PAPER 3: INK 5
4100 PRINT "NOW WE ARE READY FOR THE MAIN GAME. START THE TAPE AND PRESS ANY KEY "
4200 PAUSE 0
4300 PRINT "NOW A FINAL QUESTION ... PLEASE PRESS THE KEY YOU SELECTED FOR ": PAPER 3: INK 5: INVERSE 1: PRINT "FIRE"
4320 INK 0: PAPER 7: FLASH 0: INVERSE 0
4330 INPUT g$
4340 FLASH 1: INK 2: PRINT " ERROR!!! SORRY BUT YOU FAILED !! PLEASE TRY AGAIN"
4350 PAUSE 0
4360 INK 0: PAPER 7: FLASH 0: INVERSE 0
4400 REM PRINT "THANK YOu FOR PLAYING !!!"
5000 GO TO 9000
5510 PRINT "  LEFT  ": INPUT k$: IF k$<>l$ THEN GO TO 6100
5519 RETURN
5520 PRINT "  RIGHT  ": INPUT k$: IF k$<>r$ THEN GO TO 6100
5529 RETURN
5530 PRINT "  UP  ": INPUT k$: IF k$<>u$ THEN GO TO 6100
5539 RETURN
5540 PRINT "  DOWN  ": INPUT k$: IF k$<>d$ THEN GO TO 6100
5549 RETURN
5849 RETURN
6000 FLASH 1: INK 2: PRINT " WRONG KEY !!! PLEASE TRY AGAIN"
6010 PAUSE 0
6050 INK 0: PAPER 7: FLASH 0: INVERSE 0
6090 GO TO 850
6100 FLASH 1: INK 2: PRINT " YOU MUST REMEMBER YOUR KEYS!!! LETS START AGAIN !!!"
6110 PAUSE 0
6150 INK 0: PAPER 7: FLASH 0: INVERSE 0
6300 GO TO 1860
6500 REM *** COLOR EFFECT ***
6520 FOR w=0 TO 100
6550 POKE 22527+RND*704,RND*127
6590 NEXT W
6595 RETURN
9000 STOP
