(:list type)
(:length (-> list) int)
 ;;the length function  Computes the length of a list
(= (length ()) 0)
(= (length (:: $x $xs))
   (+ 1 (length $xs)))
   
   ;;test case
! (length (:: A (:: B (:: C (:: D (:: E ()))))))
! (length (:: 1 (:: 1 (:: 1 (:: 1 (:: 1 ()))))))
