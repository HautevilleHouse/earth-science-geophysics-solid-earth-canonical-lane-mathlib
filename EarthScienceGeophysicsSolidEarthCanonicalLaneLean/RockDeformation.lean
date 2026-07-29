import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure RockDeformationPackage (A : AdmissibleClass) where
  stressStrainClosed : Prop
  failureCriterionClosed : Prop
  deformationRemainder : Prop
  stressStrainClosedTerm : stressStrainClosed
  failureCriterionClosedTerm : failureCriterionClosed
  deformationRemainderTerm : deformationRemainder

structure RockDeformationEvidence (A : AdmissibleClass) (R : RockDeformationPackage A) where
  stressStrainClosedClosed : R.stressStrainClosed
  failureCriterionClosedClosed : R.failureCriterionClosed
  deformationRemainderClosed : R.deformationRemainder

def RockDeformationClosed (A : AdmissibleClass) (R : RockDeformationPackage A) : Prop :=
  R.stressStrainClosed ∧ R.failureCriterionClosed ∧ R.deformationRemainder

theorem rock_deformation_closed_from_evidence (A : AdmissibleClass) (R : RockDeformationPackage A)
    (E : RockDeformationEvidence A R) : RockDeformationClosed A R := by
  exact And.intro E.stressStrainClosedClosed (And.intro E.failureCriterionClosedClosed E.deformationRemainderClosed)

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse