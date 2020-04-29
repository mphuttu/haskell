import Data.String
import Data.List 
import Control.Monad
import Data.Function
import Data.Ord
import Data.Char
main :: IO()
main = do
    putStrLn "Tehtävä 17 - Lajittele lista osalistojen pituuden mukaan,"
    putStrLn "lyhin listan alkuun, jne. "
    -- luku x
    putStrLn "Anna  merkkijonoja. Nämä lisätään listaan."
    putStrLn "Kun haluat lopettaa, kirjoita sana poistu!"
    {-
    strList <- getStrList = do
                      line <- getLine
                      if line == 'poistu' then return []
                                          else fmap (line:) getStrList
    -}
    strList <- getUserLines
    putStrLn("Annoit listan: " ++ show strList) 
    putStrLn "Kun tämä lista laitetaan aakkosjärjestykseen on uusi lista: "
    -- käytetään Data.List:in sort-funktiota
    let sortedListA = sort strList
    putStrLn $ show sortedListA
    putStrLn "Kun lista järjestetään pituuden mukaan saadaan: "
    let sortedList = sortBy lengthThenAZ strList
    -- käytetään valmiita funktioita
    -- print $ listStrings strList
    putStrLn $ show sortedList
    putStrLn "\nTehtävä 17 - Ratkaisun loppu - Mika Huttunen"


getUserLines :: IO [String]
getUserLines = go [""]
   where go contents = do
                   line <- getLine
                   if line == "poistu"
                      then return contents
                      else go (line : contents)

-- pituuden mukaan sitten aakkosten
lengthThenAZ:: String -> String -> Ordering
lengthThenAZ = comparing length `mappend` comparing (fmap toLower)
-- lajittelufunktio, lajittelee eri tavalla
listStrings :: [String]  -> [String]
listStrings = reverse . sortBy sortF 
    where
        sortF :: String->String->Ordering
        sortF = comparing ( length . head . words)
-- otetaan sanoja talteen käyttäjältä
{-
getList :: IO String
getList = fmap reverse (go []) where 
    go xs = do
        x <- getLine
        if x == "poistu" then return xs
                         else go (x : xs)

-}
