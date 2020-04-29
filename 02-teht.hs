import Data.String
main :: IO()
main = do
    putStrLn "Tehtävä 2 - Etsi listan toiseksi viimeisin elementti\n"
    putStrLn "Anna sanalista (vähintään 2 sanaa) erotuksena väli >"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList-sanalistaksi tyyppiä String
    -- words -apufunktion avulla
    let wordList = words sanalista
    -- listan koko
    let listLength = length wordList
    let secondLastIndex = listLength - 2
    putStrLn ("Annoit sanaluettelon \n" ++ show wordList)
    -- listan toiseksi viimeinen alkio
    let wordSecLast = wordList !! secondLastIndex    
    putStrLn ("\nListan toiseksi viimeinen alkio on: " ++ show wordSecLast)
    putStrLn "\nTehtävä 2 - Ratkaisun loppu - Mika Huttunen"