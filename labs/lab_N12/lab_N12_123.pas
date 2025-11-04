PROGRAM IfElse(INPUT, OUTPUT);
VAR
  V1, V2: CHAR;
BEGIN
  READ(V1, V2);
  IF V1 < V2
  THEN
    V1 := V2
  ELSE
    BEGIN
      IF V2 < V1
      THEN
        V2 := V1
    END;
  WRITELN(V1, V2)  
END.