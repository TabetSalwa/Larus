fof(defrightangle,axiom, (! [A,B,C] : (? [X] : ((per(A,B,C)) => ((betS(A,B,X) & cong(A,B,X,B) & cong(A,C,X,C) & ( B != C ))))))).
fof(defrightangle2,axiom, (! [A,B,C,X] : ((betS(A,B,X) & cong(A,B,X,B) & cong(A,C,X,C) & ( B != C )) => ((per(A,B,C)))))).
fof(lemma_congruencesymmetric,axiom, (! [A,B,C,D] : ((cong(B,C,A,D)) => ((cong(A,D,B,C)))))).
fof(lemma_congruencetransitive,axiom, (! [A,B,C,D,E,F] : ((cong(A,B,C,D) & cong(C,D,E,F)) => ((cong(A,B,E,F)))))).
fof(lemma_doublereverse,axiom, (! [A,B,C,D] : ((cong(A,B,C,D)) => ((cong(D,C,B,A) & cong(B,A,D,C)))))).
fof(lemma_extensionunique,axiom, (! [A,B,E,F] : ((betS(A,B,E) & betS(A,B,F) & cong(B,E,B,F)) => ((( E = F )))))).
fof(cn_congruencereflexive,axiom, (! [A,B] : ((cong(A,B,A,B))))).
fof(proposition_10,axiom, (! [A,B] : (? [X] : ((( A != B )) => ((betS(A,X,B) & cong(X,A,X,B))))))).
fof(lemma_8_2,axiom, (! [A,B,C] : ((per(A,B,C)) => ((per(C,B,A)))))).
fof(lemma_congruenceflip,axiom, (! [A,B,C,D] : ((cong(A,B,C,D)) => ((cong(B,A,D,C) & cong(B,A,C,D) & cong(A,B,D,C)))))).
fof(lemma_rightreverse,axiom, (! [A,B,C,D] : ((per(A,B,C) & betS(A,B,D) & cong(A,B,B,D)) => ((cong(A,C,D,C)))))).
fof(lemma_inequalitysymmetric,axiom, (! [A,B] : ((( A != B )) => ((( B != A )))))).
fof(lemma_interior5,axiom, (! [A,B,C,D,Xa,Xb,Xc,Xd] : ((betS(A,B,C) & betS(Xa,Xb,Xc) & cong(A,B,Xa,Xb) & cong(B,C,Xb,Xc) & cong(A,D,Xa,Xd) & cong(C,D,Xc,Xd)) => ((cong(B,D,Xb,Xd)))))).
fof(lemma_linereflectionisometry,axiom, (! [A,B,C,D,E,F] : ((per(B,A,C) & per(A,B,D) & betS(C,A,E) & betS(D,B,F) & cong(A,C,A,E) & cong(B,D,B,F)) => ((cong(C,D,E,F)))))).
fof(lemma_10_12,conjecture,(! [A,B,C,H] : ((per(A,B,C) & per(A,B,H) & cong(B,C,B,H)) => ((cong(A,C,A,H)))))).
