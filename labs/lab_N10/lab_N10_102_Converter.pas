PROGRAM RunBubbleSort(INPUT, OUTPUT);
VAR
  Sorted, Ch, Ch1, Ch2:CHAR;
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
  CopyFile(F1, F2);
END. {RunBubbleSort}
