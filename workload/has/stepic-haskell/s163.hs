integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = (h/2) * (f a + f b + acc (a+h) 0 1)
 where
  acc a' c k
   | k==n = c
   | otherwise = acc (a' + h) (c + (f a') * 2) (k+1)
  h = (b - a)/n
  n = 1000