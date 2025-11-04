PROGRAM Psevdographics(INPUT, OUTPUT);
CONST
  Stroka = 5;
  Stolb = 5;
  Matrix = Stroka * Stolb;
VAR
  Ch: CHAR; 
  S: STRING;
  I, J, Count: INTEGER;
PROCEDURE Entry1;
BEGIN
  CASE Ch OF
    'A', 'a' : WRITE('  #  ');
    'B', 'b' : WRITE('#### ');
    'C', 'c' : WRITE(' ### ');
    'D', 'd' : WRITE('#### ');
    'E', 'e' : WRITE('#####');
    'F', 'f' : WRITE('#####');
    'G', 'g' : WRITE(' ### ');
    'H', 'h' : WRITE('#   #');
    'I', 'i' : WRITE(' ### ');
    'J', 'j' : WRITE('   # ');
    'K', 'k' : WRITE('#   #');
    'L', 'l' : WRITE('#    ');
    'M', 'm' : WRITE('#   #');
    'N', 'n' : WRITE('#   #');
    'O', 'o' : WRITE(' ### ');
    'P', 'p' : WRITE('#### ');
    'Q', 'q' : WRITE(' ### ');
    'R', 'r' : WRITE('#### ');
    'S', 's' : WRITE(' ####');
    'T', 't' : WRITE('#####');
    'U', 'u' : WRITE('#   #');
    'V', 'v' : WRITE('#   #');
    'W', 'w' : WRITE('# # #');
    'X', 'x' : WRITE('#   #');
    'Y', 'y' : WRITE('#   #');
    'Z', 'z' : WRITE('#####');
    ' ' : WRITE('     ');
  ELSE
    WRITE('Error')
  END;
END;
PROCEDURE Entry2;
BEGIN
  CASE S[I] OF
    'A', 'a' : WRITE('  #  ');
    'B', 'b' : WRITE('#   #');
    'C', 'c' : WRITE('#   #');
    'D', 'd' : WRITE('#   #');
    'E', 'e' : WRITE('#    ');
    'F', 'f' : WRITE('#    ');
    'G', 'g' : WRITE('#    ');
    'H', 'h' : WRITE('#   #');
    'I', 'i' : WRITE('  #  ');
    'J', 'j' : WRITE('   # ');
    'K', 'k' : WRITE('#  # ');
    'L', 'l' : WRITE('#    ');
    'M', 'm' : WRITE('## ##');
    'N', 'n' : WRITE('##  #');
    'O', 'o' : WRITE('#   #');
    'P', 'p' : WRITE('#   #');
    'Q', 'q' : WRITE('#   #');
    'R', 'r' : WRITE('#   #');
    'S', 's' : WRITE('#    ');
    'T', 't' : WRITE('  #  ');
    'U', 'u' : WRITE('#   #');
    'V', 'v' : WRITE('#   #');
    'W', 'w' : WRITE('# # #');
    'X', 'x' : WRITE(' # # ');
    'Y', 'y' : WRITE(' # # ');
    'Z', 'z' : WRITE('   # ');
    ' ' : WRITE('     ');
  ELSE
    WRITE('Error')
  END;
END;
PROCEDURE Entry3;
BEGIN
  CASE S[I] OF
    'A', 'a' : WRITE(' # # ');
    'B', 'b' : WRITE('#### ');
    'C', 'c' : WRITE('#    ');
    'D', 'd' : WRITE('#   #');
    'E', 'e' : WRITE('#### ');
    'F', 'f' : WRITE('#### ');
    'G', 'g' : WRITE('# ###');
    'H', 'h' : WRITE('#####');
    'I', 'i' : WRITE('  #  ');
    'J', 'j' : WRITE('   # ');
    'K', 'k' : WRITE('###  ');
    'L', 'l' : WRITE('#    ');
    'M', 'm' : WRITE('# # #');
    'N', 'n' : WRITE('# # #');
    'O', 'o' : WRITE('#   #');
    'P', 'p' : WRITE('#### ');
    'Q', 'q' : WRITE('# # #');
    'R', 'r' : WRITE('#### ');
    'S', 's' : WRITE(' ### ');
    'T', 't' : WRITE('  #  ');
    'U', 'u' : WRITE('#   #');
    'V', 'v' : WRITE(' # # ');
    'W', 'w' : WRITE('#####');
    'X', 'x' : WRITE('  #  ');
    'Y', 'y' : WRITE('  #  ');
    'Z', 'z' : WRITE('  #  ');
    ' ' : WRITE('     ');
  ELSE
    WRITE('Error')
  END;
