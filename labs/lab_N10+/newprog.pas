PROGRAM Task_10_2(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      READ(Ch);
      IF Ch = ';'
      THEN
        BEGIN
          WRITE(Ch);
          WRITELN(' ')
        END
      ELSE
        WRITE(Ch)
    END;
    
END.