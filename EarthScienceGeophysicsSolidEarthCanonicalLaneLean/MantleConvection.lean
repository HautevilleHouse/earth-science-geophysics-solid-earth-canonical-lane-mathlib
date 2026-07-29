import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure MantleConvectionPackage (A : AdmissibleClass) where
  budgetClosureValid : Prop
  transferClosed : Prop
  thermalBoundaryRemainder : Prop
  budgetClosureValidTerm : budgetClosureValid
  transferClosedTerm : transferClosed
  thermalBoundaryRemainderTerm : thermalBoundaryRemainder

structure MantleConvectionEvidence (A : AdmissibleClass) (M : MantleConvectionPackage A) where
  budgetClosureValidClosed : M.budgetClosureValid
  transferClosedClosed : M.transferClosed
  thermalBoundaryRemainderClosed : M.thermalBoundaryRemainder

def MantleConvectionClosed (A : AdmissibleClass) (M : MantleConvectionPackage A) : Prop :=
  M.budgetClosureValid ∧ M.transferClosed ∧ M.thermalBoundaryRemainder

theorem mantle_convection_closed_from_evidence (A : AdmissibleClass) (M : MantleConvectionPackage A)
    (E : MantleConvectionEvidence A M) : MantleConvectionClosed A M := by
  exact And.intro E.budgetClosureValidClosed (And.intro E.transferClosedClosed E.thermalBoundaryRemainderClosed)

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse