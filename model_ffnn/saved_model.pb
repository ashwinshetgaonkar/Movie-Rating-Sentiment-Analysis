??
?'?&
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-0-g3f878cff5b68??
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
?N?*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
cond_1/Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *!
shared_namecond_1/Adam/iter
m
$cond_1/Adam/iter/Read/ReadVariableOpReadVariableOpcond_1/Adam/iter*
_output_shapes
: *
dtype0	
x
cond_1/Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecond_1/Adam/beta_1
q
&cond_1/Adam/beta_1/Read/ReadVariableOpReadVariableOpcond_1/Adam/beta_1*
_output_shapes
: *
dtype0
x
cond_1/Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecond_1/Adam/beta_2
q
&cond_1/Adam/beta_2/Read/ReadVariableOpReadVariableOpcond_1/Adam/beta_2*
_output_shapes
: *
dtype0
v
cond_1/Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namecond_1/Adam/decay
o
%cond_1/Adam/decay/Read/ReadVariableOpReadVariableOpcond_1/Adam/decay*
_output_shapes
: *
dtype0
?
cond_1/Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namecond_1/Adam/learning_rate

-cond_1/Adam/learning_rate/Read/ReadVariableOpReadVariableOpcond_1/Adam/learning_rate*
_output_shapes
: *
dtype0
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name2145*
value_dtype0	
}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_23*
value_dtype0	
x
current_loss_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecurrent_loss_scale
q
&current_loss_scale/Read/ReadVariableOpReadVariableOpcurrent_loss_scale*
_output_shapes
: *
dtype0
h

