%macro findSdsBirthyear(studpop,studpopWithBirthyear);

	data &studpopWithBirthyear.;
		set &studpop.;
		birthyear=year(d_foddato);
	run;

%mend;