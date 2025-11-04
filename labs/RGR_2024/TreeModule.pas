UNIT TreeModule; //TreeWord

INTERFACE

USES CountWordSO;
TYPE
  Tree = ^Node;
  Node = RECORD
           Word: TWord;
           Count: INTEGER;
           Left, Right: Tree
         END;
FUNCTION Compare(Word1, Word2: TWord): INTEGER;         
PROCEDURE Insert(VAR Ptr: Tree; SWord: TWord);
PROCEDURE PrintTree(VAR F: TEXT; Ptr: Tree);
PROCEDURE DisposeTree(VAR Ptr: Tree);

IMPLEMENTATION

FUNCTION Compare(Word1, Word2: TWord): INTEGER; // сравнение двух строк - Word1 и Word2             
VAR 
  I, Res: INTEGER;
BEGIN
  I := 1; // указатель на позицию символа
  Res := 0; // результат сравнения
  WHILE (I <= LENGTH(Word1)) AND (I <= LENGTH(Word2)) AND (Res = 0)
  DO
    BEGIN
      IF Word1[I] < Word2[I]
      THEN
        Res := -1
      ELSE
        IF Word1[I] > Word2[I]
        THEN
          Res := 1;
      I := I + 1
    END;
  IF Res = 0
  THEN
    BEGIN
      IF I <= LENGTH(Word1) 
      THEN
        Res := 1 // 1 если Word1 > Word2 
      ELSE
        IF I <= LENGTH(Word2)
        THEN
          Res := -1 // -1 если Word1 < Word2 
    END;
  Compare := Res
END;

PROCEDURE Insert(VAR Ptr: Tree; SWord: TWord);
VAR
  CompRes: INTEGER;
BEGIN
  IF Ptr = NIL
  THEN
    BEGIN
      NEW(Ptr);
      Ptr^.Word := SWord;
      Ptr^.Count := 1;
      Ptr^.Left := NIL;
      Ptr^.Right := NIL
    END
  ELSE
    BEGIN
      CompRes := Compare(Ptr^.Word, Sword);
      IF CompRes > 0 // SWord < Ptr^.Word
      THEN
        Insert(Ptr^.Left, Sword)
      ELSE
        IF CompRes < 0 // SWord > Ptr^.Word
        THEN
          Insert(Ptr^.Right, Sword)
        ELSE 
          Ptr^.Count := Ptr^.Count + 1 // SWord уже в дереве, увеличивается счетчик
    END
END;

PROCEDURE PrintTree(VAR F: TEXT; Ptr: Tree); // вывести слова в Файл F
BEGIN
  IF Ptr <> NIL
  THEN
    BEGIN
      PrintTree(F, Ptr^.Left); // рекурсия для левого поддерева
      WRITELN(F, Ptr^.Word, ' ', Ptr^.Count);
      PrintTree(F, Ptr^.Right) // рекурсия для правого поддерева
    END
END;

PROCEDURE DisposeTree(VAR Ptr: Tree);
BEGIN
  IF Ptr <> NIL
  THEN
    BEGIN
      DisposeTree(Ptr^.Left);
      DisposeTree(Ptr^.Right);
      DISPOSE(Ptr)
    END
END;

BEGIN
END.         
