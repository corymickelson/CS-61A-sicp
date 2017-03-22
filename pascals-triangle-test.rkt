#lang racket/base

(require "pascals-triangle.rkt")

(module+ test
  (require rackunit rackunit/text-ui)

  (define suite
    (test-suite
     "pascals triangle tests"

     (test-equal? "pascals triangle level 1" (pascals-triangle 1) '(1))
     (test-equal? "pascals triangle level 5" (pascals-triangle 5) '(1 4 6 4 1))
     (test-equal? "pascals triangle level 6" (pascals-triangle 6) '(1 5 10 10 5 1))
     (test-equal? "pascals triangle level 100[10]" (list-ref (pascals-triangle 100) 10)  15579278510796)))

  (run-tests suite))
