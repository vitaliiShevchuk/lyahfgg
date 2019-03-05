sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

product' :: (Num a) => [a] -> a
product' = foldl (*) 1

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys

identity' :: a -> a
identity' a = a

foldLeftViaFoldRight :: (Show a, Show b) => (b -> a -> b) -> b -> [a] -> b
foldLeftViaFoldRight f zero list =
 foldr(\a g -> \b -> g(f b a)) id list zero
 
maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

head' :: [a] -> a
head' = foldr1 (\x _ -> x)

tail' :: [a] -> a
tail' = foldl1 (\_ x -> x)

sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1

rightAssociativeApply = map ($ 3) [(4+), (10*), (^2), sqrt]

newSquareSum = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]