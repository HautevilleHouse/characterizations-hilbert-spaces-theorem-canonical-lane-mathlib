import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure ClosedSubspacesProjectionsPackage (A : AdmissibleClass) where
  orthogonalProjectionExists : Prop
  decompositionTheorem : Prop
  closedSubspaceCharacterization : Prop
  orthogonalProjectionExistsTerm : orthogonalProjectionExists
  decompositionTheoremTerm : decompositionTheorem
  closedSubspaceCharacterizationTerm : closedSubspaceCharacterization

structure ClosedSubspacesProjectionsEvidence {A : AdmissibleClass}
    (C : ClosedSubspacesProjectionsPackage A) where
  orthogonalProjectionExistsClosed : C.orthogonalProjectionExists
  decompositionTheoremClosed : C.decompositionTheorem
  closedSubspaceCharacterizationClosed : C.closedSubspaceCharacterization

def ClosedSubspacesProjectionsClosed {A : AdmissibleClass}
    (C : ClosedSubspacesProjectionsPackage A) : Prop :=
  C.orthogonalProjectionExists ∧ C.decompositionTheorem ∧ C.closedSubspaceCharacterization

theorem closed_subspaces_projections_closed_from_evidence
    {A : AdmissibleClass} (C : ClosedSubspacesProjectionsPackage A)
    (E : ClosedSubspacesProjectionsEvidence C) : ClosedSubspacesProjectionsClosed C := by
  exact And.intro E.orthogonalProjectionExistsClosed
    (And.intro E.decompositionTheoremClosed E.closedSubspaceCharacterizationClosed)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse
