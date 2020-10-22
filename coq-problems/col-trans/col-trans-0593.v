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

Theorem pipo_6 : (forall A B C Bprime Cprime M Dprime : Universe, ((wd_ A B /\ (wd_ B C /\ (wd_ A C /\ (wd_ Cprime A /\ (wd_ Bprime A /\ (wd_ A M /\ (wd_ M Bprime /\ (wd_ Bprime Cprime /\ (wd_ M Cprime /\ (wd_ A Dprime /\ (wd_ M Dprime /\ (col_ Dprime Bprime Cprime /\ (col_ M A Dprime /\ (col_ M Bprime Cprime /\ (col_ A C Cprime /\ col_ A B Bprime))))))))))))))) -> col_ A Bprime Cprime)).
Proof.
  time tac.
Qed.

End FOFProblem.
