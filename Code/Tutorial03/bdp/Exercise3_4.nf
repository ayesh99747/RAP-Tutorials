Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Exercise3_4))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Exercise3_4))==(Machine(Exercise3_4));
  Level(Machine(Exercise3_4))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Exercise3_4)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Exercise3_4))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Exercise3_4))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Exercise3_4))==(?);
  List_Includes(Machine(Exercise3_4))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Exercise3_4))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Exercise3_4))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Exercise3_4))==(?);
  Context_List_Variables(Machine(Exercise3_4))==(?);
  Abstract_List_Variables(Machine(Exercise3_4))==(?);
  Local_List_Variables(Machine(Exercise3_4))==(magazineHouses,houseset);
  List_Variables(Machine(Exercise3_4))==(magazineHouses,houseset);
  External_List_Variables(Machine(Exercise3_4))==(magazineHouses,houseset)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Exercise3_4))==(?);
  Abstract_List_VisibleVariables(Machine(Exercise3_4))==(?);
  External_List_VisibleVariables(Machine(Exercise3_4))==(?);
  Expanded_List_VisibleVariables(Machine(Exercise3_4))==(?);
  List_VisibleVariables(Machine(Exercise3_4))==(?);
  Internal_List_VisibleVariables(Machine(Exercise3_4))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Exercise3_4))==(btrue);
  Gluing_List_Invariant(Machine(Exercise3_4))==(btrue);
  Expanded_List_Invariant(Machine(Exercise3_4))==(btrue);
  Abstract_List_Invariant(Machine(Exercise3_4))==(btrue);
  Context_List_Invariant(Machine(Exercise3_4))==(btrue);
  List_Invariant(Machine(Exercise3_4))==(houseset <: NAT1 & magazineHouses <: NAT1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Exercise3_4))==(btrue);
  Abstract_List_Assertions(Machine(Exercise3_4))==(btrue);
  Context_List_Assertions(Machine(Exercise3_4))==(btrue);
  List_Assertions(Machine(Exercise3_4))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Exercise3_4))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Exercise3_4))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Exercise3_4))==(houseset,magazineHouses:={},{});
  Context_List_Initialisation(Machine(Exercise3_4))==(skip);
  List_Initialisation(Machine(Exercise3_4))==(houseset:={} || magazineHouses:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Exercise3_4))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Exercise3_4))==(btrue);
  List_Constraints(Machine(Exercise3_4))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Exercise3_4))==(add,number,getsPapers,cancelPapers,firsthouse,lasthouse,haspaper,stopdelivery,deliverMagazine,stopMagazine,deliveries,stopalldeliverys);
  List_Operations(Machine(Exercise3_4))==(add,number,getsPapers,cancelPapers,firsthouse,lasthouse,haspaper,stopdelivery,deliverMagazine,stopMagazine,deliveries,stopalldeliverys)
