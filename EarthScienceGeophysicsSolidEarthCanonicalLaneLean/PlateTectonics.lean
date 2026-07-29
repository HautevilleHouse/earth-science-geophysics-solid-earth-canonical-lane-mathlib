import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure PlateTectonicsPackage where
  lithosphereRigid : Prop
  plateBoundaries : Prop
  relativeMotions : Prop
  subduction : Prop
  continentalDrift : Prop

structure PlateTectonicsEvidence (P : PlateTectonicsPackage) where
  lithosphereRigidClosed : P.lithosphereRigid
  plateBoundariesClosed : P.plateBoundaries
  relativeMotionsClosed : P.relativeMotions
  subductionClosed : P.subduction
  continentalDriftClosed : P.continentalDrift

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.lithosphereRigid ∧ P.plateBoundaries ∧ P.relativeMotions ∧ P.subduction ∧ P.continentalDrift

theorem plate_tectonics_closed_from_evidence (P : PlateTectonicsPackage) (E : PlateTectonicsEvidence P) : PlateTectonicsClosed P := by
  exact And.intro E.lithosphereRigidClosed
    (And.intro E.plateBoundariesClosed
      (And.intro E.relativeMotionsClosed
        (And.intro E.subductionClosed E.continentalDriftClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse