include('col-axioms.ax').

fof(pipo,conjecture,
(! [X1, X2, Y1, Y2, A, B] : ( (
 wd( X1, Y2) &
 wd( X1, Y1) &
  wd( A, B) &
   wd( Y1, Y2) &
    wd( X1, X2) &
     col( X1, Y1, Y2) & col( X1, X2, Y1) ) => col( X2, Y1, Y2)))  ).

