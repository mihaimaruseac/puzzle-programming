append : Vect a n -> Vect a m -> Vect a (n + m)
append Nil       ys = ys
append (x :: xs) ys = x :: (append xs ys)
