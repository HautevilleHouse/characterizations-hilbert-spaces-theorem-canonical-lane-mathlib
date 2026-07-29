import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure InnerProductSpaceCharacterizationPackage where
  vectorSpace : Type u
  norm : vectorSpace → ℝ
  normSatisfiesParallelogramLaw : Prop
  inducesInnerProduct : Prop
  innerProductCompatible : Prop

structure InnerProductSpaceCharacterizationEvidence (P : InnerProductSpaceCharacterizationPackage) where
  normSatisfiesParallelogramLawClosed : P.normSatisfiesParallelogramLaw
  inducesInnerProductClosed : P.inducesInnerProduct
  innerProductCompatibleClosed : P.innerProductCompatible

def InnerProductSpaceCharacterizationClosed (P : InnerProductSpaceCharacterizationPackage) : Prop :=
  P.normSatisfiesParallelogramLaw ∧ P.inducesInnerProduct ∧ P.innerProductCompatible

theorem inner_product_space_characterization_closed_from_evidence
    (P : InnerProductSpaceCharacterizationPackage)
    (E : InnerProductSpaceCharacterizationEvidence P) :
    InnerProductSpaceCharacterizationClosed P := by
  exact And.intro E.normSatisfiesParallelogramLawClosed
    (And.intro E.inducesInnerProductClosed E.innerProductCompatibleClosed)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse