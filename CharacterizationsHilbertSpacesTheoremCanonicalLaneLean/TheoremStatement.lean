import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure HilbertSpaceAdmittedObject where
  space : Type
  innerProduct : Prop
  complete : Prop
  separable : Prop
  conclusion : Prop

def HilbertSpaceWitnessClosed (O : HilbertSpaceAdmittedObject) : Prop :=
  O.conclusion

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  hilbertSpaceConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse