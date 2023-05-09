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
gen	 antiepi1=(strpos(gnn,"ABECARNIL")!=0)
gen	 antiepi2=(strpos(gnn,"ACETAZOLAMIDE")!=0)
gen	 antiepi3=(strpos(gnn,"ALBUTOIN")!=0)
gen	 antiepi4=(strpos(gnn,"ALLOMETHADIONE")!=0)
gen	 antiepi5=(strpos(gnn,"AMELTOLIDE")!=0)
gen	 antiepi6=(strpos(gnn,"ANGELICIN")!=0)
gen	 antiepi7=(strpos(gnn,"ANTHRANILIC ACID")!=0)
gen	 antiepi8=(strpos(gnn,"ANTIEPILEPSIRINE")!=0)
gen	 antiepi9=(strpos(gnn,"ASCORBATE MAGNESIUM")!=0)
gen	 antiepi10=(strpos(gnn,"AVIZAFONE")!=0)
gen	 antiepi11=(strpos(gnn,"BARBEXACLONE")!=0)
gen	 antiepi12=(strpos(gnn,"BECLAMIDE")!=0)
gen	 antiepi13=(strpos(gnn,"BELNACASAN")!=0)
gen	 antiepi14=(strpos(gnn,"BEMETHYL")!=0)
gen	 antiepi15=(strpos(gnn,"BENZOBARBITAL")!=0)
gen	 antiepi16=(strpos(gnn,"BRETAZENIL")!=0)
gen	 antiepi17=(strpos(gnn,"BREXANOLONE")!=0)
gen	 antiepi18=(strpos(gnn,"BRIVARACETAM")!=0)
gen	 antiepi19=(strpos(gnn,"BROMIDES")!=0)
gen	 antiepi20=(strpos(gnn,"BROSUXIMIDE")!=0)
gen	 antiepi21=(strpos(gnn,"CALCIUM BROMIDE")!=0)
gen	 antiepi22=(strpos(gnn,"CANNABIDIOL")!=0)
gen	 antiepi23=(strpos(gnn,"CANNABIDIVARIN")!=0)
gen	 antiepi24=(strpos(gnn,"CARABERSAT")!=0)
gen	 antiepi25=(strpos(gnn,"CARAMIPHEN")!=0)
gen	 antiepi26=(strpos(gnn,"CARBAMAZEPINE")!=0)
gen	 antiepi27=(strpos(gnn,"CARBOPLATIN PLUS SODIUM VALPROATE")!=0)
gen	 antiepi28=(strpos(gnn,"CARISBAMATE")!=0)
gen	 antiepi29=(strpos(gnn,"CENOBAMATE")!=0)
gen	 antiepi30=(strpos(gnn,"CHLORDESMETHYLDIAZEPAM")!=0)
gen	 antiepi31=(strpos(gnn,"CHLORMETHIAZOLE")!=0)
gen	 antiepi32=(strpos(gnn,"CINROMIDE")!=0)
gen	 antiepi33=(strpos(gnn,"CLOBAZAM")!=0)
gen	 antiepi34=(strpos(gnn,"CLOMETHIAZOLE")!=0)
gen	 antiepi35=(strpos(gnn,"CLONAZEPAM")!=0)
gen	 antiepi36=(strpos(gnn,"CLORAZEPATE DIPOTASSIUM")!=0)
gen	 antiepi37=(strpos(gnn,"CYHEPTAMIDE")!=0)
gen	 antiepi38=(strpos(gnn,"DENZIMOL")!=0)
gen	 antiepi39=(strpos(gnn,"DERAMCICLANE")!=0)
gen	 antiepi40=(strpos(gnn,"DEXTROMETHORPHAN")!=0)
gen	 antiepi41=(strpos(gnn,"DEZINAMIDE")!=0)
gen	 antiepi42=(strpos(gnn,"DIAZEPAM")!=0)
gen	 antiepi43=(strpos(gnn,"DICLOFENAMIDE")!=0)
gen	 antiepi44=(strpos(gnn,"DIMETHADIONE")!=0)
gen	 antiepi45=(strpos(gnn,"DIPROPYLACETAMIDE")!=0)
gen	 antiepi46=(strpos(gnn,"DORAMECTIN")!=0)
gen	 antiepi47=(strpos(gnn,"DOXENITOIN")!=0)
gen	 antiepi48=(strpos(gnn,"ELPETRIGINE")!=0)
gen	 antiepi49=(strpos(gnn,"ENDIXAPRINE")!=0)
gen	 antiepi50=(strpos(gnn,"EPERISONE")!=0)
gen	 antiepi51=(strpos(gnn,"EPIDIOLEX")!=0)
gen	 antiepi52=(strpos(gnn,"ESLICARBAZEPINE")!=0)
gen	 antiepi53=(strpos(gnn,"ESTAZOLAM")!=0)
gen	 antiepi54=(strpos(gnn,"ETAZEPINE")!=0)
gen	 antiepi55=(strpos(gnn,"ETEROBARB")!=0)
gen	 antiepi56=(strpos(gnn,"ETHOSUXIMIDE")!=0)
gen	 antiepi57=(strpos(gnn,"ETHOTOIN")!=0)
gen	 antiepi58=(strpos(gnn,"ETHYLPHENYLHYDANTOIN")!=0)
gen	 antiepi59=(strpos(gnn,"ETIRACETAM")!=0)
gen	 antiepi60=(strpos(gnn,"EZOGABINE")!=0)
gen	 antiepi61=(strpos(gnn,"FALI LEPSIN")!=0)
gen	 antiepi62=(strpos(gnn,"FELBAMATE")!=0)
gen	 antiepi63=(strpos(gnn,"FLUDIAZEPAM")!=0)
gen	 antiepi64=(strpos(gnn,"FLUNARIZINE")!=0)
gen	 antiepi65=(strpos(gnn,"FLUORESONE")!=0)
gen	 antiepi66=(strpos(gnn,"FLUZINAMIDE")!=0)
gen	 antiepi67=(strpos(gnn,"FOSPHENYTOIN")!=0)
gen	 antiepi68=(strpos(gnn,"FOSPHENYTOIN SODIUM")!=0)
gen	 antiepi69=(strpos(gnn,"GABAPENTIN")!=0)
gen	 antiepi70=(strpos(gnn,"GABOXADOL")!=0)
gen	 antiepi71=(strpos(gnn,"GANAXOLONE")!=0)
gen	 antiepi72=(strpos(gnn,"GIDAZEPAM")!=0)
gen	 antiepi73=(strpos(gnn,"GLUTAMIC ACID DIETHYL ESTER")!=0)
gen	 antiepi74=(strpos(gnn,"GUAIFENESIN")!=0)
gen	 antiepi75=(strpos(gnn,"HEXAPNEUMINE")!=0)
gen	 antiepi76=(strpos(gnn,"IMEPITOIN")!=0)
gen	 antiepi77=(strpos(gnn,"IMIDAZENIL")!=0)
gen	 antiepi78=(strpos(gnn,"INDELOXAZINE")!=0)
gen	 antiepi79=(strpos(gnn,"KAVAIN")!=0)
gen	 antiepi80=(strpos(gnn,"LACOSAMIDE")!=0)
gen	 antiepi81=(strpos(gnn,"LADOXAPRINE")!=0)
gen	 antiepi82=(strpos(gnn,"LAMOTRIGINE")!=0)
gen	 antiepi83=(strpos(gnn,"LANICEMINE")!=0)
gen	 antiepi84=(strpos(gnn,"LEVETIRACETAM")!=0)
gen	 antiepi85=(strpos(gnn,"LICARBAZEPINE")!=0)
gen	 antiepi86=(strpos(gnn,"LORAZEPAM")!=0)
gen	 antiepi87=(strpos(gnn,"LORECLEZOLE")!=0)
gen	 antiepi88=(strpos(gnn,"LOSIGAMONE")!=0)
gen	 antiepi89=(strpos(gnn,"MAGNESIUM SULFATE")!=0)
gen	 antiepi90=(strpos(gnn,"MEBEVERINE")!=0)
gen	 antiepi91=(strpos(gnn,"MEDAZEPAM")!=0)
gen	 antiepi92=(strpos(gnn,"MEPHEBARBITAL")!=0)
gen	 antiepi93=(strpos(gnn,"MEPHENYTOIN")!=0)
gen	 antiepi94=(strpos(gnn,"MEPHOBARBITAL")!=0)
gen	 antiepi95=(strpos(gnn,"MEPROBAMATE")!=0)
gen	 antiepi96=(strpos(gnn,"MESUXIMIDE")!=0)
gen	 antiepi97=(strpos(gnn,"METHARBITAL")!=0)
gen	 antiepi98=(strpos(gnn,"METHSUXIMIDE")!=0)
gen	 antiepi99=(strpos(gnn,"METHYLPHENOBARBITAL")!=0)
gen	 antiepi100=(strpos(gnn,"MIDAZOLAM")!=0)
gen	 antiepi101=(strpos(gnn,"MILACEMIDE")!=0)
gen	 antiepi102=(strpos(gnn,"NAFIMIDONE")!=0)
gen	 antiepi103=(strpos(gnn,"NEO-KYOTORPHIN")!=0)
gen	 antiepi104=(strpos(gnn,"NEUROTROPIN")!=0)
gen	 antiepi105=(strpos(gnn,"NIMETAZEPAM")!=0)
gen	 antiepi106=(strpos(gnn,"NITRAZEPAM")!=0)
gen	 antiepi107=(strpos(gnn,"NORMEPHENYTOIN")!=0)
gen	 antiepi108=(strpos(gnn,"NORMESUXIMIDE")!=0)
gen	 antiepi109=(strpos(gnn,"OXCARBAZEPINE")!=0)
gen	 antiepi110=(strpos(gnn,"PADSEVONIL")!=0)
gen	 antiepi111=(strpos(gnn,"PARALDEHYDE")!=0)
gen	 antiepi112=(strpos(gnn,"PARAMETHADIONE")!=0)
gen	 antiepi113=(strpos(gnn,"PAZINACLONE")!=0)
gen	 antiepi114=(strpos(gnn,"PENTOXYVERINE")!=0)
gen	 antiepi115=(strpos(gnn,"PERAMPANEL")!=0)
gen	 antiepi116=(strpos(gnn,"PHENACEMIDE")!=0)
gen	 antiepi117=(strpos(gnn,"PHENAZEPAM")!=0)
gen	 antiepi118=(strpos(gnn,"PHENETURIDE")!=0)
gen	 antiepi119=(strpos(gnn,"PHENOBARBITAL")!=0)
gen	 antiepi120=(strpos(gnn,"PHENSUXIMIDE")!=0)
gen	 antiepi121=(strpos(gnn,"PHENYTOIN")!=0)
gen	 antiepi122=(strpos(gnn,"PIPEQUALINE")!=0)
gen	 antiepi123=(strpos(gnn,"POTASSIUM BROMIDE")!=0)
gen	 antiepi124=(strpos(gnn,"PREGABALIN")!=0)
gen	 antiepi125=(strpos(gnn,"PRIMIDONE")!=0)
gen	 antiepi126=(strpos(gnn,"PROGABIDE")!=0)
gen	 antiepi127=(strpos(gnn,"RALITOLINE")!=0)
gen	 antiepi128=(strpos(gnn,"REMACEMIDE")!=0)
gen	 antiepi129=(strpos(gnn,"RETIGABINE")!=0)
gen	 antiepi130=(strpos(gnn,"RILUZOLE")!=0)
gen	 antiepi131=(strpos(gnn,"RIMCAZOLE")!=0)
gen	 antiepi132=(strpos(gnn,"ROPIZINE")!=0)
gen	 antiepi133=(strpos(gnn,"RUFINAMIDE")!=0)
gen	 antiepi134=(strpos(gnn,"RYODIPINE")!=0)
gen	 antiepi135=(strpos(gnn,"SAFINAMIDE")!=0)
gen	 antiepi136=(strpos(gnn,"SELETRACETAM")!=0)
gen	 antiepi137=(strpos(gnn,"SHOSAIKOTO GO KEISHIKASHAKUYAKUTO")!=0)
gen	 antiepi138=(strpos(gnn,"SIDNOCARB")!=0)
gen	 antiepi139=(strpos(gnn,"SODIUM BROMIDE")!=0)
gen	 antiepi140=(strpos(gnn,"SORETOLIDE")!=0)
gen	 antiepi141=(strpos(gnn,"SOTICLESTAT")!=0)
gen	 antiepi142=(strpos(gnn,"STIRIPENTOL")!=0)
gen	 antiepi143=(strpos(gnn,"SULTHIAME")!=0)
gen	 antiepi144=(strpos(gnn,"SULTIAME")!=0)
gen	 antiepi145=(strpos(gnn,"TAGLUTIMIDE")!=0)
gen	 antiepi146=(strpos(gnn,"TALAMPANEL")!=0)
gen	 antiepi147=(strpos(gnn,"TALTRIMIDE")!=0)
gen	 antiepi148=(strpos(gnn,"THIOPENTAL")!=0)
gen	 antiepi149=(strpos(gnn,"THIOPERAMIDE")!=0)
gen	 antiepi150=(strpos(gnn,"TIAGABINE")!=0)
gen	 antiepi151=(strpos(gnn,"TILETAMINE")!=0)
gen	 antiepi152=(strpos(gnn,"TIZANIDINE")!=0)
gen	 antiepi153=(strpos(gnn,"TOPIRAMATE")!=0)
gen	 antiepi154=(strpos(gnn,"TRAMIPROSATE")!=0)
gen	 antiepi155=(strpos(gnn,"TRIMETHADIONE")!=0)
gen	 antiepi156=(strpos(gnn,"TRORILUZOLE")!=0)
gen	 antiepi157=(strpos(gnn,"VALPROATE CALCIUM")!=0)
gen	 antiepi158=(strpos(gnn,"VALPROATE MAGNESIUM")!=0)
gen	 antiepi159=(strpos(gnn,"VALPROATE SEMISODIUM")!=0)
gen	 antiepi160=(strpos(gnn,"VALPROIC ACID")!=0)
gen	 antiepi161=(strpos(gnn,"VALPROMIDE")!=0)
gen	 antiepi162=(strpos(gnn,"VALROCEMIDE")!=0)
gen	 antiepi163=(strpos(gnn,"VANILLIN")!=0)
gen	 antiepi164=(strpos(gnn,"VIGABATRIN")!=0)
gen	 antiepi165=(strpos(gnn,"VIXOTRIGINE")!=0)
gen	 antiepi166=(strpos(gnn,"ZALEPLON")!=0)
gen	 antiepi167=(strpos(gnn,"ZONICLEZOLE")!=0)
gen	 antiepi168=(strpos(gnn,"ZONISAMIDE")!=0)        
		gen  antiepi_rx=( ///	
antiepi1+	///
antiepi2+	///
antiepi3+	///
antiepi4+	///
antiepi5+	///
antiepi6+	///
antiepi7+	///
antiepi8+	///
antiepi9+	///
antiepi10+	///
antiepi11+	///
antiepi12+	///
antiepi13+	///
antiepi14+	///
antiepi15+	///
antiepi16+	///
antiepi17+	///
antiepi18+	///
antiepi19+	///
antiepi20+	///
antiepi21+	///
antiepi22+	///
antiepi23+	///
antiepi24+	///
antiepi25+	///
antiepi26+	///
antiepi27+	///
antiepi28+	///
antiepi29+	///
antiepi30+	///
antiepi31+	///
antiepi32+	///
antiepi33+	///
antiepi34+	///
antiepi35+	///
antiepi36+	///
antiepi37+	///
antiepi38+	///
antiepi39+	///
antiepi40+	///
antiepi41+	///
antiepi42+	///
antiepi43+	///
antiepi44+	///
antiepi45+	///
antiepi46+	///
antiepi47+	///
antiepi48+	///
antiepi49+	///
antiepi50+	///
antiepi51+	///
antiepi52+	///
antiepi53+	///
antiepi54+	///
antiepi55+	///
antiepi56+	///
antiepi57+	///
antiepi58+	///
antiepi59+	///
antiepi60+	///
antiepi61+	///
antiepi62+	///
antiepi63+	///
antiepi64+	///
antiepi65+	///
antiepi66+	///
antiepi67+	///
antiepi68+	///
antiepi69+	///
antiepi70+	///
antiepi71+	///
antiepi72+	///
antiepi73+	///
antiepi74+	///
antiepi75+	///
antiepi76+	///
antiepi77+	///
antiepi78+	///
antiepi79+	///
antiepi80+	///
antiepi81+	///
antiepi82+	///
antiepi83+	///
antiepi84+	///
antiepi85+	///
antiepi86+	///
antiepi87+	///
antiepi88+	///
antiepi89+	///
antiepi90+	///
antiepi91+	///
antiepi92+	///
antiepi93+	///
antiepi94+	///
antiepi95+	///
antiepi96+	///
antiepi97+	///
antiepi98+	///
antiepi99+	///
antiepi100+	///
antiepi101+	///
antiepi102+	///
antiepi103+	///
antiepi104+	///
antiepi105+	///
antiepi106+	///
antiepi107+	///
antiepi108+	///
antiepi109+	///
antiepi110+	///
antiepi111+	///
antiepi112+	///
antiepi113+	///
antiepi114+	///
antiepi115+	///
antiepi116+	///
antiepi117+	///
antiepi118+	///
antiepi119+	///
antiepi120+	///
antiepi121+	///
antiepi122+	///
antiepi123+	///
antiepi124+	///
antiepi125+	///
antiepi126+	///
antiepi127+	///
antiepi128+	///
antiepi129+	///
antiepi130+	///
antiepi131+	///
antiepi132+	///
antiepi133+	///
antiepi134+	///
antiepi135+	///
antiepi136+	///
antiepi137+	///
antiepi138+	///
antiepi139+	///
antiepi140+	///
antiepi141+	///
antiepi142+	///
antiepi143+	///
antiepi144+	///
antiepi145+	///
antiepi146+	///
antiepi147+	///
antiepi148+	///
antiepi149+	///
antiepi150+	///
antiepi151+	///
antiepi152+	///
antiepi153+	///
antiepi154+	///
antiepi155+	///
antiepi156+	///
antiepi157+	///
antiepi158+	///
antiepi159+	///
antiepi160+	///
antiepi161+	///
antiepi162+	///
antiepi163+	///
antiepi164+	///
antiepi165+	///
antiepi166+	///
antiepi167+	///
antiepi168	///
>0)
keep usrds_id srvc_dt antiepi_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 30_antiepileptics_expR.dta,replace
di "$S_TIME"
 
