[1, 2, 3, 4, 5] :: Num a => [a]
show . (+ 1) :: (Num a, Show a) => a -> String
----- desired result
["2","3","4","5","6"] :: [String]
----- need (search on Hoogle)
f :: [a] -> (a -> b) -> [b]
