import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

def CharacteristicFunctionTransformsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem characteristic_function_transforms_endgame (A : AdmissibleClass) :
    CharacteristicFunctionTransformsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end HautevilleHouse