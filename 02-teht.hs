import Data.String
main :: IO()
main = do
    putStrLn "Tehtävä 2 - Etsi listan toiseksi viimeisin elementti\n"
    print "Anna sanalista (vähintään 2 sanaa) erotuksena väli >"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList-sanalistaksi tyyppiä String
    -- words -apufunktion avulla
    let wordList = words sanalista
    -- listan koko
    let listLength = length wordList
    let secondLastIndex = listLength - 2
    print ("Annoit sanaluettelon " ++ show wordList)
    -- listan viimeinen alkio
    let wordLast = wordList !! secondLastIndex    
    print ("Listan toiseksi viimeinen alkio on: " ++ show wordLast)
    putStrLn "\nTehtävä 2 - Ratkaisun loppu - Mika Huttunen"