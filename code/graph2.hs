{-
 - These are given for any representation
 - possible (different functions).
 -}
nodes :: (Graph g) => g -> [Node]
edges :: (Graph g) => g -> [Edge]
build :: (Graph g) => [Node] -> [Edge] -> g
-- Done
convert :: (Graph g1, Graph g2) => g1 -> g2
convert g = build (nodes g) (edges g)
