* mergePopulationAndRegister pco 20201015;

%macro mergePopulationAndRegister(population,register,PopulationAndRegister);

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

	data &PopulationAndregister. onlyregister;
		merge population(in=population) register(in=register);
		by pnr;

		if population then
			output &PopulationAndRegister.;
		else if not population and register then
			output onlyRegister;
	run;

%mend;
