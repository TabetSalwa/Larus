include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C, P, T, Y, X] : ( (
 wd( P, T) &
 wd( X, Y) &
  wd( P, Y) &
   wd( P, X) &
    wd( B, T) &
     wd( B, P) &
      wd( A, B) &
       wd( X, B) &
        wd( A, C) &
         wd( C, B) &
          wd( Y, B) &
           col( T, P, Y) &
            col( P, Y, X) &
             col( B, A, X) & col( B, C, Y) ) => col( T, P, X))) 
).

