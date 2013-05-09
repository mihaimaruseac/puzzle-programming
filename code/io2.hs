getNthChar :: Int -> Char
getNthChar nth = line !! nth
  where
    line = getLine
