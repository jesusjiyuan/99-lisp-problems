;;;; (**) Drop every N'th element from a list.
;;;; Example:
;;;; * (drop '(a b c d e f g h i k) 3)
;;;; (A B D E G H K)
(in-package :99-problems)

(defun drop (lst n)
  (loop
     for e in lst
     for i = (1- n) then (1- i)
     when (zerop i) do (setf i n)
     else collect e))

(define-test drop-test
  (assert-equal '() (drop '() 0))
  (assert-equal '(a b d e g h k) (drop '(a b c d e f g h i k) 3)))
