import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure HeatFlowThermalStructurePackage where
  surfaceHeatFlow : Prop
  geothermModel : Prop
  thermalConductivity : Prop
  radiogenicHeat : Prop
  lithosphereCooling : Prop

structure HeatFlowThermalStructureEvidence (H : HeatFlowThermalStructurePackage) where
  surfaceHeatFlowClosed : H.surfaceHeatFlow
  geothermModelClosed : H.geothermModel
  thermalConductivityClosed : H.thermalConductivity
  radiogenicHeatClosed : H.radiogenicHeat
  lithosphereCoolingClosed : H.lithosphereCooling

def HeatFlowThermalStructureClosed (H : HeatFlowThermalStructurePackage) : Prop :=
  H.surfaceHeatFlow ∧ H.geothermModel ∧ H.thermalConductivity ∧ H.radiogenicHeat ∧ H.lithosphereCooling

theorem heat_flow_thermal_structure_closed_from_evidence
    (H : HeatFlowThermalStructurePackage) (E : HeatFlowThermalStructureEvidence H) :
    HeatFlowThermalStructureClosed H := by
  exact And.intro E.surfaceHeatFlowClosed
    (And.intro E.geothermModelClosed
      (And.intro E.thermalConductivityClosed
        (And.intro E.radiogenicHeatClosed E.lithosphereCoolingClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse