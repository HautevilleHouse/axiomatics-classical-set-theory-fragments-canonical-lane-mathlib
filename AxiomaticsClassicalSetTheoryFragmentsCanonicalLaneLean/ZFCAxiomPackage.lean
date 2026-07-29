import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure ZFCAxiomPackage where
  extensionality : Prop
  foundation : Prop
  comprehension : Prop
  pairing : Prop
  union : Prop
  powerSet : Prop
  infinity : Prop
  replacement : Prop
  choice : Prop

structure ZFCAxiomEvidence (Z : ZFCAxiomPackage) where
  extensionalityClosed : Z.extensionality
  foundationClosed : Z.foundation
  comprehensionClosed : Z.comprehension
  pairingClosed : Z.pairing
  unionClosed : Z.union
  powerSetClosed : Z.powerSet
  infinityClosed : Z.infinity
  replacementClosed : Z.replacement
  choiceClosed : Z.choice

def ZFCAxiomClosed (Z : ZFCAxiomPackage) : Prop :=
  Z.extensionality ∧ Z.foundation ∧ Z.comprehension ∧ Z.pairing ∧
  Z.union ∧ Z.powerSet ∧ Z.infinity ∧ Z.replacement ∧ Z.choice

theorem zfc_axiom_closed_from_evidence (Z : ZFCAxiomPackage) (E : ZFCAxiomEvidence Z) :
    ZFCAxiomClosed Z := by
  exact And.intro E.extensionalityClosed
    (And.intro E.foundationClosed
      (And.intro E.comprehensionClosed
        (And.intro E.pairingClosed
          (And.intro E.unionClosed
            (And.intro E.powerSetClosed
              (And.intro E.infinityClosed
                (And.intro E.replacementClosed E.choiceClosed)))))))

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse