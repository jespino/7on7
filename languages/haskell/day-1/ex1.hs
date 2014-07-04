module Main where
    ex1_reverse :: [a] -> [a]
    ex1_reverse [] = []
    ex1_reverse (h:t) = (reverse t) ++ [h]
