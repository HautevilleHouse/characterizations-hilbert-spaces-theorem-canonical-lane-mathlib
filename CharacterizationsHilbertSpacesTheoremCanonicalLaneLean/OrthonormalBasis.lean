import canonicalLaneMathlib.AdmissibleClass
import CharacterizationsHilbertSpacesTheoremCanonicalLaneLean.HilbertSpaceObject

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure OrthonormalBasisPackage (H : HilbertSpace) where
  basisSet : Set H.carrier
  orthonormality : ∀ v ∈ basisSet, H.innerProduct v v = 1 ∧ (∀ w ∈ basisSet, v ≠ w → H.innerProduct v w = 0)
  completeness : ∀ x : H.carrier, ∃ (series : ℕ → H.carrier) (coeffs : ℕ → ℝ), (∀ n, series n ∈ basisSet) ∧ (∀ n, coeffs n = H.innerProduct x (series n)) ∧ (∀ ε > 0, ∃ N, ∀ m ≥ N, H.norm (x - ∑ i in Finset.range m, (coeffs i) • series i) < ε)

structure OrthonormalBasisEvidence {H : HilbertSpace} (P : OrthonormalBasisPackage H) where
  basisClosed : P.orthonormality
  completenessClosed : P.completeness

def OrthonormalBasisClosed {H : HilbertSpace} (P : OrthonormalBasisPackage H) : Prop :=
  P.orthonormality ∧ P.completeness

theorem orthonormal_basis_closed_from_evidence {H : HilbertSpace} (P : OrthonormalBasisPackage H) (E : OrthonormalBasisEvidence P) : OrthonormalBasisClosed P :=
  And.intro E.basisClosed E.completenessClosed

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse