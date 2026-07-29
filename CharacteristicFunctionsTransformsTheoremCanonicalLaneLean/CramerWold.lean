import CharacteristicFunctionsTransformsTheoremCanonicalLaneLean.LevyContinuity

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure CramerWoldPackage where
  randomVector : Type
  linearCombinations : Type
  cfOfLinearCombinations : Type
  jointDistributionDetermined : Prop

def CramerWoldClosed (C : CramerWoldPackage) : Prop :=
  C.jointDistributionDetermined

theorem cramer_wold_closed (C : CramerWoldPackage) (h : C.jointDistributionDetermined) : CramerWoldClosed C := h

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse