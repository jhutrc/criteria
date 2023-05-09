di "$S_TIME"
clear
set more off
tempfile pde_2013 pde_2014 pde2013bc pde2014bc 
use usrds_id srvc_dt gnn using "/dcs01/igm/segevlab/data/usrds2015/claims/pd/pde2013",clear
save `pde_2013',replace
use usrds_id srvc_dt gnn using "/dcs01/igm/segevlab/data/usrds2016/claims/pd/pde2014",clear
save `pde_2014',replace
local year "y=2013/2014"
forvalues `year' {
  capture use `pde_`y'',clear
	if _rc==0 {
		di "processing pde_`y'.dta ..."
gen	benzoshort1=(strpos(gnn,"ALPRAZOLAM")!=0)
gen	benzoshort5=(strpos(gnn,"ESTAZOLAM")!=0)
gen	benzolong15=(strpos(gnn,"LORAZEPAM")!=0)
gen	benzoshort8=(strpos(gnn,"OXAZEPAM")!=0)
gen	benzoshort9=(strpos(gnn,"TEMAZEPAM")!=0)
gen	benzoshort10=(strpos(gnn,"TRIAZOLAM")!=0)
gen	benzounk47=(strpos(gnn,"CHLORDIAZEPOXIDE")!=0)
gen	benzoshort4=(strpos(gnn,"CLONAZEPAM")!=0)
gen	benzolong11=(strpos(gnn,"CLORAZEPATE")!=0)
gen	benzolong12=(strpos(gnn,"DIAZEPAM")!=0)
gen	benzolong13=(strpos(gnn,"FLURAZEPAM")!=0)
gen	benzolong17=(strpos(gnn,"QUAZEPAM")!=0)      
		gen  benzo_rx=( ///	
benzoshort1+	///
benzoshort4+	///
benzoshort5+	///
benzoshort8+	///
benzoshort9+	///
benzoshort10+	///
benzolong11+	///
benzolong12+	///
benzolong13+	///
benzolong17+	///
benzounk47	///
>0)
keep usrds_id srvc_dt benzo_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 12_benzodiazepines_expR.dta,replace
di "$S_TIME"
