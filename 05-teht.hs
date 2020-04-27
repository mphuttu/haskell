import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 5 - Käännä listan sisältö\n"
    putStrLn "Anna sanalista erotuksena väli >\n"
    sanalista <- getLine
    -- sanaLista tyyppiä IO String muutetaan wordList-sanalistaksi tyyppiä String
    -- words -apufunktion avulla
    let wordList = words sanalista
    -- let wordList = lines sanalista
    print ("Annoit sanaluettelon: " ++ sanalista)
    -- käännä sanaluettelo reverse-funktion avulla
    putStrLn "Käännetty sanaluettelo on"
    let reversedList = reverse wordList
    reverseLines reversedList
    
    putStrLn "\nTehtävä 5 - Ratkaisun loppu - Mika Huttunen"

reverseWords :: String -> String
reverseWords = unwords . map reverse . words 

reverseLines :: [String] -> IO () 
reverseLines = mapM_ (putStr . filter (/= '"') . show . reverseWords)

