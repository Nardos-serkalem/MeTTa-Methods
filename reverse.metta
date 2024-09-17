
(: reverse (-> List List))

(= (reverse Nil) Nil)
(= (reverse (:: $x $xs)) (append (reverse $xs) (:: $x Nil)))


(: append (->  List List))

(= (append Nil $ys) $ys)
(= (append (:: $x $xs) $ys) (:: $x (append $xs $ys)))

;;test case
! (reverse (:: A (:: B (:: C Nil))))

