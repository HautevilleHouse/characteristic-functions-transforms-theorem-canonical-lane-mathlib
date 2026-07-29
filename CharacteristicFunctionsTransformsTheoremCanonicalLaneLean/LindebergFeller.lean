import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure LindebergFellerPackage where
  triangularArray : Type u
  infinitesimalityCondition : Prop
  limitingDistribution : Prop
  characteristicFunctionConvergence : Prop
  centeringScaling : Prop

structure LindebergFellerEvidence (L : LindebergFellerPackage) where
  infinitesimalityConditionClosed : L.infinitesimalityCondition
  limitingDistributionClosed : L.limitingDistribution
  characteristicFunctionConvergenceClosed : L.characteristicFunctionConvergence
  centeringScalingClosed : L.centeringScaling

def LindebergFellerClosed (L : LindebergFellerPackage) : Prop :=
  L.infinitesimalityCondition ∧ L.limitingDistribution ∧
  L.characteristicFunctionConvergence ∧ L.centeringScaling

theorem lindeberg_feller_closed_from_evidence
    (L : LindebergFellerPackage) (E : LindebergFellerEvidence L) :
    LindebergFellerClosed L := by
  exact And.intro E.infinitesimalityConditionClosed
    (And.intro E.limitingDistributionClosed
      (And.intro E.characteristicFunctionConvergenceClosed
        E.centeringScalingClosed))

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse