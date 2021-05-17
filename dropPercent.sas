%macro dropPercent(pop,noPercent);

	data &noPercent.;
		set &pop.;
		drop percent;
	run;

%mend;
