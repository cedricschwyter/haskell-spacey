import System.Environment

main :: IO ()
main = do
        (file:_) <- getArgs
        source <- readFile file
        putStrLn source
        return ()
