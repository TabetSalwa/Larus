include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, Aprime, Bprime, M] : ( (
 wd( A, B) &
 wd( Aprime, Bprime) &
  wd( B, Bprime) &
   wd( A, Bprime) &
    wd( M, B) &
     wd( M, Bprime) &
      col( M, A, Aprime) &
       col( M, B, Bprime) &
        col( B, Aprime, Bprime) &
         col( B, A, B) &
          col( Aprime, Bprime, Bprime) &
           col( Bprime, M, Bprime) &
            col( Bprime, B, Bprime) & col( M, B, B) ) => col( M, B, Aprime))) 
).

