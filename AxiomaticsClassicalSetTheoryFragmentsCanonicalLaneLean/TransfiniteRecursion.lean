import SetTheoryFragmentsCanonicalLaneLean.ZFCAxiomSystem

namespace HautevilleHouse
namespace SetTheoryFragmentsCanonicalLaneLean

structure TransfiniteRecursionPackage {G : SetTheoreticFoundationPackage} (Z : ZFCAxiomSystemPackage G) where
  recursionPrinciple : Prop
  ordinalDefined : Prop
  functionalIteration : Prop

structure TransfiniteRecursionEvidence {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} (T : TransfiniteRecursionPackage Z) where
  recursionPrincipleClosed : T.recursionPrinciple
  ordinalDefinedClosed : T.ordinalDefined
  functionalIterationClosed : T.functionalIteration

def TransfiniteRecursionClosed {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} (T : TransfiniteRecursionPackage Z) : Prop :=
  T.recursionPrinciple ∧ T.ordinalDefined ∧ T.functionalIteration

theorem transfinite_recursion_closed_from_evidence {G : SetTheoreticFoundationPackage} {Z : ZFCAxiomSystemPackage G} (T : TransfiniteRecursionPackage Z) (E : TransfiniteRecursionEvidence T) :
  TransfiniteRecursionClosed T := by
  exact And.intro E.recursionPrincipleClosed (And.intro E.ordinalDefinedClosed E.functionalIterationClosed)

end SetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse