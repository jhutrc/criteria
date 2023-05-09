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
gen	 ras1=(strpos(gnn,"ABITESARTAN")!=0)
gen	 ras2=(strpos(gnn,"ALACEPRIL")!=0)
gen	 ras3=(strpos(gnn,"ALTIOPRIL")!=0)
gen	 ras4=(strpos(gnn,"ANCOVENIN")!=0)
gen	 ras5=(strpos(gnn,"ANGIOTENSIN 1 RECEPTOR ANTAGONIST")!=0)
gen	 ras6=(strpos(gnn,"ANGIOTENSIN 2 RECEPTOR ANTAGONIST")!=0)
gen	 ras7=(strpos(gnn,"AZILSARTAN")!=0)
gen	 ras8=(strpos(gnn,"BENAZEPRIL")!=0)
gen	 ras9=(strpos(gnn,"BENAZEPRILAT")!=0)
gen	 ras10=(strpos(gnn,"CANDESARTAN")!=0)
gen	 ras11=(strpos(gnn,"CAPTOPRIL")!=0)
gen	 ras12=(strpos(gnn,"CERONAPRIL")!=0)
gen	 ras13=(strpos(gnn,"CILAZAPRIL")!=0)
gen	 ras14=(strpos(gnn,"CILAZAPRILAT")!=0)
gen	 ras15=(strpos(gnn,"DEACETYLALACEPRIL")!=0)
gen	 ras16=(strpos(gnn,"DELAPRIL")!=0)
gen	 ras17=(strpos(gnn,"ELISARTAN")!=0)
gen	 ras18=(strpos(gnn,"EMBUSARTAN")!=0)
gen	 ras19=(strpos(gnn,"ENALAPRIL")!=0)
gen	 ras20=(strpos(gnn,"ENALAPRILAT")!=0)
gen	 ras21=(strpos(gnn,"ENOLTASOSARTAN")!=0)
gen	 ras22=(strpos(gnn,"EPICAPTOPRIL")!=0)
gen	 ras23=(strpos(gnn,"EPROSARTAN")!=0)
gen	 ras24=(strpos(gnn,"FASIDOTRIL")!=0)
gen	 ras25=(strpos(gnn,"FASIDOTRILAT")!=0)
gen	 ras26=(strpos(gnn,"FIMASARTAN")!=0)
gen	 ras27=(strpos(gnn,"FONSARTAN")!=0)
gen	 ras28=(strpos(gnn,"FORASARTAN")!=0)
gen	 ras29=(strpos(gnn,"FOROXYMITHINE")!=0)
gen	 ras30=(strpos(gnn,"FOSINOPRIL")!=0)
gen	 ras31=(strpos(gnn,"FOSINOPRILAT")!=0)
gen	 ras32=(strpos(gnn,"GEMOPATRILAT")!=0)
gen	 ras33=(strpos(gnn,"IDRAPRIL")!=0)
gen	 ras34=(strpos(gnn,"ILEPATRIL")!=0)
gen	 ras35=(strpos(gnn,"IMIDAPRIL")!=0)
gen	 ras36=(strpos(gnn,"IMIDAPRILAT")!=0)
gen	 ras37=(strpos(gnn,"INDOLAPRIL")!=0)
gen	 ras38=(strpos(gnn,"IRBESARTAN")!=0)
gen	 ras39=(strpos(gnn,"LIBENZAPRIL")!=0)
gen	 ras40=(strpos(gnn,"LISINOPRIL")!=0)
gen	 ras41=(strpos(gnn,"LOSARTAN")!=0)
gen	 ras42=(strpos(gnn,"MILFASARTAN")!=0)
gen	 ras43=(strpos(gnn,"MOEXIPRIL")!=0)
gen	 ras44=(strpos(gnn,"MOEXIPRILAT")!=0)
gen	 ras45=(strpos(gnn,"OLMESARTAN")!=0)
gen	 ras46=(strpos(gnn,"OLODANRIGAN")!=0)
gen	 ras47=(strpos(gnn,"OMAPATRILAT")!=0)
gen	 ras48=(strpos(gnn,"PENTOPRIL")!=0)
gen	 ras49=(strpos(gnn,"PENTOPRILAT")!=0)
gen	 ras50=(strpos(gnn,"PERINDOPRIL")!=0)
gen	 ras51=(strpos(gnn,"PERINDOPRILAT")!=0)
gen	 ras52=(strpos(gnn,"PIVOPRIL")!=0)
gen	 ras53=(strpos(gnn,"POMISARTAN")!=0)
gen	 ras54=(strpos(gnn,"PRATOSARTAN")!=0)
gen	 ras55=(strpos(gnn,"QUINAPRIL")!=0)
gen	 ras56=(strpos(gnn,"QUINAPRILAT")!=0)
gen	 ras57=(strpos(gnn,"RAMIPRIL")!=0)
gen	 ras58=(strpos(gnn,"RAMIPRILAT")!=0)
gen	 ras59=(strpos(gnn,"RENTIAPRIL")!=0)
gen	 ras60=(strpos(gnn,"RIPISARTAN")!=0)
gen	 ras61=(strpos(gnn,"S NITROSOCAPTOPRIL")!=0)
gen	 ras62=(strpos(gnn,"SAMPATRILAT")!=0)
gen	 ras63=(strpos(gnn,"SAPRISARTAN")!=0)
gen	 ras64=(strpos(gnn,"SARALASIN")!=0)
gen	 ras65=(strpos(gnn,"SARTAN DERIVATIVE")!=0)
gen	 ras66=(strpos(gnn,"SPARSENTAN")!=0)
gen	 ras67=(strpos(gnn,"SPIRAPRIL")!=0)
gen	 ras68=(strpos(gnn,"SPIRAPRILAT")!=0)
gen	 ras69=(strpos(gnn,"TASOSARTAN")!=0)
gen	 ras70=(strpos(gnn,"TELMISARTAN")!=0)
gen	 ras71=(strpos(gnn,"TEMOCAPRIL")!=0)
gen	 ras72=(strpos(gnn,"TEMOCAPRILAT")!=0)
gen	 ras73=(strpos(gnn,"TEPROTIDE")!=0)
gen	 ras74=(strpos(gnn,"TRANDOLAPRIL")!=0)
gen	 ras75=(strpos(gnn,"TRANDOLAPRILAT")!=0)
gen	 ras76=(strpos(gnn,"UTIBAPRIL")!=0)
gen	 ras77=(strpos(gnn,"UTIBAPRILAT")!=0)
gen	 ras78=(strpos(gnn,"VALSARTAN")!=0)
gen	 ras79=(strpos(gnn,"VALYL-PROLYL-PROLINE")!=0)
gen	 ras80=(strpos(gnn,"VASOPEPTIDASE INHIBITOR")!=0)
gen	 ras81=(strpos(gnn,"ZABICIPRIL")!=0)
gen	 ras82=(strpos(gnn,"ZABICIPRILAT")!=0)
gen	 ras83=(strpos(gnn,"ZOFENOPRIL")!=0)
gen	 ras84=(strpos(gnn,"ZOFENOPRILAT")!=0)
gen	 ras85=(strpos(gnn,"ZOLASARTAN")!=0)
		gen  ras_rx=( ///	
ras1+	///
ras2+	///
ras3+	///
ras4+	///
ras5+	///
ras6+	///
ras7+	///
ras8+	///
ras9+	///
ras10+	///
ras11+	///
ras12+	///
ras13+	///
ras14+	///
ras15+	///
ras16+	///
ras17+	///
ras18+	///
ras19+	///
ras20+	///
ras21+	///
ras22+	///
ras23+	///
ras24+	///
ras25+	///
ras26+	///
ras27+	///
ras28+	///
ras29+	///
ras30+	///
ras31+	///
ras32+	///
ras33+	///
ras34+	///
ras35+	///
ras36+	///
ras37+	///
ras38+	///
ras39+	///
ras40+	///
ras41+	///
ras42+	///
ras43+	///
ras44+	///
ras45+	///
ras46+	///
ras47+	///
ras48+	///
ras49+	///
ras50+	///
ras51+	///
ras52+	///
ras53+	///
ras54+	///
ras55+	///
ras56+	///
ras57+	///
ras58+	///
ras59+	///
ras60+	///
ras61+	///
ras62+	///
ras63+	///
ras64+	///
ras65+	///
ras66+	///
ras67+	///
ras68+	///
ras69+	///
ras70+	///
ras71+	///
ras72+	///
ras73+	///
ras74+	///
ras75+	///
ras76+	///
ras77+	///
ras78+	///
ras79+	///
ras80+	///
ras81+	///
ras82+	///
ras83+	///
ras84+	///
ras85	///
>0)
keep usrds_id srvc_dt ras_rx 
duplicates drop
compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 36_rasinhibitors_expR.dta,replace
di "$S_TIME"
