import Data.String
main :: IO()
main = do
    putStrLn "Tehtävä 3 - Etsi listan k's elementti\n"
    putStrLn "Anna sanalista (vähintään 2 sanaa) erotuksena väli >"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList-sanalistaksi tyyppiä String
    -- words -apufunktion avulla
    let wordList = words sanalista
    -- listan koko
    let listLength = length wordList
    putStrLn "Monennenko elementin haluat etsiä ?"
    putStrLn ("Luvun pitää olla pienempi kuin " ++ show listLength)
    putStrLn "Anna luku > "
    strLkm <- getLine
    let nLkm = read strLkm
    let ksIndex = nLkm -1
    putStrLn ("Annoit sanaluettelon\n " ++ show wordList)
    -- listan viimeinen alkio
    let wordKs = wordList !! ksIndex    
    putStrLn ("\nListan " ++ show nLkm ++ ".s alkio on: " ++ show wordKs)
    putStrLn "\nTehtävä 3 - Ratkaisun loppu - Mika Huttunen"