good_stepsVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
good_steps
a
good_steps/Read/ReadVariableOpReadVariableOp
good_steps*
_output_shapes
: *
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
"cond_1/Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*3
shared_name$"cond_1/Adam/embedding/embeddings/m
?
6cond_1/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp"cond_1/Adam/embedding/embeddings/m* 
_output_shapes
:
?N?*
dtype0
?
cond_1/Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*+
shared_namecond_1/Adam/dense/kernel/m
?
.cond_1/Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/dense/kernel/m*
_output_shapes
:	?*
dtype0
?
cond_1/Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecond_1/Adam/dense/bias/m
?
,cond_1/Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/dense/bias/m*
_output_shapes
:*
dtype0
?
"cond_1/Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*3
shared_name$"cond_1/Adam/embedding/embeddings/v
?
6cond_1/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp"cond_1/Adam/embedding/embeddings/v* 
_output_shapes
:
?N?*
dtype0
?
cond_1/Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*+
shared_namecond_1/Adam/dense/kernel/v
?
.cond_1/Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/dense/kernel/v*
_output_shapes
:	?*
dtype0
?
cond_1/Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecond_1/Adam/dense/bias/v
?
,cond_1/Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/dense/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?N*
dtype0*??
value??B???NBtheBaBandBofBtoBisBinBitBiBthisBthatBbrBwasBasBforBwithBmovieBbutBfilmBonByouBnotBareBhisBhaveBbeBheBoneBitsBatBallBbyBanBtheyBwhoBfromBsoBlikeBorBjustBherBaboutBifBhasBoutBsomeBthereBwhatBgoodBmoreBwhenBveryBmyBevenBnoBupBwouldBsheBtimeBwhichBonlyBreallyBtheirBwereBseeBstoryBhadBcanBmeBweBthanBwellBmuchBbeenBgetBalsoBwillBintoBotherBdoBgreatBbecauseBbadBhowBpeopleBmostBfirstBhimBdontBthenBmoviesBmakeBmadeBthemBfilmsBcouldBanyBtooBwayBafterB
charactersBthinkBwatchBmanyBbeingBseenBtwoB	characterBloveBneverBactingBplotBwhereBdidBlittleBbestBknowBshowBlifeBeverBdoesByourBbetterBoffBstillBoverBtheseBendBsayBsceneBwhileBwhyBmanBscenesBhereBsuchB	somethingBgoBthroughBimBshouldBthoseBbackBrealBthingBwatchingBnowBdidntBdoesntBactorsByearsBactuallyBthoughBbeforeBmakesBanotherBlookBnothingBfunnyBfindBgoingBworkBsameBlotBnewBeveryBfewBoldBusBpartBdirectorBcantBquiteBthatsBagainBthingsBprettyBwantBcastBseemsByoungBaroundBfactBenoughBdownBtakeBgotBhoweverBhorrorBgiveBworldBbothBbigBthoughtBmayBiveBbetweenBwithoutBownBisntBalwaysBgetsBalmostBsawBmusicBlongBseriesBrightBcomeBmustBtheresBtimesBoriginalBinterestingBwholeBleastBroleBdoneBguyBpointBactionBcomedyBbitBmightBlastBamBfarBscriptBfeelBhesBminutesBsinceBprobablyBfamilyBanythingByetBkindBratherBperformanceBawayBtvBworstBfunBanyoneBgirlBeachBplayedBourBsureBfoundBwomanBalthoughBmakingB
especiallyBbelieveBtryingBhavingBshowsBcourseBcomesBgoesBlookingBhardBputB
everythingBmaybeBdayBworthBendingBmainBlooksBwasntB	differentBplaceBthreeBscreenBdvdBwatchedBsetBonceBsenseBtrueBduringBplaysBreasonBbookBeffectsBsomeoneB2BsaidBplayBjobB10BactorBmoneyBtakesBtogetherBseemBseeingBinsteadBeveryoneBamericanBspecialBleftBhimselfB	beautifulBlaterBaudienceBnightB	excellentBjohnBblackBshotBwarBideaBversionBusedByoureBsimplyBfanBhighBpoorBhouseBreadBwifeBniceB
completelyBkidsBdeathBfriendsBhelpBalongBelseBshortBmenBgivenBsecondBenjoyBboringBtryBuseBhomeBneedBhalfBstarBlessBuntilByearBmindBrestBclassicBeitherB	recommendBcoupleBnextBtrulyBperformancesBfatherBletBwrongBdeadBstartBwomenBstupidBperhapsBschoolBrememberB	hollywoodBgettingBtellBlineB
productionB
understandBfullBcameBsexBkeepBmomentsB
definitelyBawfulBmeanBterribleBcameraBitselfBplayingBothersB	wonderfulBsmallBnameBhumanBoftenBbudgetBperfectBvideoBdoingBearlyBtopBepisodeBwentBgivesBpersonB	certainlyBfinallyB
absolutelyBfaceBpieceBcouldntBdialogueBlovedBlikedBheadBsortBcaseBtitleBfeltBlinesBbecomeByesBstarsBguysBseveralBentireBliveBlostBsupposedBwrittenBmotherBoverallBhopeBentertainingBmrB3BboyBworseBidBstyleBfriendBlaughBpictureBwantedBohBleadBproblemBtotallyBshesBfansB	beginningByoullBwasteBseemedBsoundBwontBbasedBdarkBfinalBguessBagainstBcareBunfortunatelyBlowBcinemaBalreadyB
throughoutBlivesBhumorBdespiteBevilBbecomesBwantsBdramaBgameBableB	directionBexampleBchildrenB1BturnBgirlsBfineBcalledBdaysBtheyreBamazingBhorribleBwhiteBqualityBhistoryBwritingBturnsBBmichaelBtriesBsonBunderBpartsBactBsideBgaveBkillBworksBbehindBmatterBkillerBenjoyedBflickBpastB	obviouslyBonesBexpectBfavoriteBdirectedBcarBtownBviewerBeyesBgenreB	sometimesBrunBstuffBtookBthinkingB	brilliantBstartsBsaysBhighlyBkilledBgroupBactressBsoonBmyselfBheardBhappensBheartBlateB
themselvesBfeelingBdecentBhellBartBchildBillBkidBfightBleaveBexceptBlookedBsimpleBcityBdaughterBpoliceBbloodBtypeBtoldBsaveBcompleteBwouldntBscoreBmomentBcloseBcannotB	extremelyBwonderBobviousBattemptB
experienceBetcBrobertBparticularlyBlackBgodBlivingBcomingBhandBtakenBhourBokBexactlyBhappenBletsBrolesBpleaseBstopBstoriesBchanceBhappenedBinvolvedB	hilariousBshownBseriousBcoolBanywayBstrongBreleasedBdavidBitbrBknownBviolenceBnumberBusuallyBnoneBacrossBsongBopeningB	includingBcinematographyBvoiceBhugeBmurderBrunningBjamesBagoBwishBinterestBcrapBslowBenglishB	seriouslyBsayingBcallBwhoseBpossibleBknewB	basicallyBorderBrealityBsadBaloneBcutBannoyingB4ByourselfBrelationshipBbeyondBfemaleBsillyBstartedBknowsBtakingBmostlyBlocalBbrotherB5BgoreBdocumentaryB
apparentlyBageBhoursBheroBopinionBendsBusualBjokesBtodayBhitBsomewhatBchangeBshotsB
ridiculousBnovelBtalentBfindsBclearlyBfourBbodyBhusbandBstrangeBmajorBturnedBcareerBwordBdueBratingBviewBwhatsBuponBwordsBscaryBtellsBmusicalBlevelB	importantBtalkingBpowerB	attentionBsequenceBcheapBeventsBsingleBhappyB	directorsBepisodesBcountryBjackBarentBroomBbritishBmissBdisappointedBmoviebrBmodernBlightBproblemsBgivingBpredictableBaddBentertainmentBviewersBwhetherB
televisionBtalkBeasilyBreviewBfrenchBsimilarBtenB
supportingBappearsBneedsBfiveBsetsBaboveB	storylineBparentsBfutureBmentionB
soundtrackBdialogBteamBsongsBbunchBlotsBhaventBkingB	surprisedBmovingBwithinBstayBgeorgeBdullBearthBspaceBsorryBfallsBcertainBromanticBhateBfilmedBgreatestBtriedBshowingBbringBeasyBcomicBclearBmiddleBfilmbrBtaleBmessageBdealB	enjoyableBnamedBthrillerBgoneBtypicalBdoubtBworkingBwriterBnearBwaysBamongBdieBusingBthemeBfeelsBactualBrockBnearlyBreleaseBbuyBdrBcommentsBtheaterBfallBmonsterBmeansBeffortBavoidBkeptBsequelBeditingBboysBleadsBmysteryBgeneralB	realisticBladyBfamousBcheckBfeatureB80sB	fantasticBelementsBclassBstraightBsomehowB
atmosphereBsubjectBrichardBsuspenseBbeginsBpointsBherselfBdogBsisterBfastBpeterBforgetB
particularBfigureBtomBbroughtBformByouveB
eventuallyBmoveBredBeyeB	animationBwhosBmaterialBimagineBweakBexpectedBwhateverBreviewsBkillingBdecidedBwaitBsurpriseBdeepBviewingBsitBlameBrentBindeedBscifiBpaulBhearBfollowB	situationBleavesB
believableBcrimeBokayBpoorlyBbecameBpossiblyBlearnB	difficultBreadingB	sequencesBsuperbB	emotionalBnoteB	memorableBtruthBmeetsBdoctorBperiodBmeetBforcedBpremiseBcreditsBcheesyBaverageBcrewB	otherwiseBfeaturesBminuteBdanceBbeginB
interestedBwhomBpreviousBplusBquestionBthirdBtotalBbadlyBwesternBneededB
incrediblyBgayBstandBshameBromanceBoscarBopenBfootageBwriteBsoundsBpersonalBfairlyBbattleBunlessBseasonB
screenplayBquicklyBeffectBwritersBnorBjapaneseBbeautyBkeepsB
filmmakersBsettingBtowardsBimdbBamericaBislandBcommentBresultB	perfectlyBcreepyBcopyBappearBboxBmaleBdeBweirdBrealizeBpowerfulBfreeByorkBworkedBstageBhandsBsexualBuniqueBforwardBactedBplentyBmasterpieceBsocietyBleadingBbBadmitBlaughsB	followingB
backgroundBaskBfrontBcrazyB20BmarkBearlierBnatureBinsideBhotBbringsBrichBfireBspentBmeantBdumbBolderBdevelopmentBvariousB	directingBdramaticBlaBcoverBbusinessBmissingB70sBfailsBoutsideBairBapartBcreateBpayBdeservesB	portrayedBhardlyBwilliamBattemptsBplainB	politicalBjoeBremakeB	expectingBbillBwastedBreturnBstreetBmessBleeBagreeBpartyBbabyBtwistBmanagesBrecentlyBlargeBendedBmatchBjokeB
incredibleBzombieBunlikeBreasonsBwaterBcaughtBsuccessBmembersBoddBideasB	potentialBcartoonBcastingBbrothersBbreakB
girlfriendBslightlyBitalianBdreamBcauseBpresentBgermanBcopBpublicBescapeBtalentedBfamiliarBcuteBfightingBtellingBmarriedBholdBvisualBvillainBusesBcreatedBnudityBcleverBstateBgunBmadBpaceBconsideringBpureBneitherBtrainBmissedBwaitingBfurtherBdecidesBflatBdisneyBbiggestBsecretBvanBseesBdiedBspeakBlistB
convincingBtroubleBrateBlaughingBcomparedB
appreciateBformerBcreditBsadlyBamountBpopularBscienceBmovesByoungerBsuddenlyBproducedBfantasyBentirelyBtensionBimagesB	mentionedBeraBcollegeBchoiceBcompanyBfitBcommonBstoreB	portrayalBlanguageBwroteBfearBdepthBasideBaliveBsweetB	audiencesBscottB	pointlessBbandB7B	producersB
successfulBfilledBdancingBconsiderBbizarreBwerentBviolentBrecommendedBkillsBfollowsBofficeB12BrecentB
ultimatelyBlikesBintelligentB
impressiveBvalueBprojectBboredBmasterBsocialBdecideB	christmasBlongerBhairB
situationsBsickB15BspendBpatheticBamusingByeahBforceBfairBsurprisinglyB	questionsBawesomeBhonestlyBmeaningBcoldBboughtBconceptB	involvingB	effectiveBcenturyB8BleavingBcampBbarelyBsolidBsingingBpositiveBbooksBabilityBnormalBhumourBgeniusBbasicBanimatedBthanksBrevengeBprisonB
consideredBtouchBexcitingBcultureBaddedBrespectB	generallyBgarbageBexplainBvaluesBfailedBroadBchannelBrunsBfakeBadultBspoilersB
personallyBwestBstudioBstarringBcontrolBshowedBparkBcatBarmyBsoldiersBsittingBremainsBfocusB	chemistryBbrainB	somewhereB	literallyBimmediatelyBsouthBtrashB30BwalkBvampireBspiritBfrankBaccentBjimBtwistsBmoodBtripBbedBsceneryB
impossibleBchangedBshootingBfictionBthinksBpurposeBcharlesBtermsBsubtleBsilentBpicturesB
governmentB100BjaneBgladBblueBslasherBhonestBcomplexBjourneyBcharmingBbotherBsexyBnaturalBgangBdrugB
historicalBcatchBbenBlovesB	adventureBtasteBphotographyBlikelyBbeautifullyBstickBrareBpickBjonesBaspectBwinButterlyBmanagedBwonBchangesBthrownBchaseBwildBalienBtoughBgiantBnobodyB
disturbingBdetailsBcultBstandardBinnocentBghostBsupposeBlovelyBpiecesBlondonBharryBweekBtoneBslowlyBpainfulBnowhereBdoorB	cinematicBunbelievableBsamBindianBterrificBsurelyBnakedBcomputerBrideBplanetBemotionsB
conclusionB
adaptationBshootBputsBpresenceB	detectiveB	availableBcomediesBmaryBknowingBdateB
appearanceBtouchingBsteveBpassBmilitaryBissuesBthusBmakersB
impressionBchrisBlawBexcuseBmagicB	narrativeBdisappointingBlandBcriticsBbesidesBfestivalBselfBfinishB
constantlyBcharlieBbriefBwalkingBsentB9BplacesBminorBheyBedgeBbottomBnamesBfeelingsBthemesBplanBclubBcentralBattackB6B
mysteriousB	confusingBcontainsBtrackBthankBsoulB	presentedBsmartBappealBstudentsBstandsBoutstandingBbuildingB	boyfriendB	laughableBfullyB	everybodyBaspectsBparisBexpectationsBcostumesBhopingBfilmingBtiredBspeakingBofferBequallyBvictimBmainlyBdadBproducerBconfusedBzombiesByoudBintendedBforeverBhelpsBlaughedBshipBfascinatingBnoticeBmakeupBdisappointmentB	seeminglyBflicksBcharmBcopsBchristopherBfindingBanswerBthrowBactsBclimaxBbornBbondBhurtB	exceptionBstunningBincludeBmansBfreshBfellBontoBraceBhospitalBgemBawardBmistakeBlocationBdirtyBbossBlivedBlikableBholesBemotionBsupportBsuggestBopportunityBbarB	impressedB	happeningBcryBloudBheavyBpullBgradeBtimebrBplaneBpainBjusticeBtwiceBmannerBdiesB
supposedlyBmarriageBbatmanBaddsBimageBdriveB	developedBapproachBappearedBvictimsBpickedBspoilerBrandomBoperaBinformationBfallingBdrugsBnewsBmartinBabsoluteBstudentBdeliversBcontentB	thereforeBrussianBratedBmixBmillionBkeyBbruceBteenBdreamsBdetailBadultsBstewartBprovidesBlightingBgreenBfacesBedBmoralBledBfunniestB
collectionBmomBagentBrayBhasntBputtingBcolorBfellowB
compellingBlacksBremindedBwoodsBtrailerBshockBmachineBintenseBaheadB	wonderingBpornBiiBfollowedBextremeBmerelyB
differenceB
filmmakingBbillyBimaginationBmsBclichéBwowBuglyBteenageBrentedBpaidBbecomingBradioBmotionB90BloverBtonyBprovesBoffersBliesBangryBdamnBsuicideBshockingBcaptainB	scientistBjasonBcreatureB	americansBstuckBshareBimpactBgorgeousBfolksBsecondsBartisticBsixBnegativeB	christianBbeatBaffairBnastyBsummerBgamesBdyingBcreativeBteacherB	standardsBsmithBkevinBeventBaccidentBwarsBpopB	favouriteBcarryBallowedB	actressesBrelationshipsBmediocreBhotelBanimalsBwoodenBshouldntBepicBelementBdescribeBcountBbeganBspotBsoldierBloseBsuperBareaBgraceBcgiB
attractiveBtortureBsearchBpersonalityBflyingBcompareBmemberBflawsB	childhoodBanymoreBtragicBrarelyBpassionB	forgottenBstruggleBhelpedBstephenBcontinueB
thoroughlyB	redeemingBmovedBquickBinspiredBturningBreadyBhiddenBdeliverBvsBprovideBstatesBprocessBhenryBadditionBphoneBmonstersBgroundBaskedBafraidBactionsBtragedyBfashionBdrawnBdoubleBclichésBwearingBextraBblameBmurdersBlatterBheldB	filmmakerBreturnsB
commentaryBworthyBfoodBdirectBwillingB
whatsoeverB	religiousBlimitedBnumbersBlistenBsystemBstationBieBdisasterBserialBphysicalBjoyBrealizedBmartialBindependentBholdsBexplanationBasksBwallBtodaysBsleepBprofessionalBindustryBchurchBnoirBcallsBallowBringBbloodyB
surprisingBsightBsucksBryanBrapeBjrBheroesB
introducedBcomedicBclothesBbitsBartsB	necessaryBkellyBwilliamsBqueenBlordB
friendshipBfoxBacceptB	watchableBwarningBwantingBdesertBsevenB
intriguingBfatB	desperateBchineseBaccurateBengagingBunusualBtrustBmoonBbrianBthinBincludesBanywhereBjudgeBunknownBtheatreBsatBtimBtearsBscaredBmemoryBdeserveBstepBplotsBgoldBunderstandingBremindsBcarsBcapturedBsuperiorBpacingBthembrB	dangerousBanybodyBsistersBenergyBdonBsomebodyBheadsBdesignB	accordingBofficerBbrutalBproveBpriceBlooseBkeepingB	apartmentBwhilstBvisionBoppositeBmetBlovingBjeanB60sBnormallyBmemoriesBhumanityBconstantBwonderfullyBunnecessaryBsuspectBseaBprivateBmineBdiscoverBawareBthomasBmonthsBmissionBleaderBgrowingBeddieBboardB	technicalB
referencesB	lowbudgetBdrivingBbuildBpleasureBnoticedBdannyBstockBlegendBlearnedB	knowledgeBhumansBgoldenBfinestBdeeplyBarthurBvillainsBtreatBintelligenceBapparentBanimalBcrappyB	locationsBjohnnyBhowardBgagsBfightsBbrokenBacademyBwittyBvhsBtreatedBseanBpilotBhorseBhatedBdesireBdealingBcriminalB50BnicelyBcurrentBmikeBloversBjerryBhadntBwindBuncleBrubbishBpowersBmouthBmorningBissueBgunsBeatB
connectionBjacksonBgrandB	hitchcockBskipBordinaryBinsaneBcreatingBmagnificentBgottenBcastleBbelowB
remarkableBplayersBhitsBgenuineBforcesBfaithBrecordBnumerousBlackingB	communityBterriblyBforeignBbrownBabsurdBmanageBkindaBfordBdealsBrealismBquietBplayerBmentalBmediaBfinishedBresponsibleBlossBincludedBconflictBwheneverBreachBpairB
originallyBmrsBhopesBheresBzeroBstartingBpulledBinstanceBdavisBadamB	teenagersBcutsBcaptureBunfunnyBrollBrobinB	explainedBeuropeanBessentiallyBbehaviorB1010BregularBartistBwinningBunableBtapeBsmileBshopBtowardBlengthBjenniferBalBthisbrBluckyB	genuinelyB
generationBcrossBbiggerBtwentyBstealBsingerBsavedB	reviewersB	naturallyBeffortsBdressedBdreadfulBtexasBfranklyBfieldBcBbrightBwoodBstoneBrelateB	presidentBpostBnationalBladiesBgaryB	featuringBwindowBtaylorBoccasionallyBmilesBfootballBexistBalanB
rememberedBnativeBmaxBfeetBfailBcuriousBanneBsurviveBsoapBskillsBrevealedBnonsenseB	continuesB
underratedBsheerB
irritatingBhumorousBheroineBheckBdogsBdeservedBbuddyBadviceBweveBscreamBreceivedBkillersBhigherB
australianBvisitBsignBriverBpsychologicalBprovidedBpriestBpretentiousBmurderedBcornyBbobBboatBallenBwitchBfloorBblindBblandBworldsBultimateBpartnerBpageBinternationalBemptyBrangeBchooseBattitudeButterBtravelBsavingBprotagonistBfameB	concernedB40BstereotypesBgrowBdatedBstreetsBcapableByouthBtheyveBpeoplesBmeetingBjumpB	contrivedBtalentsB	meanwhileBheavenBfinaleBenglandBjimmyBgraphicB
flashbacksB
comparisonBstudyBspanishBrobB	nightmareBfateB	creaturesBstrengthBmixedBgrewBfathersBevidenceBclassicsBsuckedBperspectiveBericB
commercialBbreaksBportrayBpassedBownerBhunterBdrunkBdecadeBdBwideBunrealisticBnickBmooreBlessonBkickB
individualBcontextBwalksB
unexpectedBsingBgoryBsellBsatireBreactionBformulaB
discoveredBcreatesBvillageBsiteBsakeBidentityBfillBfavorBdebutBagesBopensBjeffBinvolvesBendlessBdecisionBallbrBshallowBrescueBfamiliesB	discoversBanthonyBweddingBvoteBrecallBfaultB	describedBallowsBvisualsBreliefBprogramBmajorityBgonnaBawkwardBluckBemotionallyBeditedBdevelopBcrashBcombinationBteenagerBranBparodyBlogicBjoanBhimbrBfailureBchickBbombBaskingBaliensBresultsBlevelsBstronglyBvisuallyBshakespeareBpromiseBonebrBmebrBdouglasBcashBcameoBcableBannB	treatmentB	screamingBrulesBneverthelessBspectacularBproperBframeBcontrastBviewedBremainBlosingB
disgustingB	recognizeBprovedBmattBjulieBcostBbringingBblondeBbarbaraBballB1950sBtypesBsuitBspeechBreviewerBcrowdBbrilliantlyBstandingBobsessedBhorriblyB	hopefullyBexcitedBenterBcenterBbelievesBwellbrBtestBsuddenBspoilBportraysBjapanBinsultBgangsterBdragB	deliveredB
delightfulBbeachBasianBukBtinyBsympatheticBsequelsBkongB	halloweenBassumeB90sBstevenB	slapstickBoverlyBjackieBfreedomBfredBeuropeBeatingBwalkedBresearchBiceBfactsBancientBakaBsheriffBpleasantBnorthBlewisBexperiencedBalexBunitedBdestroyBauthorBwiseBweeksBseatBlosesBdanBstorybrBdubbedBcoreBalbertBtendBskyB
portrayingB	painfullyBlargelyBholdingBflyBdollarsBconversationBcausedBvehicleBuniverseBthatbrBtableBharrisBfranceBfactorBentertainedBdemonsBchosenBbmovieBbetBwitnessBwerewolfB
theatricalBsaturdayBroundBrentalBproductBpityBbuiltBandyBaliceBvampiresBthoughtsBreligionBproduceBmodelBlearnsBfleshBbodiesBassBtraditionalBtheatersBnetworkBmaskBlousyBdickBcostsBtrekBtediousBlouisBlakeBhearingBclueBcleanBteensBtalksBscareBprinceBmattersBlesbianBlaughterBcanadianBrB
technologyBmarryBjewishBjesusBhuntBextrasBcorrectBannaBanimeBwayneB	sufferingBshockedBriseBholmesB	existenceB	committedB1970sBveteranBsurfaceB	subtitlesBstoppedBhauntingBhalfwayB
gratuitousBfBdriverBawardsBwitBpracticallyBplansB	performedBpaperBcartoonsB	universalBtargetBspendsBkeatonBdarknessBblowB
amateurishBtillBtarzanBcandyBbearBanglesB810B	virtuallyBstudiosBsegmentBroseB
propagandaBhallBgordonBgermanyB
depressingBbbcBbankBsoftBsendBhandsomeBexecutedBembarrassingBangelBsuffersBstealsBspeaksBroutineBpresentsBlarryBexploitationBeveningBenemyBdudeBbroadwayB50sBvoicesBmorganBjungleBappropriateBversionsBpoliticsB	nominatedBirishBgeneBfitsBdevilBdepictedBcloserBcallingBsourceBsafeBdegreeBsharpBnecessarilyB	influenceB
excitementBdeathsBclaimsBcircumstancesBidiotB	daughtersBchiefBcaresBasleepBsupernaturalB
relativelyBregretBlynchBdropBconvinceBcontemporaryBunfortunateBserviceBcostumeBchoseBtwistedBmountainBhauntedBfeaturedB	childrensBvietnamB	surprisesBspeedBsouthernBrealizesB	promisingBlatestBharshBextraordinaryB	encounterBdryB	downrightB
departmentBweekendBtheoryBsurrealBskinBservesBroyBhideBeastBdeanB11BwarmB	substanceBwearBscaleBrobertsBnurseBlowerBcruelBwilsonBsympathyBrobotBpraiseBpeaceBfoolBclaimBbreakingBafricaBaccentsBvarietyBsonsBsirB
satisfyingBremotelyBpatrickBmindsBkissBjosephBhillBhangingB	elizabethBdrawB
thankfullyBsBpsychoBparkerBmovementBfridayBdonaldBamateurB710B
worthwhileBprimeBhitlerBclichédBbrooksBbelievedB	appealingBaccidentallyBterrorBstereotypicalBruinedB	melodramaBkimB	highlightBhandledB1980sB
previouslyBmexicanBforthBdennisBcapturesBcageBandorB	amazinglyB	structureBstolenBrogerB	regardingB
refreshingBpreparedB
overthetopB	favoritesBexactBofferedBgrantedBexperiencesBdrivenBdisplayBdeeperBcryingBafricanBwesternsBtightB	qualitiesBprincessBpacedBmagicalB	legendaryBhiredBgrittyBunlikelyBsuspensefulBsummaryBrepeatedBpreferBmickeyBlearningB	interviewBdirectlyBdeadlyBdangerBcolorsBweaponsBtrappedBstorytellingBstayedBseasonsB
reputationBquirkyB
mainstreamBfocusesBcoveredB
continuityBaintB
washingtonBvictorBtouchesBsportsBsortsBsimonBrightsBreporterBproudBpriorBnaiveB	flashbackB	destroyedB	depictionBcriticalBbotheredB13BtechnicallyBquestBproductionsBkateBherebrBguiltyBgrownBcuttingB	convincedBwalterBurbanBtrilogyBsignificantBraisedBpullsBmarketBinsightBcurseB
californiaB
adventuresBwaybrBscaresBripBmassiveBforgotBforestBexpressBdeviceBabuseB25BturkeyBtruckBsarahBruleBrentingBmildlyBmassacreBlonelyBlightsBjBimageryBflowBendbrBcouldveBalrightBwinnerBtrainingBspiteBsectionBpositionB	offensiveB
occasionalBdrewBtedBruinBkindsBjailB
interviewsBinnerBinitialBfiguredBexplainsBedwardBchaplinBseekBscenarioBeroticBchoicesBshortsBseagalBpathBlaneBgraveBfrighteningBforgettableBfootBcategoryBandersonBmatureB	listeningBisbrBamazedB	abandonedBwelcomeBripoffBrevealBhedBgreaterBfacialBeffectivelyBcodeBchinaBcampyBblownBbirthBbeliefB	statementBsoundedBroughB	narrationBclosingBblockbusterB	afternoonBrequiredBgoofyBdrinkingBchangingB2001BwriterdirectorBshadowBsecurityB	professorBoutbrBjoinBfocusedBeightBbusBaccountBviaBpileBlifetimeBindieBgruesomeB
everywhereBcombinedBbaseballBangelsB
understoodBthrowingBtaskBsunB	sensitiveBprotagonistsBnuclearBnonethelessBmetalBmereBheavilyB	assistantBstrangerBservedBrainBlieBkaneBeverydayBdozenBcarriedB	atrociousBarrivesBaddingBvonBthrowsBrevealsBreminiscentBpurelyBlawyerBdesignedBcomplicatedBcarriesB
attemptingBwhoeverBwarnedBuBstatusB	screeningBrollingBoriginalityB	initiallyBdesperatelyBcolumboBcivilBchuckBusaBserveBpatientBonbrBineptBgreekB	criticismBtouchedBsidesB	obnoxiousBmultipleBintellectualBfalseB	executionBenjoyingBdressBchanBboreBundergroundBspoofBrevolvesBratingsBhatBfareBdrivesBdanielBsufferBronBprintBpregnantBhandleBguardBgrantB
expressionBexamplesB	entertainB	disbeliefBdinnerBartistsBarmsBamongstBwinsB	strangelyBstBringsB	referenceBracismBdemonBchargeBcellBbuyingBangleBwouldveBtalesBstaysBremoteBproperlyBnudeBjunkBjuliaBhelenBfiguresBbreathtakingBwearsBsleepingBscriptsBracistBmentallyBjohnsonBgoodbrBfriendlyBformatBfishBdailyBbugsBbraveBviewsBstormBretardedBmichelleBleagueBguessingBfortunatelyBexpressionsBbarryBagainbrBwellesBvacationBtimingBteethBsucceedsBmurdererBhelpingBdollarBchillingBbelovedBbasisBsundayB
strugglingBstarredB
scientistsBrelatedBplacedBmistakesBintroductionBhardyBcausesBbreathBstealingBpassingBnonexistentBdragonBculturalBcasesBblahBappreciatedBwoodyB	stupidityBsinisterBrussellBpayingB
miniseriesBlifebrBbeastBangerBuninterestingBtommyBsusanBsumBperformBnotableBmurphyBmothersBlukeBjobsBindiaBhongBflightBdrinkBconsistsB	bollywoodB110BskillBsitcomBsinatraBreplacedBlloydBinspirationBhenceBdecadesBcontactBbettyBacceptedB310BtopicBpaintBignoreBfunnierBdeliveryBcrudeB	criminalsBanswersB45BsubplotBscreenwriterB
regardlessBoBenvironmentB
determinedBcomicalBunconvincingBtreasureBtenseBpunchBnaziBhundredBextentBdescriptionBcredibleBcontroversialBunionBriskBhintBguestBgreatlyBfourthB	fictionalBfbiBfabulousBcousinBcourtBbaseB410BwalkerBtermBoliverBmedicalBlovableBlackedBfuBflawedBfaithfulBexistsBconveyBconcertBcomedianB910BweaponBsuckB	ludicrousBfallenB
experimentBdelightB	countriesB1930sBxBsupermanBsanBmariaBlessonsBholeBghostsBentryBembarrassedBclarkBtitlesBswordBstylishBsantaB
revolutionBproofBpicksBlazyBhorrificBgodsBegBcontainBvideosBregardBprotectBpoignantBleBjayBitalyBcooperBbalanceBworryBwolfBstepsBsettingsBraiseBopenedBletterB	innocenceB	challengeB	australiaBattackedB	appearingBvincentBsuggestsBneedlessBmadnessBhoodBgasB
frequentlyB	franchiseBexpertBdisagreeBcowboyBcaringBairedBwarnerBtuneBsuccessfullyBsoldBlyingBhangBgrossBsleazyBseparateBnBmindlessBlauraBhonorBgraphicsBeastwoodBblairBashamedBwwiiBwealthyBthiefB	techniqueBspyBrippedBquoteBhoffmanB	advantageBuselessBupsetB	thousandsBtherebrBsallyBrowBrivalBnovelsBnightsBmillerBhidingB	happinessBflawBescapesBcynicalBcredibilityBcarryingBattacksBachieveBwastingBsurroundingBsufferedBsocalledB	sexualityBrawBmarieBjonBironicBinterpretationB	instantlyBestablishedBdaveBcrimesBalbeitB	obsessionBmst3kBmastersBlettingBinternetBdraculaB	catherineBtrialB	strugglesBstopsBstomachBspecificBrepeatBpsBnavyBjonathanBidioticBguideBglimpseBcreationBclipsBchasingBchairBbobbyB14BstuntsBsilenceBshedBreynoldsBmgmB	marvelousBjessicaBhostBfarmBexceptionalBequalBdareB	confusionBcoachBbrokeBboundBwhereasBtrickBtreeBlegsBkennedyBdramasBcraftedBcameronBbrieflyB	traditionBstanB	searchingBrushBridingBpresentationBphilipBnineBnazisBmusicalsBmitchellBmexicoBkungBunforgettableBtoyBspotsBshutBlaurelBidentifyBdevelopsBdawnB	competentBcaineBbirthdayBbelongsBarmBalasBtornBsubplotsBstuntBremindBplasticB
performersBozBnowadaysBmobB
meaningfulBlisaBkarenBjumpsBdearBcheeseB	authenticBwarnBtrapBthousandBsharkBshallBseekingBmillionsBmatrixBmanagerBkoreanBhappilyB	essentialBcorruptBbadbrBappearancesBagedBtroubledB
sutherlandBspokenBparBgrimBemilyBcrisisBcourageBconsequencesB1960sBwomansBstringBslightBshowerBninjaBnationBlosBknifeBhaBgagBcornerBburtB
uninspiredB	thrillersBsendsB
physicallyBpetBpackBmidnightBchasesBprofoundBnoseBmelodramaticBgrippingBcomicsBbradBblowsBbeingsBbagB
techniquesBsovietBsavesBrequiresBrapedBnotedBironyB	invisibleB	intensityBgottaB	conditionBcheckingBburnsBannoyedBtheydBstruckBshinesBobjectBmonkeyBmirrorB
importanceBflashB	carefullyBadB2005BtriteBsnowB
repeatedlyBrefusesBportraitBpersonalitiesBoddlyBnonBmelBhookedBfxBdislikeBbucksBbasementBzoneBwishesBtricksBteachBstanwyckBsilverBshapeBsetupB	notoriousBmoviesbrBhusbandsBhomageBhillsBdvdsBcatsB	attemptedBarnoldBwickedBwakeB	typicallyB
revelationBralphBhorsesBholidayBhalBdoctorsB	cardboardB
cameraworkBbusyBupbrBtributeBtonsBtextBsuitsBsucceedBstretchBstoodBspoiledB	returningB	ourselvesBmouseBmiscastB
intentionsBinfamousB
inevitableBhuntingBhealthBdigBdianeBdialogsBconcernsBbatBandrewsBtiedBtalkedBshortlyBshadowsBpointedBpitchBoilBguiltBfacedBclintBcaveBaforementionedB18BuncomfortableBtourB	thrillingBstrikingBsnakesBshootsBsentimentalB
reasonableBpushBpreciousBpackedBneatBmassB	kidnappedBjerkBinteractionBimaginativeBgainBfulciBdealtB	connectedB
attractionB	attractedB80B	revealingBpulpBlesserBlaidBkenBidiotsBhundredsBheatBhanksBglassBensembleBdragsBcommitBauntBadaptedBvictoriaBtoiletB	spiritualB	remainingBrelevantBpoolBloserBheartsBhboBhandfulBgermansBfreemanBfifteenBcompetitionBcolorfulB
admittedlyBweightBtheyllBridBrachelBouterB	onelinersBmeatBloadBjamieBindividualsB
incoherentBengagedBcureB	continuedB	broadcastBbridgeBachievedB40sB
tremendousBtravelsBspendingBsolveBranksBpuppetBpullingBpatBmatthauBintentBincidentBhopedBfilmsbrBdraggedBdestructionBcommercialsBcatholicB	ambitiousB17BwarriorBrushedB
representsBpersonsB
outrageousBopposedBnormanBmonthB	miserablyBleslieBgutsBgothicBessenceBcreatorsBcloselyBcabinBbrandBboredomBbladeBbitterBaccusedByoubrBwatersBvirusBsubBstatedBrogersBovercomeBlockedBjeremyBincreasinglyBimportantlyBforgiveBfairyB	enjoymentB	discoveryBcausingBbeatenBbattlesB
acceptableBtallBswedishBsoulsBsellingBprideBpinkBnotablyBmagazineBloneB	inspectorBindiansBgloryB	expensiveBcouplesB
concerningBcloseupsB	celluloidBadmireB20thBthirtyBsplitBsophisticatedB	scarecrowBreallifeBpersonaB
perfectionBmediumBlionBkicksB
horrendousB
highlightsB
explosionsBeasierBdubbingBdistantB	countlessBbritainBatmosphericBwannaBsizeBresponseBpovertyBpianoBoverdoneBjumpingBignoredBhireB	graduallyBexerciseBelderlyBburiedB	alexanderBwaxBsomeonesBsmokeBsingsBsexuallyB
resolutionB
repetitiveBpreventBperBmarksBgrandfatherB
frustratedBeerieBdistanceBconversationsB
conspiracyBclaireBburningB
associatedBunintentionallyB
surroundedBshyBrocksBrealiseBlindaB	godfatherBdemandsB	complaintB	appallingBallowingB2006B2000BtoobrBtimelessB	territoryBsuspectsB
subsequentBsinBsidneyBsandraBposterBnancyBlugosiBgrowsBfreddyBetB
disjointedBchancesBcameosBbetterbrBagentsBstaffBsoleBscarlettBpushedB
presumablyBpittBoccurBnotchBneighborhoodBminimalBmidBmeaninglessBhorrorsBfiredBexBeveBdisplaysBcriedBcharacterizationBbeatsBarriveBwatchesBtrailBstoleB
scientificB
performingBnobleBluckilyBlibraryBhardcoreBgBfancyBescapedBdroppedBdocumentariesB	curiosityBcorpseBcarlBbuttonBbirdBbellBbeerB	abilitiesBwonderedBwaveBsuperblyBspookyBspareBpickingBnearbyBkhanBhypeBherbrBdukeB
discussionBdaringBairportB	worthlessBtradeBstrikeBstoogesBsnakeBsidekickBsadisticB	providingBpopcornB
pleasantlyBkudosBjealousBgiftBflawlessBfittingBfingerBburnBbibleBargueBachievementBvastB
universityBtrioB	symbolismBstrongerBstayingBspecificallyBreturnedBremovedB
redemptionBmildBlargerBinvestigationBfortuneBentersBdrawsBdoorsBcookBcluesB
brillianceBbrazilBargumentBaimedBaffectedB30sB	wrestlingBwallaceB
spoilersbrBshoesB
overactingBoscarsBnoiseBmuseumBimprovedBheistBfosterB	elsewhereBcaredBbuckBbrideBthrewBthreatBswearBstrikesBsecretsBsecondlyBsavageBpowellBphotographedBoutcomeBnotesB
motivationBmeritBlooselyBimplausibleBhittingBhamletB
encountersBdefiniteBdancerBcrackBconnectBciaBchicagoBcharismaBburnedBbareBattachedBarrestedBwondersBtunesBthrillsBsatanB
restaurantBreceiveBpunkBpredatorBpossibilityBmustseeBmessagesBlikingBjuvenileBjakeB	intentionB	insultingBgoalBflynnBemmaBconneryBcolourBcardBaudioBangelesBadviseB1stBwBstiffB	prisonersBpieBopinionsBnedBmenacingBlouBirelandBhollyBgroupsB	explosionBdutyB	currentlyBanticsB
altogetherByellowBwallsBstrictlyBspikeBridiculouslyBrickBkingsBheroicBhammerBgrayBextendedBexploreBevidentB	dedicatedBcitizenB
cinderellaBcharismaticBbleakBanywaysB	terroristB
terrifyingBstripBshipsBoceanBoccursBneilB	landscapeBianBfurthermoreBfarceB	endearingB	dinosaursBdetailedBcombatBcarreyBamandaB24BwindsBwardBvagueB	travelingBtorturedBtBsurvivalBsegmentsBrelativeBrecognitionB
reasonablyBoffendedBneckBmoralityBlistedBglennBfactoryBemBdiscBdirectorialB
deliveringBchristBcardsBbroadBbeatingBareasBangelaBseenbrBscreamsBrussiaBpoliticallyBpleasedBplanningBmatthewBkillingsB
ironicallyBhipBgenresBgenericBgardenB
explainingBdrivelB
depressionBdepictsBbuttBbreastsBbackdropBandrewBalltimeBagingBaccomplishedB
unpleasantBtranslationB	tarantinoB	reactionsBoughtBofficersBmissesBlawrenceBhuhBhorridBheadedBbulletsBbuildsBblacksBstagedBspinBpreviewBpacinoBordersBneighborBkickedBhatredBfuneralBfrancisBexaggeratedBdorothyBdaBcomplainBcharactersbrBchainBcarolBcanadaBcamerasBassassinB
afterwardsBworriedBrootBreducedBrankBrandyBprojectsBproceedingsBpornoB
philosophyBinvolveB	intriguedB	inspiringBdiseaseBdigitalBdevotedBcontraryBcomfortableBcoleBcareersBbergmanBbandsBworkbrBvalleyBtearBsubjectsBsticksBsmokingBscriptedBpressBlucasBjustinBinstallmentBfolkBfingersBfearsB	eccentricBcraftB	carpenterBbuddiesBbrainsB	strangersBshiningB	resemblesBreachedB	possessedB	murderousBmenaceBmB	disturbedBdevoidBcoastB	classicalBbrunoBblockBairplaneBadequateBaccompaniedBwebBsolelyB	slightestBsignsB
recognizedBrageBracialB	psychoticB	principalBplannedBholyB
hitchcocksBgreyBgoodnessBfrankensteinBexplicitB	elaborateBeightiesBconstructedB	commentedBbottleBadamsB210B0BupperBunintentionalBtrailersBthumbsB
terroristsB
punishmentB	producingBobscureBmakerBlegBitllBhudsonBhonestyBfrankieBformsB	everyonesBdynamicBduoBdireBcarterBbootB	believingB16BvirginBunwatchableBthreateningBthickBterryBsuperficialBsubtletyBstreepBstanleyBsadnessBruinsB	primarilyBpretendBmummyBlogicalBkitchenBinvolvementBimaginedBhousesBhomelessBfooledBfondaBfatalBdollB	describesBcoversBclumsyBclothingBchannelsBborderBbenefitBversusB	secretaryBrobberyBpushingB
prostituteBprisonerBpantsBpaintingB	overratedB
mentioningB	manhattanBlBkiddingBjudgingBjesseBinaneBgenerousB	gangstersBfieldsBexistedBdrunkenB	decisionsBcrucialBcopiesBconventionalBcliffBchaosBcampbellBbluesBbearsBarrogantB1980B	yesterdayBwineBwillisBwannabeBupsBtitanicB
simplisticBruthlessBruralBromanB	representBrecordedB
populationBpearlBofficialBofferingBoccurredBnarratorBmurrayBmodelsB	masterfulBliberalBhookBgentleBexposedBdozensB
creativityB	comparingBcoherentBbeneathBannieBaffordBadvanceB911BwatchbrBtracksBtitledB	survivorsBshowbrBsentenceBroomsBrocketBphotographerBpassesB	newspaperBmansionBlimitsBironBharderBhBfunnybrB	forbiddenBeditorBdeliberatelyBcruiseBcatchesBcalmBbushBburtonB	buildingsBbathroomBalikeBabsenceB2ndB2004BworldbrBundoubtedlyBsplendidBsloppyBreunionBmotivesBmistakenBmarthaBlightheartedB	lifestyleBjazzBinvestigateB
innovativeBinbrBidealBheartwarmingBgialloBfreakBestateBenjoysBeatenBbusterBbrandoBbakerBalfredBunfoldsBtaughtB
stereotypeBshellBreachesBpaysB
overlookedBnotionBmaintainBlyricsBlincolnBkarateBjoinedBisolatedBintrigueB
hystericalBfailingBerrorsBdustB	depressedBdarkerBcringeBcountrysideB
convolutedBconsistentlyBchildishBblatantBblankBbinB1940sBviciousBunbelievablyB
unbearableBteachingBsynopsisBswitchBselfishBruthBrolledBresemblanceBreportB	renditionB	provokingBportionBpartlyBonscreenBnicoleB	mountainsBmontageBmixtureBmadonnaBloyalBlipsBillegalBiiiBhandedBfrancoBfliesBfighterBevaBeBdistractingBcheatingBboldBblendBbetteBamyBworeB
unoriginalBresponsibilityBmyersBmethodBmarioB
homosexualBfocusingBexoticBernestBemphasisBembarrassmentBedgarBdoomedBdammeBcriticB	companionBclosedBchestBcaptivatingBapesB70B2002BwatsonB
thoughtfulBscreenbrB
pretendingBpoetryBnonstopB	miserableB	madefortvBjuniorBenormousBeasternBearsBdocBdiamondB	dialoguesBcraigBbiteBamountsBabcB3dBwetBtwinsBtiesBsurvivedBstinkerBsincereB	satisfiedBritaBpropsBmarchBlucyBkurtBhighestBguessedBfixB	executiveBconvincinglyB	containedBcoffeeB	climacticBbonusBblondBwrappedBwoundedBtonightBtongueBtimesbrBtieBthroatBtameBtadBsitsBscenebrBpracticeBpotentiallyB	performerB
passionateB	movementsBjustifyB	inventiveBimpressBhatesBgrandmotherBfeastBexploredBcupBcommandBcarrieBblowingBaliBticketBteaBstellarBsmallerBslickBshineB	sacrificeBreliesBreedBpurchaseBpromBprimaryB	plausibleBparentBoverwhelmingB	musiciansBlemmonBlabBknightBhollowBhistoricallyBdollsB	displayedBdiscussBdifferencesBcontractB
consistentBclosetBadorableB60B35B2003B1999BwreckBuserBtylerBtwinBtreesBtrainedBslapB	similarlyBsimilaritiesBrubberBrisingB
popularityBnamelyBmileBmeasureBlayB
introducesBinstantB
influencedB	educationBearnedBdentistBchasedB
cassavetesBbridgesBbelongBalternativeBtracyBtenderB	succeededBstylesBsolutionB	recordingBreactBplantBowenBoddsBnorrisBmorebrBloadsBlandsB
hollywoodsBhilariouslyBgraspBenemiesBempireBdougBdinosaurBderekBdatingBcircleBcagneyBbarneyBagreesBwishedBtwilightBturnerBtromaBtransformationBsteelBsplatterBrunnerBrottenBrapBpremiereBphilBpennBmorrisBmargaretBlinkB
journalistBintimateBfrustratingBdescentBcusackBcurtisBcdBbathBbangBamericasBwasbrBwackyB	voiceoverBvirginiaBvegasBurgeBtreatsBtoddBthrillBswimmingBstiltedB	spielbergB	secondaryB	relationsBrangerBpsychiatristBplagueBmateBmasonBloadedBknockBjetBgrudgeBgloverBfondBfloatingB	financialBfacingBetcbrBeditionB	conceivedBclownBbuffsBbeliefsB	alongsideBaidB	witnessedBwinterBvividB
unsettlingB
underlyingBtendsB	superheroBscoresBschemeBpropertyBpossibilitiesBpeakBnelsonBkarloffBhurtsBgrabBglassesBfrequentBfloridaBellenBeaseBdamageB	corporateBbuffBbrutallyBborrowedB
apocalypseBwidowBvaluableBunevenB	suggestedBstevensBsixtiesB
reflectionBquinnBpuppetsBpoeticBpaintedBnervousBmoodyBmerylBjawsB	immenselyBhuntersB	franciscoBdignityBdeeBcontestBcomposedBclassesBchainsawBbollBavoidedBabysmalBwritesBwoundBweakestBunderstatedBunawareBsuitedBsuitableBspeciesBsoloBscopeBrevolutionaryB	realizingBrabbitBphantomBonlineB	neighborsBmotivationsBmaniacBlitB	introduceBingredientsBinferiorBhideousBharveyB	guaranteeBdropsBdesiredBconstructionBconsiderableBconBcinematographerB	charlotteBcentersBcarefulBbulletBawakeBarmedBappreciationBwalkenBthugsBteachesBtagBsullivanBstaringBspreadBspokeBshirtBshelfBshakeBscottishBsagaB	purchasedBpromisesBphilosophicalBmatchesBillnessBignorantBgloriousBfirstlyBexchangeB	equipmentBedgyBdrearyBdespairBagreedB3rdByaBworkersBwesBvirtualB	vengeanceBunitBtrashyBstinksBreflectBpursuitBplotbrB	nostalgiaB
nightmaresBjewsBimproveBhamiltonBguestsBeitherbrB
disappointB
conditionsBcombineBbronsonBboneBbeanBbatesBaffairsBadvertisingBadaptationsB1972BwingBviewingsBtwelveBtimothyBsheenBsettleBremainedBpromisedBprogressBparallelB	mysteriesBmonkeysBmarshallBmafiaBleonardB	laughablyBjoelB	illogicalBhumbleBheartbreakingB	formulaicBfaultsBdrawingBdimensionalB	depictingB
corruptionBcolinBcheckedBbumblingBblakeBbaldwinB13thBwebsiteBusefulBtroopsBtankBstraightforwardBsquareBspellBseeksBsafetyBrivetingB	resultingBresistBrefusedBpitifulBphraseBpagesB	operationBnotbrBnatalieBmundaneBmistressBmartyBintentionallyBfoughtBdivorceB	disappearBcrushBcostarBcomposerBchoreographyB	capturingB	behaviourBahBvaguelyB
underworldBtouristB	survivingBsungBsquadBsportB	senselessBpassableBpanicBmuchbrBmessedBmarsBkingdomB	integrityBfedB
enthusiasmBendureBendingsBelectricBdownhillBdestinyB	commanderBchicksBchapterB	celebrityBbehaveByellingBwornBwealthB
underwaterBteachersBrobbinsB	relativesBrebelBonedimensionalBoccasionB	nicholsonBmodeBmetaphorB	marketingB
literatureBinappropriateBhartBgateB
futuristicBdislikedBcrystalBborisBbebrB2007BwifesBwarrenBunfairBtoplessB	testamentBstarkBspiritsB	seventiesBsensesBscenesbrBrobotsBpurposesBpopsBnooneBmuteBmankindBleighBkirkBkennethBjewelBjeffreyBincomprehensibleBhitchBelegantBeagerBdoomB
developingBdefenseBdaviesBdancesBcusterBcoxBclosestBclaudeBcitizensBcinemasBcannonBbackgroundsBaweB	authorityB	attitudesBaffectBaccuracyBaboutbrB23BunhappyBtribeBtiresomeBteamsBtaxiBspringBsmoothBschoolsBsappyBrepresentedBrelationBquotesBproceedsBpostedBpatriciaBpatienceBpackageBoverlongBkeithB
helicopterBglobalBflopB	fantasiesBfamilysBeducationalBcleverlyBcivilizationBcancerBbourneBbirdsBbayBarrivedB	alcoholicB1990sBwisdomBthruB
suspiciousBroofBrockyBresortBpurpleBpunB	prejudiceBpartiesBoutfitB
lonelinessBleoB
irrelevantB	gentlemanBengageBearlBdemandBdefeatBdameBcolonelBclipBcheBcgBwithbrBwintersBwarmthBtriumphBtriangleB	subjectedBshowcaseBsevereBromeBrealisedBreachingBquestionableB	prominentBprepareBphonyBnowbrBmuppetsBmuppetBmayorB	householdBhomerBgregBgenerationsBdiscoveringBdirectsBclicheBbullBbetrayalBbernardBbannedBassaultBarguablyBabusedB
widescreenB	unlikableBturkishBsneakBsleazeB
simplicityBscreensB	preciselyB	objectiveB	nostalgicBmightyBmaidBmachinesBlatelyBharoldBexposureBexperimentsBdesperationBdefinedBconservativeB	comediansBcatchingBboB
artificialBabsentBwedBwagonBvisibleBunderstandableBtomorrowBthoughtprovokingBtastesBsueBsoccerBsmilingBshoutingBpsychicB	pricelessB
passengersBmoreoverBinvitedBincompetentBhopperB	holocaustBhintsBharrisonBhackBguardsBgiftedBfrustrationBfelixBfascinationBexperimentalBemperorBegyptianBegoB	conflictsBcomfortBchallengingB	biographyBwomensBwaitedBvisitingBveniceBtrafficB	trademarkBspaceyBsoundingBsoftcoreBronaldBrodBrenderedBremoveBreceivesBratBplightBperformsBpeoplebrBpalBpBnycBminimumBmanipulativeBlolBlivelyB	imitationB	grotesqueBgreedBgrahamBgabrielBfirmBfemalesBfasterB	fashionedBexplorationB
equivalentB	encourageBdiehardBdefendB
complexityBchildsBchessBchampionBatlantisBaprilBantonioB3000B1981B1968B	wellknownBvoicedBtownsBtempleBstatueBstandoutBspainB	slaughterBseverelyBrupertB
remarkablyBrelyBreleasesBquitBnonsensicalBmacyBknockedBjoshBinvasionBhitmanBexceptionallyBempathyBdivineBdisappearedBdamnedBcrawfordBballsBadvancedByearsbrBwheresBwarriorsBunfoldBstunnedB	strongestBspiritedBslaveBsarandonBrealmB
progressesB	policemanBpetersBmtvBmentionsBlesBhokeyB	heartfeltBgusBgarboBfemmeBdrinksBdistinctBdisneysBdancersBcrueltyBcountsB	companiesBchoreographedB
challengedB	carradineBcakeBbutlerBboomBbedroomBawhileBalbumBaidsB	affectionBwidelyBwavesBveinBtransformedBstressBstaticBsandBsamuelBretiredBremarksBregardedBreadsBreaderBraymondBponyoBmegBlustBlengthyBlegalBjuneB
horrifyingBhatsB	greatnessBflairBfeverB
expositionBelephantBdressesBdonnaBcrossingBcreditedBcreamB
containingBconfessBclaimedBcircusB	christinaBblewBassignedBappropriatelyBandreB
accuratelyBwishingBwhollyBvisitsBstrandedBsnlBsnipesBseriesbrB	resourcesBreplaceBregionBraisesBpressureBnicholasBnationsBminiBmaggieBlikewiseB
landscapesBkittyBinspireBinsanityBimprovementBhughBhippieBharmlessBfestB	excessiveBeatsBdysfunctionalB
disappearsBdaddyBcubaB	crocodileBcatchyBcastsB
basketballBanalysisBalcoholBabusiveB19thBtobrBtapBsuspendBstaleBskeletonBsimpsonsBshowdownBshirleyBshakespearesBrootsBreferredBpreyBpg13BpatientsBoffbrB	nightclubBnerdBnailBlosersBlandingB
lacklusterBjennyBitemsB	ignoranceBhustonBhopelessBharmBgemsBgandhiBfuriousBfoulBfillerB	expressedB
exceptionsBelvisBdoubtsB
destroyingBdesignsB
definitionBcueBcoincidenceBchoppyBchickenBbanalBawaybrBassassinationBwivesBtroublesBtravestyBtoysBsurvivorBshoulderBseldomBscrewedBrequireB	repeatingBownersBobjectsBnodBmoronicBmoralsBlowestBlocalsBlettersBlastedBkickingBinfectedB
inevitablyB	immediateBhelloBgodzillaB
fascinatedB
enterpriseBearBdroveBconanB	computersB
complaintsB	compelledBcluelessBcharacterbrBbusinessmanBaimBaaronBwongB
transitionBtransferBsuburbanB	spaghettiBsinkBsimultaneouslyBresembleBreelBquietlyBpolishBorderedB
nominationBmassesBlawsB	exploringB	evolutionBdatesBcopeBcitiesBcaryBbudBaussieBarrivalBagendaBworkerBventureBtopsBsymbolicBsufficeBshouldveBsharedBsandlerBroyalBrobinsonBrichardsBranchBprizeBparanoiaBopportunitiesBnutsBnewlyBmilkBmildredBmayhemBmarionBlockBinterestinglyB
inaccurateBhungryBhindiBhersBhankBguitarBfiBdomesticBdesiresB	correctlyBcoBawfullyBaustinBacidB75BwooBvBuweBtrackingBthompsonBstuartBstoresBsparkBsendingBsecretlyBsatisfyBremadeBreevesBrecycledBratesBracingB
psychologyBpettyBpaleBmuddledB
middleagedBmethodsBjudyBireneBinvitesBhughesB
hopelesslyBgreedyBfortyBensuesBelB
directionsB	dimensionB
describingBdarnB	completedB	communistBcarlosB	barrymoreBbargainBasylumB1996B1995BwretchedBwildlyBweaknessBvictoryBunexpectedlyB
togetherbrBtigerBthrilledB	tastelessBsubparBskitsB	sillinessBscreenwritersB	rochesterBremakesBpolishedBpoemBownsBoliviaB
obligatoryB
misleadingBmatchedBloyaltyBliteraryBlimitBliBkubrickBkeenBjadedBivBinsipidBheadingBfifthBfeelgoodBerrolBdutchBdeceasedBcorpsesBconcernBcareyBcapitalBcannibalBbrooklynBbeverlyBbamBauthorsBassumingB
additionalBabruptB1997B1993BwigB	wanderingB
vulnerableBvulgarBunseenB
unlikeableBtripeBtopnotchBsignificanceBsignedB	shouldersBshakingBsalmanBridesB	respectedB
positivelyBplayboyBperryBoverlookBorangeBmontyB	minutesbrBlenaBlatinBlaborBkissingBjoeyBjackassBinternalBinexplicablyB	inabilityBiconBhaplessBfrancesBfordsBfirmlyBfayBethanBdownbrBdevilsBdevicesBderangedBdemonicBdemiseB
continuingBcontinuallyB
conscienceBconfrontationB
compassionBcomedybrB
christiansBcenteredBcampaignBboxingBbiasedBbelaB	addictionBwillieBviceB	upliftingB	unrelatedBtrampBsupplyBstringsBstillerBsliceBsamanthaBrudeBrossBresidentBrecommendationBodysseyB	occasionsBnorthernBnativesBmodestBmarineBmadebrBkyleBjumpedBjordanB
insightfulBhungB	hackneyedBgypsyBgrainyBgloriaB	generatedBduckB
discussingBdesertedBdemonstratesBcrittersBcreatorBchoosesBcarmenBbravoBbonesBastonishingBapeBanyonesBaddressB1987B1979B1978BwizardB	witnessesB
suspensionBsunshineBsumsBsteadyBsimmonsBrompBriotBregardsBrefuseBotherbrBmonkBmeritsBlifelessBkapoorBinconsistentBhulkBgroundbreakingBgriffithBflashesBfeedBfavourBfalkBexorcistBdestroysBdanielsBcomplainingBcheatedBchargedBblastBberlinBBwrongbrBwellsBvotedBvoightBvelvetBunpredictableBthingbrBthievesBshortcomingsBshoddyBsciBsamuraiBrourkeBrespectableBrefersBpotBphotosBmollyBmixingBmessyBmasterpiecesBlilyBliftBlastingBheroinBhearsB
frightenedBeternalBentitledBdistributionB
disastrousBdirtBdevastatingBcrashesBcoupledB
controlledBconceptsBcommunicateB
carpentersBbunnyBbuffaloBbonnieBbesideBbabeBaustenBastaireB	alternateBalertBadoptedBaccountsB1970BwingsBunderstandsBtrendBtopicsBthreadBstandupB	speciallyB	selectionBsandyBrustyBrightbrBrelaxBreferBramboB
portrayalsBpoisonBplanesBplacebrBpiratesBphillipsBownedBoriginBnolanBmythB	murderingBmiracleBlocatedBjoinsBinvestigatingBingridBhestonBheightBgirlfriendsBfoolsBfiftyBeugeneBendingbrBdrakeBdifferentlyBdickensBdementedBdaybrBdanesBconsiderablyBconfrontBcloseupBchorusBbranaghBbewareBattorneyBattendBaspiringB	ambiguousBagencyB	acclaimedB1998B1000BwouldbeBvoyageBstumbledBsobrBrouteBrexBrestoredB
respectiveBrandomlyB	programmeB	primitiveBpreviewsBpaxtonBnewmanBnemesisBmiyazakiBminusBliftedBlasBhoBherosBhealthyBfiftiesBexaminationBenteredBdanaBchuckleBanywaybrB	amusementB
activitiesB200B1983ByepBwalshBwaitressBvisionsB
undercoverB	terrifiedBsyndromeBswimBsurgeryBstickingB	septemberBromeroB
richardsonBrepresentationBrecordsBprovocativeB
presentingBpredecessorBpostersBpokerBmiseryBministerBmarvelBlivB	interestsBinjuredBhootBfullerBforcingBfiringBfillingB	exquisiteBexploresBexpectsB	energeticBelsesBdurationBdawsonBcaricaturesBbootsBbmoviesBbilledB	attackingBamusedBaddictBaccessB
acceptanceB1990B1984ByoungestBwrapBundeadBtunnelBtowersBtorontoBsunnyBsubtlyB	startlingBsoonerBsimpsonBsidBrisesBrapidlyBqueensB	profanityBphotoB	partiallyBoutfitsBmichaelsB
mechanicalBmanbrBmailBlushBkayBjudgmentBjacksonsBinventedBinsistsBhistoricBheartedB
guaranteedBfunbrBframedBdreckBdifficultiesB	deservingBcrispBconradBcannesBbeattyBassumedBangstBalecB1989BwardrobeBvinceB
underneathBtriviaBtackyBsurfingB	supportedBsublimeBstumblesBsometimeBslimyB	sincerelyBshadesBrerunsBreadersBrandolphBraisingBquaidBpretendsBpoliticiansBpitBpgBnoisesBniroBnetBmitchumB	mentalityBlunchBlinersBlifesBlayersBlaurenBiqBhostageBhelpfulBhammyBgregoryBgrabsBgoodbyeBfrostBfistBerikaBemployedBdillonB
derivativeBcolumbiaBchoosingBcasualBbluntBauthoritiesBakshayBwellwrittenB
weaknessesBvastlyBunrealBuncutB	tolerableB	threatensBtechnicolorBsydneyBsurroundingsBshorterBshanghaiBservingBscriptbrBrootingB	residentsBpunchesB
psychopathBpromoteBpeculiarBpanBolBoffbeatBmontanaBmedicineBlastsBlanceBkathyBjulietBjacketB	identicalBhopkinsBhomosexualityBheightsBhayesBgoldbergBeventualB	establishBeliteBdroppingB	demandingBdelicateBdebateBcompeteBcommitsB
caricatureBbountyB	blatantlyBavidBattractB
astoundingB
advertisedB
accomplishBwakesBvisitedBusersB	uniformlyBtapedBtailB
sympathizeB	suspicionBsomedayBsnuffBsharingBsharesBrooneyBritualB	reluctantBpuzzleBprovingBprequelBpacificBoutingBorleansBmonkeesBlegacyBlabelBkansasBjealousyBjarringBhugelyBhkBhilarityBhamBgolfBgenderBgadgetBfogBflowerBflashyBfiancéBethnicBescapingBemergesBelevatorBdianaBcushingBconventionsB
confidenceBclaustrophobicBcheerBbutcherBbrosBbeholdB	befriendsBbarsBartsyBambitionBaltmanB
adolescentBaddictedBactiveB21stBwidmarkBtemptedB
suggestionBstudyingBstairsBseymourB	separatedBsellersBscotlandBsaleBropeBrifleB
restrainedBredeemB	receivingBraveBquentinBpushesB
professionBpredictBpossessBpigBpeteB
paranormalBparadiseBparadeB	paintingsBnormaBnieceBmuslimBminorityBmarriesBleonBlegendsBleesBisraelBglowingBgatesBfuryBfilthBeverbrBenhancedBearnB	disgustedBdisguiseB	dependingBdeletedBdaltonBcyborgBcubeBcormanB	confidentBcollectBclaimingBcaliberBbradyBballetBbabiesBattendedB
assignmentBadoreBactivityB	absurdityB99B95B1971B
wildernessBwarmingBwaltBvitalBvainBswingBsuitablyBstudiesB	stretchedB	strengthsBshawBrubyBrolebrBrangersBracesBpreachyBprayBpartnersBmindedBmeltingBmallBmachoBletdownB
kidnappingBinteractionsBintentionalBhydeBgeorgesBfreaksBfisherBfataleB	fastpacedB
farfetchedBexpenseB
engrossingB	endlesslyBdependsBdenzelBdebbieBconvenientlyBchampionshipBbrendaB1994B1945BwweB
werewolvesBwellmadeBvolumeBunexplainedBstonesBspeechesBsnowmanBshakyBselectedBseemingBritterBrippingBresolvedBrejectedBpreposterousBpayoffBpatternBmusicianBmotiveBlelandBkarlBjulyBinfoBinexplicableBherzogBfunctionB	fortunateBfoolishBfiresBexitB	evidentlyBdylanBdoseBdemonstrateBdefeatedBdanishBcrazedBcountyBcheekB
challengesBcelebrationBcbsBbuseyBbullockB	brutalityBauthenticityBafghanistanB2008B1976ByardBwireBwilderBwelldoneBwandersBtraitsBtrainsBtendencyBsurvivesB	spidermanBsmellBsingersBshiftBsaraBroommateBreignBreflectsBpenguinBnyBnicolasBmutantBmillionaireBmasksBmapBmalesBlovebrBlongingBkungfuBjulianB
indicationB
imaginableBhelplessBhayworthBhandlesBglobeBglanceB	explosiveBemailBeducatedBdowneyBdobrBdiazBdestinedBcornBconsiderationB	christineBchristianityBbtwBbrosnanBbitchBassureBarthouseBarrivingB
approachedBabrahamByoutubeBwitchesBwagnerBvibrantBveteransBtrialsB	translateBtossedBticketsBstoppingBstareBshoppingBsherlockBscrewBrecognizableB	parallelsBoptionBmodestyBminsBmercyBloyBlionelBitemBisraeliBiraqB	insuranceBinformativeBimmatureBhoganBhandlingBhandheldBgreatbrBgarfieldBgalaxyBfreakingBforbrBfactorsBevansBenteringBdismalB
difficultyB
deliberateBdeerBdallasBcouchBcontributionBcleaningBchillsBcentreBbullyBboringbrBbarrelBamazonB	admirableBabruptlyBaboardB1988BvoodooBunsuspectingBtubeBtripleB
translatedB
terminatorBtapesBtaBstumbleBstalkingBspadeBsoupBsmilesBslipBsergeantBsafelyBromeoBrhythmBrhettBreminderB	referringB	preferredB
possessionBpilotsB
perceptionBpennyBothelloB
moviegoersB
montgomeryB
misfortuneBminBmillBmatesBmarkedBklineBincidentallyBheavensBgamblingBfrozenBfilthyBexpectationBeverettBdisgraceBdidbrBdesignerB	decidedlyBdealerBcycleB	convictedBclockBchaplinsBbillsBbelushiBbeatlesBassuredBanytimeBantsBamitabhBalmightyB	afterwardB	acceptingB1969B1959BunsureBtokenB	submarineBspiralBskullBsitcomsBshtBshowtimeBshootoutBsessionB	satiricalBrobbersBrealizationBrainyB	principleBposingBpornographyB
phenomenonBoutdatedBorsonBnoveltyBmacbethBlouiseBlimitationsBlendBleatherBkramerBkermitBitselfbrBistanbulB	ingeniousBinformedB
improbableBgriefBgoodsBgereBgatherBgangsBfluffBfeministBdelightfullyBcravenB
convictionBcontroversyB
commentingBcliveBbostonBbombsBbikerBautomaticallyBauditionBargentoB22B1991B1936BwindowsBwesleyBvotesBtravoltaB
threatenedBtacticsBsteamBsomethingbrBshoreBservantBsensibleBschlockBsaintBreportsBqBpsycheBpromptlyBprogramsBproBphysicsBominousBnolteBneuroticBnervesBnbcBnailsBmorallyBmannBlikeableBkidnapBinherentBhidesBhavocBgoalsBfoxxBfarleyB
expeditionBerrorBelevenBdriveinBdolphBdividedB	departureBdeafBdamonBcrapbrBcostarsBconcludeB
collectiveBcloneBchoppedBcanceledB	camcorderBburstBbugB	breakdownB	backstoryBbabesBashleyBarguingBansweredBalteredBalleyBactingbrB
accessibleB1982B10brBwtfBweatherBwartimeBwanderBverbalBunimaginativeBtoniBtokyoBstylizedBstrictBstorysB
statementsBstagesBstabbedB	spectacleBsparksB	spaceshipBsixthBseasonedBscratchBrespectivelyBreservedB
resemblingB	realitiesBpostwarBposesBpfeifferBobtainBnominationsBneatlyBmiloBmiikeBmarinesB	macarthurBlizBlinkedBkumarB	justifiedBinstitutionB	incidentsB	imaginaryBgimmickBgiganticBgableBeyreBdownfallBdistractB
detectivesBdepthsBculturesBconveysBcontributedBcomparisonsBcombinesBcemeteryB
cartoonishBbudgetsB	breakfastBbitingBbaddiesB
audiencebrBaircraftBaffectsBadrianBadditionallyB4thB1986BwashedBwardenBvileBupsideBtremendouslyBthreadsBswitchedBsweepingB	suspectedBsuckerBsinkingB	screwballBscariestBrussiansBquestioningB	publishedBpointbrBpiperBphillipB
phenomenalB	paramountB	overblownBoutlineBolivierBoldestBmouthsB	misguidedBmesmerizingBlongestBlethalBkeysBinterviewedBinstinctBgingerBfrogB
foundationBfishingB	finishingBencounteredBdiverseBdisgustB	disguisedB
despicableBdepictBdeathbrBcrackingB	convincesBconnectionsBcoloursBcinemabrBchristieBcharmsBatomicB	armstrongB
approachesB1973B101BwhitesBvanessaBultraBtipBthoughbrBsweptBsubsequentlyB	streisandBsleepsBshocksB	sentimentBsaneBroryBreviewedBrampageB	preparingBpassageBpalaceBpaintsBoverbearingBoutrightBottoBoriginsBoldfashionedBnunBnormBnaughtyBmysteriouslyBmosesBmorbidBlongtimeBlaurenceBjudgesB	incapableBimmortalB	immigrantB	horrifiedBhangsBhallmarkBgalBgainedBframesB	festivalsBexploitsBexcusesBelectionBeggBduvallBdunneBdubBdressingBdragonsBdjBdisappointedbrBdeniroB	delightedBcurlyBcookingB
conventionBconcentrateBcobraBclanB
chroniclesBbowlBbeforebrBarrestB	argumentsBanticipationBakinB	wellactedBughBsymbolBstudiedBsopranosBshoeBseniorBsenBseedyBsaltB
politicianBoverbrBollieBoldsB	obsessiveBnewerBnephewBmonroeBmasterfullyBmarlonBmarcBlionsB
legitimateBleapBladderBintroBinteriorBinaccuraciesBhybridBhowlingBhornyBhippiesBgluedBglenBfuelBfollowupBfadeBevanBeternityBentriesBenthusiasticBdramaticallyBdisabledBdinerBdilemmaBcrippledBcrashingBcounterBcoppolaB
comprehendB
commitmentBcoatBclichesBclashBcasperBbulkBbreadBbratBbiblicalBbetrayedBbentBbanterB	assembledBapproachingBamirBamidstBaimingBadaptionByouthfulBwoundsBwiderB
unfamiliarBunderdogBturdBsupremeBslimBsketchB	sickeningBshelleyBsellsB	scenariosB	sarcasticBriversBrespectsBrepliesB	remembersBrememberingB	regularlyBrebeccaBrapistBpursueB	publicityBpleasingBnewcomerBmutualB
motorcycleBmoronsBmindbrB
mannerismsBlolaBlaterbrBjulesBjerseyB	isolationBindianaBindependenceB	incorrectBimpliedBhauntBgearBgameraBformedBflowersBfeedingBfarmerBfamilybrB	extensiveBexperiencebrBestablishingBentiretyBembraceBelviraBelsebrBdreadBdorisB
definitiveBdefiesBdamagedBcreepBcrawlBcowBcontemptB
confrontedB	candidateBbreedBboyleBbiopicBbaconB	backwardsBbacksBapplyBaceBacceptsB1974B1933BwiselyBwhoreBvoidB	victorianBunsympatheticBtraceB	telephoneBswearingBsteerBstargateBslyBsleeperBshiftsBroutinesBrothB	repulsiveBreliableBproductsBpredictablyBpattyBpamBofbrB
noticeableBnathanBmirrorsBmensB
mediocrityBmealBmacabreB	lightningBlicenseBkentBjudgedBjillB	intricateBinteractBinhabitantsBindifferentBimmenseBiconicB	housewifeBhiresB	himselfbrBhepburnBgerardBfundingBfruitBfloodBfadedBfactualBexperiencingBevelynBensureBeditBdocumentBczechBcriesBcostelloBcoreyBcollinsB
colleaguesBcheaplyBcharacterizationsBcerebralBcassidyBcarlaBboastsBblobBbeggingBbaronBaxeBaugustBasiaBarkBappealsBalterB1939BvividlyB	viewpointB	tormentedBtcmBtabooBswingingBsundanceBstefanBspockBspitBslavesBslashersBsergioBseatsB	schneiderBroundedBradicalBprestonB	practicalBpoundsBpotterBpointingBperformancebrB
pedestrianBpcBnovakB
noteworthyBnetflixBmenciaBmedievalBmeantimeBmadsenBloganBkidmanBjulietteBinvestigatorB
industrialBhookerBgrinchBgrassB	gentlemenBgeekBfulcisBfeatBexposeBemergeBembarrassinglyBdudBdrabB	dominatedBdiscoBdictatorB	deliciousBdefineBdeclineBdecidingBdaysbrBcursedBcoveringB
contributeBcoffinBclayBcellsBcarsonBbwBbuzzBbroodingB	brainlessBbachBartworkBarcBalaB300ByawnBwrightB	vignettesBveraBvehiclesB	variationB	unusuallyBunderstatementBunattractiveBtrivialBtravisBtowerBtongueincheekBspencerBsourcesBsosoBsmashBsfBselfindulgentBseedBscoredBsailorBrewardedB	relevanceBreidBrearBpraisedBphotographsBpaulieBpathosB	organizedBmoeBmessingBlavishBlastlyBjawBintactBindicateBhomesBhighwayBhenchmenBhabitBgromitBgodawfulBgiantsBforgivenBflamesB	explodingBegyptBearnestBdumbestBdetractBdeterminationBdelBcopiedB
convenientB	considersBconsequenceB
complainedBcheersBcattleBcastbrB	breathingBbowBborrowBbondsBbombingBavoidingBartyBapplaudBaliciaBaidedB	aftermathB	aestheticBabortionB1977ByearoldBwarnsBverdictBvanityBunderdevelopedBtonBtheoriesBtaxBsubstantialB
stunninglyBstuffedB
stepmotherBstatingBspanB
scarecrowsBsanityBrussoBromancesBriceB	rewardingBresultedBresolveBrejectsBrebelsBrazorBqualifyBprosB
profoundlyB	possessesBpoirotBpoeBphaseBpenelopeBparodiesB	originalsBnutB	neglectedBmumBmoronBmoneybrBmockBlonesomeBliteralBkurtzBkoreaBknowbrBkinskiB	instancesBheavyhandedB
graduationBgrabbedBgenerateBgapsBfreakyBforemostBflagBfarrellBexclusivelyBevokesBelmBdubiousBdoveBdominoBdivorcedBdestinationBdebtBdealersBcomebackBcloudsBcarellBbittersweetBbalancedBassumesBafricanamericanB34B1960B
wonderlandBwhinyBwendyBwarrantBvariedBvalidBupdateB	toleranceBthirstBthingsbrBtargetsBswedenBsugarBstardomBssBspreeBsportingBsourBsensitivityBroundsBroughlyBrickyBrewardB	retellingB	repressedB
relentlessB	reflectedB
rebelliousBragingBpimpBphiladelphiaB	perceivedBpeacefulBparkingBpadBothersbrBorganizationBoctoberBobservationBmudBmirandaBmeteorBmerchantBmaximumBmadisonBmaBlucioBlucilleBlowkeyBlocateBleadersBinterestingbrBinsightsB	inclusionBhollandBhiltonBhermanBgravesBgorillaBglimpsesBgilbertBghouliesBgesturesBfritzBflowsBexteriorBexcruciatinglyBexcruciatingBexcessBerBepicsB	enigmaticBdumpBdiBdaytimeBcritiqueBcreekBconveyedBcontestantsBcokeBclichedBclerkB	cigaretteBchaoticBcaseyBcarnageBcaperBcampusBbsBbrettBbrendanBbittenBbikeBbackbrB	awarenessBallensBadsB
admirationB	absorbingB85B28B1920sB19BwovenBwhaleBwashBvocalB
villainousBupdatedBuhBtoxicBswayzeBswallowBsubtextBstrokeBstonedBstationsBstalloneBsleepyB
shockinglyBseveredBsettledBsensebrBsalesmanBrivalsBrevoltBrescuedB	redundantBrealisticallyBreBquarterBpauseBpamelaBpalanceBpairingB	offscreenB	officialsBnopeBnarrowBnarratedBmormonBlordsBjuryBjoBjanetBinspirationalBinsistBincestBhypedBhomicideBgoldieBglaringB	glamorousBgarageBexplodesB	emphasizeBedieBdumberBdriversBdownsBdonebrB
distractedB	discussedBdetroitBderBdaylightBcummingsB	criticizeBconsB
complimentB	colleagueBchopB	centuriesBcentsBbikiniBbelievabilityBbegBbasingerBbashingBbanksB	associateBanyhowB	admissionBactorsbrB21BzByoursB
winchesterBwillardBwhereverB
wheelchairBweakerBwastesBtomatoesBthrustBsymbolsBstartersBshearerBscoobyBscarierBsarcasmBsammyBrollsBrobocopBripsB	reviewingBresumeBrelatingBrecoverBramonesBrajBrainbowBpromotedBpoleBpizzaBpirateBpierceBpeckBpansBowesB	orchestraBoharaBobrienBnetworksB	murderersBmelissaBluisB	lookalikeBloisBjoiningBitdB	inventionB	intenselyBinsultsBinjuryBheadacheBgrislyBgripBgratefulBgarnerBgapBfrontierBflowingB	exploitedBexploitBexistingBexcelsBevokeBentranceBdynamiteBdrawingsBdistractionBdevitoBconfuseBcommunicationBchatBcharacteristicsBchaneyB	cameramanBbuysBbordersBbishopBbestbrBbenefitsBbarkerB	ambiguityBadmiredB500BwrestlerBworsebrBwhiningBwheelBwakingBvomitBviscontiBvcrBuncannyBtraumaBtheatresBtaraBswitchesB	surrenderB
suggestingBstreamBspoilingBspiderBspellingBsociallyBslappedBsinsBshepherdBshatnerBsharonB	sentencesBseebrB	sebastianBsandersB	salvationBromanianBrespondB	remindingB	releasingBrehashBrationalBpursuedBpsychedelicB
protectionBpolicyBplottingBparanoidBnuancedB	mythologyBmoviemakingBmooresB	monologueBmisunderstoodBmidstBlopezB
lieutenantBlendsBkiteBkellysBjudeBjohnsBjessBjanBisabelleBinmatesBinclinedBignoringBhystericallyB	hungarianBhenchmanBhawkeBhannahBgutBgoodlookingBghettoBgeorgiaBgeinBfrightBfortBfoilBfillsBfiancéeBfacilityBentertainingbrB	employeesBemployeeBdoyleBdisorderBdenyBdarrenBdadsBcreepsBconsequentlyBcompositionB
committingBclubsBclimbBclassyBcasinoBbondageBbimboBbettieBbellyBarrowBarrayBappliedBallegedB20sBxfilesBww2BwaynesBvivianBvintageBvergeBusbrBuniformsBuniformBunBtireBtherebyBsummedBsubwayB	subtitledBstrungBsternB	spoilerbrBspineBslowerBslideBskilledB	shamelessBservicesBservantsBsangBratsB
principalsBpoundBparsonsBpaltrowBpalmBpainsBpacksBoverusedBotooleBninjasBnerveBmotionsBmonicaBmobileBmaskedBmarxBmarcusB	maintainsBlipBliarBlangeBivanB
increasingB	impendingB
immigrantsBidolBhitlersB
highschoolBgibsonBfriedBfratBforgetsB	followersBflippingBfenceB	enchantedBelderBdistinctionBdismissBcrossedBcourtesyBcorporationBclunkyBclimbingBchuckyBcarolineBcapeBcapacityBcabBbutchBboogieBblessBbillingBbacallBarabBaptB
antagonistB	addressedBachievesB1950B18thBupbeatB
undeniablyBtoolBtitularB	throughbrBtechBsunsetBsterlingBspinalBsketchesBshawnB	scriptingBscreenedBscarfaceB	robertsonBrobbedBreverseBreneeB	qualifiesBprostitutesBpocketBplayfulBplatoonBperiodsBpeersBparksBnivenBmichealBmaloneBlupinoBlibertyBkahnBhurryBhesitateBherbertBhatefulBgrowthBgroundsB	gatheringBfrontalBflimsyBfeminineBfacebrBexpertsBelectedBeggsBeagerlyBdreamyBdooBdodgeBdixonBdetachedBdemonstratedBcrownBcontrolsB
comparableBclooneyBclausBcarnivalB
captivatedBcampingBboobsBbattlingB	awakeningBacknowledgeB1934BzoeyBwinnersBweaverBunnecessarilyBumaBtvsB	transportBthugBsylviaBsustainBstereotypedBspiceBsoughtBsmugBskitBsinksBserialsBsensibilityBsealBscorpionBsalesBsabrinaBrightlyBrepublicB	renderingB	recurringBpubBportmanBpoppingBpinBpigsB	patrioticBparticipantsBpainterBpaBoceansBnortonBneroBmyrnaBmurkyBmissionsBmissileBmangaBmandyBmamaBliuB	libertiesBlaunchBlargestBlangBkrisBinterruptedBinsertedBinformsBinconsistenciesBidealsBhoneyBholmBhartleyBgrandmaBgloomyB	furnitureBfragileBflavorBfartBexplodeBexcellentlyBenhanceBelliottBehBdvdbrB	disregardB	determineBdespiseB
depictionsB
dedicationBdcBconsciousnessBconfinedBcomplicationsBcodyBchaptersB
celebratedBbustBboxerBbothersBboothBboardingBbeltBbearingBawfulbrBauteurB	attendingBangelinaBaffleckBadmitsBabstractB1985B1955BwormsBwhoopiB	warehouseBvaughnBustinovB	unnaturalBunderstandablyBunconventionalB
unansweredBtransferredBtoothBtobyBtightlyBsweatBsurroundB	stupidestBspoofsBsorelyBsolvedBsleptBsiblingsBsgtBsensationalBsenatorB	revolvingBreluctantlyBredneckBpropBpompousBplateBplanetsBpickupB
overweightBoutsetBnoticesBnoahBnielsenBmiraculouslyBmiamiBmelvilleB
meanderingBmadmanBlundgrenBloweBleanBkBjurassicBjoseBjolieBjobbrBjacksBirwinBillusionBignoresBhuntedBhorizonB	harrowingBgravityBgrangerBfuzzyBfulfillB
forgettingBflewBfederalB	espionageBedwardsBeconomicBebertBebayBduBdrillBdistinctiveBdiamondsBdexterB
denouementBdeliciouslyBdegreesBdazzlingBdaisyBconsistBcombsBcomaBcocaineBcloudBclaraBcirclesBcelebritiesBcaptBcandleBcampsBbrentB
braveheartBbombedBbogartBbasilBasterixBarquetteBantiheroBanchorB	alexandraBagonyB	affectingBadaptBaccompanyingBabbottB1957B1944B–BwangB	unfoldingB	underwearBtombB
timberlakeB	switchingBsurgeonBsuaveB	stephanieBsteeleBstackBskinnyBsissyBshelvesBsegalBrollerBriderBrevelationsB
retrospectBrelaxedBredgraveBramblingBprofileBpreciseBposeB	populatedBpoppedBpapersBpalsBownbrB	overnightBoveractsBopenlyBoffenseB	obliviousBmusicbrBmomentumBmiddleclassBmannersBmanipulationBlynchsBlumetBlimpBlandedBlambertBkristinBirresponsibleBintroducingBincreaseBinadvertentlyBimpliesBhopBhooksB
hellraiserBheelsBhardestBhansBhainesBguinnessBgoatBginaBgiBgeoffreyBfunkyBfranticBexwifeBenvyBengineerBdustinBdesBderivedB	defendingB	curiouslyBcrosbyBcookieB	consciousBchillBcheatBchargesBcharacterisationBcarriageBbreatheBblamedBbikoBbennettBaudreyBapplauseBanxiousB1942B1940B
yourselvesBwhoveBwearyBwayansBvapidB	valentineBunsatisfyingBtorchBtolerateBtodaybrBtherapyBtheirsBtargetedBswansonBsubgenreBstableBspottedBspinningBsophieBsmarterBshelterBsheilaBsheetsBsentimentalityBsensualB	satelliteBsassyBruiningBrenaissanceBrecreateBreasonbrBreaganBreadilyBpuzzledBporterBploddingB
plantationBpivotalBpickfordBpaddingBovershadowedBoffendBobservationsBnuancesBninaBnightmarishBnearestB
nauseatingBnannyBmuslimsBmortalBmixesBlunaticBloBlighterBlenoB	languagesBkubricksBjoannaBitaliansB	injusticeB
identifiedBhornBhopefulB	historybrBharborBgoodmanBgillianBframingBforgivenessB	firsttimeB	firstrateBfiennesBexpertlyBenduringB
elementaryBearliestBdumpedBdukesBdistributedBdimB	depardieuBdashingBdaffyBcypherBcustomsBcrookedB
criticizedBcowardBcousinsBcounterpartBcohesiveBchevyBcheeringB
casablancaBcareerbrBcaptiveBbrandonBbloomBblockbustersBblaxploitationBbiasBbendBbatsBbasketBbakshiBallyB	abundanceBaboundB1975BzombiBwipedBveronikaBvengefulBuptightBunluckyBunclearBunappealingBturmoilBtriggerBtoolsBthunderBswampBsuicidalB	stretchesBsnappyBsmoothlyBsightsBshoutBshebaBseduceBsatisfactionBrunawayBrookieBromaniaB
resistanceBremarkBradarBproducesBproceedBpollyBpodB
photographBpbsBpathsB	overboardBomenB
officiallyBoccupiedBobserveBnestBmysticalBmitchBmarilynBlurkingBlistenedBkinnearBkeatonsBjewBjaredBislandsBiranBinsertBinhabitB
incestuousBheatherBhawnBgrierBgraysonB	graveyardBfrombrBflickbrBflashingB
favouritesBfarmersB
excellenceBeuropaBenBelectricityBedgesBeconomyBdudleyBdodgyBdiggingBdeputyBdeadpanBdarcyBdangersBdandyBdamB	courtroomB
courageousBconsumedB
confessionBcmonBclickB	civiliansBcharliesBceilingBcanyonBbuttonsB	boxofficeBbookbrBbogusBbloodthirstyBbitchyBbennyBbegunBbegsBbachchanBassociationBartistryB	arroganceB	architectB	ambitionsBambianceBabroadB1992B1967ByellsB	worldwideB
watchingbrBvaderB	underusedBtunedBtruthsBtransportedBtransitionsBthoBtellyBtautBsubduedBstapleBstakeBslaughteredB	skepticalBshempBshannonBshamefulB	seductiveBsecureBseBrousingBrockneBrkoBrequestBrelyingBrelentlesslyBregimeBredfordBrecklessBrainesBpuppyB
progressedBprofessionalsB	preachingBposeyBpornographicB	pleasuresBpierreBphonesBphoebeB	pervertedBperkinsBpaulaBpalmaBoverwroughtBoutlawBorphanBmustveB
monotonousBmobsterBmanicBmalcolmBlynnBltBlikebrBknocksBknightsBkeanuBiraBinviteBinvestedBinsultedBinsignificantBinformB
impeccableBhypnoticBhisherBherculesBhairedBguardianBfortiesBfeebleBfanaticBfaintBexploitativeBevolvedB	europeansB	eastwoodsBeagleBdreamingBdraggingBdeepestBcynicismB	crossfireBcrossesB
criticismsBcoyoteBcountingBcontinuouslyBcliffhangerBcladB
chupacabraBcharacteristicBcalBbreastB	brazilianBblinkBblackandwhiteBbelleBbaitBarebrBappliesBantiBampleBalvinBallanB
aggressiveB73B1953BzanyByellBwolvesB
witchcraftB	wholesomeBvisitorBvincenzoB	villagersBvibeBupstairsB
transformsBtilBthroughoutbrB	terrorismBtablesBsuperfluousB
substituteBstuffbrBstreakBsteamingBstabBsoberBseriousnessBsectionsBscottsBrudyBrodneyBrobbingBrisksBricciBrewriteBrealisesBrapesBraidersBpythonBpursuingBproneBprogressionBpolanskiBpatchBpartbrB
optimisticBnuanceBnerdyBmovieiBmickBmelodyBmanagingBmagicianB	magicallyBliamBlayingBlansburyBkindlyB
influencesBimitateBheapBharrietBhahaBgreaseBgossipBgoodingBgarlandB
fulllengthBfreezeBfloydBfleeBfilmographyBfalconBfailuresBelijahBeffortlesslyBdominateBdiveBdistrictBdirecttovideoBdebraBdeborahBdavidsBconvictBconclusionsB	chocolateB	childlikeBbachelorB	automaticBarticleB	anthologyBalliesB150B
youngstersBweeBwatcherBvaryingBunsuccessfulBunstableB	transformBtierneyB
sweetheartBsupportsBsupermarketBsunriseBstrayBstirringBstalkedB	spotlightBspiesBshredBsheepBscriptwriterB
scratchingB	scatteredBritchieBrepeatsBrantBprostitutionBproportionsBportionsBpenaltyB
originalbrBordealBongoingB
occupationB	obstaclesBnutshellBnunsBnigelB
monologuesBmillsBmidgetBmeredithB
marvellousBmaeB	macdonaldBlooneyB
liveactionBlilBlesterBlambsBkinkyBit´sBinexperiencedB	indulgentB
incidentalB
imprisonedB
identitiesBhiBheathBhappenbrBgovernmentsBghastlyB
forebodingBfluidBflockBfleshedBfirthBfinneyBfetchedB
executivesBestevezB	episodebrBenoughbrBedisonBdynamicsBduelBdolemiteB	distortedBdiaryBdenisBdemiBdeliveranceBdeemedBdarlingB	customersBcontrollingBconsistencyB	confrontsBconcentrationBcommendableBchloeBchipBchibaBcharityB	cancelledB	butcheredBbrickBboyerB
atrocitiesBatlanticB
astronautsBarrangedB	announcedBanitaB	animatorsBamberBalisonB	alexandreBaimsBaerialBachievementsBacclaimB
accidentalBabsorbedBabandonB1966B1958B1930B010BwronglyBwipeBwarfareBveronicaB	verhoevenBventuraBvalBupcomingB	unleashedBumBtrumanBtrickedBtrapsBtormentBtonesBtillyBthelmaBtemperBtackleBsystemsB	surpassesB
supportiveB
sufficientBstupidbrBstrainedBstewartsB	sincerityBsidewalkBsg1BsemiBscheduleBscarredB
sacrificesBrowlandsBrosesBripleyB	restraintBreplacementBrenoB	remainderBrejectB	rebellionBraunchyBrailroadBraidB	radiationBquartersB
principlesBpriestsBpremisesBpoetBplantsBpistolBphoenixBpatriotBparticipateBoutrageouslyB
ostensiblyBnapoleonBmythicalBmoriartyBmobstersBmidwayB
melancholyBmauriceBmarketedBlorreB	lingeringBlightweightBlightlyBlengthsBknockingB	knightleyBkilljoyBkidnapsBkaufmanBjacquesB	irritatedBinfluentialBinducingB
improvisedBimoBhometownBhintedBharvestBhandicappedBgretaBgrannyBgraffitiBgenrebrBgeniusesBgaspBfodderB	fairbanksBeyesbrBexplanationsB	estrangedBestablishmentBernieBemmyBelmerBdrifterBdoesbrBcryptBcontributesB
continuousB
companionsBcommentatorsBcobbBclinicBclientsBchowBcheatsBcharltonBboutBboostBbooneB
battlestarBbattlefieldBbaffledBaztecB
armageddonB	antonioniB	anonymousBallianceBadventurousB1956B	zellwegerBwhybrBwebbB	unwillingBtruthfulB
traditionsBtonedBthirtiesBtheftBtestingBteddyBsymphonyB	sylvesterB	strangestBstrainBstraighttovideoBstellaBstagingBspringsBslipsBskippingBshylockBshovedBshotgunBselleckBsatanicB	sasquatchBruledBrosarioBrolesbrB
rightfullyBriddenBrevivalBreunitedBrespondsBreeseBrangingBrandallBpunishedB	prolongedBprogrammingB
prejudicesBphrasesBoperasBninetyBniftyBminersBmindsetBmccoyBmathieuBmarcelBlonBlockeBlivesbrBlifelongBlensBladBlabeledBknackBkissesBjokerBjockBjaggerBjacobiBjacobBintruderBinjectB
infinitelyBhomebrBhockeyBhmmmBhiphopBhatingBhardenedBhalfhourBguineaBgreeceB	geraldineBfranklinBfontaineBfileBfarscapeBfarewellB
encouragesBdwightBdistressBdeedsBdeedBdarkestBcunningBcrashedBcracksB	coworkersBcowboysB
consistingB	confirmedBconcreteB
compensateB	combiningBcolemanBcohenB	classicbrBcheerfulBcedricBburntBbuildupB
boyfriendsB
boundariesBblokeBbleedingBbathtubB	bartenderBawryBavoidsBaustensBassetBalotBallstarB	agreementBadmirerBacquiredBzizekB	weirdnessBwalmartBwaitsBvulnerabilityB	violentlyBusageBuneasyBtrustedBtollBtheodoreBthatllBtendedBtalkyBtalkieB
talentlessBtaglineB
surrealismBsurfBsunkB
structuredBstoicBsniperBsmithsB
similarityBshockerBshapedBshadyB	sentencedB	semblanceBseinfeldBsaloonBsailorsBrioBreviveBrescuesBrepresentingBrepresentativeBremorseBregisterBreformBrecallsBrathboneBquantumB	promotingBponderBpmB	permanentBpeggyBpairedBpaddedBoutputB
outlandishBoutcastB	operatingBnotreB	nothingbrBnerdsBmotelBmomsBminesBmillandBmcdowellBmaturityBmarathonBlutherBlovinglyBlorettaB	lettermanBlawyersBlatinoBlaserBlandmarkB
laboratoryBkatieBkathrynBjudithB	judgementBjewelryBjerksBjanesBinterpretedB	interplayBinsanelyBinnuendoBimhoBhostsBhostileBhealingBhairyBhailBgreatsBgratingBgovindaBgestureBgeraldBgeeBflipB
flamboyantBfixedBfashionsBfamedB
expressingBemilioBellisB
eisensteinBedithBearnsBdustyBdopeyB
distinctlyBdirkBdienBdevotionBdevelopmentsBdeckB	deceptionBcrushedBcrowdedBcrowBcoupB
conflictedB	complainsBcoburnBcoalBclydeB	civilizedBchewBcheerleaderBcapBbuffyBbucketBborrowsBbitesBberkeleyBbergmansBbcBbanditB	backwoodsBawaitingBarizonaBantonBantisemitismBannoyBamidB	allegedlyBalarmBadvancesBadmittedB26BzealandBzaneBworryingBwendigoBvotingBvinnieBvertigoBvegaB
unfinishedBunconsciousBtreatingBtitsBthroneBtensionsBswissBstirBstalkerBstadiumBspectrumBsophisticationBsonnyBsirkBsignificantlyBsighB	shatteredBsexistBserumBseagalsBrugbyBroachBretroBrelatesBrefugeBreeveBraysBrabidBpunsBprologueBprofitBpranksBpercentBpennedB	passengerB	overtonesBoutlookBoutdoorBobservedBnatashaBnailedB	monstrousB	momentsbrBmishmashBmiceB
mercifullyBmeaningsBmccarthyBmarryingB
mannequinsBlombardBloanBlevyBlaysBkristoffersonB	katharineBirresistibleBintendB	inhabitedB
incompleteBhorrorbrBhooperBhanBgoshBgamebrBgalleryBfugitiveBfraudBfierceBfastforwardBexistentialB
entertainsB
enormouslyB
enchantingBeleanorBdudesBdruggedBdivisionBdivingBdistinguishedBdisdainBdieselBdemeanorBdelveBdecencyBdecemberB
cunninghamBcrooksBcoworkerBcounterpartsB	conveyingB	connivingBconductB	condemnedB
commandingB
classifiedBclarityBchemicalBcecilBcavalryBcapsuleBcafeBburtonsBbonBblazingB
beforehandBbearableBbashBautobiographyBathleticBashesBapproximatelyB
anythingbrBanguishBanalyzeBadoredBabominationB1941ByearningB
witnessingBwildlifeBwhodB	whimsicalBwhereinBwarbrB	videotapeBunremarkableBuncompromisingB	ultimatumBturtleBturgidB	traumaticBtraitBtossB	surpassedBsubconsciousBstylebrBspearsBspawnedBsororityBsordidB
sophomoricBsolvingBsmarmyBsmackB
skillfullyB	silvermanBsicknessBshoB	sensationBscorseseBscoopBschemingBrougeBrogueBriffBretainsBrapidBraoulBramseyBramBquintessentialBpunksBprospectB
preferablyBplugBpianistBpaycheckBoverwhelmedB	overactedB	opponentsBolsenBoccultBnoelB	nathanielBmoleBmentorBmartianB	marriagesBlyricalBkathleenBjustificationB
investmentBintimacyBinterspersedB
instructorB	instinctsBimpersonationB
illustrateBhumiliationB	honorableBhmmBgraduateBglendaBgentlyBgeneticBfreelyBforrestBfidoBfannyB
engagementB	emergencyBelliotB	eliminateBeighthBearthsBduhBdublinBdopeB
displayingBdisconnectedB	dimwittedBdestructiveBdesolateBdependBdenyingBdataBdarwinBdangerouslyBcurtainB	competingB	communismBcolonyBcolmanBcollapseBclarkeBchucklesBchewingBcheungBcheaperBcampfireBbryanBbrookeBbranchBboxesB	botheringBbotchedBblessedBblamesBbadassBbackedBavengeBatwillBatrocityB
assistanceBaspirationsBappleBapocalypticBanilBamritaBamoralBamiableBByarnBwidowerBweeklyBwashingBvillaB	versatileB
vaudevilleBunravelBunratedB	unnervingBuninspiringB
undertakerBtwobrBtrinityBthenbrBthankfulB	summarizeB
suggestiveBstinkBstarsbrBstabbingBsnippetsBslutB
shoestringBseventhBscreenplaysBschizophrenicBschemesBscheiderBsalvageBrukhBrobberBroadsBrivalryBretrieveBrelievedBrecipeB	reasoningBravingBpsychologistBpsychologicallyBprotestB
protectiveB	privilegeBprehistoricBprecodeBpreacherBprankB
portugueseBpokeBplotlineBpipeBperverseBpausesBouttaBorientedBobsceneBnovemberBnovelistB
needlesslyBneedingB	necessityBnarcissisticBmustacheB	miniatureBmermaidBmelvynBmazeBmarvinBmanipulatedB
maintainedBmacBluxuryBlowbrowBlizardBlinksBlesbiansBlaurieBkurosawaBkennyB	katherineBjoyceBjokingBjediBjamB
jacquelineBinvestBinterpretationsBilluminatedBiconsBhoustonB	homicidalBholdenBhilaryBhassanBgrooveBglossyBgilmoreBgielgudBgaysBgadgetsBfreddysBfleetB	fishburneBfinishesBfetishBfearedBeyedBextraordinarilyBexpandedBericaBepisodicBensueBengineBdwarfBdirectorwriterBdietrichB
delusionalBdashBcustodyBcountedBcorbettBcometBcockyBcoasterBcircaBchopsB
censorshipB	celebrateBcarlyleBcamillaBburyBbulliesBbrynnerBbondingBbleedBbelievablebrBbastardBbarberBavenueBautoBauraB
attributedB	astronautB	assassinsBarmorBappalledBactionbrB	accompanyB1947ByetiByBwrathBwarpedBwahlbergB	vigilanteBvanillaB	unnoticedBunforgivableBuncoverB
transplantBtransparentBthereinB
terriblebrBtepidB
tendernessBtemporarilyBtediumBtasksBtanksBsuckingB	stumblingBstrippedB
somethingsBsocksBslowsBslobBshiftingBshakesBscoringBrumbleB	rooseveltBreportedBrenownedBreneB	receptionBrealbrBpresidentialB	premingerB	positivesB	positionsB	policemenBpolarBperilBperformancesbrB
orchestralB	obscurityBnotingBnoticingB	norwegianBmuscularB	miyazakisB	misplacedBmerryBmendesBmeganBmeanspiritedB	mastersonBloonyBlamBlacedBkneesBklausBkerrBkeeperBjuanBjodieBiturbiBitiB
invincibleBintelligentlyBintellectuallyBintegralBinsomniaBinchBimplyB	hypocrisyBhuttonBhumBhgBhesheBherringsBheroinesB
happeningsBgymBgrinBgriffinBgreeneBgrandpaBgiggleBgatheredBgarneredB	galacticaBfundBformerlyB	forgivingBfayeB
fassbinderBfairnessBfadesB	exhaustedBepitomeBedmundBechoBduncanBdrumBdrownedBdowntownBdownbeatBdonnieBdisappearanceBdernBcubanBcostnerBconnorBcongoB	concludesB	collectorBcoincidencesBclientBclarenceBchoreBcautionB
categoriesBcarpetBcarlyBcampersB	butterflyBbrunetteBbritneyB	braindeadBblurredB	bloodbathBbillionBbillieBbeowulfB
babysitterB	awfulnessBassistBartisticallyBanxietyBanticipatedBagathaB	admirablyB
adequatelyBabbeyB1965B1932B
yourselfbrBwokeBwitsBwisecrackingBwiresB
tragicallyBthurmanBterminalB
temptationB	suspendedB	superstarBstripperBsteppedBstanceBspringerBsmallestBslumberBslaveryBsiegeBshepardBsharksBshakespeareanBseussB	seductionBscumBsacredBruggedBrollercoasterBreiserBregainBrantingBpuertoBpsychiatricBprefersBprayingB
postmodernB
playwrightBplaguedBperspectivesBoperateBoneillBomarBmonksBmondayBmisterBmarleneBmaintainingBluridBlistsBlinneaBlimbsBintendsBinstrumentsB	insteadbrBinfantBimpressionsBidaBhurtingBhugoB
hitchhikerBhilariousbrBheydayBhelicoptersBhandyBgundamB
featuretteBfatherbrB	fairytaleBexceedinglyBerabrBentertainmentbrBemployerBemotionlessBechoesBdockBdeskBdeniedB	democracyBdemilleBdeltaBdarthBcrowdsB
cronenbergBcrispinBconvictsBconstraintsB	consistedBcongratulationsBconfederateBcompassionateBcoloredBcolbertBclosureBcindyBchopperBceremonyBcarrotB	caribbeanBcarefreeBcagesBburstsBbuddingB	bloodshedB
biologicalBbgradeBbethBbehavesBbeardBbathingBballoonBawardedBashtonBantiwarB
annoyinglyBamateursBalonebrBagobrBadvisedBaccomplishmentB65B55B27B1943B1938B1931BzooBworshipBwidowedBwhipBvolumesBvisitorsBvinBvenusBvargasB
undeniableBtrendyBtransvestiteBtowBtinBtentBtempestBtechnoBtakashiBswordsBsuzanneB
successionBstubbornBstonerB
spielbergsBsoxBsomberBshuttleBshahBsethBsentinelBselectBsealsBscroogeBsciencefictionBscarletBscandalBsaintsBroboticBrickmanB
retirementBresurrectionB	requisiteB	replacingBreincarnationB	ravishingBratioBrampantBrailwayBrackBquirksB	promotionBpredictabilityBpredecessorsBprecededB	practicesBposseBpoitierBpicturesqueB	picturebrBpenBoverseasBorthodoxBnorthamBmyriadB	motivatedBmorseBmoldB
millenniumBmcqueenBmasturbationBmasseyBmackBlotbrBlorenzoBlonerBlogoBlinearBlectureBlearBlaraBkutcherBkilmerBjarBislamB	interpretBilBhustlerBhugBhowardsBhostelB	honeymoonBheartbrBhawkBhartleysB	hardshipsBhallucinationsBhackmanBhabitsBgladlyBgiftsBgetawayBfutileBfundsB
formidableBfieryB
fictitiousBexposesBexpandBexamineB
everybodysBenforcementBencouragingB
encouragedBelusiveB	efficientB	effectsbrB	ecclestonB
dreadfullyBdomainBdistinguishB
disciplineB	disastersB
directorbrBdescendsBdefenceBdeannaBdakotaBdaftBcruzBcrewsB	creationsBcorrectnessBconnorsBconcentratesB
compromiseBcollaborationBcolBcocktailBcockneyBchristyBchinB
cheesinessBchamberBcaroleBcaligulaBcainBbumpBbrownsBbritsBbrilliantbrBbraveryBbrassBbossesB
borderlineBboatsB	bigbudgetBbenjaminBbavaBbarbraBbaldBattenboroughBaroundbrBarmoredB	arbitraryB
apprenticeBandreaByearbrBwryB	wrenchingBworriesBwarnersBwaltersB	versionbrBundevelopedB
uncreditedBtuckerBtroupeBtouristsBtinaBtideBthumbBtenantBteaseBsydowBstupidlyBstereotypingB
stepfatherBstatureBstakesB
soderberghBsnapBslugsB
slowmovingBslippedBslamBskippedBsitesB	showcasesB	shootoutsBshamelesslyBsessionsBsequelbrB
seamlesslyBschwarzeneggerBsamuelsBsammoBrundownBreginaldBreallybrBrapingBrabbitsB
questionedBpuzzlingB	punchlineB
protectingBproposalB	prevalentBpressedB
powerfullyBpinheadBpervertBpepperBpenisBpartyingB	paragraphBpalpableBovertBoutbreakB	orphanageBoptionsB
oppressiveB	northwestBnightbrBmutedBmuscleB	moderndayBmissilesBminnelliBmindblowingBmeekBmclaglenB	materialsBmarisaB	marijuanaB	mandatoryBmagnificentlyB	madeleineBlureBlubitschBloudlyBlogBlineupBlindyBledgerBjollyBjointBironsBinterrogationB	interiorsBinsistedBidiocyB
idealisticBhuppertBhunkBheritageBhensonB	heartlessBheadbrBhavebrBguidedBgrandparentsBgobrBfreakedBfiendBfathomBfamiliarityB	expressesBenvironmentalB
enthralledB
eliminatedBelevateBdraftBdominicBdogmaBdisappointmentsB
dialoguebrBdetractsB
deservedlyB	dependentBdenseBdeniseBdemographicBdeclaredBdebacleBdarklyBdanteBdaleBdafoeBcrocB
creepinessBcontemplatingBcomplimentsBcoincidentallyBclumsilyBcivilianBchipsBcasuallyBcastedBbyrneBbridgetB	bodyguardBblissB	beethovenBbeauBbarnBatticBastonishinglyBarkinBaptlyB	apologizeB	annoyanceBanatomyBamokBallisonBalainBactionpackedB	achievingB51B250B1963BzoomByulBwieldingBwheelsBvoyagerBvisceralBvinciBviennaB	vanishingB	upsettingBunimpressiveB
unexcitingBuncertaintyB	uncertainBtubBtimmyB	throwawayB
thereafterBthemselvesbrBtennisBtearingBsykesBswiftBsweepBstillsBstaresB
standpointB
stalingradBsqueezeBspontaneousBspittingBspellsBsparedBsimplerBshinyB
separationBsensibilitiesBseattleBsearchedBscriptwritersB	scoobydooB	schreiberBsatisfactoryBsatansBsantBsaddestBsaboteurB	rosemarysBripoffsBridersBreuniteBretainBreelsB	recoveredBproudlyBprofessionallyB	priscillaBpreventsBpresumeBprestigiousB	pregnancyBprayerBpoliteBplatformB	placementBpersuadeB	personnelBpazBpattonB	pattersonBpatternsBpassionsBparrotBoutsiderBoddballB	northforkBnoraBnodsBninetiesB
neighboursBnavalBnashB
mulhollandBmovieandB
monumentalBmontagesBmonstrosityBmonotoneBmockeryBmmBmilosBmatterbrBlockerBlistingBliliBlaughbrBkolchakBknockoffBkindnessBkiddieBjuiceBjuddBintertwinedB	intellectB
infidelityBhousekeeperBheroismBhelmetBhawksBharlanBhappierBhaggardBguidanceBgrosslyBgripsBgrandeurBgrammarBgoldblumBgoingsBgoddessBglamourBghostlyBgardnerB	functionsB
fulfillingBfrenzyB	footstepsBfleesBfantasticallyBfableBexistentB	evocativeBestherB	empathizeBemergingBedenBdutiesBdungeonBdramabrBdosesB	documentsB	docudramaBdiscountBdenverBdemmeBdefinesBdasBcrummyBcrookBcoursebrBcountrysBcoolestB
contestantBconnecticutBconcordeBcollarBcinematographicB
childrenbrBchenBchefBcensorsBburdenBbonanzaBboardsBblindedBblendsBbikersBbergenBbenoitBbeersBbartonBbartBbarbieBanniversaryB
animationsBangBaltmansBaloofBadulteryBactorsactressesBaccusationsB64B5thB2009B1964BzuccoBwolfmanBwhilebrBwhatsoeverbrBweirdoBweavesBwarningsBvirtueB
vietnameseBvetBtroopersBtrierBtreyBtraveledBtracesBtownspeopleBthreatsBthereofBthebrBtestedBteamedBtastefulBtakerB	superiorsBsufficientlyBsuchetB	stylisticBstimulatingBsteppingBsteamyBstampBspectacularlyBsoullessBsophiaBsnowyB	smugglingBskatingBshoutsBsheridanBshaggyBsecludedBseasB
sacrificedBsabotageBridiculeB	reportersBrenegadeBrendersBreliveBrefusingBrangesBramonBradioactiveB	qualifiedBquaintBprophecyBpotentB
possiblebrBpokemonBpitsBperlmanB	perfectedBpenchantB
patriotismBpartialBowlBorientalBoptimismBnotionsBmythsB
moderatelyBmercedesBmementoBmeltB
mastermindBmansonB
manipulateB	macmurrayBloopBlongbrBlocaleBlayerBlaunchedBlauBlassieBlangdonBlandlordBknivesBkeitelBjoys
??
Const_5Const*
_output_shapes	
:?N*
dtype0	*??
value??B??	?N"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_30352
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_30357
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?-
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?-
value?-B?- B?-
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
;
_lookup_layer
	keras_api
_adapt_function*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses* 
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
?
/
loss_scale
0base_optimizer
1iter

2beta_1

3beta_2
	4decay
5learning_ratemg'mh(mivj'vk(vl*

1
'2
(3*

0
'1
(2*
* 
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

;serving_default* 
7
<lookup_table
=token_counts
>	keras_api*
* 
* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 
* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 
?
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
,
Scurrent_loss_scale
T
good_steps*
* 
SM
VARIABLE_VALUEcond_1/Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEcond_1/Adam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEcond_1/Adam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcond_1/Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEcond_1/Adam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

U0
V1*
* 
* 
* 
R
W_initializer
X_create_resource
Y_initialize
Z_destroy_resource* 
?
[_create_resource
\_initialize
]_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
nh
VARIABLE_VALUEcurrent_loss_scaleBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
good_steps:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUE*
8
	^total
	_count
`	variables
a	keras_api*
H
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api*
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

`	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

b0
c1*

e	variables*
??
VARIABLE_VALUE"cond_1/Adam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEcond_1/Adam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEcond_1/Adam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"cond_1/Adam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEcond_1/Adam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEcond_1/Adam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstConst_1Const_2embedding/embeddingsdense/kernel
dense/bias*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_30162
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp$cond_1/Adam/iter/Read/ReadVariableOp&cond_1/Adam/beta_1/Read/ReadVariableOp&cond_1/Adam/beta_2/Read/ReadVariableOp%cond_1/Adam/decay/Read/ReadVariableOp-cond_1/Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp6cond_1/Adam/embedding/embeddings/m/Read/ReadVariableOp.cond_1/Adam/dense/kernel/m/Read/ReadVariableOp,cond_1/Adam/dense/bias/m/Read/ReadVariableOp6cond_1/Adam/embedding/embeddings/v/Read/ReadVariableOp.cond_1/Adam/dense/kernel/v/Read/ReadVariableOp,cond_1/Adam/dense/bias/v/Read/ReadVariableOpConst_6*#
Tin
2			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_30454
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biascond_1/Adam/itercond_1/Adam/beta_1cond_1/Adam/beta_2cond_1/Adam/decaycond_1/Adam/learning_rateMutableHashTablecurrent_loss_scale
good_stepstotalcounttotal_1count_1"cond_1/Adam/embedding/embeddings/mcond_1/Adam/dense/kernel/mcond_1/Adam/dense/bias/m"cond_1/Adam/embedding/embeddings/vcond_1/Adam/dense/kernel/vcond_1/Adam/dense/bias/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_30527??	
?	
?
'__inference_model_1_layer_call_fn_29996

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_29788o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_30226

inputs	*
embedding_lookup_30220:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_30220inputs*
Tindices0	*)
_class
loc:@embedding_lookup/30220*-
_output_shapes
:???????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/30220*-
_output_shapes
:????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????y
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_save_fn_30336
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
*
__inference_<lambda>_30357
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_30237

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
T
8__inference_global_average_pooling1d_layer_call_fn_30231

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_29546i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
`
'__inference_dropout_layer_call_fn_30247

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29692p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
#__inference_signature_wrapper_30162
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_29536o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?i
?
B__inference_model_1_layer_call_and_return_conditional_losses_29952
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_29939:
?N?
dense_29946:	?
dense_29948:
identity??dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2_
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????L      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_29939*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_29613?
global_average_pooling1d/CastCast*embedding/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*-
_output_shapes
:????????????
(global_average_pooling1d/PartitionedCallPartitionedCall!global_average_pooling1d/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_29546?
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29692~

dense/CastCast(dropout/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCalldense/Cast:y:0dense_29946dense_29948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29638u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?h
?
B__inference_model_1_layer_call_and_return_conditional_losses_29888
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_29875:
?N?
dense_29882:	?
dense_29884:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2_
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????L      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_29875*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_29613?
global_average_pooling1d/CastCast*embedding/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*-
_output_shapes
:????????????
(global_average_pooling1d/PartitionedCallPartitionedCall!global_average_pooling1d/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_29546?
dropout/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29624v

dense/CastCast dropout/PartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCalldense/Cast:y:0dense_29882dense_29884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29638u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_303527
3key_value_init2144_lookuptableimportv2_table_handle/
+key_value_init2144_lookuptableimportv2_keys1
-key_value_init2144_lookuptableimportv2_values	
identity??&key_value_init2144/LookupTableImportV2?
&key_value_init2144/LookupTableImportV2LookupTableImportV23key_value_init2144_lookuptableimportv2_table_handle+key_value_init2144_lookuptableimportv2_keys-key_value_init2144_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init2144/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2P
&key_value_init2144/LookupTableImportV2&key_value_init2144/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_29692

inputs
identity?P
dropout/ConstConst*
_output_shapes
: *
dtype0*
value
B j?ye
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0Y
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value
B j?a?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_restore_fn_30344
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_30264

inputs
identity?P
dropout/ConstConst*
_output_shapes
: *
dtype0*
value
B j?ye
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0Y
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value
B j?a?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?j
?
B__inference_model_1_layer_call_and_return_conditional_losses_30065

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_30047:
?N?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????L      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_30047?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/30047*-
_output_shapes
:???????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/30047*-
_output_shapes
:????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
global_average_pooling1d/CastCast.embedding/embedding_lookup/Identity_1:output:0*

DstT0*

SrcT0*-
_output_shapes
:???????????q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMean!global_average_pooling1d/Cast:y:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????w
dropout/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*(
_output_shapes
:??????????o

dense/CastCastdropout/Identity:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0}
dense/MatMulMatMuldense/Cast:y:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_302977
3key_value_init2144_lookuptableimportv2_table_handle/
+key_value_init2144_lookuptableimportv2_keys1
-key_value_init2144_lookuptableimportv2_values	
identity??&key_value_init2144/LookupTableImportV2?
&key_value_init2144/LookupTableImportV2LookupTableImportV23key_value_init2144_lookuptableimportv2_table_handle+key_value_init2144_lookuptableimportv2_keys-key_value_init2144_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init2144/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2P
&key_value_init2144/LookupTableImportV2&key_value_init2144/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?
:
__inference__creator_30289
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name2145*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?	
?
'__inference_model_1_layer_call_fn_29824
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_29788o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
'__inference_model_1_layer_call_fn_29977

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_29645o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
'__inference_model_1_layer_call_fn_29662
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_29645o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

)__inference_embedding_layer_call_fn_30217

inputs	
unknown:
?N?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_29613u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?q
?
B__inference_model_1_layer_call_and_return_conditional_losses_30141

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_30116:
?N?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????L      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_30116?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/30116*-
_output_shapes
:???????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/30116*-
_output_shapes
:????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
global_average_pooling1d/CastCast.embedding/embedding_lookup/Identity_1:output:0*

DstT0*

SrcT0*-
_output_shapes
:???????????q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMean!global_average_pooling1d/Cast:y:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????X
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
value
B j?y?
dropout/dropout/MulMul&global_average_pooling1d/Mean:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????k
dropout/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0a
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value
B j?a?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????o

dense/CastCastdropout/dropout/Mul_1:z:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0}
dense/MatMulMatMuldense/Cast:y:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
F
__inference__creator_30307
identity: ??MutableHashTable}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_23*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
,
__inference__destroyer_30302
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
.
__inference__initializer_30312
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?C
?
__inference_adapt_step_30210
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_30252

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?i
?
B__inference_model_1_layer_call_and_return_conditional_losses_29788

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_29775:
?N?
dense_29782:	?
dense_29784:
identity??dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????L      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_29775*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_29613?
global_average_pooling1d/CastCast*embedding/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*-
_output_shapes
:????????????
(global_average_pooling1d/PartitionedCallPartitionedCall!global_average_pooling1d/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_29546?
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29692~

dense/CastCast(dropout/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCalldense/Cast:y:0dense_29782dense_29784*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29638u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?4
?	
__inference__traced_save_30454
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop/
+savev2_cond_1_adam_iter_read_readvariableop	1
-savev2_cond_1_adam_beta_1_read_readvariableop1
-savev2_cond_1_adam_beta_2_read_readvariableop0
,savev2_cond_1_adam_decay_read_readvariableop8
4savev2_cond_1_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	1
-savev2_current_loss_scale_read_readvariableop)
%savev2_good_steps_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopA
=savev2_cond_1_adam_embedding_embeddings_m_read_readvariableop9
5savev2_cond_1_adam_dense_kernel_m_read_readvariableop7
3savev2_cond_1_adam_dense_bias_m_read_readvariableopA
=savev2_cond_1_adam_embedding_embeddings_v_read_readvariableop9
5savev2_cond_1_adam_dense_kernel_v_read_readvariableop7
3savev2_cond_1_adam_dense_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop+savev2_cond_1_adam_iter_read_readvariableop-savev2_cond_1_adam_beta_1_read_readvariableop-savev2_cond_1_adam_beta_2_read_readvariableop,savev2_cond_1_adam_decay_read_readvariableop4savev2_cond_1_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop=savev2_cond_1_adam_embedding_embeddings_m_read_readvariableop5savev2_cond_1_adam_dense_kernel_m_read_readvariableop3savev2_cond_1_adam_dense_bias_m_read_readvariableop=savev2_cond_1_adam_embedding_embeddings_v_read_readvariableop5savev2_cond_1_adam_dense_kernel_v_read_readvariableop3savev2_cond_1_adam_dense_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *%
dtypes
2			?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes{
y: :
?N?:	?:: : : : : ::: : : : : : :
?N?:	?::
?N?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?N?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
::


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
?N?:%!

_output_shapes
:	?: 

_output_shapes
::&"
 
_output_shapes
:
?N?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_29624

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_30284

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_30273

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29638o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?h
?
B__inference_model_1_layer_call_and_return_conditional_losses_29645

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_29614:
?N?
dense_29639:	?
dense_29641:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????L      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_29614*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_29613?
global_average_pooling1d/CastCast*embedding/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*-
_output_shapes
:????????????
(global_average_pooling1d/PartitionedCallPartitionedCall!global_average_pooling1d/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_29546?
dropout/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29624v

dense/CastCast dropout/PartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCalldense/Cast:y:0dense_29639dense_29641*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29638u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?s
?
 __inference__wrapped_model_29536
input_1W
Smodel_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleX
Tmodel_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	4
0model_1_text_vectorization_string_lookup_equal_y7
3model_1_text_vectorization_string_lookup_selectv2_t	<
(model_1_embedding_embedding_lookup_29518:
?N??
,model_1_dense_matmul_readvariableop_resource:	?;
-model_1_dense_biasadd_readvariableop_resource:
identity??$model_1/dense/BiasAdd/ReadVariableOp?#model_1/dense/MatMul/ReadVariableOp?"model_1/embedding/embedding_lookup?Fmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2g
&model_1/text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
-model_1/text_vectorization/StaticRegexReplaceStaticRegexReplace/model_1/text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
"model_1/text_vectorization/SqueezeSqueeze6model_1/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????m
,model_1/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
4model_1/text_vectorization/StringSplit/StringSplitV2StringSplitV2+model_1/text_vectorization/Squeeze:output:05model_1/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
:model_1/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
<model_1/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
<model_1/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
4model_1/text_vectorization/StringSplit/strided_sliceStridedSlice>model_1/text_vectorization/StringSplit/StringSplitV2:indices:0Cmodel_1/text_vectorization/StringSplit/strided_slice/stack:output:0Emodel_1/text_vectorization/StringSplit/strided_slice/stack_1:output:0Emodel_1/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
<model_1/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>model_1/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>model_1/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6model_1/text_vectorization/StringSplit/strided_slice_1StridedSlice<model_1/text_vectorization/StringSplit/StringSplitV2:shape:0Emodel_1/text_vectorization/StringSplit/strided_slice_1/stack:output:0Gmodel_1/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Gmodel_1/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
]model_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast=model_1/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
_model_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast?model_1/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
gmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeamodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
gmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
fmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdpmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0pmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
kmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateromodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0tmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
fmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastmmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
emodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxamodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
gmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
emodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2nmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0pmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
emodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuljmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumcmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumcmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0mmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
jmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountamodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0rmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
dmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
_model_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumqmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0mmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
hmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
dmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
_model_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2qmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0emodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0mmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Fmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Smodel_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle=model_1/text_vectorization/StringSplit/StringSplitV2:values:0Tmodel_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
.model_1/text_vectorization/string_lookup/EqualEqual=model_1/text_vectorization/StringSplit/StringSplitV2:values:00model_1_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
1model_1/text_vectorization/string_lookup/SelectV2SelectV22model_1/text_vectorization/string_lookup/Equal:z:03model_1_text_vectorization_string_lookup_selectv2_tOmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
1model_1/text_vectorization/string_lookup/IdentityIdentity:model_1/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????y
7model_1/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
/model_1/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????L      ?
>model_1/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor8model_1/text_vectorization/RaggedToTensor/Const:output:0:model_1/text_vectorization/string_lookup/Identity:output:0@model_1/text_vectorization/RaggedToTensor/default_value:output:0?model_1/text_vectorization/StringSplit/strided_slice_1:output:0=model_1/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
"model_1/embedding/embedding_lookupResourceGather(model_1_embedding_embedding_lookup_29518Gmodel_1/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*;
_class1
/-loc:@model_1/embedding/embedding_lookup/29518*-
_output_shapes
:???????????*
dtype0?
+model_1/embedding/embedding_lookup/IdentityIdentity+model_1/embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model_1/embedding/embedding_lookup/29518*-
_output_shapes
:????????????
-model_1/embedding/embedding_lookup/Identity_1Identity4model_1/embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
%model_1/global_average_pooling1d/CastCast6model_1/embedding/embedding_lookup/Identity_1:output:0*

DstT0*

SrcT0*-
_output_shapes
:???????????y
7model_1/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
%model_1/global_average_pooling1d/MeanMean)model_1/global_average_pooling1d/Cast:y:0@model_1/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
model_1/dropout/IdentityIdentity.model_1/global_average_pooling1d/Mean:output:0*
T0*(
_output_shapes
:??????????
model_1/dense/CastCast!model_1/dropout/Identity:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
#model_1/dense/MatMul/ReadVariableOpReadVariableOp,model_1_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model_1/dense/MatMulMatMulmodel_1/dense/Cast:y:0+model_1/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
$model_1/dense/BiasAdd/ReadVariableOpReadVariableOp-model_1_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_1/dense/BiasAddBiasAddmodel_1/dense/MatMul:product:0,model_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
model_1/dense/SigmoidSigmoidmodel_1/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitymodel_1/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^model_1/dense/BiasAdd/ReadVariableOp$^model_1/dense/MatMul/ReadVariableOp#^model_1/embedding/embedding_lookupG^model_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2L
$model_1/dense/BiasAdd/ReadVariableOp$model_1/dense/BiasAdd/ReadVariableOp2J
#model_1/dense/MatMul/ReadVariableOp#model_1/dense/MatMul/ReadVariableOp2H
"model_1/embedding/embedding_lookup"model_1/embedding/embedding_lookup2?
Fmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Fmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
C
'__inference_dropout_layer_call_fn_30242

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29624a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?X
?
!__inference__traced_restore_30527
file_prefix9
%assignvariableop_embedding_embeddings:
?N?2
assignvariableop_1_dense_kernel:	?+
assignvariableop_2_dense_bias:-
#assignvariableop_3_cond_1_adam_iter:	 /
%assignvariableop_4_cond_1_adam_beta_1: /
%assignvariableop_5_cond_1_adam_beta_2: .
$assignvariableop_6_cond_1_adam_decay: 6
,assignvariableop_7_cond_1_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: /
%assignvariableop_8_current_loss_scale: '
assignvariableop_9_good_steps:	 #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: J
6assignvariableop_14_cond_1_adam_embedding_embeddings_m:
?N?A
.assignvariableop_15_cond_1_adam_dense_kernel_m:	?:
,assignvariableop_16_cond_1_adam_dense_bias_m:J
6assignvariableop_17_cond_1_adam_embedding_embeddings_v:
?N?A
.assignvariableop_18_cond_1_adam_dense_kernel_v:	?:
,assignvariableop_19_cond_1_adam_dense_bias_v:
identity_21??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_cond_1_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_cond_1_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp%assignvariableop_5_cond_1_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_cond_1_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp,assignvariableop_7_cond_1_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:8RestoreV2:tensors:9*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 ^

Identity_8IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_current_loss_scaleIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_good_stepsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp6assignvariableop_14_cond_1_adam_embedding_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_cond_1_adam_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp,assignvariableop_16_cond_1_adam_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_cond_1_adam_embedding_embeddings_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp.assignvariableop_18_cond_1_adam_dense_kernel_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_cond_1_adam_dense_bias_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_21Identity_21:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)	%
#
_class
loc:@MutableHashTable
?
,
__inference__destroyer_30317
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
@__inference_dense_layer_call_and_return_conditional_losses_29638

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_29613

inputs	*
embedding_lookup_29607:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_29607inputs*
Tindices0	*)
_class
loc:@embedding_lookup/29607*-
_output_shapes
:???????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/29607*-
_output_shapes
:????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????y
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_29546

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????;
dense2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:?v
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
?
/
loss_scale
0base_optimizer
1iter

2beta_1

3beta_2
	4decay
5learning_ratemg'mh(mivj'vk(vl"
	optimizer
5
1
'2
(3"
trackable_list_wrapper
5
0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_model_1_layer_call_fn_29662
'__inference_model_1_layer_call_fn_29977
'__inference_model_1_layer_call_fn_29996
'__inference_model_1_layer_call_fn_29824?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_1_layer_call_and_return_conditional_losses_30065
B__inference_model_1_layer_call_and_return_conditional_losses_30141
B__inference_model_1_layer_call_and_return_conditional_losses_29888
B__inference_model_1_layer_call_and_return_conditional_losses_29952?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_29536input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
;serving_default"
signature_map
L
<lookup_table
=token_counts
>	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_30210?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
(:&
?N?2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_embedding_layer_call_fn_30217?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_30226?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
8__inference_global_average_pooling1d_layer_call_fn_30231?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_30237?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
'__inference_dropout_layer_call_fn_30242
'__inference_dropout_layer_call_fn_30247?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dropout_layer_call_and_return_conditional_losses_30252
B__inference_dropout_layer_call_and_return_conditional_losses_30264?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	?2dense/kernel
:2
dense/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_dense_layer_call_fn_30273?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_30284?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
F
Scurrent_loss_scale
T
good_steps"
_generic_user_object
"
_generic_user_object
:	 (2cond_1/Adam/iter
: (2cond_1/Adam/beta_1
: (2cond_1/Adam/beta_2
: (2cond_1/Adam/decay
#:! (2cond_1/Adam/learning_rate
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_30162input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
j
W_initializer
X_create_resource
Y_initialize
Z_destroy_resourceR jCustom.StaticHashTable
O
[_create_resource
\_initialize
]_destroy_resourceR Z
tablemn
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
: 2current_loss_scale
:	 2
good_steps
N
	^total
	_count
`	variables
a	keras_api"
_tf_keras_metric
^
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_30289?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_30297?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_30302?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_30307?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_30312?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_30317?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
:  (2total
:  (2count
.
^0
_1"
trackable_list_wrapper
-
`	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
4:2
?N?2"cond_1/Adam/embedding/embeddings/m
+:)	?2cond_1/Adam/dense/kernel/m
$:"2cond_1/Adam/dense/bias/m
4:2
?N?2"cond_1/Adam/embedding/embeddings/v
+:)	?2cond_1/Adam/dense/kernel/v
$:"2cond_1/Adam/dense/bias/v
?B?
__inference_save_fn_30336checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_30344restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_56
__inference__creator_30289?

? 
? "? 6
__inference__creator_30307?

? 
? "? 8
__inference__destroyer_30302?

? 
? "? 8
__inference__destroyer_30317?

? 
? "? ?
__inference__initializer_30297<st?

? 
? "? :
__inference__initializer_30312?

? 
? "? ?
 __inference__wrapped_model_29536j<opq'(0?-
&?#
!?
input_1?????????
? "-?*
(
dense?
dense?????????i
__inference_adapt_step_30210I=r??<
5?2
0?-?
??????????IteratorSpec 
? "
 ?
@__inference_dense_layer_call_and_return_conditional_losses_30284]'(0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? y
%__inference_dense_layer_call_fn_30273P'(0?-
&?#
!?
inputs??????????
? "???????????
B__inference_dropout_layer_call_and_return_conditional_losses_30252^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_30264^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? |
'__inference_dropout_layer_call_fn_30242Q4?1
*?'
!?
inputs??????????
p 
? "???????????|
'__inference_dropout_layer_call_fn_30247Q4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_embedding_layer_call_and_return_conditional_losses_30226b0?-
&?#
!?
inputs??????????	
? "+?(
!?
0???????????
? ?
)__inference_embedding_layer_call_fn_30217U0?-
&?#
!?
inputs??????????	
? "?????????????
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_30237{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
8__inference_global_average_pooling1d_layer_call_fn_30231nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
B__inference_model_1_layer_call_and_return_conditional_losses_29888j<opq'(8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_29952j<opq'(8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_30065i<opq'(7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_30141i<opq'(7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
'__inference_model_1_layer_call_fn_29662]<opq'(8?5
.?+
!?
input_1?????????
p 

 
? "???????????
'__inference_model_1_layer_call_fn_29824]<opq'(8?5
.?+
!?
input_1?????????
p

 
? "???????????
'__inference_model_1_layer_call_fn_29977\<opq'(7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
'__inference_model_1_layer_call_fn_29996\<opq'(7?4
-?*
 ?
inputs?????????
p

 
? "??????????y
__inference_restore_fn_30344Y=K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_30336?=&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_30162u<opq'(;?8
? 
1?.
,
input_1!?
input_1?????????"-?*
(
dense?
dense?????????