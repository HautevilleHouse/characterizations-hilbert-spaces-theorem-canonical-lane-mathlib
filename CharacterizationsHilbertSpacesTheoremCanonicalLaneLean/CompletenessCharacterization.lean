import canonicalLaneMathlib.AdmissibleClass
import CharacterizationsHilbertSpacesTheoremCanonicalLaneLean.InnerProductStructure
import Mathlib.Analysis.NormedSpace.Banach

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure CompletenessCharacterizationPackage {P : InnerProductStructurePackage}
    (IP : P) where
  completeSpace : Prop
  closedBoundedComplete : Prop
  orthogonalProjectionExists : Prop

structure CompletenessCharacterizationEvidence {P : InnerProductStructurePackage}
    {IP : P} (C : CompletenessCharacterizationPackage IP) where
  completeSpaceClosed : C.completeSpace
  closedBoundedCompleteClosed : C.closedBoundedComplete
  orthogonalProjectionExistsClosed : C.orthogonalProjectionExists

def CompletenessCharacterizationClosed {P : InnerProductStructurePackage}
    {IP : P} (C : CompletenessCharacterizationPackage IP) : Prop :=
  C.completeSpace ∧ C.closedBoundedComplete ∧ C.orthogonalProjectionExists

theorem completeness_characterization_closed_from_evidence
    {P : InnerProductStructurePackage} {IP : P}
    (C : CompletenessCharacterizationPackage IP)
    (E : CompletenessCharacterizationEvidence C) : CompletenessCharacterizationClosed C := by
  exact And.intro E.completeSpaceClosed
    (And.intro E.closedBoundedCompleteClosed E.orthogonalProjectionExistsClosed)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse