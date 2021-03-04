

(define (domain Hospital)

;remove requirements that are not needed
(:requirements :strips :fluents :typing )

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle

    ambulancia enfermo lugar - object

)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here

    (at ?x - (either enfermo ambulancia) ?l - lugar)
    (in ?e - enfermo ?a - ambulancia)
    (enlace ?l1 ?l2 - lugar) 

)



;define actions here

(:action subir
 :parameters (?e - enfermo ?a - ambulancia ?l - lugar)
 
 :precondition (and (at ?e ?l)
                 (at ?a ?l))
 :effect (and (not (at ?e ?l))
              (in ?e ?a)))

(:action bajar
 :parameters (?e - enfermo ?a - ambulancia ?l - lugar)

 :precondition (and (in ?e ?a)
                 (at ?a ?l))
 :effect (and (not (in ?e ?a))
              (at ?e ?l)))

(:action desplazar 
 :parameters (?a - ambulancia ?l1 ?l2 - lugar)
 
 :precondition (and (at ?a ?l1)
		 (enlace ?l2 ?l1))
 :effect (and (not (at ?a ?l1))
              (at ?a ?l2)
                                  
) 

)
)