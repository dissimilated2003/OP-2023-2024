UNIT CountWordSO; //IsWord

INTERFACE

CONST
  MaxWordLength = 50; // максимальная длина слова
TYPE
  TWord = STRING[MaxWordLength];
PROCEDURE ReadWord(VAR F: TEXT; VAR SWord: TWord);     
    
IMPLEMENTATION

FUNCTION IsLetter(Ch: CHAR): BOOLEAN; // проверка - буква ли это? IsCorrectWordChar
BEGIN // буква - если символ в этих диапазонах, также (ё) и дефис
  IsLetter := Ch IN ['a' .. 'z', 'A' .. 'Z', 'А' .. 'Я', 'а' .. 'я', '-', 'ё', 'Ё']
END;

FUNCTION ToLower(Ch: CHAR): CHAR; // переводит верхний регистр в нижний
BEGIN // пусть регистр - нижний
  IF Ch = 'A' THEN ToLower := 'a' ELSE
  IF Ch = 'B' THEN ToLower := 'b' ELSE
  IF Ch = 'C' THEN ToLower := 'c' ELSE
  IF Ch = 'D' THEN ToLower := 'd' ELSE
  IF Ch = 'E' THEN ToLower := 'e' ELSE
  IF Ch = 'F' THEN ToLower := 'f' ELSE
  IF Ch = 'G' THEN ToLower := 'g' ELSE
  IF Ch = 'H' THEN ToLower := 'h' ELSE
  IF Ch = 'I' THEN ToLower := 'i' ELSE
  IF Ch = 'J' THEN ToLower := 'j' ELSE
  IF Ch = 'K' THEN ToLower := 'k' ELSE
  IF Ch = 'L' THEN ToLower := 'l' ELSE
  IF Ch = 'M' THEN ToLower := 'm' ELSE
  IF Ch = 'N' THEN ToLower := 'n' ELSE
  IF Ch = 'O' THEN ToLower := 'o' ELSE
  IF Ch = 'P' THEN ToLower := 'p' ELSE
  IF Ch = 'Q' THEN ToLower := 'q' ELSE
  IF Ch = 'R' THEN ToLower := 'r' ELSE
  IF Ch = 'S' THEN ToLower := 's' ELSE
  IF Ch = 'T' THEN ToLower := 't' ELSE
  IF Ch = 'U' THEN ToLower := 'u' ELSE
  IF Ch = 'V' THEN ToLower := 'v' ELSE
  IF Ch = 'W' THEN ToLower := 'w' ELSE
  IF Ch = 'X' THEN ToLower := 'x' ELSE
  IF Ch = 'Y' THEN ToLower := 'y' ELSE
  IF Ch = 'Z' THEN ToLower := 'z' ELSE
  IF Ch = 'А' THEN ToLower := 'а' ELSE
  IF Ch = 'Б' THEN ToLower := 'б' ELSE
  IF Ch = 'В' THEN ToLower := 'в' ELSE
  IF Ch = 'Г' THEN ToLower := 'г' ELSE
  IF Ch = 'Д' THEN ToLower := 'д' ELSE
  IF Ch = 'Е' THEN ToLower := 'е' ELSE
  IF Ch = 'Ё' THEN ToLower := 'ё' ELSE
  IF Ch = 'Ж' THEN ToLower := 'ж' ELSE
  IF Ch = 'З' THEN ToLower := 'з' ELSE
  IF Ch = 'И' THEN ToLower := 'и' ELSE
  IF Ch = 'Й' THEN ToLower := 'й' ELSE
  IF Ch = 'К' THEN ToLower := 'к' ELSE
  IF Ch = 'Л' THEN ToLower := 'л' ELSE
  IF Ch = 'М' THEN ToLower := 'м' ELSE
  IF Ch = 'Н' THEN ToLower := 'н' ELSE
  IF Ch = 'О' THEN ToLower := 'о' ELSE
  IF Ch = 'П' THEN ToLower := 'п' ELSE
  IF Ch = 'Р' THEN ToLower := 'р' ELSE
  IF Ch = 'С' THEN ToLower := 'с' ELSE
  IF Ch = 'Т' THEN ToLower := 'т' ELSE
  IF Ch = 'У' THEN ToLower := 'у' ELSE
  IF Ch = 'Ф' THEN ToLower := 'ф' ELSE
  IF Ch = 'Х' THEN ToLower := 'х' ELSE
  IF Ch = 'Ц' THEN ToLower := 'ц' ELSE
  IF Ch = 'Ч' THEN ToLower := 'ч' ELSE
  IF Ch = 'Ш' THEN ToLower := 'ш' ELSE
  IF Ch = 'Щ' THEN ToLower := 'щ' ELSE
  IF Ch = 'Ъ' THEN ToLower := 'ъ' ELSE
  IF Ch = 'Ы' THEN ToLower := 'ы' ELSE
  IF Ch = 'Ь' THEN ToLower := 'ь' ELSE
  IF Ch = 'Э' THEN ToLower := 'э' ELSE
  IF Ch = 'Ю' THEN ToLower := 'ю' ELSE
  IF Ch = 'Я' THEN ToLower := 'я' 
  ELSE
    ToLower := Ch // иначе не меняем
END;

PROCEDURE ReadWord(VAR F: TEXT; VAR SWord: TWord); // чтение 1 слова из файла
VAR
  Ch: CHAR;
  NotLetter: BOOLEAN;
BEGIN
  SWord := ''; // инициализация
  NotLetter := FALSE;
  WHILE (NOT EOLN(F)) AND (NOT NotLetter)
  DO
    BEGIN
      READ(F, Ch); 
      IF IsLetter(Ch) 
      THEN
        SWord := SWord + ToLower(Ch) // если символ буква - прибавлается к SWord
      ELSE
        BEGIN
          IF LENGTH(SWord) > MaxWordLength
          THEN
            BEGIN
              SWord := ''; // игнорирует, если длина больше MaxLength, обнуляет
              NotLetter := TRUE
            END
          ELSE
            NotLetter := TRUE
        END
    END
END;

BEGIN // count word string object
END. // count word string object