END
&
THEORY ListInputX IS
  List_Input(Machine(Exercise3_4),add)==(new);
  List_Input(Machine(Exercise3_4),number)==(?);
  List_Input(Machine(Exercise3_4),getsPapers)==(houseNumber);
  List_Input(Machine(Exercise3_4),cancelPapers)==(houseNumber);
  List_Input(Machine(Exercise3_4),firsthouse)==(houseNumber);
  List_Input(Machine(Exercise3_4),lasthouse)==(houseNumber);
  List_Input(Machine(Exercise3_4),haspaper)==(houseNumber);
  List_Input(Machine(Exercise3_4),stopdelivery)==(houseNumber);
  List_Input(Machine(Exercise3_4),deliverMagazine)==(newHouseNumber);
  List_Input(Machine(Exercise3_4),stopMagazine)==(houseNumber);
  List_Input(Machine(Exercise3_4),deliveries)==(houseNumber);
  List_Input(Machine(Exercise3_4),stopalldeliverys)==(houseNumber)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Exercise3_4),add)==(?);
  List_Output(Machine(Exercise3_4),number)==(ans);
  List_Output(Machine(Exercise3_4),getsPapers)==(ans);
  List_Output(Machine(Exercise3_4),cancelPapers)==(?);
  List_Output(Machine(Exercise3_4),firsthouse)==(firstHouseNumber);
  List_Output(Machine(Exercise3_4),lasthouse)==(lastHouseNumber);
  List_Output(Machine(Exercise3_4),haspaper)==(message);
  List_Output(Machine(Exercise3_4),stopdelivery)==(outcome);
  List_Output(Machine(Exercise3_4),deliverMagazine)==(?);
  List_Output(Machine(Exercise3_4),stopMagazine)==(?);
  List_Output(Machine(Exercise3_4),deliveries)==(status);
  List_Output(Machine(Exercise3_4),stopalldeliverys)==(outcome)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Exercise3_4),add)==(add(new));
  List_Header(Machine(Exercise3_4),number)==(ans <-- number);
  List_Header(Machine(Exercise3_4),getsPapers)==(ans <-- getsPapers(houseNumber));
  List_Header(Machine(Exercise3_4),cancelPapers)==(cancelPapers(houseNumber));
  List_Header(Machine(Exercise3_4),firsthouse)==(firstHouseNumber <-- firsthouse(houseNumber));
  List_Header(Machine(Exercise3_4),lasthouse)==(lastHouseNumber <-- lasthouse(houseNumber));
  List_Header(Machine(Exercise3_4),haspaper)==(message <-- haspaper(houseNumber));
  List_Header(Machine(Exercise3_4),stopdelivery)==(outcome <-- stopdelivery(houseNumber));
  List_Header(Machine(Exercise3_4),deliverMagazine)==(deliverMagazine(newHouseNumber));
  List_Header(Machine(Exercise3_4),stopMagazine)==(stopMagazine(houseNumber));
  List_Header(Machine(Exercise3_4),deliveries)==(status <-- deliveries(houseNumber));
  List_Header(Machine(Exercise3_4),stopalldeliverys)==(outcome <-- stopalldeliverys(houseNumber))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Exercise3_4),add)==(new: NAT1 & new/:houseset);
  List_Precondition(Machine(Exercise3_4),number)==(btrue);
  List_Precondition(Machine(Exercise3_4),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_4),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_4),firsthouse)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_4),lasthouse)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_4),haspaper)==(houseNumber: NAT1);
  List_Precondition(Machine(Exercise3_4),stopdelivery)==(houseNumber: NAT1);
  List_Precondition(Machine(Exercise3_4),deliverMagazine)==(newHouseNumber: NAT1 & newHouseNumber/:magazineHouses);
  List_Precondition(Machine(Exercise3_4),stopMagazine)==(houseNumber: NAT1 & houseNumber: magazineHouses);
  List_Precondition(Machine(Exercise3_4),deliveries)==(status: STATUS & houseNumber: NAT1);
  List_Precondition(Machine(Exercise3_4),stopalldeliverys)==(outcome: OUTCOME & houseNumber: NAT1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Exercise3_4),stopalldeliverys)==(outcome: OUTCOME & houseNumber: NAT1 | houseNumber: houseset & houseNumber: magazineHouses ==> magazineHouses,houseset,outcome:=magazineHouses-{houseNumber},houseset-{houseNumber},NoMoreDeliveries [] not(houseNumber: houseset & houseNumber: magazineHouses) ==> outcome:=NotDeliveringPaperAndMagazine);
  Expanded_List_Substitution(Machine(Exercise3_4),deliveries)==(status: STATUS & houseNumber: NAT1 | houseNumber: houseset & houseNumber: magazineHouses ==> status:=PaperAndMagazine [] not(houseNumber: houseset & houseNumber: magazineHouses) ==> (houseNumber: houseset ==> status:=OnlyPaper [] not(houseNumber: houseset) ==> (houseNumber: magazineHouses ==> status:=OnlyMagazine [] not(houseNumber: magazineHouses) ==> status:=NoDeliveries)));
  Expanded_List_Substitution(Machine(Exercise3_4),stopMagazine)==(houseNumber: NAT1 & houseNumber: magazineHouses | magazineHouses:=magazineHouses-{houseNumber});
  Expanded_List_Substitution(Machine(Exercise3_4),deliverMagazine)==(newHouseNumber: NAT1 & newHouseNumber/:magazineHouses | magazineHouses:=magazineHouses\/{newHouseNumber});
  Expanded_List_Substitution(Machine(Exercise3_4),stopdelivery)==(houseNumber: NAT1 | houseNumber: houseset ==> houseset,outcome:=houseset-{houseNumber},NoMoreDeliveries [] not(houseNumber: houseset) ==> outcome:=NotDeliveredTo);
  Expanded_List_Substitution(Machine(Exercise3_4),haspaper)==(houseNumber: NAT1 | houseNumber: houseset ==> message:=yes [] not(houseNumber: houseset) ==> message:=no);
  Expanded_List_Substitution(Machine(Exercise3_4),lasthouse)==(houseNumber: NAT1 & houseNumber: houseset | lastHouseNumber:=max(houseset));
  Expanded_List_Substitution(Machine(Exercise3_4),firsthouse)==(houseNumber: NAT1 & houseNumber: houseset | firstHouseNumber:=min(houseset));
  Expanded_List_Substitution(Machine(Exercise3_4),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseset | houseset:=houseset-{houseNumber});
  Expanded_List_Substitution(Machine(Exercise3_4),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset | ans:=1);
  Expanded_List_Substitution(Machine(Exercise3_4),number)==(btrue | ans:=card(houseset));
  Expanded_List_Substitution(Machine(Exercise3_4),add)==(new: NAT1 & new/:houseset | houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise3_4),add)==(houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise3_4),number)==(ans:=card(houseset));
  List_Substitution(Machine(Exercise3_4),getsPapers)==(ans:=1);
  List_Substitution(Machine(Exercise3_4),cancelPapers)==(houseset:=houseset-{houseNumber});
  List_Substitution(Machine(Exercise3_4),firsthouse)==(firstHouseNumber:=min(houseset));
  List_Substitution(Machine(Exercise3_4),lasthouse)==(lastHouseNumber:=max(houseset));
  List_Substitution(Machine(Exercise3_4),haspaper)==(IF houseNumber: houseset THEN message:=yes ELSE message:=no END);
  List_Substitution(Machine(Exercise3_4),stopdelivery)==(IF houseNumber: houseset THEN houseset:=houseset-{houseNumber} || outcome:=NoMoreDeliveries ELSE outcome:=NotDeliveredTo END);
  List_Substitution(Machine(Exercise3_4),deliverMagazine)==(magazineHouses:=magazineHouses\/{newHouseNumber});
  List_Substitution(Machine(Exercise3_4),stopMagazine)==(magazineHouses:=magazineHouses-{houseNumber});
  List_Substitution(Machine(Exercise3_4),deliveries)==(IF houseNumber: houseset & houseNumber: magazineHouses THEN status:=PaperAndMagazine ELSIF houseNumber: houseset THEN status:=OnlyPaper ELSIF houseNumber: magazineHouses THEN status:=OnlyMagazine ELSE status:=NoDeliveries END);
  List_Substitution(Machine(Exercise3_4),stopalldeliverys)==(IF houseNumber: houseset & houseNumber: magazineHouses THEN magazineHouses:=magazineHouses-{houseNumber} || houseset:=houseset-{houseNumber} || outcome:=NoMoreDeliveries ELSE outcome:=NotDeliveringPaperAndMagazine END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Exercise3_4))==(?);
  Inherited_List_Constants(Machine(Exercise3_4))==(?);
  List_Constants(Machine(Exercise3_4))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Exercise3_4),ANSWER)==({yes,no});
  Context_List_Enumerated(Machine(Exercise3_4))==(?);
  Context_List_Defered(Machine(Exercise3_4))==(?);
  Context_List_Sets(Machine(Exercise3_4))==(?);
  List_Valuable_Sets(Machine(Exercise3_4))==(?);
  Inherited_List_Enumerated(Machine(Exercise3_4))==(?);
  Inherited_List_Defered(Machine(Exercise3_4))==(?);
  Inherited_List_Sets(Machine(Exercise3_4))==(?);
  List_Enumerated(Machine(Exercise3_4))==(ANSWER,OUTCOME,STATUS);
  List_Defered(Machine(Exercise3_4))==(?);
  List_Sets(Machine(Exercise3_4))==(ANSWER,OUTCOME,STATUS);
  Set_Definition(Machine(Exercise3_4),OUTCOME)==({NoMoreDeliveries,NotDeliveredTo,NotDeliveringPaperAndMagazine});
  Set_Definition(Machine(Exercise3_4),STATUS)==({PaperAndMagazine,OnlyPaper,OnlyMagazine,NoDeliveries,NotBothPaperAndMagazine})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Exercise3_4))==(?);
  Expanded_List_HiddenConstants(Machine(Exercise3_4))==(?);
  List_HiddenConstants(Machine(Exercise3_4))==(?);
  External_List_HiddenConstants(Machine(Exercise3_4))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Exercise3_4))==(btrue);
  Context_List_Properties(Machine(Exercise3_4))==(btrue);
  Inherited_List_Properties(Machine(Exercise3_4))==(btrue);
  List_Properties(Machine(Exercise3_4))==(ANSWER: FIN(INTEGER) & not(ANSWER = {}) & OUTCOME: FIN(INTEGER) & not(OUTCOME = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Exercise3_4),add)==(?);
  List_ANY_Var(Machine(Exercise3_4),number)==(?);
  List_ANY_Var(Machine(Exercise3_4),getsPapers)==(?);
  List_ANY_Var(Machine(Exercise3_4),cancelPapers)==(?);
  List_ANY_Var(Machine(Exercise3_4),firsthouse)==(?);
  List_ANY_Var(Machine(Exercise3_4),lasthouse)==(?);
  List_ANY_Var(Machine(Exercise3_4),haspaper)==(?);
  List_ANY_Var(Machine(Exercise3_4),stopdelivery)==(?);
  List_ANY_Var(Machine(Exercise3_4),deliverMagazine)==(?);
  List_ANY_Var(Machine(Exercise3_4),stopMagazine)==(?);
  List_ANY_Var(Machine(Exercise3_4),deliveries)==(?);
  List_ANY_Var(Machine(Exercise3_4),stopalldeliverys)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Exercise3_4)) == (ANSWER,OUTCOME,STATUS,yes,no,NoMoreDeliveries,NotDeliveredTo,NotDeliveringPaperAndMagazine,PaperAndMagazine,OnlyPaper,OnlyMagazine,NoDeliveries,NotBothPaperAndMagazine | ? | magazineHouses,houseset | ? | add,number,getsPapers,cancelPapers,firsthouse,lasthouse,haspaper,stopdelivery,deliverMagazine,stopMagazine,deliveries,stopalldeliverys | ? | ? | ? | Exercise3_4);
  List_Of_HiddenCst_Ids(Machine(Exercise3_4)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Exercise3_4)) == (?);
  List_Of_VisibleVar_Ids(Machine(Exercise3_4)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Exercise3_4)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Exercise3_4)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1)));Type(OUTCOME) == Cst(SetOf(etype(OUTCOME,0,2)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,4))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Exercise3_4)) == (Type(yes) == Cst(etype(ANSWER,0,1));Type(no) == Cst(etype(ANSWER,0,1));Type(NoMoreDeliveries) == Cst(etype(OUTCOME,0,2));Type(NotDeliveredTo) == Cst(etype(OUTCOME,0,2));Type(NotDeliveringPaperAndMagazine) == Cst(etype(OUTCOME,0,2));Type(PaperAndMagazine) == Cst(etype(STATUS,0,4));Type(OnlyPaper) == Cst(etype(STATUS,0,4));Type(OnlyMagazine) == Cst(etype(STATUS,0,4));Type(NoDeliveries) == Cst(etype(STATUS,0,4));Type(NotBothPaperAndMagazine) == Cst(etype(STATUS,0,4)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Exercise3_4)) == (Type(magazineHouses) == Mvl(SetOf(btype(INTEGER,?,?)));Type(houseset) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Exercise3_4)) == (Type(stopalldeliverys) == Cst(etype(OUTCOME,?,?),btype(INTEGER,?,?));Type(deliveries) == Cst(etype(STATUS,?,?),btype(INTEGER,?,?));Type(stopMagazine) == Cst(No_type,btype(INTEGER,?,?));Type(deliverMagazine) == Cst(No_type,btype(INTEGER,?,?));Type(stopdelivery) == Cst(etype(OUTCOME,?,?),btype(INTEGER,?,?));Type(haspaper) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(lasthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(firsthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(cancelPapers) == Cst(No_type,btype(INTEGER,?,?));Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type);Type(add) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Exercise3_4)) == (Type(deliveries) == Cst(etype(STATUS,?,?),btype(INTEGER,?,?));Type(haspaper) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(lasthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(firsthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type))
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
