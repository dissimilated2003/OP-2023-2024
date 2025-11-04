PROGRAM InsertTest(INPUT, OUTPUT);
TYPE
  Node = RECORD
           Key: CHAR;
           Next: ^Node
         END;
VAR
  First, NewPtr, Curr, Prev: ^Node;
  Found: BOOLEAN;
BEGIN {InsertTest}
  First := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      NEW(NewPtr);
      READ(NewPtr^.Key);
      Prev := NIL;  {DP2.1}
      Curr := First;
      
      {DP2.1.1}
      
      NewPtr^.Next := Curr;
      IF Prev = NIL
      THEN {Вставляем в начало}
        First := NewPtr
      ELSE
        Prev^.Next := NewPtr;  
    END;
  NewPtr := First;  {DP2.2 Распечатываем список, начиная с First}
  WHILE NewPtr <> NIL 
  DO
    BEGIN
      WRITE(NewPtr^.Key);
      NewPtr := NewPtr^.Next
    END;
  WRITELN
END. {InsertTest}

