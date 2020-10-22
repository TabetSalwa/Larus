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

Theorem pipo_6 : (forall A B C D Bprime Cprime P Q Pprime : Universe, ((wd_ A B /\ (wd_ A Bprime /\ (wd_ B P /\ (wd_ Bprime Pprime /\ (wd_ A P /\ (wd_ Pprime Q /\ (wd_ Cprime D /\ (wd_ C D /\ (wd_ A Q /\ (wd_ P Q /\ (wd_ D Q /\ (wd_ P C /\ (wd_ C Q /\ (wd_ D P /\ (wd_ B Q /\ (col_ A B C /\ (col_ A B D /\ (col_ A B Bprime /\ (col_ A Bprime Cprime /\ (col_ A Bprime D /\ (col_ A Bprime Pprime /\ (col_ A Bprime Q /\ col_ Pprime P Q)))))))))))))))))))))) -> col_ Bprime Pprime Q)).
Proof.
  time tac.
Qed.

End FOFProblem.
