use bdnilcarlos;

/* Nivell de les zones:
    12345- M
    32145- A
    54321- B
    65432- A
    77777- B*/
update zona_biocon
set nivell='A'
where codi in (select zona
               from armesbio where  potencial > 5);

