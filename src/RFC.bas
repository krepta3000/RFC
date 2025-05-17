REM Animated Factorial Calculator with Random Sounds & Fun Fact Explosions
CLS
PRINT "Ridiculous Factorial Calculator!"
PRINT "--------------------------------------------------"

REM Get user input
10 INPUT "Enter a number (N): ", N
IF N < 0 OR N <> INT(N) THEN 
    PRINT "I don't think you meant to do that. Please try again with a positive whole number."
    GOTO 10
ENDIF

REM Input factorial marks (! count)
20 INPUT "Enter the number of factorial marks (! count): ", F
IF F < 0 OR F <> INT(F) THEN 
    PRINT "Factorial marks should be a positive whole number."
    GOTO 20
ENDIF
IF F > N THEN 
    PRINT "Invalid! You cannot have more factorial marks than "; N
    GOTO 20
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
    SOUND_TYPE = RND * 4  REM Choose a random number between 1 and 4
    IF SOUND_TYPE < 1 THEN PRINT "Whoosh!"
    IF SOUND_TYPE < 2 THEN PRINT "Boing!"
    IF SOUND_TYPE < 3 THEN PRINT "Zap!"
    IF SOUND_TYPE < 4 THEN PRINT "Ka-BLAM!"
    
    PAUSE 500  REM Simulated delay for animation
    
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
    FACT_TYPE = RND * 7  REM Expanding the fact pool!
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
        PAUSE 100  REM Adjust speed for dramatic effect
    NEXT I
    PRINT ""
ENDIF

100 INPUT "Run again? Y/N: ", Y$
IF Y$ = "Y" THEN GOTO 10
IF Y$ = "N" THEN END
GOTO 100