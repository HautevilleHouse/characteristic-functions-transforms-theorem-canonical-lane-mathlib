import CharacteristicFunctionsTransformsTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure FourierTransformPackage where
  integrableFunction : Type
  transform : integrableFunction → ℝᵈ → ℂ
  inversionFormulaValid : Prop
  transformIsContinuous : Prop
  transformIsBounded : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  inversionFormulaValidClosed : F.inversionFormulaValid
  transformIsContinuousClosed : F.transformIsContinuous
  transformIsBoundedClosed : F.transformIsBounded

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.inversionFormulaValid ∧ F.transformIsContinuous ∧ F.transformIsBounded

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage) (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.inversionFormulaValidClosed (And.intro E.transformIsContinuousClosed E.transformIsBoundedClosed)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse