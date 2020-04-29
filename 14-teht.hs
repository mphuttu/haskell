import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 14 - Poista listan k:s elementti"
    putStrLn "Anna lista (merkkijono yhteen kirjoitettuna) >"
    sanalista <- getLine
    putStrLn ("Annoit merkkijonon: " ++ sanalista)
    -- listan pituus
    let nLen = length sanalista 
    putStrLn("Antamasi merkkijonon pituus on " ++  show nLen)
    putStrLn "Mistä kohdasta haluat poistaa merkin antamastasi merkkijonosta?"
    putStrLn ("Anna luku, suurempi kuin 0 ja pienempi kuin " ++ show nLen)
    strLkm <- getLine
    let nLkm = read strLkm
    putStrLn "Elementin poistamisen jälkeen jäljelle jää lista"
    let afterList = remElem nLkm sanalista
    -- mapM_ print [(firstList), (secList)]
    putStrLn $ afterList
    print $ (sanalista !! (nLkm-1), afterList)   
    putStrLn "\nTehtävä 14 - Ratkaisun loppu - Mika Huttunen"


-- Ensin: käytetään take-funktiota, n-1 ensimmäistä alkiota otetaan alusta mukaan
-- Sitten: käytetään drop-funktiota, n  ensimmäistä alkiota poistetaan alusta
-- lasketaan saadut listat yhteen, jolloin kohdassa n oleva alkio jää pois
remElem n list = take (n-1) list ++ drop n list 





