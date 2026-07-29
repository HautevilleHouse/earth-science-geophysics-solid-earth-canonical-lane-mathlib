import EarthScienceGeophysicsSolidEarthCanonicalLaneLean.MathlibObjects

/-!
# Crustal Deformation Package
-/

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure CrustalDeformationPackage where
  stressStrainRelation : Prop
  faultMechanics : Prop
  folding : Prop
  isostasy : Prop
  geodesyConstraints : Prop

structure CrustalDeformationEvidence (C : CrustalDeformationPackage) where
  stressStrainRelationClosed : C.stressStrainRelation
  faultMechanicsClosed : C.faultMechanics
  foldingClosed : C.folding
  isostasyClosed : C.isostasy
  geodesyConstraintsClosed : C.geodesyConstraints

def CrustalDeformationClosed (C : CrustalDeformationPackage) : Prop :=
  C.stressStrainRelation ∧ C.faultMechanics ∧ C.folding ∧ C.isostasy ∧ C.geodesyConstraints

theorem crustal_deformation_closed_from_evidence (C : CrustalDeformationPackage) (E : CrustalDeformationEvidence C) :
    CrustalDeformationClosed C := by
  exact And.intro E.stressStrainRelationClosed (And.intro E.faultMechanicsClosed (And.intro E.foldingClosed (And.intro E.isostasyClosed E.geodesyConstraintsClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse