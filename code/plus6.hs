{- Add some restrictions -}
(+) :: Num a => a -> a -> a
------------------------
False + True -- error (and OK)
2 + 3 -- good
2.0 + 3.0 -- perfect
2 + 3.0 -- manual conversion needed
