tree1 = Node (Leaf 0) 1 ...
show . (+ 1) :: (Num a, Show a) => a -> String
----- need (search on Hoogle)
f :: Tree a -> (a -> b) -> Tree b
----- found
fmap :: Functor f => (a -> b) -> f a -> f b
----- result (after defining functor)
*Main> fmap (show . (+ 1)) tree1
Node (Leaf "1") "2" (Node (Leaf "3") "4" (Leaf "5"))
