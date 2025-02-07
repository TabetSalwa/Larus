include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C, D, Bprime, Cprime, P, Q, Pprime] : ( (
 wd( A, B) &
 wd( A, Bprime) &
  wd( D, C) &
   wd( D, Cprime) &
    wd( B, P) &
     wd( Bprime, Pprime) &
      wd( A, P) &
       wd( Pprime, Q) &
        wd( A, Q) &
         wd( Q, B) &
          wd( Q, P) &
           wd( D, Q) &
            wd( P, C) &
             wd( C, Q) &
              wd( D, P) &
               col( A, B, Bprime) &
                col( A, Bprime, Pprime) &
                 col( A, Bprime, Q) &
                  col( Q, P, Pprime) & col( D, C, Cprime) ) => col( Q, A, B))) 
).

