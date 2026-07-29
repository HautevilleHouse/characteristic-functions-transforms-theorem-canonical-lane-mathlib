import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure InversionPackage where
  characteristicFunction : Type u
  densityFunction : Type v
  inversionTheorem : Prop
  continuityCorollaries : Prop
  integrabilityCondition : Prop

structure InversionEvidence (I : InversionPackage) where
  inversionTheoremClosed : I.inversionTheorem
  continuityCorollariesClosed : I.continuityCorollaries
  integrabilityConditionClosed : I.integrabilityCondition

def InversionClosed (I : InversionPackage) : Prop :=
  I.inversionTheorem ∧ I.continuityCorollaries ∧ I.integrabilityCondition

theorem inversion_closed_from_evidence (I : InversionPackage) (E : InversionEvidence I) :
    InversionClosed I := by
  exact And.intro E.inversionTheoremClosed (And.intro E.continuityCorollariesClosed E.integrabilityConditionClosed)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse