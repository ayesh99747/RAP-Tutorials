Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Exercise3_7))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Exercise3_7))==(Machine(Exercise3_7));
  Level(Machine(Exercise3_7))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Exercise3_7)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Exercise3_7))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Exercise3_7))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Exercise3_7))==(?);
  List_Includes(Machine(Exercise3_7))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Exercise3_7))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Exercise3_7))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Exercise3_7))==(?);
  Context_List_Variables(Machine(Exercise3_7))==(?);
  Abstract_List_Variables(Machine(Exercise3_7))==(?);
  Local_List_Variables(Machine(Exercise3_7))==(magazineHouses,houseset);
  List_Variables(Machine(Exercise3_7))==(magazineHouses,houseset);
  External_List_Variables(Machine(Exercise3_7))==(magazineHouses,houseset)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Exercise3_7))==(?);
  Abstract_List_VisibleVariables(Machine(Exercise3_7))==(?);
  External_List_VisibleVariables(Machine(Exercise3_7))==(?);
  Expanded_List_VisibleVariables(Machine(Exercise3_7))==(?);
  List_VisibleVariables(Machine(Exercise3_7))==(?);
  Internal_List_VisibleVariables(Machine(Exercise3_7))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Exercise3_7))==(btrue);
  Gluing_List_Invariant(Machine(Exercise3_7))==(btrue);
  Expanded_List_Invariant(Machine(Exercise3_7))==(btrue);
  Abstract_List_Invariant(Machine(Exercise3_7))==(btrue);
  Context_List_Invariant(Machine(Exercise3_7))==(btrue);
  List_Invariant(Machine(Exercise3_7))==(houseset <: NAT1 & card(houseset)<=MAX_DELIVERIES & magazineHouses <: NAT1 & magazineHouses <: houseset)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Exercise3_7))==(btrue);
  Abstract_List_Assertions(Machine(Exercise3_7))==(btrue);
  Context_List_Assertions(Machine(Exercise3_7))==(btrue);
  List_Assertions(Machine(Exercise3_7))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Exercise3_7))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Exercise3_7))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Exercise3_7))==(houseset,magazineHouses:={},{});
  Context_List_Initialisation(Machine(Exercise3_7))==(skip);
  List_Initialisation(Machine(Exercise3_7))==(houseset:={} || magazineHouses:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Exercise3_7))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Exercise3_7))==(btrue);
  List_Constraints(Machine(Exercise3_7))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Exercise3_7))==(add,number,getsPapers,cancelPapers,firsthouse,lasthouse,haspaper,stopdelivery,deliverMagazine,stopMagazine,deliveries,stopalldeliverys,howmanymore);
  List_Operations(Machine(Exercise3_7))==(add,number,getsPapers,cancelPapers,firsthouse,lasthouse,haspaper,stopdelivery,deliverMagazine,stopMagazine,deliveries,stopalldeliverys,howmanymore)
