import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.ZFAxiomsPackage
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.ReplacementSeparation
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.FoundationRegularity
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.ChoiceWellOrdering
import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.LargeCardinalAxioms

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure SetTheoryFragmentsClosurePackage where
  zfAxioms : ZFAxiomsPackage
  replacementSeparation : ReplacementSeparationPackage
  foundationRegularity : FoundationRegularityPackage
  choiceWellOrdering : ChoiceWellOrderingPackage
  largeCardinalAxioms : LargeCardinalAxiomsPackage
  evidenceZF : ZFAxiomsEvidence zfAxioms
  evidenceReplacement : ReplacementSeparationEvidence replacementSeparation
  evidenceFoundation : FoundationRegularityEvidence foundationRegularity
  evidenceChoice : ChoiceWellOrderingEvidence choiceWellOrdering
  evidenceLarge : LargeCardinalAxiomsEvidence largeCardinalAxioms

def SetTheoryFragmentsClosed (S : SetTheoryFragmentsClosurePackage) : Prop :=
  ZFAxiomsClosed S.zfAxioms ∧ ReplacementSeparationClosed S.replacementSeparation ∧
  FoundationRegularityClosed S.foundationRegularity ∧ ChoiceWellOrderingClosed S.choiceWellOrdering ∧
  LargeCardinalAxiomsClosed S.largeCardinalAxioms

theorem set_theory_fragments_closed (S : SetTheoryFragmentsClosurePackage) : SetTheoryFragmentsClosed S := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · exact zf_axioms_closed_from_evidence S.zfAxioms S.evidenceZF
  · exact replacement_separation_closed_from_evidence S.replacementSeparation S.evidenceReplacement
  · exact foundation_regularity_closed_from_evidence S.foundationRegularity S.evidenceFoundation
  · exact choice_well_ordering_closed_from_evidence S.choiceWellOrdering S.evidenceChoice
  · exact large_cardinal_axioms_closed_from_evidence S.largeCardinalAxioms S.evidenceLarge

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse