import System.Exit

printOrQuit 42 = exitWith (ExitSuccess)
printOrQuit x = print x

main = do
	value <- getLine
	printOrQuit (read value :: Int)
	main

