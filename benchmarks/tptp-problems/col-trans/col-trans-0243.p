include('col-axioms.ax').

fof(pipo,conjecture,
(! [A1, A2, P, X, B1, B2, B3] : ( (
 wd( P, A1) &
 wd( P, B1) &
  wd( A1, X) &
   wd( P, X) &
    wd( A1, A2) &
     wd( A1, B1) &
      wd( A1, B2) &
       wd( A2, B1) &
        wd( A2, B2) &
         wd( B1, B2) &
          col( P, B1, B2) &
           col( B1, P, B3) & col( P, A1, X) ) => col( B1, B2, B3))) 
).

