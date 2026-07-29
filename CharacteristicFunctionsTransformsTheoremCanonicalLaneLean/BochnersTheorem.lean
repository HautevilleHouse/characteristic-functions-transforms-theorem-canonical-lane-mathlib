import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure BochnersTheoremPackage where
  positiveDefiniteFunction : Type u → Prop
  characteristicFunction : Type u → Prop
  equivalence : Prop
  continuityCondition : Prop
  fourierTransformRepresentation : Prop

structure BochnersTheoremEvidence (B : BochnersTheoremPackage) where
  equivalenceClosed : B.equivalence
  continuityConditionClosed : B.continuityCondition
  fourierTransformRepresentationClosed : B.fourierTransformRepresentation

def BochnersTheoremClosed (B : BochnersTheoremPackage) : Prop :=
  B.equivalence ∧ B.continuityCondition ∧ B.fourierTransformRepresentation

theorem bochners_theorem_closed_from_evidence
    (B : BochnersTheoremPackage) (E : BochnersTheoremEvidence B) :
    BochnersTheoremClosed B := by
  exact And.intro E.equivalenceClosed
    (And.intro E.continuityConditionClosed E.fourierTransformRepresentationClosed)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse