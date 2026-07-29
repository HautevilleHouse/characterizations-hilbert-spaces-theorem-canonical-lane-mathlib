import canonicalLaneMathlib.AdmissibleClass
import CharacterizationsHilbertSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HilbertSpaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse