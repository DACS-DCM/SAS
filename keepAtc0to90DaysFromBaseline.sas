%macro keepAtc0to90DaysFromBaseline(allAtc,atc0to90daysAfterBaseline);

	data &atc0to90daysAfterBaseline.;
		set &allAtc.;

		where baseline <= eksd and eksd <= baseline +90;
	run;

%mend;
