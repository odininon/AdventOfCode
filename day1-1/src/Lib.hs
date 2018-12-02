module Lib
    ( parseLine
    , parseInput
    , solution
    )
where

parseLine :: String -> Integer
parseLine (x:xs) = case x of
    '+' -> digit
    '-' -> -digit
    where digit = read xs :: Integer

parseInput :: String -> [Integer]
parseInput = map parseLine . lines

solution :: String -> Integer
solution = sum . parseInput
