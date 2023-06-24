(define (fizzbuzz? x) (eq? (modulo x 15) 0))
(define (fizz? x) (eq? (modulo x 3) 0))
(define (buzz? x) (eq? (modulo x 5) 0))

(define (fizzbuzz x)
  (cond 
    ((fizzbuzz? x) "fizzbuzz")
    ((fizz? x) "fizz")
    ((buzz? x) "buzz")
    (else x)
  )
)

(print (fizzbuzz 15))
(print (fizzbuzz 10))
(print (fizzbuzz 2))