5 REM LOST 2008 The Adventure v0.4e

10 REM A game written using advanced assembly techniques.
11 REM Source code is encrypted to look like a simple BASIC program but IT'S NOT.
12 REM (c) Firelord Quality Games LTD (trister12[at]yahoo[dot]gr - Put the word "SPECTRUM" somewhere in the subject line if you mail me )
13 CLS 
14 REM ****Intro coding***
15 RANDOMIZE : BORDER 5
50 PAPER 3: PRINT "LOST 2008": PRINT "The Adventure": PAPER 7
54 PAPER 5: PRINT "How many seasons can you handle?": PAPER 7
56 PRINT "A game based on the 200000 page script of the TV series LOST(TM) "
60 PRINT "A game with SVGA quality graphics!!(NOTE : A PC is required to view the SVGA graphics -which are in seperate files.) "
65 INK 6: PAPER 0: PRINT "Written by Firelord. Original Idea by UTI.": INK 0: PAPER 7
66 PRINT 
68 REM *****initialise control selection menu****
69 PAUSE 10: PRINT "Please select control method: "
70 PRINT "  1. Use joystick.": PRINT "  2. Use function keys.": PRINT "  6. Use touch screen."
82 PRINT "Please make your selection and press any random key. "
83 PAUSE 0: CLS : INK 3: PRINT " Thank you for selecting Keyboard. Now press any key": INK 0 
84 INK 4: PRINT " This game implements the Advanced InterPC Spectrum Graphics System(TM) or AISGS . ": INK 5: INVERSE 1: PRINT "In game the '[image(#)]' indicates that you must view image # from the images folder of your PC.": PRINT "PRESS ANY KEY"
85 INK 0: INVERSE 0: PRINT "Read the Readme.txt from the game archive for more info.": PAUSE 0
90 CLS 
91 LET c=1 : REM season counter
93 REM ***Init Random Buttons ***
95 LET o$="1": LET p$="2": LET q$="3": LET r$="4":
99 REM ****Dungeon menu *****
100 GO SUB 5000 : REM season check
101 BRIGHT 1: PRINT "You are in a deserted beach     [open image(";(1+INT (RND*4));") in your PC].": PRINT "What do you want to do ?": BRIGHT 0
110 INK 1: PRINT "(";o$;").Go East , (";p$;").Go West ,": PRINT "(";q$;").Go South, (";r$;").Go North"
200 INK 0: INPUT "SELECT MOVE :",M$
201 LET c=c+1
250 IF M$=o$  THEN PRINT "You try to go East  ! ": GO SUB 2000: GO TO 1050
255 IF M$=p$  THEN PRINT "You try to go West ! ": GO SUB 2000: GO TO 1050
260 IF M$=q$  THEN PRINT "You try to go South ! ": GO SUB 2000: GO TO 1050
265 IF M$=r$  THEN PRINT "You try to go North ! ": GO SUB 2000: GO TO 1050
450 INK 5: PRINT "You stand in the hot sand thinking that you just wasted an episode.Since nothing happened in this episode,the audience was bored...and switched to another channel!! "
1050 PAUSE 300: INK 0: PAPER 7
1100 GO TO 95
1999 REM *** Advanced Algorithm that calculates the dungeon ****
2000 PAPER 7: INK 0: GO TO 2100+10*INT (RND*6)
2099 REM *** Language configuration ***
2100 INK 4: PRINT "You walk in the hot sand.": RETURN 
2110 INK 2: PRINT "You continue walking in the hot sand. ": RETURN 
2120 INK 4: PRINT "You run in the hot sand.": RETURN 
2130 PRINT "You pass a palm tree as you walk in the hot sand.": RETURN 
2140 PRINT "You walk in the hot sand. You see something moving in the trees -but its better to check it out in one of the next seasons.": RETURN 
2150 INK 3: PRINT "You walk in the hot sand.": PAUSE 30
2151 PRINT "You walk some more in the hot sand.": RETURN 
2160 PRINT "You walk in the hot sand.": RETURN 
3000 STOP 
5000 LET s=INT (c/10)
5002 PAPER 4: PRINT "LOST Episode ";c;: INK 6 : PRINT " In the last episode you were standing on a deserted beach.": INK 0
5003 PAPER 7 
5005 IF s=0  THEN RETURN 
5010 IF s=c/10  THEN FLASH 1 : INK 5: PRINT "Congratulations you are now on season ";s: FLASH 0 : INK 0: RETURN 
5020 RETURN 
