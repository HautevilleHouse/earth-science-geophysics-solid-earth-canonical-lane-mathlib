import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthCanonicalLaneLean

structure RheologyPackage where
  crustRheology : Prop
  mantleRheology : Prop
  viscosityStructure : Prop
  elasticModuli : Prop
  viscoelasticRelaxation : Prop

structure RheologyEvidence (R : RheologyPackage) where
  crustRheologyClosed : R.crustRheology
  mantleRheologyClosed : R.mantleRheology
  viscosityStructureClosed : R.viscosityStructure
  elasticModuliClosed : R.elasticModuli
  viscoelasticRelaxationClosed : R.viscoelasticRelaxation

def RheologyClosed (R : RheologyPackage) : Prop :=
  R.crustRheology ∧ R.mantleRheology ∧ R.viscosityStructure ∧ R.elasticModuli ∧ R.viscoelasticRelaxation

theorem rheology_closed_from_evidence (R : RheologyPackage) (E : RheologyEvidence R) : RheologyClosed R := by
  exact And.intro E.crustRheologyClosed
    (And.intro E.mantleRheologyClosed
      (And.intro E.viscosityStructureClosed
        (And.intro E.elasticModuliClosed E.viscoelasticRelaxationClosed)))

end EarthScienceGeophysicsSolidEarthCanonicalLaneLean
end HautevilleHouse