module Main where

import qualified Day1.Task1 as D1T1
import qualified Day1.Task2 as D1T2

main :: IO ()
main = D1T1.run *> D1T2.run
