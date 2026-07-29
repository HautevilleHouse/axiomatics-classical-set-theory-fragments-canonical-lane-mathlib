import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure ZFFragmentPackage where
  axiomsIncluded : List String
  isConsistent : Prop
  hasReplacement : Prop
  hasSeparation : Prop
  hasInfinity : Prop
  hasPowerSet : Prop
  hasUnion : Prop
  hasFoundation : Prop
  isConsistentClosed : isConsistent
  hasReplacementClosed : hasReplacement
  hasSeparationClosed : hasSeparation
  hasInfinityClosed : hasInfinity
  hasPowerSetClosed : hasPowerSet
  hasUnionClosed : hasUnion
  hasFoundationClosed : hasFoundation

structure ZFFragmentEvidence (Z : ZFFragmentPackage) where
  isConsistentClosed : Z.isConsistent
  hasReplacementClosed : Z.hasReplacement
  hasSeparationClosed : Z.hasSeparation
  hasInfinityClosed : Z.hasInfinity
  hasPowerSetClosed : Z.hasPowerSet
  hasUnionClosed : Z.hasUnion
  hasFoundationClosed : Z.hasFoundation

def ZFFragmentClosed (Z : ZFFragmentPackage) : Prop :=
  Z.isConsistent ∧ Z.hasReplacement ∧ Z.hasSeparation ∧ Z.hasInfinity ∧ Z.hasPowerSet ∧ Z.hasUnion ∧ Z.hasFoundation

theorem zf_fragment_closed_from_evidence (Z : ZFFragmentPackage) (E : ZFFragmentEvidence Z) :
    ZFFragmentClosed Z := by
  exact And.intro E.isConsistentClosed
    (And.intro E.hasReplacementClosed
      (And.intro E.hasSeparationClosed
        (And.intro E.hasInfinityClosed
          (And.intro E.hasPowerSetClosed
            (And.intro E.hasUnionClosed E.hasFoundationClosed)))))

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse