import Data.String
main :: IO()
main = do
    putStrLn "Tehtävä 4 - Laske listan elementtien lukumäärä\n"
    putStrLn "Anna sanalista (vähintään 2 sanaa) erotuksena väli >"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList-sanalistaksi tyyppiä String
    -- words -apufunktion avulla
    let wordList = words sanalista
    putStrLn ("Annoit sanaluettelon " ++ show wordList)
    -- listan koko
    let listLength = length wordList
    putStrLn ("Sanaluettelossa on " ++ show listLength ++ " sanaa!")
    
    putStrLn "\nTehtävä 4 - Ratkaisun loppu - Mika Huttunen"