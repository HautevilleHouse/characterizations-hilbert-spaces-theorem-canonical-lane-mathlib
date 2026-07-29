import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure HilbertSpaceBasisPackage where
  hilbertSpace : Type u
  innerProduct : hilbertSpace → hilbertSpace → ℝ
  orthonormalBasis : Set hilbertSpace
  basisIsOrthonormal : Prop
  basisIsComplete : Prop
  basisIsMaximal : Prop

structure HilbertSpaceBasisEvidence (B : HilbertSpaceBasisPackage) where
  basisIsOrthonormalClosed : B.basisIsOrthonormal
  basisIsCompleteClosed : B.basisIsComplete
  basisIsMaximalClosed : B.basisIsMaximal

def HilbertSpaceBasisClosed (B : HilbertSpaceBasisPackage) : Prop :=
  B.basisIsOrthonormal ∧ B.basisIsComplete ∧ B.basisIsMaximal

theorem hilbert_space_basis_closed_from_evidence
    (B : HilbertSpaceBasisPackage) (E : HilbertSpaceBasisEvidence B) :
    HilbertSpaceBasisClosed B := by
  exact And.intro E.basisIsOrthonormalClosed
    (And.intro E.basisIsCompleteClosed E.basisIsMaximalClosed)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse