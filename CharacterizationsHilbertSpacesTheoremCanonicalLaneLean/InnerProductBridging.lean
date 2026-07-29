import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure InnerProductBridgingPackage (A : AdmissibleClass) where
  innerProductDefined : Prop
  parallelogramLaw : Prop
  polarizationIdentity : Prop
  innerProductDefinedTerm : innerProductDefined
  parallelogramLawTerm : parallelogramLaw
  polarizationIdentityTerm : polarizationIdentity

structure InnerProductBridgingEvidence {A : AdmissibleClass} (P : InnerProductBridgingPackage A) where
  innerProductDefinedClosed : P.innerProductDefined
  parallelogramLawClosed : P.parallelogramLaw
  polarizationIdentityClosed : P.polarizationIdentity

def InnerProductBridgingClosed {A : AdmissibleClass} (P : InnerProductBridgingPackage A) : Prop :=
  P.innerProductDefined ∧ P.parallelogramLaw ∧ P.polarizationIdentity

theorem inner_product_bridging_closed_from_evidence
    {A : AdmissibleClass} (P : InnerProductBridgingPackage A)
    (E : InnerProductBridgingEvidence P) : InnerProductBridgingClosed P := by
  exact And.intro E.innerProductDefinedClosed
    (And.intro E.parallelogramLawClosed E.polarizationIdentityClosed)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse
