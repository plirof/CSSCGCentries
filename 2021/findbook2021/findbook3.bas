2 REM ver 211207
200 PAPER 5: PRINT "Welcome to Find The Book Game": PAUSE 100
205 PRINT "Thank you for paying money to buy this amazing book game!"'"The game features RPG elements. You select different characters with different behaviour!  "'"Some characters can always find the book!!! Choose wisely!": PAUSE 100
210 PRINT "Story so far:"'"There was a guy!"'"He woke up very early one morning."'"He wanted to go to the pub."'"He looked outside the window."'"He saw many construction workers."'"They wanted to make a road."'"He lied down in the dirt.": PAUSE 100
230 PRINT "The game :"'"It's the time for Earth to end again and someone told you that there is a nice Book Guide that can help you!"'"You begin your journey to find that book!": PAUSE 100
240 PRINT "Controls:"'"1. Keys."'"2. Something completely different!": PAUSE 100
250 PAUSE 0: PAUSE 1000
505 PAPER 3
510 CLS : RANDOMIZE 
511 PRINT "An interactive Adventure/Role playing game"'"Created by Firelord Quality Games (tm)(c)": PRINT "The Book is lost"'"You take the role of one of the characters and you must find it"'"SELECT your character "'"1.Arthur Dent,"'"2.Babelfish,"
512 PRINT "3.Deep Thought"'"4.Marvin the Paranoid Android"'"5.Tricia McMillan"'"6.Zaphod Beeblebrox"'"7.Vogon"
513 PRINT '"8.Ford Prefect"'"9.Lintilla"'"10.Batman"'"11.Wonko the Sane"'"12.A Dolphin "
514 INPUT "Make your selection : ",h$
515 PRINT "Thank you for your selection"'"====================================="
520 PRINT "Search (again) for the book!"
530 PRINT "options :"
540 PRINT "1.Local Pub"'"2.The Restaurant at the End of the Universe"'"3.Megadodo Publications HQ"'"4.Heart of Gold"'"5.Prehistoric Earth"'"6.Search where you are!"
541 REM Hide the book!
542 LET d$=STR$ (INT ((RND*6))+1)
544 REM PRINT "CHEATER SAYS:";d$
550 INPUT "Where to search for the Book?";a$
554 IF (h$="10") THEN GO TO 590
560 IF (a$<>d$) THEN PRINT "**** NOPE!!! ****": GO TO 520
590 PAPER RND*7: CLS 
595 PRINT "You found The Book!!!": FOR C=1 TO 5: PAPER C: PAUSE 50: NEXT C: PAUSE 100: GO TO 20
