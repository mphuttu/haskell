import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 9 - Kloonaa listan elementtejä parametrina annetun arvon verran\n"
    putStrLn "Anna lista >"
    sanalista <- getLine
    putStrLn ("Annoit sanaluettelon: " ++ sanalista)
    -- tuplataan alkiot
    putStrLn "Kuinka monta kertaa haluat kloonata listan elementtejä? "
    putStrLn "Anna luku > "
    strLkm <- getLine 
    let nLkm = read strLkm
    let clonedList = map (repeatMine nLkm) sanalista
    let clonedListFinal = intercalate "" clonedList
    putStrLn $ clonedListFinal
        
    putStrLn "\nTehtävä 9 - Ratkaisun loppu - Mika Huttunen"


-- toista alkiota n kertaa
repeatMine :: Int -> a -> [a]
repeatMine n x
    | n <= 0    = []
    | otherwise = x : repeatMine (n-1) x



