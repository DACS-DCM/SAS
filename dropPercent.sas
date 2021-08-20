%macro dropPercent;

	data tmp;
		set tmp;
		drop percent;
	run;

%mend;
