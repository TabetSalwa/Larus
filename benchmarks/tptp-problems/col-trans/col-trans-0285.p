include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, Aprime, Bprime] : ( (
 wd( A, B) &
 wd( Aprime, Bprime) &
  wd( A, Aprime) &
   wd( B, Bprime) &
    wd( A, Bprime) &
     wd( Aprime, B) &
      col( A, Aprime, Bprime) &
       col( B, Aprime, Bprime) & col( A, B, Aprime) ) => col( A, B, Bprime)))  ).

