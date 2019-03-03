{-
	LCOM = 1
	LOC = 11
	CBO = 0
-}
module Example3
    where

class Nums a where
  fromNums :: Integer -> a
  toNums :: a -> Integer

newtype Amount = Amount Integer
  deriving (Eq, Show)

instance Nums Amount where
  fromNums n = Amount n
  toNums (Amount n) = n