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

Theorem pipo_6 : (forall P Q A B C D T X Y : Universe, ((wd_ P Q /\ (wd_ A D /\ (wd_ B D /\ (wd_ D P /\ (wd_ D Q /\ (wd_ B P /\ (wd_ B Q /\ (wd_ C P /\ (wd_ C Q /\ (wd_ A P /\ (wd_ A Q /\ (col_ T P Q /\ (col_ X P Q /\ (col_ Y P Q /\ (col_ A B D /\ (col_ Y Y A /\ (col_ X Y B /\ (col_ B Y D /\ (col_ A X D /\ col_ A T C))))))))))))))))))) -> col_ A D Y)).
Proof.
  time tac.
Qed.

End FOFProblem.
