... Foo a = MkFoo {...}
instance ... => Show ... where
	show (... {...}) = "Foo " ++ show n ++ " with " ++ show v
	
newtype / class / record / type / data
value(a), name(String) / value :: a, name :: String / value: a | name: String / a value, String name, a :: value, String :: name
Show / Show Foo / Show a / a
Foo a / (Foo a) / Foo / MkFoo / (MkFoo a)
MkFoo / Foo
value = v, name = n / value -> v, name -> n / v, n / v = value, n = 

=====================================================================================
Dla następującej definicji w haskell:
data Tree a = Node (Tree a) a (Tree a)
			| Leaf a
			
uzupełnij poniższą funkcję tak by zwracała listę elementów drzewa tak, by dla każdego węzła elementy z lewego poddrzewa występowały w liście z prawego
toList :: Tree a -> [a]
toList ... = ...
toList ... = ... ++ ... ++ ...

Wybory w kolejnośći:
(Leaf x) / Node / Leaf / Leaf x
x / 0 / [x] / []
Node{left, x, right} / Node left x right / Node(left, x, right)
toList left / left
x / [x]
toList right / right

======================================================================================
For the tree structure in haskell:
data Tree a = Node (Tree a) a (Tree a)
			| Leaf a
			
Fill the function, to calculate sum of squares of values in the tree:
sumSq :: Num a => Tree a -> a
sumSq ... = ...
sumSq ... = ... ++ ... ++ ...
sumSq Leaf = 0
sumSq (Node left x right) = x^2 + sumSq left + sumSq right

Choices in order:
Leaf / (Leaf x) / Node / Leaf x
0 / sumSq x / x / []
Node left x right / Node(left, x, right) / (Node left x right) / Node{left, x, right}
x / x^2
sumSq left / left
sumSq right / right

==============================================================

... Box a = MkBox {...}
instance ... => Show ... where
	show (... {...}) = "Box with " ++ show v
	
type / record / newtype / class / struct
valueInside :: a / a valueInside / valueInside: a / valueInside(a)
Show a / Show Box / Show (Box a) / a / Show
(Box a) / a / Box / Box a
MkBox / Box
v / v :: valueInside / valueInside = v / v = valueInside

==============================================================

... Data = Data {... , ...}

type / struct / data / record / newtype
String first / String / first :: String / first: String
second: String / String second / String / second :: String