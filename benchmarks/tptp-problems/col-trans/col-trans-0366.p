include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C, D, E, F, P, Q] : ( (
 wd( P, Q) &
 wd( B, Q) &
  wd( A, B) &
   wd( P, B) &
    wd( B, C) &
     wd( D, E) &
      wd( E, F) &
       wd( D, F) &
        wd( A, C) & col( B, C, P) & col( B, A, P) ) => col( A, B, C))) 
).

