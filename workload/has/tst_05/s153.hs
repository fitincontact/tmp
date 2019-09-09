fibonacci :: Integer -> Integer
fibonacci n |n == 0 = 0
            |n > 0 = helper1 0 1 n
            |n < 0 = helper2 (0) (1) n

helper1 a b n | n <= 1 = b
              | otherwise = helper1 b (a + b) (n - 1)

helper2 a b n | n >= (-1) = b
              | otherwise = helper2 b (a - b) (n + 1)