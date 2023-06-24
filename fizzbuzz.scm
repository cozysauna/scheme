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

(define (loop-fizzbuzz x)
  (if (eq? x 0)
    ()
    (begin
      (loop-fizzbuzz (- x 1))
      (print (fizzbuzz x))
    )
  )
)

(loop-fizzbuzz 15)