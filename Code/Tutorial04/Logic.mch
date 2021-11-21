/* Logic
 * Author: ayesh
 * Creation date: 20/11/2021
 */
MACHINE Logic

SETS
ANSWER = { yes, no } 

CONSTANTS 
    AA, BB               // Exercise 4.4 

PROPERTIES
    AA <: NAT  &  AA = 0..2  
    & 
    BB <: NAT  &  BB = { 0, 2, 4 }  



DEFINITIONS

    squares( limit ) == ( { xx | xx : NAT & ( #( yy ).( ( yy : 1..limit ) & xx = yy * yy ) ) }  );
   
    primes( limit )  == ( { xx | xx : NAT1  &  xx <= limit  & ( !( yy ).( ( yy : (2..(xx/2)) )  
                        =>  ( xx mod yy /= 0 ) ) ) } );
    
    // The default Maximum set expansion in my configuration of ProB is currently 160 elements,
    // but it may be different in yours.
    
    
    
    // Exercise 4.8, See Lecture 4: Logic notes slide 44. 
    
    even( nn )  == ( ( nn mod 2 ) = 0 ) ;
    odd( nn )   == ( ( nn mod 2 ) = 1 ) ;
    smallPrime( nn )        == ( nn : { 1, 2, 3, 5, 7 } ) ;
    ascending( xx, yy, zz ) == ( (xx <= yy)  &  (yy <= zz) )
    
    //      ascending( xx, yy, zz ) == (   (xx : NAT & yy : NAT & zz : NAT) 
    //                                   & (xx <= yy)  &  (yy <= zz) )


ASSERTIONS

    // Exercise 4.4, See Lecture 4: Logic notes slide 32.
    
    // "All the elements of AA are less than or equal to 2." = TRUE 
    !( xx ).( xx : AA  =>  xx <= 2 ) ;        
    // "Not all the elements of BB are less than or equal to 3" = FALSE
    !( yy ).( yy : BB  =>  yy <= 3 ) ;         
    
    // Exercise 4.5, See Lecture 4: Logic notes slide 37. 
    // â€œAll natural numbers are either equal to or greater than zeroâ€ = TRUE
    !( nn ).( nn : NAT  =>  ( nn = 0  or  nn > 0 ) )  ;
    // "No natural number exists which is less that 0." = TRUE
    not(  #( yy ).( yy : NAT  &  yy < 0 )  ) ;
    
    // Exercise 4.8
    
    even(3)   ;  
    even(30)  ;
    
    odd(2)   ;
    odd(21)  ;
    
    smallPrime(3)  ;
    smallPrime(4)  ;
    
    ascending(4,6,9)    ;
    ascending(4,16,9)   ;
    ascending(14,6,9)   ;
    ascending(14,6,99)  ;
    ascending(14,61,99)

OPERATIONS

    ans <-- areAscending_v1( xx, yy, zz ) =
        PRE
                ans : ANSWER
            &
                xx : NAT & yy : NAT & zz : NAT
            & 
                ascending(xx, yy, zz)
        THEN 
            ans := yes
        END;
    
    // Exercise 4.8
    truthValue <-- areAscending_v2( xx, yy, zz ) =
        PRE
            truthValue : BOOL  &      
            xx : NAT & yy : NAT & zz : NAT 
        THEN 
            truthValue := bool( ascending( xx, yy, zz ) )
        END;
    
    truthValue <-- isEven( xx ) =
        PRE
            truthValue : BOOL  & xx : NAT       
        THEN 
            truthValue := bool( even( xx ) )
        END;
    
    truthValue <-- isOdd( xx ) =
        PRE
            truthValue : BOOL  & xx : NAT       
        THEN 
            truthValue := bool( odd( xx ) )
        END    

END
