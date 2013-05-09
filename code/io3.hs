getNthChar :: Int -> Char
getNthChar nth = line !! nth
  where
    line = getLine

{-
io2.hs:4:24:
    Couldn't match expected type `[Char]' with actual type `IO String'
    In the first argument of `(!!)', namely `line'
    In the expression: line !! nth
    In an equation for `getNthChar':
        getNthChar nth
          = line !! nth
          where
              line = getLine
-}
