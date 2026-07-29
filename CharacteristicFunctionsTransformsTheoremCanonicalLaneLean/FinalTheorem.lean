import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

def ConstrainedCharacteristicFunctionTransformClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_characteristic_function_transform_endgame (A : AdmissibleClass) :
    ConstrainedCharacteristicFunctionTransformClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse