module Lib
    ( parseLine
    , parseInput
    , solution
    , firstRepeat
    )
where

parseLine :: String -> Integer
parseLine (x : xs) = case x of
    '+' -> digit
    '-' -> -digit
    where digit = read xs :: Integer

parseInput :: String -> [Integer]
parseInput = map parseLine . lines

firstRepeat' :: [Integer] -> [Integer] -> [Integer] -> Integer
firstRepeat' a  []       c  = firstRepeat' a c c
firstRepeat' as (b : bs) cs = if newTotal `elem` as
    then newTotal
    else firstRepeat' (newTotal : as) bs cs
    where newTotal = head as + b

firstRepeat :: [Integer] -> Integer
firstRepeat a = firstRepeat' [0] a a

solution :: String -> (Integer, Integer)
solution s = (firstRepeat parsedInput, sum parsedInput)
    where parsedInput = parseInput s
