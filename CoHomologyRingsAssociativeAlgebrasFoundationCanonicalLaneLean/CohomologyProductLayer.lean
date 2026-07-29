import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean

structure CohomologyProduct (X : Type) (R : Type) [CommRing R] where
  cupProduct : (X → R) → (X → R) → (X → R)
  cupAssoc : ∀ f g h : X → R, cupProduct (cupProduct f g) h = cupProduct f (cupProduct g h)

def cupProductNat (f g : ℕ → ℤ) : ℕ → ℤ := λ n => (f n) * (g n)

theorem cup_product_assoc_native : ∀ f g h : ℕ → ℤ, cupProductNat (cupProductNat f g) h = cupProductNat f (cupProductNat g h) := by
  intro f g h
  ext n
  simp [cupProductNat, mul_assoc]

end CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse