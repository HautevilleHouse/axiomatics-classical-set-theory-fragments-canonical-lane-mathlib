import AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure SetTheorySpace where
  carrier : Type
  membership : carrier → carrier → Prop

structure SetTheoryAdmittedObject where
  space : SetTheorySpace
  zfcAxioms : Prop
  choiceAxiom : Prop
  infiniteAxiom : Prop
  conclusion : zfcAxioms ∧ choiceAxiom ∧ infiniteAxiom

structure AdmissibleClass where
  object : SetTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SetTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SetTheoryWitnessClosed (O : SetTheoryAdmittedObject) : Prop :=
  O.conclusion

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse