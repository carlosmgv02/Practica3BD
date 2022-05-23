select employees.nom FROM (employees INNER JOIN ordinaris ON ordinaris.num_pass=employees.num_pass
     INNER JOIN assignacions ON assignacions.empl_ord=ordinaris.num_pass
    INNER JOIN assignacions ON assignacions.zona=zona_biocon.codi INNER JOIN assignacions
    on assignacions.lab=zona_biocon.codiLab) where zona_biocon.nivell<>'A';
