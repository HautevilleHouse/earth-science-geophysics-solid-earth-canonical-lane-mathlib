import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure GeomagneticFieldPaleomagnetismPackage where
  dipoleModel : Prop
  secularVariation : Prop
  paleointensity : Prop
  plateMotionReconstruction : Prop
  dynamoTheory : Prop

structure GeomagneticFieldPaleomagnetismEvidence (G : GeomagneticFieldPaleomagnetismPackage) where
  dipoleModelClosed : G.dipoleModel
  secularVariationClosed : G.secularVariation
  paleointensityClosed : G.paleointensity
  plateMotionReconstructionClosed : G.plateMotionReconstruction
  dynamoTheoryClosed : G.dynamoTheory

def GeomagneticFieldPaleomagnetismClosed (G : GeomagneticFieldPaleomagnetismPackage) : Prop :=
  G.dipoleModel ∧ G.secularVariation ∧ G.paleointensity ∧ G.plateMotionReconstruction ∧ G.dynamoTheory

theorem geomagnetic_field_paleomagnetism_closed_from_evidence
    (G : GeomagneticFieldPaleomagnetismPackage) (E : GeomagneticFieldPaleomagnetismEvidence G) :
    GeomagneticFieldPaleomagnetismClosed G := by
  exact And.intro E.dipoleModelClosed
    (And.intro E.secularVariationClosed
      (And.intro E.paleointensityClosed
        (And.intro E.plateMotionReconstructionClosed E.dynamoTheoryClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse