import Data.String
import Data.List 
import Control.Monad
import Data.Function
import Data.Ord
import Data.Char
import System.IO
import Text.Printf

main :: IO()
main = do
    putStrLn "Tehtävä 21 - KONSTRUOI TÄYSIN TASAPAINOTETTU BINÄÄRIPUU, "
    putStrLn "SOLMUJEN LUKUMÄÄRÄ ANNETAAN PARAMETRINA. KÄYTÄ VAIKKA MERKKIÄ x SOLMUJEN"
    putStrLn " INFORMAATIONA. TULOSTA KAIKKI MAHDOLLISUUDET."
    -- luku x
    putStrLn "Anna binääripuun solmujen lukumäärä >"
    strNodes <- getLine
    let nNodes = read strNodes :: Int
    putStrLn ("Kun solmujen lukumäärä on " ++ strNodes ++ " saadaan ")
    putStrLn ("täysin tasapainotetuksi binääripuiksi seuraavat:")
    print $ cbalTree nNodes
    putStrLn "\nTehtävä 21 - Ratkaisun loppu - Mika Huttunen"

-- vastaus löydetty internetistä: 
-- https://wiki.haskell.org/99_questions/Solutions/55
data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

cbalTree :: Int -> [Tree Char]
cbalTree 0 = [Empty]
cbalTree n = let (q, r) = (n - 1) `quotRem` 2
    in [Branch 'x' left right | i     <- [q .. q + r],
                                left  <- cbalTree i,
                                right <- cbalTree (n - i - 1)]

{-
-- MUITA VAIHTOEHTOJA
cbalTree 0 = [Empty]
cbalTree 1 = [leaf 'x']
cbalTree n = if n `mod` 2 == 1 then 
             [ Branch 'x' l r | l <- cbalTree ((n - 1) `div` 2), 
                                r <- cbalTree ((n - 1) `div` 2) ] 
             else 
             concat [ [Branch 'x' l r, Branch 'x' r l] | l <- cbalTree ((n - 1) `div` 2), 
                                                        r <- cbalTree (n `div` 2) ]    
-}                                                                                   
{- toinen vaihtoehto
buildBalanced []   = Empty
buildBalanced elts = Node (buildBalanced $ take half elts) 
                          (elts !! half) 
                          (buildBalanced $ drop (half+1) elts)
    where half = length elts `quot` 2

main = putStrLn $ show $ buildBalanced [1,2,3,4,5,6,7,8]
-- prints Node (Node (Node (Node Empty 1 Empty) 2 Empty) 3 (Node Empty 4 Empty)) 5 (Node (Node Empty 6 Empty) 7 (Node Empty 8 Empty))
-}