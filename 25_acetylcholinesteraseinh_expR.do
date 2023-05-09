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
gen	 achblock1=(strpos(gnn,"ECHOTHIOPHATE IODIDE")!=0)
gen	 achblock2=(strpos(gnn,"ACOTIAMIDE")!=0)
gen	 achblock3=(strpos(gnn,"ALDICARB")!=0)
gen	 achblock4=(strpos(gnn,"ALPHA-PINENE")!=0)
gen	 achblock5=(strpos(gnn,"ALTERNARIOL")!=0)
gen	 achblock6=(strpos(gnn,"AMBENONIUM")!=0)
gen	 achblock7=(strpos(gnn,"AMIRIDINE")!=0)
gen	 achblock8=(strpos(gnn,"AMITON")!=0)
gen	 achblock9=(strpos(gnn,"ARMIN")!=0)
gen	 achblock10=(strpos(gnn,"AZINPHOSMETHYL")!=0)
gen	 achblock11=(strpos(gnn,"BENDIOCARB")!=0)
gen	 achblock12=(strpos(gnn,"BUFENCARB")!=0)
gen	 achblock13=(strpos(gnn,"CADUSAFOS")!=0)
gen	 achblock14=(strpos(gnn,"CAFFEINE")!=0)
gen	 achblock15=(strpos(gnn,"CARBARYL")!=0)
gen	 achblock16=(strpos(gnn,"CARBENDAZIM")!=0)
gen	 achblock17=(strpos(gnn,"CARBETAMIDE")!=0)
gen	 achblock18=(strpos(gnn,"CARBOFURAN")!=0)
gen	 achblock19=(strpos(gnn,"CARBOSULFAN")!=0)
gen	 achblock20=(strpos(gnn,"CHLORBUFAM")!=0)
gen	 achblock21=(strpos(gnn,"CHLORFENVINPHOS")!=0)
gen	 achblock22=(strpos(gnn,"CHLOROPROPHAM")!=0)
gen	 achblock23=(strpos(gnn,"CHLORPYRIFOS")!=0)
gen	 achblock24=(strpos(gnn,"COUMAPHOS")!=0)
gen	 achblock25=(strpos(gnn,"CYCLOSARIN")!=0)
gen	 achblock26=(strpos(gnn,"DEMECARIUM")!=0)
gen	 achblock27=(strpos(gnn,"DIAZINON")!=0)
gen	 achblock28=(strpos(gnn,"DICHLORVOS")!=0)
gen	 achblock29=(strpos(gnn,"DICROTOPHOS")!=0)
gen	 achblock30=(strpos(gnn,"DIISOPROPYL FLUOROPHOSPHATE")!=0)
gen	 achblock31=(strpos(gnn,"DIMETHOATE")!=0)
gen	 achblock32=(strpos(gnn,"DISTIGMINE")!=0)
gen	 achblock33=(strpos(gnn,"DONEPEZIL")!=0)
gen	 achblock34=(strpos(gnn,"DYFLOS")!=0)
gen	 achblock35=(strpos(gnn,"ECHOTHIOPHATE")!=0)
gen	 achblock36=(strpos(gnn,"EDROPHONIUM")!=0)
gen	 achblock37=(strpos(gnn,"EPTASTIGMINE")!=0)
gen	 achblock38=(strpos(gnn,"ETHIOFENCARB")!=0)
gen	 achblock39=(strpos(gnn,"ETHION")!=0)
gen	 achblock40=(strpos(gnn,"FAMPHUR")!=0)
gen	 achblock41=(strpos(gnn,"FASCICULIN")!=0)
gen	 achblock42=(strpos(gnn,"FENITROTHION")!=0)
gen	 achblock43=(strpos(gnn,"FENTHION")!=0)
gen	 achblock44=(strpos(gnn,"FONOFOS")!=0)
gen	 achblock45=(strpos(gnn,"FORMETANATE")!=0)
gen	 achblock46=(strpos(gnn,"FORMOTHION")!=0)
gen	 achblock47=(strpos(gnn,"GALANTAMINE")!=0)
gen	 achblock48=(strpos(gnn,"GANSTIGMINE")!=0)
gen	 achblock49=(strpos(gnn,"GUANIDINE")!=0)
gen	 achblock50=(strpos(gnn,"HUPERZINE A")!=0)
gen	 achblock51=(strpos(gnn,"HUPERZINE B")!=0)
gen	 achblock52=(strpos(gnn,"ICOPEZIL")!=0)
gen	 achblock53=(strpos(gnn,"ISO OMPA")!=0)
gen	 achblock54=(strpos(gnn,"ISOFLUROPHATE (MESH TERM)")!=0)
gen	 achblock55=(strpos(gnn,"ISOSARCODINE")!=0)
gen	 achblock56=(strpos(gnn,"ITOPRIDE")!=0)
gen	 achblock57=(strpos(gnn,"LACTUCOPICRIN")!=0)
gen	 achblock58=(strpos(gnn,"LADOSTIGIL")!=0)
gen	 achblock59=(strpos(gnn,"MALATHION")!=0)
gen	 achblock60=(strpos(gnn,"METHANESULFONYL FLUORIDE")!=0)
gen	 achblock61=(strpos(gnn,"METHIOCARB")!=0)
gen	 achblock62=(strpos(gnn,"METHOMYL")!=0)
gen	 achblock63=(strpos(gnn,"METHYL PARATHION")!=0)
gen	 achblock64=(strpos(gnn,"METRIFONATE (IRREVERSIBLE)")!=0)
gen	 achblock65=(strpos(gnn,"MEVINPHOS")!=0)
gen	 achblock66=(strpos(gnn,"MIMOPEZIL")!=0)
gen	 achblock67=(strpos(gnn,"MONOCROTOPHOS")!=0)
gen	 achblock68=(strpos(gnn,"NALED")!=0)
gen	 achblock69=(strpos(gnn,"NEOSTIGMINE")!=0)
gen	 achblock70=(strpos(gnn,"NORMEPERIDINE")!=0)
gen	 achblock71=(strpos(gnn,"OCTAMETHYL PYROPHOSPHORAMIDE")!=0)
gen	 achblock72=(strpos(gnn,"ONCHIDAL")!=0)
gen	 achblock73=(strpos(gnn,"OXAMYL")!=0)
gen	 achblock74=(strpos(gnn,"PARAOXON")!=0)
gen	 achblock75=(strpos(gnn,"PARATHION")!=0)
gen	 achblock76=(strpos(gnn,"PHENMEDIPHAM")!=0)
gen	 achblock77=(strpos(gnn,"PHENSERINE")!=0)
gen	 achblock78=(strpos(gnn,"PHORATE")!=0)
gen	 achblock79=(strpos(gnn,"PHOSALONE")!=0)
gen	 achblock80=(strpos(gnn,"PHOSPHAMIDON")!=0)
gen	 achblock81=(strpos(gnn,"PHOXIM")!=0)
gen	 achblock82=(strpos(gnn,"PHYSOSTIGMINE")!=0)
gen	 achblock83=(strpos(gnn,"PINMICARB")!=0)
gen	 achblock84=(strpos(gnn,"PIRIMICARB")!=0)
gen	 achblock85=(strpos(gnn,"PROPAMOCARB")!=0)
gen	 achblock86=(strpos(gnn,"PROPHAM")!=0)
gen	 achblock87=(strpos(gnn,"PROPOXUR")!=0)
gen	 achblock88=(strpos(gnn,"PYRIDOSTIGMINE")!=0)
gen	 achblock89=(strpos(gnn,"QUILOSTIGMINE")!=0)
gen	 achblock90=(strpos(gnn,"RIVASTIGMINE")!=0)
gen	 achblock91=(strpos(gnn,"ROSMARINIC ACID")!=0)
gen	 achblock92=(strpos(gnn,"SARIN")!=0)
gen	 achblock93=(strpos(gnn,"SOMAN")!=0)
gen	 achblock94=(strpos(gnn,"STIROFOS")!=0)
gen	 achblock95=(strpos(gnn,"SURONACRINE")!=0)
gen	 achblock96=(strpos(gnn,"TABUN")!=0)
gen	 achblock97=(strpos(gnn,"TACRINE")!=0)
gen	 achblock98=(strpos(gnn,"TERESTIGMINE")!=0)
gen	 achblock99=(strpos(gnn,"TETRACHLORVINPHOS")!=0)
gen	 achblock100=(strpos(gnn,"TETRAISOPROPYLPYROPHOSPHAMIDE")!=0)
gen	 achblock101=(strpos(gnn,"TRICHLORFON")!=0)
gen	 achblock102=(strpos(gnn,"UNGEREMINE")!=0)
gen	 achblock103=(strpos(gnn,"VE")!=0)
gen	 achblock104=(strpos(gnn,"VELNACRINE")!=0)
gen	 achblock105=(strpos(gnn,"VG")!=0)
gen	 achblock106=(strpos(gnn,"VM")!=0)
gen	 achblock107=(strpos(gnn,"VX")!=0)
gen	 achblock108=(strpos(gnn,"ZANAPEZIL")!=0)
gen	 achblock109=(strpos(gnn,"ZIFROSILONE")!=0)
		gen  achblock_rx=( ///	
achblock1+	///
achblock2+	///
achblock3+	///
achblock4+	///
achblock5+	///
achblock6+	///
achblock7+	///
achblock8+	///
achblock9+	///
achblock10+	///
achblock11+	///
achblock12+	///
achblock13+	///
achblock14+	///
achblock15+	///
achblock16+	///
achblock17+	///
achblock18+	///
achblock19+	///
achblock20+	///
achblock21+	///
achblock22+	///
achblock23+	///
achblock24+	///
achblock25+	///
achblock26+	///
achblock27+	///
achblock28+	///
achblock29+	///
achblock30+	///
achblock31+	///
achblock32+	///
achblock33+	///
achblock34+	///
achblock35+	///
achblock36+	///
achblock37+	///
achblock38+	///
achblock39+	///
achblock40+	///
achblock41+	///
achblock42+	///
achblock43+	///
achblock44+	///
achblock45+	///
achblock46+	///
achblock47+	///
achblock48+	///
achblock49+	///
achblock50+	///
achblock51+	///
achblock52+	///
achblock53+	///
achblock54+	///
achblock55+	///
achblock56+	///
achblock57+	///
achblock58+	///
achblock59+	///
achblock60+	///
achblock61+	///
achblock62+	///
achblock63+	///
achblock64+	///
achblock65+	///
achblock66+	///
achblock67+	///
achblock68+	///
achblock69+	///
achblock70+	///
achblock71+	///
achblock72+	///
achblock73+	///
achblock74+	///
achblock75+	///
achblock76+	///
achblock77+	///
achblock78+	///
achblock79+	///
achblock80+	///
achblock81+	///
achblock82+	///
achblock83+	///
achblock84+	///
achblock85+	///
achblock86+	///
achblock87+	///
achblock88+	///
achblock89+	///
achblock90+	///
achblock91+	///
achblock92+	///
achblock93+	///
achblock94+	///
achblock95+	///
achblock96+	///
achblock97+	///
achblock98+	///
achblock99+	///
achblock100+	///
achblock101+	///
achblock102+	///
achblock103+	///
achblock104+	///
achblock105+	///
achblock106+	///
achblock107+	///
achblock108+	///
achblock109 	///
>0)
keep usrds_id srvc_dt achblock_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 25_acetylcholinesteraseinh_expR.dta,replace
di "$S_TIME"
