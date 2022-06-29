1 REM (Based on Bubble run a BASIC program from WOS forum)
10 LET B=0: LET d=0: PAPER 7
13 REM paper 2
15 CLS : PRINT "--AVOID TREES--"': PRINT "By Firelord Quality Games Ltd"'"Game created to celebrate the "'"60th entry of the CSSCGC2021 "'"(for the second time)!"
16 PRINT '"Santa has found You!!! You were skiing. "'"He sends small colorful "'"Christmas Trees on your way!"
17 PRINT "If you pass over a tree it will hit your private parts!"'"You must avoid them(unless you  don't want to have any children)!!!": PRINT "Whenever we have a direct hit you will see a 'direct hit' counter -if you are lucky you will NOT see that counter!"'" Keys left:1 ,right:0 - Enjoy": PAUSE 0: CLS 
20 PRINT AT 0,B-1; FLASH 1; INK 4;"|o|"; FLASH 0
30 LET B=B+(INKEY$="1")-(INKEY$="0")
39 REM stop scroll message
40 POKE 23692,255
50 LET X=RND*30: PRINT AT 20,X; INK RND*6;"^"
60 PRINT AT 21,0: PRINT '
70 IF  SCREEN$ (0,B)="^" THEN LET d=d+1: PRINT INVERSE 1;"OUCH# ";d;"!!!"; INVERSE 0
80 GO TO 20
