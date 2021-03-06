use bdnilcarlos;
/* Obtenir els noms dels empleats ordinaris que no han estat mai assignats a cap
zona de biocontenci√≥ de nivell de perillositat Alt.*/
select e.nom FROM employees e INNER JOIN ordinaris o ON o.num_pass=e.num_pass
      WHERE not exists( select a.empl_ord from assignacions a
          INNER JOIN zona_biocon z ON a.zona=z.codi WHERE z.nivell='A' AND a.empl_ord=o.num_pass);
