include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, C, Aprime, Bprime, P, Q] : ( (
 wd( Bprime, C) &
 wd( A, Bprime) &
  wd( A, C) &
   wd( Aprime, C) &
    wd( P, Q) &
     wd( A, Aprime) &
      wd( A, P) &
       wd( A, Q) &
        col( Aprime, P, Q) &
         col( Bprime, P, Q) &
          col( C, P, Q) & col( A, Bprime, C) ) => col( Bprime, C, P)))  ).

