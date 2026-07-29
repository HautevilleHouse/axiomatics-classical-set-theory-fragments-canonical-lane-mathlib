import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.ChoiceAxiomFragments

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure SetTheoryFragmentsEvidence (Z : ZFFragmentPackage) (C : ChoiceAxiomPackage Z) where
  zfClosed : ZFFragmentClosed Z
  choiceClosed : ChoiceAxiomClosed C

def SetTheoryFragmentsClosed (Z : ZFFragmentPackage) (C : ChoiceAxiomPackage Z) : Prop :=
  ZFFragmentClosed Z ∧ ChoiceAxiomClosed C

theorem set_theory_fragments_closed_from_evidence (Z : ZFFragmentPackage) (C : ChoiceAxiomPackage Z) (E : SetTheoryFragmentsEvidence Z C) :
    SetTheoryFragmentsClosed Z C := by
  exact And.intro E.zfClosed E.choiceClosed

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse