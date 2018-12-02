module Main where

import Lib

main :: IO ()
main = do 
        input <- readFile "input.txt" 
        writeFile "output.txt" $ show $ solution input