import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure GeodeticDeformationPackage where
  geodeticData : Type
  strainModel : Type
  surfaceDisplacement : Prop
  interseismicStrain : Prop
  coseismicModel : Prop

structure GeodeticDeformationEvidence (G : GeodeticDeformationPackage) where
  surfaceDisplacementClosed : G.surfaceDisplacement
  interseismicStrainClosed : G.interseismicStrain
  coseismicModelClosed : G.coseismicModel

def GeodeticDeformationClosed (G : GeodeticDeformationPackage) : Prop :=
  G.surfaceDisplacement ∧ G.interseismicStrain ∧ G.coseismicModel

theorem geodetic_deformation_closed_from_evidence (G : GeodeticDeformationPackage)
    (E : GeodeticDeformationEvidence G) : GeodeticDeformationClosed G := by
  exact And.intro E.surfaceDisplacementClosed
    (And.intro E.interseismicStrainClosed E.coseismicModelClosed)

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse