module Lib
    ( containsTwoRepeats
    , containsThreeRepeats
    , containsRepeats
    , calculateCheckSum
    )
where

import           Data.List

containsRepeats :: Int -> String -> Bool
containsRepeats repeats [] = False
containsRepeats repeats s  = (repeated == repeats)
    || containsRepeats repeats (dropWhile (== char) sorted)
  where
    sorted   = sort s
    repeated = length $ takeWhile (== char) sorted
    char     = head sorted

containsTwoRepeats :: String -> Bool
containsTwoRepeats = containsRepeats 2

containsThreeRepeats :: String -> Bool
containsThreeRepeats = containsRepeats 3

calculateCheckSum :: [String] -> Int
calculateCheckSum xs = go xs 0 0
  where
    go []       twos threes = twos * threes
    go (x : xs) twos threes = go xs newTwos newThrees
      where
        newTwos   = if containsTwoRepeats x then twos + 1 else twos
        newThrees = if containsThreeRepeats x then threes + 1 else threes
