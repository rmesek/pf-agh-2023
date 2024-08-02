sgn :: Int -> Int
sgn n =
  if n < 0
    then -1
    else
      if n == 0
        then 0
        else 1

absInt :: Int -> Int -- absInt 2 = absInt (-2) = 2
absInt n =
  if n >= 0
    then n
    else -1 * n

min2Int :: (Int, Int) -> Int -- min (1,2) = 1, min (-1, -1) = -1
min2Int (a, b) =
  if b < a
    then b
    else a

min3Int :: (Int, Int, Int) -> Int
min3Int (a, b, c) = min2Int (min2Int (a, b), c)

toUpper :: Char -> Char
toUpper c = toEnum (fromEnum c - 32)

toLower :: Char -> Char
toLower c = toEnum (fromEnum c + 32)

isDigit :: Char -> Bool
isDigit c = (fromEnum c >= 48) && (fromEnum c <= 57)