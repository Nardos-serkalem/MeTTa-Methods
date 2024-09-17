(= (map $f ()) ())

(= (map $f (:: $x  $xs))
   (:: ($f $x) (map $f $xs)))

(= (square $x) (* $x $x))
(= (twice $x) (* $x 2))
(= (triple $x) ( $x $x $x))

;; test case
! (map square (:: 1 (:: 2 (:: 3 ())))) 
! (map twice (:: 1 (:: 2 (:: 3 ())))) 
! (map triple (:: 1 (:: 2 (:: 3 ())))) 
! (map A (:: 1 (:: 2 (:: 3 ())))) 
! (map B (:: 3 (:: 6 (:: 9 ()))))

