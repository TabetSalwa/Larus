include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, D, T , B, C] : ( (
 wd( A, D) &
 wd( D, T) &
  wd( A, B) &
   wd( A, C) &
    wd( B, C) &
     wd( B, D) &
      wd( C, D) &
       wd( C, T) &
        wd( B, T) &
         wd( A, T) &
          col( B, D, C) &
           col( A, D, T) & col( A, C, T) ) => col( A, B, C)))  ).

