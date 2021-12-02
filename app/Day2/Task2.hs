module Day2.Task2 where

import Day2.Data
import Debug.Trace

step :: Direction -> (Integer, Integer, Integer) -> (Integer, Integer, Integer)
step (Forward mag) (x, y, aim) = (x + mag, y + (mag * aim), aim)
step (Down mag) (x, y, aim) = (x, y, aim + mag)
step (Up mag) (x, y, aim) = (x, y, aim - mag)

-- Multiplication is not commutative so we need to reverse the input array
run :: IO ()
run = print $ (\(x, y, _) -> x * y) $ foldr step (0, 0, 0) (reverse input)