END
&
THEORY ListInputX IS
  List_Input(Machine(Exercise3_7),add)==(new);
  List_Input(Machine(Exercise3_7),number)==(?);
  List_Input(Machine(Exercise3_7),getsPapers)==(houseNumber);
  List_Input(Machine(Exercise3_7),cancelPapers)==(houseNumber);
  List_Input(Machine(Exercise3_7),firsthouse)==(houseNumber);
  List_Input(Machine(Exercise3_7),lasthouse)==(houseNumber);
  List_Input(Machine(Exercise3_7),haspaper)==(houseNumber);
  List_Input(Machine(Exercise3_7),stopdelivery)==(houseNumber);
  List_Input(Machine(Exercise3_7),deliverMagazine)==(newHouseNumber);
  List_Input(Machine(Exercise3_7),stopMagazine)==(houseNumber);
  List_Input(Machine(Exercise3_7),deliveries)==(houseNumber);
  List_Input(Machine(Exercise3_7),stopalldeliverys)==(houseNumber);
  List_Input(Machine(Exercise3_7),howmanymore)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Exercise3_7),add)==(?);
  List_Output(Machine(Exercise3_7),number)==(ans);
  List_Output(Machine(Exercise3_7),getsPapers)==(ans);
  List_Output(Machine(Exercise3_7),cancelPapers)==(?);
  List_Output(Machine(Exercise3_7),firsthouse)==(firstHouseNumber);
  List_Output(Machine(Exercise3_7),lasthouse)==(lastHouseNumber);
  List_Output(Machine(Exercise3_7),haspaper)==(message);
  List_Output(Machine(Exercise3_7),stopdelivery)==(outcome);
  List_Output(Machine(Exercise3_7),deliverMagazine)==(?);
  List_Output(Machine(Exercise3_7),stopMagazine)==(?);
  List_Output(Machine(Exercise3_7),deliveries)==(status);
  List_Output(Machine(Exercise3_7),stopalldeliverys)==(outcome);
  List_Output(Machine(Exercise3_7),howmanymore)==(number)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Exercise3_7),add)==(add(new));
  List_Header(Machine(Exercise3_7),number)==(ans <-- number);
  List_Header(Machine(Exercise3_7),getsPapers)==(ans <-- getsPapers(houseNumber));
  List_Header(Machine(Exercise3_7),cancelPapers)==(cancelPapers(houseNumber));
  List_Header(Machine(Exercise3_7),firsthouse)==(firstHouseNumber <-- firsthouse(houseNumber));
  List_Header(Machine(Exercise3_7),lasthouse)==(lastHouseNumber <-- lasthouse(houseNumber));
  List_Header(Machine(Exercise3_7),haspaper)==(message <-- haspaper(houseNumber));
  List_Header(Machine(Exercise3_7),stopdelivery)==(outcome <-- stopdelivery(houseNumber));
  List_Header(Machine(Exercise3_7),deliverMagazine)==(deliverMagazine(newHouseNumber));
  List_Header(Machine(Exercise3_7),stopMagazine)==(stopMagazine(houseNumber));
  List_Header(Machine(Exercise3_7),deliveries)==(status <-- deliveries(houseNumber));
  List_Header(Machine(Exercise3_7),stopalldeliverys)==(outcome <-- stopalldeliverys(houseNumber));
  List_Header(Machine(Exercise3_7),howmanymore)==(number <-- howmanymore)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Exercise3_7),add)==(new: NAT1 & new/:houseset & card(houseset)<MAX_DELIVERIES);
  List_Precondition(Machine(Exercise3_7),number)==(btrue);
  List_Precondition(Machine(Exercise3_7),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_7),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_7),firsthouse)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_7),lasthouse)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_7),haspaper)==(houseNumber: NAT1);
  List_Precondition(Machine(Exercise3_7),stopdelivery)==(houseNumber: NAT1);
  List_Precondition(Machine(Exercise3_7),deliverMagazine)==(newHouseNumber: NAT1 & newHouseNumber/:magazineHouses & newHouseNumber: houseset);
  List_Precondition(Machine(Exercise3_7),stopMagazine)==(houseNumber: NAT1 & houseNumber: magazineHouses);
  List_Precondition(Machine(Exercise3_7),deliveries)==(status: STATUS & houseNumber: NAT1);
  List_Precondition(Machine(Exercise3_7),stopalldeliverys)==(outcome: OUTCOME & houseNumber: NAT1);
  List_Precondition(Machine(Exercise3_7),howmanymore)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Exercise3_7),howmanymore)==(btrue | number:=MAX_DELIVERIES-card(houseset));
  Expanded_List_Substitution(Machine(Exercise3_7),stopalldeliverys)==(outcome: OUTCOME & houseNumber: NAT1 | houseNumber: houseset & houseNumber: magazineHouses ==> magazineHouses,houseset,outcome:=magazineHouses-{houseNumber},houseset-{houseNumber},NoMoreDeliveries [] not(houseNumber: houseset & houseNumber: magazineHouses) ==> outcome:=NotDeliveringPaperAndMagazine);
  Expanded_List_Substitution(Machine(Exercise3_7),deliveries)==(status: STATUS & houseNumber: NAT1 | houseNumber: houseset & houseNumber: magazineHouses ==> status:=PaperAndMagazine [] not(houseNumber: houseset & houseNumber: magazineHouses) ==> (houseNumber: houseset ==> status:=OnlyPaper [] not(houseNumber: houseset) ==> (houseNumber: magazineHouses ==> status:=OnlyMagazine [] not(houseNumber: magazineHouses) ==> status:=NoDeliveries)));
  Expanded_List_Substitution(Machine(Exercise3_7),stopMagazine)==(houseNumber: NAT1 & houseNumber: magazineHouses | magazineHouses:=magazineHouses-{houseNumber});
  Expanded_List_Substitution(Machine(Exercise3_7),deliverMagazine)==(newHouseNumber: NAT1 & newHouseNumber/:magazineHouses & newHouseNumber: houseset | magazineHouses:=magazineHouses\/{newHouseNumber});
  Expanded_List_Substitution(Machine(Exercise3_7),stopdelivery)==(houseNumber: NAT1 | houseNumber: houseset ==> houseset,outcome:=houseset-{houseNumber},NoMoreDeliveries [] not(houseNumber: houseset) ==> outcome:=NotDeliveredTo);
  Expanded_List_Substitution(Machine(Exercise3_7),haspaper)==(houseNumber: NAT1 | houseNumber: houseset ==> message:=yes [] not(houseNumber: houseset) ==> message:=no);
  Expanded_List_Substitution(Machine(Exercise3_7),lasthouse)==(houseNumber: NAT1 & houseNumber: houseset | lastHouseNumber:=max(houseset));
  Expanded_List_Substitution(Machine(Exercise3_7),firsthouse)==(houseNumber: NAT1 & houseNumber: houseset | firstHouseNumber:=min(houseset));
  Expanded_List_Substitution(Machine(Exercise3_7),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseset | houseset:=houseset-{houseNumber});
  Expanded_List_Substitution(Machine(Exercise3_7),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset | ans:=1);
  Expanded_List_Substitution(Machine(Exercise3_7),number)==(btrue | ans:=card(houseset));
  Expanded_List_Substitution(Machine(Exercise3_7),add)==(new: NAT1 & new/:houseset & card(houseset)<MAX_DELIVERIES | houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise3_7),add)==(houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise3_7),number)==(ans:=card(houseset));
  List_Substitution(Machine(Exercise3_7),getsPapers)==(ans:=1);
  List_Substitution(Machine(Exercise3_7),cancelPapers)==(houseset:=houseset-{houseNumber});
  List_Substitution(Machine(Exercise3_7),firsthouse)==(firstHouseNumber:=min(houseset));
  List_Substitution(Machine(Exercise3_7),lasthouse)==(lastHouseNumber:=max(houseset));
  List_Substitution(Machine(Exercise3_7),haspaper)==(IF houseNumber: houseset THEN message:=yes ELSE message:=no END);
  List_Substitution(Machine(Exercise3_7),stopdelivery)==(IF houseNumber: houseset THEN houseset:=houseset-{houseNumber} || outcome:=NoMoreDeliveries ELSE outcome:=NotDeliveredTo END);
  List_Substitution(Machine(Exercise3_7),deliverMagazine)==(magazineHouses:=magazineHouses\/{newHouseNumber});
  List_Substitution(Machine(Exercise3_7),stopMagazine)==(magazineHouses:=magazineHouses-{houseNumber});
  List_Substitution(Machine(Exercise3_7),deliveries)==(IF houseNumber: houseset & houseNumber: magazineHouses THEN status:=PaperAndMagazine ELSIF houseNumber: houseset THEN status:=OnlyPaper ELSIF houseNumber: magazineHouses THEN status:=OnlyMagazine ELSE status:=NoDeliveries END);
  List_Substitution(Machine(Exercise3_7),stopalldeliverys)==(IF houseNumber: houseset & houseNumber: magazineHouses THEN magazineHouses:=magazineHouses-{houseNumber} || houseset:=houseset-{houseNumber} || outcome:=NoMoreDeliveries ELSE outcome:=NotDeliveringPaperAndMagazine END);
  List_Substitution(Machine(Exercise3_7),howmanymore)==(number:=MAX_DELIVERIES-card(houseset))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Exercise3_7))==(MAX_DELIVERIES);
  Inherited_List_Constants(Machine(Exercise3_7))==(?);
  List_Constants(Machine(Exercise3_7))==(MAX_DELIVERIES)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Exercise3_7),ANSWER)==({yes,no});
  Context_List_Enumerated(Machine(Exercise3_7))==(?);
  Context_List_Defered(Machine(Exercise3_7))==(?);
  Context_List_Sets(Machine(Exercise3_7))==(?);
  List_Valuable_Sets(Machine(Exercise3_7))==(?);
  Inherited_List_Enumerated(Machine(Exercise3_7))==(?);
  Inherited_List_Defered(Machine(Exercise3_7))==(?);
  Inherited_List_Sets(Machine(Exercise3_7))==(?);
  List_Enumerated(Machine(Exercise3_7))==(ANSWER,OUTCOME,STATUS);
  List_Defered(Machine(Exercise3_7))==(?);
  List_Sets(Machine(Exercise3_7))==(ANSWER,OUTCOME,STATUS);
  Set_Definition(Machine(Exercise3_7),OUTCOME)==({NoMoreDeliveries,NotDeliveredTo,NotDeliveringPaperAndMagazine});
  Set_Definition(Machine(Exercise3_7),STATUS)==({PaperAndMagazine,OnlyPaper,OnlyMagazine,NoDeliveries,NotBothPaperAndMagazine})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Exercise3_7))==(?);
  Expanded_List_HiddenConstants(Machine(Exercise3_7))==(?);
  List_HiddenConstants(Machine(Exercise3_7))==(?);
  External_List_HiddenConstants(Machine(Exercise3_7))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Exercise3_7))==(btrue);
  Context_List_Properties(Machine(Exercise3_7))==(btrue);
  Inherited_List_Properties(Machine(Exercise3_7))==(btrue);
  List_Properties(Machine(Exercise3_7))==(MAX_DELIVERIES: NAT1 & MAX_DELIVERIES = 10 & ANSWER: FIN(INTEGER) & not(ANSWER = {}) & OUTCOME: FIN(INTEGER) & not(OUTCOME = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Exercise3_7),add)==(?);
  List_ANY_Var(Machine(Exercise3_7),number)==(?);
  List_ANY_Var(Machine(Exercise3_7),getsPapers)==(?);
  List_ANY_Var(Machine(Exercise3_7),cancelPapers)==(?);
  List_ANY_Var(Machine(Exercise3_7),firsthouse)==(?);
  List_ANY_Var(Machine(Exercise3_7),lasthouse)==(?);
  List_ANY_Var(Machine(Exercise3_7),haspaper)==(?);
  List_ANY_Var(Machine(Exercise3_7),stopdelivery)==(?);
  List_ANY_Var(Machine(Exercise3_7),deliverMagazine)==(?);
  List_ANY_Var(Machine(Exercise3_7),stopMagazine)==(?);
  List_ANY_Var(Machine(Exercise3_7),deliveries)==(?);
  List_ANY_Var(Machine(Exercise3_7),stopalldeliverys)==(?);
  List_ANY_Var(Machine(Exercise3_7),howmanymore)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Exercise3_7)) == (MAX_DELIVERIES,ANSWER,OUTCOME,STATUS,yes,no,NoMoreDeliveries,NotDeliveredTo,NotDeliveringPaperAndMagazine,PaperAndMagazine,OnlyPaper,OnlyMagazine,NoDeliveries,NotBothPaperAndMagazine | ? | magazineHouses,houseset | ? | add,number,getsPapers,cancelPapers,firsthouse,lasthouse,haspaper,stopdelivery,deliverMagazine,stopMagazine,deliveries,stopalldeliverys,howmanymore | ? | ? | ? | Exercise3_7);
  List_Of_HiddenCst_Ids(Machine(Exercise3_7)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Exercise3_7)) == (MAX_DELIVERIES);
  List_Of_VisibleVar_Ids(Machine(Exercise3_7)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Exercise3_7)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Exercise3_7)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1)));Type(OUTCOME) == Cst(SetOf(etype(OUTCOME,0,2)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,4))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Exercise3_7)) == (Type(yes) == Cst(etype(ANSWER,0,1));Type(no) == Cst(etype(ANSWER,0,1));Type(NoMoreDeliveries) == Cst(etype(OUTCOME,0,2));Type(NotDeliveredTo) == Cst(etype(OUTCOME,0,2));Type(NotDeliveringPaperAndMagazine) == Cst(etype(OUTCOME,0,2));Type(PaperAndMagazine) == Cst(etype(STATUS,0,4));Type(OnlyPaper) == Cst(etype(STATUS,0,4));Type(OnlyMagazine) == Cst(etype(STATUS,0,4));Type(NoDeliveries) == Cst(etype(STATUS,0,4));Type(NotBothPaperAndMagazine) == Cst(etype(STATUS,0,4));Type(MAX_DELIVERIES) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Exercise3_7)) == (Type(magazineHouses) == Mvl(SetOf(btype(INTEGER,?,?)));Type(houseset) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Exercise3_7)) == (Type(howmanymore) == Cst(btype(INTEGER,?,?),No_type);Type(stopalldeliverys) == Cst(etype(OUTCOME,?,?),btype(INTEGER,?,?));Type(deliveries) == Cst(etype(STATUS,?,?),btype(INTEGER,?,?));Type(stopMagazine) == Cst(No_type,btype(INTEGER,?,?));Type(deliverMagazine) == Cst(No_type,btype(INTEGER,?,?));Type(stopdelivery) == Cst(etype(OUTCOME,?,?),btype(INTEGER,?,?));Type(haspaper) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(lasthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(firsthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(cancelPapers) == Cst(No_type,btype(INTEGER,?,?));Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type);Type(add) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Exercise3_7)) == (Type(howmanymore) == Cst(btype(INTEGER,?,?),No_type);Type(deliveries) == Cst(etype(STATUS,?,?),btype(INTEGER,?,?));Type(haspaper) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(lasthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(firsthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type))
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
