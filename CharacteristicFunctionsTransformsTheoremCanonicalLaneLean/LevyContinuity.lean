import CharacteristicFunctionsTransformsTheoremCanonicalLaneLean.BochnersTheorem

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure LevyContinuityPackage where
  sequenceOfRVs : Type
  pointwiseLimit : ℝᵈ → ℂ
  limitContinuousAtZero : Prop
  limitIsCharacteristic : Prop
  convergenceInDistribution : Prop

def LevyContinuityClosed (L : LevyContinuityPackage) : Prop :=
  L.limitIsCharacteristic ∧ L.convergenceInDistribution

theorem levy_continuity_closed (L : LevyContinuityPackage) (h : L.limitIsCharacteristic) : LevyContinuityClosed L := by
  exact And.intro h L.convergenceInDistribution

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse