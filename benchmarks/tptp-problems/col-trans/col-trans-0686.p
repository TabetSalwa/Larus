include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, C, Aprime, Cprime, P, Q, B] : ( (
 wd( A, Aprime) &
 wd( Aprime, C) &
  wd( A, C) &
   wd( Aprime, Cprime) &
    wd( P, Q) &
     wd( C, Cprime) &
      wd( B, Aprime) &
       wd( C, P) &
        wd( C, Q) &
         wd( A, P) &
          wd( A, Q) &
           wd( B, A) &
            wd( Aprime, Aprime) &
             wd( B, C) &
              wd( B, Cprime) &
               col( Aprime, P, Q) &
                col( Cprime, P, Q) &
                 col( A, Aprime, C) & col( A, B, Aprime) ) => col( Aprime, B, C))) 
).

