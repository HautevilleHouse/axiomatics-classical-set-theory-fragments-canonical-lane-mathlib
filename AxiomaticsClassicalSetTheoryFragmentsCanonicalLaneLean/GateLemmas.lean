import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse