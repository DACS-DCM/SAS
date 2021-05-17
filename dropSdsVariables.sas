%macro dropSdsVariables(allVariables,relevantVariables);

	data &relevantVariables.;
		set &allVariables.;
		drop d_status_hen_start vit migration indate outdate c_status
		;
	run;

%mend;
