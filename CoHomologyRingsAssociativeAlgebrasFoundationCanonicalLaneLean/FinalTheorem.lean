import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean

def ConstrainedCoHomologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cohomology_endgame (A : AdmissibleClass) : ConstrainedCoHomologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse