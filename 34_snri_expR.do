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
gen	 snri1=(strpos(gnn,"AMITIFADINE")!=0)
gen	 snri2=(strpos(gnn,"AMITRIPTYLINE")!=0)
gen	 snri3=(strpos(gnn,"AMMUXETINE")!=0)
gen	 snri4=(strpos(gnn,"BICIFADINE")!=0)
gen	 snri5=(strpos(gnn,"BRASOFENSINE")!=0)
gen	 snri6=(strpos(gnn,"CENTANAFADINE")!=0)
gen	 snri7=(strpos(gnn,"CLOMIPRAMINE")!=0)
gen	 snri8=(strpos(gnn,"COCAINE")!=0)
gen	 snri9=(strpos(gnn,"DESVENLAFAXINE")!=0)
gen	 snri10=(strpos(gnn,"DEUDEXTROMETHORPHAN")!=0)
gen	 snri11=(strpos(gnn,"DICLOFENSINE")!=0)
gen	 snri12=(strpos(gnn,"DOXEPIN")!=0)
gen	 snri13=(strpos(gnn,"DULOXETINE")!=0)
gen	 snri14=(strpos(gnn,"IMIPRAMINE")!=0)
gen	 snri15=(strpos(gnn,"INDATRALINE")!=0)
gen	 snri16=(strpos(gnn,"LEVOMILNACIPRAN")!=0)
gen	 snri17=(strpos(gnn,"LIAFENSINE")!=0)
gen	 snri18=(strpos(gnn,"METHAMPHETAMINE")!=0)
gen	 snri19=(strpos(gnn,"MILNACIPRAN")!=0)
gen	 snri20=(strpos(gnn,"NEFAZODONE")!=0)
gen	 snri21=(strpos(gnn,"SIBUTRAMINE")!=0)
gen	 snri22=(strpos(gnn,"TESOFENSINE")!=0)
gen	 snri23=(strpos(gnn,"TRIPLE REUPTAKE INHIBITOR")!=0)
gen	 snri24=(strpos(gnn,"VENLAFAXINE")!=0)        
		gen  snri_rx=( ///	
snri1+	///
snri2+	///
snri3+	///
snri4+	///
snri5+	///
snri6+	///
snri7+	///
snri8+	///
snri9+	///
snri10+	///
snri11+	///
snri12+	///
snri13+	///
snri14+	///
snri15+	///
snri16+	///
snri17+	///
snri18+	///
snri19+	///
snri20+	///
snri21+	///
snri22+	///
snri23+	///
snri24	///
>0)
keep usrds_id srvc_dt snri_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 34_snri_expR.dta,replace
di "$S_TIME"
