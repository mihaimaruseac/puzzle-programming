[1, 2, 3, 4, 5] :: Num t => [t]
show . (+ 1) :: (Num b, Show b) => b -> String
----- desired result
["2","3","4","5","6"] :: [String]
