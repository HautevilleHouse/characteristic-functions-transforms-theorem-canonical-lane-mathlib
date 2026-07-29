import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure CharacteristicFunctionPackage where
  randomVariable : Type u
  distribution : Type v
  characteristicFunction : Type w
  existence : Prop
  uniqueness : Prop
  continuityAtZero : Prop

structure CharacteristicFunctionEvidence (C : CharacteristicFunctionPackage) where
  existenceClosed : C.existence
  uniquenessClosed : C.uniqueness
  continuityAtZeroClosed : C.continuityAtZero

def CharacteristicFunctionClosed (C : CharacteristicFunctionPackage) : Prop :=
  C.existence ∧ C.uniqueness ∧ C.continuityAtZero

theorem characteristic_function_closed_from_evidence (C : CharacteristicFunctionPackage) (E : CharacteristicFunctionEvidence C) :
    CharacteristicFunctionClosed C := by
  exact And.intro E.existenceClosed (And.intro E.uniquenessClosed E.continuityAtZeroClosed)

end CharacteristicFunctionsTransformsTheoremCanonicalLaneLean
end HautevilleHouse