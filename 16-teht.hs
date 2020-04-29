import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 16 - Generoi kokonaislukuja sisältävä lista,"
    putStrLn "luvut väliltä x...y "
    -- luku x
    putStrLn "Anna aloittava luku x:"
    strX <- getLine
    print ("Annoit luvun: " ++ strX)
    let nX = (read strX :: Int)
    -- luku y
    print("Anna lopettava luku y > " ++ strX)
    strY <- getLine
    print ("Annoit luvun: " ++ strY)
    let nY = (read strY :: Int)
    print ("Kokonaisluvut " ++ strX ++ ", ... , " ++ strY ++ " ovat: ")
    mapM_ (\i -> putStr (show i ++ " ")) [nX..nY]
    -- let afterList = insertEl charAdd sanalista nLkm
    -- print $ afterList
    -- putStrLn $ afterList
    -- print $ (sanalista !! (nLkm-1), afterList)   
    putStrLn "\nTehtävä 16 - Ratkaisun loppu - Mika Huttunen"





