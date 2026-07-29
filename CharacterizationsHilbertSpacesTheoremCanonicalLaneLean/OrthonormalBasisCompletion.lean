import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure OrthonormalBasisCompletionPackage (A : AdmissibleClass) where
  orthonormalBasisExists : Prop
  gramSchmidtProcedure : Prop
  basisExpansion : Prop
  orthonormalBasisExistsTerm : orthonormalBasisExists
  gramSchmidtProcedureTerm : gramSchmidtProcedure
  basisExpansionTerm : basisExpansion

structure OrthonormalBasisCompletionEvidence {A : AdmissibleClass}
    (O : OrthonormalBasisCompletionPackage A) where
  orthonormalBasisExistsClosed : O.orthonormalBasisExists
  gramSchmidtProcedureClosed : O.gramSchmidtProcedure
  basisExpansionClosed : O.basisExpansion

def OrthonormalBasisCompletionClosed {A : AdmissibleClass}
    (O : OrthonormalBasisCompletionPackage A) : Prop :=
  O.orthonormalBasisExists ∧ O.gramSchmidtProcedure ∧ O.basisExpansion

theorem orthonormal_basis_completion_closed_from_evidence
    {A : AdmissibleClass} (O : OrthonormalBasisCompletionPackage A)
    (E : OrthonormalBasisCompletionEvidence O) : OrthonormalBasisCompletionClosed O := by
  exact And.intro E.orthonormalBasisExistsClosed
    (And.intro E.gramSchmidtProcedureClosed E.basisExpansionClosed)

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse
