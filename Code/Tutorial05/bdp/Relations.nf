Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Relations))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Relations))==(Machine(Relations));
  Level(Machine(Relations))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Relations)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Relations))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Relations))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Relations))==(?);
  List_Includes(Machine(Relations))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Relations))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Relations))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Relations))==(?);
  Context_List_Variables(Machine(Relations))==(?);
  Abstract_List_Variables(Machine(Relations))==(?);
  Local_List_Variables(Machine(Relations))==(AAxXX,favourite,speaks);
  List_Variables(Machine(Relations))==(AAxXX,favourite,speaks);
  External_List_Variables(Machine(Relations))==(AAxXX,favourite,speaks)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Relations))==(?);
  Abstract_List_VisibleVariables(Machine(Relations))==(?);
  External_List_VisibleVariables(Machine(Relations))==(?);
  Expanded_List_VisibleVariables(Machine(Relations))==(?);
  List_VisibleVariables(Machine(Relations))==(?);
  Internal_List_VisibleVariables(Machine(Relations))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Relations))==(btrue);
  Gluing_List_Invariant(Machine(Relations))==(btrue);
  Expanded_List_Invariant(Machine(Relations))==(btrue);
  Abstract_List_Invariant(Machine(Relations))==(btrue);
  Context_List_Invariant(Machine(Relations))==(btrue);
  List_Invariant(Machine(Relations))==(speaks: COUNTRY <-> LANGUAGE & favourite: PEOPLE <-> COLOUR & AAxXX <: AA*XX)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Relations))==(btrue);
  Abstract_List_Assertions(Machine(Relations))==(btrue);
  Context_List_Assertions(Machine(Relations))==(btrue);
  List_Assertions(Machine(Relations))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Relations))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Relations))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Relations))==(speaks,favourite,AAxXX:={Wales|->Welsh,Wales|->English,Scotland|->English,NIreland|->English,England|->English,Canada|->English,Canada|->French,France|->French,Italy|->Italian,USA|->English,USA|->Spanish,Spain|->Spanish,Germany|->German},{Paul|->purple,Paul|->red,Jim|->blue,Sue|->pink,Ian|->blue},AA*XX);
  Context_List_Initialisation(Machine(Relations))==(skip);
  List_Initialisation(Machine(Relations))==(speaks:={Wales|->Welsh,Wales|->English,Scotland|->English,NIreland|->English,England|->English,Canada|->English,Canada|->French,France|->French,Italy|->Italian,USA|->English,USA|->Spanish,Spain|->Spanish,Germany|->German} || favourite:={Paul|->purple,Paul|->red,Jim|->blue,Sue|->pink,Ian|->blue} || AAxXX:=AA*XX)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Relations))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Relations))==(btrue);
  List_Constraints(Machine(Relations))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Relations))==(?);
  List_Operations(Machine(Relations))==(?)
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
  List_Valuable_Constants(Machine(Relations))==(AA,XX,YY,ZZ,R1,R2,R3,alphabet,RR,QQ,UK,Rln,Qnc,Rstar);
  Inherited_List_Constants(Machine(Relations))==(?);
  List_Constants(Machine(Relations))==(AA,XX,YY,ZZ,R1,R2,R3,alphabet,RR,QQ,UK,Rln,Qnc,Rstar)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Relations),PEOPLE)==({Paul,Jim,Sue,Ian});
  Context_List_Enumerated(Machine(Relations))==(?);
  Context_List_Defered(Machine(Relations))==(?);
  Context_List_Sets(Machine(Relations))==(?);
  List_Valuable_Sets(Machine(Relations))==(?);
  Inherited_List_Enumerated(Machine(Relations))==(?);
  Inherited_List_Defered(Machine(Relations))==(?);
  Inherited_List_Sets(Machine(Relations))==(?);
  List_Enumerated(Machine(Relations))==(PEOPLE,COLOUR,LETTER,COUNTRY,LANGUAGE);
  List_Defered(Machine(Relations))==(?);
  List_Sets(Machine(Relations))==(PEOPLE,COLOUR,LETTER,COUNTRY,LANGUAGE);
  Set_Definition(Machine(Relations),COLOUR)==({purple,red,blue,pink,orange,green,yellow});
  Set_Definition(Machine(Relations),LETTER)==({aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz});
  Set_Definition(Machine(Relations),COUNTRY)==({Wales,Canada,England,France,Scotland,NIreland,Germany,Italy,Spain,USA});
  Set_Definition(Machine(Relations),LANGUAGE)==({Welsh,French,English,Spanish,German,Italian})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Relations))==(?);
  Expanded_List_HiddenConstants(Machine(Relations))==(?);
  List_HiddenConstants(Machine(Relations))==(?);
  External_List_HiddenConstants(Machine(Relations))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Relations))==(btrue);
  Context_List_Properties(Machine(Relations))==(btrue);
  Inherited_List_Properties(Machine(Relations))==(btrue);
  List_Properties(Machine(Relations))==(AA <: LETTER & AA = {aa,bb} & XX <: NAT & XX = {1,2,3} & YY <: NAT & YY = {11,22} & ZZ <: NAT & ZZ = {888,999} & R1: LETTER <-> NAT & R1 = {aa|->1,bb|->1,bb|->2,cc|->3,dd|->2,ee|->4,ff|->4,gg|->5,hh|->6} & R2: LETTER <-> NAT & R2 = {aa|->1,bb|->1,bb|->2,cc|->3,dd|->2} & R3: LETTER <-> NAT & R3 = {ee|->4,ff|->4,gg|->5,hh|->6} & alphabet: LETTER <-> LETTER & alphabet = {aa|->bb,bb|->cc,cc|->dd,dd|->ee,ee|->ff,ff|->gg,gg|->hh,hh|->ii,aa|->xx,bb|->yy,cc|->zz} & RR: NAT <-> NAT & RR = {0|->0,1|->2,2|->3,3|->3,3|->4,3|->5,4|->5} & QQ: NAT <-> NAT & QQ = {0|->1,3|->3,4|->5,4|->6,5|->5,6|->7} & UK <: COUNTRY & UK = {Wales,Scotland,NIreland,England} & Rln: LETTER <-> NAT & Rln = {aa|->1,aa|->2,bb|->2,cc|->3,dd|->4,ee|->5} & Qnc: NAT <-> COLOUR & Qnc = {1|->red,2|->red,2|->blue,3|->green,5|->purple} & Rstar: 1..5 <-> 1..5 & Rstar = {1|->2,2|->3,3|->3,3|->4,3|->5,4|->5} & PEOPLE: FIN(INTEGER) & not(PEOPLE = {}) & COLOUR: FIN(INTEGER) & not(COLOUR = {}) & LETTER: FIN(INTEGER) & not(LETTER = {}) & COUNTRY: FIN(INTEGER) & not(COUNTRY = {}) & LANGUAGE: FIN(INTEGER) & not(LANGUAGE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Relations)) == (AA,XX,YY,ZZ,R1,R2,R3,alphabet,RR,QQ,UK,Rln,Qnc,Rstar,PEOPLE,COLOUR,LETTER,COUNTRY,LANGUAGE,Paul,Jim,Sue,Ian,purple,red,blue,pink,orange,green,yellow,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,Wales,Canada,England,France,Scotland,NIreland,Germany,Italy,Spain,USA,Welsh,French,English,Spanish,German,Italian | ? | AAxXX,favourite,speaks | ? | ? | ? | ? | ? | Relations);
  List_Of_HiddenCst_Ids(Machine(Relations)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Relations)) == (AA,XX,YY,ZZ,R1,R2,R3,alphabet,RR,QQ,UK,Rln,Qnc,Rstar);
  List_Of_VisibleVar_Ids(Machine(Relations)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Relations)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Relations)) == (Type(PEOPLE) == Cst(SetOf(etype(PEOPLE,0,3)));Type(COLOUR) == Cst(SetOf(etype(COLOUR,0,6)));Type(LETTER) == Cst(SetOf(etype(LETTER,0,25)));Type(COUNTRY) == Cst(SetOf(etype(COUNTRY,0,9)));Type(LANGUAGE) == Cst(SetOf(etype(LANGUAGE,0,5))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Relations)) == (Type(Paul) == Cst(etype(PEOPLE,0,3));Type(Jim) == Cst(etype(PEOPLE,0,3));Type(Sue) == Cst(etype(PEOPLE,0,3));Type(Ian) == Cst(etype(PEOPLE,0,3));Type(purple) == Cst(etype(COLOUR,0,6));Type(red) == Cst(etype(COLOUR,0,6));Type(blue) == Cst(etype(COLOUR,0,6));Type(pink) == Cst(etype(COLOUR,0,6));Type(orange) == Cst(etype(COLOUR,0,6));Type(green) == Cst(etype(COLOUR,0,6));Type(yellow) == Cst(etype(COLOUR,0,6));Type(aa) == Cst(etype(LETTER,0,25));Type(bb) == Cst(etype(LETTER,0,25));Type(cc) == Cst(etype(LETTER,0,25));Type(dd) == Cst(etype(LETTER,0,25));Type(ee) == Cst(etype(LETTER,0,25));Type(ff) == Cst(etype(LETTER,0,25));Type(gg) == Cst(etype(LETTER,0,25));Type(hh) == Cst(etype(LETTER,0,25));Type(ii) == Cst(etype(LETTER,0,25));Type(jj) == Cst(etype(LETTER,0,25));Type(kk) == Cst(etype(LETTER,0,25));Type(ll) == Cst(etype(LETTER,0,25));Type(mm) == Cst(etype(LETTER,0,25));Type(nn) == Cst(etype(LETTER,0,25));Type(oo) == Cst(etype(LETTER,0,25));Type(pp) == Cst(etype(LETTER,0,25));Type(qq) == Cst(etype(LETTER,0,25));Type(rr) == Cst(etype(LETTER,0,25));Type(ss) == Cst(etype(LETTER,0,25));Type(tt) == Cst(etype(LETTER,0,25));Type(uu) == Cst(etype(LETTER,0,25));Type(vv) == Cst(etype(LETTER,0,25));Type(ww) == Cst(etype(LETTER,0,25));Type(xx) == Cst(etype(LETTER,0,25));Type(yy) == Cst(etype(LETTER,0,25));Type(zz) == Cst(etype(LETTER,0,25));Type(Wales) == Cst(etype(COUNTRY,0,9));Type(Canada) == Cst(etype(COUNTRY,0,9));Type(England) == Cst(etype(COUNTRY,0,9));Type(France) == Cst(etype(COUNTRY,0,9));Type(Scotland) == Cst(etype(COUNTRY,0,9));Type(NIreland) == Cst(etype(COUNTRY,0,9));Type(Germany) == Cst(etype(COUNTRY,0,9));Type(Italy) == Cst(etype(COUNTRY,0,9));Type(Spain) == Cst(etype(COUNTRY,0,9));Type(USA) == Cst(etype(COUNTRY,0,9));Type(Welsh) == Cst(etype(LANGUAGE,0,5));Type(French) == Cst(etype(LANGUAGE,0,5));Type(English) == Cst(etype(LANGUAGE,0,5));Type(Spanish) == Cst(etype(LANGUAGE,0,5));Type(German) == Cst(etype(LANGUAGE,0,5));Type(Italian) == Cst(etype(LANGUAGE,0,5));Type(AA) == Cst(SetOf(etype(LETTER,"[AA","]AA")));Type(XX) == Cst(SetOf(btype(INTEGER,"[XX","]XX")));Type(YY) == Cst(SetOf(btype(INTEGER,"[YY","]YY")));Type(ZZ) == Cst(SetOf(btype(INTEGER,"[ZZ","]ZZ")));Type(R1) == Cst(SetOf(etype(LETTER,?,?)*btype(INTEGER,?,?)));Type(R2) == Cst(SetOf(etype(LETTER,?,?)*btype(INTEGER,?,?)));Type(R3) == Cst(SetOf(etype(LETTER,?,?)*btype(INTEGER,?,?)));Type(alphabet) == Cst(SetOf(etype(LETTER,?,?)*etype(LETTER,?,?)));Type(RR) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(QQ) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(UK) == Cst(SetOf(etype(COUNTRY,"[UK","]UK")));Type(Rln) == Cst(SetOf(etype(LETTER,?,?)*btype(INTEGER,?,?)));Type(Qnc) == Cst(SetOf(btype(INTEGER,?,?)*etype(COLOUR,?,?)));Type(Rstar) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Relations)) == (Type(AAxXX) == Mvl(SetOf(etype(LETTER,?,?)*btype(INTEGER,?,?)));Type(favourite) == Mvl(SetOf(etype(PEOPLE,?,?)*etype(COLOUR,?,?)));Type(speaks) == Mvl(SetOf(etype(COUNTRY,?,?)*etype(LANGUAGE,?,?))))
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
