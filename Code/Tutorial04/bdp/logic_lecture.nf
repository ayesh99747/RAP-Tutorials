Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(logic_lecture))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(logic_lecture))==(Machine(logic_lecture));
  Level(Machine(logic_lecture))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(logic_lecture)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(logic_lecture))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(logic_lecture))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(logic_lecture))==(?);
  List_Includes(Machine(logic_lecture))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(logic_lecture))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(logic_lecture))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(logic_lecture))==(?);
  Context_List_Variables(Machine(logic_lecture))==(?);
  Abstract_List_Variables(Machine(logic_lecture))==(?);
  Local_List_Variables(Machine(logic_lecture))==(bool2,bool1,fives,evens,odds,ZZ,YY,XX);
  List_Variables(Machine(logic_lecture))==(bool2,bool1,fives,evens,odds,ZZ,YY,XX);
  External_List_Variables(Machine(logic_lecture))==(bool2,bool1,fives,evens,odds,ZZ,YY,XX)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(logic_lecture))==(?);
  Abstract_List_VisibleVariables(Machine(logic_lecture))==(?);
  External_List_VisibleVariables(Machine(logic_lecture))==(?);
  Expanded_List_VisibleVariables(Machine(logic_lecture))==(?);
  List_VisibleVariables(Machine(logic_lecture))==(?);
  Internal_List_VisibleVariables(Machine(logic_lecture))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(logic_lecture))==(btrue);
  Gluing_List_Invariant(Machine(logic_lecture))==(btrue);
  Expanded_List_Invariant(Machine(logic_lecture))==(btrue);
  Abstract_List_Invariant(Machine(logic_lecture))==(btrue);
  Context_List_Invariant(Machine(logic_lecture))==(btrue);
  List_Invariant(Machine(logic_lecture))==(XX <: NAT & YY <: NAT & ZZ <: NAT & odds <: NAT & evens <: NAT & fives <: NAT & bool1: BOOL & bool2: BOOL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(logic_lecture))==(btrue);
  Abstract_List_Assertions(Machine(logic_lecture))==(btrue);
  Context_List_Assertions(Machine(logic_lecture))==(btrue);
  List_Assertions(Machine(logic_lecture))==(7: NAT & 7 mod 2 = 1 or (99: NAT & 99 mod 2 = 0);union({{1,2},{3,4},{5,6}}) = 1..6;!yi.(yi: NAT & yi: XX => yi<=10);#(xi,yi).(xi: NAT & yi: NAT & yi = xi*xi);#xi.(xi: NAT & (xi: NAT & xi mod 2 = 0));2 = 2 & 1/=99;bool(2 = 2) = TRUE;not(#(xi,yi).(xi: NAT & yi: NAT & yi = xi*xi));!eu.(eu: EU => eu: Benelux);FALSE = TRUE;bool(2 = 2)/=bool(1 = 1))
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(logic_lecture))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(logic_lecture))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(logic_lecture))==(XX,YY,ZZ,odds,evens,fives,bool1,bool2:=1..10,11..20,21..30,{},{},{},TRUE,FALSE);
  Context_List_Initialisation(Machine(logic_lecture))==(skip);
  List_Initialisation(Machine(logic_lecture))==(XX,YY,ZZ:=1..10,11..20,21..30 || odds,evens,fives:={},{},{} || bool1,bool2:=TRUE,FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(logic_lecture))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(logic_lecture))==(btrue);
  List_Constraints(Machine(logic_lecture))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(logic_lecture))==(happy,isOdd,isEven,addNumber);
  List_Operations(Machine(logic_lecture))==(happy,isOdd,isEven,addNumber)
END
&
THEORY ListInputX IS
  List_Input(Machine(logic_lecture),happy)==(?);
  List_Input(Machine(logic_lecture),isOdd)==(number);
  List_Input(Machine(logic_lecture),isEven)==(number);
  List_Input(Machine(logic_lecture),addNumber)==(number)