END;
PROCEDURE Entry4;
BEGIN
  CASE S[I] OF
    'A', 'a' : WRITE(' ### ');
    'B', 'b' : WRITE('#   #');
    'C', 'c' : WRITE('#   #');
    'D', 'd' : WRITE('#   #');
    'E', 'e' : WRITE('#    ');
    'F', 'f' : WRITE('#    ');
    'G', 'g' : WRITE('#  ##');
    'H', 'h' : WRITE('#   #');
    'I', 'i' : WRITE('  #  ');
    'J', 'j' : WRITE(' # # ');
    'K', 'k' : WRITE('#  # ');
    'L', 'l' : WRITE('#    ');
    'M', 'm' : WRITE('#   #');
    'N', 'n' : WRITE('#  ##');
    'O', 'o' : WRITE('#   #');
    'P', 'p' : WRITE('#    ');
    'Q', 'q' : WRITE('#  ##');
    'R', 'r' : WRITE('#  # ');
    'S', 's' : WRITE('    #');
    'T', 't' : WRITE('  #  ');
    'U', 'u' : WRITE('#   #');
    'V', 'v' : WRITE(' # # ');
    'W', 'w' : WRITE(' # # ');
    'X', 'x' : WRITE(' # # ');
    'Y', 'y' : WRITE('  #  ');
    'Z', 'z' : WRITE(' #   ');
    ' ' : WRITE('     ');
  ELSE
    WRITE('Error')
  END;
END;
PROCEDURE Entry5;
BEGIN
  CASE S[I] OF
    'A', 'a' : WRITE('#   #');
    'B', 'b' : WRITE('#### ');
    'C', 'c' : WRITE(' ### ');
    'D', 'd' : WRITE('#### ');
    'E', 'e' : WRITE('#####');
    'F', 'f' : WRITE('#    ');
    'G', 'g' : WRITE(' ## #');
    'H', 'h' : WRITE('#   #');
    'I', 'i' : WRITE(' ### ');
    'J', 'j' : WRITE('  #  ');
    'K', 'k' : WRITE('#   #');
    'L', 'l' : WRITE('#####');
    'M', 'm' : WRITE('#   #');
    'N', 'n' : WRITE('#   #');
    'O', 'o' : WRITE(' ### ');
    'P', 'p' : WRITE('#    ');
    'Q', 'q' : WRITE(' ### ');
    'R', 'r' : WRITE('#   #');
    'S', 's' : WRITE('#### ');
    'T', 't' : WRITE('  #  ');
    'U', 'u' : WRITE(' ### ');
    'V', 'v' : WRITE('  #  ');
    'W', 'w' : WRITE(' # # ');
    'X', 'x' : WRITE('#   #');
    'Y', 'y' : WRITE('  #  ');
    'Z', 'z' : WRITE('#####');
    ' ' : WRITE('     ');
  ELSE
    WRITE('Error')
  END;
END;

BEGIN //psevdogrkJALFJSBK
  Count := 0;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      S := S + Ch;
      Count := Count + 1;   
      Entry1;
      WRITE(' ')
    END;
  WRITELN;
  FOR I := 1 TO Count
  DO
    BEGIN 
      Entry2;
      WRITE(' ')
    END;
  WRITELN; I := 1;
  FOR I := 1 TO Count
  DO
    BEGIN 
      Entry3;
      WRITE(' ')
    END;
  WRITELN; I := 1;
  FOR I := 1 TO Count
  DO
    BEGIN 
      Entry4;
      WRITE(' ')
    END;
  WRITELN; I := 1;
  FOR I := 1 TO Count
  DO
    BEGIN 
      Entry5;
      WRITE(' ')
    END;
  WRITELN; I := 1;
  WRITELN
END. //kolbasa