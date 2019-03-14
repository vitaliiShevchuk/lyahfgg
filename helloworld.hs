import Data.Char
import Control.Monad

main :: IO ()
main = do
    putStrLn "Hello, what's you name?"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")

main1 :: IO ()
main1 = do
    _ <- putStrLn "What's your first name?"
    firstName <- getLine
    _ <- putStrLn "What's your first name?"
    lastName <- getLine
    let bigFirstName = map toUpper firstName
        bigLastName = map toUpper lastName
    putStrLn $ "hey" ++ bigFirstName ++ " " ++ bigLastName ++ ", hay?"

main2 :: IO ()
main2 = do
    line <- getLine
    if null line
        then return ()
        else do 
            putStrLn $ reverseWords line
            main2

reverseWords :: String -> String
reverseWords = unwords . map reverse . words

mapColorToN :: Show a => a -> IO String
mapColorToN a = do 
    putStrLn $ "Which color eq " ++ show a ++ "?"
    color <- getLine
    return color

mainForM = do
    colors <- mapM mapColorToN [1,2,3,4]
    putStrLn "The colors associated are: "
    mapM putStrLn colors