import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure InnerProductSpaceCharacterizationPackage where
  parallelogramLaw : Prop
  polarizationIdentity : Prop
  jordanVonNeumannTheorem : Prop
  normDerivedFromInnerProduct : Prop
  cauchySchwarzInequality : Prop
  triangleEqualityCase : Prop

structure InnerProductSpaceCharacterizationEvidence (C : InnerProductSpaceCharacterizationPackage) where
  parallelogramLawClosed : C.parallelogramLaw
  polarizationIdentityClosed : C.polarizationIdentity
  jordanVonNeumannTheoremClosed : C.jordanVonNeumannTheorem
  normDerivedFromInnerProductClosed : C.normDerivedFromInnerProduct
  cauchySchwarzInequalityClosed : C.cauchySchwarzInequality
  triangleEqualityCaseClosed : C.triangleEqualityCase

def InnerProductSpaceCharacterizationClosed (C : InnerProductSpaceCharacterizationPackage) : Prop :=
  C.parallelogramLaw ∧ C.polarizationIdentity ∧ C.jordanVonNeumannTheorem ∧
  C.normDerivedFromInnerProduct ∧ C.cauchySchwarzInequality ∧ C.triangleEqualityCase

theorem inner_product_space_characterization_closed_from_evidence
    (C : InnerProductSpaceCharacterizationPackage)
    (E : InnerProductSpaceCharacterizationEvidence C) :
    InnerProductSpaceCharacterizationClosed C := by
  exact And.intro E.parallelogramLawClosed
    (And.intro E.polarizationIdentityClosed
      (And.intro E.jordanVonNeumannTheoremClosed
        (And.intro E.normDerivedFromInnerProductClosed
          (And.intro E.cauchySchwarzInequalityClosed
            E.triangleEqualityCaseClosed))))

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse