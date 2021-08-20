%macro extractRandomSubsetOfData;

	data tmp;
		set tmp;
		r=rand("Uniform");

		if r < .9 then
			delete;
		drop r;
	run;

%mend;
