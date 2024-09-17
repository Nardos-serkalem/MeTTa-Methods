(=(is-negative $x)
(if(< $x 0) True False)
)
!(is-negative -6)

;; Filters elements of a list based on a predicate function 
(=(filter $function $list)
 (case $list
  (
    (
        (:: $n $s)
        (if($function $n)
        (:: $n (filter $function $s))
        (filter $function $s)
        )
    )
    (Nil Nil)
  )
 )
)
;;test case
!(filter is-negative (:: -22 (:: -10 (:: 25 (:: 9 (:: 8 Nil))))))

