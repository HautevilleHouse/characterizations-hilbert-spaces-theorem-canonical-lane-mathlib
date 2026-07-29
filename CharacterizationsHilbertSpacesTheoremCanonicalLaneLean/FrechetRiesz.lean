import canonicalLaneMathlib.AdmissibleClass
import CharacterizationsHilbertSpacesTheoremCanonicalLaneLean.HilbertSpaceObject

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure FrechetRieszPackage (H : HilbertSpace) where
  dualSpace : Type
  dualSpaceIsBanach : Prop
  representationMap : H.carrier → dualSpace
  linearIsometry : ∀ x y : H.carrier, representationMap (x + y) = representationMap x + representationMap y ∧ ∀ α : ℝ, representationMap (α • x) = α • representationMap x
  normPreserving : ∀ x : H.carrier, ‖representationMap x‖ = H.norm x
  surjectivity : ∀ f : dualSpace, ∃ x : H.carrier, f = representationMap x

structure FrechetRieszEvidence {H : HilbertSpace} (P : FrechetRieszPackage H) where
  representationMapClosed : P.linearIsometry
  normPreservingClosed : P.normPreserving
  surjectivityClosed : P.surjectivity

def FrechetRieszClosed {H : HilbertSpace} (P : FrechetRieszPackage H) : Prop :=
  P.linearIsometry ∧ P.normPreserving ∧ P.surjectivity

theorem frechet_riesz_closed_from_evidence {H : HilbertSpace} (P : FrechetRieszPackage H) (E : FrechetRieszEvidence P) : FrechetRieszClosed P :=
  And.intro E.representationMapClosed (And.intro E.normPreservingClosed E.surjectivityClosed)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse