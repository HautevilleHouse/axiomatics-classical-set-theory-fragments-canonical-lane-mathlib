import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure FoundationRegularityPackage where
  foundation : Prop
  epsilonInduction : Prop
  epsilonRecursion : Prop
  rankFunction : Prop

structure FoundationRegularityEvidence (F : FoundationRegularityPackage) where
  foundationClosed : F.foundation
  epsilonInductionClosed : F.epsilonInduction
  epsilonRecursionClosed : F.epsilonRecursion
  rankFunctionClosed : F.rankFunction

def FoundationRegularityClosed (F : FoundationRegularityPackage) : Prop :=
  F.foundation ∧ F.epsilonInduction ∧ F.epsilonRecursion ∧ F.rankFunction

theorem foundation_regularity_closed_from_evidence (F : FoundationRegularityPackage) (E : FoundationRegularityEvidence F) : FoundationRegularityClosed F := by
  exact And.intro E.foundationClosed (And.intro E.epsilonInductionClosed (And.intro E.epsilonRecursionClosed E.rankFunctionClosed))

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse