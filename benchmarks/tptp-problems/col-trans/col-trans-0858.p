include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C, Aprime, Bprime, Cprime, M, Aprimeprime, Cprimeprime] : ( (
 wd( Aprime, Bprime) &
 wd( Cprime, Bprime) &
  wd( B, Aprimeprime) &
   wd( B, Cprimeprime) &
    wd( A, B) &
     wd( B, C) &
      wd( A, C) &
       wd( Aprimeprime, Cprimeprime) &
        wd( C, Cprimeprime) &
         wd( A, Aprimeprime) &
          wd( A, Cprimeprime) &
           wd( C, Aprimeprime) &
            wd( Aprime, Cprime) &
             col( C, Cprimeprime, B) &
              col( Aprimeprime, B, A) &
               col( C, Aprimeprime, Cprimeprime) &
                col( Aprimeprime, Cprimeprime, B) &
                 col( Cprime, M, Cprimeprime) &
                  col( Aprime, M, Aprimeprime) & col( M, B, Bprime) ) => col( Aprimeprime, Cprimeprime, A))) 
).

