PROGRAM CountWords(INPUT, OUTPUT);
USES
  CountWordSO, TreeModule;
VAR
  F: TEXT;
  Root: Tree;
  SWord: TWord;
BEGIN //CountWords v. 1
  Root := NIL;
  ASSIGN(F, 'input.txt');
  RESET(F);
  WHILE NOT EOF(F)
  DO
    BEGIN
    IF NOT EOLN(F)
    THEN
      BEGIN
        ReadWord(F, SWord);
        IF SWord <> ''
        THEN
          BEGIN
            Insert(Root, SWord);
          END
      END
    ELSE
      READLN(F)
    END;
  CLOSE(F);
  REWRITE(F, 'output.txt');
  PrintTree(F, Root);
  CLOSE(F)
END. //CountWords v. 1  

