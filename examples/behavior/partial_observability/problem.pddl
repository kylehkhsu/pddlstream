(define (problem pb1)
    (:domain partial-observability)
    (:objects
        agent - agent
        loc1 loc2 loc3 - location
        apple1 apple2 - apple
    )
    (:init
        (at-w agent loc1)
        (at-a agent loc1)
        (at-w apple1 loc2)
        (at-w apple2 loc3)
    )
    (:goal
        (forall
            (?x - apple)
            (exists
                (?loc - location)
                (at-a ?x ?loc)
            )
        )
    )
)