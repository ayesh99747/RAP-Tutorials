/* Club
 * Author: ayesh
 * Creation date: 15/11/2021
 */
MACHINE Club (NAME, capacity)

    CONSTRAINTS capacity : NAT1 & 5 <= capacity & capacity < card(NAME)
    
    SETS ANSWER = { yes, no }
    
    CONSTANTS queuetotal
    
    PROPERTIES queuetotal : NAT1 & queuetotal > 2
   
    VARIABLES members, waiting

    INVARIANT queuetotal < capacity
            & members <: NAME
            & waiting <: NAME
            & members /\ waiting = {}
            & card(members) <= capacity
            & card(waiting) <= queuetotal

    INITIALISATION members := {} || waiting := {}

    OPERATIONS
        join( newmember ) =
            PRE newmember : waiting & card(members) < capacity
            THEN
            members := members \/ { newmember }
            || waiting := waiting - { newmember }
            END ;
        join_queue( newmember ) =
            PRE newmember : NAME & newmember /: members &
            newmember /: waiting & card(waiting) < queuetotal
            THEN
            waiting := waiting \/ { newmember }
            END ;
        remove( member ) =
            PRE member : members
            THEN
            members := members - { member }
            END ;
        semi_reset =
            BEGIN
            members, waiting := {}, members
            END ;
        ans <-- is_member( member ) =
            PRE member : NAME
            THEN
                IF ( member : members )
                THEN
                    ans := yes
                ELSE
                    ans := no
                END
            END

END
