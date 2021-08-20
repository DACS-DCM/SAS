%macro keepAtc0to90DaysFromBaseline;

	data tmp;
		set tmp;

		where baseline <= eksd and eksd <= baseline +90;
	run;

%mend;
