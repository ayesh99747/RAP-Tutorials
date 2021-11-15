/* Exercise1_6
 * Author: ayesh
 * Creation date: 14/11/2021
 */
MACHINE Exercise1_6
    VARIABLES
        houseset
    INVARIANT
        houseset <: NAT1
    INITIALISATION
        houseset := {}
    OPERATIONS
        add(new) =
        PRE new : NAT1 & new /: houseset
        THEN
            houseset := houseset \/ { new }
        END ;

    ans <-- number =
    BEGIN
        ans := card( houseset )
    END;

    ans <-- getsPapers( houseNumber ) =
    PRE houseNumber : NAT1 & houseNumber : houseset
    THEN
        ans := 1
    END
    
END
