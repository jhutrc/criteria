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
gen	 growth1=(strpos(gnn,"ACCRETROPIN")!=0)
gen	 growth2=(strpos(gnn,"ALBUSOMATROPIN")!=0)
gen	 growth3=(strpos(gnn,"ASELLACRIN")!=0)
gen	 growth4=(strpos(gnn,"BIO TROPIN")!=0)
gen	 growth5=(strpos(gnn,"BIOSYNTHETIC HUMAN GROWTH HORMONE")!=0)
gen	 growth6=(strpos(gnn,"BIOTROPIN")!=0)
gen	 growth7=(strpos(gnn,"CORPORMON")!=0)
gen	 growth8=(strpos(gnn,"CRESCORMON")!=0)
gen	 growth9=(strpos(gnn,"CRYO TROPIN")!=0)
gen	 growth10=(strpos(gnn,"CRYO-TROPIN")!=0)
gen	 growth11=(strpos(gnn,"CRYOTROPIN")!=0)
gen	 growth12=(strpos(gnn,"EFPEGSOMATROPIN")!=0)
gen	 growth13=(strpos(gnn,"EFTANSOMATROPIN ALFA")!=0)
gen	 growth14=(strpos(gnn,"GENOTONORM")!=0)
gen	 growth15=(strpos(gnn,"GENOTROPIN")!=0)
gen	 growth16=(strpos(gnn,"GROWJECT BC")!=0)
gen	 growth17=(strpos(gnn,"GROWTH HORMONE")!=0)
gen	 growth18=(strpos(gnn,"H.G.H.")!=0)
gen	 growth19=(strpos(gnn,"HGH")!=0)
gen	 growth20=(strpos(gnn,"HORMONE, HUMAN GROWTH")!=0)
gen	 growth21=(strpos(gnn,"HUMAN GROWTH HORMONE")!=0)
gen	 growth22=(strpos(gnn,"HUMAN SOMATOTROPIN")!=0)
gen	 growth23=(strpos(gnn,"HUMATROP")!=0)
gen	 growth24=(strpos(gnn,"HUMATROPE")!=0)
gen	 growth25=(strpos(gnn,"JINTROPIN")!=0)
gen	 growth26=(strpos(gnn,"LONAPEGSOMATROPIN")!=0)
gen	 growth27=(strpos(gnn,"MAXOMAT")!=0)
gen	 growth28=(strpos(gnn,"NEUTROPIN")!=0)
gen	 growth29=(strpos(gnn,"NORDITROPIN")!=0)
gen	 growth30=(strpos(gnn,"NORDITROPINE")!=0)
gen	 growth31=(strpos(gnn,"NOVOTROPIN")!=0)
gen	 growth32=(strpos(gnn,"NUTROPIN")!=0)
gen	 growth33=(strpos(gnn,"OMNITROPE")!=0)
gen	 growth34=(strpos(gnn,"PEGVISOMANT")!=0)
gen	 growth35=(strpos(gnn,"PROLEASE")!=0)
gen	 growth36=(strpos(gnn,"SAIZEN")!=0)
gen	 growth37=(strpos(gnn,"SALZEN")!=0)
gen	 growth38=(strpos(gnn,"SCITROPIN")!=0)
gen	 growth39=(strpos(gnn,"SEROSTIM")!=0)
gen	 growth40=(strpos(gnn,"SEROTIM")!=0)
gen	 growth41=(strpos(gnn,"SOMAGREBOVE")!=0)
gen	 growth42=(strpos(gnn,"SOMALAPOR")!=0)
gen	 growth43=(strpos(gnn,"SOMAPACITAN")!=0)
gen	 growth44=(strpos(gnn,"SOMATOSALM")!=0)
gen	 growth45=(strpos(gnn,"SOMATOTROPIN (HUMAN)")!=0)
gen	 growth46=(strpos(gnn,"SOMATREM")!=0)
gen	 growth47=(strpos(gnn,"SOMATROPIN")!=0)
gen	 growth48=(strpos(gnn,"SOMAVARATAN")!=0)
gen	 growth49=(strpos(gnn,"SOMAVUBOVE")!=0)
gen	 growth50=(strpos(gnn,"SOMENOPOR")!=0)
gen	 growth51=(strpos(gnn,"SOMETRIPOR")!=0)
gen	 growth52=(strpos(gnn,"SOMFASEPOR")!=0)
gen	 growth53=(strpos(gnn,"SUBTROPIN")!=0)
gen	 growth54=(strpos(gnn,"TEV TROPIN")!=0)
gen	 growth55=(strpos(gnn,"TEV-TROPIN")!=0)
gen	 growth56=(strpos(gnn,"TEVTROPIN")!=0)
gen	 growth57=(strpos(gnn,"UMATROPE")!=0)
gen	 growth58=(strpos(gnn,"VALTROPIN")!=0)
gen	 growth59=(strpos(gnn,"ZOMACTON")!=0)
gen	 growth60=(strpos(gnn,"ZORBTIVE")!=0) 
		gen  growth_rx=( ///	
growth1+	///
growth2+	///
growth3+	///
growth4+	///
growth5+	///
growth6+	///
growth7+	///
growth8+	///
growth9+	///
growth10+	///
growth11+	///
growth12+	///
growth13+	///
growth14+	///
growth15+	///
growth16+	///
growth17+	///
growth18+	///
growth19+	///
growth20+	///
growth21+	///
growth22+	///
growth23+	///
growth24+	///
growth25+	///
growth26+	///
growth27+	///
growth28+	///
growth29+	///
growth30+	///
growth31+	///
growth32+	///
growth33+	///
growth34+	///
growth35+	///
growth36+	///
growth37+	///
growth38+	///
growth39+	///
growth40+	///
growth41+	///
growth42+	///
growth43+	///
growth44+	///
growth45+	///
growth46+	///
growth47+	///
growth48+	///
growth49+	///
growth50+	///
growth51+	///
growth52+	///
growth53+	///
growth54+	///
growth55+	///
growth56+	///
growth57+	///
growth58+	///
growth59+	///
growth60	///
>0)
keep usrds_id srvc_dt growth_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 17_growthhormones_expR.dta,replace
di "$S_TIME"
