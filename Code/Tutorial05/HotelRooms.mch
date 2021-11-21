/* HotelRooms
 * Author: ayesh
 * Creation date: 20/11/2021
 */
MACHINE
    HotelRooms

SETS        
     ROOM   = { rm1, rm2, rm3, rm4, rm5 } ; 
     NAME   = { Ian, Sue, Tom, Jim, Bill, empty } ; 
     ANSWER = { Yes, No }

  VARIABLES     
     guests

  INVARIANT   
     guests : ROOM <-> NAME

  INITIALISATION 
     guests := ROOM * { empty }     /* All rooms are empty, "*" is Cartesian Product */    
   
   
  
  OPERATIONS

    guestsCheckIn( room, gnames ) =
      PRE
          (room : ROOM) & (gnames <: NAME) & 
          (gnames /= {}) & (empty /: gnames)
      THEN 
            guests := guests <+ ( { room } * gnames ) 
      END ;


    guestsCheckOut( room ) = 
      PRE 
          room : ROOM
      THEN
            guests := guests <+ { room |-> empty } 
      END ; 
   
   
    rmOcc <-- roomOccupants( room ) = 
             PRE 
                 room : ROOM
             THEN 
                   rmOcc := ran( { room } <| guests ) 
             END ;


    ans <-- hasGuestCheckedIn( gname ) =
           PRE 
                (gname : NAME) & (gname /= empty)
           THEN
                IF ( gname : ran(guests) )
                THEN  
                     ans := Yes
                ELSE 
                     ans := No
                END
            END ;  
   
  
    guestsSwapRoom( roomi, roomj ) = 
      PRE
           (roomi : ROOM) & (roomj : ROOM)
      THEN 
          guests := guests 
                    <+ (   ( { roomi } * guests[ { roomj } ] ) 
                        \/  
                           ( { roomj } * guests[ { roomi } ] ) 
                       )
      END 

END
