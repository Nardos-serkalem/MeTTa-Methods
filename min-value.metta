;; a helper function to find the minimum value in a list
(=(min-helper $min $list)
  (case $list(((:: $n $s)

        (if (< $n $min)
          (min-helper $n $s)
          (min-helper $min $s) ))
      (Nil $min))
  )
)

(=(min-value $list)
(case $list
 (
    ((:: $n $s)
     (min-helper $n $s) )
    (Nil ()))))

!(min-value (:: 10 (:: -100 (:: 1 Nil))))


