{-
	Module lcom = 1
	LOC = 21
	CBO = 0
-}
module Example1
    where

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