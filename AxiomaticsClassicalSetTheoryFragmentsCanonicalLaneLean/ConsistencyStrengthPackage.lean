import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.SetTheoryAxiomPackage

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure ConsistencyStrengthPackage (A B : SetTheoryAxiomPackage) where
  weakerThan : Prop
  equiconsistent : Prop
  strictlyStronger : Prop

structure ConsistencyStrengthEvidence (A B : SetTheoryAxiomPackage) (C : ConsistencyStrengthPackage A B) where
  weakerThanClosed : C.weakerThan
  equiconsistentClosed : C.equiconsistent
  strictlyStrongerClosed : C.strictlyStronger

def ConsistencyStrengthClosed (A B : SetTheoryAxiomPackage) (C : ConsistencyStrengthPackage A B) : Prop :=
  C.weakerThan ∧ C.equiconsistent ∧ C.strictlyStronger

theorem consistency_strength_closed_from_evidence (A B : SetTheoryAxiomPackage) (C : ConsistencyStrengthPackage A B) (E : ConsistencyStrengthEvidence A B C) : ConsistencyStrengthClosed A B C :=
  And.intro E.weakerThanClosed (And.intro E.equiconsistentClosed E.strictlyStrongerClosed)

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse