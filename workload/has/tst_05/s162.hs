import Data.Char
--sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = h x
 where
  h x =  (sum [digitToInt i | i <- y], length y)
   where
      y = show $ abs x
{-
Реализуйте функцию, находящую сумму и количество цифр десятичной записи заданного целого числа.

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = undefined
GHCi> sum'n'count (-39)
(12,2)
-}