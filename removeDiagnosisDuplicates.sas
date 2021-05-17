%macro removeDiagnosisDuplicates(allData,nodups);

	proc sort data=&allData. out=&nodups. nodupkey;
		by RECNUM
			C_DIAG
			C_DIAGTYPE
		;
	run;

%mend;
