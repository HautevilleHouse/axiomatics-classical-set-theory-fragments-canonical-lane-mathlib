import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure ZFAxiomsPackage where
  extensionality : Prop
  emptySet : Prop
  pairing : Prop
  union : Prop
  powerset : Prop
  infinity : Prop
  separation : Prop
  replacement : Prop
  regularity : Prop

structure ZFAxiomsEvidence (Z : ZFAxiomsPackage) where
  extensionalityClosed : Z.extensionality
  emptySetClosed : Z.emptySet
  pairingClosed : Z.pairing
  unionClosed : Z.union
  powersetClosed : Z.powerset
  infinityClosed : Z.infinity
  separationClosed : Z.separation
  replacementClosed : Z.replacement
  regularityClosed : Z.regularity

def ZFAxiomsClosed (Z : ZFAxiomsPackage) : Prop :=
  Z.extensionality ∧ Z.emptySet ∧ Z.pairing ∧ Z.union ∧ Z.powerset ∧ Z.infinity ∧ Z.separation ∧ Z.replacement ∧ Z.regularity

theorem zf_axioms_closed_from_evidence (Z : ZFAxiomsPackage) (E : ZFAxiomsEvidence Z) : ZFAxiomsClosed Z := by
  exact And.intro E.extensionalityClosed (And.intro E.emptySetClosed (And.intro E.pairingClosed (And.intro E.unionClosed (And.intro E.powersetClosed (And.intro E.infinityClosed (And.intro E.separationClosed (And.intro E.replacementClosed E.regularityClosed)))))))

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse