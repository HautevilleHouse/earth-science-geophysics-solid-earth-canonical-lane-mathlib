import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure CrustalDeformationTectonicsPackage where
  strainRateField : Prop
  faultSlipModel : Prop
  plateBoundaryForces : Prop
  mountainBuilding : Prop
  basinFormation : Prop

structure CrustalDeformationTectonicsEvidence (C : CrustalDeformationTectonicsPackage) where
  strainRateFieldClosed : C.strainRateField
  faultSlipModelClosed : C.faultSlipModel
  plateBoundaryForcesClosed : C.plateBoundaryForces
  mountainBuildingClosed : C.mountainBuilding
  basinFormationClosed : C.basinFormation

def CrustalDeformationTectonicsClosed (C : CrustalDeformationTectonicsPackage) : Prop :=
  C.strainRateField ∧ C.faultSlipModel ∧ C.plateBoundaryForces ∧ C.mountainBuilding ∧ C.basinFormation

theorem crustal_deformation_tectonics_closed_from_evidence
    (C : CrustalDeformationTectonicsPackage) (E : CrustalDeformationTectonicsEvidence C) :
    CrustalDeformationTectonicsClosed C := by
  exact And.intro E.strainRateFieldClosed
    (And.intro E.faultSlipModelClosed
      (And.intro E.plateBoundaryForcesClosed
        (And.intro E.mountainBuildingClosed E.basinFormationClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse