%macro findSdsIndexAge;

	data tmp;
		set tmp;
		indexAge=(indexdate-d_foddato)/365.24;
	run;

%mend;
