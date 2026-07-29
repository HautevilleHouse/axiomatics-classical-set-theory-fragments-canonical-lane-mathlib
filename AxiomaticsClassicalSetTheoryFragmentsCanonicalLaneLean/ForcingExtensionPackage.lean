import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure ForcingNotion where
  carrier : Type
  preorder : carrier → carrier → Prop
  condition : carrier → Prop

structure ForcingExtensionPackage where
  groundModel : SetTheorySpace
  notion : ForcingNotion
  genericFilter : Type
  extensionModel : SetTheorySpace
  extensionPreservesZFC : Prop
  forcingRelationDefined : Prop

structure ForcingExtensionEvidence (F : ForcingExtensionPackage) where
  extensionPreservesZFCClosed : F.extensionPreservesZFC
  forcingRelationDefinedClosed : F.forcingRelationDefined

def ForcingExtensionClosed (F : ForcingExtensionPackage) : Prop :=
  F.extensionPreservesZFC ∧ F.forcingRelationDefined

theorem forcing_extension_closed_from_evidence (F : ForcingExtensionPackage) (E : ForcingExtensionEvidence F) :
    ForcingExtensionClosed F := by
  exact And.intro E.extensionPreservesZFCClosed E.forcingRelationDefinedClosed

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse