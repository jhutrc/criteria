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
gen	antihist16=(strpos(gnn,"BROMPHENIRAMINE")!=0)
gen	antihist19=(strpos(gnn,"CARBINOXAMINE")!=0)
gen	antihist26=(strpos(gnn,"CHLORPHENIRAMINE")!=0)
gen	antihist31=(strpos(gnn,"CLEMASTINE")!=0)
gen	antihist36=(strpos(gnn,"CYPROHEPTADINE")!=0)
gen	antihist39=(strpos(gnn,"DEXBROMPHENIRAMINE")!=0)
gen	antihist40=(strpos(gnn,"DEXCHLORPHENIRAMINE")!=0)
gen	antihist43=(strpos(gnn,"DIMENHYDRINATE")!=0)
gen	antihist47=(strpos(gnn,"DIPHENHYDRAMINE")!=0)
gen	antihist51=(strpos(gnn,"DOXYLAMINE")!=0)
gen	antihist65=(strpos(gnn,"HYDROXYZINE")!=0)
gen	antihist77=(strpos(gnn,"MECLIZINE")!=0)
gen	antihist101=(strpos(gnn,"PROMETHAZINE")!=0)
gen	antihist105=(strpos(gnn,"PYRILAMINE")!=0)
gen	antihist127=(strpos(gnn,"TRIPROLIDINE")!=0)      
		gen  antihist_rx=( ///	
antihist16+	///
antihist19+	///
antihist26+	///
antihist31+	///
antihist36+	///
antihist39+	///
antihist40+	///
antihist43+	///
antihist47+	///
antihist51+	///
antihist65+	///
antihist77+	///
antihist101+	///
antihist105+	///
antihist127	///
>0)
keep usrds_id srvc_dt antihist_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 01_antihistamines_expR.dta,replace
di "$S_TIME"
