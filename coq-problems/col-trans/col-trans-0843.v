From Test Require Import tactic.

Section FOFProblem.

Variable Universe : Set.
Variable UniverseElement : Universe.

Variable wd_ : Universe -> Universe -> Prop.
Variable col_ : Universe -> Universe -> Universe -> Prop.


Variable col_swap1_1 : (forall A B C : Universe, (col_ A B C -> col_ B A C)).
Variable col_swap2_2 : (forall A B C : Universe, (col_ A B C -> col_ B C A)).
Variable col_triv_3 : (forall A B : Universe, col_ A B B).
Variable wd_swap_4 : (forall A B : Universe, (wd_ A B -> wd_ B A)).
Variable col_trans_5 : (forall P Q A B C : Universe, ((wd_ P Q /\ (col_ P Q A /\ (col_ P Q B /\ col_ P Q C))) -> col_ A B C)).

Theorem pipo_6 : (forall A B C P Q R X : Universe, ((wd_ A B /\ (wd_ B C /\ (wd_ A C /\ (wd_ Q A /\ (wd_ Q C /\ (wd_ P B /\ (wd_ P C /\ (wd_ R A /\ (wd_ R B /\ (wd_ A P /\ (wd_ C X /\ (wd_ X A /\ (wd_ P X /\ (wd_ Q P /\ (wd_ Q X /\ (col_ X Q P /\ (col_ B R A /\ (col_ C Q A /\ (col_ C P B /\ (col_ P X A /\ (col_ P X B /\ (col_ P A B /\ (col_ X A B /\ (col_ P Q A /\ (col_ P Q B /\ col_ Q A B))))))))))))))))))))))))) -> col_ A B C)).
Proof.
  time tac.
Qed.

End FOFProblem.
