{-# LANGUAGE DeriveFunctor #-}
data Tree a
  = Node (Tree a) a (Tree a)
  | Leaf a
  deriving (Eq, Show, Functor)

tree1 = Node (Leaf 0) 1 (Node (Leaf 2) 3 (Leaf 4))
