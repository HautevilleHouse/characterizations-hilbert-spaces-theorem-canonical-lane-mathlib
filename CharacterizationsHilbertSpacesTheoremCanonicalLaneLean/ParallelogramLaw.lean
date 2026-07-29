import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesTheoremCanonicalLaneLean

structure ParallelogramLawCondition where
  normedSpace : Prop
  parallelogramLawHolds : Prop
  innerProductExists : Prop
  innerProductCompatible : Prop
  normDerivedFromInnerProduct : Prop

structure ParallelogramLawEvidence (C : ParallelogramLawCondition) where
  normedSpaceClosed : C.normedSpace
  parallelogramLawHoldsClosed : C.parallelogramLawHolds
  innerProductExistsClosed : C.innerProductExists
  innerProductCompatibleClosed : C.innerProductCompatible
  normDerivedFromInnerProductClosed : C.normDerivedFromInnerProduct

def ParallelogramLawConditionClosed (C : ParallelogramLawCondition) : Prop :=
  C.normedSpace ∧ C.parallelogramLawHolds ∧ C.innerProductExists ∧
  C.innerProductCompatible ∧ C.normDerivedFromInnerProduct

theorem parallelogram_law_condition_closed_from_evidence
    (C : ParallelogramLawCondition) (E : ParallelogramLawEvidence C) :
    ParallelogramLawConditionClosed C := by
  exact And.intro E.normedSpaceClosed
    (And.intro E.parallelogramLawHoldsClosed
      (And.intro E.innerProductExistsClosed
        (And.intro E.innerProductCompatibleClosed E.normDerivedFromInnerProductClosed)))

end CharacterizationsHilbertSpacesTheoremCanonicalLaneLean
end HautevilleHouse