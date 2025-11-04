PROGRAM LastChar(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      IF EOLN
      THEN
        WRITELN(Ch)
    END
  WRITELN
END.