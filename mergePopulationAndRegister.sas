%macro mergePopulationAndRegister(population,register);

	data population;
		set &population.;
	run;

	data register;
		set &register.;
	run;

	proc sort data=population;
		by pnr;
	run;

	proc sort data=register;
		by pnr;
	run;

	data tmp onlyregister;
		merge population(in=population) register(in=register);
		by pnr;

		if population then
			output tmp;
		else if not population and register then
			output onlyRegister;
	run;
	
	%nrows(onlyregister);
	%put ARE ONLY IN REGISTER AND NOT IN POPULATION;
	
	proc delete data = population register onlyRegister;
	run;

%mend;
