fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n - 1)

stuff 0 = return ()
stuff n = do
    value <- getLine
    print $ fact (read value :: Integer)
    stuff (n - 1)

main = do
    iterations <- getLine
    stuff (read iterations :: Int)

