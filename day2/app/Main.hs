module Main where

import Lib

main :: IO ()
main = do
    string <- readFile "input.txt" 
    let answer = show . calculateCheckSum $ lines string
    writeFile "output.txt" answer
    putStrLn answer
