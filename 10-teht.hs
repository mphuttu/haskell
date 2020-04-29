import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 10 - Poista listasta joka k:s elementti\n"
    print "Anna lista >"
    sanalista <- getLine
    putStrLn ("Annoit sanaluettelon: " ++ sanalista)
    putStrLn "Kuinka monennen elementin (joka toisen, joka kolmannen, ...) haluat poistaa ?"
    putStrLn "Anna luku > "
    strLkm <- getLine
    let nLkm = read strLkm
    -- poistetaan joka nLkm:s alkio
    putStrLn "Poistojen jälkeen sanaluettelo on"
    let afterList = del_every_nth nLkm sanalista
    -- let afterListFinal = intercalate "" afterList
    putStrLn $ afterList
        
    putStrLn "\nTehtävä 10 - Ratkaisun loppu - Mika Huttunen"


-- poista joka n:s alkio
del_every_nth :: Int -> [a] -> [a]
del_every_nth n = concat . map init . groupMy n 

-- ryhmitellään lista n:än pituisiin osiin 
groupMy :: Int -> [a] -> [[a]] 
groupMy n [] = []
groupMy n xs = take n xs : groupMy n (drop n xs)



