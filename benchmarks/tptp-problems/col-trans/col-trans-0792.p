include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C, D, Bprime, Cprime] : ( (
 wd( A, B) &
 wd( A, Bprime) &
  wd( D, C) &
   wd( D, Cprime) &
    wd( A, C) &
     wd( A, D) &
      wd( C, B) &
       wd( B, D) &
        col( A, B, Bprime) &
         col( D, C, Cprime) &
          col( A, D, Cprime) & col( Bprime, D, Cprime) ) => col( A, C, D)))  ).

