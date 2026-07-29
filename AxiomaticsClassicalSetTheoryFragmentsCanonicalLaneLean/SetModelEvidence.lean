import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.SetTheoryAxiomPackage

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure SetModelPackage {A : SetTheoryAxiomPackage} where
  modelType : Type u
  satisfiesAxioms : Prop
  wellFounded : Prop
  transitive : Prop

structure SetModelEvidence {A : SetTheoryAxiomPackage} (M : SetModelPackage A) where
  satisfiesAxiomsClosed : M.satisfiesAxioms
  wellFoundedClosed : M.wellFounded
  transitiveClosed : M.transitive

def SetModelClosed {A : SetTheoryAxiomPackage} (M : SetModelPackage A) : Prop :=
  M.satisfiesAxioms ∧ M.wellFounded ∧ M.transitive

theorem set_model_closed_from_evidence {A : SetTheoryAxiomPackage} (M : SetModelPackage A) (E : SetModelEvidence M) : SetModelClosed M :=
  And.intro E.satisfiesAxiomsClosed (And.intro E.wellFoundedClosed E.transitiveClosed)

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse