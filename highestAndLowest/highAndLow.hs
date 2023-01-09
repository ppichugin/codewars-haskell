module Kata (highAndLow) where

import Data.Char (isSpace)
import Data.List (unfoldr)

highAndLow :: String -> String
highAndLow str =
  let high = maxNum digits
      low = minNum digits
      digits :: [Int]
      digits = [read ds :: Int | ds <- toSplit str]
   in show high ++ " " ++ show low

toSplit :: String -> [String]
toSplit = unfoldr step
  where
    step [] = Nothing
    step xs =
      Just
        ( takeWhile (not . isSpace) xs,
          (dropWhile isSpace . dropWhile (not . isSpace)) xs
        )

maxNum :: Ord a => [a] -> a
maxNum [x] = x
maxNum (x : x' : xs) = maxNum (max x x' : xs)

minNum :: Ord a => [a] -> a
minNum [x] = x
minNum (x : x' : xs) = minNum (min x x' : xs)