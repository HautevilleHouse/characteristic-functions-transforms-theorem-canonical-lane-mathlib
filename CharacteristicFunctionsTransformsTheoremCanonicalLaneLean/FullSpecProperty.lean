import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure FullSpecPropertyPackage where
  domain : Type
  measure : Type
  characteristicFunction : Type
  boundedness : Prop
  continuity : Prop
  nonnegativeDefiniteness : Prop
  inversionFormula : Prop
  uniqueness : Prop

structure FullSpecPropertyEvidence (P : FullSpecPropertyPackage) where
  boundednessClosed : P.boundedness
  continuityClosed : P.continuity
  nonnegativeDefinitenessClosed : P.nonnegativeDefiniteness
  inversionFormulaClosed : P.inversionFormula
  uniquenessClosed : P.uniqueness

def FullSpecPropertyClosed (P : FullSpecPropertyPackage) : Prop :=
  P.boundedness ∧ P.continuity ∧ P.nonnegativeDefiniteness ∧ P.inversionFormula ∧ P.uniqueness

theorem full_spec_property_closed_from_evidence (P : FullSpecPropertyPackage)
    (E : FullSpecPropertyEvidence P) : FullSpecPropertyClosed P := by
  exact And.intro E.boundednessClosed (And.intro E.continuityClosed
    (And.intro E.nonnegativeDefinitenessClosed (And.intro E.inversionFormulaClosed E.uniquenessClosed)))

end HautevilleHouse
end HautevilleHouse