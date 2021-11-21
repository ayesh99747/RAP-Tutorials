/* Family
 * Author: ayesh
 * Creation date: 20/11/2021
 */
MACHINE
    Family

SETS
    PEOPLE = { Grandad, Paul, Jim, Mary, Ian, 
    	       Jack, Jill, Jane, Bill, Joe    } ;
    
    SEX =  { Male, Female, Trans } ;
          
    REPORT =  {  
    	         Success, 
                 Error_NotAFamilyMembersDeath, 
		 Error_NotAFamilyMembersBirthday, 
                 Error_NotAFamilyMembersBaby,  
		 Error_MalesCantHaveBabies, 
                 Error_AlreadyUsedName,
		 Error_MotherTooYoung  
	      } ;

    ANSWER =   { Yes_Someone_Has_This_Sex, No_One_Has_This_Sex  }
    
  CONSTANTS
    PASSPORT_NUMBER,
    MinimumMumAge 

  PROPERTIES
    PASSPORT_NUMBER = NAT1
    &
    MinimumMumAge : NAT1 &  MinimumMumAge = 16

  
  VARIABLES
    family,
    age,
    sex 
  
  INVARIANT
    family  <: PEOPLE      &
    age : PEOPLE +-> NAT   &  dom(age) = family  &
    sex : PEOPLE +-> SEX   &  dom(sex) = family          
    

  INITIALISATION
       family := { Grandad, Paul, Mary, Jim, Jane, Jill }  
    ||
       age    := { Grandad |-> 100, Paul |-> 41,  Jim |-> 15, 
                      Jane |-> 11,  Mary |-> 40, Jill |-> 4   }  
    ||
       sex    := { Paul |-> Male,   Mary |-> Female,     Jim |-> Male,
                   Jane |-> Female, Jill |-> Female, Grandad |-> Male  }  
  
  
  OPERATIONS
    
    report <-- HadBirthday( person ) =
               PRE
                   person : PEOPLE
               THEN
                   IF   ( person : family )
                   THEN
                         age    := age <+ { person |-> (age(person) + 1) }  ||
                         report := Success
                   ELSE 
                         /* ( person /: family ) */
                         report := Error_NotAFamilyMembersBirthday
                   END
               END ;
              
              
    report <-- PersonDies( person ) =
              PRE
                  person : PEOPLE
              THEN
                  IF   ( person : family )
                  THEN
                        family  := family - { person }  ||
                        age     := { person } <<| age   ||
                        sex     := { person } <<| sex   ||
                        report  := Success
                  ELSE 
                        /* ( person /: family ) */
                        report := Error_NotAFamilyMembersDeath
                  END
              END ;
                      
                      
    report <-- HadABaby( mother, baby, babysex ) =
              PRE
                  ( mother : PEOPLE & baby : PEOPLE & babysex : SEX )
              THEN
                  IF   ( mother : family              &  
                         sex(mother) = Female         &
                         age(mother) >= MinimumMumAge &
                         baby /: family                  )
                  THEN
                        family  := family \/ { baby }          ||
                        age     := age \/ { baby |-> 0 }       ||
                        sex     := sex \/ { baby |-> babysex } ||
                        report  := Success
                  ELSIF
                        ( mother /: family )
                  THEN
                        report := Error_NotAFamilyMembersBaby 
                  ELSIF
                        ( sex(mother) = Male )
                  THEN
                        report := Error_MalesCantHaveBabies
                  ELSIF
                        ( age(mother) < MinimumMumAge )
                  THEN
                         report := Error_MotherTooYoung
                  ELSE
                         /* baby : family */
                         report := Error_AlreadyUsedName
                       
                  END
              END ;
                      
   
    answer <-- DoesAFamilyMemberHaveThisSex( ss ) =
               PRE 
                    ( ss : SEX  & answer : ANSWER )
               THEN
                   IF   ( ss : ran(sex) )
                   THEN
                         answer := Yes_Someone_Has_This_Sex
                   ELSE 
                         /* ( ss /: ran(sex) ) */
                         answer := No_One_Has_This_Sex  
                   END
               END 

END
