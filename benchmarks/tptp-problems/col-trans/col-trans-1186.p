include('col-axioms.ax').

fof(pipo,conjecture,
(! [O, E, Eprime, Eprimeprime, A, B, C] : ( (
 wd( O, E) &
 wd( O, Eprime) &
  wd( E, Eprime) &
   wd( A, O) &
    wd( B, O) &
     wd( O, Eprimeprime) &
      wd( E, Eprimeprime) &
       col( O, E, A) &
        col( O, E, B) &
         col( O, E, C) & col( O, Eprimeprime, A) ) => col( O, E, Eprimeprime))  )).

