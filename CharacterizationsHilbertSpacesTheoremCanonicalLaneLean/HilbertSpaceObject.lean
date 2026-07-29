import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure HilbertSpace where
  carrier : Type
  innerProduct : carrier → carrier → ℝ
  norm : carrier → ℝ
  completeness : Prop
  innerProductPositiveDefinite : Prop
  innerProductLinearInFirst : Prop
  normFromInnerProduct : ∀ x : carrier, norm x = Real.sqrt (innerProduct x x)

structure HilbertAdmittedObject where
  space : HilbertSpace
  characterizationSatisfied : Prop
  conclusion : characterizationSatisfied

def HilbertWitnessClosed (O : HilbertAdmittedObject) : Prop :=
  O.characterizationSatisfied

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse