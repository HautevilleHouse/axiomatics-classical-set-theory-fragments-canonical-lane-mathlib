import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.ZFFragment

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ZFFragmentClosed (A.object : ZFFragmentPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- bridge from admissible class structure
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse