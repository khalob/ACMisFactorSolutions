;;; Author: Khalob Cognata
;;; FUNCTION NAME: (isFact) returns T if x is a factor of n, otherwise nil
;;; DESCRIPTION:   Determines if x is a factor of n. 
;;; Can be compiled here: http://rextester.com/l/common_lisp_online_compiler

(defun isFact (x n)
(helper x n 1))

(defun helper (x n i)
(cond ((= n i) (nil))
	  ((= x (/ n i)) (t))
	  (t (helper x n (+ i 1)))))
	
(print (isFact 3 900))