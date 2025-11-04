PROGRAM Len(INPUT, OUTPUT);
USES Count3;
VAR
  V100, V10, V1, Ch: CHAR;
BEGIN {Len}
  Start;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Bump  
    END;
  Value(V100, V10, V1);
  WRITELN(V100, V10, V1)  
END. {Len}
