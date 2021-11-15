Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Sets_2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Sets_2))==(Machine(Sets_2));
  Level(Machine(Sets_2))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Sets_2)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Sets_2))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Sets_2))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Sets_2))==(?);
  List_Includes(Machine(Sets_2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Sets_2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Sets_2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Sets_2))==(?);
  Context_List_Variables(Machine(Sets_2))==(?);
  Abstract_List_Variables(Machine(Sets_2))==(?);
  Local_List_Variables(Machine(Sets_2))==(GG,FF,EE,homeland);
  List_Variables(Machine(Sets_2))==(GG,FF,EE,homeland);
  External_List_Variables(Machine(Sets_2))==(GG,FF,EE,homeland)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Sets_2))==(?);
  Abstract_List_VisibleVariables(Machine(Sets_2))==(?);
  External_List_VisibleVariables(Machine(Sets_2))==(?);
  Expanded_List_VisibleVariables(Machine(Sets_2))==(?);
  List_VisibleVariables(Machine(Sets_2))==(?);
  Internal_List_VisibleVariables(Machine(Sets_2))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Sets_2))==(btrue);
  Gluing_List_Invariant(Machine(Sets_2))==(btrue);
  Expanded_List_Invariant(Machine(Sets_2))==(btrue);
  Abstract_List_Invariant(Machine(Sets_2))==(btrue);
  Context_List_Invariant(Machine(Sets_2))==(btrue);
  List_Invariant(Machine(Sets_2))==(homeland: EU & EE <: LETTER & FF <: LETTER & GG <: LETTER)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Sets_2))==(btrue);
  Abstract_List_Assertions(Machine(Sets_2))==(btrue);
  Context_List_Assertions(Machine(Sets_2))==(btrue);
  List_Assertions(Machine(Sets_2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Sets_2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Sets_2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Sets_2))==(homeland,EE,FF,GG:=GBR,{ee},{ff},{gg});
  Context_List_Initialisation(Machine(Sets_2))==(skip);
  List_Initialisation(Machine(Sets_2))==(homeland,EE,FF,GG:=GBR,{ee},{ff},{gg})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Sets_2))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Sets_2))==(btrue);
  List_Constraints(Machine(Sets_2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Sets_2))==(?);
  List_Operations(Machine(Sets_2))==(?)
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
  List_Valuable_Constants(Machine(Sets_2))==(Benelux,AA,BB,CC,DD,Even,Odd,Fives);
  Inherited_List_Constants(Machine(Sets_2))==(?);
  List_Constants(Machine(Sets_2))==(Benelux,AA,BB,CC,DD,Even,Odd,Fives)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Sets_2),EU)==({BEL,NL,LUX,FR,DK,POR,GBR,ITA,IRL,DUT,ESP,GRE});
  Context_List_Enumerated(Machine(Sets_2))==(?);
  Context_List_Defered(Machine(Sets_2))==(?);
  Context_List_Sets(Machine(Sets_2))==(?);
  List_Valuable_Sets(Machine(Sets_2))==(?);
  Inherited_List_Enumerated(Machine(Sets_2))==(?);
  Inherited_List_Defered(Machine(Sets_2))==(?);
  Inherited_List_Sets(Machine(Sets_2))==(?);
  List_Enumerated(Machine(Sets_2))==(EU,LETTER);
  List_Defered(Machine(Sets_2))==(?);
  List_Sets(Machine(Sets_2))==(EU,LETTER);
  Set_Definition(Machine(Sets_2),LETTER)==({aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Sets_2))==(?);
  Expanded_List_HiddenConstants(Machine(Sets_2))==(?);
  List_HiddenConstants(Machine(Sets_2))==(?);
  External_List_HiddenConstants(Machine(Sets_2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Sets_2))==(btrue);
  Context_List_Properties(Machine(Sets_2))==(btrue);
  Inherited_List_Properties(Machine(Sets_2))==(btrue);
  List_Properties(Machine(Sets_2))==(Benelux <: EU & Benelux = {BEL,LUX,NL} & AA <: LETTER & AA = {aa,bb,cc,dd,ee,ff,gg,hh} & BB <: LETTER & BB = {aa,ee,ii,oo,uu} & CC <: LETTER & CC = {xx,yy,zz} & DD <: LETTER & DD = {ff,oo,rr,mm,aa,ll,ee,tt,hh,dd,ss} & Even <: NAT & Even = {ev | ev: NAT & ev mod 2 = 0 & ev<=20} & Odd <: NAT & Odd = {od | od: NAT & od mod 2 = 1 & od<=20} & Fives <: NAT & Fives = {fi | fi: NAT & fi mod 5 = 0 & fi<=20} & EU: FIN(INTEGER) & not(EU = {}) & LETTER: FIN(INTEGER) & not(LETTER = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Sets_2)) == (Benelux,AA,BB,CC,DD,Even,Odd,Fives,EU,LETTER,BEL,NL,LUX,FR,DK,POR,GBR,ITA,IRL,DUT,ESP,GRE,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz | ? | GG,FF,EE,homeland | ? | ? | ? | ? | ? | Sets_2);
  List_Of_HiddenCst_Ids(Machine(Sets_2)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Sets_2)) == (Benelux,AA,BB,CC,DD,Even,Odd,Fives);
  List_Of_VisibleVar_Ids(Machine(Sets_2)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Sets_2)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Sets_2)) == (Type(EU) == Cst(SetOf(etype(EU,0,11)));Type(LETTER) == Cst(SetOf(etype(LETTER,0,25))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Sets_2)) == (Type(BEL) == Cst(etype(EU,0,11));Type(NL) == Cst(etype(EU,0,11));Type(LUX) == Cst(etype(EU,0,11));Type(FR) == Cst(etype(EU,0,11));Type(DK) == Cst(etype(EU,0,11));Type(POR) == Cst(etype(EU,0,11));Type(GBR) == Cst(etype(EU,0,11));Type(ITA) == Cst(etype(EU,0,11));Type(IRL) == Cst(etype(EU,0,11));Type(DUT) == Cst(etype(EU,0,11));Type(ESP) == Cst(etype(EU,0,11));Type(GRE) == Cst(etype(EU,0,11));Type(aa) == Cst(etype(LETTER,0,25));Type(bb) == Cst(etype(LETTER,0,25));Type(cc) == Cst(etype(LETTER,0,25));Type(dd) == Cst(etype(LETTER,0,25));Type(ee) == Cst(etype(LETTER,0,25));Type(ff) == Cst(etype(LETTER,0,25));Type(gg) == Cst(etype(LETTER,0,25));Type(hh) == Cst(etype(LETTER,0,25));Type(ii) == Cst(etype(LETTER,0,25));Type(jj) == Cst(etype(LETTER,0,25));Type(kk) == Cst(etype(LETTER,0,25));Type(ll) == Cst(etype(LETTER,0,25));Type(mm) == Cst(etype(LETTER,0,25));Type(nn) == Cst(etype(LETTER,0,25));Type(oo) == Cst(etype(LETTER,0,25));Type(pp) == Cst(etype(LETTER,0,25));Type(qq) == Cst(etype(LETTER,0,25));Type(rr) == Cst(etype(LETTER,0,25));Type(ss) == Cst(etype(LETTER,0,25));Type(tt) == Cst(etype(LETTER,0,25));Type(uu) == Cst(etype(LETTER,0,25));Type(vv) == Cst(etype(LETTER,0,25));Type(ww) == Cst(etype(LETTER,0,25));Type(xx) == Cst(etype(LETTER,0,25));Type(yy) == Cst(etype(LETTER,0,25));Type(zz) == Cst(etype(LETTER,0,25));Type(Benelux) == Cst(SetOf(etype(EU,"[Benelux","]Benelux")));Type(AA) == Cst(SetOf(etype(LETTER,"[AA","]AA")));Type(BB) == Cst(SetOf(etype(LETTER,"[BB","]BB")));Type(CC) == Cst(SetOf(etype(LETTER,"[CC","]CC")));Type(DD) == Cst(SetOf(etype(LETTER,"[DD","]DD")));Type(Even) == Cst(SetOf(btype(INTEGER,"[Even","]Even")));Type(Odd) == Cst(SetOf(btype(INTEGER,"[Odd","]Odd")));Type(Fives) == Cst(SetOf(btype(INTEGER,"[Fives","]Fives"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Sets_2)) == (Type(GG) == Mvl(SetOf(etype(LETTER,?,?)));Type(FF) == Mvl(SetOf(etype(LETTER,?,?)));Type(EE) == Mvl(SetOf(etype(LETTER,?,?)));Type(homeland) == Mvl(etype(EU,?,?)))
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
