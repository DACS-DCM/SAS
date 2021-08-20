%macro dropSdsVariables;

	data tmp;
		set tmp;
		drop d_status_hen_start vit migration indate outdate c_status;
	run;

%mend;
