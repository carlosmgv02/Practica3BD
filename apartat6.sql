use bdnilcarlos;

/*Obtenir quins empleats ordinaris han estat en totes les zones de biocontenció
del laboratori que té per nom ‘BCN-XXX’*/
select empl_ord
FROM assignacions
WHERE zona IN(SELECT codi
            FROM zona_biocon
            WHERE codiLab IN(SELECT codi
                             FROM laboratoris
                             WHERE nom LIKE 'BCN-%'));
