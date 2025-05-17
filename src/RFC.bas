REM --------------------------------------------------
REM  Ridiculous Factorial Calculator (QB64 - Fixed)
REM  Co-authored by MS Copilot and Aaron Ingebrigtsen on 5/16/2025
REM --------------------------------------------------

CLS
PRINT "Ridiculous Factorial Calculator (Now With Extra Silliness)"
PRINT "--------------------------------------------------"
PRINT "Enter a number (N): ";
INPUT N
PRINT "Enter factorial depth (! count): ";
INPUT F

' Get current system year dynamically
DIM DATE_STRING AS STRING
DATE_STRING = DATE$
YEAR = VAL(MID$(DATE_STRING, 7, 4)) ' Extract YYYY from system date

' Generalized factorial calculation
FACT = N
IF F > 1 THEN
    PRINT "Factorial Jumps:"
    DO WHILE (FACT - F) >= 1
        PRINT FACT; " -> ";
        NEXT_JUMP = FACT - F
        FACT = FACT * NEXT_JUMP
    LOOP
    PRINT FACT
END IF

' Adjust absurd factorial notation for extreme depths
IF F > 10 THEN
    FACTORIAL_NOTATION$ = "!...!"
ELSE
    FACTORIAL_NOTATION$ = STRING$(F, "!")
END IF

PRINT "--------------------------------------------------"
PRINT N; FACTORIAL_NOTATION$; " = "; FACT

' Inject humor for absurdly large factorials
IF FACT > 1E6 THEN PRINT "Congratulations, your factorial could buy EVERY lottery ticket on Earth!"
IF FACT > 1E12 THEN PRINT "Warning: This factorial might crash a bank's mainframe."
IF FACT > 1E18 THEN PRINT "This number is officially stronger than gravity."
IF FACT > 1E30 THEN PRINT "NASA just called—they need this for their space calculations!"
IF FACT > 1E100 THEN PRINT "You've successfully broken mathematics. Reality is optional now."

' Easter Egg: Surprise Birthday Message!
BIRTH_YEAR = 1976
BIRTHDAY_MONTH = 10
BIRTHDAY_DAY = 27

' Determine current age dynamically
CURRENT_MONTH = VAL(MID$(DATE_STRING, 4, 2)) ' Extract MM from system date
CURRENT_DAY = VAL(MID$(DATE_STRING, 1, 2)) ' Extract DD from system date

IF (CURRENT_MONTH > BIRTHDAY_MONTH) OR ((CURRENT_MONTH = BIRTHDAY_MONTH) AND (CURRENT_DAY >= BIRTHDAY_DAY)) THEN
    CURRENT_AGE = YEAR - BIRTH_YEAR
ELSE
    CURRENT_AGE = YEAR - BIRTH_YEAR - 1
END IF

NEXT_BIRTHDAY_YEAR = YEAR + 1

IF N = 27 AND F = 10 THEN
    PRINT "--------------------------------------------------"
    PRINT "Happy Birthday to the Author, Aaron Ingebrigtsen!"
    PRINT "He will be "; CURRENT_AGE + 1; " on "; BIRTHDAY_DAY; "/"; BIRTHDAY_MONTH; "/"; NEXT_BIRTHDAY_YEAR
    PRINT "--------------------------------------------------"
END IF

' Gamma Ray Gun vs. Pie Absurdity
PRINT "--------------------------------------------------"
PRINT "Do you want to fire the Gamma Ray Gun at a pie? (Y/N)";
INPUT G$

IF G$ = "Y" THEN
    PI = 3.14159
    GAMMA_PI = EXP(LOG(ABS(PI)) * PI) ' Approximation of Gamma(π)
    PRINT "Gamma Ray Gun fired at the pie! Gamma(π) = "; GAMMA_PI
    PRINT "A rabbit appears and you run away!"
    PRINT "--------------------------------------------------"
END IF

' Ultimate Answer Easter Egg!
IF N = 42 OR F = 42 THEN
    PRINT "--------------------------------------------------"
    PRINT "The Answer to the Ultimate Question of Life, The Universe and Everything was used!"
    PRINT "Sorry for the inconvenience."
    PRINT "--------------------------------------------------"
END IF

PRINT "Run again? (Y/N)";
INPUT Y$

IF Y$ = "Y" THEN RUN
IF Y$ = "N" THEN END
