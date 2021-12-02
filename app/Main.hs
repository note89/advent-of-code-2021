module Main where

--Day1
import qualified Day1.Task1 as D1T1
import qualified Day1.Task2 as D1T2
--Day2
import qualified Day2.Task1 as D2T1

day1 = D1T1.run *> D1T2.run

day2 = D2T1.run

main :: IO ()
main = day2
