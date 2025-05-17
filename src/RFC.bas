REM --------------------------------------------------
REM  Ridiculous Factorial Calculator (QB64 - Fixed)
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
END IF
IF N <> INT(N) THEN 
    PRINT "Whole numbers only! Try again."
    GOTO GetN
END IF

GetF:
INPUT "Enter the number of factorial marks (! count): ", F
IF F < 0 THEN 
    PRINT "Factorial marks should be a positive whole number."
    GOTO GetF
END IF
IF F > N THEN 
    PRINT "Invalid! You cannot have more factorial marks than "; N
    GOTO GetF
END IF

PRINT "--------------------------------------------------"
PRINT "Calculating "; N; STRING$(F, "!"); "..."
PRINT "--------------------------------------------------"

REM Correct factorial step sizes
VALUE = N
STEP_SIZE = F

WHILE VALUE > STEP_SIZE
    PRINT VALUE; " -> ";  
    SELECT CASE INT(RND * 4)
        CASE 0: PRINT "Whoosh!"
        CASE 1: PRINT "Boing!"
        CASE 2: PRINT "Zap!"
        CASE 3: PRINT "Ka-BLAM!"
    END SELECT
    
    _DELAY 0.5  
    VALUE = VALUE - STEP_SIZE
WEND

PRINT VALUE
PRINT "Final Result: "; N; STRING$(F, "!"); " = "; VALUE

REM Easter Eggs for gigantic numbers
IF VALUE > 1000000 THEN PRINT "🔥 BOOM! That’s one massive number! 🔥"
IF VALUE > 10^100 THEN PRINT "🌌 This number is expanding faster than the universe! 🌌"
IF VALUE > 10^300 THEN PRINT "⚠️ Warning: You may have just created a black hole! ⚠️"
IF F > 10 THEN PRINT "🤔 Are you sure the laws of physics allow this?"

RunAgain:
INPUT "Run again? Y/N: ", Y$
IF UCASE$(Y$) = "Y" THEN GOTO GetN
IF UCASE$(Y$) = "N" THEN END
GOTO RunAgain
