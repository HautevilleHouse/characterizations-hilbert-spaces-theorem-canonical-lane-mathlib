import canonicalLaneMathlib.AdmissibleClass
import CharacterizationsHilbertSpacesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def hilbertSpaceProjection : Projection HilbertSpaceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem hilbert_space_projection_idempotent (x : HilbertSpaceEndgameState) :
    hilbertSpaceProjection.toFun (hilbertSpaceProjection.toFun x) = hilbertSpaceProjection.toFun x := by
  exact hilbertSpaceProjection.idempotent x

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse