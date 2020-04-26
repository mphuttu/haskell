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
    -- let wordList = lines sanalista
    print ("Annoit sanaluettelon: " ++ show wordList)
    -- käännä sanaluettelo reverse-funktion avulla
    print ("Käännetty sanaluettelo on\n")
    let reversedList = reverse wordList
    reverseLines reversedList
    
    putStrLn "\nTehtävä 5 - Ratkaisun loppu - Mika Huttunen"

reverseWords :: String -> String
reverseWords = unwords . map reverse . words 

reverseLines :: [String] -> IO () 
reverseLines = mapM_ (putStr . show . reverseWords)

