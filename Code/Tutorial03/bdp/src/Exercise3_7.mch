/* Exercise3_7
 * Author: ayesh
 * Creation date: 19/11/2021
 */
MACHINE
    Exercise3_7

    SETS
        ANSWER = { yes , no } ;
        OUTCOME = { NoMoreDeliveries , NotDeliveredTo , NotDeliveringPaperAndMagazine } ;
        STATUS = { PaperAndMagazine , OnlyPaper , OnlyMagazine , NoDeliveries , NotBothPaperAndMagazine }

    CONCRETE_CONSTANTS
        MAX_DELIVERIES
    PROPERTIES
        MAX_DELIVERIES : NAT1  &  MAX_DELIVERIES = 10

    ABSTRACT_VARIABLES
        houseset , magazineHouses
    INVARIANT
        houseset <: NAT1 & card ( houseset ) <= MAX_DELIVERIES &
        magazineHouses <: NAT1 & magazineHouses <: houseset

    INITIALISATION
        houseset := {}
        || magazineHouses := {}
    OPERATIONS

        add ( new ) =
            PRE new : NAT1 & new /: houseset & card ( houseset ) < MAX_DELIVERIES
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
            END ;

// -------------- Ex 3.2 ---------------------
        firstHouseNumber <-- firsthouse ( houseNumber ) =
            PRE houseNumber : NAT1 & houseNumber : houseset
            THEN
                firstHouseNumber := min ( houseset )
            END ;

        lastHouseNumber <-- lasthouse ( houseNumber ) =
            PRE houseNumber : NAT1 & houseNumber : houseset
            THEN
                lastHouseNumber := max ( houseset )
            END ;

        // Method to check whether a house gets the paper.
        message <-- haspaper ( houseNumber ) =
            PRE houseNumber : NAT1
            THEN
                IF ( houseNumber : houseset )
                THEN
                    message := yes
                ELSE
                    message := no
                END
            END ;

        // Method to stop delivery by removing house Number from house Set
        outcome <-- stopdelivery ( houseNumber ) =
            PRE houseNumber : NAT1
            THEN
                IF ( houseNumber : houseset )
                        THEN
                            houseset := houseset - { houseNumber }
                            || outcome := NoMoreDeliveries
                        ELSE
                            outcome := NotDeliveredTo
                        END
            END ;

// -------------- Ex 3.4 ---------------------
        deliverMagazine ( newHouseNumber ) =
            PRE newHouseNumber : NAT1 & newHouseNumber /: magazineHouses & newHouseNumber : houseset
            THEN
                magazineHouses := magazineHouses \/ { newHouseNumber }
            END ;

        stopMagazine ( houseNumber ) =
            PRE houseNumber : NAT1 & houseNumber : magazineHouses
            THEN
                magazineHouses := magazineHouses - { houseNumber }
            END ;

        status  <-- deliveries ( houseNumber ) =
            PRE status : STATUS  &  houseNumber : NAT1
            THEN
                IF ( ( houseNumber : houseset ) & ( houseNumber : magazineHouses ) )
                THEN
                      status := PaperAndMagazine

                ELSIF ( houseNumber : houseset )
                THEN
                      status := OnlyPaper

                ELSIF ( houseNumber : magazineHouses )
                THEN
                      status := OnlyMagazine
                ELSE
                      status := NoDeliveries
                END
            END ;

        outcome <-- stopalldeliverys ( houseNumber ) =
            PRE outcome : OUTCOME  &  houseNumber : NAT1
            THEN
                IF ( houseNumber : houseset & houseNumber : magazineHouses )
                THEN
                    magazineHouses := magazineHouses - { houseNumber }
                    || houseset := houseset - { houseNumber }
                    || outcome := NoMoreDeliveries
                ELSE
                    outcome := NotDeliveringPaperAndMagazine
                END
            END ;

// -------------- Ex 3.7 ---------------------
        number <-- howmanymore =
            BEGIN
                number :=   MAX_DELIVERIES - card ( houseset )
            END

END
