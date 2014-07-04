module Main where
    multiplication_table :: [(Integer, Integer, Integer)]
    multiplication_table = [(x, y, x * y) | x <- [1..12], y <- [1..12]]

