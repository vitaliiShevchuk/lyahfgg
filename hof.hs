Module Hof where 

compareWith100 = compare 100

divideByTen = (/10)

tenDivideBy = (10 /)

applyTwice :: (a -> a) -> a -> a
applyTwice f a = f (f a)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
    where g x y = f y x

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain (div n 2)
    | odd n  = n:chain (n*3 + 1)

numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15