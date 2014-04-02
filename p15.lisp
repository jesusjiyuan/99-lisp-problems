;;;; (**) Replicate the elements of a list a given number of times.
;;;; Example:
;;;; * (repli '(a b c) 3)
;;;; (A A A B B B C C C)

(defun p15-repli (lst n)
  (mapcan (lambda (x) (loop repeat n collect x)) lst))