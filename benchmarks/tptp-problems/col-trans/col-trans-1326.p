include('col-axioms.ax').

fof(pipo,conjecture,
(! [O, E, Eprime, A, B, C, D, X, Bprimeprime, Bprime] : ( (
 wd( C, O) &
 wd( A, O) &
  wd( B, O) &
   wd( D, O) &
    wd( O, E) &
     wd( O, Eprime) &
      wd( E, Eprime) &
       wd( Eprime, C) &
        wd( Bprime, O) &
         wd( X, O) &
          wd( C, Bprime) &
           wd( E, Bprimeprime) &
            wd( B, Bprimeprime) &
             col( O, E, A) &
              col( O, E, B) &
               col( O, E, C) &
                col( O, E, D) &
                 col( O, E, X) &
                  col( O, Eprime, Bprimeprime) &
                   col( O, Eprime, Bprime) &
                    col( O, Eprime, O) &
                     col( A, C, Bprime) & col( O, C, Bprime) ) => col( O, E, Eprime))) 
).

