(define (problem pb1)
    (:domain gift-basket)
    (:objects
        agent - agent
        basket1 basket2 - basket
        apple1 apple2 - apple
        orange1 orange2 - orange
        pear1 pear2 - pear
        loc1 loc2 loc3 loc4 loc5 loc6 - location
    )
    (:init
        (at agent loc1)
        (at basket1 loc2)
        (at basket2 loc2)
        (at apple1 loc3)
        (at orange1 loc4)
        (at pear1 loc5)
        (at apple2 loc3)
        (at orange2 loc4)
        (at pear2 loc5)
    )
    (:goal
        (forall
            (?basket - basket)
            (and (full ?basket) (at ?basket loc2))
        )
    )
)

;(define (problem pb2)
;    (:domain gift-basket)
;    (:objects
;        agent - agent
;        apple1 apple2 - apple
;        loc1 loc2 loc3 loc4 loc5 loc6 - location
;    )
;    (:init
;        (at agent loc1)
;        (at apple1 loc3)
;        (at apple2 loc3)
;    )
;    (:goal (and
;        (at agent loc2)
;        (exists (?apple - apple) (at ?apple loc1))
;    ))
;)
