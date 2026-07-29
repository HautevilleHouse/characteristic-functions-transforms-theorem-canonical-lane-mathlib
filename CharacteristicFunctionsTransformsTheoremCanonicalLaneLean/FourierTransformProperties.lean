import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure FourierTransformPackage where
  functionUnderTransform : Type u
  fourierTransform : Type v
  inversionFormula : Prop
  convolutionTheorem : Prop
  continuityProperties : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  inversionFormulaClosed : F.inversionFormula
  convolutionTheoremClosed : F.convolutionTheorem
  continuityPropertiesClosed : F.continuityProperties

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.inversionFormula ∧ F.convolutionTheorem ∧ F.continuityProperties

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.inversionFormulaClosed (And.intro E.convolutionTheoremClosed E.continuityPropertiesClosed)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse