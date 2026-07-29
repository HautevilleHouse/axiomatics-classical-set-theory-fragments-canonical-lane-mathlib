import SetTheoryFragmentsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace SetTheoryFragmentsCanonicalLaneLean

structure SetTheoreticFoundationPackage where
  universeType : Type u
  membership : universeType → universeType → Prop
  extensionalityAxiom : Prop
  pairingAxiom : Prop
  unionAxiom : Prop
  powersetAxiom : Prop
  foundationAxiom : Prop

structure SetTheoreticFoundationEvidence (G : SetTheoreticFoundationPackage) where
  extensionalityAxiomClosed : G.extensionalityAxiom
  pairingAxiomClosed : G.pairingAxiom
  unionAxiomClosed : G.unionAxiom
  powersetAxiomClosed : G.powersetAxiom
  foundationAxiomClosed : G.foundationAxiom

def SetTheoreticFoundationClosed (G : SetTheoreticFoundationPackage) : Prop :=
  G.extensionalityAxiom ∧ G.pairingAxiom ∧ G.unionAxiom ∧ G.powersetAxiom ∧ G.foundationAxiom

theorem set_theoretic_foundation_closed_from_evidence (G : SetTheoreticFoundationPackage) (E : SetTheoreticFoundationEvidence G) :
  SetTheoreticFoundationClosed G := by
  exact And.intro E.extensionalityAxiomClosed (And.intro E.pairingAxiomClosed (And.intro E.unionAxiomClosed (And.intro E.powersetAxiomClosed E.foundationAxiomClosed)))

end SetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse