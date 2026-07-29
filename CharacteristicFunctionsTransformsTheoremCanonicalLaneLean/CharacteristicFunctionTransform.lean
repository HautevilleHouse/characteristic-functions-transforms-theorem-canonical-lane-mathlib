import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure CharacteristicFunctionTransformPackage where
  randomVariableType : Type u
  probabilitySpace : Type v
  characteristicFunction : randomVariableType → (ℝ → ℂ)
  invertibilityCondition : Prop
  transformKernel : Type w
  kernelRegularity : Prop
  transformInversion : Prop

structure CharacteristicFunctionTransformEvidence (C : CharacteristicFunctionTransformPackage) where
  invertibilityConditionClosed : C.invertibilityCondition
  kernelRegularityClosed : C.kernelRegularity
  transformInversionClosed : C.transformInversion

def CharacteristicFunctionTransformClosed (C : CharacteristicFunctionTransformPackage) : Prop :=
  C.invertibilityCondition ∧ C.kernelRegularity ∧ C.transformInversion

theorem characteristic_function_transform_closed_from_evidence
    (C : CharacteristicFunctionTransformPackage)
    (E : CharacteristicFunctionTransformEvidence C) :
    CharacteristicFunctionTransformClosed C := by
  exact And.intro E.invertibilityConditionClosed
    (And.intro E.kernelRegularityClosed E.transformInversionClosed)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse