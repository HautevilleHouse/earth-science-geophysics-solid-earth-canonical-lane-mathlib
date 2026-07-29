import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure GravityFieldGeoidPackage where
  gravitationalPotential : Prop
  geoidUndulation : Prop
  sphericalHarmonicsModel : Prop
  gravityAnomaly : Prop
  satelliteGradiometry : Prop

structure GravityFieldGeoidEvidence (G : GravityFieldGeoidPackage) where
  gravitationalPotentialClosed : G.gravitationalPotential
  geoidUndulationClosed : G.geoidUndulation
  sphericalHarmonicsModelClosed : G.sphericalHarmonicsModel
  gravityAnomalyClosed : G.gravityAnomaly
  satelliteGradiometryClosed : G.satelliteGradiometry

def GravityFieldGeoidClosed (G : GravityFieldGeoidPackage) : Prop :=
  G.gravitationalPotential ∧ G.geoidUndulation ∧
  G.sphericalHarmonicsModel ∧ G.gravityAnomaly ∧ G.satelliteGradiometry

theorem gravity_field_geoid_closed_from_evidence (G : GravityFieldGeoidPackage)
    (E : GravityFieldGeoidEvidence G) : GravityFieldGeoidClosed G := by
  exact And.intro E.gravitationalPotentialClosed
    (And.intro E.geoidUndulationClosed
      (And.intro E.sphericalHarmonicsModelClosed
        (And.intro E.gravityAnomalyClosed E.satelliteGradiometryClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse