(: remove-element (-> $f List List ))

(= (remove-element $elem Nil) Nil)
;;  remove the elementfrom the list
(= (remove-element $elem (Cons $x $xs)) 
    (if (== $x $elem) (remove-element $elem $xs)
    (:: $x (remove-element $elem $xs))))

;;test case
! (remove-element 2 (Cons 1 (Cons 2 (Cons 3 Nil))))    
! (remove-element 9 (Cons 1 (Cons 2 (Cons 3 Nil))))  
! (remove-element a (Cons a (Cons a (Cons a Nil))))
! (remove-element 5 (Cons b (Cons c (Cons d Nil))))


