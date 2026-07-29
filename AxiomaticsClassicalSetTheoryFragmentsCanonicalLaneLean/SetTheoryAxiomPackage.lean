import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure SetTheoryAxiomPackage where
  fragmentName : String
  axioms : List String
  consistencyConjecture : Prop
  relativeConsistency : Prop
  foundationalStatus : Prop

structure SetTheoryAxiomEvidence (A : SetTheoryAxiomPackage) where
  axiomsSatisfied : A.axioms ≠ []
  consistencyConjectureClosed : A.consistencyConjecture
  relativeConsistencyClosed : A.relativeConsistency
  foundationalStatusClosed : A.foundationalStatus

def SetTheoryAxiomClosed (A : SetTheoryAxiomPackage) : Prop :=
  A.axioms ≠ [] ∧ A.consistencyConjecture ∧ A.relativeConsistency ∧ A.foundationalStatus

theorem set_theory_axiom_closed_from_evidence (A : SetTheoryAxiomPackage) (E : SetTheoryAxiomEvidence A) : SetTheoryAxiomClosed A :=
  And.intro E.axiomsSatisfied (And.intro E.consistencyConjectureClosed (And.intro E.relativeConsistencyClosed E.foundationalStatusClosed))

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse