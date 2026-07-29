import CharacteristicFunctionsTransformsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Probability.Characteristic

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ProbabilitySpace where
  carrier : Type
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasure : carrier → ℝ

structure CharacteristicFunction where
  space : ProbabilitySpace
  randomVector : carrier → ℝᵈ
  cfDefined : Prop
  cfContinuous : Prop
  cfBounded : Prop
  cfPositiveDefinite : Prop

structure CharacteristicFunctionAdmittedObject where
  cf : CharacteristicFunction
  fourierInversionHolds : Prop
  conclusion : fourierInversionHolds

def CharacteristicFunctionClosed (O : CharacteristicFunctionAdmittedObject) : Prop :=
  O.fourierInversionHolds

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse