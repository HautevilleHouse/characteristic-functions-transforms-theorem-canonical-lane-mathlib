import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure InversionTheoremPackage {C : CharacteristicFunctionTransformPackage}
    (I : CharacteristicFunctionTransformEvidence C) where
  inversionFormula : Prop
  densityReconstruction : Prop
  integrabilityCondition : Prop
  fourierInversion : Prop

structure InversionTheoremEvidence {C : CharacteristicFunctionTransformPackage}
    {I : CharacteristicFunctionTransformEvidence C}
    (P : InversionTheoremPackage I) where
  inversionFormulaClosed : P.inversionFormula
  densityReconstructionClosed : P.densityReconstruction
  integrabilityConditionClosed : P.integrabilityCondition
  fourierInversionClosed : P.fourierInversion

def InversionTheoremClosed {C : CharacteristicFunctionTransformPackage}
    {I : CharacteristicFunctionTransformEvidence C}
    (P : InversionTheoremPackage I) : Prop :=
  P.inversionFormula ∧ P.densityReconstruction ∧
  P.integrabilityCondition ∧ P.fourierInversion

theorem inversion_theorem_closed_from_evidence
    {C : CharacteristicFunctionTransformPackage}
    {I : CharacteristicFunctionTransformEvidence C}
    (P : InversionTheoremPackage I)
    (E : InversionTheoremEvidence P) : InversionTheoremClosed P := by
  exact And.intro E.inversionFormulaClosed
    (And.intro E.densityReconstructionClosed
      (And.intro E.integrabilityConditionClosed E.fourierInversionClosed))

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse