/* Exercise3_1
 * Author: ayesh
 * Creation date: 15/11/2021
 */
MACHINE
    Exercise3_1

    SETS 
        ANSWER = { yes, no };
        OUTCOME = { NoMoreDeliveries, NotDeliveredTo, NotDeliveringPaperAndMagazine }
        
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
    END;
    
    cancelPapers( houseNumber ) =
    PRE houseNumber : NAT1 & houseNumber : houseset
    THEN
        houseset := houseset-{houseNumber}
    END;

    firstHouseNumber <-- firsthouse( houseNumber ) =
    PRE houseNumber : NAT1 & houseNumber : houseset
    THEN
        firstHouseNumber := min(houseset)
    END;

    lastHouseNumber <-- lasthouse( houseNumber ) =
    PRE houseNumber : NAT1 & houseNumber : houseset
    THEN
        lastHouseNumber := max(houseset)
    END;

    // Method to check whether a house gets the paper.
    message <-- haspaper( houseNumber ) =
    PRE houseNumber : NAT1  
    THEN
        IF ( houseNumber : houseset )
        THEN
            message := yes
        ELSE 
            message := no  
        END          
    END;

    // Method to stop delivery by removing house Number from house Set
    outcome <-- stopdelivery( houseNumber ) =
    PRE houseNumber : NAT1 
    THEN
        IF ( houseNumber : houseset )
                THEN
                    houseset := houseset-{houseNumber}
                    || outcome := NoMoreDeliveries
                ELSE
                    outcome := NotDeliveredTo
                END
    END

END
