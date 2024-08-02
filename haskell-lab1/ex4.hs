import GHC.RTS.Flags (DoCostCentres)

sqr :: Double -> Double
sqr x = x * x

vec2DLen :: (Double, Double) -> Double
vec2DLen (x, y) = sqrt (x ^ 2 + y ^ 2)

vec3DLen :: (Double, Double, Double) -> Double
vec3DLen (x, y, z) = sqrt (x ^ 2 + y ^ 2 + z ^ 2)

swap :: (Int, Char) -> (Char, Int)
swap (i, c) = (c, i)

threeEqual :: (Int, Int, Int) -> Bool
threeEqual (x, y, z) = (x == y) && (y == z)

semiPerimeter :: (Double, Double, Double) -> Double
semiPerimeter (a, b, c) = (a + b + c) / 2

triangleArea :: (Double, Double, Double) -> Double
triangleArea (a, b, c) = sqrt (semiPerimeter (a, b, c) * (semiPerimeter (a, b, c) - a) * (semiPerimeter (a, b, c) - b) * (semiPerimeter (a, b, c) - c))