import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure LevyContinuityPackage where
  pointwiseConvergence : Prop
  continuityAtZero : Prop
  weakConvergenceConclusion : Prop
  tightnessCondition : Prop

def LevyContinuityClosed (L : LevyContinuityPackage) : Prop :=
  L.pointwiseConvergence ∧ L.continuityAtZero ∧ L.weakConvergenceConclusion ∧ L.tightnessCondition

theorem levy_continuity_closed (L : LevyContinuityPackage) (h : L.pointwiseConvergence ∧ L.continuityAtZero ∧ L.weakConvergenceConclusion ∧ L.tightnessCondition) : LevyContinuityClosed L := h

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse