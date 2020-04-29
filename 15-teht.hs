import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 15 - Lisää listaan elementti annettuun paikkaan"
    putStrLn "Anna lista (merkkijono yhteen kirjoitettuna) >"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList-sanalistaksi tyyppiä String
    -- words -apufunktion avulla
    -- let wordList = words sanalista
    -- let wordList = lines sanalista
    -- let wordList = strToList sanalista
    print ("Annoit merkkijonon: " ++ sanalista)
    -- listan pituus
    let nLen = length sanalista 
    print("Antamasi merkkijonon pituus on " ++  show nLen)
    putStrLn "Mihin kohtaan haluat lisätä merkin antamassasi merkkijonossa?"
    print ("Anna luku, suurempi kuin 0 ja pienempi kuin " ++ show nLen)
    strLkm <- getLine
    let nLkm = read strLkm
    putStrLn "Minkä elementin haluat lisätä antamaasi paikkaan antamassasi merkkijonossa"
    charAdd <- getChar
    putStrLn "Elementin lisäämisen jälkeen saadaan uusi lista"
    let afterList = insertEl charAdd sanalista nLkm
    -- print $ afterList
    putStrLn $ afterList
    -- print $ (sanalista !! (nLkm-1), afterList)   
    putStrLn "\nTehtävä 15 - Ratkaisun loppu - Mika Huttunen"


-- Ensin: käytetään take-funktiota, n ensimmäistä alkiota otetaan alusta mukaan
-- Lisätään tähän jonoon sitten jono, jonka ensimmäisenä alkiona on lisättävä elementti
-- ja loppuosana sellainen jono, josta n-1 ensimmäistä alkiota on pudotettu pois
-- drop-funktion avulla
insertEl elem list n = take (n-1) list ++ (elem:(drop (n-1) list))

-- rekursion avulla
insElem :: a -> [a] -> Int -> [a]
insElem v xs 1 = v : xs
insElem v (x:xs) n = x : ( insElem v xs (n -1))



-- muutetaan String listaksi
strToList s = concat ["[", intersperse ',' s,"]"]




