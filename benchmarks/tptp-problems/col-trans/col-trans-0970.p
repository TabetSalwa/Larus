include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C, Oprime, Aprime, Bprime, Cprime, X] : ( (
 wd( B, A) &
 wd( Oprime, Aprime) &
  wd( A, C) &
   wd( Aprime, Cprime) &
    wd( B, C) &
     wd( Bprime, Cprime) &
      wd( A, Aprime) &
       wd( B, Aprime) &
        wd( A, Cprime) &
         wd( C, Aprime) &
          wd( C, Cprime) &
           wd( B, Oprime) &
            wd( A, Oprime) &
             wd( B, Cprime) &
              wd( Bprime, C) &
               col( B, A, C) &
                col( B, B, C) &
                 col( B, A, B) &
                  col( Oprime, Aprime, Bprime) &
                   col( Oprime, Bprime, Cprime) &
                    col( Oprime, Aprime, Cprime) &
                     col( X, B, C) &
                      col( X, Bprime, Cprime) & col( X, B, B) ) => col( X, B, A))) 
).

