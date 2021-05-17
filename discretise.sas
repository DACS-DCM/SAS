%macro discretise(variable);
	discretised&variable.=put(&variable.,7.);

	if &variable. < 5 then
		discretised&variable.="<5";
	drop &variable.;
	rename discretised&variable.=&variable.;
%mend;
