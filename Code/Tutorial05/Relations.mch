/* Relations
 * Author: ayesh
 * Creation date: 20/11/2021
 */
MACHINE
    Relations
SETS
      
    PEOPLE = { Paul, Jim, Sue, Ian } ;

    COLOUR = { purple, red, blue, pink, orange, green, yellow } ;


    LETTER = { aa, bb, cc, dd, ee, ff, gg, hh, ii, jj, kk, 
               ll, mm, nn, oo, pp, qq, rr, ss, tt, uu, vv, 
               ww, xx, yy, zz } ;
           
    
    COUNTRY = { Wales, Canada, England, France, Scotland, 
                NIreland, Germany, Italy, Spain, USA } ;

    LANGUAGE = { Welsh, French, English, Spanish, German, Italian } 


  CONSTANTS 
     AA, XX, 
     YY, ZZ,
     R1, R2, R3,
     alphabet,
     RR, QQ,
     UK,

     Rln, Qnc,
     Rstar

  PROPERTIES
     AA <: LETTER      &  AA = { aa, bb }  &
     XX <: NAT         &  XX = { 1, 2, 3 } 
     &

     YY <: NAT         &  YY = { 11, 22 }   &
     ZZ <: NAT         &  ZZ = { 888, 999 } 
     &

     
     R1 : LETTER <-> NAT  & 
     R1 = { aa |-> 1, bb |-> 1, bb |-> 2, cc |-> 3, dd |-> 2, 
	    ee |-> 4, ff |-> 4, gg |-> 5, hh |-> 6 }
     & 
     R2 : LETTER <-> NAT  &
     R2 = { aa |-> 1, bb |-> 1, bb |-> 2, cc |-> 3, dd |-> 2 }
     &
     R3 : LETTER <-> NAT  & 
     R3 = { ee |-> 4, ff |-> 4, gg |-> 5, hh |-> 6 }
     &
     alphabet : LETTER <-> LETTER   &
     alphabet = { aa |-> bb, bb |-> cc, cc |-> dd, dd |-> ee, 
                  ee |-> ff, ff |-> gg, gg |-> hh, hh |-> ii,
                  aa |-> xx, bb |-> yy, cc |-> zz }
     &
     RR : NAT <-> NAT  &
     RR = { 0 |-> 0, 1 |-> 2, 2 |-> 3, 3 |-> 3, 3 |-> 4, 3 |-> 5, 4 |-> 5 }
     &
     QQ : NAT <-> NAT  &
     QQ = { 0 |-> 1, 3 |-> 3, 4 |-> 5, 4 |-> 6, 5 |-> 5, 6 |-> 7 }

     &
     UK <: COUNTRY  &
     UK = { Wales, Scotland, NIreland, England } 
     
     &
     Rln : LETTER <-> NAT &
     Rln = { aa |-> 1, aa |-> 2, bb |-> 2, cc |-> 3, dd |-> 4, ee |-> 5 }
     &
     Qnc : NAT <-> COLOUR &
     Qnc = {  1 |-> red, 2 |-> red, 2 |-> blue, 3 |-> green, 5 |-> purple }  

     &
     Rstar : 1..5 <-> 1..5 &
     Rstar = { 1 |-> 2, 2 |-> 3, 3 |-> 3, 3 |-> 4, 3 |-> 5, 4 |-> 5 }

  VARIABLES 
    speaks, favourite,
    AAxXX

  INVARIANT
    speaks    : COUNTRY <-> LANGUAGE  
    &
    favourite : PEOPLE <-> COLOUR     
    &
    AAxXX <: AA * XX 
 
  INITIALISATION 

    /* see Figure 5.2 */
    
    speaks := { Wales |-> Welsh,       Wales |-> English,
                Scotland |-> English,
                NIreland |-> English,  
                England |-> English, 
                Canada |-> English,    Canada |-> French, 
                France |-> French,     
                Italy |-> Italian, 
                USA |-> English,       USA |-> Spanish, 
                Spain |-> Spanish,     
                Germany |-> German 
              }
    ||
    favourite := { Paul |-> purple, Paul |-> red, Jim |-> blue, 
                   Sue |-> pink, Ian |-> blue }
    ||
    AAxXX := AA * XX     
END
