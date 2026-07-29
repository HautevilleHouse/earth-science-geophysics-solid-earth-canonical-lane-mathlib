import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure EarthquakeSourceMechanismsPackage where
  momentTensor : Prop
  doubleCoupleModel : Prop
  faultPlaneSolution : Prop
  stressDrop : Prop
  magnitudeScaling : Prop

structure EarthquakeSourceMechanismsEvidence (E : EarthquakeSourceMechanismsPackage) where
  momentTensorClosed : E.momentTensor
  doubleCoupleModelClosed : E.doubleCoupleModel
  faultPlaneSolutionClosed : E.faultPlaneSolution
  stressDropClosed : E.stressDrop
  magnitudeScalingClosed : E.magnitudeScaling

def EarthquakeSourceMechanismsClosed (E : EarthquakeSourceMechanismsPackage) : Prop :=
  E.momentTensor ∧ E.doubleCoupleModel ∧ E.faultPlaneSolution ∧ E.stressDrop ∧ E.magnitudeScaling

theorem earthquake_source_mechanisms_closed_from_evidence
    (E : EarthquakeSourceMechanismsPackage) (Ev : EarthquakeSourceMechanismsEvidence E) :
    EarthquakeSourceMechanismsClosed E := by
  exact And.intro Ev.momentTensorClosed
    (And.intro Ev.doubleCoupleModelClosed
      (And.intro Ev.faultPlaneSolutionClosed
        (And.intro Ev.stressDropClosed Ev.magnitudeScalingClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse