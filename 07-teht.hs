import Data.String
import Data.List 

main :: IO()
main = do
    putStrLn "Tehtävä 7 - Poista listasta saman alkion peräkkäiset esiintymät. "
    putStrLn "Jos lista sisältää samoja arvo peräkkäin, poistetaan ylimääräiset esiintymät "
    putStrLn "ja vain yksi arvo jää jäljelle. Listan elementtien järjestys ei saa muuttua."
    putStrLn "Anna sana >"
    sanalista <- getLine
    putStrLn ("Annoit sanaluettelon: " ++ sanalista)
    -- poistetaan peräkkäiset esiintymät
    putStrLn ("Peräkkäisten merkkien poistamisen jälkeen sana on\n")
    let removedChars = remdups sanalista
    putStrLn $ removedChars
    
    putStrLn "\nTehtävä 7 - Ratkaisun loppu - Mika Huttunen"

fnr :: (Eq a) => a -> [a] -> [a]
fnr x [] = [x]
fnr x xs
 | x == head xs = xs
 | otherwise = x:xs

-- poista duplikaatit
remdups :: (Eq a) => [a] -> [a]
remdups [] = []
remdups ys = foldr fnr [] ys

