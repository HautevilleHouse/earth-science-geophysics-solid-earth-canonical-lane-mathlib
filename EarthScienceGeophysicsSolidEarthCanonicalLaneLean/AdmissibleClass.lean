import EarthScienceGeophysicsSolidEarthCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure SolidEarthObject where
  earthModel : Type
  modelTopology : TopologicalSpace earthModel
  layeredStructure : Prop
  seismicImaging : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : SolidEarthObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse