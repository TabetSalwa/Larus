include('col-axioms.ax').

fof(pipo,conjecture,
(! [A, B, C, I, H1, H2] : ( (
 wd( H1, B) &
 wd( H2, B) &
  wd( A, B) &
   wd( B, C) &
    wd( A, C) &
     wd( I, H2) &
      wd( I, H1) &
       wd( I, B) &
        col( B, C, H2) &
         col( B, C, I) & col( B, H1, A) ) => col( H2, B, I)))  ).

