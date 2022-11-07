import System.Environment
import Control.Applicative (Alternative (..))
import Data.List (nub)

data ParseError i e = EndOfFile | Unexpected i | CustomError e | Empty deriving (Eq, Show)
newtype Parser i e a = Parser { runParser :: [i] -> Either [ParseError i e] (a, [i]) }

ast :: String -> String
ast = return "test"

main :: IO ()
main = do
        (file:_) <- getArgs
        source <- readFile file
        putStrLn (ast source)
        return ()
