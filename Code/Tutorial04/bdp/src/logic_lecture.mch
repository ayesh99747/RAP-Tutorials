/* logic_lecture
 * Author: ayesh
 * Creation date: 20/11/2021
 */
MACHINE logic_lecture

SETS
    ANSWER = { yes , no } ;
    EU = { BEL , NL , LUX , FR , GBR , ITA , DUT , ESP } ;
    CATEGORY = { odd , even , five }

CONCRETE_CONSTANTS
    Benelux

PROPERTIES
    Benelux <: EU & Benelux = { BEL , LUX , NL }







ABSTRACT_VARIABLES
    XX , YY , ZZ ,
    odds , evens , fives ,
    bool1 , bool2

INVARIANT
    XX <: NAT & YY <: NAT & ZZ <: NAT
    &
    odds <: NAT & evens <: NAT & fives <: NAT
    &
    bool1 : BOOL & bool2 : BOOL

INITIALISATION
    XX , YY , ZZ := 1 .. 10 , 11 .. 20 , 21 .. 30
    ||
    odds , evens , fives := {} , {} , {}
    ||
    bool1 , bool2 := TRUE , FALSE

ASSERTIONS

    ( 7 : NAT & 7 mod 2 = 1 ) or ( 99 : NAT & 99 mod 2 = 0 ) ;
    union ( { { 1 , 2 } , { 3 , 4 } , { 5 , 6 } } ) = 1 .. 6 ;
    ! ( yi ) . ( ( yi : NAT & yi : XX ) => yi <= 10 ) ;
    # ( xi , yi ) . ( xi : NAT & yi : NAT & ( yi = xi * xi ) ) ;
    # ( xi ) . ( xi : NAT & ( xi : NAT & xi mod 2 = 0 ) ) ;


    ( 2 = 2 ) & ( 1 /= 99 ) ;
    bool ( 2 = 2 ) = TRUE ;

    /* FALSE */
    not ( # ( xi , yi ) . ( xi : NAT & yi : NAT & ( yi = xi * xi ) ) ) ;
    ! ( eu ) . ( eu : EU => ( eu : Benelux ) ) ;
    FALSE = TRUE ;
    bool ( 2 = 2 ) /= bool ( 1 = 1 )

OPERATIONS
    /* explicit truth value TRUE */
    boolean <-- happy =
    BEGIN
    boolean := TRUE
    END ;

    /* "predicate" in precondition isodd */
    ans <-- isOdd ( number ) =
    PRE number : NAT & ( number : NAT & number mod 2 = 1 )
    THEN ans := yes
    END ;

    /* bool - function converts a "predicate"
    to a truth value */
    answer <-- isEven ( number ) =
    PRE number : NAT
    THEN answer := bool ( ( number : NAT & number mod 2 = 0 ) )
    END ;

    numbcat <-- addNumber ( number ) =
    PRE number : NAT
    THEN
        IF ( ( number : NAT & number mod 2 = 0 ) & ( number : NAT & number mod 5 = 0 ) )
        THEN
            evens := evens \/ { number } ||
            fives := fives \/ { number } ||
            numbcat := { even , five }
        ELSIF ( not ( ( number : NAT & number mod 2 = 0 ) ) & not ( ( number : NAT & number mod 5 = 0 ) ) )
        THEN
            odds := odds \/ { number } ||
            numbcat := { odd }
        ELSE
        skip
        END /* IF */
    END /* PRE */

END
