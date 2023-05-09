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
gen	 estro1=(strpos(gnn,"ANORDIOL")!=0)
gen	 estro2=(strpos(gnn,"ANORDRIN")!=0)
gen	 estro3=(strpos(gnn,"BAZEDOXIFENE")!=0)
gen	 estro4=(strpos(gnn,"BIOCHANIN A")!=0)
gen	 estro5=(strpos(gnn,"BISPHENOL A")!=0)
gen	 estro6=(strpos(gnn,"BROPARESTROL")!=0)
gen	 estro7=(strpos(gnn,"CATECHOL ESTROGEN")!=0)
gen	 estro8=(strpos(gnn,"CHLOROTRIANISENE")!=0)
gen	 estro9=(strpos(gnn,"CONJUGATED ESTROGENS")!=0)
gen	 estro10=(strpos(gnn,"CONJUGATED ESTROGENS SYNTHETIC A")!=0)
gen	 estro11=(strpos(gnn,"CONJUGATED ESTROGENS SYNTHETIC B")!=0)
gen	 estro12=(strpos(gnn,"COUMESTROL")!=0)
gen	 estro13=(strpos(gnn,"COUMESTROL DERIVATIVE")!=0)
gen	 estro14=(strpos(gnn,"DAIDZEIN")!=0)
gen	 estro15=(strpos(gnn,"DEPOSISTON")!=0)
gen	 estro16=(strpos(gnn,"DIARYLPROPIONITRILE")!=0)
gen	 estro17=(strpos(gnn,"DIENESTROL")!=0)
gen	 estro18=(strpos(gnn,"DIETHYLSTILBESTROL")!=0)
gen	 estro19=(strpos(gnn,"EPIMESTROL")!=0)
gen	 estro20=(strpos(gnn,"EQUOL")!=0)
gen	 estro21=(strpos(gnn,"ESTETROL")!=0)
gen	 estro22=(strpos(gnn,"ESTRADIOL")!=0)
gen	 estro23=(strpos(gnn,"ESTRAMUSTINE")!=0)
gen	 estro24=(strpos(gnn,"ESTRIOL")!=0)
gen	 estro25=(strpos(gnn,"ESTROGEN DERIVATIVE")!=0)
gen	 estro26=(strpos(gnn,"ESTROGENIC STEROIDS, ALKYLATED")!=0)
gen	 estro27=(strpos(gnn,"ESTROGENS, ESTERIFIED (USP)")!=0)
gen	 estro28=(strpos(gnn,"ESTRONE")!=0)
gen	 estro29=(strpos(gnn,"ESTROPIPATE")!=0)
gen	 estro30=(strpos(gnn,"FORMONONETIN")!=0)
gen	 estro31=(strpos(gnn,"GENISTEIN")!=0)
gen	 estro32=(strpos(gnn,"GLYCITEIN")!=0)
gen	 estro33=(strpos(gnn,"GLYCITIN")!=0)
gen	 estro34=(strpos(gnn,"HEXESTROL")!=0)
gen	 estro35=(strpos(gnn,"INDENESTROL A")!=0)
gen	 estro36=(strpos(gnn,"INDENESTROL B")!=0)
gen	 estro37=(strpos(gnn,"INFECUNDIN")!=0)
gen	 estro38=(strpos(gnn,"LASOFOXIFENE")!=0)
gen	 estro39=(strpos(gnn,"MESTRANOL")!=0)
gen	 estro40=(strpos(gnn,"METHALLENESTRIL")!=0)
gen	 estro41=(strpos(gnn,"OSPEMIFENE")!=0)
gen	 estro42=(strpos(gnn,"PHYTOESTROGEN")!=0)
gen	 estro43=(strpos(gnn,"PROLAME")!=0)
gen	 estro44=(strpos(gnn,"PROMESTRIENE")!=0)
gen	 estro45=(strpos(gnn,"QUINESTRADOL")!=0)
gen	 estro46=(strpos(gnn,"SECOISOLARICIRESINOL")!=0)
gen	 estro47=(strpos(gnn,"TIBOLONE")!=0)
gen	 estro48=(strpos(gnn,"TROPHIGIL")!=0)
gen	 estro49=(strpos(gnn,"ZEARALENONE")!=0)
gen	 estro50=(strpos(gnn,"ZERANOL")!=0)   
		gen  estro_rx=( ///	
estro1+	///
estro2+	///
estro3+	///
estro4+	///
estro5+	///
estro6+	///
estro7+	///
estro8+	///
estro9+	///
estro10+	///
estro11+	///
estro12+	///
estro13+	///
estro14+	///
estro15+	///
estro16+	///
estro17+	///
estro18+	///
estro19+	///
estro20+	///
estro21+	///
estro22+	///
estro23+	///
estro24+	///
estro25+	///
estro26+	///
estro27+	///
estro28+	///
estro29+	///
estro30+	///
estro31+	///
estro32+	///
estro33+	///
estro34+	///
estro35+	///
estro36+	///
estro37+	///
estro38+	///
estro39+	///
estro40+	///
estro41+	///
estro42+	///
estro43+	///
estro44+	///
estro45+	///
estro46+	///
estro47+	///
estro48+	///
estro49+	///
estro50 	///
>0)
keep usrds_id srvc_dt estro_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 16_estrogens_expR.dta,replace
di "$S_TIME"
