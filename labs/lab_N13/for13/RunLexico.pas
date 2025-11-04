PROGRAM RunLexico(INPUT, OUTPUT);
VAR
  Result: CHAR; 
  F1, F2: TEXT;
PROCEDURE Lexico(VAR F1, F2: TEXT; VAR Result: CHAR);
{Result 0, 1, 2 если  лексикографический порядок F1 =, <, > чем F2       
соответственно. Фактические параметры, соответствующие F1 и F2,
должны быть различными}
VAR
  Ch1, Ch2: CHAR;
BEGIN {Lexico}
  RESET(F1);
  RESET(F2);
  Result := '0';
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (Result = '0')
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2)
      THEN {Ch1 < Ch2 или F1 короче F2}
        Result := '1'
      ELSE
        IF (Ch1 > Ch2)
        THEN {Ch1 > Ch2 или F2 короче F1}
          Result := '2'
    END; {WHILE}
  IF Result = '0'
  THEN
    IF NOT EOLN(F2)
    THEN
      Result := '1'
    ELSE
      IF NOT EOLN(F1)
      THEN
        Result := '2'
END; {Lexico}

PROCEDURE CopyLine(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN {CopyLine}
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch)
    END
END; {CopyLine}

BEGIN {RunLexico}
  REWRITE(F1);
  REWRITE(F2);
  IF NOT EOF(INPUT)
  THEN
    BEGIN
      CopyLine(INPUT, F1);
      WRITELN(F1);
    END;
  READLN(INPUT);
  IF NOT EOF(INPUT)
  THEN
    BEGIN
      CopyLine(INPUT, F2);
      WRITELN(F2);
    END;
  RESET(F1);
  RESET(F2);
  Lexico(F1, F2, Result);
  RESET(F1);
  RESET(F2);
  IF Result = '0'
  THEN
    BEGIN
      WRITE(OUTPUT, 'Оба слова ');
      CopyLine(F1, OUTPUT);
      WRITELN(OUTPUT)
    END
  ELSE
    IF Result = '1'
    THEN
      BEGIN
        WRITE(OUTPUT, 'Слово ');
        CopyLine(F1, OUTPUT);
        WRITE(OUTPUT, ' меньше слова ');
        CopyLine(F2, OUTPUT);
        WRITELN(OUTPUT)
      END
    ELSE
      IF Result = '2'
      THEN
        BEGIN
          WRITE(OUTPUT, 'Слово ');
          CopyLine(F1, OUTPUT);
          WRITE(OUTPUT, ' больше слова ');
          CopyLine(F2, OUTPUT);
          WRITELN(OUTPUT)
        END     
END. {RunLexico} 
