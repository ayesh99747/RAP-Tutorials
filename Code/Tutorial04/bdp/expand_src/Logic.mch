/* Logic
 * Author: ayesh
 * Creation date: 20/11/2021
 */
MACHINE Logic
    SETS
        ANSWER = { yes , no }

    CONCRETE_CONSTANTS
        AA , BB

    PROPERTIES
        AA <: NAT  &  AA = 0 .. 2
        &
        BB <: NAT  &  BB = { 0 , 2 , 4 }

    ASSERTIONS
        ! ( xx ) . ( xx : AA => xx <= 2 ) ;
        ! ( yy ) . ( yy : BB => yy <= 3 )

END
