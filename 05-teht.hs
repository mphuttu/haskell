import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 5 - Käännä listan sisältö\n"
    print "Anna sanalista erotuksena väli >"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList-sanalistaksi tyyppiä String
    -- words -apufunktion avulla
    let wordList = words sanalista
    print ("Annoit sanaluettelon: " ++ show wordList)
    -- käännä sanaluettelo reverse-funktion avulla
    let reversedList = reverse wordList
    print("Käännetty sanaluettelo on: " ++ show reversedList)
    
    putStrLn "\nTehtävä 5 - Ratkaisun loppu - Mika Huttunen"

