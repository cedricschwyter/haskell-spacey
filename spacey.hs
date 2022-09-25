import System.Environment

main :: IO ()
main = do
        (file:_) <- System.Environment.getArgs
        source <- readFile file
        putStrLn source
        return ()
