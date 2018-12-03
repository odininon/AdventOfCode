module Main where

import Lib

main :: IO ()
main = do
    string <- readFile "input.txt" 
    writeFile "output.txt" $ show . calculateCheckSum $ lines string
