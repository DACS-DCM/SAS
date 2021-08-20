%macro dropAtcVariables;

	data tmp;
		set tmp;
		drop strnum packsize cprtjek
		;
	run;

%mend;
