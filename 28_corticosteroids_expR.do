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
gen	 steroids1=(strpos(gnn,"11 HYDROXYCORTICOSTEROID")!=0)
gen	 steroids2=(strpos(gnn,"17 HYDROXYCORTICOSTEROID")!=0)
gen	 steroids3=(strpos(gnn,"17-ALPHA-HYDROXYPREGNENOLONE")!=0)
gen	 steroids4=(strpos(gnn,"18 HYDROXYHYDROCORTISONE")!=0)
gen	 steroids5=(strpos(gnn,"18 OXOHYDROCORTISONE")!=0)
gen	 steroids6=(strpos(gnn,"18-HYDROXYCORTICOSTERONE")!=0)
gen	 steroids7=(strpos(gnn,"18-HYDROXYDESOXYCORTICOSTERONE")!=0)
gen	 steroids8=(strpos(gnn,"ALCLOMETASONE")!=0)
gen	 steroids9=(strpos(gnn,"ALDOSTERONE")!=0)
gen	 steroids10=(strpos(gnn,"ALGESTONE")!=0)
gen	 steroids11=(strpos(gnn,"AMCINONIDE")!=0)
gen	 steroids12=(strpos(gnn,"AMELOMETASONE")!=0)
gen	 steroids13=(strpos(gnn,"ANDROSTENEDIONE")!=0)
gen	 steroids14=(strpos(gnn,"ANDROSTERONE")!=0)
gen	 steroids15=(strpos(gnn,"BAYCUTEN")!=0)
gen	 steroids16=(strpos(gnn,"BECLOMETASONE")!=0)
gen	 steroids17=(strpos(gnn,"BENZODROCORTISONE")!=0)
gen	 steroids18=(strpos(gnn,"BETAMETHASONE")!=0)
gen	 steroids19=(strpos(gnn,"BUDESONIDE")!=0)
gen	 steroids20=(strpos(gnn,"BUTIXOCORT")!=0)
gen	 steroids21=(strpos(gnn,"CELESTAMINE")!=0)
gen	 steroids22=(strpos(gnn,"CHLORHEXIDINE ACETATE PLUS TIXOCORTOL PIVALATE")!=0)
gen	 steroids23=(strpos(gnn,"CHLOROPREDNISONE")!=0)
gen	 steroids24=(strpos(gnn,"CHLORPHENIRAMINE MALEATE PLUS CORTISONE ACETATE")!=0)
gen	 steroids25=(strpos(gnn,"CHLORQUINALDOL PLUS PROMESTRIENE")!=0)
gen	 steroids26=(strpos(gnn,"CICLESONIDE")!=0)
gen	 steroids27=(strpos(gnn,"CIPROCINONIDE")!=0)
gen	 steroids28=(strpos(gnn,"CLOBETASOL")!=0)
gen	 steroids29=(strpos(gnn,"CLOBETASONE")!=0)
gen	 steroids30=(strpos(gnn,"CLOCORTOLONE")!=0)
gen	 steroids31=(strpos(gnn,"CLOPREDNOL")!=0)
gen	 steroids32=(strpos(gnn,"CORTICOSTERONE")!=0)
gen	 steroids33=(strpos(gnn,"CORTISONE")!=0)
gen	 steroids34=(strpos(gnn,"CORTIVAZOL")!=0)
gen	 steroids35=(strpos(gnn,"CORTODOXONE")!=0)
gen	 steroids36=(strpos(gnn,"DEFLAZACORT")!=0)
gen	 steroids37=(strpos(gnn,"DEHYDROCORTICOSTERONE")!=0)
gen	 steroids38=(strpos(gnn,"DEHYDROEPIANDROSTERONE")!=0)
gen	 steroids39=(strpos(gnn,"DEOXYCORTICOSTERONE")!=0)
gen	 steroids40=(strpos(gnn,"DESONIDE")!=0)
gen	 steroids41=(strpos(gnn,"DESOXIMETASONE")!=0)
gen	 steroids42=(strpos(gnn,"DESOXYCORTICOSTERONE")!=0)
gen	 steroids43=(strpos(gnn,"DEXAMETHASONE")!=0)
gen	 steroids44=(strpos(gnn,"DEXATOPIC")!=0)
gen	 steroids45=(strpos(gnn,"DIFLORASONE")!=0)
gen	 steroids46=(strpos(gnn,"DIFLUCORTOLONE")!=0)
gen	 steroids47=(strpos(gnn,"DIFLUPREDNATE")!=0)
gen	 steroids48=(strpos(gnn,"DOMOPREDNATE")!=0)
gen	 steroids49=(strpos(gnn,"DROCINONIDE")!=0)
gen	 steroids50=(strpos(gnn,"DUTIMELAN")!=0)
gen	 steroids51=(strpos(gnn,"EPIHYDROCORTISONE")!=0)
gen	 steroids52=(strpos(gnn,"ESTRONE")!=0)
gen	 steroids53=(strpos(gnn,"ETIOCHOLANOLONE")!=0)
gen	 steroids54=(strpos(gnn,"ETIPREDNOL DICLOACETATE")!=0)
gen	 steroids55=(strpos(gnn,"FLUCLOROLONE")!=0)
gen	 steroids56=(strpos(gnn,"FLUDROCORTISONE")!=0)
gen	 steroids57=(strpos(gnn,"FLUDROXYCORTIDE")!=0)
gen	 steroids58=(strpos(gnn,"FLUMETASONE")!=0)
gen	 steroids59=(strpos(gnn,"FLUMOXONIDE")!=0)
gen	 steroids60=(strpos(gnn,"FLUNISOLIDE")!=0)
gen	 steroids61=(strpos(gnn,"FLUOCINOLONE")!=0)
gen	 steroids62=(strpos(gnn,"FLUOCINONIDE")!=0)
gen	 steroids63=(strpos(gnn,"FLUOCORTIN")!=0)
gen	 steroids64=(strpos(gnn,"FLUOCORTOLONE")!=0)
gen	 steroids65=(strpos(gnn,"FLUOROMETHOLONE")!=0)
gen	 steroids66=(strpos(gnn,"FLUPREDNIDENE")!=0)
gen	 steroids67=(strpos(gnn,"FLUPREDNISOLONE")!=0)
gen	 steroids68=(strpos(gnn,"FLURANDRENOLIDE")!=0)
gen	 steroids69=(strpos(gnn,"FLUTICASONE")!=0)
gen	 steroids70=(strpos(gnn,"FORMOCORTAL")!=0)
gen	 steroids71=(strpos(gnn,"GLUCOCORTICOID")!=0)
gen	 steroids72=(strpos(gnn,"HALCINONIDE")!=0)
gen	 steroids73=(strpos(gnn,"HALOBETASOL")!=0)
gen	 steroids74=(strpos(gnn,"HALOMETASONE")!=0)
gen	 steroids75=(strpos(gnn,"HALOPREDONE")!=0)
gen	 steroids76=(strpos(gnn,"HYDRALLOSTANE")!=0)
gen	 steroids77=(strpos(gnn,"HYDROCORTAMATE")!=0)
gen	 steroids78=(strpos(gnn,"HYDROCORTISONE")!=0)
gen	 steroids79=(strpos(gnn,"HYDROXYCORTICOSTEROID")!=0)
gen	 steroids80=(strpos(gnn,"ICOMETASONE ENBUTATE")!=0)
gen	 steroids81=(strpos(gnn,"INDACATEROL PLUS MOMETASONE FUROATE")!=0)
gen	 steroids82=(strpos(gnn,"ISOFLUPREDONE")!=0)
gen	 steroids83=(strpos(gnn,"ITROCINONIDE")!=0)
gen	 steroids84=(strpos(gnn,"LOCICORTOLONE DICIBATE")!=0)
gen	 steroids85=(strpos(gnn,"LORINDEN A")!=0)
gen	 steroids86=(strpos(gnn,"LORINDEN T")!=0)
gen	 steroids87=(strpos(gnn,"LOTEPREDNOL")!=0)
gen	 steroids88=(strpos(gnn,"MAZIPREDONE")!=0)
gen	 steroids89=(strpos(gnn,"MEDRYSONE")!=0)
gen	 steroids90=(strpos(gnn,"MEPREDNISONE")!=0)
gen	 steroids91=(strpos(gnn,"METHYLPREDNISOLONE")!=0)
gen	 steroids92=(strpos(gnn,"MINERALOCORTICOID")!=0)
gen	 steroids93=(strpos(gnn,"MOMETASONE")!=0)
gen	 steroids94=(strpos(gnn,"MYCOLOG")!=0)
gen	 steroids95=(strpos(gnn,"NICOCORTONIDE")!=0)
gen	 steroids96=(strpos(gnn,"NIVACORTOL")!=0)
gen	 steroids97=(strpos(gnn,"OROPIVALONE")!=0)
gen	 steroids98=(strpos(gnn,"PARAMETHASONE")!=0)
gen	 steroids99=(strpos(gnn,"PREDNICARBATE")!=0)
gen	 steroids100=(strpos(gnn,"PREDNISOLONE")!=0)
gen	 steroids101=(strpos(gnn,"PREDNISONE")!=0)
gen	 steroids102=(strpos(gnn,"PREDNIVAL ACETATE")!=0)
gen	 steroids103=(strpos(gnn,"PREDNYLIDENE")!=0)
gen	 steroids104=(strpos(gnn,"PREGNENOLONE")!=0)
gen	 steroids105=(strpos(gnn,"PROCINONIDE")!=0)
gen	 steroids106=(strpos(gnn,"PROMESTRIENE")!=0)
gen	 steroids107=(strpos(gnn,"RESOCORTOL")!=0)
gen	 steroids108=(strpos(gnn,"RIMEXOLONE")!=0)
gen	 steroids109=(strpos(gnn,"ROFLEPONIDE")!=0)
gen	 steroids110=(strpos(gnn,"SOFRADEX")!=0)
gen	 steroids111=(strpos(gnn,"TETRAHYDROCORTISOL")!=0)
gen	 steroids112=(strpos(gnn,"TETRAHYDROCORTISONE")!=0)
gen	 steroids113=(strpos(gnn,"TETRAHYDRODEOXYCORTICOSTERONE")!=0)
gen	 steroids114=(strpos(gnn,"TICABESONE")!=0)
gen	 steroids115=(strpos(gnn,"TIMOBESONE")!=0)
gen	 steroids116=(strpos(gnn,"TIPREDANE")!=0)
gen	 steroids117=(strpos(gnn,"TIXOCORTOL")!=0)
gen	 steroids118=(strpos(gnn,"TRIAMCINOLONE")!=0)
gen	 steroids119=(strpos(gnn,"ULOBETASOL PROPIONATE")!=0)
gen	 steroids120=(strpos(gnn,"UNIDERM")!=0)
gen	 steroids121=(strpos(gnn,"VAMOROLONE")!=0)
gen	 steroids122=(strpos(gnn,"ZOTICASONE")!=0)      
		gen  steroids_rx=( ///	
steroids1+	///
steroids2+	///
steroids3+	///
steroids4+	///
steroids5+	///
steroids6+	///
steroids7+	///
steroids8+	///
steroids9+	///
steroids10+	///
steroids11+	///
steroids12+	///
steroids13+	///
steroids14+	///
steroids15+	///
steroids16+	///
steroids17+	///
steroids18+	///
steroids19+	///
steroids20+	///
steroids21+	///
steroids22+	///
steroids23+	///
steroids24+	///
steroids25+	///
steroids26+	///
steroids27+	///
steroids28+	///
steroids29+	///
steroids30+	///
steroids31+	///
steroids32+	///
steroids33+	///
steroids34+	///
steroids35+	///
steroids36+	///
steroids37+	///
steroids38+	///
steroids39+	///
steroids40+	///
steroids41+	///
steroids42+	///
steroids43+	///
steroids44+	///
steroids45+	///
steroids46+	///
steroids47+	///
steroids48+	///
steroids49+	///
steroids50+	///
steroids51+	///
steroids52+	///
steroids53+	///
steroids54+	///
steroids55+	///
steroids56+	///
steroids57+	///
steroids58+	///
steroids59+	///
steroids60+	///
steroids61+	///
steroids62+	///
steroids63+	///
steroids64+	///
steroids65+	///
steroids66+	///
steroids67+	///
steroids68+	///
steroids69+	///
steroids70+	///
steroids71+	///
steroids72+	///
steroids73+	///
steroids74+	///
steroids75+	///
steroids76+	///
steroids77+	///
steroids78+	///
steroids79+	///
steroids80+	///
steroids81+	///
steroids82+	///
steroids83+	///
steroids84+	///
steroids85+	///
steroids86+	///
steroids87+	///
steroids88+	///
steroids89+	///
steroids90+	///
steroids91+	///
steroids92+	///
steroids93+	///
steroids94+	///
steroids95+	///
steroids96+	///
steroids97+	///
steroids98+	///
steroids99+	///
steroids100+	///
steroids101+	///
steroids102+	///
steroids103+	///
steroids104+	///
steroids105+	///
steroids106+	///
steroids107+	///
steroids108+	///
steroids109+	///
steroids110+	///
steroids111+	///
steroids112+	///
steroids113+	///
steroids114+	///
steroids115+	///
steroids116+	///
steroids117+	///
steroids118+	///
steroids119+	///
steroids120+	///
steroids121+	///
steroids122 	///
>0)
keep usrds_id srvc_dt steroids_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 28_corticosteroids_expR.dta,replace
di "$S_TIME"
