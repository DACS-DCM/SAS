* adopted from https://chemicalstatistician.wordpress.com/2015/01/06/get-a-list-of-the-variable-names-of-a-sas-data-set/;

%macro listvar(dataset);

	proc contents data=&dataset. out=&dataset.names(keep=name varnum memname label) noprint;
	run;

	proc sort data=&dataset.names;
		by varnum;
	run;

%mend;
