include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C , D, E] : ( (
 wd( A, B) &
 wd( B, D) &
  wd( D, E) &
   wd( B, E) &
    wd( B, C) &
     wd( A, C) & col( A, B, D) & col( A, B, E) ) => col( B, D, E))) 
).

