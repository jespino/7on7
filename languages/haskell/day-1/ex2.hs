module Main where
    two_tuples :: [(String, String)]
    two_tuples = [(x, y) | x <- colors, y <- colors, x > y] where
        colors = ["black", "white", "blue", "yellow", "red"]

