(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (sqrt x) 
  (define (sqrt-iter guess)

    (define (good-enough?)
      (< (abs (- (square guess) x)) (/ x 1000)))
    
    (define (improve)
      (average guess (/ x guess)))
    
    (if (good-enough?) 
	guess
	(sqrt-iter (improve))))
  
  (sqrt-iter 1.0))
