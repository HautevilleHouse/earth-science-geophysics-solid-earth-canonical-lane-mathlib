import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure SeismicWavePackage where
  waveEquation : Prop
  elasticWaves : Prop
  anisotropy : Prop
  attenuation : Prop
  travelTimeTomography : Prop

structure SeismicWaveEvidence (S : SeismicWavePackage) where
  waveEquationClosed : S.waveEquation
  elasticWavesClosed : S.elasticWaves
  anisotropyClosed : S.anisotropy
  attenuationClosed : S.attenuation
  travelTimeTomographyClosed : S.travelTimeTomography

def SeismicWaveClosed (S : SeismicWavePackage) : Prop :=
  S.waveEquation ∧ S.elasticWaves ∧ S.anisotropy ∧ S.attenuation ∧ S.travelTimeTomography

theorem seismic_wave_closed_from_evidence (S : SeismicWavePackage) (E : SeismicWaveEvidence S) : SeismicWaveClosed S := by
  exact And.intro E.waveEquationClosed
    (And.intro E.elasticWavesClosed
      (And.intro E.anisotropyClosed
        (And.intro E.attenuationClosed E.travelTimeTomographyClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse