(define (domain partial-observability)
    (:requirements :adl)
    (:types
        basket gift location agent - object
        apple orange pear - gift
    )
    (:predicates
        (at-w ?x - object ?loc - location)
        (at-a ?x - object ?loc - location)
    )

    (:action move
        :parameters (?agent - agent ?from - location ?to - location)
        :precondition (and
            (at-w ?agent ?from)
            (at-a ?agent ?from)
        )
        :effect (and
            (not (at-w ?agent ?from))
            (not (at-a ?agent ?from))
            (at-w ?agent ?to)
            (at-a ?agent ?to)
        )
    )

    (:action look
        :parameters (?agent - agent ?loc - location)
        :precondition (and
            (at-w ?agent ?loc)
        )
        :effect (and
            (forall (?x)
                (when
                    (at-w ?x ?loc)
                    (at-a ?x ?loc)
                )
            )
        )
    )
)