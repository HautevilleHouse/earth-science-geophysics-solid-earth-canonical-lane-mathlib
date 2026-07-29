import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure GeodesyPackage where
  earthFigure : Prop
  gravityField : Prop
  crustalDeformation : Prop
  satelliteOrbits : Prop
  referenceFrames : Prop

structure GeodesyEvidence (G : GeodesyPackage) where
  earthFigureClosed : G.earthFigure
  gravityFieldClosed : G.gravityField
  crustalDeformationClosed : G.crustalDeformation
  satelliteOrbitsClosed : G.satelliteOrbits
  referenceFramesClosed : G.referenceFrames

def GeodesyClosed (G : GeodesyPackage) : Prop :=
  G.earthFigure ∧ G.gravityField ∧ G.crustalDeformation ∧ G.satelliteOrbits ∧ G.referenceFrames

theorem geodesy_closed_from_evidence (G : GeodesyPackage) (E : GeodesyEvidence G) : GeodesyClosed G := by
  exact And.intro E.earthFigureClosed
    (And.intro E.gravityFieldClosed
      (And.intro E.crustalDeformationClosed
        (And.intro E.satelliteOrbitsClosed E.referenceFramesClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse