import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 8 - Tuplaa listan sisältö\n"
    print "Anna lista >"
    sanalista <- getLine
    putStrLn ("Annoit sanaluettelon: " ++ sanalista)
    -- tuplataan alkiot
    putStrLn "Tuplattu sanaluettelo on"
    let doubledList = map (repeatMine 2) sanalista
    let doubledListFinal = intercalate "" doubledList
    putStrLn $ doubledListFinal
        
    putStrLn "\nTehtävä 8 - Ratkaisun loppu - Mika Huttunen"


-- toista alkiota n kertaa
repeatMine :: Int -> a -> [a]
repeatMine n x
    | n <= 0    = []
    | otherwise = x : repeatMine (n-1) x



