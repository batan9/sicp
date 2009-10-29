(define (cube x)
  (* x x x))

(define (square x)
  (* x x))

(define (cbrt x)
  (define (cbrt-iter guess)  
    
    (define (good-enough?)
      (< (abs (- (cube guess) x)) (/ x 1000)))
    
    (define (improve)
      (/ (+ (/ x (square guess)) (* 2 guess)) 3))
    
    (if (good-enough?)
	guess
	(cbrt-iter (improve))))
  
  (cbrt-iter 1.0))
