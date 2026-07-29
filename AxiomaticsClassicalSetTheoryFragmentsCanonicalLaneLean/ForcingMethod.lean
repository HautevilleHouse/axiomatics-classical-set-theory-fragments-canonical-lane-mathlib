import SetTheoryFragmentsCanonicalLaneLean.ConstructibleHierarchy

namespace HautevilleHouse
namespace SetTheoryFragmentsCanonicalLaneLean

structure ForcingMethodPackage {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} (C : ConstructibleHierarchyPackage T) where
  poset : Prop
  genericExtension : Prop
  truthLemma : Prop
  consistencyTransfer : Prop

structure ForcingMethodEvidence {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} {C : ConstructibleHierarchyPackage T} (F : ForcingMethodPackage C) where
  posetClosed : F.poset
  genericExtensionClosed : F.genericExtension
  truthLemmaClosed : F.truthLemma
  consistencyTransferClosed : F.consistencyTransfer

def ForcingMethodClosed {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} {C : ConstructibleHierarchyPackage T} (F : ForcingMethodPackage C) : Prop :=
  F.poset ∧ F.genericExtension ∧ F.truthLemma ∧ F.consistencyTransfer

theorem forcing_method_closed_from_evidence {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} {C : ConstructibleHierarchyPackage T} (F : ForcingMethodPackage C) (E : ForcingMethodEvidence F) :
  ForcingMethodClosed F := by
  exact And.intro E.posetClosed (And.intro E.genericExtensionClosed (And.intro E.truthLemmaClosed E.consistencyTransferClosed))

end SetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse