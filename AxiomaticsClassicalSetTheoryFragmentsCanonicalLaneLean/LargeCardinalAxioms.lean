import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure LargeCardinalAxiomsPackage where
  inaccessible : Prop
  measurable : Prop
  Woodin : Prop
  supercompact : Prop
  huge : Prop

structure LargeCardinalAxiomsEvidence (L : LargeCardinalAxiomsPackage) where
  inaccessibleClosed : L.inaccessible
  measurableClosed : L.measurable
  WoodinClosed : L.Woodin
  supercompactClosed : L.supercompact
  hugeClosed : L.huge

def LargeCardinalAxiomsClosed (L : LargeCardinalAxiomsPackage) : Prop :=
  L.inaccessible ∧ L.measurable ∧ L.Woodin ∧ L.supercompact ∧ L.huge

theorem large_cardinal_axioms_closed_from_evidence (L : LargeCardinalAxiomsPackage) (E : LargeCardinalAxiomsEvidence L) : LargeCardinalAxiomsClosed L := by
  exact And.intro E.inaccessibleClosed (And.intro E.measurableClosed (And.intro E.WoodinClosed (And.intro E.supercompactClosed E.hugeClosed)))

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse