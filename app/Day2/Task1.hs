module Day2.Task1 where

import Day2.Data

step :: Direction -> (Integer, Integer) -> (Integer, Integer)
step (Forward mag) (x, y) = (x + mag, y)
step (Down mag) (x, y) = (x, y + mag)
step (Up mag) (x, y) = (x, y - mag)

run :: IO ()
run = print $ (\(x, y) -> x * y) $ foldr step (0, 0) input
