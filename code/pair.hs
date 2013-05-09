f3 (x, _) = x -- no
f3' (_, y) = y -- no
f3''' (x, y) = 0 -- f3''' (False, 42)
f3'''' (x, y) = if x < y
                then 0
                else 42 -- need Ord
f3_1 (x, y)
  | x < y = 0
  | otherwise = 42 -- same
{- and many others -}
