import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean

structure CoHomologyRing (X : Type) where
  degree : ℕ → ℕ
  cupProduct : ∀ (p q : ℕ), degree p → degree q → degree (p + q)
  cupAssoc : ∀ (p q r : ℕ) (a : degree p) (b : degree q) (c : degree r),
    cupProduct (p + q) r (cupProduct p q a b) c = cupProduct p (q + r) a (cupProduct q r b c)
  cupUnit : ∀ (p : ℕ) (a : degree p), cupProduct p 0 a (cupUnit 0) = a
  cupUnitZero : degree 0
  ringAssoc : ∀ (p q r : ℕ) (a : degree p) (b : degree q) (c : degree r),
    cupProduct p (q + r) a (cupProduct q r b c) = cupProduct (p + q) r (cupProduct p q a b) c

structure CoHomologyRingAdmissibleData where
  ring : CoHomologyRing Type
  bridgeWitness : Prop
  gateWitness : Prop
  remainderRecorded : Prop

end CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse