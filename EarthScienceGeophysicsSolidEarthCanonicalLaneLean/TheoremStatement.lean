import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure SolidEarthAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  threeDimensional : Prop
  continuousDeformation : Prop
  conclusion : continuousDeformation

def SolidEarthWitnessClosed (O : SolidEarthAdmittedObject) : Prop :=
  O.continuousDeformation

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse