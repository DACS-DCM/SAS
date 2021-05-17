%macro extractRandomSubsetOfData(allData,randomSubset);

	data &randomSubset.;
		set &allData.;
		r=rand("Uniform");

		if r < .9 then
			delete;
		drop r;
	run;

%mend;
