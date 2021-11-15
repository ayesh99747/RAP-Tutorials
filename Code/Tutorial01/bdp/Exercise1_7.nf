Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Exercise1_7))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Exercise1_7))==(Machine(Exercise1_7));
  Level(Machine(Exercise1_7))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Exercise1_7)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Exercise1_7))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Exercise1_7))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Exercise1_7))==(?);
  List_Includes(Machine(Exercise1_7))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Exercise1_7))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Exercise1_7))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Exercise1_7))==(?);
  Context_List_Variables(Machine(Exercise1_7))==(?);
  Abstract_List_Variables(Machine(Exercise1_7))==(?);
  Local_List_Variables(Machine(Exercise1_7))==(houseset);
  List_Variables(Machine(Exercise1_7))==(houseset);
  External_List_Variables(Machine(Exercise1_7))==(houseset)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Exercise1_7))==(?);
  Abstract_List_VisibleVariables(Machine(Exercise1_7))==(?);
  External_List_VisibleVariables(Machine(Exercise1_7))==(?);
  Expanded_List_VisibleVariables(Machine(Exercise1_7))==(?);
  List_VisibleVariables(Machine(Exercise1_7))==(?);
  Internal_List_VisibleVariables(Machine(Exercise1_7))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Exercise1_7))==(btrue);
  Gluing_List_Invariant(Machine(Exercise1_7))==(btrue);
  Expanded_List_Invariant(Machine(Exercise1_7))==(btrue);
  Abstract_List_Invariant(Machine(Exercise1_7))==(btrue);
  Context_List_Invariant(Machine(Exercise1_7))==(btrue);
  List_Invariant(Machine(Exercise1_7))==(houseset <: NAT1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Exercise1_7))==(btrue);
  Abstract_List_Assertions(Machine(Exercise1_7))==(btrue);
  Context_List_Assertions(Machine(Exercise1_7))==(btrue);
  List_Assertions(Machine(Exercise1_7))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Exercise1_7))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Exercise1_7))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Exercise1_7))==(houseset:={});
  Context_List_Initialisation(Machine(Exercise1_7))==(skip);
  List_Initialisation(Machine(Exercise1_7))==(houseset:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Exercise1_7))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Exercise1_7))==(btrue);
  List_Constraints(Machine(Exercise1_7))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Exercise1_7))==(add,number,getsPapers,cancelPapers);
  List_Operations(Machine(Exercise1_7))==(add,number,getsPapers,cancelPapers)
END
&
THEORY ListInputX IS
  List_Input(Machine(Exercise1_7),add)==(new);
  List_Input(Machine(Exercise1_7),number)==(?);
  List_Input(Machine(Exercise1_7),getsPapers)==(houseNumber);
  List_Input(Machine(Exercise1_7),cancelPapers)==(houseNumber)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Exercise1_7),add)==(?);
  List_Output(Machine(Exercise1_7),number)==(ans);
  List_Output(Machine(Exercise1_7),getsPapers)==(ans);
  List_Output(Machine(Exercise1_7),cancelPapers)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Exercise1_7),add)==(add(new));
  List_Header(Machine(Exercise1_7),number)==(ans <-- number);
  List_Header(Machine(Exercise1_7),getsPapers)==(ans <-- getsPapers(houseNumber));
  List_Header(Machine(Exercise1_7),cancelPapers)==(cancelPapers(houseNumber))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Exercise1_7),add)==(new: NAT1 & new/:houseset);
  List_Precondition(Machine(Exercise1_7),number)==(btrue);
  List_Precondition(Machine(Exercise1_7),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise1_7),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseset)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Exercise1_7),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseset | houseset:=houseset-{houseNumber});
  Expanded_List_Substitution(Machine(Exercise1_7),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset | ans:=1);
  Expanded_List_Substitution(Machine(Exercise1_7),number)==(btrue | ans:=card(houseset));
  Expanded_List_Substitution(Machine(Exercise1_7),add)==(new: NAT1 & new/:houseset | houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise1_7),add)==(houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise1_7),number)==(ans:=card(houseset));
  List_Substitution(Machine(Exercise1_7),getsPapers)==(ans:=1);
  List_Substitution(Machine(Exercise1_7),cancelPapers)==(houseset:=houseset-{houseNumber})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Exercise1_7))==(?);
  Inherited_List_Constants(Machine(Exercise1_7))==(?);
  List_Constants(Machine(Exercise1_7))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Exercise1_7))==(?);
  Context_List_Defered(Machine(Exercise1_7))==(?);
  Context_List_Sets(Machine(Exercise1_7))==(?);
  List_Valuable_Sets(Machine(Exercise1_7))==(?);
  Inherited_List_Enumerated(Machine(Exercise1_7))==(?);
  Inherited_List_Defered(Machine(Exercise1_7))==(?);
  Inherited_List_Sets(Machine(Exercise1_7))==(?);
  List_Enumerated(Machine(Exercise1_7))==(?);
  List_Defered(Machine(Exercise1_7))==(?);
  List_Sets(Machine(Exercise1_7))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Exercise1_7))==(?);
  Expanded_List_HiddenConstants(Machine(Exercise1_7))==(?);
  List_HiddenConstants(Machine(Exercise1_7))==(?);
  External_List_HiddenConstants(Machine(Exercise1_7))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Exercise1_7))==(btrue);
  Context_List_Properties(Machine(Exercise1_7))==(btrue);
  Inherited_List_Properties(Machine(Exercise1_7))==(btrue);
  List_Properties(Machine(Exercise1_7))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Exercise1_7),add)==(?);
  List_ANY_Var(Machine(Exercise1_7),number)==(?);
  List_ANY_Var(Machine(Exercise1_7),getsPapers)==(?);
  List_ANY_Var(Machine(Exercise1_7),cancelPapers)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Exercise1_7)) == (? | ? | houseset | ? | add,number,getsPapers,cancelPapers | ? | ? | ? | Exercise1_7);
  List_Of_HiddenCst_Ids(Machine(Exercise1_7)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Exercise1_7)) == (?);
  List_Of_VisibleVar_Ids(Machine(Exercise1_7)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Exercise1_7)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Exercise1_7)) == (Type(houseset) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Exercise1_7)) == (Type(cancelPapers) == Cst(No_type,btype(INTEGER,?,?));Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type);Type(add) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Exercise1_7)) == (Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type))
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
