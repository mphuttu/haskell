import Data.String
import Data.List 
import Data.Char
main :: IO()
main = do
    putStrLn "Tehtävä 6 - Tutki, onko lista palindromi\n"
    print "Anna tutkittava sana---kerrotaan, onko sana palindromi >"
    sana <- getLine
    print ("Annoit sanan: " ++ sana)
    -- Tulos
    putStrLn "Nyt antamasi sana "
    let response = if isPalindrome sana 
                   then "ON palindromi!"
                   else "EI ole palindromi."
    putStrLn $ response
    
    putStrLn "\nTehtävä 6 - Ratkaisun loppu - Mika Huttunen"

stripWhiteSpace :: String -> String
stripWhiteSpace text = filter (not . isSpace) text 

stripPunctuation :: String -> String 
stripPunctuation text = filter ( not . isPunctuation) text 

toLowerCase :: String -> String
toLowerCase text = map toLower text 

preProcess :: String -> String 
preProcess = stripWhiteSpace . stripPunctuation . toLowerCase

isPalindrome :: String -> Bool
isPalindrome text = cleanText == reverse cleanText
  where cleanText = preProcess text
