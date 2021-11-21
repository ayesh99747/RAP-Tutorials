Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Logic))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Logic))==(Machine(Logic));
  Level(Machine(Logic))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Logic)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Logic))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Logic))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Logic))==(?);
  List_Includes(Machine(Logic))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Logic))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Logic))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Logic))==(?);
  Context_List_Variables(Machine(Logic))==(?);
  Abstract_List_Variables(Machine(Logic))==(?);
  Local_List_Variables(Machine(Logic))==(?);
  List_Variables(Machine(Logic))==(?);
  External_List_Variables(Machine(Logic))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Logic))==(?);
  Abstract_List_VisibleVariables(Machine(Logic))==(?);
  External_List_VisibleVariables(Machine(Logic))==(?);
  Expanded_List_VisibleVariables(Machine(Logic))==(?);
  List_VisibleVariables(Machine(Logic))==(?);
  Internal_List_VisibleVariables(Machine(Logic))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Logic))==(btrue);
  Gluing_List_Invariant(Machine(Logic))==(btrue);
  Expanded_List_Invariant(Machine(Logic))==(btrue);
  Abstract_List_Invariant(Machine(Logic))==(btrue);
  Context_List_Invariant(Machine(Logic))==(btrue);
  List_Invariant(Machine(Logic))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Logic))==(btrue);
  Abstract_List_Assertions(Machine(Logic))==(btrue);
  Context_List_Assertions(Machine(Logic))==(btrue);
  List_Assertions(Machine(Logic))==(!xx.(xx: AA => xx<=2);!yy.(yy: BB => yy<=3))
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Logic))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Logic))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Logic))==(skip);
  Context_List_Initialisation(Machine(Logic))==(skip);
  List_Initialisation(Machine(Logic))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Logic))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Logic))==(btrue);
  List_Constraints(Machine(Logic))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Logic))==(?);
  List_Operations(Machine(Logic))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Logic))==(AA,BB);
  Inherited_List_Constants(Machine(Logic))==(?);
  List_Constants(Machine(Logic))==(AA,BB)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Logic),ANSWER)==({yes,no});
  Context_List_Enumerated(Machine(Logic))==(?);
  Context_List_Defered(Machine(Logic))==(?);
  Context_List_Sets(Machine(Logic))==(?);
  List_Valuable_Sets(Machine(Logic))==(?);
  Inherited_List_Enumerated(Machine(Logic))==(?);
  Inherited_List_Defered(Machine(Logic))==(?);
  Inherited_List_Sets(Machine(Logic))==(?);
  List_Enumerated(Machine(Logic))==(ANSWER);
  List_Defered(Machine(Logic))==(?);
  List_Sets(Machine(Logic))==(ANSWER)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Logic))==(?);
  Expanded_List_HiddenConstants(Machine(Logic))==(?);
  List_HiddenConstants(Machine(Logic))==(?);
  External_List_HiddenConstants(Machine(Logic))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Logic))==(btrue);
  Context_List_Properties(Machine(Logic))==(btrue);
  Inherited_List_Properties(Machine(Logic))==(btrue);
  List_Properties(Machine(Logic))==(AA <: NAT & AA = 0..2 & BB <: NAT & BB = {0,2,4} & ANSWER: FIN(INTEGER) & not(ANSWER = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Logic)) == (AA,BB,ANSWER,yes,no | ? | ? | ? | ? | ? | ? | ? | Logic);
  List_Of_HiddenCst_Ids(Machine(Logic)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Logic)) == (AA,BB);
  List_Of_VisibleVar_Ids(Machine(Logic)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Logic)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Logic)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Logic)) == (Type(yes) == Cst(etype(ANSWER,0,1));Type(no) == Cst(etype(ANSWER,0,1));Type(AA) == Cst(SetOf(btype(INTEGER,"[AA","]AA")));Type(BB) == Cst(SetOf(btype(INTEGER,"[BB","]BB"))))
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
