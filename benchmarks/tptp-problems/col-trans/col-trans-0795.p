include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C, D, Bprime, Cprime] : ( (
 wd( C, Cprime) &
 wd( B, Bprime) &
  wd( A, Bprime) &
   wd( A, D) &
    wd( A, Cprime) &
     wd( D, Bprime) &
      wd( D, Cprime) &
       wd( Bprime, Cprime) &
        wd( B, C) &
         wd( A, B) &
          wd( A, C) &
           wd( D, B) &
            wd( D, C) &
             col( D, Cprime, C) &
              col( B, C, Cprime) &
               col( B, C, Bprime) & col( A, B, Bprime) ) => col( B, C, D))) 
).

