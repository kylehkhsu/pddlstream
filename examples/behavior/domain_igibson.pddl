(define (domain igibson)
    (:requirements :adl)
    (:types
        ; added
        basket shelf lotion cabinet soap shampoo conditioner card table hand - object
        bag shelf rag toothpaste sink toothbrush counter towel shower soap garbage floor bucket - object
        razor mirror toilet towel_rack - object

    )
    (:predicates 
        (inside ?obj1 ?obj2)
        (nextto ?obj1 ?obj2)
        (ontop ?obj1 ?obj2)
        (under ?obj1 ?obj2)
        (broken ?obj1)
        (burnt ?obj1)
        (cooked ?obj1)
        (dusty ?obj1)
        (frozen ?obj1)
        (open ?obj1)
        (perished ?obj1)
        (screwed ?obj1)
        (scrubbed ?obj1)
        (sliced ?obj1)
        (soaked ?obj1)
        (timeset ?obj1)
        (toggledon ?obj1)

        ; added
        (handfull ?hand - hand)
        (grasped ?obj - object ?hand - hand)
;        (near ?obj)
    )

;    (:derived (manipulable ?obj - object)
;        (or
;            (exists (?hand - hand) (grasped ?obj ?hand))
;        )
;    )
    (:derived (near ?obj1 ?obj2)
        (or
            (inside ?obj1 ?obj2)
            (inside ?obj2 ?obj1)
            (nextto ?obj1 ?obj2)
            (nextto ?obj2 ?obj1)
            (ontop ?obj1 ?obj2)
            (ontop ?obj2 ?obj1)
            (under ?obj1 ?obj2)
            (under ?obj2 ?obj1)
        )
    )
;    (:derived (handfull ?hand - hand)
;        (or
;            (exists (?obj) (grasped ?obj ?hand))
;        )
;    )

    (:action grasp
        :parameters (?obj - object ?hand - hand)
        :precondition (and
            (not (handfull ?hand))
;            (near ?obj)
        )
        :effect (and
            (handfull ?hand)
            (grasped ?obj ?hand)
        )
    )

    (:action put-inside
        :parameters (?obj1 - object ?obj2 - object ?hand - hand)
        :precondition (and
            (grasped ?obj1 ?hand)
;            (near ?obj2)
        )
        :effect (and
            (inside ?obj1 ?obj2)
            (not (handfull ?hand))
            (not (grasped ?obj1 ?hand))
        )
    )

    (:action put-ontop
        :parameters (?obj1 - object ?obj2 - object ?hand - hand)
        :precondition (and
            (grasped ?obj1 ?hand)
;            (near ?obj2)
        )
        :effect (and
            (ontop ?obj1 ?obj2)
            (not (handfull ?hand))
            (not (grasped ?obj1 ?hand))
        )
    )

    (:action scrub
        :parameters (?obj1)
        :precondition (and
            (not (scrubbed ?obj1))
        )
        :effect (and
            (scrubbed ?obj1)
        )
    )

    (:action dust
        :parameters (?obj1)
        :precondition (and
            (dusty ?obj1)
        )
        :effect (and
            (not (dusty ?obj1))
        )
    )

    (:action soak
        :parameters (?obj1)
        :precondition (and
            (not (soaked ?obj1))
        )
        :effect (and
            (soaked ?obj1)
        )
    )

)