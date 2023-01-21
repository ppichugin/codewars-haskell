module Disemvowel where

import           Data.Char

isVowel :: Char -> Bool
isVowel x = y == 'a' || y == 'e' || y == 'i' || y == 'o' || y == 'u'
  where y = toLower x

disemvowel :: String -> String
disemvowel str = [ ch | ch <- str, not (isVowel ch) ]
