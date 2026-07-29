import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure SeismicTomographyPackage (A : AdmissibleClass) where
  velocityModelClosed : Prop
  rayPathClosed : Prop
  inversionRemainder : Prop
  velocityModelClosedTerm : velocityModelClosed
  rayPathClosedTerm : rayPathClosed
  inversionRemainderTerm : inversionRemainder

structure SeismicTomographyEvidence (A : AdmissibleClass) (S : SeismicTomographyPackage A) where
  velocityModelClosedClosed : S.velocityModelClosed
  rayPathClosedClosed : S.rayPathClosed
  inversionRemainderClosed : S.inversionRemainder

def SeismicTomographyClosed (A : AdmissibleClass) (S : SeismicTomographyPackage A) : Prop :=
  S.velocityModelClosed ∧ S.rayPathClosed ∧ S.inversionRemainder

theorem seismic_tomography_closed_from_evidence (A : AdmissibleClass) (S : SeismicTomographyPackage A)
    (E : SeismicTomographyEvidence A S) : SeismicTomographyClosed A S := by
  exact And.intro E.velocityModelClosedClosed (And.intro E.rayPathClosedClosed E.inversionRemainderClosed)

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse