import Data.String
import Data.List 
import Data.Function
import Data.Ord
import Data.Char
main :: IO()
main = do
    putStrLn "Tehtävä 18 - Tutki, onko annettu lukualkuluku"
   
    -- luku x
    putStrLn "Anna  kokonaisluku >"
    strLuku <- getLine
    print("Annoit luvun: " ++ strLuku) 
    let nLuku = (read strLuku :: Integer)
    -- onko luku alkuluku
    if isPrime nLuku
        then putStrLn "Luku ON alkuluku!"
        else putStrLn "Luku EI OLE alkuluku."
    putStrLn "\nTehtävä 18 - Ratkaisun loppu - Mika Huttunen"



 {- We need to make a list of integers from 2 to square root of N -}
 
mkList :: Integer -> [Integer]
mkList n = [2..k]
 where k = toInteger (ceiling $ sqrt $ fromIntegral n )
 
{- Check if a number divides another number. -}
isFactor :: Integer -> Integer -> Bool
isFactor m n 
    | mod m n == 0 = True
    | otherwise = False
 
{- This function returns array of Bool indicating if the element from
 the list created by mkList is a factor of the given number or not. -}
 
isAnyFactor :: Integer -> [Integer] -> [Bool]
isAnyFactor _ [] = [False]
isAnyFactor z (x:xs) = isFactor z x : isAnyFactor z xs
 
{- Now test for primality. If a given number is prime, then all of the
 elements in the list returned ny isAnyFactor must be False -}
isPrime :: Integer -> Bool
isPrime n = not $ or $ isAnyFactor n (mkList n)