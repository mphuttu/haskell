import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 13 - Kierrä listaa n paikkaa vasemmalle"
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
    putStrLn "Mistä kohdasta haluat alkaa kiertää vasemmalle antamasi merkkijonon?"
    print ("Anna luku, suurempi kuin 0 ja pienempi kuin " ++ show nLen)
    strLkm <- getLine
    let nLkm = read strLkm
    putStrLn "Kierron jälkeen muuntuu merkkijono muotoon"
    let afterList = rotList nLkm sanalista
    -- mapM_ print [(firstList), (secList)]
    putStrLn $ afterList
        
    putStrLn "\nTehtävä 13 - Ratkaisun loppu - Mika Huttunen"


-- Ensin: käytetään drop-funktiota, n ensimmäistä alkiota pudotetaan pois
-- Sitten: käytetään take-funktiota, n ensimmäistä alkiota otetaan mukaan
-- lasketaan saadut listat yhteen, jolloin take-operaation jäljiltä ensimmäiset
-- alkiot päätyvät viimeisiksi
rotList n list = drop n list ++ take n list 




