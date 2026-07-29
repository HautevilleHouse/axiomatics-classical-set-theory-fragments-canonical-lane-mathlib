import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure ZFFragmentPackage where
  language : Type u
  axioms : List (language → Prop)
  axiomListConsistent : Prop
  finiteSubsetConsistent : Prop

structure ZFFragmentEvidence (Z : ZFFragmentPackage) where
  axiomListConsistentClosed : Z.axiomListConsistent
  finiteSubsetConsistentClosed : Z.finiteSubsetConsistent

def ZFFragmentClosed (Z : ZFFragmentPackage) : Prop :=
  Z.axiomListConsistent ∧ Z.finiteSubsetConsistent

theorem zf_fragment_closed_from_evidence (Z : ZFFragmentPackage) (E : ZFFragmentEvidence Z) : ZFFragmentClosed Z := by
  exact And.intro E.axiomListConsistentClosed E.finiteSubsetConsistentClosed

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse