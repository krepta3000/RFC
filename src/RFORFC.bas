ASK_N:
INPUT "Enter a positive whole number: ", N
N = INT(N)
IF N < 1 THEN 
 PRINT "Invalid input, please try again."
 GOTO ASK_N
ENDIF

ASK_F
INPUT "Enter factorial depth (! count): ", F
F = INT(F)
IF F < 1 THEN
 PRINT "Invalid input, please try again."
 GOTO ASK_F
ENDIF
IF F > N - 1 THEN
 PRINT "That factorial is invalid, please enter a factorial that is"; N -1; " or less."
 GOTO ASK_F
ENDIF