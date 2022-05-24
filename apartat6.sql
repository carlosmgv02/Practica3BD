
select empl_ord
FROM assignacions
WHERE zona IN(SELECT codi
            FROM zona_biocon
            WHERE codiLab IN(SELECT codi
                             FROM laboratoris
                             WHERE nom LIKE 'BCN-%'));
