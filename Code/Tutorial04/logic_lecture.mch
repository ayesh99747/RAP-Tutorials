/* logic_lecture
 * Author: ayesh
 * Creation date: 20/11/2021
 */
MACHINE logic_lecture
    
SETS 
    ANSWER = { yes, no };
    EU = { BEL, NL, LUX, FR, GBR, ITA, DUT, ESP };
    CATEGORY = { odd, even, five }

CONSTANTS
    Benelux
    
PROPERTIES
    Benelux <: EU & Benelux = { BEL, LUX, NL}
    
DEFINITIONS
    isodd(nn) == ( nn : NAT & nn mod 2 = 1 ) ;
    iseven(nn) == ( nn : NAT & nn mod 2 = 0 ) ;
    isdivfive(nn) == ( nn : NAT & nn mod 5 = 0 ) ;
    benelux(cc) == ( cc : Benelux )

VARIABLES
    XX, YY, ZZ,
    odds, evens, fives,
    bool1, bool2

INVARIANT
    XX <: NAT & YY <: NAT & ZZ <: NAT
    &
    odds <: NAT & evens <: NAT & fives <: NAT
    &
    bool1 : BOOL & bool2 : BOOL

INITIALISATION
    XX, YY, ZZ := 1..10, 11..20, 21..30
    ||
    odds, evens, fives := {}, {}, {}
    ||
    bool1, bool2 := TRUE, FALSE

ASSERTIONS
    /* TRUE */
    isodd( 7 ) or iseven( 99 ) ;
    union( { { 1, 2 }, { 3, 4 }, { 5, 6 } } ) = 1..6 ;
    !(yi).((yi : NAT & yi : XX) => yi <= 10) ;
    #(xi, yi).(xi : NAT & yi : NAT & (yi = xi * xi) ) ;
    #(xi).(xi : NAT & iseven(xi) ) ;

    /* "=" & "/=" are "predicates" */
    (2 = 2) & (1 /= 99) ;
    bool(2 = 2) = TRUE ;

    /* FALSE */
    not( #(xi, yi).(xi : NAT & yi : NAT & (yi = xi * xi) ) ) ;
    !(eu).(eu : EU => benelux(eu) ) ;
    FALSE = TRUE ;
    bool(2 = 2) /= bool(1 = 1)

OPERATIONS
    /* explicit truth value TRUE */
    boolean <-- happy =
    BEGIN
    boolean := TRUE
    END ;

    /* "predicate" in precondition isodd */
    ans <-- isOdd( number ) =
    PRE number : NAT & isodd( number )
    THEN ans := yes
    END ;

    /* bool - function converts a "predicate"
    to a truth value */
    answer <-- isEven( number ) =
    PRE number : NAT
    THEN answer := bool( iseven( number ) )
    END ;

    numbcat <-- addNumber( number ) =
    PRE number : NAT /* & numbcat <: CATEGORY */
    THEN
        IF ( iseven(number) & isdivfive(number) )
        THEN
            evens := evens \/ { number } ||
            fives := fives \/ { number } ||
            numbcat := { even, five }
        ELSIF ( not( iseven(number) ) & not( isdivfive(number) ) )
        THEN
            odds := odds \/ { number } ||
            numbcat := { odd }
        ELSE
        skip
        END /* IF */
    END /* PRE */

END
