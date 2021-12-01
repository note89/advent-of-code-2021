module Day1.Task1 where

import Day1.Data (inputData)

run :: IO ()
run = print $ countIncreasing inputData

countIncreasing :: [Integer] -> Integer
countIncreasing xs = countIncreasing' xs 0

countIncreasing' :: [Integer] -> Integer -> Integer
countIncreasing' (x1 : x2 : xs) count =
  countIncreasing' (x2 : xs) count
    + (if x2 > x1 then 1 else 0)
countIncreasing' _ count = count

tests :: Bool
tests =
  countIncreasing [] == 0
    && countIncreasing [1] == 0
    && countIncreasing [1, 2] == 1
    && countIncreasing [1, 2, 1] == 1
    && countIncreasing [1, 2, 3] == 2
    && countIncreasing [1, 0, -1] == 0
    && countIncreasing [1, 0, 1] == 1
