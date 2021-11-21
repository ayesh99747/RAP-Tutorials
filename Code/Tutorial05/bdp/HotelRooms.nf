Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(HotelRooms))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(HotelRooms))==(Machine(HotelRooms));
  Level(Machine(HotelRooms))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(HotelRooms)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(HotelRooms))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(HotelRooms))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(HotelRooms))==(?);
  List_Includes(Machine(HotelRooms))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(HotelRooms))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(HotelRooms))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(HotelRooms))==(?);
  Context_List_Variables(Machine(HotelRooms))==(?);
  Abstract_List_Variables(Machine(HotelRooms))==(?);
  Local_List_Variables(Machine(HotelRooms))==(guests);
  List_Variables(Machine(HotelRooms))==(guests);
  External_List_Variables(Machine(HotelRooms))==(guests)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(HotelRooms))==(?);
  Abstract_List_VisibleVariables(Machine(HotelRooms))==(?);
  External_List_VisibleVariables(Machine(HotelRooms))==(?);
  Expanded_List_VisibleVariables(Machine(HotelRooms))==(?);
  List_VisibleVariables(Machine(HotelRooms))==(?);
  Internal_List_VisibleVariables(Machine(HotelRooms))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(HotelRooms))==(btrue);
  Gluing_List_Invariant(Machine(HotelRooms))==(btrue);
  Expanded_List_Invariant(Machine(HotelRooms))==(btrue);
  Abstract_List_Invariant(Machine(HotelRooms))==(btrue);
  Context_List_Invariant(Machine(HotelRooms))==(btrue);
  List_Invariant(Machine(HotelRooms))==(guests: ROOM <-> NAME)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(HotelRooms))==(btrue);
  Abstract_List_Assertions(Machine(HotelRooms))==(btrue);
  Context_List_Assertions(Machine(HotelRooms))==(btrue);
  List_Assertions(Machine(HotelRooms))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(HotelRooms))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(HotelRooms))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(HotelRooms))==(guests:=ROOM*{empty});
  Context_List_Initialisation(Machine(HotelRooms))==(skip);
  List_Initialisation(Machine(HotelRooms))==(guests:=ROOM*{empty})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(HotelRooms))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(HotelRooms))==(btrue);
  List_Constraints(Machine(HotelRooms))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(HotelRooms))==(guestsCheckIn,guestsCheckOut,roomOccupants,hasGuestCheckedIn,guestsSwapRoom);
  List_Operations(Machine(HotelRooms))==(guestsCheckIn,guestsCheckOut,roomOccupants,hasGuestCheckedIn,guestsSwapRoom)
END
&
THEORY ListInputX IS
  List_Input(Machine(HotelRooms),guestsCheckIn)==(room,gnames);
  List_Input(Machine(HotelRooms),guestsCheckOut)==(room);
  List_Input(Machine(HotelRooms),roomOccupants)==(room);
  List_Input(Machine(HotelRooms),hasGuestCheckedIn)==(gname);
  List_Input(Machine(HotelRooms),guestsSwapRoom)==(roomi,roomj)
