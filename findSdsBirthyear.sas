%macro findSdsBirthyear;

	data tmp;
		set tmp;
		birthyear=year(d_foddato);
	run;

%mend;