END
&
THEORY ListOutputX IS
  List_Output(Machine(logic_lecture),happy)==(boolean);
  List_Output(Machine(logic_lecture),isOdd)==(ans);
  List_Output(Machine(logic_lecture),isEven)==(answer);
  List_Output(Machine(logic_lecture),addNumber)==(numbcat)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(logic_lecture),happy)==(boolean <-- happy);
  List_Header(Machine(logic_lecture),isOdd)==(ans <-- isOdd(number));
  List_Header(Machine(logic_lecture),isEven)==(answer <-- isEven(number));
  List_Header(Machine(logic_lecture),addNumber)==(numbcat <-- addNumber(number))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(logic_lecture),happy)==(btrue);
  List_Precondition(Machine(logic_lecture),isOdd)==(number: NAT & (number: NAT & number mod 2 = 1));
  List_Precondition(Machine(logic_lecture),isEven)==(number: NAT);
  List_Precondition(Machine(logic_lecture),addNumber)==(number: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(logic_lecture),addNumber)==(number: NAT | number: NAT & number mod 2 = 0 & (number: NAT & number mod 5 = 0) ==> evens,fives,numbcat:=evens\/{number},fives\/{number},{even,five} [] not(number: NAT & number mod 2 = 0 & (number: NAT & number mod 5 = 0)) ==> (not(number: NAT & number mod 2 = 0) & not(number: NAT & number mod 5 = 0) ==> odds,numbcat:=odds\/{number},{odd} [] not(not(number: NAT & number mod 2 = 0) & not(number: NAT & number mod 5 = 0)) ==> skip));
  Expanded_List_Substitution(Machine(logic_lecture),isEven)==(number: NAT | answer:=bool(number: NAT & number mod 2 = 0));
  Expanded_List_Substitution(Machine(logic_lecture),isOdd)==(number: NAT & (number: NAT & number mod 2 = 1) | ans:=yes);
  Expanded_List_Substitution(Machine(logic_lecture),happy)==(btrue | boolean:=TRUE);
  List_Substitution(Machine(logic_lecture),happy)==(boolean:=TRUE);
  List_Substitution(Machine(logic_lecture),isOdd)==(ans:=yes);
  List_Substitution(Machine(logic_lecture),isEven)==(answer:=bool(number: NAT & number mod 2 = 0));
  List_Substitution(Machine(logic_lecture),addNumber)==(IF number: NAT & number mod 2 = 0 & (number: NAT & number mod 5 = 0) THEN evens:=evens\/{number} || fives:=fives\/{number} || numbcat:={even,five} ELSIF not(number: NAT & number mod 2 = 0) & not(number: NAT & number mod 5 = 0) THEN odds:=odds\/{number} || numbcat:={odd} ELSE skip END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(logic_lecture))==(Benelux);
  Inherited_List_Constants(Machine(logic_lecture))==(?);
  List_Constants(Machine(logic_lecture))==(Benelux)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(logic_lecture),ANSWER)==({yes,no});
  Context_List_Enumerated(Machine(logic_lecture))==(?);
  Context_List_Defered(Machine(logic_lecture))==(?);
  Context_List_Sets(Machine(logic_lecture))==(?);
  List_Valuable_Sets(Machine(logic_lecture))==(?);
  Inherited_List_Enumerated(Machine(logic_lecture))==(?);
  Inherited_List_Defered(Machine(logic_lecture))==(?);
  Inherited_List_Sets(Machine(logic_lecture))==(?);
  List_Enumerated(Machine(logic_lecture))==(ANSWER,EU,CATEGORY);
  List_Defered(Machine(logic_lecture))==(?);
  List_Sets(Machine(logic_lecture))==(ANSWER,EU,CATEGORY);
  Set_Definition(Machine(logic_lecture),EU)==({BEL,NL,LUX,FR,GBR,ITA,DUT,ESP});
  Set_Definition(Machine(logic_lecture),CATEGORY)==({odd,even,five})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(logic_lecture))==(?);
  Expanded_List_HiddenConstants(Machine(logic_lecture))==(?);
  List_HiddenConstants(Machine(logic_lecture))==(?);
  External_List_HiddenConstants(Machine(logic_lecture))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(logic_lecture))==(btrue);
  Context_List_Properties(Machine(logic_lecture))==(btrue);
  Inherited_List_Properties(Machine(logic_lecture))==(btrue);
  List_Properties(Machine(logic_lecture))==(Benelux <: EU & Benelux = {BEL,LUX,NL} & ANSWER: FIN(INTEGER) & not(ANSWER = {}) & EU: FIN(INTEGER) & not(EU = {}) & CATEGORY: FIN(INTEGER) & not(CATEGORY = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(logic_lecture),happy)==(?);
  List_ANY_Var(Machine(logic_lecture),isOdd)==(?);
  List_ANY_Var(Machine(logic_lecture),isEven)==(?);
  List_ANY_Var(Machine(logic_lecture),addNumber)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(logic_lecture)) == (Benelux,ANSWER,EU,CATEGORY,yes,no,BEL,NL,LUX,FR,GBR,ITA,DUT,ESP,odd,even,five | ? | bool2,bool1,fives,evens,odds,ZZ,YY,XX | ? | happy,isOdd,isEven,addNumber | ? | ? | ? | logic_lecture);
  List_Of_HiddenCst_Ids(Machine(logic_lecture)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(logic_lecture)) == (Benelux);
  List_Of_VisibleVar_Ids(Machine(logic_lecture)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(logic_lecture)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(logic_lecture)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1)));Type(EU) == Cst(SetOf(etype(EU,0,7)));Type(CATEGORY) == Cst(SetOf(etype(CATEGORY,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(logic_lecture)) == (Type(yes) == Cst(etype(ANSWER,0,1));Type(no) == Cst(etype(ANSWER,0,1));Type(BEL) == Cst(etype(EU,0,7));Type(NL) == Cst(etype(EU,0,7));Type(LUX) == Cst(etype(EU,0,7));Type(FR) == Cst(etype(EU,0,7));Type(GBR) == Cst(etype(EU,0,7));Type(ITA) == Cst(etype(EU,0,7));Type(DUT) == Cst(etype(EU,0,7));Type(ESP) == Cst(etype(EU,0,7));Type(odd) == Cst(etype(CATEGORY,0,2));Type(even) == Cst(etype(CATEGORY,0,2));Type(five) == Cst(etype(CATEGORY,0,2));Type(Benelux) == Cst(SetOf(etype(EU,"[Benelux","]Benelux"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(logic_lecture)) == (Type(bool2) == Mvl(btype(BOOL,?,?));Type(bool1) == Mvl(btype(BOOL,?,?));Type(fives) == Mvl(SetOf(btype(INTEGER,?,?)));Type(evens) == Mvl(SetOf(btype(INTEGER,?,?)));Type(odds) == Mvl(SetOf(btype(INTEGER,?,?)));Type(ZZ) == Mvl(SetOf(btype(INTEGER,?,?)));Type(YY) == Mvl(SetOf(btype(INTEGER,?,?)));Type(XX) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(logic_lecture)) == (Type(addNumber) == Cst(SetOf(etype(CATEGORY,?,?)),btype(INTEGER,?,?));Type(isEven) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(isOdd) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(happy) == Cst(btype(BOOL,?,?),No_type));
  Observers(Machine(logic_lecture)) == (Type(isEven) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(isOdd) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(happy) == Cst(btype(BOOL,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
