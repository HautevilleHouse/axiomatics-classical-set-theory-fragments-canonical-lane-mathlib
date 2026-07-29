import SetTheoryFragmentsCanonicalLaneLean.ForcingMethod

namespace HautevilleHouse
namespace SetTheoryFragmentsCanonicalLaneLean

structure ConsistencyEndpointPackage {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} {C : ConstructibleHierarchyPackage T} {F : ForcingMethodPackage C} where
  consistencyOfZFC : Prop
  independenceProof : Prop

structure ConsistencyEndpointEvidence {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} {C : ConstructibleHierarchyPackage T} {F : ForcingMethodPackage C} (E : ConsistencyEndpointPackage F) where
  consistencyOfZFCClosed : E.consistencyOfZFC
  independenceProofClosed : E.independenceProof

def ConsistencyEndpointClosed {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} {C : ConstructibleHierarchyPackage T} {F : ForcingMethodPackage C} (E : ConsistencyEndpointPackage F) : Prop :=
  E.consistencyOfZFC ∧ E.independenceProof

theorem consistency_endpoint_closed_from_evidence {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} {T : TransfiniteRecursionPackage Z} {C : ConstructibleHierarchyPackage T} {F : ForcingMethodPackage C} (Ep : ConsistencyEndpointPackage F) (Ev : ConsistencyEndpointEvidence Ep) :
  ConsistencyEndpointClosed Ep := by
  exact And.intro Ev.consistencyOfZFCClosed Ev.independenceProofClosed

end SetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse