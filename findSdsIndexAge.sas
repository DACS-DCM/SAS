%macro findSdsIndexAge(population,popIndexage);

	data &popIndexage.;
		set &population.;
		indexAge=(indexdate-d_foddato)/365.24;
	run;

%mend;
