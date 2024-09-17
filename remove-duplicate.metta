is-member function Checks if a given element $x is a member of a list
(= (is-member $x $list)
    (case $list
        (
            ( (:: $n $s) (if (== $x $n) True (is-member $x $s)))
            ( Nil False)
        )
    )
)
;; this function remove duplicate element 
(= (remove-duplicates Nil) Nil)
(= (remove-duplicates (:: $x $xs))
  (if (is-member $x $xs)
    (remove-duplicates $xs)
    (:: $x (remove-duplicates $xs))
  )
)
;;test case
! (remove-duplicates (:: A (:: B (:: B Nil))))

