import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure InversionFormulasPackage where
  charFunc : Type
  density : Type
  levyInversion : Prop
  gilPelaezInversion : Prop
  integrabilityCondition : Prop

structure InversionFormulasEvidence (I : InversionFormulasPackage) where
  levyInversionClosed : I.levyInversion
  gilPelaezInversionClosed : I.gilPelaezInversion
  integrabilityConditionClosed : I.integrabilityCondition

def InversionFormulasClosed (I : InversionFormulasPackage) : Prop :=
  I.levyInversion ∧ I.gilPelaezInversion ∧ I.integrabilityCondition

theorem inversion_formulas_closed_from_evidence (I : InversionFormulasPackage)
    (E : InversionFormulasEvidence I) : InversionFormulasClosed I := by
  exact And.intro E.levyInversionClosed (And.intro E.gilPelaezInversionClosed E.integrabilityConditionClosed)

end HautevilleHouse
end HautevilleHouse