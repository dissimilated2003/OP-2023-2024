PROGRAM RunBubbleSort(INPUT, OUTPUT);
{Сортируем первую строку INPUT в OUTPUT}
PROCEDURE BubbleSort(VAR InFile, OutFile: TEXT);
VAR
  Sorted: CHAR;
  F1, F2: TEXT;
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN {CopyFile}
  RESET(InFile);
  REWRITE(OutFile);
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch)
    END;
  WRITELN(OutFile)
END; {CopyFile}

PROCEDURE CopyAndSwap(VAR F1, F2: TEXT; VAR Sorted: CHAR);
{Копируем F1 в F2, проверяя отсортированность
 и переставляя первые соседние символы по порядку}
VAR
  Ch1, Ch2: CHAR;
BEGIN {CopyAndSwap}
  Sorted := 'Y';
  RESET(F1);
  REWRITE(F2);
  IF NOT EOLN(F1)
  THEN
    BEGIN
      READ(F1, Ch1);
      WHILE NOT EOLN(F1) {По крайней мере два символа остается для Ch1, Ch2}
      DO 
        BEGIN
          READ(F1, Ch2);  {Выводим   min(Ch1, Ch2) в F2, записывая
           отсортированные символы}
          IF Ch1 <= Ch2
          THEN
            BEGIN
              WRITE(F2, Ch1);
              Ch1 := Ch2
            END
          ELSE
            BEGIN
              WRITE(F2, Ch2);
              Sorted := 'N'
            END
        END;
      WRITELN(F2, Ch1) {Выводим последний символ в F2}
    END    
END; {CopyAndSwap}

BEGIN {BubbleSort}
  CopyFile(InFile, F1); {Копируем INPUT в F1}
  Sorted := 'N'; {Инициализация}
  WHILE Sorted = 'N'
  DO
    BEGIN
      CopyAndSwap(F1, F2, Sorted); {Копируем F2 в F1}
      CopyFile(F2, F1)
    END;
  CopyFile(F1, OutFile) {Копируем F1 в OUTPUT} 
END; {BubbleSort}  

BEGIN {RunBubbleSort}
  BubbleSort(INPUT, OUTPUT)  
END. {RunBubbleSort}
