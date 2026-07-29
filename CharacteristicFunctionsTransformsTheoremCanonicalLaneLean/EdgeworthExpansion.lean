import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsTheoremCanonicalLaneLean

structure EdgeworthExpansionPackage where
  distribution : Type
  cumulants : Type
  expansionSeries : Type
  asymptoticValidity : Prop
  errorBound : Prop

structure EdgeworthExpansionEvidence (E : EdgeworthExpansionPackage) where
  asymptoticValidityClosed : E.asymptoticValidity
  errorBoundClosed : E.errorBound

def EdgeworthExpansionClosed (E : EdgeworthExpansionPackage) : Prop :=
  E.asymptoticValidity ∧ E.errorBound

theorem edgeworth_expansion_closed_from_evidence (E : EdgeworthExpansionPackage)
    (Ev : EdgeworthExpansionEvidence E) : EdgeworthExpansionClosed E := by
  exact And.intro Ev.asymptoticValidityClosed Ev.errorBoundClosed

end HautevilleHouse
end HautevilleHouse