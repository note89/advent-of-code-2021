module Day1.Task2 where

import Day1.Data (inputData)

run :: IO ()
run = print $ countIncreasing inputData

countIncreasing :: [Integer] -> Integer
countIncreasing xs = countIncreasing' xs 0

countIncreasing' :: [Integer] -> Integer -> Integer
countIncreasing' (x1 : x2 : x3 : x4 : xs) count =
  countIncreasing' (x2 : x3 : x4 : xs) count
    + (if sum [x2, x3, x4] > sum [x1, x2, x3] then 1 else 0)
countIncreasing' _ count = count

tests :: Bool
tests =
  countIncreasing [] == 0
    && countIncreasing [1] == 0
    && countIncreasing [1, 2] == 0
    && countIncreasing [1, 2, 1] == 0
    && countIncreasing [1, 2, 3, 4] == 1
    && countIncreasing [1, 0, -1, 0] == 0
    && countIncreasing [1, 2, 3, 0] == 0
