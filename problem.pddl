(define (problem Mapa) (:domain Hospital)
(:objects 

A1 - ambulancia 
L1 L2 L3 L4 - lugar
E1 E2 - enfermo

)

(:init
    ;todo: put the initial state's facts and numeric values here

    (at A1 L1)
    (at E1 L3)
    (at E2 L4)

    (enlace L1 L2)
    (enlace L2 L1)
    (enlace L2 L4)
    (enlace L4 L2)
    (enlace L4 L3)
    (enlace L3 L4)
)

(:goal (and
    ;todo: put the goal condition here

    (at A1 L1)
    (at E1 L1)
    (at E2 L1) 

))
)
