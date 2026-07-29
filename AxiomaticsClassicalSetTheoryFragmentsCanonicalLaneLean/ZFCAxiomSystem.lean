import SetTheoryFragmentsCanonicalLaneLean.SetTheoreticFoundation

namespace HautevilleHouse
namespace SetTheoryFragmentsCanonicalLaneLean

structure ZFCAxiomSystemPackage (G : SetTheoreticFoundationPackage) where
  infinityAxiom : Prop
  replacementSchema : Prop
  choiceAxiom : Prop

structure ZFCAxiomSystemEvidence {G : SetTheoreticFoundationPackage} (Z : ZFCAxiomSystemPackage G) where
  infinityAxiomClosed : Z.infinityAxiom
  replacementSchemaClosed : Z.replacementSchema
  choiceAxiomClosed : Z.choiceAxiom

def ZFCAxiomSystemClosed {G : SetTheoreticFoundationPackage} (Z : ZFCAxiomSystemPackage G) : Prop :=
  Z.infinityAxiom ∧ Z.replacementSchema ∧ Z.choiceAxiom

theorem zfc_axiom_system_closed_from_evidence {G : SetTheoreticFoundationPackage} (Z : ZFCAxiomSystemPackage G) (E : ZFCAxiomSystemEvidence Z) :
  ZFCAxiomSystemClosed Z := by
  exact And.intro E.infinityAxiomClosed (And.intro E.replacementSchemaClosed E.choiceAxiomClosed)

end SetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse