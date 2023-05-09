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
gen	 ppi1=(strpos(gnn,"ABEPRAZAN")!=0)
gen	 ppi2=(strpos(gnn,"AZELOPRAZOLE")!=0)
gen	 ppi3=(strpos(gnn,"BENATOPRAZOLE")!=0)
gen	 ppi4=(strpos(gnn,"CASSIGAROL A")!=0)
gen	 ppi5=(strpos(gnn,"DEXLANSOPRAZOLE")!=0)
gen	 ppi6=(strpos(gnn,"ESOMEPRAZOLE")!=0)
gen	 ppi7=(strpos(gnn,"ILAPRAZOLE")!=0)
gen	 ppi8=(strpos(gnn,"LANSOPRAZOLE")!=0)
gen	 ppi9=(strpos(gnn,"LEMINOPRAZOLE")!=0)
gen	 ppi10=(strpos(gnn,"LEVOLANSOPRAZOLE")!=0)
gen	 ppi11=(strpos(gnn,"LINAPRAZAN")!=0)
gen	 ppi12=(strpos(gnn,"NEPAPRAZOLE")!=0)
gen	 ppi13=(strpos(gnn,"OMEPRAZOLE")!=0)
gen	 ppi14=(strpos(gnn,"PANTOPRAZOLE")!=0)
gen	 ppi15=(strpos(gnn,"PICOPRAZOLE")!=0)
gen	 ppi16=(strpos(gnn,"POTASSIUM COMPETITIVE ACID BLOCKER")!=0)
gen	 ppi17=(strpos(gnn,"PUMAPRAZOLE")!=0)
gen	 ppi18=(strpos(gnn,"RABEPRAZOLE")!=0)
gen	 ppi19=(strpos(gnn,"REVAPRAZAN")!=0)
gen	 ppi20=(strpos(gnn,"SALVIANOLIC ACID A")!=0)
gen	 ppi21=(strpos(gnn,"SAVIPRAZOLE")!=0)
gen	 ppi22=(strpos(gnn,"SCOPADULCIOL")!=0)
gen	 ppi23=(strpos(gnn,"SORAPRAZAN")!=0)
gen	 ppi24=(strpos(gnn,"TEGOPRAZAN")!=0)
gen	 ppi25=(strpos(gnn,"TIMOPRAZOLE")!=0)
gen	 ppi26=(strpos(gnn,"VONOPRAZAN")!=0)
gen	 ppi27=(strpos(gnn,"XANTHOANGELOL")!=0)      
		gen  ppi_rx=( ///	
ppi1+	///
ppi2+	///
ppi3+	///
ppi4+	///
ppi5+	///
ppi6+	///
ppi7+	///
ppi8+	///
ppi9+	///
ppi10+	///
ppi11+	///
ppi12+	///
ppi13+	///
ppi14+	///
ppi15+	///
ppi16+	///
ppi17+	///
ppi18+	///
ppi19+	///
ppi20+	///
ppi21+	///
ppi22+	///
ppi23+	///
ppi24+	///
ppi25+	///
ppi26+	///
ppi27	///
>0)
keep usrds_id srvc_dt ppi_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 20_protonpumpinh_expR.dta,replace
di "$S_TIME"
