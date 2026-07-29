import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.NormedSpace.Banach
import Mathlib.Topology.MetricSpace.Basic

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

open Complex

structure HilbertSpaceCandidate where
  carrier : Type u
  normedAddCommGroup : NormedAddCommGroup carrier
  innerProductSpace : InnerProductSpace ℝ carrier
  complete : CompleteSpace carrier

structure HilbertSpaceAdmittedObject where
  space : HilbertSpaceCandidate
  separable : Prop
  infiniteDimensional : Prop
  isHilbertSpace : Prop
  conclusion : isHilbertSpace

structure HilbertSpaceEndgameState where
  object : HilbertSpaceAdmittedObject

def HilbertSpaceWitnessClosed (O : HilbertSpaceAdmittedObject) : Prop :=
  O.isHilbertSpace

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse