include('col-axioms.ax').

fof(pipo,conjecture,
(! [O, E, Eprime, A, B, C, Oprime, Aprime, Bprime, Cprime, Eprimeprime, Bprimeprime, C2, B0 ] : ( (
 wd( O, E) &
 wd( Oprime, Eprime) &
  wd( A, O) &
   wd( B, O) &
    wd( C, O) &
     wd( A, E) &
      wd( Eprimeprime, O) &
       wd( O, Oprime) &
        wd( Bprimeprime, O) &
         wd( Eprimeprime, A) &
          wd( E, Eprimeprime) &
           wd( E, Eprime) &
            wd( O, Eprime) &
             wd( Oprime, Eprimeprime) &
              wd( E, Oprime) &
               wd( B, Bprimeprime) &
                wd( Eprime, C2) &
                 wd( Aprime, C2) &
                  wd( Oprime, Aprime) &
                   wd( A, Aprime) &
                    wd( C, Cprime) &
                     wd( B, Bprime) &
                      col( O, E, A) &
                       col( O, E, B) &
                        col( O, E, C) &
                         col( Oprime, Eprime, Aprime) &
                          col( Oprime, Eprime, Bprime) &
                           col( Oprime, Eprime, Cprime) &
                            col( O, Eprimeprime, Bprimeprime) &
                             col( O, Eprimeprime, Oprime) &
                              col( O, Eprimeprime, C2) &
                               col( O, E, B0) &
                                col( O, E, Bprimeprime) ) => col( O, Eprimeprime, E))) 
).

