include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, X, Y, T, PX, PY, Bprime, Cprime] : ( (
 wd( A, B) &
 wd( A, T) &
  wd( PX, A) &
   wd( PY, A) &
    wd( A, Cprime) &
     wd( PY, B) &
      wd( PX, B) &
       wd( T, B) &
        wd( B, Y) &
         wd( A, Y) &
          wd( B, X) &
           wd( A, X) &
            wd( B, Bprime) &
             wd( A, Bprime) &
              col( PY, A, Cprime) &
               col( PX, A, T) &
                col( PY, A, T) &
                 col( A, PX, PY) &
                  col( Cprime, A, B) & col( B, A, Bprime) ) => col( PY, A, B))) 
).

