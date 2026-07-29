import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : HilbertSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HilbertSpaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse