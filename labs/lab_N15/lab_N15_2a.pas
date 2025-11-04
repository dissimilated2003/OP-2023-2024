PROGRAM Count3TestTwo(INPUT, OUTPUT);
USES
  Count3;
VAR
  Ch1, Ch2, Ch3, V100, V10, V1: CHAR;
BEGIN
  Start;
  READ(Ch1);
  READ(Ch2);
  READ(Ch3);
  WHILE NOT EOLN
  DO
    BEGIN
      IF ((Ch1 > Ch2) AND (Ch2 < Ch3)) OR ((Ch1 < Ch2) AND (Ch2 > Ch3))
      THEN
        BEGIN
          Bump;
          Ch1 := Ch2;
          Ch2 := Ch3
        END;
      READ(Ch3)
    END;
  Value(V100, V10, V1);
  WRITELN('Количество реверсов: ', V100, V10, V1)
END.
