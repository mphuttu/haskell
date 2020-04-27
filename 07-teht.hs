import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 7 - Poista listasta saman alkion peräkkäiset esiintymät. \n"
    putStrLn "Jos lista sisältää samoja arvo peräkkäin, poistetaan ylimääräiset esiintymät \n"
    putStrLn "ja vain yksi arvo jää jäljelle. Listan elementtien järjestys ei saa muuttua. \n"
    print "Anna sana >"
    sanalista <- getLine
    print ("Annoit sanaluettelon: " ++ show sanalista)
    -- poistetaan peräkkäiset esiintymät
    print ("Peräkkäisten merkkien poistamisen jälkeen sana on\n")
    let removedChars = remdups sanalista
    print(show removedChars)
    
    putStrLn "\nTehtävä 7 - Ratkaisun loppu - Mika Huttunen"

fnr :: (Eq a) => a -> [a] -> [a]
fnr x [] = [x]
fnr x xs
 | x == head xs = xs
 | otherwise = x:xs


remdups :: (Eq a) => [a] -> [a]
remdups [] = []
remdups ys = foldr fnr [] ys

