%macro frequencyByIndexyear;

	proc freq data=tmp;
		tables indexyear /missing out=tmp;
	run;


%mend;
