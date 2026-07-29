import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure LargeCardinalAxiomPackage where
  measurableCardinal : Prop
  strongCompactCardinal : Prop
  supercompactCardinal : Prop
  hugeCardinal : Prop

structure LargeCardinalAxiomEvidence (L : LargeCardinalAxiomPackage) where
  measurableCardinalClosed : L.measurableCardinal
  strongCompactCardinalClosed : L.strongCompactCardinal
  supercompactCardinalClosed : L.supercompactCardinal
  hugeCardinalClosed : L.hugeCardinal

def LargeCardinalAxiomClosed (L : LargeCardinalAxiomPackage) : Prop :=
  L.measurableCardinal ∧ L.strongCompactCardinal ∧
  L.supercompactCardinal ∧ L.hugeCardinal

theorem large_cardinal_axiom_closed_from_evidence (L : LargeCardinalAxiomPackage) (E : LargeCardinalAxiomEvidence L) :
    LargeCardinalAxiomClosed L := by
  exact And.intro E.measurableCardinalClosed
    (And.intro E.strongCompactCardinalClosed
      (And.intro E.supercompactCardinalClosed E.hugeCardinalClosed))

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse