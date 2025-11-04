PROGRAM InsertSort2(INPUT, OUTPUT);
TYPE
  Node = RECORD
           Key: CHAR;
           Next: ^Node
         END;
VAR
  First, NewPtr, Curr, Prev: ^Node;
  Found: BOOLEAN;
BEGIN {InsertSort2}
  First := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      NEW(NewPtr);
      READ(NewPtr^.Key);
      Prev := NIL; {DP2.1}
      Curr := First;
      {Находим Prev и Curr для позиции вставки}
      Found := FALSE; {DP2.1.1}
      WHILE (Curr <> NIL) AND (NOT FOUND)
      DO
        BEGIN
          IF NewPtr^.Key > Curr^.Key
          THEN
            BEGIN
              Prev := Curr;
              Curr := Curr^.Next
            END
          ELSE
            Found := TRUE
        END; 
      NewPtr^.Next := Curr;
      IF Prev = NIL
      THEN {Вставляем в начало}
        First := NewPtr
      ELSE
        Prev^.Next := NewPtr  
    END;
  NewPtr := First; {DP2.2 Распечатываем список, начиная с First}
  WHILE NewPtr <> NIL 
  DO
    BEGIN
      WRITE(NewPtr^.Key);
      NewPtr := NewPtr^.Next
    END;
  WRITELN
END. {InsertSort2}

