include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, O, P, T, R, Tprime] : ( (
 wd( O, P) &
 wd( A, B) &
  wd( T, R) &
   wd( A, R) &
    wd( T, Tprime) &
     wd( B, O) &
      wd( A, O) &
       wd( R, Tprime) &
        wd( R, O) &
         col( A, B, T) &
          col( A, B, R) & col( T, R, Tprime) ) => col( A, B, Tprime)))  ).

