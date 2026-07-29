import SetTheoryFragmentsCanonicalLaneLean.TransfiniteRecursion

namespace HautevilleHouse
namespace SetTheoryFragmentsCanonicalLaneLean

structure ConstructibleHierarchyPackage {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} (T : TransfiniteRecursionPackage Z) where
  LDef : Prop
  relativeConsistency : Prop
  condensationLemma : Prop

structure ConstructibleHierarchyEvidence {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} (C : ConstructibleHierarchyPackage T) where
  LDefClosed : C.LDef
  relativeConsistencyClosed : C.relativeConsistency
  condensationLemmaClosed : C.condensationLemma

def ConstructibleHierarchyClosed {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} (C : ConstructibleHierarchyPackage T) : Prop :=
  C.LDef ∧ C.relativeConsistency ∧ C.condensationLemma

theorem constructible_hierarchy_closed_from_evidence {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} (C : ConstructibleHierarchyPackage T) (E : ConstructibleHierarchyEvidence C) :
  ConstructibleHierarchyClosed C := by
  exact And.intro E.LDefClosed (And.intro E.relativeConsistencyClosed E.condensationLemmaClosed)

end SetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse