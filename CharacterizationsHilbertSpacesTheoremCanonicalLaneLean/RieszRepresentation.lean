import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure RieszRepresentationPackage where
  hilbertSpace : Type u
  innerProduct : hilbertSpace → hilbertSpace → ℝ
  continuousDual : Type v
  rieszIsomorphism : continuousDual → hilbertSpace
  isomorphismIsLinear : Prop
  isomorphismIsIsometric : Prop
  isomorphismIsSurjective : Prop

structure RieszRepresentationEvidence (R : RieszRepresentationPackage) where
  isomorphismIsLinearClosed : R.isomorphismIsLinear
  isomorphismIsIsometricClosed : R.isomorphismIsIsometric
  isomorphismIsSurjectiveClosed : R.isomorphismIsSurjective

def RieszRepresentationClosed (R : RieszRepresentationPackage) : Prop :=
  R.isomorphismIsLinear ∧ R.isomorphismIsIsometric ∧ R.isomorphismIsSurjective

theorem riesz_representation_closed_from_evidence
    (R : RieszRepresentationPackage) (E : RieszRepresentationEvidence R) :
    RieszRepresentationClosed R := by
  exact And.intro E.isomorphismIsLinearClosed
    (And.intro E.isomorphismIsIsometricClosed E.isomorphismIsSurjectiveClosed)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse