include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, X, Y, M, Aprime, Bprime] : ( (
 wd( X, Y) &
 wd( A, M) &
  wd( Aprime, M) &
   wd( B, M) &
    wd( Bprime, M) &
     wd( B, X) &
      wd( B, Y) &
       wd( A, X) &
        wd( A, Y) &
         wd( B, Bprime) &
          wd( A, B) &
           col( X, Y, M) &
            col( A, M, Aprime) &
             col( Aprime, X, Y) &
              col( M, Aprime, X) & col( M, B, Bprime) ) => col( M, Aprime, Y))) 
).

