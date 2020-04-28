import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 12 - Ota osalista listasta;"
    putStrLn "alkaen listan paikasta i ja päättyen paikkaan j\n"
    putStrLn "Anna lista (merkkijono yhteen kirjoitettuna) >"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList-sanalistaksi tyyppiä String
    -- words -apufunktion avulla
    -- let wordList = words sanalista
    -- let wordList = lines sanalista
    print ("Annoit merkkijonon: " ++ sanalista)
    -- listan pituus
    let nLen = length sanalista 
    print("Antamasi merkkijonon pituus on " ++  show nLen)
    putStrLn "Mistä kohdasta haluat jakaa antamasi merkkijonon?"
    print ("Anna luku, suurempi kuin 0 ja pienempi kuin " ++ show nLen)
    strLkmFirst <- getLine
    let nLkmFirst = read strLkmFirst
    print ("Anna luku, suurempi kuin " ++ show nLkmFirst ++ " ja pienempi kuin " ++ show nLen)
    strLkmSec <- getLine
    let nLkmSec = read strLkmSec
    -- otetaan osajono merkkijonosta alkaen indeksin kohdasta i-1 ja 
    -- ja päättyen indeksi kohtaan j-1
    putStrLn "Otetaan listasta antamiesi paikkojen väliin jäävä osamerkkijono"
    let subList = takeFromRange nLkmFirst nLkmSec sanalista
    -- mapM_ print [(firstList), (secList)]
    putStrLn $ subList
        
    putStrLn "\nTehtävä 12 - Ratkaisun loppu - Mika Huttunen"


-- käytetään take-funktiota, j ensimmäistä alkiota otetaan mukaan
-- käytetään drop-funktiota, i-1 ensimmäistä alkiota pudotetaan pois
takeFromRange i j list = drop (i-1) ( take j list)

splitAtIn n list  = ( take n list, drop n list)

-- print without any double quotes
{-
prnt :: (Show a) => [a] ->IO()
prnt x = mapM_ (putStrLn . filter (/='"') . show ) x
-}




