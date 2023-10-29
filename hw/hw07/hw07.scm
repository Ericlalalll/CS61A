(define (cddr s) (cdr (cdr s)))

(define (cadr s) 'YOUR-CODE-HERE
    (car (cdr s))
)

(define (caddr s) 'YOUR-CODE-HERE
    (car (cddr s))
)

(define (ascending? asc-lst) 'YOUR-CODE-HERE
    (if (or (null? asc-lst) (null? (cdr asc-lst))) 
        #t
        (and (ascending? (cdr asc-lst)) (<= (car asc-lst) (car (cdr asc-lst))))
    )
)

(define (square n) (* n n))

(define (pow base exp) 'YOUR-CODE-HERE
    (cond ((= exp 0) 1)
          ((even? exp) (square (pow base (/ exp 2))))
          (else (* base (square (pow base (/ (- exp 1) 2)))))
          )
)
