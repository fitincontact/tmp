import Data.Char
module Demo where

--discount :: Double -> Double -> Double -> Double
discount limit proc sum = if sum >= limit then sum * (100 - proc) / 100 else sum

--standardDiscount :: Double -> Double 
standardDiscount = discount 1000 5

fibonacci :: Integer -> Integer
fibonacci n |n > 0 = helper1 0 1 n
            |n < 0 = helper2 (0) (1) n

helper1 a b n | n <= 1 = b
              | otherwise = helper1 b (a + b) (n - 1)

helper2 a b n | n >= (-1) = b
              | otherwise = helper2 b (a - b) (n + 1)

seqA :: Integer -> Integer
seqA n
       | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n >= 3 =
         let
           h a b c 2 = c
           h a b c n = h b c (c + b - 2*a) (n - 1) 
         in
           h 1 2 3 n
--import Data.Char
sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x
 |  = h x
 where
  h x =  (sum [digitToInt i | i <- y], length y)
   where
      y = show $ abs x

--let h x = let y = show $ abs x in (sum [digitToInt i | i <- y], length y)
