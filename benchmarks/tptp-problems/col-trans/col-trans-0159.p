include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, D, T, Bprime, MB, Bprimeprime] : ( (
 wd( A, B) &
 wd( A, D) &
  wd( A, T) &
   wd( B, D) &
    wd( B, T) &
     wd( D, T) &
      wd( D, Bprime) &
       wd( B, Bprime) &
        wd( MB, B) &
         wd( MB, T) &
          wd( MB, Bprime) &
           wd( Bprime, Bprimeprime) &
            wd( MB, Bprimeprime) &
             wd( T, Bprimeprime) &
              wd( B, Bprimeprime) &
               wd( A, Bprime) &
                col( A, B, Bprime) &
                 col( Bprime, MB, Bprimeprime) &
                  col( B, MB, T) &
                   col( Bprime, B, D) & col( T, D, A) ) => col( A, B, T))) 
).

