include('col-axioms.ax').

fof(pipo,conjecture,
(! [P, A, O, B, Bs] : ( (
 wd( A, O) &
 wd( O, B) &
  wd( A, B) &
   wd( O, P) &
    wd( A, P) &
     wd( B, Bs) &
      wd( O, Bs) &
       wd( P, B) & col( Bs, O, A) & col( B, O, Bs) ) => col( A, O, B))) 
).

