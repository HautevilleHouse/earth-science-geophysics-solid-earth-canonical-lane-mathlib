import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure GeomagnetismPackage where
  coreDynamo : Prop
  paleomagnetism : Prop
  seaFloorSpreading : Prop
  magneticAnomalies : Prop
  fieldReversals : Prop

structure GeomagnetismEvidence (G : GeomagnetismPackage) where
  coreDynamoClosed : G.coreDynamo
  paleomagnetismClosed : G.paleomagnetism
  seaFloorSpreadingClosed : G.seaFloorSpreading
  magneticAnomaliesClosed : G.magneticAnomalies
  fieldReversalsClosed : G.fieldReversals

def GeomagnetismClosed (G : GeomagnetismPackage) : Prop :=
  G.coreDynamo ∧ G.paleomagnetism ∧ G.seaFloorSpreading ∧ G.magneticAnomalies ∧ G.fieldReversals

theorem geomagnetism_closed_from_evidence (G : GeomagnetismPackage) (E : GeomagnetismEvidence G) : GeomagnetismClosed G := by
  exact And.intro E.coreDynamoClosed
    (And.intro E.paleomagnetismClosed
      (And.intro E.seaFloorSpreadingClosed
        (And.intro E.magneticAnomaliesClosed E.fieldReversalsClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse