main :: IO()
main = do
    putStrLn "Tehtävä 19 - etsi kahden kokonaisluvun suurin "
    putStrLn "yhteinen jakaja"   
    -- luku a
    putStrLn "Anna  kokonaisluku >"
    strLuku <- getLine
    print("Annoit luvun: " ++ strLuku) 
    let nLuku = (read strLuku :: Integer)
     -- luku b
    putStrLn "Anna toinen kokonaisluku >"
    strLukuKaks <- getLine
    print("Annoit luvun: " ++ strLukuKaks) 
    let nLukuKaks = (read strLukuKaks :: Integer)
    -- lukujen suurin yhteinen jakaja
    let nSyt = syt nLuku nLukuKaks 
    print("Lukujen " ++ strLuku ++ " ja " ++ strLukuKaks ++ " suurin yhteinen jakaja on " ++ show nSyt)
    putStrLn "\nTehtävä 19 - Ratkaisun loppu - Mika Huttunen"

syt a b
  | b == 0 =a 
  | otherwise = syt b (a `mod` b)
