Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Club))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Club))==(Machine(Club));
  Level(Machine(Club))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Club)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Club))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Club))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Club))==(?);
  List_Includes(Machine(Club))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Club))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Club))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Club))==(?);
  Context_List_Variables(Machine(Club))==(?);
  Abstract_List_Variables(Machine(Club))==(?);
  Local_List_Variables(Machine(Club))==(waiting,members);
  List_Variables(Machine(Club))==(waiting,members);
  External_List_Variables(Machine(Club))==(waiting,members)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Club))==(?);
  Abstract_List_VisibleVariables(Machine(Club))==(?);
  External_List_VisibleVariables(Machine(Club))==(?);
  Expanded_List_VisibleVariables(Machine(Club))==(?);
  List_VisibleVariables(Machine(Club))==(?);
  Internal_List_VisibleVariables(Machine(Club))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Club))==(btrue);
  Gluing_List_Invariant(Machine(Club))==(btrue);
  Expanded_List_Invariant(Machine(Club))==(btrue);
  Abstract_List_Invariant(Machine(Club))==(btrue);
  Context_List_Invariant(Machine(Club))==(btrue);
  List_Invariant(Machine(Club))==(queuetotal<capacity & members <: NAME & waiting <: NAME & members/\waiting = {} & card(members)<=capacity & card(waiting)<=queuetotal)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Club))==(btrue);
  Abstract_List_Assertions(Machine(Club))==(btrue);
  Context_List_Assertions(Machine(Club))==(btrue);
  List_Assertions(Machine(Club))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Club))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Club))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Club))==(members,waiting:={},{});
  Context_List_Initialisation(Machine(Club))==(skip);
  List_Initialisation(Machine(Club))==(members:={} || waiting:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Club))==(NAME,capacity)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Club))==(btrue);
  List_Constraints(Machine(Club))==(capacity: NAT1 & 5<=capacity & capacity<card(NAME) & NAME: FIN(INTEGER) & not(NAME = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Club))==(join,join_queue,remove,semi_reset,is_member);
  List_Operations(Machine(Club))==(join,join_queue,remove,semi_reset,is_member)
END
&
THEORY ListInputX IS
  List_Input(Machine(Club),join)==(newmember);
  List_Input(Machine(Club),join_queue)==(newmember);
  List_Input(Machine(Club),remove)==(member);
  List_Input(Machine(Club),semi_reset)==(?);
  List_Input(Machine(Club),is_member)==(member)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Club),join)==(?);
  List_Output(Machine(Club),join_queue)==(?);
  List_Output(Machine(Club),remove)==(?);
  List_Output(Machine(Club),semi_reset)==(?);
  List_Output(Machine(Club),is_member)==(ans)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Club),join)==(join(newmember));
  List_Header(Machine(Club),join_queue)==(join_queue(newmember));
  List_Header(Machine(Club),remove)==(remove(member));
  List_Header(Machine(Club),semi_reset)==(semi_reset);
  List_Header(Machine(Club),is_member)==(ans <-- is_member(member))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Club),join)==(newmember: waiting & card(members)<capacity);
  List_Precondition(Machine(Club),join_queue)==(newmember: NAME & newmember/:members & newmember/:waiting & card(waiting)<queuetotal);
  List_Precondition(Machine(Club),remove)==(member: members);
  List_Precondition(Machine(Club),semi_reset)==(btrue);
  List_Precondition(Machine(Club),is_member)==(member: NAME)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Club),is_member)==(member: NAME | member: members ==> ans:=yes [] not(member: members) ==> ans:=no);
  Expanded_List_Substitution(Machine(Club),semi_reset)==(btrue | members,waiting:={},members);
  Expanded_List_Substitution(Machine(Club),remove)==(member: members | members:=members-{member});
  Expanded_List_Substitution(Machine(Club),join_queue)==(newmember: NAME & newmember/:members & newmember/:waiting & card(waiting)<queuetotal | waiting:=waiting\/{newmember});
  Expanded_List_Substitution(Machine(Club),join)==(newmember: waiting & card(members)<capacity | members,waiting:=members\/{newmember},waiting-{newmember});
  List_Substitution(Machine(Club),join)==(members:=members\/{newmember} || waiting:=waiting-{newmember});
  List_Substitution(Machine(Club),join_queue)==(waiting:=waiting\/{newmember});
  List_Substitution(Machine(Club),remove)==(members:=members-{member});
  List_Substitution(Machine(Club),semi_reset)==(members,waiting:={},members);
  List_Substitution(Machine(Club),is_member)==(IF member: members THEN ans:=yes ELSE ans:=no END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Club))==(queuetotal);
  Inherited_List_Constants(Machine(Club))==(?);
  List_Constants(Machine(Club))==(queuetotal)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Club),ANSWER)==({yes,no});
  Context_List_Enumerated(Machine(Club))==(?);
  Context_List_Defered(Machine(Club))==(?);
  Context_List_Sets(Machine(Club))==(?);
  List_Valuable_Sets(Machine(Club))==(?);
  Inherited_List_Enumerated(Machine(Club))==(?);
  Inherited_List_Defered(Machine(Club))==(?);
  Inherited_List_Sets(Machine(Club))==(?);
  List_Enumerated(Machine(Club))==(ANSWER);
  List_Defered(Machine(Club))==(?);
  List_Sets(Machine(Club))==(ANSWER)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Club))==(?);
  Expanded_List_HiddenConstants(Machine(Club))==(?);
  List_HiddenConstants(Machine(Club))==(?);
  External_List_HiddenConstants(Machine(Club))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Club))==(btrue);
  Context_List_Properties(Machine(Club))==(btrue);
  Inherited_List_Properties(Machine(Club))==(btrue);
  List_Properties(Machine(Club))==(queuetotal: NAT1 & queuetotal>2 & ANSWER: FIN(INTEGER) & not(ANSWER = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Club),join)==(?);
  List_ANY_Var(Machine(Club),join_queue)==(?);
  List_ANY_Var(Machine(Club),remove)==(?);
  List_ANY_Var(Machine(Club),semi_reset)==(?);
  List_ANY_Var(Machine(Club),is_member)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Club)) == (queuetotal,ANSWER,yes,no | ? | waiting,members | ? | join,join_queue,remove,semi_reset,is_member | ? | ? | NAME,capacity | Club);
  List_Of_HiddenCst_Ids(Machine(Club)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Club)) == (queuetotal);
  List_Of_VisibleVar_Ids(Machine(Club)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Club)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Club)) == (Type(capacity) == Prm(btype(INTEGER,?,?));Type(NAME) == Prm(SetOf(atype(NAME,?,?))))
END
&
THEORY SetsEnvX IS
  Sets(Machine(Club)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Club)) == (Type(yes) == Cst(etype(ANSWER,0,1));Type(no) == Cst(etype(ANSWER,0,1));Type(queuetotal) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Club)) == (Type(waiting) == Mvl(SetOf(atype(NAME,?,?)));Type(members) == Mvl(SetOf(atype(NAME,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Club)) == (Type(is_member) == Cst(etype(ANSWER,?,?),atype(NAME,?,?));Type(semi_reset) == Cst(No_type,No_type);Type(remove) == Cst(No_type,atype(NAME,?,?));Type(join_queue) == Cst(No_type,atype(NAME,?,?));Type(join) == Cst(No_type,atype(NAME,?,?)));
  Observers(Machine(Club)) == (Type(is_member) == Cst(etype(ANSWER,?,?),atype(NAME,?,?)))
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
