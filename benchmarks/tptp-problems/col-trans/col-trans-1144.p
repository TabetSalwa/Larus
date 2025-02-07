include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C, G, H, O, Aprime, Bprime, Cprime] : ( (
 wd( O, G) &
 wd( O, H) &
  wd( O, Aprime) &
   wd( A, Aprime) &
    wd( A, B) &
     wd( B, C) &
      wd( A, C) &
       wd( Bprime, A) &
        wd( Bprime, C) &
         wd( Aprime, B) &
          wd( Aprime, C) &
           wd( Cprime, A) &
            wd( Cprime, B) &
             wd( C, H) &
              wd( B, H) &
               wd( A, H) &
                col( G, Aprime, A) &
                 col( A, Aprime, H) &
                  col( Aprime, A, O) &
                   col( Cprime, A, B) &
                    col( Bprime, A, C) & col( Aprime, B, C) ) => col( G, H, O))) 
).

