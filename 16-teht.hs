import Data.String
import Data.List 
main :: IO()
main = do
    putStrLn "Tehtävä 16 - Generoi kokonaislukuja sisältävä lista,"
    putStrLn "luvut väliltä x...y "
    -- luku x
    putStrLn "Anna aloittava luku x:"
    strX <- getLine
    putStrLn ("Annoit luvun: " ++ strX)
    let nX = (read strX :: Int)
    -- luku y
    putStrLn ("Anna lopettava luku y > " ++ strX)
    strY <- getLine
    putStrLn ("Annoit luvun: " ++ strY)
    let nY = (read strY :: Int)
    putStrLn ("Kokonaisluvut " ++ strX ++ ", ... , " ++ strY ++ " ovat: ")
    mapM_ (\i -> putStr (show i ++ " ")) [nX..nY]
      
    putStrLn "\nTehtävä 16 - Ratkaisun loppu - Mika Huttunen"





