PROGRAM Counting(INPUT, OUTPUT);
USES
  Count3;
VAR
  Ch, V100, V10, V1: CHAR;
BEGIN
  Start;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Bump
    END;
  Value(V100, V10, V1);
  WRITELN('Количество символов: ', V100, V10, V1)
END.
