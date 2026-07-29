import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SetTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse