(: bubbleSort (-> List List))
(= (bubbleSort (Cons $x (Cons $y $xs)))
    (if (> $x $y)
        (Cons $y (bubbleSort (Cons $x $xs)))
        (Cons $x (bubbleSort (Cons $y $xs)))
    )
)
(= (bubbleSort $xs) $xs) 


(= (bubbleSort Nil) Nil)
(= (bubbleSort (:: $x Nil)) (:: $x Nil))
(= (bubbleSort (:: $x $xs)))
;; test case
 !(bubbleSort (:: 3 (:: 2 (:: 1 (:: 4 (:: 5 Nil))))))
