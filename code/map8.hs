data Tree a
  = Node (Tree a) a (Tree a)
  | Leaf a
  deriving (Eq, Show)

instance Functor Tree where
  fmap f (Leaf x) = Leaf (f x)
  fmap f (Node l x r) = Node (fmap f l) (f x) (fmap f r)

tree1 = Node (Leaf 0) 1 (Node (Leaf 2) 3 (Leaf 4))
