import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 11 - Pilko lista kahteen osaan;\n"
    putStrLn "ensimmäisen listan pituus annetaan parametrina\n"
    putStrLn "Anna lista (merkkijono yhteen kirjoitettuna) >"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList-sanalistaksi tyyppiä String
    -- words -apufunktion avulla
    -- let wordList = words sanalista
    -- let wordList = lines sanalista
    print ("Annoit sanaluettelon: " ++ sanalista)
    -- listan pituus
    let nLen = length sanalista 
    print("Antamasi merkkijonon pituus on " ++  show nLen)
    putStrLn "Mistä kohdasta haluat jakaa antamasi merkkijonon?"
    print ("Anna luku, suurempi kuin 0 ja pienempi kuin " ++ show nLen)
    strLkm <- getLine
    let nLkm = read strLkm
    -- jaetaan lista kahteen osaan
    putStrLn "Jaetaan lista kahteen osaan (tuple)"
    let (firstList, secList) = splitAtIn nLkm sanalista
    -- mapM_ print [(firstList), (secList)]
    print $ (firstList, secList)
        
    putStrLn "\nTehtävä 11 - Ratkaisun loppu - Mika Huttunen"

-- käytetään take-funktiota, n ensimmäistä alkiota otetaan mukaan
-- käytetään drop-funktiota, n ensimmäistä alkiota pudotetaan pois
splitAtIn n list  = ( take n list, drop n list)

-- print without any double quotes
{-
prnt :: (Show a) => [a] ->IO()
prnt x = mapM_ (putStrLn . filter (/='"') . show ) x
-}




