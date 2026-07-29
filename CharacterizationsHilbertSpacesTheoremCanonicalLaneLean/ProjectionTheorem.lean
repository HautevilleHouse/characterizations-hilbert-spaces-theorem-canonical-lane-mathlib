import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure ProjectionTheoremPackage where
  hilbertSpace : Type u
  innerProduct : hilbertSpace → hilbertSpace → ℝ
  closedSubspace : Set hilbertSpace
  orthogonalProjection : hilbertSpace → hilbertSpace
  projectionIsLinear : Prop
  projectionIsSelfAdjoint : Prop
  projectionIsIdempotent : Prop
  projectionRangeIsSubspace : Prop

structure ProjectionTheoremEvidence (P : ProjectionTheoremPackage) where
  projectionIsLinearClosed : P.projectionIsLinear
  projectionIsSelfAdjointClosed : P.projectionIsSelfAdjoint
  projectionIsIdempotentClosed : P.projectionIsIdempotent
  projectionRangeIsSubspaceClosed : P.projectionRangeIsSubspace

def ProjectionTheoremClosed (P : ProjectionTheoremPackage) : Prop :=
  P.projectionIsLinear ∧ P.projectionIsSelfAdjoint ∧ P.projectionIsIdempotent ∧ P.projectionRangeIsSubspace

theorem projection_theorem_closed_from_evidence
    (P : ProjectionTheoremPackage) (E : ProjectionTheoremEvidence P) :
    ProjectionTheoremClosed P := by
  exact And.intro E.projectionIsLinearClosed
    (And.intro E.projectionIsSelfAdjointClosed
      (And.intro E.projectionIsIdempotentClosed E.projectionRangeIsSubspaceClosed))

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse