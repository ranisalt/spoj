addRev 0 = return ()
addRev n = do
    input <- getLine
    let revved = (words . reverse) input
    let a = read (head revved) :: Int
    let b = read (last revved) :: Int
    print (read . reverse $ show (a + b) :: Int)
    addRev (n - 1)

main = do
    iterations <- getLine
    addRev (read iterations :: Int)
