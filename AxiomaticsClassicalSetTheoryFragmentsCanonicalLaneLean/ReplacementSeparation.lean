import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure ReplacementSeparationPackage where
  replacementSchema : Prop
  separationSchema : Prop
  collection : Prop
  strongReplacement : Prop

structure ReplacementSeparationEvidence (R : ReplacementSeparationPackage) where
  replacementSchemaClosed : R.replacementSchema
  separationSchemaClosed : R.separationSchema
  collectionClosed : R.collection
  strongReplacementClosed : R.strongReplacement

def ReplacementSeparationClosed (R : ReplacementSeparationPackage) : Prop :=
  R.replacementSchema ∧ R.separationSchema ∧ R.collection ∧ R.strongReplacement

theorem replacement_separation_closed_from_evidence (R : ReplacementSeparationPackage) (E : ReplacementSeparationEvidence R) : ReplacementSeparationClosed R := by
  exact And.intro E.replacementSchemaClosed (And.intro E.separationSchemaClosed (And.intro E.collectionClosed E.strongReplacementClosed))

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse