import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean

structure AssociativeAlgebra (R : Type) [CommRing R] where
  carrier : Type
  mul : carrier → carrier → carrier
  assoc : ∀ (x y z : carrier), mul (mul x y) z = mul x (mul y z)
  unit : carrier
  unitLeft : ∀ (x : carrier), mul unit x = x
  unitRight : ∀ (x : carrier), mul x unit = x
  scalarMul : R → carrier → carrier
  scalarAssoc : ∀ (r s : R) (x : carrier), scalarMul (r * s) x = scalarMul r (scalarMul s x)

def coHomologyAlgebra (X : Type) (H : CoHomologyRing X) : AssociativeAlgebra ℕ := 
  { carrier := (p : ℕ) → H.degree p
    mul := λ f g p => H.cupProduct (λ q => f q) (λ r => g r) p
    assoc := by
      intro f g h
      ext p
      apply H.cupAssoc
    unit := λ p => H.cupUnit p
    unitLeft := by intro f; ext p; apply H.cupUnit
    unitRight := by intro f; ext p; apply H.cupUnit
    scalarMul := λ n f p => n * f p
    scalarAssoc := by
      intro r s f
      ext p
      simp [mul_assoc]
  }

structure AssociativeAlgebraAdmissibleData where
  algebra : AssociativeAlgebra Type
  bridgeWitness : Prop
  gateWitness : Prop
  remainderRecorded : Prop

end CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse