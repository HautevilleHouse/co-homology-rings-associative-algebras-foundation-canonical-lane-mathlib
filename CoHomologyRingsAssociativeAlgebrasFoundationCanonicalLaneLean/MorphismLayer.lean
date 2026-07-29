import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean

structure RingHomMorphism (A B : Type) [Ring A] [Ring B] where
  map : A → B
  preservesAdd : ∀ x y : A, map (x + y) = map x + map y
  preservesMul : ∀ x y : A, map (x * y) = map x * map y

def identityMorphism (A : Type) [Ring A] : RingHomMorphism A A := {
  map := id
  preservesAdd := by
    intro x y
    rfl
  preservesMul := by
    intro x y
    rfl
}

theorem identity_morphism_preserves_ring (A : Type) [Ring A] :
    identityMorphism A .preservesAdd = true ∧ identityMorphism A .preservesMul = true := by
  have hAdd : ∀ x y : A, (identityMorphism A).map (x + y) = (identityMorphism A).map x + (identityMorphism A).map y := by
    intro x y
    rfl
  have hMul : ∀ x y : A, (identityMorphism A).map (x * y) = (identityMorphism A).map x * (identityMorphism A).map y := by
    intro x y
    rfl
  exact And.intro hAdd hMul

end CoHomologyRingsAssociativeAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse