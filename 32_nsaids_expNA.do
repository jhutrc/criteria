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
gen	 nsaid1=(strpos(gnn,"ACECLOFENAC")!=0)
gen	 nsaid2=(strpos(gnn,"ACEMETACIN")!=0)
gen	 nsaid3=(strpos(gnn,"ACETAMINOPHEN, BUTALBITAL, CAFFEINE DRUG COMBINATION")!=0)
gen	 nsaid4=(strpos(gnn,"ACETAMINOPHEN, HYDROCODONE DRUG COMBINATION")!=0)
gen	 nsaid5=(strpos(gnn,"ACETAMINOSALOL")!=0)
gen	 nsaid6=(strpos(gnn,"ACETOSYRINGONE")!=0)
gen	 nsaid7=(strpos(gnn,"ACETOVANILLONE")!=0)
gen	 nsaid8=(strpos(gnn,"ACETYLSALICYLATE ALUMINUM")!=0)
gen	 nsaid9=(strpos(gnn,"ACETYLSALICYLATE COPPER")!=0)
gen	 nsaid10=(strpos(gnn,"ACETYLSALICYLIC ACID")!=0)
gen	 nsaid11=(strpos(gnn,"ACLANTATE")!=0)
gen	 nsaid12=(strpos(gnn,"ACTARIT")!=0)
gen	 nsaid13=(strpos(gnn,"ADAPALENE")!=0)
gen	 nsaid14=(strpos(gnn,"AFASEVIKUMAB")!=0)
gen	 nsaid15=(strpos(gnn,"ALCLOFENAC")!=0)
gen	 nsaid16=(strpos(gnn,"ALMINOPROFEN")!=0)
gen	 nsaid17=(strpos(gnn,"ALOXIPRIN")!=0)
gen	 nsaid18=(strpos(gnn,"ALUMINUM HYDROXIDE PLUS CALCIUM ASCORBATE PLUS CALCIUM CARBONATE PLUS PANTOTHENATE CALCIUM PLUS POTASSIUM SALICYLATE PLUS PREDNISONE")!=0)
gen	 nsaid19=(strpos(gnn,"AMFENAC")!=0)
gen	 nsaid20=(strpos(gnn,"AMINOBENZOIC ACID PLUS ASCORBIC ACID PLUS HYDROCORTISONE PLUS POTASSIUM SALICYLATE")!=0)
gen	 nsaid21=(strpos(gnn,"AMINOPHENAZONE PLUS PHENYLBUTAZONE")!=0)
gen	 nsaid22=(strpos(gnn,"AMINOSALICYLIC ACID")!=0)
gen	 nsaid23=(strpos(gnn,"AMIPRILOSE")!=0)
gen	 nsaid24=(strpos(gnn,"AMPIROXICAM")!=0)
gen	 nsaid25=(strpos(gnn,"AMPYRONE")!=0)
gen	 nsaid26=(strpos(gnn,"AMTOLMETIN GUACIL")!=0)
gen	 nsaid27=(strpos(gnn,"AMYLASE, PHOSPHATES, PROTEASES DRUG COMBINATIONS")!=0)
gen	 nsaid28=(strpos(gnn,"ANACIN")!=0)
gen	 nsaid29=(strpos(gnn,"ANDROGRAPHOLIDE")!=0)
gen	 nsaid30=(strpos(gnn,"ANIROLAC")!=0)
gen	 nsaid31=(strpos(gnn,"ANISODAMINE")!=0)
gen	 nsaid32=(strpos(gnn,"ANISODINE")!=0)
gen	 nsaid33=(strpos(gnn,"ANTIFLAMMIN")!=0)
gen	 nsaid34=(strpos(gnn,"ANTIFLAMMIN P2")!=0)
gen	 nsaid35=(strpos(gnn,"ANTIPYRINE")!=0)
gen	 nsaid36=(strpos(gnn,"APADENOSON")!=0)
gen	 nsaid37=(strpos(gnn,"APAZONE")!=0)
gen	 nsaid38=(strpos(gnn,"APREMILAST")!=0)
gen	 nsaid39=(strpos(gnn,"ARAPROFEN")!=0)
gen	 nsaid40=(strpos(gnn,"ARTEPARON")!=0)
gen	 nsaid41=(strpos(gnn,"ARTHROTEC")!=0)
gen	 nsaid42=(strpos(gnn,"ASCRIPTIN")!=0)
gen	 nsaid43=(strpos(gnn,"ASIVATREP")!=0)
gen	 nsaid44=(strpos(gnn,"ASPIRIN")!=0)
gen	 nsaid45=(strpos(gnn,"ATLIPROFEN")!=0)
gen	 nsaid46=(strpos(gnn,"ATRINOSITOL")!=0)
gen	 nsaid47=(strpos(gnn,"AZULENE")!=0)
gen	 nsaid48=(strpos(gnn,"BAICALIN")!=0)
gen	 nsaid49=(strpos(gnn,"BAKEPROFEN")!=0)
gen	 nsaid50=(strpos(gnn,"BALSALAZIDE")!=0)
gen	 nsaid51=(strpos(gnn,"BARDOXOLONE")!=0)
gen	 nsaid52=(strpos(gnn,"BENDAZAC")!=0)
gen	 nsaid53=(strpos(gnn,"BENORILATE")!=0)
gen	 nsaid54=(strpos(gnn,"BENOXAPROFEN")!=0)
gen	 nsaid55=(strpos(gnn,"BENZOBARBITAL")!=0)
gen	 nsaid56=(strpos(gnn,"BERBAMINE")!=0)
gen	 nsaid57=(strpos(gnn,"BERMOPROFEN")!=0)
gen	 nsaid58=(strpos(gnn,"BETULINIC ACID")!=0)
gen	 nsaid59=(strpos(gnn,"BEVONIUM")!=0)
gen	 nsaid60=(strpos(gnn,"BIMOSIAMOSE")!=0)
gen	 nsaid61=(strpos(gnn,"BIPHENYLYLACETIC ACID")!=0)
gen	 nsaid62=(strpos(gnn,"BOLDINE")!=0)
gen	 nsaid63=(strpos(gnn,"BORIC ACID PLUS SALICYLIC ACID PLUS TANNIN")!=0)
gen	 nsaid64=(strpos(gnn,"BOSWELLIC ACID")!=0)
gen	 nsaid65=(strpos(gnn,"BRAZIKUMAB")!=0)
gen	 nsaid66=(strpos(gnn,"BROMFENAC")!=0)
gen	 nsaid67=(strpos(gnn,"BROPERAMOLE")!=0)
gen	 nsaid68=(strpos(gnn,"BUCILLAMINE")!=0)
gen	 nsaid69=(strpos(gnn,"BUCLOXIC ACID")!=0)
gen	 nsaid70=(strpos(gnn,"BUCOLOME")!=0)
gen	 nsaid71=(strpos(gnn,"BUFEXAMAC")!=0)
gen	 nsaid72=(strpos(gnn,"BUMADIZONE")!=0)
gen	 nsaid73=(strpos(gnn,"BUTIBUFEN")!=0)
gen	 nsaid74=(strpos(gnn,"CAMOBUCOL")!=0)
gen	 nsaid75=(strpos(gnn,"CARBASPIRIN CALCIUM")!=0)
gen	 nsaid76=(strpos(gnn,"CAROTEGRAST")!=0)
gen	 nsaid77=(strpos(gnn,"CARPROFEN")!=0)
gen	 nsaid78=(strpos(gnn,"CARYOPHYLLENE")!=0)
gen	 nsaid79=(strpos(gnn,"CASTANOSPERMINE")!=0)
gen	 nsaid80=(strpos(gnn,"CELECOXIB")!=0)
gen	 nsaid81=(strpos(gnn,"CENTCHROMAN")!=0)
gen	 nsaid82=(strpos(gnn,"CEPHARANTHINE")!=0)
gen	 nsaid83=(strpos(gnn,"CHLOROQUINE DIPHOSPHATE")!=0)
gen	 nsaid84=(strpos(gnn,"CHOLINE MAGNESIUM TRISALICYLATE")!=0)
gen	 nsaid85=(strpos(gnn,"CHRYSAROBIN")!=0)
gen	 nsaid86=(strpos(gnn,"CIBINETIDE")!=0)
gen	 nsaid87=(strpos(gnn,"CICLOPROFEN")!=0)
gen	 nsaid88=(strpos(gnn,"CIMICOXIB")!=0)
gen	 nsaid89=(strpos(gnn,"CINMETACIN")!=0)
gen	 nsaid90=(strpos(gnn,"CINNOXICAM")!=0)
gen	 nsaid91=(strpos(gnn,"CLIDANAC")!=0)
gen	 nsaid92=(strpos(gnn,"CLOFENAMIC ACID")!=0)
gen	 nsaid93=(strpos(gnn,"CLOFEZONE")!=0)
gen	 nsaid94=(strpos(gnn,"CLONIXIN")!=0)
gen	 nsaid95=(strpos(gnn,"CLOXIMATE")!=0)
gen	 nsaid96=(strpos(gnn,"CODEINE PHOSPHATE PLUS IBUPROFEN")!=0)
gen	 nsaid97=(strpos(gnn,"CRISABOROLE")!=0)
gen	 nsaid98=(strpos(gnn,"CURCUMIN")!=0)
gen	 nsaid99=(strpos(gnn,"DAGROCORAT")!=0)
gen	 nsaid100=(strpos(gnn,"DAPANSUTRILE")!=0)
gen	 nsaid101=(strpos(gnn,"DARBUFELONE")!=0)
gen	 nsaid102=(strpos(gnn,"DAURICINE")!=0)
gen	 nsaid103=(strpos(gnn,"DEHYDROZINGERONE")!=0)
gen	 nsaid104=(strpos(gnn,"DEMETHOXYCURCUMIN")!=0)
gen	 nsaid105=(strpos(gnn,"DERACOXIB")!=0)
gen	 nsaid106=(strpos(gnn,"DEXIBUPROFEN")!=0)
gen	 nsaid107=(strpos(gnn,"DEXKETOPROFEN")!=0)
gen	 nsaid108=(strpos(gnn,"DEXKETOPROFEN TROMETAMOL")!=0)
gen	 nsaid109=(strpos(gnn,"DEXPEMEDOLAC")!=0)
gen	 nsaid110=(strpos(gnn,"DICLOFENAC")!=0)
gen	 nsaid111=(strpos(gnn,"DIDEMETHOXYCURCUMIN")!=0)
gen	 nsaid112=(strpos(gnn,"DIFENPIRAMIDE")!=0)
gen	 nsaid113=(strpos(gnn,"DIFLUNISAL")!=0)
gen	 nsaid114=(strpos(gnn,"DIFTALONE")!=0)
gen	 nsaid115=(strpos(gnn,"DIMEPHOSPHON")!=0)
gen	 nsaid116=(strpos(gnn,"DIMETHYL SULFOXIDE")!=0)
gen	 nsaid117=(strpos(gnn,"DIPHENPYRAMIDE")!=0)
gen	 nsaid118=(strpos(gnn,"DIPYRONE")!=0)
gen	 nsaid119=(strpos(gnn,"DITAZOLE")!=0)
gen	 nsaid120=(strpos(gnn,"DIUCIFON")!=0)
gen	 nsaid121=(strpos(gnn,"DROXICAM")!=0)
gen	 nsaid122=(strpos(gnn,"DUOMETACIN")!=0)
gen	 nsaid123=(strpos(gnn,"EBSELEN")!=0)
gen	 nsaid124=(strpos(gnn,"ECALLANTIDE")!=0)
gen	 nsaid125=(strpos(gnn,"EDASALONEXENT")!=0)
gen	 nsaid126=(strpos(gnn,"ELSIBUCOL")!=0)
gen	 nsaid127=(strpos(gnn,"ELTENAC")!=0)
gen	 nsaid128=(strpos(gnn,"EMORFAZONE")!=0)
gen	 nsaid129=(strpos(gnn,"ENDOLAC")!=0)
gen	 nsaid130=(strpos(gnn,"ENFENAMIC ACID")!=0)
gen	 nsaid131=(strpos(gnn,"EPIRIZOLE")!=0)
gen	 nsaid132=(strpos(gnn,"ESOMEPRAZOLE PLUS NAPROXEN")!=0)
gen	 nsaid133=(strpos(gnn,"ETANERCEPT")!=0)
gen	 nsaid134=(strpos(gnn,"ETHENZAMIDE")!=0)
gen	 nsaid135=(strpos(gnn,"ETHONIUM")!=0)
gen	 nsaid136=(strpos(gnn,"ETODOLAC")!=0)
gen	 nsaid137=(strpos(gnn,"ETOFENAMATE")!=0)
gen	 nsaid138=(strpos(gnn,"ETORICOXIB")!=0)
gen	 nsaid139=(strpos(gnn,"EVENING PRIMROSE OIL")!=0)
gen	 nsaid140=(strpos(gnn,"EVOBRUTINIB")!=0)
gen	 nsaid141=(strpos(gnn,"FAMOTIDINE PLUS IBUPROFEN")!=0)
gen	 nsaid142=(strpos(gnn,"FELBINAC")!=0)
gen	 nsaid143=(strpos(gnn,"FENAMIC ACID")!=0)
gen	 nsaid144=(strpos(gnn,"FENBUFEN")!=0)
gen	 nsaid145=(strpos(gnn,"FENCLOFENAC")!=0)
gen	 nsaid146=(strpos(gnn,"FENCLOZIC ACID")!=0)
gen	 nsaid147=(strpos(gnn,"FENDOSAL")!=0)
gen	 nsaid148=(strpos(gnn,"FENFLUMIZOLE")!=0)
gen	 nsaid149=(strpos(gnn,"FENOPROFEN")!=0)
gen	 nsaid150=(strpos(gnn,"FENTIAZAC")!=0)
gen	 nsaid151=(strpos(gnn,"FEPRADINOL")!=0)
gen	 nsaid152=(strpos(gnn,"FEPRAZONE")!=0)
gen	 nsaid153=(strpos(gnn,"FERULIC ACID")!=0)
gen	 nsaid154=(strpos(gnn,"FIRATEGRAST")!=0)
gen	 nsaid155=(strpos(gnn,"FIROCOXIB")!=0)
gen	 nsaid156=(strpos(gnn,"FLOBUFEN")!=0)
gen	 nsaid157=(strpos(gnn,"FLOCTAFENINE")!=0)
gen	 nsaid158=(strpos(gnn,"FLORFENICOL PLUS MELOXICAM")!=0)
gen	 nsaid159=(strpos(gnn,"FLOSULIDE")!=0)
gen	 nsaid160=(strpos(gnn,"FLUFENAMATE ALUMINUM")!=0)
gen	 nsaid161=(strpos(gnn,"FLUFENAMIC ACID")!=0)
gen	 nsaid162=(strpos(gnn,"FLUNIXIN")!=0)
gen	 nsaid163=(strpos(gnn,"FLUNOXAPROFEN")!=0)
gen	 nsaid164=(strpos(gnn,"FLUPROQUAZONE")!=0)
gen	 nsaid165=(strpos(gnn,"FLURBIPROFEN")!=0)
gen	 nsaid166=(strpos(gnn,"FLUTIAZIN")!=0)
gen	 nsaid167=(strpos(gnn,"FOSDAGROCORAT")!=0)
gen	 nsaid168=(strpos(gnn,"FOSFOSAL")!=0)
gen	 nsaid169=(strpos(gnn,"FURAPROFEN")!=0)
gen	 nsaid170=(strpos(gnn,"FURCLOPROFEN")!=0)
gen	 nsaid171=(strpos(gnn,"FUROBUFEN")!=0)
gen	 nsaid172=(strpos(gnn,"FUROFENAC")!=0)
gen	 nsaid173=(strpos(gnn,"GLUCAMETACIN")!=0)
gen	 nsaid174=(strpos(gnn,"GLUCONATE ZINC")!=0)
gen	 nsaid175=(strpos(gnn,"GUACETISAL")!=0)
gen	 nsaid176=(strpos(gnn,"GUAIMESAL")!=0)
gen	 nsaid177=(strpos(gnn,"HELENALIN")!=0)
gen	 nsaid178=(strpos(gnn,"HELIODERMIN")!=0)
gen	 nsaid179=(strpos(gnn,"HEMODES")!=0)
gen	 nsaid180=(strpos(gnn,"HIGENAMINE")!=0)
gen	 nsaid181=(strpos(gnn,"IBUFENAC")!=0)
gen	 nsaid182=(strpos(gnn,"IBUPROFEN")!=0)
gen	 nsaid183=(strpos(gnn,"IBUPROXAM")!=0)
gen	 nsaid184=(strpos(gnn,"ICATIBANT")!=0)
gen	 nsaid185=(strpos(gnn,"ICODULINE")!=0)
gen	 nsaid186=(strpos(gnn,"IGURATIMOD")!=0)
gen	 nsaid187=(strpos(gnn,"ILONIDAP")!=0)
gen	 nsaid188=(strpos(gnn,"IMIDAZOLE SALICYLATE")!=0)
gen	 nsaid189=(strpos(gnn,"IMIDAZOLE-2-HYDROXYBENZOATE")!=0)
gen	 nsaid190=(strpos(gnn,"IMISOPASEM MANGANESE")!=0)
gen	 nsaid191=(strpos(gnn,"INCYCLINIDE")!=0)
gen	 nsaid192=(strpos(gnn,"INDAMETH")!=0)
gen	 nsaid193=(strpos(gnn,"INDOBUFEN")!=0)
gen	 nsaid194=(strpos(gnn,"INDOMETACIN")!=0)
gen	 nsaid195=(strpos(gnn,"INDOMETHACIN")!=0)
gen	 nsaid196=(strpos(gnn,"INDOPROFEN")!=0)
gen	 nsaid197=(strpos(gnn,"IODOANTIPYRINE")!=0)
gen	 nsaid198=(strpos(gnn,"IPSALAZIDE")!=0)
gen	 nsaid199=(strpos(gnn,"ISOFEZOLAC")!=0)
gen	 nsaid200=(strpos(gnn,"ISONIXIN")!=0)
gen	 nsaid201=(strpos(gnn,"ISOXEPAC")!=0)
gen	 nsaid202=(strpos(gnn,"ISOXICAM")!=0)
gen	 nsaid203=(strpos(gnn,"KEBUZONE")!=0)
gen	 nsaid204=(strpos(gnn,"KETOPROFEN")!=0)
gen	 nsaid205=(strpos(gnn,"KETOROLAC")!=0)
gen	 nsaid206=(strpos(gnn,"LANSOPRAZOLE PLUS NAPROXEN")!=0)
gen	 nsaid207=(strpos(gnn,"LEFLUNOMIDE")!=0)
gen	 nsaid208=(strpos(gnn,"LENABASUM")!=0)
gen	 nsaid209=(strpos(gnn,"LICOFELONE")!=0)
gen	 nsaid210=(strpos(gnn,"LIFITEGRAST")!=0)
gen	 nsaid211=(strpos(gnn,"LIPOXIN A4")!=0)
gen	 nsaid212=(strpos(gnn,"LIPOXIN B4")!=0)
gen	 nsaid213=(strpos(gnn,"LISOFYLLINE")!=0)
gen	 nsaid214=(strpos(gnn,"LOBENZARIT")!=0)
gen	 nsaid215=(strpos(gnn,"LOBUPROFEN")!=0)
gen	 nsaid216=(strpos(gnn,"LONAZOLAC")!=0)
gen	 nsaid217=(strpos(gnn,"LORNOXICAM")!=0)
gen	 nsaid218=(strpos(gnn,"LOSMIPROFEN")!=0)
gen	 nsaid219=(strpos(gnn,"LOXOPROFEN")!=0)
gen	 nsaid220=(strpos(gnn,"LUMIRACOXIB")!=0)
gen	 nsaid221=(strpos(gnn,"LYPRINOL")!=0)
gen	 nsaid222=(strpos(gnn,"LYSINE ACETYLSALICYLATE")!=0)
gen	 nsaid223=(strpos(gnn,"MABUPROFEN")!=0)
gen	 nsaid224=(strpos(gnn,"MAGNESIUM SALICYLATE")!=0)
gen	 nsaid225=(strpos(gnn,"MAGNOLOL")!=0)
gen	 nsaid226=(strpos(gnn,"MANOALIDE")!=0)
gen	 nsaid227=(strpos(gnn,"MAPRACORAT")!=0)
gen	 nsaid228=(strpos(gnn,"MASOPROCOL")!=0)
gen	 nsaid229=(strpos(gnn,"MAVACOXIB")!=0)
gen	 nsaid230=(strpos(gnn,"MECLOFENAMATE")!=0)
gen	 nsaid231=(strpos(gnn,"MECLOFENAMIC ACID")!=0)
gen	 nsaid232=(strpos(gnn,"MEFENAMIC ACID")!=0)
gen	 nsaid233=(strpos(gnn,"MELOXICAM")!=0)
gen	 nsaid234=(strpos(gnn,"MESALAMINE")!=0)
gen	 nsaid235=(strpos(gnn,"MESALAZINE")!=0)
gen	 nsaid236=(strpos(gnn,"METHOTREXATE")!=0)
gen	 nsaid237=(strpos(gnn,"METIAZINIC ACID")!=0)
gen	 nsaid238=(strpos(gnn,"METOXIBUTROPATE")!=0)
gen	 nsaid239=(strpos(gnn,"MIPRAGOSIDE")!=0)
gen	 nsaid240=(strpos(gnn,"MIROCOCEPT")!=0)
gen	 nsaid241=(strpos(gnn,"MIROPROFEN")!=0)
gen	 nsaid242=(strpos(gnn,"MIZORIBINE")!=0)
gen	 nsaid243=(strpos(gnn,"MOFEBUTAZONE")!=0)
gen	 nsaid244=(strpos(gnn,"MOFEZOLAC")!=0)
gen	 nsaid245=(strpos(gnn,"MONGERSEN")!=0)
gen	 nsaid246=(strpos(gnn,"MORAZONE")!=0)
gen	 nsaid247=(strpos(gnn,"MORNIFLUMATE")!=0)
gen	 nsaid248=(strpos(gnn,"NABUMETONE")!=0)
gen	 nsaid249=(strpos(gnn,"NAFAMOSTAT")!=0)
gen	 nsaid250=(strpos(gnn,"NANGIBOTIDE")!=0)
gen	 nsaid251=(strpos(gnn,"NAPROXCINOD")!=0)
gen	 nsaid252=(strpos(gnn,"NAPROXEN")!=0)
gen	 nsaid253=(strpos(gnn,"NAVAMEPENT")!=0)
gen	 nsaid254=(strpos(gnn,"NEBACETIN")!=0)
gen	 nsaid255=(strpos(gnn,"NEPAFENAC")!=0)
gen	 nsaid256=(strpos(gnn,"NEUROFENAC")!=0)
gen	 nsaid257=(strpos(gnn,"NEUROTROPIN")!=0)
gen	 nsaid258=(strpos(gnn,"NICTINDOLE")!=0)
gen	 nsaid259=(strpos(gnn,"NIFENAZONE")!=0)
gen	 nsaid260=(strpos(gnn,"NIFLUMIC ACID")!=0)
gen	 nsaid261=(strpos(gnn,"NIMESULIDE")!=0)
gen	 nsaid262=(strpos(gnn,"NITROASPIRIN")!=0)
gen	 nsaid263=(strpos(gnn,"ODALPROFEN")!=0)
gen	 nsaid264=(strpos(gnn,"OLOPATADINE HYDROCHLORIDE")!=0)
gen	 nsaid265=(strpos(gnn,"OLSALAZINE")!=0)
gen	 nsaid266=(strpos(gnn,"OLVANIL")!=0)
gen	 nsaid267=(strpos(gnn,"OREN GEDOKU TO")!=0)
gen	 nsaid268=(strpos(gnn,"ORGOTEIN")!=0)
gen	 nsaid269=(strpos(gnn,"ORPANOXIN")!=0)
gen	 nsaid270=(strpos(gnn,"OXACEPROL")!=0)
gen	 nsaid271=(strpos(gnn,"OXAMETACIN")!=0)
gen	 nsaid272=(strpos(gnn,"OXAPRAZINE")!=0)
gen	 nsaid273=(strpos(gnn,"OXAPROZIN")!=0)
gen	 nsaid274=(strpos(gnn,"OXICAM DERIVATIVE")!=0)
gen	 nsaid275=(strpos(gnn,"OXINDANAC")!=0)
gen	 nsaid276=(strpos(gnn,"OXYPHENBUTAZONE")!=0)
gen	 nsaid277=(strpos(gnn,"PALIFERMIN")!=0)
gen	 nsaid278=(strpos(gnn,"PALMIDROL")!=0)
gen	 nsaid279=(strpos(gnn,"PARCETASAL")!=0)
gen	 nsaid280=(strpos(gnn,"PARECOXIB")!=0)
gen	 nsaid281=(strpos(gnn,"PARTHENOLIDE")!=0)
gen	 nsaid282=(strpos(gnn,"PELUBIPROFEN")!=0)
gen	 nsaid283=(strpos(gnn,"PEMEDOLAC")!=0)
gen	 nsaid284=(strpos(gnn,"PEONIFLORIN")!=0)
gen	 nsaid285=(strpos(gnn,"PERISOXAL")!=0)
gen	 nsaid286=(strpos(gnn,"PHENIDONE")!=0)
gen	 nsaid287=(strpos(gnn,"PHENYLBUTAZONE")!=0)
gen	 nsaid288=(strpos(gnn,"PICOLAMINE SALICYLATE")!=0)
gen	 nsaid289=(strpos(gnn,"PIKETOPROFEN")!=0)
gen	 nsaid290=(strpos(gnn,"PIMECROLIMUS")!=0)
gen	 nsaid291=(strpos(gnn,"PIMEPROFEN")!=0)
gen	 nsaid292=(strpos(gnn,"PIPEBUZONE")!=0)
gen	 nsaid293=(strpos(gnn,"PIPROXEN")!=0)
gen	 nsaid294=(strpos(gnn,"PIRAZOLAC")!=0)
gen	 nsaid295=(strpos(gnn,"PIRFENIDONE")!=0)
gen	 nsaid296=(strpos(gnn,"PIROXICAM")!=0)
gen	 nsaid297=(strpos(gnn,"PIRPROFEN")!=0)
gen	 nsaid298=(strpos(gnn,"PLOZALIZUMAB")!=0)
gen	 nsaid299=(strpos(gnn,"POLMACOXIB")!=0)
gen	 nsaid300=(strpos(gnn,"POTASSIUM SALICYLATE")!=0)
gen	 nsaid301=(strpos(gnn,"PRALNACASAN")!=0)
gen	 nsaid302=(strpos(gnn,"PRANOPROFEN")!=0)
gen	 nsaid303=(strpos(gnn,"PRINOMIDE")!=0)
gen	 nsaid304=(strpos(gnn,"PROGLUMETACIN MALEATE")!=0)
gen	 nsaid305=(strpos(gnn,"PROPACETAMOL")!=0)
gen	 nsaid306=(strpos(gnn,"PROPIONYLCARNITINE")!=0)
gen	 nsaid307=(strpos(gnn,"PROPYPHENAZONE")!=0)
gen	 nsaid308=(strpos(gnn,"PROQUAZONE")!=0)
gen	 nsaid309=(strpos(gnn,"PYRANOPROFEN")!=0)
gen	 nsaid310=(strpos(gnn,"PYRAZINOBUTAZONE")!=0)
gen	 nsaid311=(strpos(gnn,"PYRAZOLONE")!=0)
gen	 nsaid312=(strpos(gnn,"PYROGENAL")!=0)
gen	 nsaid313=(strpos(gnn,"RELTECIMOD")!=0)
gen	 nsaid314=(strpos(gnn,"REMESTEMCEL L")!=0)
gen	 nsaid315=(strpos(gnn,"RESATORVID")!=0)
gen	 nsaid316=(strpos(gnn,"RESVERATROL")!=0)
gen	 nsaid317=(strpos(gnn,"RIMACALIB")!=0)
gen	 nsaid318=(strpos(gnn,"RIMAZOLIUM")!=0)
gen	 nsaid319=(strpos(gnn,"RISANKIZUMAB")!=0)
gen	 nsaid320=(strpos(gnn,"ROBENACOXIB")!=0)
gen	 nsaid321=(strpos(gnn,"ROFECOXIB")!=0)
gen	 nsaid322=(strpos(gnn,"ROMAZARIT")!=0)
gen	 nsaid323=(strpos(gnn,"ROSIPTOR")!=0)
gen	 nsaid324=(strpos(gnn,"ROSMARINIC ACID")!=0)
gen	 nsaid325=(strpos(gnn,"ROVAZOLAC")!=0)
gen	 nsaid326=(strpos(gnn,"RUMALON")!=0)
gen	 nsaid327=(strpos(gnn,"SAIKO-KEISHI-TO")!=0)
gen	 nsaid328=(strpos(gnn,"SAIKOSAPONIN")!=0)
gen	 nsaid329=(strpos(gnn,"SALICIN")!=0)
gen	 nsaid330=(strpos(gnn,"SALICYLAMIDE")!=0)
gen	 nsaid331=(strpos(gnn,"SALICYLATES")!=0)
gen	 nsaid332=(strpos(gnn,"SALICYLIC ACID")!=0)
gen	 nsaid333=(strpos(gnn,"SALICYLSALICYLIC ACID")!=0)
gen	 nsaid334=(strpos(gnn,"SALNACEDIN")!=0)
gen	 nsaid335=(strpos(gnn,"SALSALATE")!=0)
gen	 nsaid336=(strpos(gnn,"SATRALIZUMAB")!=0)
gen	 nsaid337=(strpos(gnn,"SCALARADIAL")!=0)
gen	 nsaid338=(strpos(gnn,"SEMAPIMOD")!=0)
gen	 nsaid339=(strpos(gnn,"SERATRODAST")!=0)
gen	 nsaid340=(strpos(gnn,"SERRATIOPEPTIDASE")!=0)
gen	 nsaid341=(strpos(gnn,"SHIKONIN")!=0)
gen	 nsaid342=(strpos(gnn,"SINAPALDEHYDE")!=0)
gen	 nsaid343=(strpos(gnn,"SODIUM SALICYLATE")!=0)
gen	 nsaid344=(strpos(gnn,"SUDOXICAM")!=0)
gen	 nsaid345=(strpos(gnn,"SULFASALAZINE")!=0)
gen	 nsaid346=(strpos(gnn,"SULFOSALICYLATE SAMARIUM")!=0)
gen	 nsaid347=(strpos(gnn,"SULINDAC")!=0)
gen	 nsaid348=(strpos(gnn,"SUPROFEN")!=0)
gen	 nsaid349=(strpos(gnn,"SUXIBUZONE")!=0)
gen	 nsaid350=(strpos(gnn,"TALNIFLUMATE")!=0)
gen	 nsaid351=(strpos(gnn,"TANSHINONE")!=0)
gen	 nsaid352=(strpos(gnn,"TAPINAROF")!=0)
gen	 nsaid353=(strpos(gnn,"TAXIFOLIN")!=0)
gen	 nsaid354=(strpos(gnn,"TAZOFELONE")!=0)
gen	 nsaid355=(strpos(gnn,"TENIDAP")!=0)
gen	 nsaid356=(strpos(gnn,"TENOSAL")!=0)
gen	 nsaid357=(strpos(gnn,"TENOSIPROL")!=0)
gen	 nsaid358=(strpos(gnn,"TENOXICAM")!=0)
gen	 nsaid359=(strpos(gnn,"TEPOXALIN")!=0)
gen	 nsaid360=(strpos(gnn,"TERIFLUNOMIDE")!=0)
gen	 nsaid361=(strpos(gnn,"TIAPROFENIC ACID")!=0)
gen	 nsaid362=(strpos(gnn,"TIARAMIDE")!=0)
gen	 nsaid363=(strpos(gnn,"TILMACOXIB")!=0)
gen	 nsaid364=(strpos(gnn,"TILNOPROFEN ARBAMEL")!=0)
gen	 nsaid365=(strpos(gnn,"TILOMISOLE")!=0)
gen	 nsaid366=(strpos(gnn,"TIMEGADINE")!=0)
gen	 nsaid367=(strpos(gnn,"TINORIDINE")!=0)
gen	 nsaid368=(strpos(gnn,"TIOXAMAST")!=0)
gen	 nsaid369=(strpos(gnn,"TIOXAPROFEN")!=0)
gen	 nsaid370=(strpos(gnn,"TOLFENAMIC ACID")!=0)
gen	 nsaid371=(strpos(gnn,"TOLMETIN")!=0)
gen	 nsaid372=(strpos(gnn,"TOLMETIN GLYCINAMIDE")!=0)
gen	 nsaid373=(strpos(gnn,"TOMARALIMAB")!=0)
gen	 nsaid374=(strpos(gnn,"TOMICORAT")!=0)
gen	 nsaid375=(strpos(gnn,"TRAMADOL, DEXKETOPROFEN DRUG COMBINATION")!=0)
gen	 nsaid376=(strpos(gnn,"TRANILAST")!=0)
gen	 nsaid377=(strpos(gnn,"TRIBENOSIDE")!=0)
gen	 nsaid378=(strpos(gnn,"TRIBUZONE")!=0)
gen	 nsaid379=(strpos(gnn,"TRIETHANOLAMINE SALICYLATE")!=0)
gen	 nsaid380=(strpos(gnn,"TROPESIN")!=0)
gen	 nsaid381=(strpos(gnn,"TRYPTAMIDE")!=0)
gen	 nsaid382=(strpos(gnn,"UFENAMATE")!=0)
gen	 nsaid383=(strpos(gnn,"URSOLIC ACID")!=0)
gen	 nsaid384=(strpos(gnn,"VALATEGRAST")!=0)
gen	 nsaid385=(strpos(gnn,"VALDECOXIB")!=0)
gen	 nsaid386=(strpos(gnn,"VALERYLSALICYLIC ACID")!=0)
gen	 nsaid387=(strpos(gnn,"VEDAPROFEN")!=0)
gen	 nsaid388=(strpos(gnn,"VERRAMED")!=0)
gen	 nsaid389=(strpos(gnn,"XIMOPROFEN")!=0)
gen	 nsaid390=(strpos(gnn,"ZALTOPROFEN")!=0)
gen	 nsaid391=(strpos(gnn,"ZAURATEGRAST")!=0)
gen	 nsaid392=(strpos(gnn,"ZIDOMETACIN")!=0)
gen	 nsaid393=(strpos(gnn,"ZILEUTON")!=0)
gen	 nsaid394=(strpos(gnn,"ZINC SALICYLATE")!=0)
gen	 nsaid395=(strpos(gnn,"ZOLIPROFEN")!=0)
gen	 nsaid396=(strpos(gnn,"ZOMEPIRAC")!=0)        
		gen  nsaid_rx=( ///	
nsaid1+	///
nsaid2+	///
nsaid3+	///
nsaid4+	///
nsaid5+	///
nsaid6+	///
nsaid7+	///
nsaid8+	///
nsaid9+	///
nsaid10+	///
nsaid11+	///
nsaid12+	///
nsaid13+	///
nsaid14+	///
nsaid15+	///
nsaid16+	///
nsaid17+	///
nsaid18+	///
nsaid19+	///
nsaid20+	///
nsaid21+	///
nsaid22+	///
nsaid23+	///
nsaid24+	///
nsaid25+	///
nsaid26+	///
nsaid27+	///
nsaid28+	///
nsaid29+	///
nsaid30+	///
nsaid31+	///
nsaid32+	///
nsaid33+	///
nsaid34+	///
nsaid35+	///
nsaid36+	///
nsaid37+	///
nsaid38+	///
nsaid39+	///
nsaid40+	///
nsaid41+	///
nsaid42+	///
nsaid43+	///
nsaid44+	///
nsaid45+	///
nsaid46+	///
nsaid47+	///
nsaid48+	///
nsaid49+	///
nsaid50+	///
nsaid51+	///
nsaid52+	///
nsaid53+	///
nsaid54+	///
nsaid55+	///
nsaid56+	///
nsaid57+	///
nsaid58+	///
nsaid59+	///
nsaid60+	///
nsaid61+	///
nsaid62+	///
nsaid63+	///
nsaid64+	///
nsaid65+	///
nsaid66+	///
nsaid67+	///
nsaid68+	///
nsaid69+	///
nsaid70+	///
nsaid71+	///
nsaid72+	///
nsaid73+	///
nsaid74+	///
nsaid75+	///
nsaid76+	///
nsaid77+	///
nsaid78+	///
nsaid79+	///
nsaid80+	///
nsaid81+	///
nsaid82+	///
nsaid83+	///
nsaid84+	///
nsaid85+	///
nsaid86+	///
nsaid87+	///
nsaid88+	///
nsaid89+	///
nsaid90+	///
nsaid91+	///
nsaid92+	///
nsaid93+	///
nsaid94+	///
nsaid95+	///
nsaid96+	///
nsaid97+	///
nsaid98+	///
nsaid99+	///
nsaid100+	///
nsaid101+	///
nsaid102+	///
nsaid103+	///
nsaid104+	///
nsaid105+	///
nsaid106+	///
nsaid107+	///
nsaid108+	///
nsaid109+	///
nsaid110+	///
nsaid111+	///
nsaid112+	///
nsaid113+	///
nsaid114+	///
nsaid115+	///
nsaid116+	///
nsaid117+	///
nsaid118+	///
nsaid119+	///
nsaid120+	///
nsaid121+	///
nsaid122+	///
nsaid123+	///
nsaid124+	///
nsaid125+	///
nsaid126+	///
nsaid127+	///
nsaid128+	///
nsaid129+	///
nsaid130+	///
nsaid131+	///
nsaid132+	///
nsaid133+	///
nsaid134+	///
nsaid135+	///
nsaid136+	///
nsaid137+	///
nsaid138+	///
nsaid139+	///
nsaid140+	///
nsaid141+	///
nsaid142+	///
nsaid143+	///
nsaid144+	///
nsaid145+	///
nsaid146+	///
nsaid147+	///
nsaid148+	///
nsaid149+	///
nsaid150+	///
nsaid151+	///
nsaid152+	///
nsaid153+	///
nsaid154+	///
nsaid155+	///
nsaid156+	///
nsaid157+	///
nsaid158+	///
nsaid159+	///
nsaid160+	///
nsaid161+	///
nsaid162+	///
nsaid163+	///
nsaid164+	///
nsaid165+	///
nsaid166+	///
nsaid167+	///
nsaid168+	///
nsaid169+	///
nsaid170+	///
nsaid171+	///
nsaid172+	///
nsaid173+	///
nsaid174+	///
nsaid175+	///
nsaid176+	///
nsaid177+	///
nsaid178+	///
nsaid179+	///
nsaid180+	///
nsaid181+	///
nsaid182+	///
nsaid183+	///
nsaid184+	///
nsaid185+	///
nsaid186+	///
nsaid187+	///
nsaid188+	///
nsaid189+	///
nsaid190+	///
nsaid191+	///
nsaid192+	///
nsaid193+	///
nsaid194+	///
nsaid195+	///
nsaid196+	///
nsaid197+	///
nsaid198+	///
nsaid199+	///
nsaid200+	///
nsaid201+	///
nsaid202+	///
nsaid203+	///
nsaid204+	///
nsaid205+	///
nsaid206+	///
nsaid207+	///
nsaid208+	///
nsaid209+	///
nsaid210+	///
nsaid211+	///
nsaid212+	///
nsaid213+	///
nsaid214+	///
nsaid215+	///
nsaid216+	///
nsaid217+	///
nsaid218+	///
nsaid219+	///
nsaid220+	///
nsaid221+	///
nsaid222+	///
nsaid223+	///
nsaid224+	///
nsaid225+	///
nsaid226+	///
nsaid227+	///
nsaid228+	///
nsaid229+	///
nsaid230+	///
nsaid231+	///
nsaid232+	///
nsaid233+	///
nsaid234+	///
nsaid235+	///
nsaid236+	///
nsaid237+	///
nsaid238+	///
nsaid239+	///
nsaid240+	///
nsaid241+	///
nsaid242+	///
nsaid243+	///
nsaid244+	///
nsaid245+	///
nsaid246+	///
nsaid247+	///
nsaid248+	///
nsaid249+	///
nsaid250+	///
nsaid251+	///
nsaid252+	///
nsaid253+	///
nsaid254+	///
nsaid255+	///
nsaid256+	///
nsaid257+	///
nsaid258+	///
nsaid259+	///
nsaid260+	///
nsaid261+	///
nsaid262+	///
nsaid263+	///
nsaid264+	///
nsaid265+	///
nsaid266+	///
nsaid267+	///
nsaid268+	///
nsaid269+	///
nsaid270+	///
nsaid271+	///
nsaid272+	///
nsaid273+	///
nsaid274+	///
nsaid275+	///
nsaid276+	///
nsaid277+	///
nsaid278+	///
nsaid279+	///
nsaid280+	///
nsaid281+	///
nsaid282+	///
nsaid283+	///
nsaid284+	///
nsaid285+	///
nsaid286+	///
nsaid287+	///
nsaid288+	///
nsaid289+	///
nsaid290+	///
nsaid291+	///
nsaid292+	///
nsaid293+	///
nsaid294+	///
nsaid295+	///
nsaid296+	///
nsaid297+	///
nsaid298+	///
nsaid299+	///
nsaid300+	///
nsaid301+	///
nsaid302+	///
nsaid303+	///
nsaid304+	///
nsaid305+	///
nsaid306+	///
nsaid307+	///
nsaid308+	///
nsaid309+	///
nsaid310+	///
nsaid311+	///
nsaid312+	///
nsaid313+	///
nsaid314+	///
nsaid315+	///
nsaid316+	///
nsaid317+	///
nsaid318+	///
nsaid319+	///
nsaid320+	///
nsaid321+	///
nsaid322+	///
nsaid323+	///
nsaid324+	///
nsaid325+	///
nsaid326+	///
nsaid327+	///
nsaid328+	///
nsaid329+	///
nsaid330+	///
nsaid331+	///
nsaid332+	///
nsaid333+	///
nsaid334+	///
nsaid335+	///
nsaid336+	///
nsaid337+	///
nsaid338+	///
nsaid339+	///
nsaid340+	///
nsaid341+	///
nsaid342+	///
nsaid343+	///
nsaid344+	///
nsaid345+	///
nsaid346+	///
nsaid347+	///
nsaid348+	///
nsaid349+	///
nsaid350+	///
nsaid351+	///
nsaid352+	///
nsaid353+	///
nsaid354+	///
nsaid355+	///
nsaid356+	///
nsaid357+	///
nsaid358+	///
nsaid359+	///
nsaid360+	///
nsaid361+	///
nsaid362+	///
nsaid363+	///
nsaid364+	///
nsaid365+	///
nsaid366+	///
nsaid367+	///
nsaid368+	///
nsaid369+	///
nsaid370+	///
nsaid371+	///
nsaid372+	///
nsaid373+	///
nsaid374+	///
nsaid375+	///
nsaid376+	///
nsaid377+	///
nsaid378+	///
nsaid379+	///
nsaid380+	///
nsaid381+	///
nsaid382+	///
nsaid383+	///
nsaid384+	///
nsaid385+	///
nsaid386+	///
nsaid387+	///
nsaid388+	///
nsaid389+	///
nsaid390+	///
nsaid391+	///
nsaid392+	///
nsaid393+	///
nsaid394+	///
nsaid395+	///
nsaid396	///	
>0)
keep usrds_id srvc_dt nsaid_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 32_nsaids_expR.dta,replace
di "$S_TIME"
