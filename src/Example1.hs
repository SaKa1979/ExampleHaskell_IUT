{-
	Module lcom = 3
	LOC = 36
	CBO = 2
-}
module Example1
    where

import qualified Example2 as E2
import Example3

type CarType = (String, String)

data Color = Red | Green | Blue
  deriving (Show)

data Car = Car
    { carType :: CarType
    , color   :: Color
    , age     :: Int
    } deriving (Show)

newCar :: String -> String -> Color -> Car
newCar brandName typeName newColor = Car
    { carType = (brandName, typeName)
    , color = newColor
    , age = 0
    }

isCar :: Car -> Bool
isCar (Car _ _ _) = True
isCar _ = False

-- lets repaint
repaint :: Car -> Color -> Car
repaint car newColor = car { color = newColor }

-- second lcom group below
magicNumber :: Int
magicNumber = 42

-- call external function1
add :: Int -> Int
add a = E2.addition magicNumber a

-- use external type class
sumNums :: Nums a => a -> a -> a
sumNums a b = fromNums s where
  x = toNums a
  y = toNums b
  s = x + y