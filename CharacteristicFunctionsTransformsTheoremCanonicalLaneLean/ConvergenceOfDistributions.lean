import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure ConvergencePackage where
  sequenceOfDistributions : Type u
  limitDistribution : Type v
  pointwiseConvergenceCharFunc : Prop
  continuityTheorem : Prop
  levyContinuityTheorem : Prop

structure ConvergenceEvidence (C : ConvergencePackage) where
  pointwiseConvergenceCharFuncClosed : C.pointwiseConvergenceCharFunc
  continuityTheoremClosed : C.continuityTheorem
  levyContinuityTheoremClosed : C.levyContinuityTheorem

def ConvergenceClosed (C : ConvergencePackage) : Prop :=
  C.pointwiseConvergenceCharFunc ∧ C.continuityTheorem ∧ C.levyContinuityTheorem

theorem convergence_closed_from_evidence (C : ConvergencePackage) (E : ConvergenceEvidence C) :
    ConvergenceClosed C := by
  exact And.intro E.pointwiseConvergenceCharFuncClosed (And.intro E.continuityTheoremClosed E.levyContinuityTheoremClosed)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse