include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C , P, Q, X] : ( (
 wd( A, B) &
 wd( B, C) &
  wd( A, C) &
   wd( X, A) &
    wd( X, C) &
     wd( P, B) &
      wd( P, C) &
       wd( Q, P) &
        wd( A, P) &
         wd( B, X) &
          wd( X, P) &
           col( A, C, Q) &
            col( X, A, C) &
             col( P, B, C) & col( A, C, P) ) => col( A, B, C))) 
).

