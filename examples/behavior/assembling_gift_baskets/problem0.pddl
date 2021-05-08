(define (problem assembling_gift_baskets_0)
    (:domain igibson)

    (:objects
        basket1 basket2 basket3 basket4 - basket
        shelf1 - shelf
        lotion1 lotion2 lotion3 lotion4 - lotion
        cabinet1 - cabinet
        soap1 soap2 soap3 soap4 - soap
        shampoo1 shampoo2 shampoo3 shampoo4 - shampoo
        conditioner1 conditioner2 conditioner3 conditioner4 - conditioner
        card1 card2 card3 card4 - card
        table1 - table

        ; added manually
        hand1 hand2 - hand
    )

    (:init
        (ontop basket1 shelf1)
        (ontop basket2 shelf1)
        (ontop basket3 shelf1)
        (ontop basket4 shelf1)
        (inside lotion1 cabinet1)
        (inside lotion2 cabinet1)
        (inside lotion3 cabinet1)
        (inside lotion4 cabinet1)
        (inside soap1 cabinet1)
        (inside soap2 cabinet1)
        (inside soap3 cabinet1)
        (inside soap4 cabinet1)
        (inside shampoo1 cabinet1)
        (inside shampoo2 cabinet1)
        (inside shampoo3 cabinet1)
        (inside shampoo4 cabinet1)
        (inside conditioner1 cabinet1)
        (inside conditioner2 cabinet1)
        (inside conditioner3 cabinet1)
        (inside conditioner4 cabinet1)
        (ontop card1 table1)
        (ontop card2 table1)
        (ontop card3 table1)
        (ontop card4 table1)
    )

    (:goal
        (and
            (exists
                (?table - table)
                (forall
                    (?basket - basket)
                    (ontop ?basket ?table)
                )
            )
            (and
                (inside conditioner1 basket1)
                (inside conditioner2 basket2)
                (inside conditioner3 basket3)
                (inside conditioner4 basket4)
            )
            (and
                (inside shampoo1 basket1)
                (inside shampoo2 basket2)
                (inside shampoo3 basket3)
                (inside shampoo4 basket4)
            )
            (and
                (inside lotion1 basket1)
                (inside lotion2 basket2)
                (inside lotion3 basket3)
                (inside lotion4 basket4)
            )
            (and
                (inside card1 basket1)
                (inside card2 basket2)
                (inside card3 basket3)
                (inside card4 basket4)
            )
            (and
                (inside soap1 basket1)
                (inside soap2 basket2)
                (inside soap3 basket3)
                (inside soap4 basket4)
            )
        )
    )
)