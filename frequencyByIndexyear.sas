%macro frequencyByIndexyear(allPnr);

	proc freq data=&allPnr.;
		tables indexyear /missing out=FreqByIndexyear;
	run;


%mend;
