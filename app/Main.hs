module Main where

--Day1
import qualified Day1.Task1 as D1T1
import qualified Day1.Task2 as D1T2
--Day2
import qualified Day2.Task1 as D2T1
import qualified Day2.Task2 as D2T2

day1 = D1T1.run *> D1T2.run

day2 = D2T1.run *> D2T2.run

main :: IO ()
main = day2
