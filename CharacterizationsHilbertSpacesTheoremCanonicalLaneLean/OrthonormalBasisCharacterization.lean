import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure OrthonormalBasisCondition where
  separable : Prop
  orthonormalBasisExists : Prop
  orthonormalBasisComplete : Prop
  basisCardinality : Prop

structure OrthonormalBasisEvidence (C : OrthonormalBasisCondition) where
  separableClosed : C.separable
  orthonormalBasisExistsClosed : C.orthonormalBasisExists
  orthonormalBasisCompleteClosed : C.orthonormalBasisComplete
  basisCardinalityClosed : C.basisCardinality

def OrthonormalBasisConditionClosed (C : OrthonormalBasisCondition) : Prop :=
  C.separable ∧ C.orthonormalBasisExists ∧ C.orthonormalBasisComplete ∧ C.basisCardinality

theorem orthonormal_basis_condition_closed_from_evidence
    (C : OrthonormalBasisCondition) (E : OrthonormalBasisEvidence C) :
    OrthonormalBasisConditionClosed C := by
  exact And.intro E.separableClosed
    (And.intro E.orthonormalBasisExistsClosed
      (And.intro E.orthonormalBasisCompleteClosed E.basisCardinalityClosed))

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse