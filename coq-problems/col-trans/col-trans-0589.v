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

Theorem pipo_6 : (forall A B C D B1 C1 P Q R V W X : Universe, ((wd_ C C1 /\ (wd_ C D /\ (wd_ D B1 /\ (wd_ C B1 /\ (wd_ B1 B /\ (wd_ B D /\ (wd_ A B /\ (wd_ A D /\ (wd_ C A /\ (wd_ B C /\ (wd_ A B1 /\ (wd_ A C1 /\ (wd_ B1 C1 /\ (wd_ B C1 /\ (wd_ D C1 /\ (wd_ P Q /\ (wd_ Q R /\ (wd_ V W /\ (wd_ W X /\ (col_ B1 C B /\ (col_ A C C1 /\ (col_ A B B1 /\ col_ B1 D C1)))))))))))))))))))))) -> col_ A B C)).
Proof.
  time tac.
Qed.

End FOFProblem.
