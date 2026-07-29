import canonicalLaneMathlib.AdmissibleClass
import CharacterizationsHilbertSpacesTheoremCanonicalLaneLean.HilbertSpaceObject

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure SpaceCharacterizationPackage where
  spaceIsHilbert : Prop
  normDerivedFromInnerProduct : Prop
  parallelogramLaw : Prop
  polarizationIdentity : Prop
  completenessOfNorm : Prop

structure SpaceCharacterizationEvidence (P : SpaceCharacterizationPackage) where
  spaceIsHilbertClosed : P.spaceIsHilbert
  normDerivedFromInnerProductClosed : P.normDerivedFromInnerProduct
  parallelogramLawClosed : P.parallelogramLaw
  polarizationIdentityClosed : P.polarizationIdentity
  completenessOfNormClosed : P.completenessOfNorm

def SpaceCharacterizationClosed (P : SpaceCharacterizationPackage) : Prop :=
  P.spaceIsHilbert ∧ P.normDerivedFromInnerProduct ∧ P.parallelogramLaw ∧ P.polarizationIdentity ∧ P.completenessOfNorm

theorem space_characterization_closed_from_evidence (P : SpaceCharacterizationPackage) (E : SpaceCharacterizationEvidence P) : SpaceCharacterizationClosed P :=
  And.intro E.spaceIsHilbertClosed (And.intro E.normDerivedFromInnerProductClosed (And.intro E.parallelogramLawClosed (And.intro E.polarizationIdentityClosed E.completenessOfNormClosed)))

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse