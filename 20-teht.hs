main :: IO()
main = do
    putStrLn "Tehtävä 20 - Tulosta alkulukuja alkaen luvusta x lukuun y "
    -- luku x
    putStrLn "Anna  kokonaisluku >"
    strLuku <- getLine
    putStrLn("Annoit luvun: " ++ strLuku) 
    let nLuku = (read strLuku :: Integer)
     -- luku y
    putStrLn "Anna toinen kokonaisluku >"
    strLukuKaks <- getLine
    putStrLn("Annoit luvun: " ++ strLukuKaks) 
    let nLukuKaks = (read strLukuKaks :: Integer)
    putStrLn ("Luvut välillä " ++ strLuku ++ " ja " ++ strLukuKaks ++ " ovat: ")
    putStrLn $ show [nLuku..nLukuKaks]
    putStrLn("\n\nAlkuluvut välillä " ++ strLuku ++ " ja " ++ strLukuKaks ++ " ovat: ")
    let primeList =  [ x | x <- [nLuku..nLukuKaks], isPrime x]
    putStrLn $ show primeList
    putStrLn "\nTehtävä 20 - Ratkaisun loppu - Mika Huttunen"

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

{-
primeList :: [Integer] -> [Integer]
primeList (x:xs) | isPrime x = x : primeList xs
                 | otherwise = primeList xs 
primeList _                  = []


isPrime [p] = if null ([x | x <- [2.. p - 1], mod p x == 0])
              then show p 
              else ""


primesR :: Integral a => a -> a -> [a]
primesR a b = takeWhile (<= b) $ dropWhile (< a) $ sieve [2..]
  where sieve (n:ns) = n:sieve [ m | m <- ns, m `mod` n /= 0 ]

isPrime :: (Integral a) => a -> Bool
isPrime n | n < 4 = n > 1
isPrime n = all ((/=0).mod n) $ 2:3:[x + i | x <- [6,12..s], i <- [-1,1]]
            where s = floor $ sqrt $ fromIntegral n


primesR :: Integral a => a -> a -> [a]
primesR a b | even a = filter isPrime [a+1,a+3..b]
            | True   = filter isPrime [a,a+2..b]
-}                  
                    