/* Exercise1_7
 * Author: ayesh
 * Creation date: 14/11/2021
 */
MACHINE Exercise1_7
    ABSTRACT_VARIABLES
        houseset
    INVARIANT
        houseset <: NAT1
    INITIALISATION
        houseset := {}
    OPERATIONS
        add ( new ) =
        PRE new : NAT1 & new /: houseset
        THEN
            houseset := houseset \/ { new }
        END ;

    ans <-- number =
    BEGIN
        ans := card ( houseset )
    END ;

    ans <-- getsPapers ( houseNumber ) =
    PRE houseNumber : NAT1 & houseNumber : houseset
    THEN
        ans := 1
    END ;

    cancelPapers ( houseNumber ) =
    PRE houseNumber : NAT1 & houseNumber : houseset
    THEN
        houseset := houseset - { houseNumber }
    END
END
