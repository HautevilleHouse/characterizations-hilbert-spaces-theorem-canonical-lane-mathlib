import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

def ConstrainedCharacterizationsHilbertSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_characterizations_hilbert_spaces_endgame (A : AdmissibleClass) :
    ConstrainedCharacterizationsHilbertSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse