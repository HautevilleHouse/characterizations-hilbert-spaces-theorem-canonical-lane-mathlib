import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure CompleteOrthonormalBasisPackage where
  orthonormalSystem : Prop
  maximalOrthonormalSet : Prop
  spanDense : Prop
  fourierExpansion : Prop
  parsevalIdentity : Prop
  basisIsomorphism : Prop

structure CompleteOrthonormalBasisEvidence (B : CompleteOrthonormalBasisPackage) where
  orthonormalSystemClosed : B.orthonormalSystem
  maximalOrthonormalSetClosed : B.maximalOrthonormalSet
  spanDenseClosed : B.spanDense
  fourierExpansionClosed : B.fourierExpansion
  parsevalIdentityClosed : B.parsevalIdentity
  basisIsomorphismClosed : B.basisIsomorphism

def CompleteOrthonormalBasisClosed (B : CompleteOrthonormalBasisPackage) : Prop :=
  B.orthonormalSystem ∧ B.maximalOrthonormalSet ∧ B.spanDense ∧
  B.fourierExpansion ∧ B.parsevalIdentity ∧ B.basisIsomorphism

theorem complete_orthonormal_basis_closed_from_evidence
    (B : CompleteOrthonormalBasisPackage) (E : CompleteOrthonormalBasisEvidence B) :
    CompleteOrthonormalBasisClosed B := by
  exact And.intro E.orthonormalSystemClosed
    (And.intro E.maximalOrthonormalSetClosed
      (And.intro E.spanDenseClosed
        (And.intro E.fourierExpansionClosed
          (And.intro E.parsevalIdentityClosed
            E.basisIsomorphismClosed))))

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse