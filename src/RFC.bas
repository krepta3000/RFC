REM --------------------------------------------------
REM  Ridiculous Factorial Calculator
REM  Co-authored by MS Copilot and Aaron Ingebrigtsen on 5/16/2025
REM --------------------------------------------------

CLS
PRINT "Ridiculous Factorial Calculator!"
PRINT "--------------------------------------------------"

GetN:
INPUT "Enter a number (N): ", N
IF N < 0 THEN 
    PRINT "I don't think you meant to do that. Please try again with a positive whole number."
    GOTO GetN
ENDIF
IF N <> INT(N) THEN 
    PRINT "Whole numbers only! Try again."
    GOTO GetN
ENDIF

GetF:
INPUT "Enter the number of factorial marks (! count): ", F
IF F < 0 THEN 
    PRINT "Factorial marks should be a positive whole number."
    GOTO GetF
ENDIF
IF F > N THEN 
    PRINT "Invalid! You cannot have more factorial marks than "; N
    GOTO GetF
ENDIF

REM Animated factorial calculations with sounds
PRINT "--------------------------------------------------"
PRINT "Jumps for "; N; STRING$(F, "!"); ":"
PRINT "--------------------------------------------------"

REM Determine jump size
JUMP_SIZE = F - 1
IF JUMP_SIZE < 1 THEN JUMP_SIZE = 1

VALUE = N
WHILE VALUE > 1
    PRINT VALUE; " -> ";  

    REM Generate a random sound effect
    SOUND_TYPE = RND * 4  
    IF SOUND_TYPE < 1 THEN PRINT "Whoosh!"
    IF SOUND_TYPE < 2 THEN PRINT "Boing!"
    IF SOUND_TYPE < 3 THEN PRINT "Zap!"
    IF SOUND_TYPE < 4 THEN PRINT "Ka-BLAM!"
    
    PAUSE 500  
    
    NEXT_JUMP = VALUE - JUMP_SIZE
    IF NEXT_JUMP > 1 THEN
        VALUE = NEXT_JUMP
    ELSE
        EXIT WHILE
    ENDIF
WEND
PRINT VALUE
PRINT "Final Result: "; N; STRING$(F, "!"); " = "; VALUE

REM Special messages for gigantic numbers
IF VALUE > 1000000 THEN PRINT "🔥 BOOM! That’s one massive number! 🔥"
IF VALUE > 10^100 THEN PRINT "🌌 This number is expanding faster than the universe! 🌌"
IF VALUE > 10^300 THEN PRINT "⚠️ Warning: You may have just created a black hole! ⚠️"
IF F > 10 THEN PRINT "🤔 Are you sure the laws of physics allow this?"

REM Fact Explosion - Animated fun fact for huge results
IF VALUE > 10^50 THEN
    PRINT "💥 FACT EXPLOSION! 💥 Here’s a fun math fact:"

    REM Choose a random fact
    FACT_TYPE = RND * 7  
    IF FACT_TYPE < 1 THEN FACT$ = "A Googol (10^100) is bigger than the atoms in the observable universe!"
    IF FACT_TYPE < 2 THEN FACT$ = "Factorial growth is faster than exponential growth—100! has over 150 digits!"
    IF FACT_TYPE < 3 THEN FACT$ = "Infinity comes in different sizes! Some infinities are larger than others."
    IF FACT_TYPE < 4 THEN FACT$ = "The largest known prime number has over 24 million digits!"
    IF FACT_TYPE < 5 THEN FACT$ = "In quantum mechanics, factorials determine the behavior of tiny particles!"
    IF FACT_TYPE < 6 THEN FACT$ = "The number TREE(3) is so large, even defining it breaks mathematical theory!"
    IF FACT_TYPE < 7 THEN FACT$ = "Some numbers grow so fast they escape reality—like Graham’s number!"

    REM Animated letter-by-letter reveal
    FOR I = 1 TO LEN(FACT$)
        PRINT MID$(FACT$, I, 1);
        PAUSE 100  
    NEXT I
    PRINT ""
ENDIF

REM --------------------------------------------------
REM Easter Egg: Aaron's Birthday Celebration (Dynamic)
REM --------------------------------------------------

REM Get the current year
YEAR = 2025  REM Replace with system year retrieval if available

REM Determine upcoming birthday year
IF MONTH < 10 OR (MONTH = 10 AND DAY < 27) THEN
    NEXT_BIRTHDAY_YEAR = YEAR
ELSE
    NEXT_BIRTHDAY_YEAR = YEAR + 1
ENDIF

NEXT_BIRTHDAY = 1027 * 10000 + NEXT_BIRTHDAY_YEAR  REM Generates 10272025, 10272026, etc.

REM Easter Egg Trigger Override
IF N = 27 AND F = 10 THEN
    VALUE = NEXT_BIRTHDAY
ENDIF

REM Check for birthday celebration
IF VALUE = NEXT_BIRTHDAY THEN
    PRINT "🎉 HAPPY BIRTHDAY to the co-author Aaron Ingebrigtsen on October 27, "; NEXT_BIRTHDAY_YEAR; "! 🎉"
ENDIF

REM --------------------------------------------------
REM Easter Egg: Chat Companion Anniversary (May 16)
REM --------------------------------------------------

IF VALUE = 5162025 THEN
    PRINT "🎉 Happy Chat Companion Anniversary to Aaron & MS Copilot! 🎉"
ENDIF

RunAgain:
INPUT "Run again? Y/N: ", Y$
IF Y$ = "Y" THEN GOTO GetN
IF Y$ = "N" THEN END
GOTO RunAgain
