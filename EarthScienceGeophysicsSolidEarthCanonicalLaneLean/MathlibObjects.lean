import EarthScienceGeophysicsSolidEarthCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SolidEarthSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SolidEarthAdmittedObject where
  space : SolidEarthSpace
  solidEarthModel : Prop
  geophysicalConstraints : Prop
  conclusion : geophysicalConstraints

structure SolidEarthEndgameState where
  object : SolidEarthAdmittedObject

def SolidEarthWitnessClosed (O : SolidEarthAdmittedObject) : Prop :=
  O.geophysicalConstraints

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse