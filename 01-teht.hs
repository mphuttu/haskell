import Data.String
main :: IO()
main = do
    putStrLn "Tehtävä 1 - Etsi listan viimeisin elementti\n"
    putStrLn "Anna sanalista erotuksena väli >"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList:iksi tyyppiä String
    let wordList = words sanalista
    -- listan koko
    let listLength = length wordList
    let lastIndex = listLength - 1
    putStrLn ("Annoit sanaluettelon  \n" ++ show wordList)
    -- listan viimeinen alkio
    let wordLast = wordList !! lastIndex    
    putStrLn ("Listan viimeinen alkio on: " ++ show wordLast)
    putStrLn "\nTehtävä 1 - Ratkaisun loppu - Mika Huttunen"



