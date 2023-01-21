module Codewars.Triangles where

import           Data.List                      ( sort )

-- simple solution
isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c | (a + b <= c) || (a + c <= b) || (b + c <= a) = False
                 | (a <= 0) || (b <= 0) || (c <= 0) = False
                 | otherwise                        = True

-- with sort function
-- isTriangle :: Int -> Int -> Int -> Bool
-- isTriangle a b c =
--   case sort [a,b,c] of
--      [min, middle, max] -> (min + middle) > max

-- nice solution
-- isTriangle :: Int -> Int -> Int -> Bool
-- isTriangle a b c = (a + b > c) && (b + c > a) && (c + a > b)

-- one more nice solution
-- isTriangle :: Int -> Int -> Int -> Bool
-- isTriangle a b c = x + y > z
--   where [x, y, z] = sort [a, b, c]
