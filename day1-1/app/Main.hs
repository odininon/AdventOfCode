module Main where

import Lib

main :: IO ()
main = do 
        input <- readFile "input.txt" 
        print $ solution input