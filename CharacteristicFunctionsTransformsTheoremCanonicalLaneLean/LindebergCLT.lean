import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure LindebergPackage where
  independentSummands : Type u
  lindebergCondition : Prop
  normalApproximation : Prop
  characteristicFunctionProof : Prop

structure LindebergEvidence (L : LindebergPackage) where
  lindebergConditionClosed : L.lindebergCondition
  normalApproximationClosed : L.normalApproximation
  characteristicFunctionProofClosed : L.characteristicFunctionProof

def LindebergClosed (L : LindebergPackage) : Prop :=
  L.lindebergCondition ∧ L.normalApproximation ∧ L.characteristicFunctionProof

theorem lindeberg_closed_from_evidence (L : LindebergPackage) (E : LindebergEvidence L) :
    LindebergClosed L := by
  exact And.intro E.lindebergConditionClosed (And.intro E.normalApproximationClosed E.characteristicFunctionProofClosed)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse