Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Exercise1_6))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Exercise1_6))==(Machine(Exercise1_6));
  Level(Machine(Exercise1_6))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Exercise1_6)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Exercise1_6))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Exercise1_6))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Exercise1_6))==(?);
  List_Includes(Machine(Exercise1_6))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Exercise1_6))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Exercise1_6))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Exercise1_6))==(?);
  Context_List_Variables(Machine(Exercise1_6))==(?);
  Abstract_List_Variables(Machine(Exercise1_6))==(?);
  Local_List_Variables(Machine(Exercise1_6))==(houseset);
  List_Variables(Machine(Exercise1_6))==(houseset);
  External_List_Variables(Machine(Exercise1_6))==(houseset)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Exercise1_6))==(?);
  Abstract_List_VisibleVariables(Machine(Exercise1_6))==(?);
  External_List_VisibleVariables(Machine(Exercise1_6))==(?);
  Expanded_List_VisibleVariables(Machine(Exercise1_6))==(?);
  List_VisibleVariables(Machine(Exercise1_6))==(?);
  Internal_List_VisibleVariables(Machine(Exercise1_6))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Exercise1_6))==(btrue);
  Gluing_List_Invariant(Machine(Exercise1_6))==(btrue);
  Expanded_List_Invariant(Machine(Exercise1_6))==(btrue);
  Abstract_List_Invariant(Machine(Exercise1_6))==(btrue);
  Context_List_Invariant(Machine(Exercise1_6))==(btrue);
  List_Invariant(Machine(Exercise1_6))==(houseset <: NAT1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Exercise1_6))==(btrue);
  Abstract_List_Assertions(Machine(Exercise1_6))==(btrue);
  Context_List_Assertions(Machine(Exercise1_6))==(btrue);
  List_Assertions(Machine(Exercise1_6))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Exercise1_6))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Exercise1_6))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Exercise1_6))==(houseset:={});
  Context_List_Initialisation(Machine(Exercise1_6))==(skip);
  List_Initialisation(Machine(Exercise1_6))==(houseset:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Exercise1_6))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Exercise1_6))==(btrue);
  List_Constraints(Machine(Exercise1_6))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Exercise1_6))==(add,number,getsPapers);
  List_Operations(Machine(Exercise1_6))==(add,number,getsPapers)
END
&
THEORY ListInputX IS
  List_Input(Machine(Exercise1_6),add)==(new);
  List_Input(Machine(Exercise1_6),number)==(?);
  List_Input(Machine(Exercise1_6),getsPapers)==(houseNumber)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Exercise1_6),add)==(?);
  List_Output(Machine(Exercise1_6),number)==(ans);
  List_Output(Machine(Exercise1_6),getsPapers)==(ans)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Exercise1_6),add)==(add(new));
  List_Header(Machine(Exercise1_6),number)==(ans <-- number);
  List_Header(Machine(Exercise1_6),getsPapers)==(ans <-- getsPapers(houseNumber))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Exercise1_6),add)==(new: NAT1 & new/:houseset);
  List_Precondition(Machine(Exercise1_6),number)==(btrue);
  List_Precondition(Machine(Exercise1_6),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Exercise1_6),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset | ans:=1);
  Expanded_List_Substitution(Machine(Exercise1_6),number)==(btrue | ans:=card(houseset));
  Expanded_List_Substitution(Machine(Exercise1_6),add)==(new: NAT1 & new/:houseset | houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise1_6),add)==(houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise1_6),number)==(ans:=card(houseset));
  List_Substitution(Machine(Exercise1_6),getsPapers)==(ans:=1)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Exercise1_6))==(?);
  Inherited_List_Constants(Machine(Exercise1_6))==(?);
  List_Constants(Machine(Exercise1_6))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Exercise1_6))==(?);
  Context_List_Defered(Machine(Exercise1_6))==(?);
  Context_List_Sets(Machine(Exercise1_6))==(?);
  List_Valuable_Sets(Machine(Exercise1_6))==(?);
  Inherited_List_Enumerated(Machine(Exercise1_6))==(?);
  Inherited_List_Defered(Machine(Exercise1_6))==(?);
  Inherited_List_Sets(Machine(Exercise1_6))==(?);
  List_Enumerated(Machine(Exercise1_6))==(?);
  List_Defered(Machine(Exercise1_6))==(?);
  List_Sets(Machine(Exercise1_6))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Exercise1_6))==(?);
  Expanded_List_HiddenConstants(Machine(Exercise1_6))==(?);
  List_HiddenConstants(Machine(Exercise1_6))==(?);
  External_List_HiddenConstants(Machine(Exercise1_6))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Exercise1_6))==(btrue);
  Context_List_Properties(Machine(Exercise1_6))==(btrue);
  Inherited_List_Properties(Machine(Exercise1_6))==(btrue);
  List_Properties(Machine(Exercise1_6))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Exercise1_6),add)==(?);
  List_ANY_Var(Machine(Exercise1_6),number)==(?);
  List_ANY_Var(Machine(Exercise1_6),getsPapers)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Exercise1_6)) == (? | ? | houseset | ? | add,number,getsPapers | ? | ? | ? | Exercise1_6);
  List_Of_HiddenCst_Ids(Machine(Exercise1_6)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Exercise1_6)) == (?);
  List_Of_VisibleVar_Ids(Machine(Exercise1_6)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Exercise1_6)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Exercise1_6)) == (Type(houseset) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Exercise1_6)) == (Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type);Type(add) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Exercise1_6)) == (Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type))
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
