#lang racket

(define set (list
'(aardvark 1 0 0 1 0 0 1 1 1 1 0 0 4 0 0 1 1)
'(antelope 1 0 0 1 0 0 0 1 1 1 0 0 4 1 0 1 1)
'(bass 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 4)
'(bear 1 0 0 1 0 0 1 1 1 1 0 0 4 0 0 1 1)
'(boar 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(buffalo 1 0 0 1 0 0 0 1 1 1 0 0 4 1 0 1 1)
'(calf 1 0 0 1 0 0 0 1 1 1 0 0 4 1 1 1 1)
'(carp 0 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 4)
'(catfish 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 4)
'(cavy 1 0 0 1 0 0 0 1 1 1 0 0 4 0 1 0 1)
'(cheetah 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(chicken 0 1 1 0 1 0 0 0 1 1 0 0 2 1 1 0 2)
'(chub 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 4)
'(clam 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 7)
'(crab 0 0 1 0 0 1 1 0 0 0 0 0 4 0 0 0 7)
'(crayfish 0 0 1 0 0 1 1 0 0 0 0 0 6 0 0 0 7)
'(crow 0 1 1 0 1 0 1 0 1 1 0 0 2 1 0 0 2)
'(deer 1 0 0 1 0 0 0 1 1 1 0 0 4 1 0 1 1)
'(dogfish 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 4)
'(dolphin 0 0 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1)
'(dove 0 1 1 0 1 0 0 0 1 1 0 0 2 1 1 0 2)
'(duck 0 1 1 0 1 1 0 0 1 1 0 0 2 1 0 0 2)
'(elephant 1 0 0 1 0 0 0 1 1 1 0 0 4 1 0 1 1)
'(flamingo 0 1 1 0 1 0 0 0 1 1 0 0 2 1 0 1 2)
'(flea 0 0 1 0 0 0 0 0 0 1 0 0 6 0 0 0 6)
'(frog 0 0 1 0 0 1 1 1 1 1 0 0 4 0 0 0 5)
'(frog 0 0 1 0 0 1 1 1 1 1 1 0 4 0 0 0 5)
'(fruitbat 1 0 0 1 1 0 0 1 1 1 0 0 2 1 0 0 1)
'(giraffe 1 0 0 1 0 0 0 1 1 1 0 0 4 1 0 1 1)
'(girl 1 0 0 1 0 0 1 1 1 1 0 0 2 0 1 1 1)
'(gnat 0 0 1 0 1 0 0 0 0 1 0 0 6 0 0 0 6)
'(goat 1 0 0 1 0 0 0 1 1 1 0 0 4 1 1 1 1)
'(gorilla 1 0 0 1 0 0 0 1 1 1 0 0 2 0 0 1 1)
'(gull 0 1 1 0 1 1 1 0 1 1 0 0 2 1 0 0 2)
'(haddock 0 0 1 0 0 1 0 1 1 0 0 1 0 1 0 0 4)
'(hamster 1 0 0 1 0 0 0 1 1 1 0 0 4 1 1 0 1)
'(hare 1 0 0 1 0 0 0 1 1 1 0 0 4 1 0 0 1)
'(hawk 0 1 1 0 1 0 1 0 1 1 0 0 2 1 0 0 2)
'(herring 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 4)
'(honeybee 1 0 1 0 1 0 0 0 0 1 1 0 6 0 1 0 6)
'(housefly 1 0 1 0 1 0 0 0 0 1 0 0 6 0 0 0 6)
'(kiwi 0 1 1 0 0 0 1 0 1 1 0 0 2 1 0 0 2)
'(ladybird 0 0 1 0 1 0 1 0 0 1 0 0 6 0 0 0 6)
'(lark 0 1 1 0 1 0 0 0 1 1 0 0 2 1 0 0 2)
'(leopard 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(lion 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(lobster 0 0 1 0 0 1 1 0 0 0 0 0 6 0 0 0 7)
'(lynx 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(mink 1 0 0 1 0 1 1 1 1 1 0 0 4 1 0 1 1)
'(mole 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 0 1)
'(mongoose 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(moth 1 0 1 0 1 0 0 0 0 1 0 0 6 0 0 0 6)
'(newt 0 0 1 0 0 1 1 1 1 1 0 0 4 1 0 0 5)
'(octopus 0 0 1 0 0 1 1 0 0 0 0 0 8 0 0 1 7)
'(opossum 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 0 1)
'(oryx 1 0 0 1 0 0 0 1 1 1 0 0 4 1 0 1 1)
'(ostrich 0 1 1 0 0 0 0 0 1 1 0 0 2 1 0 1 2)
'(parakeet 0 1 1 0 1 0 0 0 1 1 0 0 2 1 1 0 2)
'(penguin 0 1 1 0 0 1 1 0 1 1 0 0 2 1 0 1 2)
'(pheasant 0 1 1 0 1 0 0 0 1 1 0 0 2 1 0 0 2)
'(pike 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 4)
'(piranha 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 0 4)
'(pitviper 0 0 1 0 0 0 1 1 1 1 1 0 0 1 0 0 3)
'(platypus 1 0 1 1 0 1 1 0 1 1 0 0 4 1 0 1 1)
'(polecat 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(pony 1 0 0 1 0 0 0 1 1 1 0 0 4 1 1 1 1)
'(porpoise 0 0 0 1 0 1 1 1 1 1 0 1 0 1 0 1 1)
'(puma 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(pussycat 1 0 0 1 0 0 1 1 1 1 0 0 4 1 1 1 1)
'(raccoon 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(reindeer 1 0 0 1 0 0 0 1 1 1 0 0 4 1 1 1 1)
'(rhea 0 1 1 0 0 0 1 0 1 1 0 0 2 1 0 1 2)
'(scorpion 0 0 0 0 0 0 1 0 0 1 1 0 8 1 0 0 7)
'(seahorse 0 0 1 0 0 1 0 1 1 0 0 1 0 1 0 0 4)
'(seal 1 0 0 1 0 1 1 1 1 1 0 1 0 0 0 1 1)
'(sealion 1 0 0 1 0 1 1 1 1 1 0 1 2 1 0 1 1)
'(seasnake 0 0 0 0 0 1 1 1 1 0 1 0 0 1 0 0 3)
'(seawasp 0 0 1 0 0 1 1 0 0 0 1 0 0 0 0 0 7)
'(skimmer 0 1 1 0 1 1 1 0 1 1 0 0 2 1 0 0 2)
'(skua 0 1 1 0 1 1 1 0 1 1 0 0 2 1 0 0 2)
'(slowworm 0 0 1 0 0 0 1 1 1 1 0 0 0 1 0 0 3)
'(slug 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 7)
'(sole 0 0 1 0 0 1 0 1 1 0 0 1 0 1 0 0 4)
'(sparrow 0 1 1 0 1 0 0 0 1 1 0 0 2 1 0 0 2)
'(squirrel 1 0 0 1 0 0 0 1 1 1 0 0 2 1 0 0 1)
'(starfish 0 0 1 0 0 1 1 0 0 0 0 0 5 0 0 0 7)
'(stingray 0 0 1 0 0 1 1 1 1 0 1 1 0 1 0 1 4)
'(swan 0 1 1 0 1 1 0 0 1 1 0 0 2 1 0 1 2)
'(termite 0 0 1 0 0 0 0 0 0 1 0 0 6 0 0 0 6)
'(toad 0 0 1 0 0 1 0 1 1 1 0 0 4 0 0 0 5)
'(tortoise 0 0 1 0 0 0 0 0 1 1 0 0 4 1 0 1 3)
'(tuatara 0 0 1 0 0 0 1 1 1 1 0 0 4 1 0 0 3)
'(tuna 0 0 1 0 0 1 1 1 1 0 0 1 0 1 0 1 4)
'(vampire 1 0 0 1 1 0 0 1 1 1 0 0 2 1 0 0 1)
'(vole 1 0 0 1 0 0 0 1 1 1 0 0 4 1 0 0 1)
'(vulture 0 1 1 0 1 0 1 0 1 1 0 0 2 1 0 1 2)
'(wallaby 1 0 0 1 0 0 0 1 1 1 0 0 2 1 0 1 1)
'(wasp 1 0 1 0 1 0 0 0 0 1 1 0 6 0 0 0 6)
'(wolf 1 0 0 1 0 0 1 1 1 1 0 0 4 1 0 1 1)
'(worm 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 7)
'(wren 0 1 1 0 1 0 0 0 1 1 0 0 2 1 0 0 2)))

; 1 - 41
; 2 - 20
; 3 - 5
; 4 - 13
; 5 - 4
; 6 - 8
; 7 - 10

;(define baseEntropy 2.3905596822940396) ;(entropyCalc 41 20 5 13 4 8 10)

(define (entropyCalc p1 p2 p3 p4 p5 p6 p7)
  (define N (+ p1 p2 p3 p4 p5 p6 p7))
  (+ (- (* (/ p1 N) (log* (/ p1 N) 2)))
     (- (* (/ p2 N) (log* (/ p2 N) 2)))
     (- (* (/ p3 N) (log* (/ p3 N) 2)))
     (- (* (/ p4 N) (log* (/ p4 N) 2)))
     (- (* (/ p5 N) (log* (/ p5 N) 2)))
     (- (* (/ p6 N) (log* (/ p6 N) 2)))
     (- (* (/ p7 N) (log* (/ p7 N) 2)))
     ))

(define (log* num base)
  (cond
    ((= num 0) 0)
    (else (log num base))))

(define (count data index position value)
  (cond
    ((= index (length data)) 0)
    ((equal? value (list-ref (list-ref data index) position)) (add1 (count data (add1 index) position value)))
    (else (count data (add1 index) position value))))


(define (devideByparameter data num)
  (group-by (lambda (case) (list-ref case num)) (sort data < #:key (lambda (case) (list-ref case num)))))


(define (totalEntropy data) ;data is (devideByparameter set num)
  (cond
    ((empty? (rest data)) (calceEntropyFromData (first data)))
    (else (+ (calceEntropyFromData (first data)) (totalEntropy (rest data))))))

(define (informationGain baseEntropy splittedEntropy)
  (- baseEntropy splittedEntropy))

(define (calceEntropyFromData data)
  (entropyCalc (count data 0 17 1)
               (count data 0 17 2)
               (count data 0 17 3)
               (count data 0 17 4)
               (count data 0 17 5)
               (count data 0 17 6)
               (count data 0 17 7)))

(define (testDevision data parameter)
  (define newData (devideByparameter data  parameter))
  (informationGain (totalEntropy (list data)) (totalEntropy newData)))

(define (listAllGains data parameter) ;defult is 1, ONLY becouse the first element isn't a number
  (cond
    ((= parameter 16) '())
    (else (cons (testDevision data parameter) (listAllGains data (add1 parameter))))))

(define (bestSplit data) ;defult parameter is 0
  (findBest (listAllGains data 1) 0 0 0))

(define (findBest list indexBest index bestGain) ;defult on all BUT list is 0
  (cond
    ((= index (length list)) (display "best index: ") (println (add1 indexBest)) (display "best gain: ") (print bestGain))
    ((> (list-ref list index) bestGain) (findBest list index (add1 index) (list-ref list index)))
    (else (findBest list indexBest (add1 index) bestGain))))



;----------------------------------------------------------------------------------
(define (TST info num)
  (cond
    ((= num 16) '())
    (else (cons (totalEntropy (devideByparameter set num)) (TST info (add1 num))))))