END
&
THEORY ListOutputX IS
  List_Output(Machine(HotelRooms),guestsCheckIn)==(?);
  List_Output(Machine(HotelRooms),guestsCheckOut)==(?);
  List_Output(Machine(HotelRooms),roomOccupants)==(rmOcc);
  List_Output(Machine(HotelRooms),hasGuestCheckedIn)==(ans);
  List_Output(Machine(HotelRooms),guestsSwapRoom)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(HotelRooms),guestsCheckIn)==(guestsCheckIn(room,gnames));
  List_Header(Machine(HotelRooms),guestsCheckOut)==(guestsCheckOut(room));
  List_Header(Machine(HotelRooms),roomOccupants)==(rmOcc <-- roomOccupants(room));
  List_Header(Machine(HotelRooms),hasGuestCheckedIn)==(ans <-- hasGuestCheckedIn(gname));
  List_Header(Machine(HotelRooms),guestsSwapRoom)==(guestsSwapRoom(roomi,roomj))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(HotelRooms),guestsCheckIn)==(room: ROOM & gnames <: NAME & gnames/={} & empty/:gnames);
  List_Precondition(Machine(HotelRooms),guestsCheckOut)==(room: ROOM);
  List_Precondition(Machine(HotelRooms),roomOccupants)==(room: ROOM);
  List_Precondition(Machine(HotelRooms),hasGuestCheckedIn)==(gname: NAME & gname/=empty);
  List_Precondition(Machine(HotelRooms),guestsSwapRoom)==(roomi: ROOM & roomj: ROOM)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(HotelRooms),guestsSwapRoom)==(roomi: ROOM & roomj: ROOM | guests:=guests<+({roomi}*guests[{roomj}]\/{roomj}*guests[{roomi}]));
  Expanded_List_Substitution(Machine(HotelRooms),hasGuestCheckedIn)==(gname: NAME & gname/=empty | gname: ran(guests) ==> ans:=Yes [] not(gname: ran(guests)) ==> ans:=No);
  Expanded_List_Substitution(Machine(HotelRooms),roomOccupants)==(room: ROOM | rmOcc:=ran({room}<|guests));
  Expanded_List_Substitution(Machine(HotelRooms),guestsCheckOut)==(room: ROOM | guests:=guests<+{room|->empty});
  Expanded_List_Substitution(Machine(HotelRooms),guestsCheckIn)==(room: ROOM & gnames <: NAME & gnames/={} & empty/:gnames | guests:=guests<+{room}*gnames);
  List_Substitution(Machine(HotelRooms),guestsCheckIn)==(guests:=guests<+{room}*gnames);
  List_Substitution(Machine(HotelRooms),guestsCheckOut)==(guests:=guests<+{room|->empty});
  List_Substitution(Machine(HotelRooms),roomOccupants)==(rmOcc:=ran({room}<|guests));
  List_Substitution(Machine(HotelRooms),hasGuestCheckedIn)==(IF gname: ran(guests) THEN ans:=Yes ELSE ans:=No END);
  List_Substitution(Machine(HotelRooms),guestsSwapRoom)==(guests:=guests<+({roomi}*guests[{roomj}]\/{roomj}*guests[{roomi}]))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(HotelRooms))==(?);
  Inherited_List_Constants(Machine(HotelRooms))==(?);
  List_Constants(Machine(HotelRooms))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(HotelRooms),ROOM)==({rm1,rm2,rm3,rm4,rm5});
  Context_List_Enumerated(Machine(HotelRooms))==(?);
  Context_List_Defered(Machine(HotelRooms))==(?);
  Context_List_Sets(Machine(HotelRooms))==(?);
  List_Valuable_Sets(Machine(HotelRooms))==(?);
  Inherited_List_Enumerated(Machine(HotelRooms))==(?);
  Inherited_List_Defered(Machine(HotelRooms))==(?);
  Inherited_List_Sets(Machine(HotelRooms))==(?);
  List_Enumerated(Machine(HotelRooms))==(ROOM,NAME,ANSWER);
  List_Defered(Machine(HotelRooms))==(?);
  List_Sets(Machine(HotelRooms))==(ROOM,NAME,ANSWER);
  Set_Definition(Machine(HotelRooms),NAME)==({Ian,Sue,Tom,Jim,Bill,empty});
  Set_Definition(Machine(HotelRooms),ANSWER)==({Yes,No})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(HotelRooms))==(?);
  Expanded_List_HiddenConstants(Machine(HotelRooms))==(?);
  List_HiddenConstants(Machine(HotelRooms))==(?);
  External_List_HiddenConstants(Machine(HotelRooms))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(HotelRooms))==(btrue);
  Context_List_Properties(Machine(HotelRooms))==(btrue);
  Inherited_List_Properties(Machine(HotelRooms))==(btrue);
  List_Properties(Machine(HotelRooms))==(ROOM: FIN(INTEGER) & not(ROOM = {}) & NAME: FIN(INTEGER) & not(NAME = {}) & ANSWER: FIN(INTEGER) & not(ANSWER = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(HotelRooms),guestsCheckIn)==(?);
  List_ANY_Var(Machine(HotelRooms),guestsCheckOut)==(?);
  List_ANY_Var(Machine(HotelRooms),roomOccupants)==(?);
  List_ANY_Var(Machine(HotelRooms),hasGuestCheckedIn)==(?);
  List_ANY_Var(Machine(HotelRooms),guestsSwapRoom)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(HotelRooms)) == (ROOM,NAME,ANSWER,rm1,rm2,rm3,rm4,rm5,Ian,Sue,Tom,Jim,Bill,empty,Yes,No | ? | guests | ? | guestsCheckIn,guestsCheckOut,roomOccupants,hasGuestCheckedIn,guestsSwapRoom | ? | ? | ? | HotelRooms);
  List_Of_HiddenCst_Ids(Machine(HotelRooms)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(HotelRooms)) == (?);
  List_Of_VisibleVar_Ids(Machine(HotelRooms)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(HotelRooms)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(HotelRooms)) == (Type(ROOM) == Cst(SetOf(etype(ROOM,0,4)));Type(NAME) == Cst(SetOf(etype(NAME,0,5)));Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(HotelRooms)) == (Type(rm1) == Cst(etype(ROOM,0,4));Type(rm2) == Cst(etype(ROOM,0,4));Type(rm3) == Cst(etype(ROOM,0,4));Type(rm4) == Cst(etype(ROOM,0,4));Type(rm5) == Cst(etype(ROOM,0,4));Type(Ian) == Cst(etype(NAME,0,5));Type(Sue) == Cst(etype(NAME,0,5));Type(Tom) == Cst(etype(NAME,0,5));Type(Jim) == Cst(etype(NAME,0,5));Type(Bill) == Cst(etype(NAME,0,5));Type(empty) == Cst(etype(NAME,0,5));Type(Yes) == Cst(etype(ANSWER,0,1));Type(No) == Cst(etype(ANSWER,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(HotelRooms)) == (Type(guests) == Mvl(SetOf(etype(ROOM,?,?)*etype(NAME,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(HotelRooms)) == (Type(guestsSwapRoom) == Cst(No_type,etype(ROOM,?,?)*etype(ROOM,?,?));Type(hasGuestCheckedIn) == Cst(etype(ANSWER,?,?),etype(NAME,?,?));Type(roomOccupants) == Cst(SetOf(etype(NAME,?,?)),etype(ROOM,?,?));Type(guestsCheckOut) == Cst(No_type,etype(ROOM,?,?));Type(guestsCheckIn) == Cst(No_type,etype(ROOM,?,?)*SetOf(etype(NAME,?,?))));
  Observers(Machine(HotelRooms)) == (Type(hasGuestCheckedIn) == Cst(etype(ANSWER,?,?),etype(NAME,?,?));Type(roomOccupants) == Cst(SetOf(etype(NAME,?,?)),etype(ROOM,?,?)))
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
