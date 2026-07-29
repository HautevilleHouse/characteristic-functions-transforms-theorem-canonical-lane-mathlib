import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure CramerWoldPackage where
  linearCombinationCondition : Prop
  jointDistributionDetermined : Prop

def CramerWoldClosed (C : CramerWoldPackage) : Prop :=
  C.linearCombinationCondition ∧ C.jointDistributionDetermined

theorem cramer_wold_closed (C : CramerWoldPackage) (h : C.linearCombinationCondition ∧ C.jointDistributionDetermined) : CramerWoldClosed C := h

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse