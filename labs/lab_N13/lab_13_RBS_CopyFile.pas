PROGRAM RunBubbleSort(INPUT, OUTPUT);
VAR
  F1, F2:TEXT;
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN {CopyFile}
  WHILE NOT EOF(InFile)
  DO
    BEGIN
      WHILE NOT EOLN(InFile)
      DO
        BEGIN
          READ(InFile, Ch);
          WRITE(OutFile, Ch)
        END
    END
END; {CopyFile}
BEGIN {RunBubbleSort}
  RESET(F1);
  READLN(F1);
  CopyFile(F1, F2);
  WRITELN(F2)
END. {RunBubbleSort}
