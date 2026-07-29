import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure RieszRepresentationPackage where
  boundedLinearFunctional : Prop
  uniqueRepresentingVector : Prop
  rieszMapIsIsometric : Prop
  rieszMapIsSurjective : Prop
  sesquilinearFormRepresentation : Prop

structure RieszRepresentationEvidence (R : RieszRepresentationPackage) where
  boundedLinearFunctionalClosed : R.boundedLinearFunctional
  uniqueRepresentingVectorClosed : R.uniqueRepresentingVector
  rieszMapIsIsometricClosed : R.rieszMapIsIsometric
  rieszMapIsSurjectiveClosed : R.rieszMapIsSurjective
  sesquilinearFormRepresentationClosed : R.sesquilinearFormRepresentation

def RieszRepresentationClosed (R : RieszRepresentationPackage) : Prop :=
  R.boundedLinearFunctional ∧ R.uniqueRepresentingVector ∧
  R.rieszMapIsIsometric ∧ R.rieszMapIsSurjective ∧ R.sesquilinearFormRepresentation

theorem riesz_representation_closed_from_evidence
    (R : RieszRepresentationPackage) (E : RieszRepresentationEvidence R) :
    RieszRepresentationClosed R := by
  exact And.intro E.boundedLinearFunctionalClosed
    (And.intro E.uniqueRepresentingVectorClosed
      (And.intro E.rieszMapIsIsometricClosed
        (And.intro E.rieszMapIsSurjectiveClosed
          E.sesquilinearFormRepresentationClosed)))

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse