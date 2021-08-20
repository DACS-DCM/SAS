%macro removeDiagnosisDuplicates;

	proc sort data=tmp out=tmp nodupkey;
		by 	RECNUM
			C_DIAG
			C_DIAGTYPE
		;
	run;

%mend;
