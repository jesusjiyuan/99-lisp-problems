;;;;  (**) Rotate a list N places to the left.

;;;; Examples:
;;;; * (rotate '(a b c d e f g h) 3)
;;;; (D E F G H A B C)
;;;; * (rotate '(a b c d e f g h) -2)
;;;; (G H A B C D E F)

;;;; Hint: Use the predefined functions length and append, as well as
;;;; the result of problem P17.
(in-package :99-problems)

(defun rotate (lst n)
  (if (null lst)
      nil
      (let ((split-point (mod n (length lst))))
	(if (zerop split-point)
	    (copy-list lst)
	    (destructuring-bind (head tail) (split lst split-point)
	      (append tail head))))))

(define-test rotate-test
  (assert-equal '() (rotate '() 10))
  (assert-equal '(a b c) (rotate '(a b c) 0))
  (assert-equal '(a b c) (rotate '(a b c) 3))
  (assert-equal '(d e f g h a b c) (rotate '(a b c d e f g h) 3))
  (assert-equal '(g h a b c d e f) (rotate '(a b c d e f g h) -2)))
