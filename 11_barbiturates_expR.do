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
gen	barb2=(strpos(gnn,"AMOBARBITAL")!=0)
gen	barb11=(strpos(gnn,"BUTABARBITAL")!=0)
gen	barb12=(strpos(gnn,"BUTALBITAL")!=0)
gen	barb24=(strpos(gnn,"MEPHOBARBITAL")!=0)
gen	barb30=(strpos(gnn,"PENTOBARBITAL")!=0)
gen	barb31=(strpos(gnn,"PHENOBARBITAL")!=0)
gen	barb37=(strpos(gnn,"SECOBARBITAL")!=0)     
		gen  barb_rx=( ///	
barb2+	///
barb11+	///
barb12+	///
barb24+	///
barb30+	///
barb31+	///
barb37	///
>0)
keep usrds_id srvc_dt barb_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 11_barbiturates_expR.dta,replace
di "$S_TIME"
