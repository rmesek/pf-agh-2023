sum1_5 = [a - b | a <- [1 .. 5], b <- [1 .. a - 1], even (a + b)]

sum1_8 = [a * b | a <- [1 .. 8], b <- [1 .. a], odd (a - b)]

toSquare = (^ 2) -- let f = (^2)

add3 = (+) 3 -- let f = (+) 3

f1 = reverse (take 5 (0 : [] ++ [2 ..])) !! 3 -- -> 2

f2 = zip [1 ..] (reverse (take 3 (2 : [2 ..]))) -- -> [(1,3),(2,2),(3,2)]

sumSquares :: (Num a) => [a] -> a
sumSquares = loop 0
  where
    loop acc [] = acc
    loop acc (x : xs) = loop (x ^ 2 + acc) xs
