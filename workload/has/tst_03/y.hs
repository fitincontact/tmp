import Data.Char
--sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = h x
 where
  h x =  (sum [digitToInt i | i <- y], length y)
   where
      y = show $ abs x
