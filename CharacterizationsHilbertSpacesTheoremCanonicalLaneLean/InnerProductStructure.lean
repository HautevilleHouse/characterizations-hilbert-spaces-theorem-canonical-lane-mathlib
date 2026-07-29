import canonicalLaneMathlib.AdmissibleClass
import CharacterizationsHilbertSpacesTheoremCanonicalLaneLean.MathlibObjects
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure InnerProductStructurePackage where
  vectorSpace : Type u
  normedAddCommGroup : NormedAddCommGroup vectorSpace
  innerProduct : InnerProductSpace ℝ vectorSpace
  parallelogramLaw : Prop
  innerProductInducesNorm : Prop
  continuityOfInner : Prop

structure InnerProductStructureEvidence (P : InnerProductStructurePackage) where
  parallelogramLawClosed : P.parallelogramLaw
  innerProductInducesNormClosed : P.innerProductInducesNorm
  continuityOfInnerClosed : P.continuityOfInner

def InnerProductStructureClosed (P : InnerProductStructurePackage) : Prop :=
  P.parallelogramLaw ∧ P.innerProductInducesNorm ∧ P.continuityOfInner

theorem inner_product_structure_closed_from_evidence (P : InnerProductStructurePackage)
    (E : InnerProductStructureEvidence P) : InnerProductStructureClosed P := by
  exact And.intro E.parallelogramLawClosed
    (And.intro E.innerProductInducesNormClosed E.continuityOfInnerClosed)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse