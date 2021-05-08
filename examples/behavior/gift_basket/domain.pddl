(define (domain gift-basket)
    (:requirements :adl)
    (:types
        basket gift location agent - object
        apple orange pear - gift
    )
    (:predicates
        (inside ?x - object ?basket - basket)
        (full ?basket - basket)
        (at ?x - object ?loc - location)
    )
    (:action put-inside
        :parameters (?agent - agent ?obj - object ?basket - basket)
        :precondition (and
            (exists
                (?loc - location)
                (and
                    (at ?agent ?loc)
                    (at ?obj ?loc)
                    (at ?basket ?loc)
                )
            )
            (forall
                (?other_basket - basket)
                (imply
                    (not (= ?other_basket ?basket))
                    (not (inside ?obj ?other_basket))
                )
            )
        )
        :effect (and
            (inside ?obj ?basket)
        )
    )
    (:action take-out
        :parameters (?agent - agent ?obj - object ?basket - basket)
        :precondition (and
            (inside ?obj ?basket)
        )
        :effect (and
            (not (inside ?obj ?basket))
        )
    )

    (:action move
        :parameters (?agent - agent ?from - location ?to - location)
        :precondition (and
            (at ?agent ?from)
        )
        :effect (and
            (not (at ?agent ?from))
            (at ?agent ?to)
        )
    )

    (:action move-obj
        :parameters (?agent - agent ?obj - object ?from - location ?to - location)
        :precondition (and
            (at ?obj ?from)
            (at ?agent ?from)
        )
        :effect (and
            (not (at ?obj ?from))
            (not (at ?agent ?from))
            (at ?obj ?to)
            (at ?agent ?to)
        )
    )

;    (:action grasp
;        :parameters (?agent ?obj)
;    )

    (:derived
        (full ?basket - basket)
        (and
            (exists (?x - apple) (inside ?x ?basket))
            (exists (?x - orange) (inside ?x ?basket))
            (exists (?x - pear) (inside ?x ?basket))
        )
    )
)

; TODO: physical primitives (e.g. grasp)
; TODO: model partial observability

; assumes agent can move from any location to any location without issue