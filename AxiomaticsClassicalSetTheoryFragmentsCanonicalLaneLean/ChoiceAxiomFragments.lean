import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.ZermeloFraenkelFragments

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure ChoiceAxiomPackage (Z : ZFFragmentPackage) where
  hasChoice : Prop
  isConsistentWithZF : Prop
  isIndependent : Prop
  hasChoiceClosed : hasChoice
  isConsistentWithZFClosed : isConsistentWithZF
  isIndependentClosed : isIndependent

structure ChoiceAxiomEvidence {Z : ZFFragmentPackage} (C : ChoiceAxiomPackage Z) where
  hasChoiceClosed : C.hasChoice
  isConsistentWithZFClosed : C.isConsistentWithZF
  isIndependentClosed : C.isIndependent

def ChoiceAxiomClosed {Z : ZFFragmentPackage} (C : ChoiceAxiomPackage Z) : Prop :=
  C.hasChoice ∧ C.isConsistentWithZF ∧ C.isIndependent

theorem choice_axiom_closed_from_evidence {Z : ZFFragmentPackage} (C : ChoiceAxiomPackage Z) (E : ChoiceAxiomEvidence C) :
    ChoiceAxiomClosed C := by
  exact And.intro E.hasChoiceClosed
    (And.intro E.isConsistentWithZFClosed E.isIndependentClosed)

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse