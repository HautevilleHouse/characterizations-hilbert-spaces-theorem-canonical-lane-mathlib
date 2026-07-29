import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure ClosedSubspaceProjectionPackage where
  orthogonalComplement : Prop
  projectionOperator : Prop
  minimalNormElement : Prop
  orthogonalDecomposition : Prop
  projectionIsLinear : Prop
  projectionIsIdempotent : Prop

structure ClosedSubspaceProjectionEvidence (P : ClosedSubspaceProjectionPackage) where
  orthogonalComplementClosed : P.orthogonalComplement
  projectionOperatorClosed : P.projectionOperator
  minimalNormElementClosed : P.minimalNormElement
  orthogonalDecompositionClosed : P.orthogonalDecomposition
  projectionIsLinearClosed : P.projectionIsLinear
  projectionIsIdempotentClosed : P.projectionIsIdempotent

def ClosedSubspaceProjectionClosed (P : ClosedSubspaceProjectionPackage) : Prop :=
  P.orthogonalComplement ∧ P.projectionOperator ∧ P.minimalNormElement ∧
  P.orthogonalDecomposition ∧ P.projectionIsLinear ∧ P.projectionIsIdempotent

theorem closed_subspace_projection_closed_from_evidence
    (P : ClosedSubspaceProjectionPackage) (E : ClosedSubspaceProjectionEvidence P) :
    ClosedSubspaceProjectionClosed P := by
  exact And.intro E.orthogonalComplementClosed
    (And.intro E.projectionOperatorClosed
      (And.intro E.minimalNormElementClosed
        (And.intro E.orthogonalDecompositionClosed
          (And.intro E.projectionIsLinearClosed
            E.projectionIsIdempotentClosed))))

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse