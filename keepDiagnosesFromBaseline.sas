%macro keepDiagnosesFromBaseline(allDiagnoses,PostBaselineDiagnoses);

	data &PostBaselineDiagnoses.;
		set &allDiagnoses.;
		where baseline <= diagnosisdate;
	run;

%mend;
