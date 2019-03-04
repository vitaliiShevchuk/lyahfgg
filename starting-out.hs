doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"

--An intro to lists
lostNumbers = [4,8,15,16,23,42]

lostNumbersOps = 
    print ([1,2,3,4] ++ [9,10,11,12]) >>
    print ("hello" ++ "  " ++ "world") >>
    print ('A':" SMALL CAT") >>
    print ("Steve Buscemi" !! 6)

--comparisons
cmp = print([3,2,1] > [2,1,0]) >>
      print([3,2,1] > [2,10,100]) >>
      print([3,4,2] > [3, 4])


--list operations
sampleList = 5:4:3:2:1:[]
listOps = 
    print("sampleList = " ++ show sampleList) >>
    print("head sampleList = " ++ show(head sampleList)) >>
    print("tail sampleList = " ++ show(tail sampleList)) >>
    print("last sampleList = " ++ show(last sampleList)) >>
    print("init sampleList = " ++ show(init sampleList)) >>
    print("length sampleList = " ++ show(length sampleList)) >>
    print("null sampleList = " ++ show(null sampleList)) >>
    print("reverse sampleList = " ++ show(reverse sampleList)) >>
    print("take 3 sampleList = " ++ show(take 3 sampleList)) >>
    print("drop 3 sampleList = " ++ show(drop 3 sampleList)) >>
    print("minimum sampleList = " ++ show (minimum sampleList)) >>
    print("maximum sampleList = " ++ show (maximum sampleList)) >>
    print("sum sampleList = " ++ show (sum sampleList)) >>
    print("product sampleList = " ++ show (product sampleList)) >>
    print("4 `elem` sampleList = " ++ show (4 `elem` sampleList))


--ranges
rangeOps = 
    print("[1..20] = " ++ show [1..20]) >>
    print("[2,4..16] = " ++ show [2,4..16]) >>
    print("[20,19..(-4) = " ++ show [20,19..(-4)]) >>
    print("(take 10 (cycle [1,2,3] = " ++ show (take 10 (cycle [1,2,3]))) >>
    print("(take 10 (repeat 7)) = " ++ show (take 10 (repeat 7)))


--list comprehension
listComprehensions = 
    print("[x*2 | x <- [1..10]] = " ++ show [x*2 | x <- [1..10]]) >>
    print("[x*2 | x <- [1..10], x*2 >= 12] = " ++ show([x*2 | x <- [1..10], x*2 >= 12])) >>
    print("[ x | x <- [50..100], x `mod` 7 == 3] = " ++ show([ x | x <- [50..100], x `mod` 7 == 3])) >>
    print("[x * y | x <- [2,5,10], y <- [8,10,11], x*y > 50] = " ++ show([x * y | x <- [2,5,10], y <- [8,10,11], x*y > 50]))

boomBangs xs = 
    [if x < 10 then "BOOM!" else "BANG" | x <- xs, odd x]

lenght2 xs =
    sum [1| _ <- xs]

removeNonUppercase st = 
    [c | c <- st, c `elem` ['A'..'Z']]

xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]

xxsComprehension = 
   [ [x | x <- xs, even x] | xs <-xxs ]

--tuples
tupleOps = 
    print("fst (8, 11) = " ++ show(fst (8, 11))) >>
    print("snd (8, 11) = " ++ show(snd (8, 11))) >>
    print("zip [1..5] ['A'..]" ++ show(zip [1..5] ['A'..]))

triangles = 
    [(a, b, c) | 
        c <- [1..10], 
        b <- [1..c], 
        a <- [1..b], a^2+b^2==c^2]

rightTriangles = 
    [(a, b, c) | (a, b, c) <- triangles, a+b+c==24]