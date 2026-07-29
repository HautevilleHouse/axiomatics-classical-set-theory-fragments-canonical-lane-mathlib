import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.SetTheoryAxiomPackage
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.SetModelEvidence
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.ForcingExtensionPackage
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.ConsistencyStrengthPackage

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  exists (pkg : SetTheoryAxiomPackage), SetTheoryAxiomClosed pkg

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    have h : SetTheoryAxiomClosed A.object := A.evidence
    exact ⟨A.object, h⟩

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedSetTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_set_theory_endgame (A : AdmissibleClass) : ConstrainedSetTheoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse