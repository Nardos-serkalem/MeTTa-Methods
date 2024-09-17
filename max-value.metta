;; a helper function to find the maximum value in a list
(=(max-helper $max $list)
  (case $list(((:: $n $s)

        (if (> $n $max)
          (max-helper $n $s)
          (max-helper $max $s) ))
      (Nil $max))
  )
)

(=(max-value $list)
(case $list
 (
    ((:: $n $s)
     (max-helper $n $s) )
    (Nil ()))))
;; test case
!(max-value (:: 10 (:: -100 (:: 1 Nil))))


