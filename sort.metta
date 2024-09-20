(: bubbleSort (-> List List))
(= (bubbleSort (Cons $x (Cons $y $xs)))
    (if (> $x $y)
        (Cons $y (bubbleSort (Cons $x $xs)))
        (Cons $x (bubbleSort (Cons $y $xs)))
    )
)
(= (bubbleSort $xs) $xs) 


(= (bubbleSort Nil) Nil)
(= (bubbleSort (Cons $x Nil)) (Cons $x Nil))
(= (bubbleSort (Cons $x $xs)))
;; test case
 !(bubbleSort (Cons 3 (Cons 2 (Cons 1 (Cons 4 (Cons 5 Nil))))))
