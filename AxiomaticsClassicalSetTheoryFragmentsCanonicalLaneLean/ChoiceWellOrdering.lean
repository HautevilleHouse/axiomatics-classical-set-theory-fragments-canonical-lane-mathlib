import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure ChoiceWellOrderingPackage where
  axiomOfChoice : Prop
  wellOrderingPrinciple : Prop
  ZornsLemma : Prop
  cardinalComparability : Prop

structure ChoiceWellOrderingEvidence (C : ChoiceWellOrderingPackage) where
  axiomOfChoiceClosed : C.axiomOfChoice
  wellOrderingPrincipleClosed : C.wellOrderingPrinciple
  ZornsLemmaClosed : C.ZornsLemma
  cardinalComparabilityClosed : C.cardinalComparability

def ChoiceWellOrderingClosed (C : ChoiceWellOrderingPackage) : Prop :=
  C.axiomOfChoice ∧ C.wellOrderingPrinciple ∧ C.ZornsLemma ∧ C.cardinalComparability

theorem choice_well_ordering_closed_from_evidence (C : ChoiceWellOrderingPackage) (E : ChoiceWellOrderingEvidence C) : ChoiceWellOrderingClosed C := by
  exact And.intro E.axiomOfChoiceClosed (And.intro E.wellOrderingPrincipleClosed (And.intro E.ZornsLemmaClosed E.cardinalComparabilityClosed))

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse