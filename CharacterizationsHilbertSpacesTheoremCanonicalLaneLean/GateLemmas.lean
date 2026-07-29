import canonicalLaneMathlib.AdmissibleClass
import CharacterizationsHilbertSpacesTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse