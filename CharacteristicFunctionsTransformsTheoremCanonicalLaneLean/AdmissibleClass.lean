import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  characteristicFunctionTransformClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse