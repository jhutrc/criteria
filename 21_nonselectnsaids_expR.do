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
gen	 nsnsaid1=(strpos(gnn,"ASPIRIN")!=0)
gen	 nsnsaid2=(strpos(gnn,"DICLOFENAC")!=0)
gen	 nsnsaid3=(strpos(gnn,"DIFLUNISAL")!=0)
gen	 nsnsaid4=(strpos(gnn,"ETODOLAC")!=0)
gen	 nsnsaid5=(strpos(gnn,"FENOPROFEN")!=0)
gen	 nsnsaid6=(strpos(gnn,"FLURBIPROFEN")!=0)
gen	 nsnsaid7=(strpos(gnn,"IBUPROFEN")!=0)
gen	 nsnsaid8=(strpos(gnn,"INDOMETHACIN")!=0)
gen	 nsnsaid9=(strpos(gnn,"KETOPROFEN")!=0)
gen	 nsnsaid10=(strpos(gnn,"KETOROLAC")!=0)
gen	 nsnsaid11=(strpos(gnn,"MEFENAMIC ACID")!=0)
gen	 nsnsaid12=(strpos(gnn,"MELOXICAM")!=0)
gen	 nsnsaid13=(strpos(gnn,"NABUMETONE")!=0)
gen	 nsnsaid14=(strpos(gnn,"NAPROXEN")!=0)
gen	 nsnsaid15=(strpos(gnn,"OXAPROZIN")!=0)
gen	 nsnsaid16=(strpos(gnn,"PIROXICAM")!=0)
gen	 nsnsaid17=(strpos(gnn,"SALSALATE")!=0)
gen	 nsnsaid18=(strpos(gnn,"SULINDAC")!=0)
gen	 nsnsaid19=(strpos(gnn,"TOLMETIN")!=0)
gen	 nsnsaid20=(strpos(gnn,"MECLOFENAMATE,")!=0)
		gen  nsnsaid_rx=( ///	
nsnsaid1+	///
nsnsaid2+	///
nsnsaid3+	///
nsnsaid4+	///
nsnsaid5+	///
nsnsaid6+	///
nsnsaid7+	///
nsnsaid8+	///
nsnsaid9+	///
nsnsaid10+	///
nsnsaid11+	///
nsnsaid12+	///
nsnsaid13+	///
nsnsaid14+	///
nsnsaid15+	///
nsnsaid16+	///
nsnsaid17+	///
nsnsaid18+	///
nsnsaid19+	///
nsnsaid20 	///
>0)
keep usrds_id srvc_dt nsnsaid_rx
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 21_nonselectnsaids_expR.dta,replace
di "$S_TIME"
