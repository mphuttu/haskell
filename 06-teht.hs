import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 6 - Tutki, onko lista palindromi\n"
    print "Anna tutkittava sana---kerrotaan, onko sana palindromi >"
    sana <- getLine
    print ("Annoit sanan: " ++ show sana)
    -- Tulos
    print ("Nyt antamasi sana ")
    let response = if isPalindrome sana 
                   then "ON palindromi!"
                   else "EI ole palindromi."
    print response
    
    putStrLn "\nTehtävä 6 - Ratkaisun loppu - Mika Huttunen"

isPalindrome :: String -> Bool
isPalindrome word = word == reverse word
