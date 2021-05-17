%macro dropAtcVariables(allVariables,relevantVariables);

	data &relevantVariables.;
		set &allVariables.;
		drop strnum packsize cprtjek
		;
	run;

%mend;
