/* Grid
 * Author: ayesh
 * Creation date: 19/11/2021
 */
MACHINE
    Grid
    SETS
        DIRECTION = { Up, Down, Left, Right } ;
        REPORT = {  MovedUp,   MovedUp_Failed,   MovedDown,  MovedDown_Failed, 
                    MovedLeft, MovedLeft_Failed, MovedRight, MovedRight_Failed  } 

    CONSTANTS
        X_LIMIT, Y_LIMIT, x_axis, y_axis
    PROPERTIES
        X_LIMIT : NAT1  &  X_LIMIT = 9 
        &
        Y_LIMIT : NAT1  &  Y_LIMIT = 7
        &
        x_axis <: NAT1  &  x_axis = 1..9 
        &
        y_axis <: NAT1  &  y_axis = 1..7

    VARIABLES
        xx, yy
       
       
    INVARIANT
        xx : NAT1  &  xx : x_axis 
        &
        yy : NAT1  &  yy : y_axis 
       
    INITIALISATION
        xx, yy := 1, 1
    
    OPERATIONS
        output <-- move( direction ) =
            PRE direction : DIRECTION        
            THEN
                CASE direction OF EITHER
                    Up THEN 
                        IF ( yy < Y_LIMIT )
                        THEN
                            yy := yy + 1      || 
                            output := MovedUp
                        ELSE
                            output := MovedUp_Failed
                        END
                OR
                    Down THEN
                        IF ( yy > 1 )
                        THEN
                            yy := yy - 1      || 
                            output := MovedDown
                        ELSE
                            output := MovedDown_Failed
                        END   
                OR
                    Left THEN
                        IF ( xx > 1 )
                        THEN
                            xx := xx - 1      || 
                            output := MovedLeft
                        ELSE
                            output := MovedLeft_Failed
                        END     
                OR
                    Right THEN
                        IF ( xx < X_LIMIT )
                        THEN
                            xx := xx + 1      || 
                            output := MovedRight
                        ELSE
                            output := MovedRight_Failed
                        END    
                    END  
                END  
            END;
            
        reset =
            BEGIN
                xx, yy := 1, 1
            END ;
            
        x,y <-- position =
            BEGIN
                x,y := xx, yy
            END

END
