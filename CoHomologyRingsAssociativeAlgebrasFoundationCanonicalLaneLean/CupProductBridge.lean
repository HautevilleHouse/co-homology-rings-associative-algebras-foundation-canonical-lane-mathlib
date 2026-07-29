import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean

structure CupProductBridgeState where
  cohomologyRing : CoHomologyRing Type
  assocAlgebra : AssociativeAlgebra Type
  bridgeClosed : Prop
  gateClosed : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

end CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse