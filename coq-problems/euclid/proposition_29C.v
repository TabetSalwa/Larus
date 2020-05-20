From Test Require Import tactic.

Section FOFProblem.

Variable Universe : Set.
Variable UniverseElement : Universe.

Variable tS_ : Universe -> Universe -> Universe -> Universe -> Prop.
Variable rT_ : Universe -> Universe -> Universe -> Universe -> Universe -> Universe -> Prop.
Variable par_ : Universe -> Universe -> Universe -> Universe -> Prop.
Variable oS_ : Universe -> Universe -> Universe -> Universe -> Prop.
Variable meet_ : Universe -> Universe -> Universe -> Universe -> Prop.
Variable congA_ : Universe -> Universe -> Universe -> Universe -> Universe -> Universe -> Prop.
Variable cong_ : Universe -> Universe -> Universe -> Universe -> Prop.
Variable col_ : Universe -> Universe -> Universe -> Prop.
Variable betS_ : Universe -> Universe -> Universe -> Prop.


Variable lemma_parallelNC_1 : (forall A B C D : Universe, (par_ A B C D -> (~(col_ A B C) /\ (~(col_ A C D) /\ (~(col_ B C D) /\ ~(col_ A B D)))))).
Variable defcollinear_2 : (forall A B C : Universe, (col_ A B C -> (A = B \/ (A = C \/ (B = C \/ (betS_ B A C \/ (betS_ A B C \/ betS_ A C B))))))).
Variable defcollinear2a_3 : (forall A B C : Universe, (A = B -> col_ A B C)).
Variable defcollinear2b_4 : (forall A B C : Universe, (A = C -> col_ A B C)).
Variable defcollinear2c_5 : (forall A B C : Universe, (B = C -> col_ A B C)).
Variable defcollinear2d_6 : (forall A B C : Universe, (betS_ B A C -> col_ A B C)).
Variable defcollinear2e_7 : (forall A B C : Universe, (betS_ A B C -> col_ A B C)).
Variable defcollinear2f_8 : (forall A B C : Universe, (betS_ A C B -> col_ A B C)).
Variable lemma_inequalitysymmetric_9 : (forall A B : Universe, (A <> B -> B <> A)).
Variable lemma_extension_10 : (forall A B P Q : Universe, (exists X : Universe, ((A <> B /\ P <> Q) -> (betS_ A B X /\ cong_ B X P Q)))).
Variable axiom_betweennesssymmetry_11 : (forall A B C : Universe, (betS_ A B C -> betS_ C B A)).
Variable lemma_betweennotequal_12 : (forall A B C : Universe, (betS_ A B C -> (B <> C /\ (A <> B /\ A <> C)))).
Variable lemma_collinearorder_13 : (forall A B C : Universe, (col_ A B C -> (col_ B A C /\ (col_ B C A /\ (col_ C A B /\ (col_ A C B /\ col_ C B A)))))).
Variable lemma_parallelsymmetric_14 : (forall A B C D : Universe, (par_ A B C D -> par_ C D A B)).
Variable lemma_collinearparallel_15 : (forall A B C Xc Xd : Universe, ((par_ A B Xc Xd /\ (col_ Xc Xd C /\ C <> Xd)) -> par_ A B C Xd)).
Variable lemma_parallelflip_16 : (forall A B C D : Universe, (par_ A B C D -> (par_ B A C D /\ (par_ A B D C /\ par_ B A D C)))).
Variable defparallel_17 : (forall A B C D : Universe, (exists U V Su Sv X : Universe, (par_ A B C D -> (A <> B /\ (C <> D /\ (col_ A B U /\ (col_ A B V /\ (U <> V /\ (col_ C D Su /\ (col_ C D Sv /\ (Su <> Sv /\ (~(meet_ A B C D) /\ (betS_ U X Sv /\ betS_ Su X V))))))))))))).
Variable defparallel2_18 : (forall A B C D U V Su Sv X : Universe, ((A <> B /\ (C <> D /\ (col_ A B U /\ (col_ A B V /\ (U <> V /\ (col_ C D Su /\ (col_ C D Sv /\ (Su <> Sv /\ (~(meet_ A B C D) /\ (betS_ U X Sv /\ betS_ Su X V)))))))))) -> par_ A B C D)).
Variable lemma_collinear4_19 : (forall A B C D : Universe, ((col_ A B C /\ (col_ A B D /\ A <> B)) -> col_ B C D)).
Variable defmeet_20 : (forall A B C D : Universe, (exists X : Universe, (meet_ A B C D -> (A <> B /\ (C <> D /\ (col_ A B X /\ col_ C D X)))))).
Variable defmeet2_21 : (forall A B C D X : Universe, ((A <> B /\ (C <> D /\ (col_ A B X /\ col_ C D X))) -> meet_ A B C D)).
Variable lemma_NCorder_22 : (forall A B C : Universe, (~(col_ A B C) -> (~(col_ B A C) /\ (~(col_ B C A) /\ (~(col_ C A B) /\ (~(col_ A C B) /\ ~(col_ C B A))))))).
Variable lemma_samesidesymmetric_23 : (forall A B P Q : Universe, (oS_ P Q A B -> (oS_ Q P A B /\ (oS_ P Q B A /\ oS_ Q P B A)))).
Variable defoppositeside_24 : (forall P A B Q : Universe, (exists X : Universe, (tS_ P A B Q -> (betS_ P X Q /\ (col_ A B X /\ ~(col_ A B P)))))).
Variable defoppositeside2_25 : (forall P A B Q X : Universe, ((betS_ P X Q /\ (col_ A B X /\ ~(col_ A B P))) -> tS_ P A B Q)).
Variable lemma_planeseparation_26 : (forall A B C D E : Universe, ((oS_ C D A B /\ tS_ D A B E) -> tS_ C A B E)).
Variable lemma_oppositesidesymmetric_27 : (forall A B P Q : Universe, (tS_ P A B Q -> tS_ Q A B P)).
Variable proposition_29_28 : (forall A B C D E G H : Universe, ((par_ A B C D /\ (betS_ A G B /\ (betS_ C H D /\ (betS_ E G H /\ tS_ A G H D)))) -> (congA_ A G H G H D /\ (congA_ E G B G H D /\ rT_ B G H G H D)))).

Theorem proposition_29C_29 : (forall B D E G H : Universe, ((par_ G B H D /\ (oS_ B D G H /\ betS_ E G H)) -> (congA_ E G B G H D /\ rT_ B G H G H D))).
Proof.
  time tac.
Qed.

End FOFProblem.
