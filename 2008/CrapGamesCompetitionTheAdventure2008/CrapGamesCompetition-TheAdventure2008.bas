5 REM Crap Games Competition 2008 - The Adventure v0.2

10 REM A game written using advanced assembly techniques.
11 REM Source code is encrypted to look like a simple BASIC program but IT'S NOT.
12 REM (c) Firelord Quality Games LTD (trister12[at]yahoo[dot]gr - Put the word "SPECTRUM" somewhere in the subject line if you mail me )
13 CLS 
14 REM ****Intro coding***
15 RANDOMIZE 
50 PAPER 3: PRINT "  Crap Games Competition 2008  ": PRINT "       - The Adventure -       ": PAPER 7
54 PAPER 5: PRINT "Will you be a good judge or a   crap judge ?": PAPER 7
56 PRINT "A game that transfers all the   excitement of being a judge of  CSSCGC in the screen of your       SPECTRUM. "
65 INK 6: PAPER 0: PRINT "Written by Firelord. Original Idea by Moi.": INK 0: PAPER 7 : PAUSE 0
66 PRINT 
68 REM *****initialise control selection menu****
69 CLS : PRINT "Please select judge / year : "
70 GO SUB 4200
71 GO SUB 4400
72 REM INPUT "Please select judge / year : " ,j$
75 PAPER 7: INK 0:
83 INK 3: PRINT "Now press any key": INK 0 : PAUSE 0
90 CLS : REM ***************GAMES SELECTION****************************
91 LET c=1 : FLASH 1 : PRINT "****Let the JUDGING BEGIN****": FLASH 0 : PAUSE 50 : REM game counter
93 REM ***Init Random Buttons ***
99 REM ****Games comments *****
100 REM GO SUB 5000 :REM 
101 INVERSE 1: PRINT "--------------------------------": PRINT "You see a new game in front of  you. It's name seems to be      ": PRINT "        GAME #";c;"        ":: INVERSE 0
110 INK 0 : PAPER 4 : PRINT "Description : ": PAPER 7
120 GO SUB 4090
140 INK 0 : PAPER 4 : PRINT "Graphics can be described as : ": PAPER 7
150 GO SUB 5090
160 INK 0 : PAPER 4 : PRINT "Gameplay is : ": PAPER 7
170 GO SUB 5090
180 INK 0 : PAPER 4 : PRINT "Coding seems to be : ": PAPER 7
190 GO SUB 5090 
1200 INK 0: BRIGHT 1 : PRINT n$;" . How many crap points do you give to this game? :": INPUT "How many crap points do you give to this game? :",P$ : BRIGHT 0
1201 LET c=c+1
1950 PAUSE 20: INK 0: PAPER 7
1952 IF c=10  THEN GO TO 2000
1960 GO TO 95
2000 
2010 FLASH 1: PRINT n$;: PRINT "You have voted. What is your verdict ?": FLASH 0
2015 INPUT "What is the CSSCGC winner this year? ",w$
2020 CLS : INK 5 : FLASH 1 : PRINT " THE WINNER IS GAME # ";w$ : FLASH 0
2030 PRINT "You can restart the experience by typing RUN & (ENTER)"
2100 STOP 
3000 STOP 
4089 REM *** Advanced Algorithm that calculates the game description ****
4090 PAPER 7: INK 0: GO TO 4100+10*INT (RND*6)
4095 REM *** Language configuration ***
4100 INK 4: PRINT "The famous game, where the computer always wins unless you know what you are doing. This game might speak to you if you have a Currah uSpeech attached.": RETURN 
4110 INK 4: PRINT "You're a jedi knight and you try to date Mrs Darth Vader. ": RETURN 
4120 INK 4: PRINT "It's a very original title that seems incredibly familiar!": RETURN 
4130 INK 4: PRINT "In this game you walk in the hot sand.": RETURN 
4140 INK 4: PRINT "It's a poorly made game based on the known TV series.": RETURN 
4150 INK 4: PRINT "its a game based on another game based on another game ,that was originaly based on another game.": RETURN 
4160 INK 4: PRINT "You're a sitting duck and you must keep pressing 's' to sit.": RETURN 
4199 REM *** Judge selection list ***
4200 CLS : PAPER 3: PRINT "  Crap Games Competition 2008  ": PRINT "       - The Adventure -       ": PAPER 7 
4205 PAPER 7: INK 0
4207 PRINT "The Judges :"
4210 PRINT " 1. 1996 Judge Blood."
4220 PRINT " 2. 1997 Judge Blood."
4230 PRINT " 3. 1998 Judge Barry Salter."
4240 PRINT " 4. 1999 Judges Alistair Nelson & Graham Goring."
4250 PRINT " 5. 2000 Judge Graham Goring ."
4260 PRINT " 6. 2001 Judge Adam D. Moss ."
4270 PRINT " 7. 2002 Judge Paul Equinox Collins ."
4280 PRINT " 8. 2003 Judge Dave the Lurker ."
4290 PRINT " 8. 2004 Judge Jim Langmead ."
4300 PRINT " 9. 2005 Judge Starglider ."
4310 PRINT "10. 2006 Judge Matt Rudge ."
4320 PRINT "11. 2007 Judges Chris Young & Phillip Lake ."
4330 PRINT "12. 2008 Judge Digital Prawn ."
4340 RETURN 
4400 REM *** accept judge selection ***
4405 INPUT "Please select judge / year by typing the CORRECT NUMBER!! : ",j
4407 PAPER 6 : INK 4
4410 IF j=1  THEN PRINT "You selected year 1996 & you are Judge Blood.": LET n$="Judge Blood": RETURN 
4420 IF j=2  THEN PRINT "You selected year 1997 & you are Judge Blood.": LET n$="Judge Blood": RETURN 
4430 IF j=3  THEN PRINT "You selected year 1998 & you are Judge Barry Salter.": LET n$="Judge Barry Salter": RETURN 
4440 IF j=4  THEN PRINT "You selected year 1999 & you are Judges Alistair Nelson & Graham Goring.": LET n$="Judges Alistair Nelson & Graham Goring": RETURN 
4450 IF j=5  THEN PRINT "You selected year 2000 & you are Judge Graham Goring .": LET n$="Judge Graham Goring": RETURN 
4460 IF j=6  THEN PRINT "You selected year 2001 & you are Judge Adam D. Moss .": LET n$="Judge Adam D. Mos": RETURN 
4470 IF j=7  THEN PRINT "You selected year 2002 & you are Judge Paul Equinox Collins .": LET n$="Judge Paul Equinox Collins": RETURN 
4480 IF j=8  THEN PRINT "You selected year 2003 & you are Judge Dave the Lurker .": LET n$="Judge Dave the Lurker": RETURN 
4490 IF j=8  THEN PRINT "You selected year 2004 & you are Judge Jim Langmead .": LET n$="Judge Jim Langmead": RETURN 
4492 IF j=9  THEN PRINT "You selected year 2005 & you are Judge Starglider .": LET n$="Judge Starglider": RETURN 
4493 IF j=10  THEN PRINT "You selected year 2006 & you are Judge Matt Rudge .": LET n$="Judge Matt Rudge": RETURN 
4494 IF j=11  THEN PRINT "You selected year 2007 & you are Judges Chris Young & Phillip Lake .": LET n$="Judges Chris Young & Phillip Lake": RETURN 
4495 IF j=12  THEN PRINT "You selected year 2008 & you are Judge Digital Prawn .": LET n$="Judge Digital Prawn": RETURN 
4499 GO TO 4400
5089 REM *** Advanced Algorithm that calculates the game statement ****
5090 PAPER 7: INK 3: GO TO 5100+10*INT (RND*7)
5095 REM ***  ***
5100 PRINT "more than crap.": RETURN 
5110 PRINT "crap. ": RETURN 
5120 PRINT "awful.": RETURN 
5130 PRINT "amazingly boring.": RETURN 
5140 PRINT "incredibly bad.": RETURN 
5150 PRINT "can't even describe.": RETURN 
5180 PRINT "not worth mentioning.": RETURN 
