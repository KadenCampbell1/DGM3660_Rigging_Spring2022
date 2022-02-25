//Maya ASCII 2022 scene
//Name: Takoto_Rig.ma
//Last modified: Thu, Feb 24, 2022 10:46:59 PM
//Codeset: 1252
file -rdi 1 -ns "Takoto_Model" -rfn "Takoto_ModelRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Xmen9/Desktop/Projects/Repos/DGM3660_Rigging_Spring2022//Models/Takoto_Model.ma";
file -r -ns "Takoto_Model" -dr 1 -rfn "Takoto_ModelRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Xmen9/Desktop/Projects/Repos/DGM3660_Rigging_Spring2022//Models/Takoto_Model.ma";
requires maya "2022";
requires "mtoa" "5.0.0";
requires "stereoCamera" "10.0";
requires "mtoa" "5.0.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202106180615-26a94e7f8c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 22000)";
fileInfo "UUID" "21CF221A-4238-1EB2-249D-769884EDE3B8";
createNode transform -s -n "persp";
	rename -uid "F1509FDE-4492-5299-1A37-E6B9EFE7DBA9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 71.07985652304771 112.76272620014939 249.36813883805303 ;
	setAttr ".r" -type "double3" 348.86164723261214 1094.9999999991419 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0F00DEC8-4B13-0876-7E93-1994D60AD1BB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 274.07658064993677;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 6.3115973472595268 61.39758978882552 0.14141869544982777 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D8C8EA00-4CC1-3E7E-98CB-739C6A6D0F46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.6978109363086809 1000.1 26.307741243328547 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CBE8D0ED-4185-C444-CA7C-8394C36F924C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 222.67623838103088;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "F804F427-4EE4-4116-9545-7EA7BEC60315";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3269569172330264 24.433047630946707 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B72D024C-4214-63AF-F6BA-9386AC2019B9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 92.460934397337937;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "9EB94366-47F3-3488-84AF-C0A0E8414575";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 40.731431574610561 33.471550985626401 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E36A839F-4CE9-7665-A5C6-56A48A6A2025";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 45.233884051467555;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Skeleton";
	rename -uid "0A3B7168-43F7-28E9-D09A-98B9751C6AB1";
createNode joint -n "ROOT_Jnt" -p "Skeleton";
	rename -uid "89E77A48-4911-3150-BDF2-3A8782084446";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
createNode joint -n "COG_Jnt" -p "ROOT_Jnt";
	rename -uid "EF598716-465A-4F55-5508-258ACF9B522B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 3;
createNode joint -n "Spine_01_FK_Jnt" -p "COG_Jnt";
	rename -uid "8A997016-4CD7-4ECA-373C-D6AFA4297C4F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 90.000000000000014 0 90 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "Spine_02_FK_Jnt" -p "Spine_01_FK_Jnt";
	rename -uid "C88E6B03-44E5-F0B3-7487-EA8D44C1432E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -6.361109362927032e-15 0 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "Spine_03_FK_Jnt" -p "Spine_02_FK_Jnt";
	rename -uid "06C6BBF9-403C-8390-EABE-13915E3EC550";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "Spine_04_FK_Jnt" -p "Spine_03_FK_Jnt";
	rename -uid "DFD760AA-47AB-3849-57B2-5997A77F6A7B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -2.8587497894855788e-14 -6.4399641896370281e-14 -4.3999241267888713 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "Neck_01_FK_Jnt" -p "Spine_04_FK_Jnt";
	rename -uid "DD135F06-4056-9687-80B0-F98F5AA9624A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "Goggle_01_FK_Jnt" -p "Neck_01_FK_Jnt";
	rename -uid "D7D07325-49D8-5F30-D730-53AEEB091440";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "Goggle_01_FK_Jnt_parentConstraint1" -p "Goggle_01_FK_Jnt";
	rename -uid "FA5FA27D-4F6D-04EA-8E2A-D9BA3A100EDB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Goggle_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.6843418860808015e-14 -3.5527136788005009e-15 
		-3.1554436208840472e-30 ;
	setAttr ".rst" -type "double3" 22.690028818444048 14.685483232474425 5.055369654966206e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Goggle_01_FK_Jnt_scaleConstraint1" -p "Goggle_01_FK_Jnt";
	rename -uid "C6E31E20-4C92-E3D2-AF1D-3A94896D1013";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Goggle_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck_01_FK_Jnt_parentConstraint1" -p "Neck_01_FK_Jnt";
	rename -uid "B340117C-4D73-7394-DBEC-DA84ED48E1DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 2.6645352591003757e-15 
		-1.5777218104420236e-30 ;
	setAttr ".rst" -type "double3" 5.5694450981822001 1.7763568394002505e-15 1.9248862614081391e-17 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Neck_01_FK_Jnt_scaleConstraint1" -p "Neck_01_FK_Jnt";
	rename -uid "30C3404B-4489-7FE1-C960-F19F8BDCE87F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_04_FK_Jnt_parentConstraint1" -p "Spine_04_FK_Jnt";
	rename -uid "CA3B1E99-412D-546F-6A3B-009D34285BE5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 2.6645352591003757e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.8288189418415221e-14 ;
	setAttr ".lr" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr ".rst" -type "double3" 9.8716697692871378 -1.5726258158683732 -4.1753507160649332e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_04_FK_Jnt_scaleConstraint1" -p "Spine_04_FK_Jnt";
	rename -uid "F4095217-4182-48DE-F1F6-77997411DB1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "L_Clavical_01_FK_Jnt" -p "Spine_03_FK_Jnt";
	rename -uid "4E794A75-4388-69F8-4965-B995CC06DC70";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Arm_01_FK_Jnt" -p "L_Clavical_01_FK_Jnt";
	rename -uid "39CFF6AC-4DC3-9E8F-692C-81927B1FF2F6";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073331631037 1.3429067857254053 0.63534752723488419 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "L_Arm_02_FK_Jnt" -p "L_Arm_01_FK_Jnt";
	rename -uid "27632C92-4178-211F-A1F9-E5BABAFF9B8F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "L_Arm_03_FK_Jnt" -p "L_Arm_02_FK_Jnt";
	rename -uid "E230E20E-4162-63B8-4988-E9B2824D1E91";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 1.5;
createNode parentConstraint -n "L_Arm_03_FK_Jnt_parentConstraint1" -p "L_Arm_03_FK_Jnt";
	rename -uid "50D52379-4E00-8914-5C43-C7856F96A4DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -1.5543122344752192e-15 
		-9.9475983006414026e-14 ;
	setAttr ".rst" -type "double3" 14.466630739471196 -1.3988810110276972e-14 -1.4210854715202004e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_03_FK_Jnt_scaleConstraint1" -p "L_Arm_03_FK_Jnt";
	rename -uid "6AA960B8-4E9F-BC6B-4964-32BA2B05714C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000007 1.0000000000000016 1.0000000000000004 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_02_FK_Jnt_parentConstraint1" -p "L_Arm_02_FK_Jnt";
	rename -uid "99377148-4913-9C08-7DBC-16ADF1AFA835";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.907985046680551e-14 0 1.4210854715202004e-13 ;
	setAttr ".rst" -type "double3" 17.298623211828875 -3.9968028886505635e-15 7.1054273576010019e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_02_FK_Jnt_scaleConstraint1" -p "L_Arm_02_FK_Jnt";
	rename -uid "BBD9281C-4187-B59E-A9DE-098DAEF9A471";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000007 1.0000000000000011 1.0000000000000004 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_01_FK_Jnt_parentConstraint1" -p "L_Arm_01_FK_Jnt";
	rename -uid "3D63DA2D-400D-A843-7DE7-52A4413BBD42";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 2.2204460492503131e-16 
		9.9475983006414026e-14 ;
	setAttr ".tg[0].tor" -type "double3" -3.4097782512799312e-14 5.9635400277440939e-16 
		6.2042558361556391e-16 ;
	setAttr ".lr" -type "double3" 3.4100888523230422e-14 -5.8667198588366262e-16 -5.9426715201600298e-16 ;
	setAttr ".rst" -type "double3" 6.2450352076889519 2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".rsrr" -type "double3" 3.4100888523230422e-14 -5.8667198588366262e-16 -5.9426715201600298e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_01_FK_Jnt_scaleConstraint1" -p "L_Arm_01_FK_Jnt";
	rename -uid "F965E225-4AB6-FE8D-69AC-F4980F5F66CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000007 1.0000000000000011 1 ;
	setAttr -k on ".w0";
createNode joint -n "L_Arm_01_IK_Jnt" -p "L_Clavical_01_FK_Jnt";
	rename -uid "00533D17-4838-91CA-ACA6-72B7833E2C0C";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -0.016823475984810876 -5.4826805761654492e-09 -1.8666232662448691e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999978 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073331631037 1.3429067857254053 0.63534752723488419 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "L_Arm_02_IK_Jnt" -p "L_Arm_01_IK_Jnt";
	rename -uid "68822108-4286-D8A2-F87D-93B576DAAA89";
	setAttr ".t" -type "double3" 17.298623211828879 -3.9968028886505635e-15 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" -4.911557653385145e-15 -1.9690947033546513e-13 4.1000269005973977e-05 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 0.99999999999999944 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode joint -n "L_Arm_03_IK_Jnt" -p "L_Arm_02_IK_Jnt";
	rename -uid "A582806C-4D86-6651-65A5-72BF55C2E7BF";
	setAttr ".t" -type "double3" 14.466630739471189 -1.3766765505351941e-14 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000018 0.99999999999999845 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode orientConstraint -n "L_Arm_03_IK_Jnt_orientConstraint1" -p "L_Arm_03_IK_Jnt";
	rename -uid "22B14ABB-490A-9D7C-0370-4381CF2DC292";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -89.999999983217776 -1.3429893295010382 -0.6351953494898408 ;
	setAttr ".o" -type "double3" 90.016823459339633 -0.63519534909393582 1.3429893176476015 ;
	setAttr ".rsrr" -type "double3" 6.3587798551036961e-15 -5.9635400277440939e-16 4.9696166897867419e-17 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "L_Arm_02_IK_Jnt";
	rename -uid "A48FBE7A-4A27-D672-1D5D-33A837E55299";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "L_Arm_01_IK_Jnt_pointConstraint1" -p "L_Arm_01_IK_Jnt";
	rename -uid "827A4A33-4505-6D0C-3736-A49145FDD7E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_Base_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6.2450347308517973 1.5543122344752192e-15 0 ;
	setAttr -k on ".w0";
createNode joint -n "L_Arm_01_RK_Jnt" -p "L_Clavical_01_FK_Jnt";
	rename -uid "DD17F102-4008-DFDB-DF1D-6FA8D58E737D";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073331631037 1.3429067857254053 0.63534752723488419 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Arm_02_RK_Jnt" -p "L_Arm_01_RK_Jnt";
	rename -uid "168A009E-4868-B2C3-54BD-439B0E3C1255";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Arm_03_RK_Jnt" -p "L_Arm_02_RK_Jnt";
	rename -uid "788FE006-45F1-E34C-9CB2-468B2B2EEA2A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode parentConstraint -n "L_Arm_03_RK_Jnt_parentConstraint1" -p "L_Arm_03_RK_Jnt";
	rename -uid "2EB374C5-4C6E-E10A-0F9B-41BCB99C7958";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_03_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 2.2204460492503131e-16 
		-2.8421709430404007e-14 ;
	setAttr ".tg[1].tot" -type "double3" 4.766788919141618e-07 -8.7390890080030204e-09 
		1.4216979593584256e-08 ;
	setAttr ".tg[1].tor" -type "double3" -1.1830793732122671e-14 -4.6116722474361204e-21 
		-2.2334034576079077e-05 ;
	setAttr ".lr" -type "double3" 1.1830793732123121e-14 4.6116542720268597e-21 4.7612172240153068e-37 ;
	setAttr ".rst" -type "double3" 14.466630739471192 -1.3988810110276972e-14 -2.8421709430404007e-14 ;
	setAttr ".rsrr" -type "double3" 5.9153968660615603e-15 2.3058271360134299e-21 1.1903043060038267e-37 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "L_Arm_03_RK_Jnt_scaleConstraint1" -p "L_Arm_03_RK_Jnt";
	rename -uid "BF3D0939-4A30-8A9F-D653-8486AD3D88F2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_03_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Arm_02_RK_Jnt_parentConstraint1" -p "L_Arm_02_RK_Jnt";
	rename -uid "6D6B43F8-40A4-0BE9-5BC8-CE8BC1BC3FC6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_02_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 2.2204460492503131e-16 
		-1.4210854715202004e-14 ;
	setAttr ".tg[1].tot" -type "double3" 4.7667998614997487e-07 5.6303853273043103e-06 
		1.2830568607569148e-08 ;
	setAttr ".tg[1].tor" -type "double3" 0.016823475984809984 -5.4808733745973899e-09 
		-2.2334037148253891e-05 ;
	setAttr ".lr" -type "double3" 4.4801481723362237e-18 5.4808731383288055e-09 -1.609321684076439e-12 ;
	setAttr ".rst" -type "double3" 17.298623211828875 -3.7747582837255322e-15 4.2632564145606011e-14 ;
	setAttr ".rsrr" -type "double3" 2.2400933294877425e-18 2.7404365691644027e-09 -8.046608420382195e-13 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "L_Arm_02_RK_Jnt_scaleConstraint1" -p "L_Arm_02_RK_Jnt";
	rename -uid "188C4484-45F1-DAE3-9E84-3989367CB4C8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_02_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Arm_01_RK_Jnt_parentConstraint1" -p "L_Arm_01_RK_Jnt";
	rename -uid "42CD834E-4DCB-F758-2B3D-CD870383563A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_01_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 -2.2204460492503131e-16 1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.987846675914698e-16 2.7565842576160851e-17 ;
	setAttr ".tg[1].tot" -type "double3" 4.7667688107821959e-07 -5.2844362219417462e-09 
		1.1175799841112166e-08 ;
	setAttr ".tg[1].tor" -type "double3" 0.016823475984809995 -5.4808731629965895e-09 
		1.8666231857711301e-05 ;
	setAttr ".lr" -type "double3" 1.0870959526647112e-17 5.4808730671955808e-09 -1.6095095146641676e-12 ;
	setAttr ".rst" -type "double3" 6.2450352076889519 2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".rsrr" -type "double3" 4.6589964011091448e-18 2.7404365336220557e-09 -8.0475478159779048e-13 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "L_Arm_01_RK_Jnt_scaleConstraint1" -p "L_Arm_01_RK_Jnt";
	rename -uid "0DD48A0B-4069-AE96-C97B-778B36456682";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_01_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Clavical_01_FK_Jnt_parentConstraint1" -p "L_Clavical_01_FK_Jnt";
	rename -uid "1B362958-4F39-B8EB-A144-C1B63409B6D9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4.925140380859375 0.037532091140749735 2.3138317700026962 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Clavical_01_FK_Jnt_scaleConstraint1" -p "L_Clavical_01_FK_Jnt";
	rename -uid "47032848-4E8C-DF64-B0FE-02A62B05CAA4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Clavical_01_FK_Jnt" -p "Spine_03_FK_Jnt";
	rename -uid "4637D922-460F-BDC1-E9DD-10BDFCD69535";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -179.99999999999997 -89.999999999999972 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Arm_01_FK_Jnt" -p "R_Clavical_01_FK_Jnt";
	rename -uid "87F656BB-489B-5209-033F-598E79518767";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073332947783 1.3429067857252226 0.63534752723475274 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "R_Arm_02_FK_Jnt" -p "R_Arm_01_FK_Jnt";
	rename -uid "DA0CB4C9-4848-C884-7EA4-05973F5570FA";
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "R_Arm_03_FK_Jnt" -p "R_Arm_02_FK_Jnt";
	rename -uid "8AFD403D-4C65-EB53-46BC-3D8F03A9A7D1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 1.5;
createNode parentConstraint -n "R_Arm_03_FK_Jnt_parentConstraint1" -p "R_Arm_03_FK_Jnt";
	rename -uid "142E5444-4DE4-69F9-34C7-DDA7122AD4BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-14 1.012388316290469e-06 
		3.8336277910389072e-05 ;
	setAttr ".rst" -type "double3" -14.466561687799668 0 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_03_FK_Jnt_scaleConstraint1" -p "R_Arm_03_FK_Jnt";
	rename -uid "4B5240AE-494F-5F83-8059-979E5E2A7E5F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_02_FK_Jnt_parentConstraint1" -p "R_Arm_02_FK_Jnt";
	rename -uid "2A87104F-435E-2612-E2E7-6386093BE412";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.1974423109204508e-14 1.7763568394002505e-15 
		4.2632564145606011e-14 ;
	setAttr ".rst" -type "double3" -17.298644268687667 8.8817841970012523e-16 8.5265128291212022e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_02_FK_Jnt_scaleConstraint1" -p "R_Arm_02_FK_Jnt";
	rename -uid "8EF27740-41A7-D711-9271-D69635DCF34E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_01_FK_Jnt_parentConstraint1" -p "R_Arm_01_FK_Jnt";
	rename -uid "81C372BD-477C-2F55-B643-7BA7069549D2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.2434497875801753e-14 -1.5543122344752192e-15 
		-9.9475983006414026e-14 ;
	setAttr ".tg[0].tor" -type "double3" 2.3090081544921666e-14 -1.5902773407317588e-15 
		-1.4575924576274914e-15 ;
	setAttr ".lr" -type "double3" -2.3083869524059433e-14 1.9173062671392585e-15 1.6176490576559741e-15 ;
	setAttr ".rst" -type "double3" -6.2450399999999995 6.6613381477509392e-16 -8.5265128291212022e-14 ;
	setAttr ".rsrr" -type "double3" -2.3083869524059433e-14 1.9173062671392585e-15 1.6176490576559741e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_01_FK_Jnt_scaleConstraint1" -p "R_Arm_01_FK_Jnt";
	rename -uid "0BD05030-4150-35AF-26DF-C4BD76AB99C6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Arm_01_IK_Jnt" -p "R_Clavical_01_FK_Jnt";
	rename -uid "4B595590-4F12-89FB-448E-62A96CBFD959";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 3.7778905095280533e-05 -4.7846934451028115e-05 -2.0531884210400611e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073332947797 1.342906785725223 0.63534752723475296 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "R_Arm_02_IK_Jnt" -p "R_Arm_01_IK_Jnt";
	rename -uid "94486922-449D-F973-B637-52A9F6B77B37";
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -17.298644268687656 2.2204460492503131e-16 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 2.8333576573248802e-30 1.404690821463567e-13 4.10001956002038e-05 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode joint -n "R_Arm_03_IK_Jnt" -p "R_Arm_02_IK_Jnt";
	rename -uid "DD37AEFA-4AA0-0E79-CCC4-0D95BF9D72FC";
	setAttr ".t" -type "double3" -14.466561687799675 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode orientConstraint -n "R_Arm_03_IK_Jnt_orientConstraint1" -p "R_Arm_03_IK_Jnt";
	rename -uid "CF54BD06-425F-5060-048A-7B874120E79E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 89.983134633728611 -1.3431283395385698 -0.63479817490731483 ;
	setAttr ".o" -type "double3" -89.983178237862916 0.63519165049882109 -1.3430090208068048 ;
	setAttr ".rsrr" -type "double3" 1.2719889218030733e-14 -9.9392333795734961e-17 3.9756933518293969e-16 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "R_Arm_02_IK_Jnt";
	rename -uid "7E6B3B6F-43C4-11B6-A0EF-16895485167E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "R_Arm_01_IK_Jnt_pointConstraint1" -p "R_Arm_01_IK_Jnt";
	rename -uid "147B077B-4717-44BF-AF0E-EB8E71E1CD99";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_Base_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -6.2450365008544928 -2.008743284820369e-06 -1.1010742184680566e-05 ;
	setAttr -k on ".w0";
createNode joint -n "R_Arm_01_RK_Jnt" -p "R_Clavical_01_FK_Jnt";
	rename -uid "11DF0603-42CB-1328-D5A9-0B9962957251";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073332947797 1.3429067857252235 0.6353475272347533 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Arm_02_RK_Jnt" -p "R_Arm_01_RK_Jnt";
	rename -uid "2E554765-4F84-6D79-9B63-5CBA2B828DFD";
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Arm_03_RK_Jnt" -p "R_Arm_02_RK_Jnt";
	rename -uid "84CF8192-4663-98A9-4B74-78A046872ABD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode parentConstraint -n "R_Arm_03_RK_Jnt_parentConstraint1" -p "R_Arm_03_RK_Jnt";
	rename -uid "48F3776B-4DB3-4EA7-A807-9DAD53A53811";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_03_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Arm_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -4.4408920985006262e-16 
		0 ;
	setAttr ".tg[1].tot" -type "double3" -3.733774562419967e-06 1.0225431039678767e-06 
		3.7451805681598671e-05 ;
	setAttr ".tg[1].tor" -type "double3" 1.4787819099214895e-06 -1.9700861314510289e-05 
		-1.862965625400299e-05 ;
	setAttr ".lr" -type "double3" -3.0999500140727703e-18 -1.986815716584118e-16 9.9386200573830616e-17 ;
	setAttr ".rst" -type "double3" -14.466561687799675 -2.2204460492503131e-16 0 ;
	setAttr ".rsrr" -type "double3" -1.446348815745076e-27 9.09964065808666e-21 -1.5166023167722615e-21 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "R_Arm_03_RK_Jnt_scaleConstraint1" -p "R_Arm_03_RK_Jnt";
	rename -uid "37568210-44F7-CA3B-66A7-AC82172885F9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_03_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Arm_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Arm_02_RK_Jnt_parentConstraint1" -p "R_Arm_02_RK_Jnt";
	rename -uid "8545BECF-4FA3-20DC-F139-DDA5B9A9DAF4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_02_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Arm_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 -2.2204460492503131e-16 
		-1.4210854715202004e-14 ;
	setAttr ".tg[1].tot" -type "double3" -3.7337363423262104e-06 -4.145465275051663e-06 
		2.5370974952920733e-05 ;
	setAttr ".tg[1].tor" -type "double3" -3.7778887949396807e-05 4.7846947989262376e-05 
		-2.0468342938316807e-05 ;
	setAttr ".lr" -type "double3" 1.2132857585596117e-20 1.213285324654967e-20 -6.0664179451819417e-21 ;
	setAttr ".rst" -type "double3" -17.29864426868766 8.8817841970012523e-16 8.5265128291212022e-14 ;
	setAttr ".rsrr" -type "double3" 6.0664287927980585e-21 6.0664266232748351e-21 -3.0332089725909705e-21 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "R_Arm_02_RK_Jnt_scaleConstraint1" -p "R_Arm_02_RK_Jnt";
	rename -uid "F588D0B4-4435-0141-28D3-CA859A782F42";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_02_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Arm_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Arm_01_RK_Jnt_parentConstraint1" -p "R_Arm_01_RK_Jnt";
	rename -uid "6870D132-475F-B026-9000-FE9707D9803C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Arm_01_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 0 -1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -6.2120208622334327e-18 9.9392333795734919e-16 
		5.8616240604730772e-16 ;
	setAttr ".tg[1].tot" -type "double3" -3.733740516764783e-06 2.0534740756694703e-06 
		1.0925105783599065e-05 ;
	setAttr ".tg[1].tor" -type "double3" -3.7778887949391203e-05 4.7846947989623998e-05 
		2.0531852662006377e-05 ;
	setAttr ".lr" -type "double3" 1.5530052155583582e-18 -2.4265706493099347e-20 -9.9392333795734924e-17 ;
	setAttr ".rst" -type "double3" -6.2450399999999995 6.6613381477509392e-16 -8.5265128291212022e-14 ;
	setAttr ".rsrr" -type "double3" -4.6590156466750726e-18 -3.9759360088943269e-16 
		-2.981284699742185e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "R_Arm_01_RK_Jnt_scaleConstraint1" -p "R_Arm_01_RK_Jnt";
	rename -uid "9DFD7EEF-404A-0502-F669-27811F51573C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Arm_01_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Clavical_01_FK_Jnt_parentConstraint1" -p "R_Clavical_01_FK_Jnt";
	rename -uid "50D984B4-4270-9359-8D8D-BC90114F7F2E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -5.6498000615042009e-30 -1.272221872585407e-14 
		7.2078225055711749e-30 ;
	setAttr ".lr" -type "double3" -6.2725381128105917e-46 1.2722218725854067e-14 -5.649800061504203e-30 ;
	setAttr ".rst" -type "double3" 4.9251513916015597 0.037530082397462694 -2.3138299999999967 ;
	setAttr ".rsrr" -type "double3" -6.2725381128105917e-46 1.2722218725854067e-14 -5.649800061504203e-30 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Clavical_01_FK_Jnt_scaleConstraint1" -p "R_Clavical_01_FK_Jnt";
	rename -uid "2987A956-4424-CE8D-CA26-CFB7E8C395AE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_03_FK_Jnt_parentConstraint1" -p "Spine_03_FK_Jnt";
	rename -uid "63519B39-4F4C-B52E-70B6-269DA824394A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -7.8886090522101181e-31 ;
	setAttr ".rst" -type "double3" 10.501300811767578 -1.45985007286072 -2.5905446547566672e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_03_FK_Jnt_scaleConstraint1" -p "Spine_03_FK_Jnt";
	rename -uid "500E6D5F-456C-67AE-161E-6DA39EEB35AA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_02_FK_Jnt_parentConstraint1" -p "Spine_02_FK_Jnt";
	rename -uid "583CA083-4BBC-BFBF-1619-4BA51F5DD043";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 11.060997009277344 0.52590012550353993 -1.1677328559745788e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_02_FK_Jnt_scaleConstraint1" -p "Spine_02_FK_Jnt";
	rename -uid "FD6B1197-403C-5169-461C-76A7B7A099B4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_01_FK_Jnt_parentConstraint1" -p "Spine_01_FK_Jnt";
	rename -uid "721557D7-4C51-441F-B4F7-50A69D6D82AE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_01_FK_Jnt_scaleConstraint1" -p "Spine_01_FK_Jnt";
	rename -uid "6016386F-466F-D104-E8E1-07B499FE63AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Pelvis_01_FK_Jnt" -p "COG_Jnt";
	rename -uid "D026FD0E-40E8-A839-3F3B-B88C6F28DE8E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 90 0 -90 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "L_Leg_01_FK_Jnt" -p "Pelvis_01_FK_Jnt";
	rename -uid "66EC52D4-42E2-0E42-6662-CEAAADE6BBD0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 -1.2722218725854067e-14 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Leg_02_FK_Jnt" -p "L_Leg_01_FK_Jnt";
	rename -uid "B6DC0044-436D-CE8B-D9F6-AC99238BECD3";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.015477464396247852 0.35448768832736516 -3.5111959034939577 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "L_Leg_03_FK_Jnt" -p "L_Leg_02_FK_Jnt";
	rename -uid "DC5F9739-470E-4B66-A5AB-9F90391F60E8";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -2.7619997114322818 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -5 ;
	setAttr ".radi" 1.5;
createNode joint -n "L_Leg_04_FK_Jnt" -p "L_Leg_03_FK_Jnt";
	rename -uid "918D8B7B-4EAF-1216-7FA5-3DB115C377D8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 1.4198331622974709 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "L_Foot_01_FK_Jnt" -p "L_Leg_04_FK_Jnt";
	rename -uid "77920604-4848-FC39-3377-33BB8BFB7045";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872156346 -0.11246489350220029 69.759457814268615 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "L_Foot_02_FK_Jnt" -p "L_Foot_01_FK_Jnt";
	rename -uid "066C7DBF-4D7F-F604-C080-1DAAF08D4780";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 25.094271303580328 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "L_Foot_03_FK_Jnt" -p "L_Foot_02_FK_Jnt";
	rename -uid "AC79C635-4307-C2EE-2B77-71B13A8336F3";
	setAttr ".t" -type "double3" 9.1425663829806751 1.0150114028522722e-15 6.6276719873763217e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode parentConstraint -n "L_Foot_02_FK_Jnt_parentConstraint1" -p "L_Foot_02_FK_Jnt";
	rename -uid "62BFECD6-4830-8D5D-2976-A2A74B77F5AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 2.3092638912203256e-14 
		-3.730349362740526e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.2263882770244617e-14 ;
	setAttr ".lr" -type "double3" 0 0 -1.2722218725854064e-14 ;
	setAttr ".rst" -type "double3" 12.716406985465778 3.5527136788005009e-15 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.9083328088781097e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Foot_02_FK_Jnt_scaleConstraint1" -p "L_Foot_02_FK_Jnt";
	rename -uid "F971A456-4618-2894-0C1F-3EB84E2748C0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Foot_01_FK_Jnt_parentConstraint1" -p "L_Foot_01_FK_Jnt";
	rename -uid "A50E7557-4FDC-201A-F287-4EA05AF6A1F3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-14 1.3322676295501878e-14 
		-2.4868995751603507e-14 ;
	setAttr ".tg[0].tor" -type "double3" 6.604620580726584e-14 4.522351187705938e-14 
		3.5948188227137088e-15 ;
	setAttr ".lr" -type "double3" -6.6095901974163691e-14 -4.5273208043957231e-14 6.2936506988762423e-15 ;
	setAttr ".rst" -type "double3" -0.024681606807778422 -0.00087748476257587527 0.010261807432263126 ;
	setAttr ".rsrr" -type "double3" -6.6120750057612624e-14 -4.5248359960508293e-14 
		6.2936506988762423e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Foot_01_FK_Jnt_scaleConstraint1" -p "L_Foot_01_FK_Jnt";
	rename -uid "971D044A-4059-C622-0D68-86A5A2C42FC0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_04_FK_Jnt_parentConstraint1" -p "L_Leg_04_FK_Jnt";
	rename -uid "31307A32-4176-223A-EC48-D8AECF3E23A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-15 -4.4408920985006262e-15 
		-1.865174681370263e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.4511280734177294e-14 ;
	setAttr ".lr" -type "double3" 0 0 -1.5505204072134644e-14 ;
	setAttr ".rst" -type "double3" 33.278810447817207 3.6415315207705135e-14 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.4710065401768764e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_04_FK_Jnt_scaleConstraint1" -p "L_Leg_04_FK_Jnt";
	rename -uid "39AB775E-41D8-BE9E-F238-38BAA6A3E033";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_03_FK_Jnt_parentConstraint1" -p "L_Leg_03_FK_Jnt";
	rename -uid "564EA619-49AB-21BC-E0D9-3B9BF1309438";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 -7.9936057773011271e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.5505204072134641e-14 ;
	setAttr ".lr" -type "double3" 0 0 1.5505204072134644e-14 ;
	setAttr ".rst" -type "double3" 18.899732833631958 0 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 1.5505204072134644e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_03_FK_Jnt_scaleConstraint1" -p "L_Leg_03_FK_Jnt";
	rename -uid "D2B50002-4D7A-0307-3220-0DA00207C16C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_02_FK_Jnt_parentConstraint1" -p "L_Leg_02_FK_Jnt";
	rename -uid "BE0D1F14-49D1-B276-9D30-C5BDF1771962";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 1.7763568394002505e-15 2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.1989200264110524e-15 1.6250646575602656e-14 
		-1.1853215244923194e-14 ;
	setAttr ".lr" -type "double3" -1.1989200264110538e-15 -1.6249481821690988e-14 1.0732952506109523e-14 ;
	setAttr ".rst" -type "double3" 3.789030499263994 0.18803441524505615 -3.1557986736297639 ;
	setAttr ".rsrr" -type "double3" -1.1989200264110538e-15 -1.6249481821690988e-14 
		1.0732952506109523e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_02_FK_Jnt_scaleConstraint1" -p "L_Leg_02_FK_Jnt";
	rename -uid "E7A9BEBC-402D-7AFD-FC64-DFAB8A8D1F0E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg_02_IK_Jnt" -p "L_Leg_01_FK_Jnt";
	rename -uid "3EC2BFD2-4036-5ED8-EA0B-94978F2D9997";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 5.6976260287007108e-17 1.8222807851417433e-15 0.05843227025170486 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.015477464396247852 0.35448768832736516 -3.5111959034939564 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "L_Leg_03_IK_Jnt" -p "L_Leg_02_IK_Jnt";
	rename -uid "37BCA502-44CF-6792-88D2-90AB4FB9A0FD";
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 18.899732833631965 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" -1.2894128784186894e-16 -7.0143283893314138e-16 -0.091606194669078461 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -2.7619997114322818 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -5 ;
	setAttr ".radi" 2;
createNode joint -n "L_Leg_04_IK_Jnt" -p "L_Leg_03_IK_Jnt";
	rename -uid "77607C45-4616-BA87-91AA-F7B1B3A3E2A0";
	setAttr ".t" -type "double3" 33.278810447817207 3.5083072730268245e-14 8.7421931637323611e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 1.4198331622974703 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "L_Foot_01_IK_Jnt" -p "L_Leg_04_IK_Jnt";
	rename -uid "0129A7F8-4261-EB74-95EC-118E7AB7A421";
	setAttr ".t" -type "double3" -0.024681606807778422 -0.00087748476257498709 0.010261807432264014 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872156369 -0.11246489350220028 69.759457814268629 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "L_Foot_02_IK_Jnt" -p "L_Foot_01_IK_Jnt";
	rename -uid "58B2F8F4-4548-84BC-1A14-DD88C68C9D47";
	setAttr ".t" -type "double3" 12.716406985465774 4.4408920985006262e-15 -8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" -7.8877756100295213e-13 -8.7570402575626158e-29 -5.7180431908724842e-29 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000004 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 25.094271303580335 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "L_Foot_03_IK_Jnt" -p "L_Foot_02_IK_Jnt";
	rename -uid "D9EB94F7-46FA-1B97-E760-5294C38F53C6";
	setAttr ".t" -type "double3" 9.1425663829806751 1.0150114028522722e-15 6.6276719873763217e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode ikEffector -n "effector6" -p "L_Foot_02_IK_Jnt";
	rename -uid "4313E284-444E-46D6-7161-A1AFF44A9A4A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector5" -p "L_Foot_01_IK_Jnt";
	rename -uid "F9418F39-4016-8D61-B1B3-B9846962BFD9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "L_Leg_04_IK_Jnt_orientConstraint1" -p "L_Leg_04_IK_Jnt";
	rename -uid "5489767F-479E-0752-847E-84863569A3E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_IK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -96.011243783008311 89.645174592196057 -1.1246595264478292 ;
	setAttr ".o" -type "double3" 90.037293915801868 4.8864688002190659 -89.643948842075957 ;
	setAttr ".rsrr" -type "double3" -6.361109362927032e-15 1.9083328088781101e-14 9.5416640443905487e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector3" -p "L_Leg_03_IK_Jnt";
	rename -uid "160AB9A7-4A8B-D51A-53FE-7C8D95F12391";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "L_Leg_02_IK_Jnt_pointConstraint1" -p "L_Leg_02_IK_Jnt";
	rename -uid "0BD0CE69-469F-C870-26B3-83905E3889AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_IK_Base_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.7890296508824832 0.18803441524505615 -3.1557986736297585 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg_02_RK_Jnt" -p "L_Leg_01_FK_Jnt";
	rename -uid "5154575A-4490-9D11-60C4-81A1E2B088FB";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.015477464396247852 0.35448768832736516 -3.5111959034939546 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Leg_03_RK_Jnt" -p "L_Leg_02_RK_Jnt";
	rename -uid "5490BC8F-4D47-331A-4374-648D47B3D9B3";
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -2.7619997114322818 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -5 ;
createNode joint -n "L_Leg_04_RK_Jnt" -p "L_Leg_03_RK_Jnt";
	rename -uid "3143134E-43D4-3F2F-3A41-09AE9E1BCD06";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 1.4198331622974698 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Foot_01_RK_Jnt" -p "L_Leg_04_RK_Jnt";
	rename -uid "1722E541-489B-5D12-067E-FA80F5F82FF6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872156385 -0.11246489350220029 69.759457814268629 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Foot_02_RK_Jnt" -p "L_Foot_01_RK_Jnt";
	rename -uid "9465D286-4914-13E7-4BD1-64B366ED0DC9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 25.094271303580335 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Foot_03_RK_Jnt" -p "L_Foot_02_RK_Jnt";
	rename -uid "2B97A7DC-4742-81DB-FDD3-78A339B3E2B3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "L_Foot_03_RK_Jnt_parentConstraint1" -p "L_Foot_03_RK_Jnt";
	rename -uid "3397A40E-4354-9FC0-E893-418E1537D4F2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_03_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Foot_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 3.3750779948604759e-14 
		2.6645352591003757e-15 ;
	setAttr ".tg[1].tot" -type "double3" 0.0030185563273903426 0.011021418618563317 
		6.9722773723412956e-05 ;
	setAttr ".tg[1].tor" -type "double3" -2.3429724013217359e-05 -0.00020343477010241397 
		0.033173292410495006 ;
	setAttr ".lr" -type "double3" -4.541959679522766e-17 2.012942250612278e-17 -6.2119361119782241e-18 ;
	setAttr ".rst" -type "double3" 9.1425663829806787 1.7763568394002505e-15 0 ;
	setAttr ".rsrr" -type "double3" 1.4929096768215414e-21 -2.4264965962505678e-20 -6.2120208709115244e-18 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "L_Foot_03_RK_Jnt_scaleConstraint1" -p "L_Foot_03_RK_Jnt";
	rename -uid "BF7C1059-4FAA-5ED7-5133-8486E35A2C8B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_03_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Foot_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Foot_02_RK_Jnt_parentConstraint1" -p "L_Foot_02_RK_Jnt";
	rename -uid "49210872-40F9-E391-D351-0685D3A8E930";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_02_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Foot_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-15 3.5527136788005009e-14 
		3.5527136788005009e-15 ;
	setAttr ".tg[1].tot" -type "double3" 0.0030200887774665119 0.0057280267904786797 
		3.7261117628695217e-05 ;
	setAttr ".tg[1].tor" -type "double3" -2.342972401321762e-05 -0.00020343477010241476 
		0.033173292410491571 ;
	setAttr ".lr" -type "double3" -4.5719358084891611e-17 1.9603136130407056e-17 -7.8211938815521133e-36 ;
	setAttr ".rst" -type "double3" 12.716406985465774 3.5527136788005009e-15 -2.6645352591003757e-15 ;
	setAttr ".rsrr" -type "double3" -1.653145432436839e-20 -1.1857924055769309e-20 1.7106733827141697e-42 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "L_Foot_02_RK_Jnt_scaleConstraint1" -p "L_Foot_02_RK_Jnt";
	rename -uid "FED6115A-4A3F-6293-1AA1-0EABF5D7978B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_02_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Foot_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Foot_01_RK_Jnt_parentConstraint1" -p "L_Foot_01_RK_Jnt";
	rename -uid "3006ED86-4978-0A49-D3D5-4A947E0F045A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_01_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Foot_01_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-15 3.3750779948604759e-14 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.981770013872047e-16 -2.4848083448933725e-17 
		3.7244947582128315e-15 ;
	setAttr ".tg[1].tot" -type "double3" 0.00030785071187544588 -0.00089437353984145318 
		-5.8334906203327819e-06 ;
	setAttr ".tg[1].tor" -type "double3" 6.5060271364631399e-05 -0.00019416956183694684 
		0.033173292258671959 ;
	setAttr ".lr" -type "double3" 4.9696166897867449e-17 4.2094290714742266e-38 -9.7062825972397362e-20 ;
	setAttr ".rst" -type "double3" -0.024681606807778422 -0.00087748476257409891 0.010261807432263126 ;
	setAttr ".rsrr" -type "double3" 2.484808344893371e-16 4.9696166897867425e-17 -2.9118847791719185e-19 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "L_Foot_01_RK_Jnt_scaleConstraint1" -p "L_Foot_01_RK_Jnt";
	rename -uid "92D97D29-42D5-DC44-E901-E5990675A392";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_01_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Foot_01_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Leg_04_RK_Jnt_parentConstraint1" -p "L_Leg_04_RK_Jnt";
	rename -uid "12918187-4F24-D888-FACA-C799E5D18E69";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_04_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Leg_04_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -4.9737991503207013e-14 -8.8817841970012523e-16 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -9.9392333795734899e-16 ;
	setAttr ".tg[1].tot" -type "double3" 0.00094515496549441025 -6.2945747627551896e-06 
		5.2249884419097725e-09 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 0.033173924417375267 ;
	setAttr ".lr" -type "double3" 0 0 -5.9635400277440939e-16 ;
	setAttr ".rst" -type "double3" 33.278810447817207 3.4638958368304884e-14 0 ;
	setAttr ".rsrr" -type "double3" 0 0 5.9635400277440939e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "L_Leg_04_RK_Jnt_scaleConstraint1" -p "L_Leg_04_RK_Jnt";
	rename -uid "3CD4C69A-4E19-1666-3242-A2B081CE95E9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_04_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Leg_04_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Leg_03_RK_Jnt_parentConstraint1" -p "L_Leg_03_RK_Jnt";
	rename -uid "B93CF611-41F7-DE0B-63BA-17AEB4334379";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_03_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Leg_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -1.7763568394002505e-15 
		-1.7763568394002505e-15 ;
	setAttr ".tg[1].tot" -type "double3" 0.0009505988445042135 -0.019251110762496637 
		5.2249875537313528e-09 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 0.033173924417374677 ;
	setAttr ".lr" -type "double3" 0 0 1.1927080055488182e-15 ;
	setAttr ".rst" -type "double3" 18.899732833631937 -2.2204460492503131e-15 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 7.9513867036587919e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "L_Leg_03_RK_Jnt_scaleConstraint1" -p "L_Leg_03_RK_Jnt";
	rename -uid "1F6BBC3B-4CA4-CD8D-321A-F1AEAF6147E9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_03_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Leg_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Leg_02_RK_Jnt_parentConstraint1" -p "L_Leg_02_RK_Jnt";
	rename -uid "0C7D3336-48F3-4E72-6107-4F907D90DA74";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_02_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Leg_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tor" -type "double3" -1.5530052155583581e-17 0 1.657105096413754e-15 ;
	setAttr ".tg[1].tot" -type "double3" 8.4682530854252036e-07 5.1095736974815509e-08 
		5.2249893300881922e-09 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 -0.058432270251703576 ;
	setAttr ".lr" -type "double3" 1.0871036508908506e-17 1.9412565194479477e-19 -3.9753293662319997e-16 ;
	setAttr ".rst" -type "double3" 3.7890304992639869 0.18803441524505587 -3.1557986736297639 ;
	setAttr ".rsrr" -type "double3" 1.5530052155583578e-17 -4.9793229723839847e-17 -1.5902288093187721e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "L_Leg_02_RK_Jnt_scaleConstraint1" -p "L_Leg_02_RK_Jnt";
	rename -uid "6E894785-47E7-4E93-6F92-F7B30A965DC9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_02_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Leg_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Leg_01_FK_Jnt_parentConstraint1" -p "L_Leg_01_FK_Jnt";
	rename -uid "9DD8CBA9-4131-86AC-3B00-3B98639925B4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.7890304992640012 0.18803441524505615 -3.155798673629763 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_01_FK_Jnt_scaleConstraint1" -p "L_Leg_01_FK_Jnt";
	rename -uid "22A11876-44B4-3D94-9042-DC8414888F78";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Leg_01_FK_Jnt" -p "Pelvis_01_FK_Jnt";
	rename -uid "E11DB097-4FCF-2347-3F17-6BB9D9B59981";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 7.016709298534876e-15 -7.016709298534876e-15 180 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Leg_02_FK_Jnt" -p "R_Leg_01_FK_Jnt";
	rename -uid "B8B2427A-4371-8D27-BCCA-499E1DE72B01";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.0154774644152984 0.35448768832735833 -3.5111959034938818 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "R_Leg_03_FK_Jnt" -p "R_Leg_02_FK_Jnt";
	rename -uid "713C029B-4098-D6F7-C425-77A05A7571E6";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 2.1968198763921701e-14 -9.1125376432272472e-13 -2.7619997114322818 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -5 ;
	setAttr ".radi" 1.5;
createNode joint -n "R_Leg_04_FK_Jnt" -p "R_Leg_03_FK_Jnt";
	rename -uid "14C80154-4800-3445-10A2-32BE6FC9C6F1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 -4.3948611110021477e-13 1.4198331622974301 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "R_Foot_01_FK_Jnt" -p "R_Leg_04_FK_Jnt";
	rename -uid "035AD233-4753-1327-FA4A-40A00616E7AC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872823974 -0.11246489348448331 69.7594578142686 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "R_Foot_02_FK_Jnt" -p "R_Foot_01_FK_Jnt";
	rename -uid "26126B87-44A4-11C8-3721-F19E076C616A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 1.3792860526199398e-13 25.094271303580335 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode joint -n "R_Foot_03_FK_Jnt" -p "R_Foot_02_FK_Jnt";
	rename -uid "49239F50-4BB6-0734-A210-3BBB29D70CE5";
	setAttr ".t" -type "double3" -9.142530014224592 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 -1.8968358107866709e-22 -4.1105811911266416e-21 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.5;
createNode parentConstraint -n "R_Foot_02_FK_Jnt_parentConstraint1" -p "R_Foot_02_FK_Jnt";
	rename -uid "237EA800-42A4-989E-528E-EFA3BD82D880";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -3.907985046680551e-14 
		7.9936057773011271e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.2263882770244617e-14 ;
	setAttr ".lr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" -12.716405920624018 -8.8817841970012523e-16 0 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Foot_02_FK_Jnt_scaleConstraint1" -p "R_Foot_02_FK_Jnt";
	rename -uid "7F6D0A79-4487-FD77-7849-95A3CA9CB045";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Foot_01_FK_Jnt_parentConstraint1" -p "R_Foot_01_FK_Jnt";
	rename -uid "6A4C314A-49BE-2CE6-F0B9-1FA458A03E6E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5987211554602254e-14 -3.5527136788005009e-14 
		8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.8277118964886572e-14 6.9077671988035729e-15 
		-1.3886487323392968e-14 ;
	setAttr ".lr" -type "double3" -2.8351663215233381e-14 -7.1562480332929009e-15 4.4535239378089108e-14 ;
	setAttr ".rst" -type "double3" 0.024678213611855071 0.0008743695595221368 -0.010267509474133796 ;
	setAttr ".rsrr" -type "double3" -2.8326815131784446e-14 -7.0320076160482353e-15 
		3.1813117715061017e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Foot_01_FK_Jnt_scaleConstraint1" -p "R_Foot_01_FK_Jnt";
	rename -uid "EEF3389D-4C38-CDB3-D675-B6ADD16D6EBF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_04_FK_Jnt_parentConstraint1" -p "R_Leg_04_FK_Jnt";
	rename -uid "483BAF46-460B-80D8-E935-65B6B7874A4A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-14 -3.5527136788005009e-15 
		9.7699626167013776e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.3119788061037007e-14 ;
	setAttr ".lr" -type "double3" 0 0 -1.3716142063811414e-14 ;
	setAttr ".rst" -type "double3" -33.278814736890538 0 2.6645352591003757e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.3318572728628474e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_04_FK_Jnt_scaleConstraint1" -p "R_Leg_04_FK_Jnt";
	rename -uid "DA82DD7E-4CE7-BC95-D447-CF9B6D0387AF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_03_FK_Jnt_parentConstraint1" -p "R_Leg_03_FK_Jnt";
	rename -uid "DC4B24BE-4934-6464-5E87-29869A6E3B19";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.1927080055488186e-15 ;
	setAttr ".lr" -type "double3" 0 0 1.1927080055488188e-15 ;
	setAttr ".rst" -type "double3" -18.899738895573272 4.4408920985006262e-16 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 1.1927080055488188e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_03_FK_Jnt_scaleConstraint1" -p "R_Leg_03_FK_Jnt";
	rename -uid "83D3E5C2-463B-3E35-3E7E-D7B39D2E3625";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_02_FK_Jnt_parentConstraint1" -p "R_Leg_02_FK_Jnt";
	rename -uid "7A9BB5FC-44BC-71BE-1C44-D6929884FFB8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 1.3322676295501878e-15 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.8859695337740698e-14 -3.3296431821571193e-15 
		3.1843279988231937e-15 ;
	setAttr ".lr" -type "double3" -1.8859695337740698e-14 3.2512164187714212e-15 -2.8417932859666041e-15 ;
	setAttr ".rst" -type "double3" -3.7889999999999944 -0.18803470000000044 3.1558000000000006 ;
	setAttr ".rsrr" -type "double3" -1.8859695337740698e-14 3.2512164187714212e-15 -2.8417932859666041e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_02_FK_Jnt_scaleConstraint1" -p "R_Leg_02_FK_Jnt";
	rename -uid "4EF46623-497B-1FB9-F80D-E8BD4D5394CD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Leg_02_IK_Jnt" -p "R_Leg_01_FK_Jnt";
	rename -uid "AA450BCD-4BB3-300E-FD9A-D7BD43767F58";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -6.9607676753758595e-09 -2.1692690366405685e-07 0.050832132555491884 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.015477464415298393 0.3544876883273585 -3.5111959034938831 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "R_Leg_03_IK_Jnt" -p "R_Leg_02_IK_Jnt";
	rename -uid "82D26D7F-4C00-5DDB-E1E1-4EAE95F435A1";
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -18.899738895573286 0 0 ;
	setAttr ".r" -type "double3" 0 0 -0.079691518066537487 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -2.7619997114322818 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -5 ;
	setAttr ".radi" 2;
createNode joint -n "R_Leg_04_IK_Jnt" -p "R_Leg_03_IK_Jnt";
	rename -uid "9276D889-41C6-AA71-2595-8C9D17909FF3";
	setAttr ".t" -type "double3" -33.278814736890546 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 1.4198331622974303 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "R_Foot_01_IK_Jnt" -p "R_Leg_04_IK_Jnt";
	rename -uid "89FAD76E-4171-95EA-82EF-B39F3E99DCF3";
	setAttr ".t" -type "double3" 0.024678213611851518 0.0008743695595221368 -0.010267509474131131 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872823974 -0.11246489348448331 69.759457814268629 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "R_Foot_02_IK_Jnt" -p "R_Foot_01_IK_Jnt";
	rename -uid "B6CEDDAE-4332-3406-8D8B-F08D07902A4E";
	setAttr ".t" -type "double3" -12.71640592062402 0 0 ;
	setAttr ".r" -type "double3" 1.1704441227785741e-12 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000004 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 25.094271303580335 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "R_Foot_03_IK_Jnt" -p "R_Foot_02_IK_Jnt";
	rename -uid "D2B7DA5B-40BB-6A00-1F9E-65A88AE4E534";
	setAttr ".t" -type "double3" -9.142530014224592 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode ikEffector -n "effector8" -p "R_Foot_02_IK_Jnt";
	rename -uid "7ED3746B-47DC-FD94-7296-7CB22D980608";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "R_Foot_01_IK_Jnt";
	rename -uid "3C2FB399-4DDD-840A-921E-C9847F2965D6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "R_Leg_04_IK_Jnt_orientConstraint1" -p "R_Leg_04_IK_Jnt";
	rename -uid "4EA8E77E-443E-2F6A-CB5A-8E9524E6A417";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_IK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 83.98875621392142 89.645174592195247 -1.1289740684255545 ;
	setAttr ".o" -type "double3" -89.962706324163364 -4.8821542622126444 89.643951660641861 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 1.5902773407317584e-14 -6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector4" -p "R_Leg_03_IK_Jnt";
	rename -uid "7B64940A-4EBC-7A03-F8EF-C9A3682C79D1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "R_Leg_02_IK_Jnt_pointConstraint1" -p "R_Leg_02_IK_Jnt";
	rename -uid "0E8DDA3D-4CEA-230D-75E5-A0AD09037608";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_IK_Base_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3.789001733398436 -0.18803469347305346 3.1558002082824701 ;
	setAttr -k on ".w0";
createNode joint -n "R_Leg_02_RK_Jnt" -p "R_Leg_01_FK_Jnt";
	rename -uid "0115F0E8-4992-CC42-DE6C-678C91542FA5";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.015477464415298387 0.35448768832735861 -3.511195903493884 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Leg_03_RK_Jnt" -p "R_Leg_02_RK_Jnt";
	rename -uid "589B0E19-4F13-549F-98EA-5893A2BEC847";
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -2.7619997114322818 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -5 ;
createNode joint -n "R_Leg_04_RK_Jnt" -p "R_Leg_03_RK_Jnt";
	rename -uid "6485C67E-44C7-14BF-9225-3EB6C48B3DA6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 1.4198331622974303 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Foot_01_RK_Jnt" -p "R_Leg_04_RK_Jnt";
	rename -uid "D5651251-408D-57F4-783B-CF94AB4673C9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872823974 -0.11246489348448331 69.759457814268629 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Foot_02_RK_Jnt" -p "R_Foot_01_RK_Jnt";
	rename -uid "3DC8B682-4612-A036-BBFF-24AAC575666B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 25.094271303580335 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Foot_03_RK_Jnt" -p "R_Foot_02_RK_Jnt";
	rename -uid "A1D11151-4A31-D0A5-4BBE-68A474ACD07F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "R_Foot_03_RK_Jnt_parentConstraint1" -p "R_Foot_03_RK_Jnt";
	rename -uid "DBC2893D-447A-9A84-E8A8-35911D5B97D6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_03_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Foot_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 2.042810365310288e-14 
		-7.1054273576010019e-15 ;
	setAttr ".tg[1].tot" -type "double3" -0.0026266176193345814 -0.0095920781161362711 
		-6.0873323856291961e-05 ;
	setAttr ".tg[1].tor" -type "double3" -2.0375834458710363e-05 -0.00017697719018201419 
		0.028858835697082905 ;
	setAttr ".lr" -type "double3" -5.5315917315535169e-17 -1.4171830183137199e-18 -3.180554596290927e-15 ;
	setAttr ".rst" -type "double3" -9.142530014224592 0 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 3.0361754340120633e-21 1.2132112715956009e-20 -2.8926976314901516e-27 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "R_Foot_03_RK_Jnt_scaleConstraint1" -p "R_Foot_03_RK_Jnt";
	rename -uid "84196EE9-4CFC-CE64-7057-5AADB593491E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_03_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Foot_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Foot_02_RK_Jnt_parentConstraint1" -p "R_Foot_02_RK_Jnt";
	rename -uid "0C1679C4-4147-D4B5-D2EC-E689E36FC14F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_02_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Foot_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 5.3290705182007514e-15 1.865174681370263e-14 
		-7.1054273576010019e-15 ;
	setAttr ".tg[1].tot" -type "double3" -0.0026277773711731456 -0.0049871532399752283 
		-3.2633560180350685e-05 ;
	setAttr ".tg[1].tor" -type "double3" -2.0375834458710451e-05 -0.00017697719018201465 
		0.028858835697083307 ;
	setAttr ".lr" -type "double3" -5.57519722344236e-17 -1.3081352795835956e-18 -3.180554681463516e-15 ;
	setAttr ".rst" -type "double3" -12.71640592062402 8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 5.1791692977298697e-21 2.2153030183343247e-20 1.001245595681766e-42 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "R_Foot_02_RK_Jnt_scaleConstraint1" -p "R_Foot_02_RK_Jnt";
	rename -uid "A95EE3CC-4AE5-7EFE-2620-9998F1946632";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_02_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Foot_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Foot_01_RK_Jnt_parentConstraint1" -p "R_Foot_01_RK_Jnt";
	rename -uid "BC4F99FD-42DE-FB28-499F-ACB8301E3353";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_01_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Foot_01_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-14 1.7763568394002505e-14 
		-4.4408920985006262e-15 ;
	setAttr ".tg[0].tor" -type "double3" -4.9696166897867437e-17 0 5.2527489531482289e-15 ;
	setAttr ".tg[1].tot" -type "double3" -0.00026626177693245268 0.00077413508966461819 
		4.8557674805493889e-06 ;
	setAttr ".tg[1].tor" -type "double3" 5.6605013446682967e-05 -0.00016891409925557456 
		0.02885883558218829 ;
	setAttr ".lr" -type "double3" -2.4848083448933725e-17 2.4848083448933731e-17 6.3613034885789787e-15 ;
	setAttr ".rst" -type "double3" 0.024678213611849742 0.00087436955952124862 -0.010267509474135572 ;
	setAttr ".rsrr" -type "double3" 2.4848083448933716e-17 7.4544250346801174e-17 -1.2722024600202122e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "R_Foot_01_RK_Jnt_scaleConstraint1" -p "R_Foot_01_RK_Jnt";
	rename -uid "7F5F49E3-4863-30B6-C783-2F864EAF32D8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_01_FK_JntW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Foot_01_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Leg_04_RK_Jnt_parentConstraint1" -p "R_Leg_04_RK_Jnt";
	rename -uid "E54A50DC-4658-3E94-D3D9-C7982E0939CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_04_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Leg_04_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 8.8817841970012523e-16 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.987846675914698e-16 ;
	setAttr ".tg[1].tot" -type "double3" -0.00081801828410554833 5.5768035451819742e-06 
		-1.9759862368573522e-07 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 0.028859385511045478 ;
	setAttr ".lr" -type "double3" 0 0 3.975693351829396e-16 ;
	setAttr ".rst" -type "double3" -33.278814736890538 0 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "R_Leg_04_RK_Jnt_scaleConstraint1" -p "R_Leg_04_RK_Jnt";
	rename -uid "C390D7F2-4E69-3992-4A0E-9EBBBC9B5440";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_04_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Leg_04_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Leg_03_RK_Jnt_parentConstraint1" -p "R_Leg_03_RK_Jnt";
	rename -uid "64FC13A4-46FE-4751-F21E-C7B2260D23E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_03_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Leg_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-14 -8.8817841970012523e-16 
		-1.7763568394002505e-15 ;
	setAttr ".tg[1].tot" -type "double3" -0.00082212681288496015 0.016747554705965229 
		-1.9759862190937838e-07 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 0.028859385511045266 ;
	setAttr ".lr" -type "double3" 0 0 3.975693351829395e-16 ;
	setAttr ".rst" -type "double3" -18.899738895573293 8.8817841970012523e-16 1.7763568394002505e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "R_Leg_03_RK_Jnt_scaleConstraint1" -p "R_Leg_03_RK_Jnt";
	rename -uid "0F5AECD3-4262-6B74-3EFA-B7A96D015363";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_03_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Leg_03_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Leg_02_RK_Jnt_parentConstraint1" -p "R_Leg_02_RK_Jnt";
	rename -uid "F9E18CE7-48BA-A081-C845-6E8BE0A1032D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_02_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Leg_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 4.4408920985006262e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 3.1060104311167156e-18 1.4908850069360235e-16 
		-9.0826539403670825e-16 ;
	setAttr ".tg[1].tot" -type "double3" 1.7318875009664225e-06 9.8054984576378956e-08 
		-1.9759862546209206e-07 ;
	setAttr ".tg[1].tor" -type "double3" 6.2120208622334312e-18 0 -0.050832132555492293 ;
	setAttr ".lr" -type "double3" 3.1060104311167152e-18 -1.4899143786762996e-16 3.9760573374267927e-16 ;
	setAttr ".rst" -type "double3" -3.7890000000000015 -0.18803469999999972 3.1557999999999997 ;
	setAttr ".rsrr" -type "double3" 4.6590156466750711e-18 -1.4870024938971271e-16 1.1927565369618049e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "R_Leg_02_RK_Jnt_scaleConstraint1" -p "R_Leg_02_RK_Jnt";
	rename -uid "36D01C06-45C1-E14C-936B-CA868F6100C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_02_FK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_Leg_02_IK_JntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Leg_01_FK_Jnt_parentConstraint1" -p "R_Leg_01_FK_Jnt";
	rename -uid "4672B49E-4BAF-D1DA-4457-2AB52213BCDD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".rst" -type "double3" 3.7890507873535171 0.18803443504028319 3.1558000000000006 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_01_FK_Jnt_scaleConstraint1" -p "R_Leg_01_FK_Jnt";
	rename -uid "85C708DA-4947-3380-3127-8F8B77AA557F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pelvis_01_FK_Jnt_parentConstraint1" -p "Pelvis_01_FK_Jnt";
	rename -uid "C771EBC5-4EF4-8ACA-1BA6-2DBF4EF0FCEE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Pelvis_01_FK_Jnt_scaleConstraint1" -p "Pelvis_01_FK_Jnt";
	rename -uid "73221D9A-4CF5-92D6-08EA-DDB4B4A2F843";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "COG_Jnt_parentConstraint1" -p "COG_Jnt";
	rename -uid "62F0A15A-4F28-41A4-1A3C-C3A276B7F12C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "COG_Jnt_scaleConstraint1" -p "COG_Jnt";
	rename -uid "3A86BCC2-43C8-0A90-BF43-379E7503948C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Hand_01_FK_Jnt" -p "Skeleton";
	rename -uid "79747DA2-4CC3-B9F1-BAB8-579830C05F42";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -89.983176540731733 0.63517301505925605 -1.3429893242056095 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.25;
createNode joint -n "R_Finger_01_Knuckle_01_FK_Jnt" -p "R_Hand_01_FK_Jnt";
	rename -uid "9F76FA64-4C85-93F4-3BEE-B0A94C1C7AE4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 88.656824177087643 0.01682242550840423 89.364826957562087 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_01_Knuckle_02_FK_Jnt" -p "R_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "C4790255-46C6-8AC3-B8AA-3D8F32CAE031";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 4.2928659695229845 -25.469866719530053 54.373605364405073 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_01_Knuckle_03_FK_Jnt" -p "R_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "F8F13761-40C8-B850-93C3-BC8A2FE17B30";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -0.37571711577720829 -29.209601892891438 3.60729166364372 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_01_Knuckle_04_FK_Jnt" -p "R_Finger_01_Knuckle_03_FK_Jnt";
	rename -uid "3A145218-44D3-EA2E-AAF4-7D9C38ED47EF";
	setAttr ".t" -type "double3" -3.7293213574972301 -2.4175871040199581e-05 4.3936434579450179e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -54.327024547465115 0 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1" 
		-p "R_Finger_01_Knuckle_03_FK_Jnt";
	rename -uid "28010781-40DC-5408-F7C5-A39C55291183";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_03_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 7.1054273576010019e-15 
		-1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.6499127410091997e-14 1.9083328088781101e-14 
		-9.0695504588608091e-15 ;
	setAttr ".lr" -type "double3" -1.5703988739726117e-14 -2.1714118923936955e-14 1.1653751137549919e-14 ;
	setAttr ".rst" -type "double3" -3.3333566172594189 2.9002132968969363e-05 -4.1612826152004345e-05 ;
	setAttr ".rsrr" -type "double3" -1.5803381073521852e-14 -2.175139104911036e-14 8.2744117884949338e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_01_Knuckle_03_FK_Jnt";
	rename -uid "0E3ED2B5-4E03-9DEE-2C02-689E7B4119A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_03_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "R_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "9FF66C77-409D-F462-1007-0F9126E9C177";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 0 2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781101e-14 1.9083328088781104e-14 
		2.7829853462805776e-15 ;
	setAttr ".lr" -type "double3" -2.0673605429512861e-14 -1.8288189418415221e-14 4.7708320221952783e-15 ;
	setAttr ".rst" -type "double3" -3.0522180000000163 -0.69160000000002242 -1.1789999999999807 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-14 -1.8288189418415221e-14 
		4.7708320221952783e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "95BF1039-46AC-1ABE-F8E5-9DB538F59BFB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "R_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "298B85F3-409B-4B58-22D8-0B802AAEB222";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.1102230246251565e-16 1.4210854715202004e-14 
		-7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.9282112756372564e-14 1.0498315257174499e-15 
		-4.4509129477902536e-14 ;
	setAttr ".lr" -type "double3" 1.9083328088781104e-14 6.3611093629270264e-15 4.4527765540489235e-14 ;
	setAttr ".rst" -type "double3" -2.0471587998276277 -0.47025121604991482 -0.21917722508494819 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781104e-14 6.3611093629270264e-15 4.4527765540489235e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "C2DBDA85-4520-0C3E-4F91-66A068870D25";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Finger_02_Knuckle_01_FK_Jnt" -p "R_Hand_01_FK_Jnt";
	rename -uid "E8CE8760-49F4-D247-4A6E-879713E2ADC2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 96.984319633482997 -21.446472576163387 0.81102226025629609 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_02_Knuckle_02_FK_Jnt" -p "R_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "0D7CFD2E-40CF-E746-B3A4-268C16CCC79F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 9.2722513302792285e-16 4.5720473546038028e-15 22.92854923609535 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_02_Knuckle_03_FK_Jnt" -p "R_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "592DDAD7-4F37-2EA6-4D4B-6EB2D7382F6A";
	setAttr ".t" -type "double3" -3.6925677296029242 -1.8778434380806175e-05 6.5169293961275798e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "R_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "E2AE8ED4-483C-CDBD-41B2-37AE208D3DEE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_02_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.4868995751603507e-14 -5.6843418860808015e-14 
		3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" -3.0966790240319835 1.4610952476346029e-05 -2.6145914908681789e-06 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "F3050207-4CF2-EC3F-0E32-2997C2B62DB8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_02_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "R_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "F6E76213-410D-B1FA-CB4A-AE8448D233FE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_02_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 1.033680271475643e-14 -6.3611093629270335e-15 ;
	setAttr ".lr" -type "double3" 4.3732626870123352e-15 -1.1131941385122309e-14 4.7708320221952744e-15 ;
	setAttr ".rst" -type "double3" -8.3750917141169268 -3.0746619690990178 -0.22513910901000145 ;
	setAttr ".rsrr" -type "double3" 4.3732626870123352e-15 -1.1131941385122309e-14 7.9513867036587919e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "0C4397C6-45A1-5B6B-F25D-4181F07B0E95";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_02_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Finger_03_Knuckle_01_FK_Jnt" -p "R_Hand_01_FK_Jnt";
	rename -uid "6D694431-4D9D-A322-A93A-9C9EC91D0222";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 90.214072174133662 -20.434713950500633 -0.12703297212552028 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_03_Knuckle_02_FK_Jnt" -p "R_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "59AEED80-42A4-3D4F-59E4-089855531418";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -1.2722445732028495e-16 -9.4422717105948031e-16 15.347549166690049 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_03_Knuckle_03_FK_Jnt" -p "R_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "9EFBE78A-4F4D-D1A1-0D94-94966D9E378E";
	setAttr ".t" -type "double3" -4.0526169868999053 -2.6748568856760357e-05 2.8375209359943199e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "R_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "42986520-4B63-C001-AE22-0CBAF14B181F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_03_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.6185277824406512e-14 -9.9475983006414026e-14 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -6.9972202992197363e-14 ;
	setAttr ".lr" -type "double3" 0 0 6.3611093629270335e-14 ;
	setAttr ".rst" -type "double3" -3.2946304711159531 1.3854961267156796e-05 -1.0113538895240026e-08 ;
	setAttr ".rsrr" -type "double3" 0 0 6.9972202992197363e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "F103F6AC-4293-503E-6662-708D0FE17B05";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_03_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "R_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "318F566B-4A0B-D877-DEFC-37AEB5EAAD36";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_03_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.2434497875801753e-14 1.4210854715202004e-14 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -2.5494133618605995e-14 6.3983814881004342e-15 
		1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" 1.8685758753598154e-14 -6.3611093629270304e-15 -1.1131941385122307e-14 ;
	setAttr ".rst" -type "double3" -8.6573981715691133 -0.7397089205864309 0.21737428945671411 ;
	setAttr ".rsrr" -type "double3" 2.5046868116525194e-14 -7.9513867036587903e-15 -9.5416640443905519e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "45F7C4F7-4271-D254-9AC4-939A93FB7AC3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_03_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".w0";
createNode joint -n "R_Hand_Cup_01_FK_Jnt" -p "R_Hand_01_FK_Jnt";
	rename -uid "523829A1-4EF2-3962-19F8-A5ABD9B298B6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 89.983172950910102 -1.3431757650076603 -0.6347786047453734 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_04_Knuckle_01_FK_Jnt" -p "R_Hand_Cup_01_FK_Jnt";
	rename -uid "C56660D8-4ABA-E382-7B95-77BBC6B34E00";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -6.5870617948139412 -0.074524456937272471 19.831777082974597 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_04_Knuckle_02_FK_Jnt" -p "R_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "6C61C6E1-48A6-4B58-5966-63B1ABF99EAC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 5.4134697389850784e-15 3.4588532160915697e-14 17.790460952726566 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_04_Knuckle_03_FK_Jnt" -p "R_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "3E8C653F-4E94-A1D5-6D4B-45B817179DE3";
	setAttr ".t" -type "double3" -3.9073785012113333 1.9181435845894157e-05 1.8445434282199358e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "R_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "66966D26-467A-CA20-DFB3-F58F1817BDE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_04_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.6185277824406512e-14 7.1054273576010019e-14 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.5902773407317584e-14 ;
	setAttr ".lr" -type "double3" 0 0 1.5902773407317584e-14 ;
	setAttr ".rst" -type "double3" -3.0461486323296949 3.6275829856435848e-05 6.3187344174764348e-06 ;
	setAttr ".rsrr" -type "double3" 0 0 1.5902773407317584e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "72D3B669-4987-032B-9371-BBACD89C4D54";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_04_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "R_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "6B6FAF1E-43D0-A1FD-26D6-A18412D13847";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_04_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.4868995751603507e-14 1.4210854715202004e-14 
		-5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905519e-15 8.9825821667895417e-15 
		-2.1285489484442853e-14 ;
	setAttr ".lr" -type "double3" 7.82714628641412e-15 -9.3428793767990787e-15 1.8611214503251355e-14 ;
	setAttr ".rst" -type "double3" -5.9966999999999899 -0.053300000000035652 0.44211999999998142 ;
	setAttr ".rsrr" -type "double3" 9.4422717105948106e-15 -9.7404487119820203e-15 2.1779345142990408e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "788405CD-49FD-AA10-93EE-6B9F695CA955";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_04_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode joint -n "R_Finger_05_Knuckle_02_FK_Jnt" -p "R_Hand_Cup_01_FK_Jnt";
	rename -uid "50116F4E-46A5-E6B6-2DE7-5B9A53876697";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -10.099488601197805 0.1313420252151401 26.395094951067758 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_05_Knuckle_03_FK_Jnt" -p "R_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "19942F26-4099-B68D-E940-E98A30470943";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 7.4227864191170342e-15 5.0093736233050344e-14 16.857278106024363 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Finger_05_Knuckle_04_FK_Jnt" -p "R_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "C6701982-4B57-621E-25D0-218A00B00F12";
	setAttr ".t" -type "double3" -3.433405472204214 1.7324891359749017e-05 6.1797532833196556e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1" 
		-p "R_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "05CF30F5-4BE1-733D-4BE9-03BE094E6C83";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_05_Knuckle_03_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.9487523534044158e-13 1.1226575225009583e-12 
		-1.2612133559741778e-13 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.5444437451708134e-14 ;
	setAttr ".lr" -type "double3" 0 0 -2.8624992133171648e-14 ;
	setAttr ".rst" -type "double3" -2.3815183148368759 -8.6495527838792441e-05 -1.4665522057200064e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.2263882770244611e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "0EB52863-445A-6225-B916-EBBF09BF4D13";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_05_Knuckle_03_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "R_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "BED74701-40E1-04AF-EF33-35A4F7127264";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_05_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -5.6843418860808015e-14 -8.8817841970012523e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.7493050748049344e-14 8.1998675381481294e-15 
		-4.4757610312391875e-15 ;
	setAttr ".lr" -type "double3" 1.1628903054100984e-14 -7.5538173684758519e-15 -3.8266048511357943e-15 ;
	setAttr ".rst" -type "double3" -5.9571000000000041 -0.86489999999997735 -1.7271200000000242 ;
	setAttr ".rsrr" -type "double3" 1.5008242403155969e-14 -7.5538173684758519e-15 -6.7089825312121153e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "E4B3F6A7-4744-C024-E5BE-2B992B7159A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_05_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Hand_Cup_01_FK_Jnt_parentConstraint1" -p "R_Hand_Cup_01_FK_Jnt";
	rename -uid "A9C60BCA-4EB8-2F45-0C66-56A22ED6B7F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.8160842990739437e-14 1.8828183891288758e-13 
		8.408591439119172e-14 ;
	setAttr ".lr" -type "double3" 2.2781033507025689e-14 -1.8814968787532614e-13 -8.3489560388417347e-14 ;
	setAttr ".rst" -type "double3" -2.6094737698135191 1.9102921206894072 0.091912549127840748 ;
	setAttr ".rsrr" -type "double3" 2.2781033507025689e-14 -1.8814968787532614e-13 -8.3489560388417347e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Hand_Cup_01_FK_Jnt_scaleConstraint1" -p "R_Hand_Cup_01_FK_Jnt";
	rename -uid "3514925E-4F2D-6ADE-4B8C-0FA5740712FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Hand_01_FK_Jnt_parentConstraint1" -p "R_Hand_01_FK_Jnt";
	rename -uid "70F66D41-43FD-DF9E-AD64-258360CCFDC1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-14 2.2204460492503131e-16 
		5.6843418860808015e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.2424041724466862e-17 1.2848691588096101e-16 
		-3.975693351829396e-16 ;
	setAttr ".lr" -type "double3" 1.5530052155583634e-18 -1.0436195048552165e-15 -5.9635400277440939e-16 ;
	setAttr ".rst" -type "double3" -40.307799759289999 96.203811011042717 -0.78775157191785206 ;
	setAttr ".rsrr" -type "double3" -3.8825130388958945e-18 -4.9696166897867449e-17 
		1.987846675914698e-16 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Hand_01_FK_Jnt_scaleConstraint1" -p "R_Hand_01_FK_Jnt";
	rename -uid "D225E263-490B-2EDE-8896-84856CFFD641";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "L_Hand_01_FK_Jnt" -p "Skeleton";
	rename -uid "5BCC86E7-4C90-165D-0DDF-8E89F864AA4D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 90.016823459266931 -0.63517301505935997 1.3429893242058291 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 1.25;
createNode joint -n "L_Finger_01_Knuckle_01_FK_Jnt" -p "L_Hand_01_FK_Jnt";
	rename -uid "67960DD0-4F4E-635F-D3E0-57BF54AE88B4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 88.656824177087458 0.016822425507043295 89.364826957561988 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_01_Knuckle_02_FK_Jnt" -p "L_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "52955276-4BF6-850F-C884-F99747FFD613";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 4.2928659695229827 -25.469866719530049 54.373605364405073 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_01_Knuckle_03_FK_Jnt" -p "L_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "30F54751-4E0D-6498-3A91-9B956DC8F404";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -0.37571711577687489 -29.209601892891417 3.6072916636437253 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_01_Knuckle_04_FK_Jnt" -p "L_Finger_01_Knuckle_03_FK_Jnt";
	rename -uid "E2AB16BB-498A-791A-DA77-738C44927EC2";
	setAttr ".t" -type "double3" 3.7293116330758647 -1.4210854715202004e-14 1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -54.327024547465449 1.9083328088781101e-14 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1" 
		-p "L_Finger_01_Knuckle_03_FK_Jnt";
	rename -uid "453BDEE8-42B5-01EB-7631-A695A3FBAD7E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_03_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7533531010703882e-14 -4.2632564145606011e-14 
		7.1054273576010019e-14 ;
	setAttr ".tg[0].tor" -type "double3" 7.4047288677822504e-14 8.5874976399514962e-14 
		-1.0299530589583031e-13 ;
	setAttr ".lr" -type "double3" -1.1350604519472932e-13 2.2224747038812537e-13 -4.3608386452878902e-14 ;
	setAttr ".rst" -type "double3" 3.3333777555323749 -7.1054273576010019e-15 2.8421709430404007e-14 ;
	setAttr ".rsrr" -type "double3" -7.4345465679209778e-14 -8.9012046934942762e-14 
		1.0443649473586852e-13 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_01_Knuckle_03_FK_Jnt";
	rename -uid "83301923-4E51-FA76-E714-288F00EB693D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_03_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "L_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "DAED5069-4FD7-B7C1-90C2-AC8D68A022FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.6843418860808015e-14 -2.8421709430404007e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 1.3517357396219947e-13 7.6333312355124428e-14 
		-5.3473075582105385e-14 ;
	setAttr ".lr" -type "double3" -2.3059021440610499e-13 7.3947896344026586e-14 -9.1043377756893321e-14 ;
	setAttr ".rst" -type "double3" 3.0522225473461186 0.6916297633857198 1.1790508445751797 ;
	setAttr ".rsrr" -type "double3" -1.3676385130293126e-13 -7.3947896344026712e-14 
		4.6913181551586969e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "98E1BEBE-4AD0-8BB6-C9A3-7A93AF6D6F6F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "L_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "FDEA6493-4DEB-5339-6B02-4AAD7FDBC251";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.3266726846886741e-16 -9.9475983006414026e-14 
		-4.2632564145606011e-14 ;
	setAttr ".tg[0].tor" -type "double3" 6.1623246953355635e-15 1.1443949839210582e-13 
		2.6866990229159599e-15 ;
	setAttr ".lr" -type "double3" -9.5416640443905503e-15 -1.2722218725854067e-13 1.0593375115320383e-29 ;
	setAttr ".rst" -type "double3" 2.0471668234809997 0.47025145090340115 0.21914660359867355 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-15 -1.2722218725854067e-13 
		1.0593375115320383e-29 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "14BE0A25-4B9B-DD42-64AF-F39200F17C58";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode joint -n "L_Finger_02_Knuckle_01_FK_Jnt" -p "L_Hand_01_FK_Jnt";
	rename -uid "0CD22FEA-42AE-A8A2-BBEE-33B6630F890B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 96.984319633484418 -21.446472576163632 0.81102226025566126 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_02_Knuckle_02_FK_Jnt" -p "L_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "800A3226-4377-1631-2953-268BBEDEE4DC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 22.928549236095364 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_02_Knuckle_03_FK_Jnt" -p "L_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "93DE3B7D-4261-9C19-18FC-C6A93F7B331D";
	setAttr ".t" -type "double3" 3.6925445402917241 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "L_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "4496DEBC-47D8-C76E-7388-70A377490CE6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_02_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 -2.8421709430404007e-14 
		1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr ".lr" -type "double3" 0 0 -1.3676385130293123e-13 ;
	setAttr ".rst" -type "double3" 3.0966687641577852 -4.2632564145606011e-14 4.0856207306205761e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "E9588B68-4A2F-136A-9084-1AB0623DB3B2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_02_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "L_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "4E5B6B41-4C52-53B1-3555-968414F72E16";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_02_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-15 -8.5265128291212022e-14 
		1.0658141036401503e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.041631658179302e-13 -3.7769086842379268e-14 
		1.5902773407317587e-14 ;
	setAttr ".lr" -type "double3" -2.3854160110976379e-13 2.3854160110975872e-14 -2.4172215579122731e-13 ;
	setAttr ".rst" -type "double3" 8.375128291781472 3.0746614791383138 0.22513083948678059 ;
	setAttr ".rsrr" -type "double3" -9.8199625790186077e-14 3.6576378836830429e-14 -1.5902773407317615e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "B968CF27-45C5-C9E4-EDBA-8D9E714409BC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_02_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000007 1.0000000000000009 ;
	setAttr -k on ".w0";
createNode joint -n "L_Finger_03_Knuckle_01_FK_Jnt" -p "L_Hand_01_FK_Jnt";
	rename -uid "35A4520F-4FE1-F6F8-66E3-9DB03C1BF16C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 90.214072174135083 -20.434713950500829 -0.12703297212613512 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_03_Knuckle_02_FK_Jnt" -p "L_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "41173413-4078-11BA-D212-9FA9712210F5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 15.347549166690071 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_03_Knuckle_03_FK_Jnt" -p "L_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "3E315B94-4082-4DE6-1BB4-DBBF5BC1E592";
	setAttr ".t" -type "double3" 4.0526140746727553 0 -7.7715611723760958e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "L_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "087D7CD1-4CBA-8569-86A2-4BA6D821AEE2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_03_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.8619775700208265e-14 -1.2789769243681803e-13 
		1.1102230246251565e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -7.3152757673660883e-14 ;
	setAttr ".lr" -type "double3" 0 0 -9.5416640443905497e-14 ;
	setAttr ".rst" -type "double3" 3.2946389742747524 -1.4210854715202004e-13 8.1712414612411521e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 6.9972202992197363e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "4507BE30-456C-FE2A-8042-A1BEF879E63E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_03_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "L_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "3D312BBC-4C0C-B038-5C12-5986B1F2DF4C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_03_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 1.1449996853268659e-13 -5.2590968619668242e-14 
		-6.3611093629270351e-15 ;
	setAttr ".lr" -type "double3" -1.4113711398994362e-13 5.565970692561127e-14 -2.115068863173239e-13 ;
	setAttr ".rst" -type "double3" 8.65743913646061 0.73970838377729786 -0.21736931773047274 ;
	setAttr ".rsrr" -type "double3" -1.0217531914201545e-13 5.2479152244148028e-14 7.9513867036587446e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "450CDA1F-40B9-01E2-25F0-7AB8CD07F130";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_03_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -k on ".w0";
createNode joint -n "L_Hand_Cup_01_FK_Jnt" -p "L_Hand_01_FK_Jnt";
	rename -uid "73AE5C83-4AF2-4C04-3AA5-D381DDE88DF3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 89.983172950911452 -1.3431757650077694 -0.63477860474570891 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_04_Knuckle_01_FK_Jnt" -p "L_Hand_Cup_01_FK_Jnt";
	rename -uid "9C90F7CB-4278-C0F5-18A1-3CB4DF19DE76";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -6.5870617948139651 -0.074524456937090588 19.831777082974714 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_04_Knuckle_02_FK_Jnt" -p "L_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "34CE5D4F-4979-D297-D43C-8796BFBCA9B5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 17.790460952726576 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_04_Knuckle_03_FK_Jnt" -p "L_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "43244967-4D8C-8CDE-DF92-F89DF6426E36";
	setAttr ".t" -type "double3" 3.9073653391879066 -1.4210854715202004e-14 5.3290705182007514e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "L_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "11F42C41-4F92-FCC7-F8B6-2EA7A1E32BB3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_04_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 0 -1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.5902773407317587e-14 ;
	setAttr ".lr" -type "double3" 0 0 -3.4986101496098681e-14 ;
	setAttr ".rst" -type "double3" 3.046105210565818 8.5265128291212022e-14 3.730349362740526e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317584e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "052D357C-4F77-9513-AA43-5F85DFDF4CE4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_04_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999956 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "L_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "16D50E63-45D8-A7C9-E913-BEACD47CFEE1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_04_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.2632564145606011e-14 -4.2632564145606011e-14 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 9.7802056455003137e-14 -3.3930057949519007e-14 
		-1.0106957942853793e-14 ;
	setAttr ".lr" -type "double3" -9.9292941461939168e-14 3.2004331482226638e-14 1.9008783838434019e-15 ;
	setAttr ".rst" -type "double3" 5.9967835317562361 0.053296098651046009 -0.44211549384583337 ;
	setAttr ".rsrr" -type "double3" -9.7951144955696742e-14 3.3992178158141344e-14 8.3986522057395694e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "3A4FD897-44D9-DD57-008A-2798BFFB55B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_04_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".w0";
createNode joint -n "L_Finger_05_Knuckle_02_FK_Jnt" -p "L_Hand_Cup_01_FK_Jnt";
	rename -uid "E31537D0-42B0-7E62-00E3-D6A0443B0B53";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -10.099488601197866 0.13134202521530944 26.395094951067836 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_05_Knuckle_03_FK_Jnt" -p "L_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "26587548-45D0-6218-4B4A-7585A17F42E8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 16.857278106024378 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Finger_05_Knuckle_04_FK_Jnt" -p "L_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "C0DDF38D-43B8-1528-EBB6-DB98C34051B1";
	setAttr ".t" -type "double3" 3.4333581167632801 -2.8421709430404007e-14 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1" 
		-p "L_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "B7573335-445C-5BB3-64EE-CFADF24D02EA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_05_Knuckle_03_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4921397450962104e-13 -4.8316906031686813e-13 
		1.5987211554602254e-13 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.5902773407317581e-14 ;
	setAttr ".lr" -type "double3" 0 0 -5.7249984266343296e-14 ;
	setAttr ".rst" -type "double3" 2.3815401405463592 -6.1106675275368616e-13 1.6875389974302379e-13 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.2722218725854064e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "6AA4C39D-43F1-6C92-1CD2-61A5A56335E9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_05_Knuckle_03_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "L_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "BE5B2B96-48C1-CBF1-87EB-1AA240B861A8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_05_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.9309887850104133e-14 5.6843418860808015e-14 
		-7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905497e-14 -3.4638228327813612e-14 
		-7.9277810243823054e-14 ;
	setAttr ".lr" -type "double3" -9.8497802791573263e-14 3.2203116149818177e-14 7.6432704688920118e-14 ;
	setAttr ".rst" -type "double3" 5.9571259389828057 0.86494923585811989 1.727121881413562 ;
	setAttr ".rsrr" -type "double3" -9.6311171448067068e-14 3.2998254820184051e-14 8.6123457234004259e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "A5C5ED4D-484F-2BD2-8BD2-5FB87E91A004";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_05_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Hand_Cup_01_FK_Jnt_parentConstraint1" -p "L_Hand_Cup_01_FK_Jnt";
	rename -uid "E07BA6C0-4C89-40CA-61AD-AAA42B75B136";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -4.2632564145606011e-14 1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 8.25608632695134e-14 -1.264621853311768e-14 
		-1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" -8.2566298787767865e-14 9.5913602112884225e-15 5.168401357378208e-15 ;
	setAttr ".rst" -type "double3" 2.6094838232571291 -1.9102878729137895 -0.091915605298339642 ;
	setAttr ".rsrr" -type "double3" -8.2485542516558836e-14 1.2871307226547677e-14 1.2921003393445529e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Hand_Cup_01_FK_Jnt_scaleConstraint1" -p "L_Hand_Cup_01_FK_Jnt";
	rename -uid "1E8F2B85-41BA-C654-C91E-0BBFD2F635FC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Hand_01_FK_Jnt_parentConstraint1" -p "L_Hand_01_FK_Jnt";
	rename -uid "3B6F5321-4303-A1AB-B3E1-0889EA4DF536";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-14 8.8817841970012523e-16 
		7.1054273576010019e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.5503451649899345e-14 2.0882096379701569e-15 
		1.5902773407317584e-15 ;
	setAttr ".lr" -type "double3" 3.8168985685385537e-14 -1.987846675914698e-16 -6.6212635522660992e-32 ;
	setAttr ".rst" -type "double3" 40.307750701904297 96.20380020141603 -0.78774988651275601 ;
	setAttr ".rsrr" -type "double3" 4.454251909003703e-14 -2.1866313435061664e-15 -1.6399735076296263e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Hand_01_FK_Jnt_scaleConstraint1" -p "L_Hand_01_FK_Jnt";
	rename -uid "A7F9F3B2-48F5-430D-536D-4DBA5BFE9163";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Skeleton_scaleConstraint1" -p "Skeleton";
	rename -uid "CA78112A-4A24-5D7A-7873-CFA525741E6D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ROOT_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Controls";
	rename -uid "E7EC0705-4303-4B4E-713F-B39C0BD578EE";
createNode transform -n "ROOT_Ctrl_Grp" -p "Controls";
	rename -uid "8233BCC6-42DA-2B01-E668-74867D49F137";
createNode transform -n "ROOT_Ctrl" -p "ROOT_Ctrl_Grp";
	rename -uid "B481A136-42DE-74E1-7319-90986C645124";
	addAttr -ci true -sn "L_Arm_IKFK" -ln "L_Arm_IKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "R_Arm_IKFK" -ln "R_Arm_IKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "L_Leg_IKFK" -ln "L_Leg_IKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "R_Leg_IKFK" -ln "R_Leg_IKFK" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr -k on ".L_Arm_IKFK";
	setAttr -k on ".R_Arm_IKFK";
	setAttr -k on ".L_Leg_IKFK";
	setAttr -k on ".R_Leg_IKFK";
createNode nurbsCurve -n "ROOT_CtrlShape" -p "ROOT_Ctrl";
	rename -uid "3799FB38-4279-F985-8B56-EBBD028195AA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		43.260236600309774 -3.3306690738754696e-16 -43.260236600309803
		3.7461463878218582e-15 -3.3306690738754696e-16 -61.179213311627038
		-43.260236600309774 -3.3306690738754696e-16 -43.260236600309788
		-61.179213311627045 -3.3306690738754696e-16 -2.1558906543358256e-14
		-43.260236600309774 -3.3306690738754696e-16 43.260236600309753
		-6.1283636398055594e-15 -3.3306690738754696e-16 61.179213311627038
		43.260236600309774 -3.3306690738754696e-16 43.260236600309746
		61.179213311627045 -3.3306690738754696e-16 -1.0044377603561156e-14
		43.260236600309774 -3.3306690738754696e-16 -43.260236600309803
		3.7461463878218582e-15 -3.3306690738754696e-16 -61.179213311627038
		-43.260236600309774 -3.3306690738754696e-16 -43.260236600309788
		;
createNode transform -n "COG_Ctrl_Grp" -p "Controls";
	rename -uid "D60AC471-470A-DCA0-8C51-57BF0C11BD16";
createNode transform -n "COG_Ctrl" -p "COG_Ctrl_Grp";
	rename -uid "B467996A-427A-B027-09E1-DEA2621B11BC";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "COG_CtrlShape" -p "COG_Ctrl";
	rename -uid "25E39376-4EF8-A2D9-7E6B-EF9DCC25DEFC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		27.100893404508053 -3.3306690738754696e-16 -27.100893404508067
		2.3468182773026275e-15 -3.3306690738754696e-16 -38.326451005082852
		-27.100893404508053 -3.3306690738754696e-16 -27.10089340450806
		-38.326451005082852 -3.3306690738754696e-16 -1.3505835244209446e-14
		-27.100893404508053 -3.3306690738754696e-16 27.100893404508042
		-3.8391868098392267e-15 -3.3306690738754696e-16 38.326451005082845
		27.100893404508053 -3.3306690738754696e-16 27.100893404508039
		38.326451005082852 -3.3306690738754696e-16 -6.2924206648187786e-15
		27.100893404508053 -3.3306690738754696e-16 -27.100893404508067
		2.3468182773026275e-15 -3.3306690738754696e-16 -38.326451005082852
		-27.100893404508053 -3.3306690738754696e-16 -27.10089340450806
		;
createNode parentConstraint -n "COG_Ctrl_Grp_parentConstraint1" -p "COG_Ctrl_Grp";
	rename -uid "D6833B56-4BE1-E83E-EFAC-D19B5424DD30";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ROOT_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".rst" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "COG_Ctrl_Grp_parentConstraint2" -p "COG_Ctrl_Grp";
	rename -uid "DCF38EEC-41FE-2DBC-409F-2EB2067D2B46";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ROOT_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".rst" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "COG_Ctrl_Grp_scaleConstraint1" -p "COG_Ctrl_Grp";
	rename -uid "309CD6A5-42BA-3C77-6386-6DB3BD3F29E9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ROOT_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Pelvis_Ctrl_Grp" -p "Controls";
	rename -uid "179B9DA9-479B-CE84-39AF-DDA890098EA4";
createNode transform -n "Pelvis_01_FK_Ctrl_Grp" -p "Pelvis_Ctrl_Grp";
	rename -uid "D97A68F4-4BFD-77B2-9132-3580D3C196A0";
createNode transform -n "Pelvis_01_FK_Ctrl" -p "Pelvis_01_FK_Ctrl_Grp";
	rename -uid "7349DBF3-4B04-94DD-2B0D-8881FB19A632";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Pelvis_01_FK_CtrlShape" -p "Pelvis_01_FK_Ctrl";
	rename -uid "7B688938-4202-711A-A423-AABB2858BF22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.63062744510425 10.800606773845676 -10.800606773845669
		3.63062744510425 15.274364581431264 -9.3528508468297451e-16
		3.63062744510425 10.800606773845672 10.800606773845669
		3.63062744510425 5.3825242381414411e-15 15.274364581431266
		3.63062744510425 -10.800606773845663 10.800606773845669
		3.63062744510425 -15.274364581431263 1.5300435467382407e-15
		3.63062744510425 -10.800606773845661 -10.800606773845669
		3.63062744510425 2.5077387760590629e-15 -15.274364581431266
		3.63062744510425 10.800606773845676 -10.800606773845669
		3.63062744510425 15.274364581431264 -9.3528508468297451e-16
		3.63062744510425 10.800606773845672 10.800606773845669
		;
createNode parentConstraint -n "Pelvis_01_FK_Ctrl_Grp_parentConstraint1" -p "Pelvis_01_FK_Ctrl_Grp";
	rename -uid "E640AFFE-44E0-D2EB-CDFD-9FB03E32A2EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 90 0 -90 ;
	setAttr ".lr" -type "double3" 90 0 -90 ;
	setAttr ".rst" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".rsrr" -type "double3" 90 0 -90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pelvis_01_FK_Ctrl_Grp_parentConstraint2" -p "Pelvis_01_FK_Ctrl_Grp";
	rename -uid "23AF5ED4-4D8D-72CC-A5C8-96891A0AF709";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 90 0 -90 ;
	setAttr ".lr" -type "double3" 90 0 -90 ;
	setAttr ".rst" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".rsrr" -type "double3" 90 0 -90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Pelvis_Ctrl_Grp_scaleConstraint1" -p "Pelvis_Ctrl_Grp";
	rename -uid "32C94D92-4C9E-6D18-7C67-A9875723378A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Spine_FK_Ctrl_Grp" -p "Controls";
	rename -uid "F84A7253-444F-CDD0-0C0F-A3836263C3FA";
createNode transform -n "Spine_01_FK_Ctrl_Grp" -p "Spine_FK_Ctrl_Grp";
	rename -uid "23B359EB-41C7-62ED-ED4D-76AA0B40E76C";
createNode transform -n "Spine_01_FK_Ctrl" -p "Spine_01_FK_Ctrl_Grp";
	rename -uid "8F6008D4-4293-4FC0-71EE-E1A05DC5E0EE";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spine_01_FK_CtrlShape" -p "Spine_01_FK_Ctrl";
	rename -uid "883811DC-41D1-4346-BF14-32A3BC784CE1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 13.347752340171127 13.347752340171118
		0 18.876572386667213 1.1558566976102654e-15
		0 13.347752340171121 -13.347752340171118
		0 6.6519041013192239e-15 -18.876572386667213
		0 -13.347752340171112 -13.347752340171118
		0 -18.876572386667213 -1.8908791662514507e-15
		0 -13.347752340171111 13.347752340171118
		0 3.099147743970863e-15 18.876572386667213
		0 13.347752340171127 13.347752340171118
		0 18.876572386667213 1.1558566976102654e-15
		0 13.347752340171121 -13.347752340171118
		;
createNode parentConstraint -n "Spine_01_FK_Ctrl_Grp_parentConstraint1" -p "Spine_01_FK_Ctrl_Grp";
	rename -uid "B1019664-4EFE-F243-8156-3196D0D149B4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".lr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".rst" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_01_FK_Ctrl_Grp_parentConstraint2" -p "Spine_01_FK_Ctrl_Grp";
	rename -uid "A82DC81B-4155-10F5-CA4D-E783A9647AC6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".lr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".rst" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "Spine_02_FK_Ctrl_Grp" -p "Spine_FK_Ctrl_Grp";
	rename -uid "12C7DE12-4667-278E-3FB2-239B845370B9";
createNode transform -n "Spine_02_FK_Ctrl" -p "Spine_02_FK_Ctrl_Grp";
	rename -uid "DD3AC214-423C-9740-2546-7A86DB8F07C4";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spine_02_FK_CtrlShape" -p "Spine_02_FK_Ctrl";
	rename -uid "54560C15-42AD-F64D-FFC9-6AB25BA4BCB2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 9.5448896969699444 9.5448896969699391
		0 13.498512460810108 8.2654550391908781e-16
		0 9.5448896969699408 -9.5448896969699391
		0 4.7567327669716093e-15 -13.49851246081011
		0 -9.5448896969699355 -9.5448896969699391
		0 -13.49851246081011 -1.3521552252547415e-15
		0 -9.5448896969699337 9.5448896969699391
		0 2.2161801190893149e-15 13.49851246081011
		0 9.5448896969699444 9.5448896969699391
		0 13.498512460810108 8.2654550391908781e-16
		0 9.5448896969699408 -9.5448896969699391
		;
createNode parentConstraint -n "Spine_02_FK_Ctrl_Grp_parentConstraint1" -p "Spine_02_FK_Ctrl_Grp";
	rename -uid "B0A1DB74-4836-B70F-7500-C0ACECA41E13";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 11.060997009277344 0.52590012550353993 -1.1677328559745788e-16 ;
	setAttr ".lr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".rst" -type "double3" 0 80.036647796630859 0.29124999046325672 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_02_FK_Ctrl_Grp_parentConstraint2" -p "Spine_02_FK_Ctrl_Grp";
	rename -uid "5F2B2C45-44FD-C254-CAB0-BFAB20A6819C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 11.060997009277344 0.52590012550353993 -1.1677328559745788e-16 ;
	setAttr ".lr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".rst" -type "double3" 0 80.036647796630859 0.29124999046325672 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "Spine_03_FK_Ctrl_Grp" -p "Spine_FK_Ctrl_Grp";
	rename -uid "FC3AEF2C-4888-C9FB-370C-63BB1829A67E";
createNode transform -n "Spine_03_FK_Ctrl" -p "Spine_03_FK_Ctrl_Grp";
	rename -uid "7E342C89-4505-E26F-BD94-928CBD08542A";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spine_03_FK_CtrlShape" -p "Spine_03_FK_Ctrl";
	rename -uid "7305B09B-47CD-F06B-B57B-13A3564BA89B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 8.2803045762233953 8.28030457622339
		0 11.710119032275122 7.1703798952551119e-16
		0 8.2803045762233918 -8.28030457622339
		0 4.2375441742375634e-15 -11.710119032275122
		0 -8.2803045762233864 -8.28030457622339
		0 -11.710119032275122 -1.1730106323801203e-15
		0 -8.2803045762233847 8.28030457622339
		0 2.0335847379043872e-15 11.710119032275122
		0 8.2803045762233953 8.28030457622339
		0 11.710119032275122 7.1703798952551119e-16
		0 8.2803045762233918 -8.28030457622339
		;
createNode parentConstraint -n "Spine_03_FK_Ctrl_Grp_parentConstraint1" -p "Spine_03_FK_Ctrl_Grp";
	rename -uid "72513CEB-4583-F8AE-77A7-4DBF86B3F373";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 10.501300811767578 -1.45985007286072 -2.5905446547566664e-15 ;
	setAttr ".lr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".rst" -type "double3" -2.9146964874348031e-15 90.537948608398438 -1.1686000823974632 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_03_FK_Ctrl_Grp_parentConstraint2" -p "Spine_03_FK_Ctrl_Grp";
	rename -uid "C634642F-43AA-8D76-D083-C0B60DF5DC96";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 10.501300811767578 -1.45985007286072 -2.5905446547566664e-15 ;
	setAttr ".lr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".rst" -type "double3" -2.9146964874348031e-15 90.537948608398438 -1.1686000823974632 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_FK_Ctrl_Grp_scaleConstraint1" -p "Spine_FK_Ctrl_Grp";
	rename -uid "4A4DDC40-41DE-2684-1F1C-03AF447AA8FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Head_FK_Ctrl_Grp" -p "Controls";
	rename -uid "6AB88C20-4E05-BD6D-C021-349BE897D8C3";
createNode transform -n "Spine_04_FK_Ctrl_Grp" -p "Head_FK_Ctrl_Grp";
	rename -uid "E782ECDC-45A9-E7D9-0272-438BFC1DAFA6";
createNode transform -n "Spine_04_FK_Ctrl" -p "Spine_04_FK_Ctrl_Grp";
	rename -uid "4E157F18-4206-EB9B-C1AC-CC914060A475";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spine_04_FK_CtrlShape" -p "Spine_04_FK_Ctrl";
	rename -uid "BB112CD9-4AD2-8BE0-1B2E-D09B709DD559";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 7.8903876148414982 7.8903876148414946
		0 11.158693177289539 6.8327289411175192e-16
		0 7.8903876148414964 -7.8903876148414946
		0 3.5991383357530126e-15 -11.158693177289539
		0 -7.890387614841492 -7.8903876148414946
		0 -11.158693177289539 -1.1177739273488039e-15
		0 -7.8903876148414911 7.8903876148414946
		0 1.4989626622649385e-15 11.158693177289539
		0 7.8903876148414982 7.8903876148414946
		0 11.158693177289539 6.8327289411175192e-16
		0 7.8903876148414964 -7.8903876148414946
		;
createNode parentConstraint -n "Spine_04_FK_Ctrl_Grp_parentConstraint1" -p "Spine_04_FK_Ctrl_Grp";
	rename -uid "4703FEE9-4B94-7356-A9D0-52995A83874D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9.8716697692871094 -1.5726258158683719 -4.1753507160649348e-15 ;
	setAttr ".tg[0].tor" -type "double3" -9.5041698060746826e-15 -9.7601945867927816e-16 
		-4.3999241267888909 ;
	setAttr ".lr" -type "double3" 90.000000000000014 4.3999241267888847 90 ;
	setAttr ".rst" -type "double3" -7.4392402814791352e-15 100.40961837768555 -2.7412258982658351 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 4.3999241267888847 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_04_FK_Ctrl_Grp_parentConstraint2" -p "Spine_04_FK_Ctrl_Grp";
	rename -uid "A68A9984-424D-9987-1C95-E28F5D1EB4AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9.8716697692871094 -1.5726258158683719 -4.1753507160649348e-15 ;
	setAttr ".tg[0].tor" -type "double3" -9.5041698060746826e-15 -9.7601945867927816e-16 
		-4.3999241267888909 ;
	setAttr ".lr" -type "double3" 90.000000000000014 4.3999241267888847 90 ;
	setAttr ".rst" -type "double3" -7.4392402814791352e-15 100.40961837768555 -2.7412258982658351 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 4.3999241267888847 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "Neck_01_FK_Ctrl_Grp" -p "Head_FK_Ctrl_Grp";
	rename -uid "ECC581FE-481D-B754-2442-1BB181723513";
createNode transform -n "Neck_01_FK_Ctrl" -p "Neck_01_FK_Ctrl_Grp";
	rename -uid "1DD81E39-431B-1FE7-FDAD-13853466F523";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Neck_01_FK_CtrlShape" -p "Neck_01_FK_Ctrl";
	rename -uid "168BD12E-4976-06C4-14DE-58B3C6D7C05D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.1406969154211315 9.6246518733312101 9.1641008558547785
		-3.2081536133349506 13.267364323863259 8.4344313106890967e-16
		-2.1406969154211293 9.6246518733312065 -9.1641008558547785
		0.43637152192840212 0.83036607143149954 -12.959995717304716
		3.0134399592779286 -7.9639197304682536 -9.1641008558547785
		4.0808966571917438 -11.606632181000274 -1.248339367288465e-15
		3.0134399592779286 -7.9639197304682536 9.1641008558547785
		0.43637152192840206 0.83036607143149688 12.959995717304716
		-2.1406969154211315 9.6246518733312101 9.1641008558547785
		-3.2081536133349506 13.267364323863259 8.4344313106890967e-16
		-2.1406969154211293 9.6246518733312065 -9.1641008558547785
		;
createNode parentConstraint -n "Neck_01_FK_Ctrl_Grp_parentConstraint1" -p "Neck_01_FK_Ctrl_Grp";
	rename -uid "70C4B5C0-40A7-D1A2-1AEB-5DA2458AFC3D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5694450981821859 6.2172489379008766e-15 -7.5625259634841093e-17 ;
	setAttr ".lr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr ".rst" -type "double3" -7.5148655411139763e-15 105.96264950702329 -3.1685009598732008 ;
	setAttr ".rsrr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck_01_FK_Ctrl_Grp_parentConstraint2" -p "Neck_01_FK_Ctrl_Grp";
	rename -uid "13B40101-4896-A0B6-A0EE-72B0EE1BE9EE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5694450981822001 6.2172489379008766e-15 -7.5625259634842671e-17 ;
	setAttr ".lr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr ".rst" -type "double3" -7.5148655411139779e-15 105.9626495070233 -3.1685009598732021 ;
	setAttr ".rsrr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Head_FK_Ctrl_Grp_scaleConstraint1" -p "Head_FK_Ctrl_Grp";
	rename -uid "63028913-4027-5DD9-725E-298809131911";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Arm_Ctrl_Grp" -p "Controls";
	rename -uid "5700BC9D-4374-6BDA-666E-0CB0A9DBCFA9";
createNode transform -n "L_Arm_Ctrl_Grp" -p "Arm_Ctrl_Grp";
	rename -uid "278002D0-4A75-01F6-697E-3AB8C6A41AFC";
createNode transform -n "L_Arm_Clav_Ctrl_Grp" -p "L_Arm_Ctrl_Grp";
	rename -uid "6D7AC538-4096-71A1-CA2C-1FAA6EA56DB9";
createNode transform -n "L_Clavical_01_FK_Ctrl_Grp" -p "L_Arm_Clav_Ctrl_Grp";
	rename -uid "147F62F4-43B2-DF28-26E5-039B4CD6DD47";
createNode transform -n "L_Clavical_01_FK_Ctrl" -p "L_Clavical_01_FK_Ctrl_Grp";
	rename -uid "EE651B6F-4C99-1987-6594-9DBD13973903";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Clavical_01_FK_CtrlShape" -p "L_Clavical_01_FK_Ctrl";
	rename -uid "9A4757D7-47F8-0F56-E6D7-FC949FB9F6DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.56497057378584969 1.964944782853054 6.3533545387350898e-05
		0.17314473093040483 10.258983688186445 4.001688280963478e-05
		-0.32010692585677969 11.083233229378379 -6.9411269778552054e-06
		-0.62584426569276941 3.9548592039784194 -4.9833118702657941e-05
		-0.56497050142551197 -6.9504335616022708 -6.3533545330507479e-05
		-0.173144658570066 -15.244472466935685 -4.0016882752791361e-05
		0.32010699821711786 -16.068722008127605 6.9411270346986242e-06
		0.6258443380531058 -8.9403479827276247 4.983311875950136e-05
		0.56497057378584969 1.964944782853054 6.3533545387350898e-05
		0.17314473093040483 10.258983688186445 4.001688280963478e-05
		-0.32010692585677969 11.083233229378379 -6.9411269778552054e-06
		;
createNode parentConstraint -n "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1" -p "L_Clavical_01_FK_Ctrl_Grp";
	rename -uid "A2538FAF-44F6-8072-AC3F-D3848D0887B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.925140380859375 0.037532091140749735 2.3138317700026962 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 90 8.9959671327898853e-15 1.7991934265579774e-14 ;
	setAttr ".rst" -type "double3" 2.3138317700026931 95.463088989257812 -1.1310679912567139 ;
	setAttr ".rsrr" -type "double3" 90 8.9959671327898853e-15 1.7991934265579774e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Clavical_01_FK_Ctrl_Grp";
	rename -uid "C4DF0D84-4DE0-508B-A621-F8ACFDCF58F3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.925140380859375 0.037532091140749735 2.3138317700026962 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 90 8.9959671327898853e-15 1.7991934265579774e-14 ;
	setAttr ".rst" -type "double3" 2.3138317700026931 95.463088989257812 -1.1310679912567139 ;
	setAttr ".rsrr" -type "double3" 90 8.9959671327898853e-15 1.7991934265579774e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_Clav_Ctrl_Grp_scaleConstraint1" -p "L_Arm_Clav_Ctrl_Grp";
	rename -uid "3160CA28-489F-4D2F-2F4A-7FA31453DC46";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Arm_FK_Ctrl_Grp" -p "L_Arm_Ctrl_Grp";
	rename -uid "89C0E954-4F22-60D6-11BE-E0A1AC9563AC";
createNode transform -n "L_Arm_01_FK_Ctrl_Grp" -p "L_Arm_FK_Ctrl_Grp";
	rename -uid "64583AD7-4155-7C7D-4F8E-06AE8C8BC59C";
createNode transform -n "L_Arm_01_FK_Ctrl" -p "L_Arm_01_FK_Ctrl_Grp";
	rename -uid "33E90493-4147-B8F0-0C4A-1DA83988167B";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Arm_01_FK_CtrlShape" -p "L_Arm_01_FK_Ctrl";
	rename -uid "495C42D5-4BE4-2F94-A7AA-FE967D0E0273";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6722329163336211 3.9922550671629899 -3.9592018333529557
		2.6722329163336211 5.6581648057850797 0.062660051317923321
		2.6722329163336211 3.9922550671629886 4.0845219359888034
		2.6722329163336211 -0.029606817507887812 5.7504316746108968
		2.6722329163336211 -4.0514687021787639 4.0845219359888034
		2.6722329163336211 -5.7173784408008608 0.062660051317924223
		2.6722329163336211 -4.0514687021787639 -3.9592018333529557
		2.6722329163336211 -0.029606817507888881 -5.6251115719750526
		2.6722329163336211 3.9922550671629899 -3.9592018333529557
		2.6722329163336211 5.6581648057850797 0.062660051317923321
		2.6722329163336211 3.9922550671629886 4.0845219359888034
		;
createNode parentConstraint -n "L_Arm_01_FK_Ctrl_Grp_parentConstraint1" -p "L_Arm_01_FK_Ctrl_Grp";
	rename -uid "18002576-48DC-BDEF-5AD0-B3B25B8E44CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.2450352076889573 -1.3322676295501878e-15 
		-8.5265128291212022e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0.031714073331677979 1.3429067857254178 0.63534752723487098 ;
	setAttr ".lr" -type "double3" 90.016823459266988 -0.63517301505935941 1.3429893242058284 ;
	setAttr ".rst" -type "double3" 8.5588669776916504 95.463088989257898 -1.1310679912567152 ;
	setAttr ".rsrr" -type "double3" 90.016823459266988 -0.63517301505935941 1.3429893242058284 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Arm_01_FK_Ctrl_Grp";
	rename -uid "52E36884-4A07-8E72-594A-46B3134D4558";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.2450352076889573 -1.3322676295501878e-15 
		-1.1368683772161603e-13 ;
	setAttr ".tg[0].tor" -type "double3" 0.031714073331677979 1.3429067857254178 0.63534752723487098 ;
	setAttr ".lr" -type "double3" 90.016823459266988 -0.63517301505935941 1.3429893242058284 ;
	setAttr ".rst" -type "double3" 8.5588669776916504 95.463088989257926 -1.1310679912567152 ;
	setAttr ".rsrr" -type "double3" 90.016823459266988 -0.63517301505935941 1.3429893242058284 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Arm_02_FK_Ctrl_Grp" -p "L_Arm_FK_Ctrl_Grp";
	rename -uid "BEE756DA-4334-5274-590A-069C73F6373A";
createNode transform -n "L_Arm_02_FK_Ctrl" -p "L_Arm_02_FK_Ctrl_Grp";
	rename -uid "A62F93A0-47B5-7C13-90B1-DDA9C8843910";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.7763568394002505e-14 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-14 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Arm_02_FK_CtrlShape" -p "L_Arm_02_FK_Ctrl";
	rename -uid "8B6E785C-4E71-5177-D0BB-2D875A0BAB48";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5527136788005009e-15 2.8448396228910764 2.8448396228910613
		3.5527136788005009e-15 4.0232107774689192 -1.3964504105155881e-14
		3.5527136788005009e-15 2.8448396228910755 -2.8448396228910897
		3.5527136788005009e-15 1.3067145473704334e-15 -4.0232107774689343
		3.5527136788005009e-15 -2.8448396228910742 -2.8448396228910897
		3.5527136788005009e-15 -4.0232107774689201 -1.4613862490380907e-14
		3.5527136788005009e-15 -2.8448396228910737 2.8448396228910613
		3.5527136788005009e-15 5.4950675700374399e-16 4.0232107774689059
		3.5527136788005009e-15 2.8448396228910764 2.8448396228910613
		3.5527136788005009e-15 4.0232107774689192 -1.3964504105155881e-14
		3.5527136788005009e-15 2.8448396228910755 -2.8448396228910897
		;
createNode parentConstraint -n "L_Arm_02_FK_Ctrl_Grp_parentConstraint1" -p "L_Arm_02_FK_Ctrl_Grp";
	rename -uid "F226E944-4141-C4B4-19CF-A8B847CE89A0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 17.298623211828897 -2.886579864025407e-15 7.1054273576010019e-14 ;
	setAttr ".tg[0].tor" -type "double3" 3.8157338146268845e-14 4.9739845169555026e-16 
		2.981770013872047e-16 ;
	setAttr ".lr" -type "double3" 90.016823459266988 -0.63517301505935919 1.3429893242058284 ;
	setAttr ".rst" -type "double3" 25.85167568720064 95.868499506812142 -0.93930179660315472 ;
	setAttr ".rsrr" -type "double3" 90.016823459266988 -0.63517301505935919 1.3429893242058284 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_02_FK_Ctrl_Grp_parentConstraint2" -p "L_Arm_02_FK_Ctrl_Grp";
	rename -uid "791B42A2-4607-0831-7CB1-35B45100B998";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 17.298623211828897 -3.1086244689504383e-15 
		5.6843418860808015e-14 ;
	setAttr ".tg[0].tor" -type "double3" 3.8157338146268845e-14 4.9739845169555026e-16 
		2.981770013872047e-16 ;
	setAttr ".lr" -type "double3" 90.016823459266988 -0.63517301505935919 1.3429893242058284 ;
	setAttr ".rst" -type "double3" 25.85167568720064 95.868499506812157 -0.93930179660315494 ;
	setAttr ".rsrr" -type "double3" 90.016823459266988 -0.63517301505935919 1.3429893242058284 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Arm_03_FK_Ctrl_Grp" -p "L_Arm_FK_Ctrl_Grp";
	rename -uid "EADE80EC-4EC5-C59D-AE2D-5BA3038819CD";
createNode transform -n "L_Arm_03_FK_Ctrl" -p "L_Arm_03_FK_Ctrl_Grp";
	rename -uid "A09E5D45-4FB5-A473-E707-F1837EBEBFDD";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 4.2632564145606011e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Arm_03_FK_CtrlShape" -p "L_Arm_03_FK_Ctrl";
	rename -uid "80524594-4EF9-B135-FBA5-CC942EE11B7C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.1054273576010019e-15 3.7460430187696074 -3.7460430187695906
		7.1054273576010019e-15 5.2977048423770263 1.3886463851299781e-14
		7.1054273576010019e-15 3.7460430187696061 3.746043018769619
		7.1054273576010019e-15 1.9778773567983774e-15 5.2977048423770405
		7.1054273576010019e-15 -3.746043018769603 3.746043018769619
		7.1054273576010019e-15 -5.2977048423770254 1.4741529432529157e-14
		7.1054273576010019e-15 -3.7460430187696026 -3.7460430187695906
		7.1054273576010019e-15 9.807972634121421e-16 -5.2977048423770121
		7.1054273576010019e-15 3.7460430187696074 -3.7460430187695906
		7.1054273576010019e-15 5.2977048423770263 1.3886463851299781e-14
		7.1054273576010019e-15 3.7460430187696061 3.746043018769619
		;
createNode parentConstraint -n "L_Arm_03_FK_Ctrl_Grp_parentConstraint1" -p "L_Arm_03_FK_Ctrl_Grp";
	rename -uid "390ADC46-4B4C-7E31-576B-07B3144F5A6E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 14.466630739471157 -1.2656542480726785e-14 
		1.7053025658242404e-13 ;
	setAttr ".tg[0].tor" -type "double3" 7.6320888313399924e-14 1.0939465801219044e-15 
		4.9696166897867449e-16 ;
	setAttr ".lr" -type "double3" 90.016823459266988 -0.63517301505935875 1.3429893242058277 ;
	setAttr ".rst" -type "double3" 40.313443828246157 96.207539451409744 -0.77893003219190315 ;
	setAttr ".rsrr" -type "double3" 90.016823459266988 -0.63517301505935875 1.3429893242058277 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_03_FK_Ctrl_Grp_parentConstraint2" -p "L_Arm_03_FK_Ctrl_Grp";
	rename -uid "FF5B5186-4A61-F972-3AFE-4EB98C3ED509";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 14.46663073947115 -1.2656542480726785e-14 1.9895196601282805e-13 ;
	setAttr ".tg[0].tor" -type "double3" 7.6320888313399924e-14 1.0939465801219044e-15 
		4.9696166897867449e-16 ;
	setAttr ".lr" -type "double3" 90.016823459266988 -0.63517301505935875 1.3429893242058277 ;
	setAttr ".rst" -type "double3" 40.31344382824615 96.207539451409716 -0.77893003219190327 ;
	setAttr ".rsrr" -type "double3" 90.016823459266988 -0.63517301505935875 1.3429893242058277 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_FK_Ctrl_Grp_scaleConstraint1" -p "L_Arm_FK_Ctrl_Grp";
	rename -uid "3974FA32-4497-51FE-E8DC-A987F95158E8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Arm_IK_Main_Ctrl_Grp" -p "L_Arm_Ctrl_Grp";
	rename -uid "C8C7D9C6-4CF9-29D6-7DD4-4DA47917C6FA";
createNode transform -n "L_Arm_IK_Ctrl_Base_Grp" -p "L_Arm_IK_Main_Ctrl_Grp";
	rename -uid "EB6D5258-4C98-51B5-1E12-45BACFFA2A66";
	setAttr ".t" -type "double3" 8.5588665008544922 95.463088989257812 -1.1310679912567139 ;
createNode transform -n "L_Arm_IK_Base_Ctrl" -p "L_Arm_IK_Ctrl_Base_Grp";
	rename -uid "6D896903-41CC-F92F-F41D-09AEDD8E589C";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "L_Arm_IK_Base_CtrlShape" -p "L_Arm_IK_Base_Ctrl";
	rename -uid "28508894-451F-54CD-6830-AA814968A8AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3708903064148839 -2.8900222399534483 -2.8900222399534483
		2.3708903064148843 -2.5026322613429522e-16 -4.0871086473020393
		2.3708903064148839 2.8900222399534483 -2.8900222399534474
		2.3708903064148839 4.0871086473020402 -1.3034827935794726e-15
		2.3708903064148839 2.8900222399534483 2.8900222399534483
		2.3708903064148839 4.0940846850184167e-16 4.0871086473020428
		2.3708903064148839 -2.8900222399534483 2.8900222399534474
		2.3708903064148839 -4.0871086473020402 -5.3424879640889579e-16
		2.3708903064148839 -2.8900222399534483 -2.8900222399534483
		2.3708903064148843 -2.5026322613429522e-16 -4.0871086473020393
		2.3708903064148839 2.8900222399534483 -2.8900222399534474
		;
createNode transform -n "L_Arm_PV_Ctrl_Grp" -p "L_Arm_IK_Main_Ctrl_Grp";
	rename -uid "801EAC47-429D-AE8A-82CB-198287CE026E";
	setAttr ".t" -type "double3" 25.851675687200636 95.868499506812071 -0.93930179660315472 ;
	setAttr ".r" -type "double3" 90.016823459276182 -0.63517585492481266 1.3429893233719228 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "L_Arm_PV_Ctrl_Offset" -p "L_Arm_PV_Ctrl_Grp";
	rename -uid "ABF7C0FE-4F67-9AC4-047C-33BD0EE15DE9";
	setAttr ".t" -type "double3" -0.42498844935081692 -38.33433800098112 0.011255910963285487 ;
	setAttr ".r" -type "double3" -90.016827049088562 -1.3431757650077822 -0.63478144461127151 ;
	setAttr ".s" -type "double3" 1 0.99999999999999944 1 ;
createNode transform -n "L_Arm_PV_Ctrl" -p "L_Arm_PV_Ctrl_Offset";
	rename -uid "EC616A79-4F4D-CF10-9B11-C9807F35F512";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "L_Arm_PV_CtrlShape" -p "L_Arm_PV_Ctrl";
	rename -uid "73F9BAC7-4795-C05C-4A1D-C9A29ACF8201";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.26932441782224181 0.26932441782224192 1.6491364310911648e-17
		2.4974671711752943e-16 4.0786734149211474 2.4974671711752943e-16
		-0.26932441782224181 0.26932441782224137 1.6491364310911635e-17
		-4.0786734149211501 2.114391500692645e-16 1.2946913917338087e-32
		-0.26932441782224181 -0.26932441782224181 -1.6491364310911635e-17
		-4.0856350550512848e-16 -4.0786734149211501 -2.4974671711752958e-16
		0.26932441782224181 -0.26932441782224137 -1.6491364310911635e-17
		4.0786734149211501 -5.5620725350364951e-16 -3.4057871633289239e-32
		0.26932441782224181 0.26932441782224192 1.6491364310911648e-17
		2.4974671711752943e-16 4.0786734149211474 2.4974671711752943e-16
		-0.26932441782224181 0.26932441782224137 1.6491364310911635e-17
		;
createNode transform -n "L_Arm_IK_Ctrl_Grp" -p "L_Arm_IK_Main_Ctrl_Grp";
	rename -uid "B13745B1-4442-9B1A-9C36-4A99F89DFC41";
	setAttr ".t" -type "double3" 40.313442230224609 96.207542419433594 -0.77892929315567017 ;
createNode transform -n "L_Arm_IK_Ctrl" -p "L_Arm_IK_Ctrl_Grp";
	rename -uid "010603A5-4B2D-4EC5-93EA-6A88457B4B30";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "L_Arm_IK_CtrlShape" -p "L_Arm_IK_Ctrl";
	rename -uid "4F88EBD5-4E75-7C36-E191-B08FFAE1AA26";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.8524107194764194e-16 3.0252162840194221 -3.0252162840194234
		-2.6197043625688554e-16 2.6197043625688554e-16 -4.2783018979722094
		-1.8524107194764192e-16 -3.0252162840194221 -3.0252162840194221
		-1.3580593676069344e-32 -4.2783018979722103 -1.2621997808637786e-15
		1.8524107194764194e-16 -3.0252162840194221 3.0252162840194221
		2.6197043625688574e-16 -4.2856042718452356e-16 4.2783018979722103
		1.8524107194764192e-16 3.0252162840194221 3.0252162840194221
		3.5724815896399023e-32 4.2783018979722103 -4.5698133572846763e-16
		-1.8524107194764194e-16 3.0252162840194221 -3.0252162840194234
		-2.6197043625688554e-16 2.6197043625688554e-16 -4.2783018979722094
		-1.8524107194764192e-16 -3.0252162840194221 -3.0252162840194221
		;
createNode ikHandle -n "L_Arm_IK_Handle" -p "L_Arm_IK_Ctrl";
	rename -uid "EFD123BE-499C-9985-BEC4-E391A93B8336";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1211844039848984e-06 -2.9680237929596842e-06 -7.3903623243332106e-07 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_Arm_IK_Handle_poleVectorConstraint1" -p "L_Arm_IK_Handle";
	rename -uid "43782796-44B0-B1EA-79E0-F18B5FD73D91";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_PV_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 17.292809186346155 0.40541051755428725 -38.144929174810386 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1" -p "L_Arm_IK_Main_Ctrl_Grp";
	rename -uid "92542329-4CFD-BDD5-AF3E-238115981DE6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3138317700026931 1.1310679912567139 95.463088989257841 ;
	setAttr ".tg[0].tor" -type "double3" -90 0 0 ;
	setAttr ".rst" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_IK_Main_Ctrl_Grp_scaleConstraint1" -p "L_Arm_IK_Main_Ctrl_Grp";
	rename -uid "48BC8F17-4883-BB35-81A3-8F8BB226742C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Hand_FK_Ctrl_Grp" -p "Arm_Ctrl_Grp";
	rename -uid "18C49C49-4E5D-3CE0-10A9-299E5E558B2F";
createNode transform -n "L_Hand_01_FK_Ctrl_Grp" -p "L_Hand_FK_Ctrl_Grp";
	rename -uid "DBA00522-4B27-4725-734B-19BE56CA2073";
createNode transform -n "L_Hand_01_FK_Ctrl" -p "L_Hand_01_FK_Ctrl_Grp";
	rename -uid "07A53F2A-4276-0991-853C-E5B78F1C3C27";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.1316282072803006e-14 -6.6613381477509392e-16 0 ;
	setAttr ".sp" -type "double3" 2.1316282072803006e-14 -6.6613381477509392e-16 0 ;
	setAttr -l on ".FollowTranslate";
	setAttr -l on ".FollowRotate";
createNode nurbsCurve -n "L_Hand_01_FK_CtrlShape" -p "L_Hand_01_FK_Ctrl";
	rename -uid "4C6A9519-4872-3CFB-48CE-FF8F5B94AC86";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 7;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		16.810166291174838 2.7398357008771215 3.3202571898303312
		16.810166291174838 3.951858865268993 0.39417442844512246
		16.810166291174838 2.7398357008771206 -2.5319083329400862
		16.810166291174838 -0.18624706050808651 -3.7439314973319573
		16.810166291174838 -3.1123298218932955 -2.5319083329400862
		16.810166291174838 -4.3243529862851648 0.39417442844512179
		16.810166291174838 -3.1123298218932951 3.3202571898303312
		16.810166291174838 -0.18624706050808731 4.5322803542222028
		16.810166291174838 2.7398357008771215 3.3202571898303312
		16.810166291174838 3.951858865268993 0.39417442844512246
		16.810166291174838 2.7398357008771206 -2.5319083329400862
		;
createNode parentConstraint -n "L_Hand_01_FK_Ctrl_Grp_parentConstraint1" -p "L_Hand_01_FK_Ctrl_Grp";
	rename -uid "61102109-4C24-29B4-9EEA-76A425AFB83C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_03_RK_JntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0058766194696318053 -0.0087541874270202769 
		0.0036073611411637785 ;
	setAttr ".tg[0].tor" -type "double3" 2.5500345639468247e-14 -2.3696918332901094e-15 
		-1.2921003393445538e-15 ;
	setAttr ".lr" -type "double3" 90.016823459266959 -0.63517301505936374 1.342989324205822 ;
	setAttr ".rst" -type "double3" 40.307750701904311 96.203800201416115 -0.78774988651275613 ;
	setAttr ".rsrr" -type "double3" 90.016823459266959 -0.63517301505936008 1.3429893242058293 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Hand_Cup_01_FK_Ctrl_Grp" -p "L_Hand_FK_Ctrl_Grp";
	rename -uid "4B8201EB-49F6-4E5A-17E4-0C86EB2018F9";
createNode transform -n "L_Hand_Cup_01_FK_Ctrl" -p "L_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "3D91858A-45FA-C33E-17FC-7884A2E5E68E";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Hand_Cup_01_FK_CtrlShape" -p "L_Hand_Cup_01_FK_Ctrl";
	rename -uid "5F1C93DA-40C3-1A20-A0A6-048385334931";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.28399247863553956 3.6267462121041967 -0.034952154125228202
		-2.4592500679977435e-17 5.1289936804430019 -3.0267029543217734e-18
		0.28399247863553956 3.6267462121041962 0.034952154125228202
		0.4016260148983315 1.2733471797841053e-15 0.049429810398052457
		0.28399247863553956 -3.6267462121041945 0.034952154125228202
		4.0231152596974817e-17 -5.1289936804430036 4.9514179141681943e-18
		-0.28399247863553956 -3.6267462121041945 -0.034952154125228202
		-0.4016260148983315 3.0802018440946069e-16 -0.049429810398052457
		-0.28399247863553956 3.6267462121041967 -0.034952154125228202
		-2.4592500679977435e-17 5.1289936804430019 -3.0267029543217734e-18
		0.28399247863553956 3.6267462121041962 0.034952154125228202
		;
createNode parentConstraint -n "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1" -p "L_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "71B0852E-4BB1-6DBE-4B97-37897C353A94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6094838232570794 -1.9102878729137873 -0.091915605298240166 ;
	setAttr ".tg[0].tor" -type "double3" 89.98317295091131 -1.3431757650077811 -0.63477860474569425 ;
	setAttr ".lr" -type "double3" 179.99999999999991 2.4848083448933715e-16 -9.9392333795735096e-17 ;
	setAttr ".rst" -type "double3" 42.935360633282819 96.357903490008496 -2.6689655266522299 ;
	setAttr ".rsrr" -type "double3" 179.99999999999991 2.4848083448933715e-16 -9.9392333795735096e-17 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "FE04D095-4477-75F2-40ED-E882B2D28D64";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6094838232570794 -1.9102878729137873 -0.091915605298240166 ;
	setAttr ".tg[0].tor" -type "double3" 89.98317295091131 -1.3431757650077811 -0.63477860474569425 ;
	setAttr ".lr" -type "double3" 179.99999999999991 -5.5162745256632916e-15 -5.6156668594590171e-15 ;
	setAttr ".rst" -type "double3" 42.935360633282819 96.357903490008496 -2.6689655266522299 ;
	setAttr ".rsrr" -type "double3" 179.99999999999991 2.4848083448933715e-16 -9.9392333795735096e-17 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1" -p "L_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "3D26BFB3-405E-2B1E-DCAC-3A91C53D1718";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_01_FK_Ctrl_Grp" -p "L_Hand_FK_Ctrl_Grp";
	rename -uid "81D23EE7-4EB2-187D-B3ED-EBBDEF1A1409";
createNode transform -n "L_Finger_01_Knuckle_01_FK_Ctrl_Grp" -p "L_Finger_01_FK_Ctrl_Grp";
	rename -uid "52FEE64E-4D24-0CB1-3496-CEB1DA387DAD";
createNode transform -n "L_Finger_01_Knuckle_01_FK_Ctrl" -p "L_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "128189E3-4A1A-2AE5-116A-828A7CCFD0B0";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 4.2632564145606011e-14 2.1316282072803006e-14 ;
	setAttr ".sp" -type "double3" 0 4.2632564145606011e-14 2.1316282072803006e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_01_Knuckle_01_FK_CtrlShape" -p "L_Finger_01_Knuckle_01_FK_Ctrl";
	rename -uid "3D104105-4B82-DE7C-9D8A-2DAF04D62822";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.31242096978399903 3.6607992601981012 -0.03240234100280398
		-2.5691834497329674e-09 5.1771526064830864 -1.5083301145981914e-06
		-0.31242097492236587 3.660799260198099 0.032399324342574753
		-0.44182997884084374 -1.5537529339083445e-06 0.045820188667783979
		-0.31242097492236587 -3.6608023677039729 0.032399324342574753
		-2.5691835044466635e-09 -5.1771557139889595 -1.5083301145925169e-06
		0.31242096978399903 -3.6608023677039698 -0.03240234100280398
		0.4418299737024749 -1.5537529349151526e-06 -0.045823205328012984
		0.31242096978399903 3.6607992601981012 -0.03240234100280398
		-2.5691834497329674e-09 5.1771526064830864 -1.5083301145981914e-06
		-0.31242097492236587 3.660799260198099 0.032399324342574753
		;
createNode parentConstraint -n "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "98ED6AAA-4C09-CDEC-676D-0AB50A170D0C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.0471668234809783 0.47025145090340303 0.21914660359880145 ;
	setAttr ".tg[0].tor" -type "double3" 88.656824177087444 0.016822425507065853 89.364826957561874 ;
	setAttr ".lr" -type "double3" 180 -89.999999999999872 0 ;
	setAttr ".rst" -type "double3" 42.35415800247074 96.032431002399406 -0.29489755373574794 ;
	setAttr ".rsrr" -type "double3" 180 -89.999999999999872 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "BF10D476-4548-8FBB-D271-CBA1FC531EBF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.0471668234809783 0.47025145090340303 0.21914660359880145 ;
	setAttr ".tg[0].tor" -type "double3" 88.656824177087444 0.016822425507065853 89.364826957561874 ;
	setAttr ".lr" -type "double3" 180 -89.999999999999872 0 ;
	setAttr ".rst" -type "double3" 42.35415800247074 96.032431002399406 -0.29489755373574794 ;
	setAttr ".rsrr" -type "double3" 180 -89.999999999999872 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_01_Knuckle_02_FK_Ctrl_Grp" -p "L_Finger_01_FK_Ctrl_Grp";
	rename -uid "697C90BE-4B05-84F1-08F0-5E89984CDBC3";
createNode transform -n "L_Finger_01_Knuckle_02_FK_Ctrl" -p "L_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "67E59B86-4C0B-B7B0-830C-73B2B6423FF4";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_01_Knuckle_02_FK_CtrlShape" -p "L_Finger_01_Knuckle_02_FK_Ctrl";
	rename -uid "315FEECD-49F5-A4B2-1028-42AC064DE1DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 2.0441690850159566 2.0441690850159486
		0 2.8908916438133616 1.7701605991389271e-16
		0 2.0441690850159557 -2.0441690850159486
		0 7.7910800348947245e-15 -2.8908916438133549
		0 -2.0441690850159411 -2.0441690850159486
		0 -2.8908916438133483 -2.8958259313211044e-16
		0 -2.0441690850159406 2.0441690850159486
		0 7.2469858288291433e-15 2.8908916438133549
		0 2.0441690850159566 2.0441690850159486
		0 2.8908916438133616 1.7701605991389271e-16
		0 2.0441690850159557 -2.0441690850159486
		;
createNode parentConstraint -n "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "6D739A7F-407A-5AE6-D4AF-2F84391E447B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.0522225473461302 0.69162976338567717 1.1790508445751584 ;
	setAttr ".tg[0].tor" -type "double3" 4.2928659695229356 -25.469866719530053 54.37360536440508 ;
	setAttr ".lr" -type "double3" -102.83515163767858 -31.727871800243463 -59.629158448751873 ;
	setAttr ".rst" -type "double3" 43.533208847045927 95.340801239013686 2.7573249936103794 ;
	setAttr ".rsrr" -type "double3" -102.83515163767858 -31.727871800243463 -59.629158448751873 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "ECFE6E00-4880-ECF7-C3A6-35AEF43356B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.0522225473461302 0.69162976338567717 1.1790508445751584 ;
	setAttr ".tg[0].tor" -type "double3" 4.2928659695229356 -25.469866719530053 54.37360536440508 ;
	setAttr ".lr" -type "double3" -102.83515163767858 -31.727871800243463 -59.629158448751873 ;
	setAttr ".rst" -type "double3" 43.533208847045927 95.340801239013686 2.7573249936103794 ;
	setAttr ".rsrr" -type "double3" -102.83515163767858 -31.727871800243463 -59.629158448751873 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_01_Knuckle_03_FK_Ctrl_Grp" -p "L_Finger_01_FK_Ctrl_Grp";
	rename -uid "91EB65E3-4C83-7581-7954-849ACE5F8AF9";
createNode transform -n "L_Finger_01_Knuckle_03_FK_Ctrl" -p "L_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "5C2BF581-46E6-0744-9A90-649951711174";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -2.3092638912203256e-14 0 1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" -2.3092638912203256e-14 0 1.4210854715202004e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_01_Knuckle_03_FK_CtrlShape" -p "L_Finger_01_Knuckle_03_FK_Ctrl";
	rename -uid "85A6E796-47D8-46A6-9ECF-96884CD74597";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.2172489379008766e-15 1.8057074173646841 1.8057074173646981
		-6.2172489379008766e-15 2.5536559193148296 1.4367221042587632e-14
		-6.2172489379008766e-15 1.8057074173646837 -1.8057074173646697
		-6.2172489379008766e-15 5.6681438117977554e-16 -2.5536559193148167
		-6.2172489379008766e-15 -1.805707417364683 -1.8057074173646697
		-6.2172489379008766e-15 -2.5536559193148305 1.3955053255238983e-14
		-6.2172489379008766e-15 -1.8057074173646828 1.8057074173646981
		-6.2172489379008766e-15 8.6191251302972205e-17 2.5536559193148451
		-6.2172489379008766e-15 1.8057074173646841 1.8057074173646981
		-6.2172489379008766e-15 2.5536559193148296 1.4367221042587632e-14
		-6.2172489379008766e-15 1.8057074173646837 -1.8057074173646697
		;
createNode parentConstraint -n "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "59E815AF-438D-87D4-3687-A790EEA773B5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.3333777555324104 7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" -0.3757171157768131 -29.20960189289141 3.6072916636436929 ;
	setAttr ".lr" -type "double3" -115.05845304656796 -18.68433633237083 -30.327655479800178 ;
	setAttr ".rst" -type "double3" 44.966682434082038 92.894653320312514 4.5102999210357515 ;
	setAttr ".rsrr" -type "double3" -115.05845304656796 -18.68433633237083 -30.327655479800178 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "A8D0E7E1-4ABE-484E-4F23-BDB876A31543";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_01_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.3333777555323962 0 -2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" -0.3757171157768131 -29.20960189289141 3.6072916636436929 ;
	setAttr ".lr" -type "double3" -115.05845304656796 -18.68433633237083 -30.327655479800178 ;
	setAttr ".rst" -type "double3" 44.966682434082031 92.894653320312528 4.5102999210357497 ;
	setAttr ".rsrr" -type "double3" -115.05845304656796 -18.68433633237083 -30.327655479800178 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_01_Knuckle_04_FK_Ctrl_Grp" -p "L_Finger_01_FK_Ctrl_Grp";
	rename -uid "08A9822A-45C7-5216-FAED-5BA1BCF8700B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 48.01599884033206 91.110801696777344 5.7049999237060449 ;
	setAttr ".r" -type "double3" -169.38547759403332 -18.684336332370943 -30.327655479800178 ;
createNode transform -n "L_Finger_01_Knuckle_04_FK_Ctrl" -p "L_Finger_01_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "E671AA12-487C-C5CC-D32D-23984AAAD36E";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.1102230246251565e-14 0 -1.2434497875801753e-14 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-14 0 -1.2434497875801753e-14 ;
createNode nurbsCurve -n "L_Finger_01_Knuckle_04_FK_CtrlShape" -p "L_Finger_01_Knuckle_04_FK_Ctrl";
	rename -uid "A05FB906-4D4F-4BBD-38BB-4E8AA2AE90CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.8817841970012523e-16 1.5019486994618885 -1.5019486994618791
		-8.8817841970012523e-16 2.1240762207676274 -5.4591326754461548e-15
		-8.8817841970012523e-16 1.501948699461888 1.5019486994618685
		-8.8817841970012523e-16 1.4626289762248637e-14 2.1240762207676083
		-8.8817841970012523e-16 -1.5019486994618594 1.5019486994618685
		-8.8817841970012523e-16 -2.1240762207675994 -5.1163003504442145e-15
		-8.8817841970012523e-16 -1.5019486994618592 -1.5019486994618791
		-8.8817841970012523e-16 1.422651775161843e-14 -2.1240762207676189
		-8.8817841970012523e-16 1.5019486994618885 -1.5019486994618791
		-8.8817841970012523e-16 2.1240762207676274 -5.4591326754461548e-15
		-8.8817841970012523e-16 1.501948699461888 1.5019486994618685
		;
createNode scaleConstraint -n "L_Finger_01_FK_Ctrl_Grp_scaleConstraint1" -p "L_Finger_01_FK_Ctrl_Grp";
	rename -uid "3E56ABAF-444F-DA38-8CD1-0CAF4C1FCEDD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_02_FK_Ctrl_Grp" -p "L_Hand_FK_Ctrl_Grp";
	rename -uid "EC0037DD-442A-4FB2-D8F3-4B861F78A5DC";
createNode transform -n "L_Finger_02_Knuckle_01_FK_Ctrl_Grp" -p "L_Finger_02_FK_Ctrl_Grp";
	rename -uid "BF118CA6-4544-E4F5-3248-3FA241A5A55A";
createNode transform -n "L_Finger_02_Knuckle_01_FK_Ctrl" -p "L_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "9596006B-442D-068E-1A79-54982EBFDF07";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_02_Knuckle_01_FK_CtrlShape" -p "L_Finger_02_Knuckle_01_FK_Ctrl";
	rename -uid "D643FB14-450A-C6AF-6D94-8395F4D84E96";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5527136788005009e-15 1.5911484450320592 -1.591148445032059
		3.5527136788005009e-15 2.2502237107131982 -1.3778646323451989e-16
		3.5527136788005009e-15 1.5911484450320588 1.591148445032059
		3.5527136788005009e-15 4.5988808590091624e-16 2.250223710713199
		3.5527136788005009e-15 -1.5911484450320581 1.591148445032059
		3.5527136788005009e-15 -2.2502237107131986 2.2540644810060511e-16
		3.5527136788005009e-15 -1.5911484450320579 -1.591148445032059
		3.5527136788005009e-15 3.6373878451953736e-17 -2.250223710713199
		3.5527136788005009e-15 1.5911484450320592 -1.591148445032059
		3.5527136788005009e-15 2.2502237107131982 -1.3778646323451989e-16
		3.5527136788005009e-15 1.5911484450320588 1.591148445032059
		;
createNode parentConstraint -n "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "7E5EEB28-4679-E44B-44EA-339C489C5E2A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.3751282917814081 3.0746614791383164 0.22513083948693691 ;
	setAttr ".tg[0].tor" -type "double3" 96.984319633484276 -21.446472576163629 0.81102226025572222 ;
	setAttr ".lr" -type "double3" -172.47114676200118 -1.3398884268187581 -20.10987649463776 ;
	setAttr ".rst" -type "double3" 48.651287078857429 96.173309326171889 2.3795000314712507 ;
	setAttr ".rsrr" -type "double3" -172.47114676200118 -1.3398884268187581 -20.10987649463776 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "35DAADC1-4840-B83A-8D3F-91953DC9C8AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.3751282917814009 3.0746614791383169 0.2251308394869227 ;
	setAttr ".tg[0].tor" -type "double3" 96.984319633484276 -21.446472576163629 0.81102226025572222 ;
	setAttr ".lr" -type "double3" -172.47114676200118 -1.3398884268187603 -20.109876494637753 ;
	setAttr ".rst" -type "double3" 48.651287078857422 96.173309326171903 2.3795000314712511 ;
	setAttr ".rsrr" -type "double3" -172.47114676200118 -1.3398884268187581 -20.10987649463776 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_02_Knuckle_02_FK_Ctrl_Grp" -p "L_Finger_02_FK_Ctrl_Grp";
	rename -uid "6C296CD8-4DEC-D5E3-4453-0299B04D37D1";
createNode transform -n "L_Finger_02_Knuckle_02_FK_Ctrl" -p "L_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "8D202F12-4B37-273F-1F46-7299E877D877";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -2.8421709430404007e-14 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -2.8421709430404007e-14 0 -1.7763568394002505e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_02_Knuckle_02_FK_CtrlShape" -p "L_Finger_02_Knuckle_02_FK_Ctrl";
	rename -uid "B209FDDD-4BC8-A3D9-A669-68821494F611";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.1054273576010019e-15 1.2999688586591791 -1.2999688586591802
		-7.1054273576010019e-15 1.8384335905784832 -1.8889284300075963e-15
		-7.1054273576010019e-15 1.2999688586591787 1.2999688586591767
		-7.1054273576010019e-15 3.1477761070990233e-16 1.8384335905784817
		-7.1054273576010019e-15 -1.2999688586591784 1.2999688586591767
		-7.1054273576010019e-15 -1.8384335905784839 -1.5921996892696986e-15
		-7.1054273576010019e-15 -1.2999688586591782 -1.2999688586591802
		-7.1054273576010019e-15 -3.1233650905780396e-17 -1.8384335905784852
		-7.1054273576010019e-15 1.2999688586591791 -1.2999688586591802
		-7.1054273576010019e-15 1.8384335905784832 -1.8889284300075963e-15
		-7.1054273576010019e-15 1.2999688586591787 1.2999688586591767
		;
createNode parentConstraint -n "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "2CC7DF02-4DA6-A1AE-ECF0-E2848291E8EB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_02_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.0966687641578101 -5.6843418860808015e-14 
		4.4408920985006262e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854061e-14 5.7647553601526243e-15 
		22.928549236095371 ;
	setAttr ".lr" -type "double3" -172.5415867105956 1.6902111096619246 -42.840087749056387 ;
	setAttr ".rst" -type "double3" 51.558372334193038 95.1088989346147 2.4519104690203415 ;
	setAttr ".rsrr" -type "double3" -172.5415867105956 1.6902111096619246 -42.840087749056387 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "8E3631F0-4F59-CC26-AE10-9E979FB92E7C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_02_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.0966687641578172 -5.6843418860808015e-14 
		4.4408920985006262e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854061e-14 5.7647553601526243e-15 
		22.928549236095371 ;
	setAttr ".lr" -type "double3" -172.54158671059557 1.6902111096619219 -42.84008774905638 ;
	setAttr ".rst" -type "double3" 51.558372334193045 95.1088989346147 2.4519104690203419 ;
	setAttr ".rsrr" -type "double3" -172.5415867105956 1.6902111096619246 -42.840087749056387 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_02_Knuckle_03_FK_Ctrl_Grp" -p "L_Finger_02_FK_Ctrl_Grp";
	rename -uid "357B0284-401B-8459-D8DA-F8B2A7F735A4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 54.264768486546039 92.599229049298202 2.342997130522634 ;
	setAttr ".r" -type "double3" -172.54158671059551 1.6902111096620005 -42.84008774905638 ;
createNode transform -n "L_Finger_02_Knuckle_03_FK_Ctrl" -p "L_Finger_02_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "58454689-4EEC-446F-7045-DCBCE6F37804";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 1.4210854715202004e-14 -3.5527136788005009e-15 ;
createNode nurbsCurve -n "L_Finger_02_Knuckle_03_FK_CtrlShape" -p "L_Finger_02_Knuckle_03_FK_Ctrl";
	rename -uid "77CEE244-4334-4374-1A83-1DBC0C216A95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.1054273576010019e-15 1.1280791090946154 -1.1280791090946007
		7.1054273576010019e-15 1.5953447755113568 -9.768669364332088e-17
		7.1054273576010019e-15 1.1280791090946152 1.1280791090946007
		7.1054273576010019e-15 1.4439970403142915e-14 1.5953447755113428
		7.1054273576010019e-15 -1.1280791090945865 1.1280791090946007
		7.1054273576010019e-15 -1.5953447755113288 1.5980677726922315e-16
		7.1054273576010019e-15 -1.1280791090945863 -1.1280791090946007
		7.1054273576010019e-15 1.4139710844508017e-14 -1.5953447755113428
		7.1054273576010019e-15 1.1280791090946154 -1.1280791090946007
		7.1054273576010019e-15 1.5953447755113568 -9.768669364332088e-17
		7.1054273576010019e-15 1.1280791090946152 1.1280791090946007
		;
createNode scaleConstraint -n "L_Finger_02_FK_Ctrl_Grp_scaleConstraint1" -p "L_Finger_02_FK_Ctrl_Grp";
	rename -uid "31031BBE-4FE2-6589-2EF5-5BA2106A328C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_03_FK_Ctrl_Grp" -p "L_Hand_FK_Ctrl_Grp";
	rename -uid "83875EAB-4AAE-A6F0-A055-289BE4F8CD47";
createNode transform -n "L_Finger_03_Knuckle_01_FK_Ctrl_Grp" -p "L_Finger_03_FK_Ctrl_Grp";
	rename -uid "5D7576EB-4A73-C9FD-A493-6695D77A43EF";
createNode transform -n "L_Finger_03_Knuckle_01_FK_Ctrl" -p "L_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "A3441DAF-485A-283F-1DD8-ECA4690C5468";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_03_Knuckle_01_FK_CtrlShape" -p "L_Finger_03_Knuckle_01_FK_Ctrl";
	rename -uid "3579096A-44F0-BE44-1FCA-ED9F6DC018DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5527136788005009e-15 1.5118882697699831 -1.5118882697699827
		3.5527136788005009e-15 2.138132895901502 -1.3092288035587173e-16
		3.5527136788005009e-15 1.5118882697699827 1.5118882697699827
		3.5527136788005009e-15 4.2038847042555707e-16 2.1381328959015025
		3.5527136788005009e-15 -1.5118882697699825 1.5118882697699827
		3.5527136788005009e-15 -2.138132895901502 2.1417823451849896e-16
		3.5527136788005009e-15 -1.5118882697699823 -1.5118882697699827
		3.5527136788005009e-15 1.7970855449277208e-17 -2.1381328959015025
		3.5527136788005009e-15 1.5118882697699831 -1.5118882697699827
		3.5527136788005009e-15 2.138132895901502 -1.3092288035587173e-16
		3.5527136788005009e-15 1.5118882697699827 1.5118882697699827
		;
createNode parentConstraint -n "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "C970FF0C-493C-AEFC-C45C-9485AB874624";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.6574391364605532 0.73970838377730008 -0.21736931773037327 ;
	setAttr ".tg[0].tor" -type "double3" 90.214072174134927 -20.434713950500832 -0.12703297212607106 ;
	setAttr ".lr" -type "double3" -179.59274753366819 -0.47028877345053766 -19.092405550321907 ;
	setAttr ".rst" -type "double3" 48.948991775512702 96.623596191406264 0.047950029373166947 ;
	setAttr ".rsrr" -type "double3" -179.59274753366819 -0.47028877345053766 -19.092405550321907 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "666220AA-45B5-27A7-5812-5695E0E3CDBD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.6574391364605532 0.73970838377730019 -0.21736931773037327 ;
	setAttr ".tg[0].tor" -type "double3" 90.214072174134927 -20.434713950500832 -0.12703297212607106 ;
	setAttr ".lr" -type "double3" -179.59274753366822 -0.47028877345053827 -19.092405550321896 ;
	setAttr ".rst" -type "double3" 48.948991775512702 96.623596191406264 0.047950029373166947 ;
	setAttr ".rsrr" -type "double3" -179.59274753366819 -0.47028877345053766 -19.092405550321907 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_03_Knuckle_02_FK_Ctrl_Grp" -p "L_Finger_03_FK_Ctrl_Grp";
	rename -uid "939581A6-4692-013B-07BA-F78A3D051F39";
createNode transform -n "L_Finger_03_Knuckle_02_FK_Ctrl" -p "L_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "78B850EB-4834-EB89-C34B-34B497AF047B";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 0 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 0 -2.2204460492503131e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_03_Knuckle_02_FK_CtrlShape" -p "L_Finger_03_Knuckle_02_FK_Ctrl";
	rename -uid "B66B64A1-49D4-54F4-72E4-9EAA034D7F31";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7763568394002505e-15 1.3290008382007221 -1.3290008382007217
		1.7763568394002505e-15 1.8794910097886715 -1.1508563245819615e-16
		1.7763568394002505e-15 1.3290008382007217 1.3290008382007217
		1.7763568394002505e-15 3.2924581021347009e-16 1.8794910097886721
		1.7763568394002505e-15 -1.3290008382007215 1.3290008382007217
		1.7763568394002505e-15 -1.8794910097886723 1.882698998932912e-16
		1.7763568394002505e-15 -1.3290008382007212 -1.3290008382007217
		1.7763568394002505e-15 -2.4492861025494729e-17 -1.8794910097886721
		1.7763568394002505e-15 1.3290008382007221 -1.3290008382007217
		1.7763568394002505e-15 1.8794910097886715 -1.1508563245819615e-16
		1.7763568394002505e-15 1.3290008382007217 1.3290008382007217
		;
createNode parentConstraint -n "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "1EBE52E8-4009-B561-7154-408FC9FA1295";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_03_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.2946389742747808 -4.2632564145606011e-14 
		8.4932061383824475e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.0138018047164962e-14 -8.4483483726374669e-16 
		15.347549166690115 ;
	setAttr ".lr" -type "double3" -179.48279947934509 -0.3457300176196369 -34.439843760823116 ;
	setAttr ".rst" -type "double3" 52.062295279581889 95.545980317373477 0.074992410804432225 ;
	setAttr ".rsrr" -type "double3" -179.48279947934509 -0.3457300176196369 -34.439843760823116 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "3DDA18D8-460F-D124-C6B5-BAA12C3525E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_03_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.2946389742747879 -4.2632564145606011e-14 
		8.482103908136196e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.0138018047164962e-14 -8.4483483726374669e-16 
		15.347549166690115 ;
	setAttr ".lr" -type "double3" -179.48279947934512 -0.34573001761964428 -34.439843760823102 ;
	setAttr ".rst" -type "double3" 52.062295279581889 95.545980317373477 0.074992410804432391 ;
	setAttr ".rsrr" -type "double3" -179.48279947934509 -0.3457300176196369 -34.439843760823116 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_03_Knuckle_03_FK_Ctrl_Grp" -p "L_Finger_03_FK_Ctrl_Grp";
	rename -uid "45C37482-4A9D-A9B3-24B8-CE88C413920B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 55.404508006298222 93.254104025486527 0.09944625094411684 ;
	setAttr ".r" -type "double3" -179.482799479345 -0.34573001761955841 -34.439843760823081 ;
createNode transform -n "L_Finger_03_Knuckle_03_FK_Ctrl" -p "L_Finger_03_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "F778DAF3-4D15-E39F-8F99-4D87735A7C6A";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.0198066269804258e-14 1.4210854715202004e-14 0 ;
	setAttr ".sp" -type "double3" -3.0198066269804258e-14 1.4210854715202004e-14 0 ;
createNode nurbsCurve -n "L_Finger_03_Knuckle_03_FK_CtrlShape" -p "L_Finger_03_Knuckle_03_FK_Ctrl";
	rename -uid "EAEEB84B-412E-4281-005D-419908A179E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.8817841970012523e-15 0.97367492684346757 -0.97367492684346735
		-8.8817841970012523e-15 1.3769842868846622 -8.4315969970475111e-17
		-8.8817841970012523e-15 0.97367492684346724 0.97367492684346735
		-8.8817841970012523e-15 1.5216776539922157e-16 1.3769842868846627
		-8.8817841970012523e-15 -0.97367492684346724 0.97367492684346735
		-8.8817841970012523e-15 -1.3769842868846629 1.3793345777991223e-16
		-8.8817841970012523e-15 -0.97367492684346701 -0.97367492684346735
		-8.8817841970012523e-15 -1.0699420420992395e-16 -1.3769842868846627
		-8.8817841970012523e-15 0.97367492684346757 -0.97367492684346735
		-8.8817841970012523e-15 1.3769842868846622 -8.4315969970475111e-17
		-8.8817841970012523e-15 0.97367492684346724 0.97367492684346735
		;
createNode scaleConstraint -n "L_Finger_03_FK_Ctrl_Grp_scaleConstraint1" -p "L_Finger_03_FK_Ctrl_Grp";
	rename -uid "1184C2FD-44AA-1F92-919F-4099A1518BB5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_04_FK_Ctrl_Grp" -p "L_Hand_FK_Ctrl_Grp";
	rename -uid "C3F826B5-4F18-8437-2F08-E4AA3B1C5688";
createNode transform -n "L_Finger_04_Knuckle_01_FK_Ctrl_Grp" -p "L_Finger_04_FK_Ctrl_Grp";
	rename -uid "631E5557-46DA-0E18-C8F5-0C80186522E2";
createNode transform -n "L_Finger_04_Knuckle_01_FK_Ctrl" -p "L_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "FA54FB5B-4D21-30A2-1448-B0915DDDAF4E";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.3092638912203256e-14 1.4210854715202004e-14 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 2.3092638912203256e-14 1.4210854715202004e-14 1.7763568394002505e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_04_Knuckle_01_FK_CtrlShape" -p "L_Finger_04_Knuckle_01_FK_Ctrl";
	rename -uid "71677DE4-4396-5AED-F443-7D82A5CAFF47";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.8817841970012523e-15 1.3882368589183571 1.3882368589183445
		8.8817841970012523e-15 1.9632633936685588 1.896572050947218e-15
		8.8817841970012523e-15 1.3882368589183569 -1.3882368589183409
		8.8817841970012523e-15 1.4569621025879923e-14 -1.9632633936685435
		8.8817841970012523e-15 -1.388236858918328 -1.3882368589183409
		8.8817841970012523e-15 -1.9632633936685311 1.5796954025191556e-15
		8.8817841970012523e-15 -1.388236858918328 1.3882368589183445
		8.8817841970012523e-15 1.4200115569056005e-14 1.9632633936685471
		8.8817841970012523e-15 1.3882368589183571 1.3882368589183445
		8.8817841970012523e-15 1.9632633936685588 1.896572050947218e-15
		8.8817841970012523e-15 1.3882368589183569 -1.3882368589183409
		;
createNode parentConstraint -n "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "92FC5AF5-468B-8FD3-9B47-B8B5BEAA3FCF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.9967835317562574 0.053296098651102852 -0.44211549384583115 ;
	setAttr ".tg[0].tor" -type "double3" -6.5870617948139829 -0.074524456937097999 19.83177708297471 ;
	setAttr ".lr" -type "double3" 173.41293820518595 0.074524456937069716 -19.831777082974707 ;
	setAttr ".rst" -type "double3" 48.932144165039077 96.304607391357393 -2.2268500328063987 ;
	setAttr ".rsrr" -type "double3" 173.41293820518595 0.074524456937069716 -19.831777082974707 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "D4AB9CC7-4D60-B9FF-170F-F6A7D7E241B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.9967835317562574 0.053296098651102852 -0.44211549384583071 ;
	setAttr ".tg[0].tor" -type "double3" -6.5870617948139829 -0.074524456937097999 19.83177708297471 ;
	setAttr ".lr" -type "double3" 173.41293820518595 0.074524456937069716 -19.831777082974707 ;
	setAttr ".rst" -type "double3" 48.932144165039077 96.304607391357393 -2.2268500328063991 ;
	setAttr ".rsrr" -type "double3" 173.41293820518595 0.074524456937069716 -19.831777082974707 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_04_Knuckle_02_FK_Ctrl_Grp" -p "L_Finger_04_FK_Ctrl_Grp";
	rename -uid "F3504FEB-4E22-F608-A8BA-999269DCDB08";
createNode transform -n "L_Finger_04_Knuckle_02_FK_Ctrl" -p "L_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "6F4D3E27-4FBF-AE35-E795-FCB4DD02C631";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 -1.4210854715202004e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 -1.4210854715202004e-14 -1.7763568394002505e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_04_Knuckle_02_FK_CtrlShape" -p "L_Finger_04_Knuckle_02_FK_Ctrl";
	rename -uid "0CAE6D4F-4042-41AF-AD03-69AC95FBE69F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.1054273576010019e-15 1.3882368589183287 1.3882368589183409
		-7.1054273576010019e-15 1.9632633936685304 -1.6561416278532829e-15
		-7.1054273576010019e-15 1.3882368589183285 -1.3882368589183445
		-7.1054273576010019e-15 -1.3852088404524084e-14 -1.9632633936685471
		-7.1054273576010019e-15 -1.3882368589183565 -1.3882368589183445
		-7.1054273576010019e-15 -1.9632633936685595 -1.9730182762813454e-15
		-7.1054273576010019e-15 -1.3882368589183565 1.3882368589183409
		-7.1054273576010019e-15 -1.4221593861348004e-14 1.9632633936685435
		-7.1054273576010019e-15 1.3882368589183287 1.3882368589183409
		-7.1054273576010019e-15 1.9632633936685304 -1.6561416278532829e-15
		-7.1054273576010019e-15 1.3882368589183285 -1.3882368589183445
		;
createNode parentConstraint -n "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "1AAC57C4-4C57-9C06-AD7E-ACA2BCA9BF41";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_04_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.0461052105657522 0 4.7961634663806763e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317588e-15 1.192708005548819e-15 
		17.790460952726569 ;
	setAttr ".lr" -type "double3" 173.70270849143461 -1.9375660210313463 -37.511354521399113 ;
	setAttr ".rst" -type "double3" 51.797590844352072 95.271187542536666 -2.2308120920455425 ;
	setAttr ".rsrr" -type "double3" 173.70270849143461 -1.9375660210313463 -37.511354521399113 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "B97829B6-4073-32A5-A599-03934CB97FAF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_04_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.0461052105657522 2.8421709430404007e-14 4.9737991503207013e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317588e-15 1.192708005548819e-15 
		17.790460952726569 ;
	setAttr ".lr" -type "double3" 173.70270849143461 -1.9375660210313463 -37.511354521399113 ;
	setAttr ".rst" -type "double3" 51.797590844352065 95.271187542536637 -2.2308120920455412 ;
	setAttr ".rsrr" -type "double3" 173.70270849143461 -1.9375660210313463 -37.511354521399113 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_04_Knuckle_03_FK_Ctrl_Grp" -p "L_Finger_04_FK_Ctrl_Grp";
	rename -uid "D1F55BA4-4792-CD4F-1169-9D95881618A3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 54.895268669861196 92.893280274101954 -2.0987022666676602 ;
	setAttr ".r" -type "double3" 173.70270849143469 -1.9375660210312855 -37.511354521399127 ;
createNode transform -n "L_Finger_04_Knuckle_03_FK_Ctrl" -p "L_Finger_04_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "06AF357E-443C-3AC5-F219-A1AD1AD94B34";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 1.4210854715202004e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 1.4210854715202004e-14 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "L_Finger_04_Knuckle_03_FK_CtrlShape" -p "L_Finger_04_Knuckle_03_FK_Ctrl";
	rename -uid "4657DA40-4E60-9886-0E36-6ABE77DBFDAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.1054273576010019e-15 1.3882368589183571 1.3882368589183427
		7.1054273576010019e-15 1.9632633936685588 1.2021521154696766e-16
		7.1054273576010019e-15 1.3882368589183569 -1.3882368589183427
		7.1054273576010019e-15 1.4569621025879923e-14 -1.9632633936685453
		7.1054273576010019e-15 -1.388236858918328 -1.3882368589183427
		7.1054273576010019e-15 -1.9632633936685311 -1.9666143688109487e-16
		7.1054273576010019e-15 -1.388236858918328 1.3882368589183427
		7.1054273576010019e-15 1.4200115569056005e-14 1.9632633936685453
		7.1054273576010019e-15 1.3882368589183571 1.3882368589183427
		7.1054273576010019e-15 1.9632633936685588 1.2021521154696766e-16
		7.1054273576010019e-15 1.3882368589183569 -1.3882368589183427
		;
createNode scaleConstraint -n "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1" -p "L_Finger_04_FK_Ctrl_Grp";
	rename -uid "B0BFF154-4579-AF5A-1222-0A8DF08EA6C7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_05_FK_Ctrl_Grp" -p "L_Hand_FK_Ctrl_Grp";
	rename -uid "487EAA45-4BFF-1AB5-38BB-01919C477DB6";
createNode transform -n "L_Finger_05_Knuckle_01_FK_Ctrl_Grp" -p "L_Finger_05_FK_Ctrl_Grp";
	rename -uid "AC0BF297-4E1A-143D-59FA-D4A365A70C34";
createNode transform -n "L_Finger_05_Knuckle_02_FK_Ctrl" -p "L_Finger_05_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "635FFEC3-4006-D539-20BE-1BB1234CC5E2";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.532107773982716e-14 -5.6843418860808015e-14 5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 1.532107773982716e-14 -5.6843418860808015e-14 5.3290705182007514e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_05_Knuckle_02_FK_CtrlShape" -p "L_Finger_05_Knuckle_02_FK_Ctrl";
	rename -uid "B69C367E-4670-5FD2-CCDE-7F87AA15402A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.2156503822261584e-15 1.3882368589183287 1.3882368589183478
		8.2156503822261584e-15 1.9632633936685304 5.449285729747719e-15
		8.2156503822261584e-15 1.3882368589183285 -1.3882368589183371
		8.2156503822261584e-15 -1.3852088404524084e-14 -1.9632633936685397
		8.2156503822261584e-15 -1.3882368589183565 -1.3882368589183371
		8.2156503822261584e-15 -1.9632633936685595 5.1324090813196565e-15
		8.2156503822261584e-15 -1.3882368589183565 1.3882368589183478
		8.2156503822261584e-15 -1.4221593861348004e-14 1.9632633936685504
		8.2156503822261584e-15 1.3882368589183287 1.3882368589183478
		8.2156503822261584e-15 1.9632633936685304 5.449285729747719e-15
		8.2156503822261584e-15 1.3882368589183285 -1.3882368589183371
		;
createNode parentConstraint -n "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_05_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "78FE8E94-4AB5-F084-AD63-C3B005560842";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.9571259389828271 0.86494923585811989 1.7271218814135683 ;
	setAttr ".tg[0].tor" -type "double3" -10.099488601197889 0.13134202521530544 26.395094951067886 ;
	setAttr ".lr" -type "double3" 169.90051139880205 -0.13134202521534291 -26.39509495106789 ;
	setAttr ".rst" -type "double3" 48.892486572265646 95.492954254150376 -4.3960874080657968 ;
	setAttr ".rsrr" -type "double3" 169.90051139880205 -0.13134202521534291 -26.39509495106789 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_05_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "AA4678B5-4A4A-809F-09A4-E89DEE9E9CA2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.9571259389828271 0.86494923585811989 1.7271218814135683 ;
	setAttr ".tg[0].tor" -type "double3" -10.099488601197889 0.13134202521530544 26.395094951067886 ;
	setAttr ".lr" -type "double3" 169.90051139880205 -0.13134202521534291 -26.39509495106789 ;
	setAttr ".rst" -type "double3" 48.892486572265646 95.492954254150376 -4.3960874080657968 ;
	setAttr ".rsrr" -type "double3" 169.90051139880205 -0.13134202521534291 -26.39509495106789 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_05_Knuckle_02_FK_Ctrl_Grp" -p "L_Finger_05_FK_Ctrl_Grp";
	rename -uid "3E681B85-44CF-6960-5C7F-F8A920C95801";
createNode transform -n "L_Finger_05_Knuckle_03_FK_Ctrl" -p "L_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "1E789CAA-4C26-CCD0-1972-028A038FF71F";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 -8.5265128291212022e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 -8.5265128291212022e-14 -1.7763568394002505e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_05_Knuckle_03_FK_CtrlShape" -p "L_Finger_05_Knuckle_03_FK_Ctrl";
	rename -uid "0338B62B-4A82-3352-7517-BA80618CD6FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0658141036401503e-14 1.3882368589183147 1.3882368589183425
		-1.0658141036401503e-14 1.9632633936685164 1.2021521154696763e-16
		-1.0658141036401503e-14 1.3882368589183143 -1.3882368589183425
		-1.0658141036401503e-14 -2.8062943119726088e-14 -1.9632633936685451
		-1.0658141036401503e-14 -1.3882368589183709 -1.3882368589183425
		-1.0658141036401503e-14 -1.9632633936685739 -1.9666143688109485e-16
		-1.0658141036401503e-14 -1.3882368589183707 1.3882368589183425
		-1.0658141036401503e-14 -2.8432448576550005e-14 1.9632633936685451
		-1.0658141036401503e-14 1.3882368589183147 1.3882368589183425
		-1.0658141036401503e-14 1.9632633936685164 1.2021521154696763e-16
		-1.0658141036401503e-14 1.3882368589183143 -1.3882368589183425
		;
createNode parentConstraint -n "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "L_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "CD23BCC5-43CE-F534-9283-6DBA8F34E0A6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_05_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.381540140546333 4.2632564145606011e-14 5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635176e-15 1.5902773407317584e-15 
		16.857278106024292 ;
	setAttr ".lr" -type "double3" 170.3637055834871 -3.0407121202991352 -43.007613539756385 ;
	setAttr ".rst" -type "double3" 51.02574512385921 94.434223132049652 -4.3906280874334955 ;
	setAttr ".rsrr" -type "double3" 170.3637055834871 -3.0407121202991352 -43.007613539756385 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "01B77552-4847-D83D-7179-078DECD7BE58";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_05_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.381540140546333 4.2632564145606011e-14 3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635176e-15 1.5902773407317584e-15 
		16.857278106024292 ;
	setAttr ".lr" -type "double3" 170.3637055834871 -3.0407121202991352 -43.007613539756385 ;
	setAttr ".rst" -type "double3" 51.02574512385921 94.434223132049652 -4.3906280874334938 ;
	setAttr ".rsrr" -type "double3" 170.3637055834871 -3.0407121202991352 -43.007613539756385 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Finger_05_Knuckle_03_FK_Ctrl_Grp" -p "L_Finger_05_FK_Ctrl_Grp";
	rename -uid "9CD69356-426A-28C9-5341-069BCC3FD070";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 53.532898311080636 92.09564202524696 -4.2085037874206996 ;
	setAttr ".r" -type "double3" 170.36370558348719 -3.0407121202990788 -43.007613539756413 ;
createNode transform -n "L_Finger_05_Knuckle_04_FK_Ctrl" -p "L_Finger_05_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "DB56AE9A-4F18-0550-14CB-6F9A9B4FCF2C";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 -4.2632564145606011e-14 -8.8817841970012523e-15 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 -4.2632564145606011e-14 -8.8817841970012523e-15 ;
createNode nurbsCurve -n "L_Finger_05_Knuckle_04_FK_CtrlShape" -p "L_Finger_05_Knuckle_04_FK_Ctrl";
	rename -uid "A95E6448-483C-BEDC-0F8F-B886E45DEAF2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.5527136788005009e-15 1.3882368589183289 1.3882368589183407
		-3.5527136788005009e-15 1.9632633936685306 -1.6561416278532829e-15
		-3.5527136788005009e-15 1.3882368589183285 -1.3882368589183443
		-3.5527136788005009e-15 -1.3852088404524084e-14 -1.9632633936685469
		-3.5527136788005009e-15 -1.3882368589183567 -1.3882368589183443
		-3.5527136788005009e-15 -1.9632633936685597 -1.9730182762813454e-15
		-3.5527136788005009e-15 -1.3882368589183565 1.3882368589183407
		-3.5527136788005009e-15 -1.4221593861348004e-14 1.9632633936685433
		-3.5527136788005009e-15 1.3882368589183289 1.3882368589183407
		-3.5527136788005009e-15 1.9632633936685306 -1.6561416278532829e-15
		-3.5527136788005009e-15 1.3882368589183285 -1.3882368589183443
		;
createNode scaleConstraint -n "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1" -p "L_Finger_05_FK_Ctrl_Grp";
	rename -uid "C0EBA23B-44D9-6A2C-63DC-76812286E9B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Hand_FK_Ctrl_Grp_scaleConstraint1" -p "L_Hand_FK_Ctrl_Grp";
	rename -uid "53D8C09D-44EF-542C-5B5A-A5AB23687993";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_03_RK_JntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_Ctrl_Grp" -p "Arm_Ctrl_Grp";
	rename -uid "FDBB2DB8-46A5-5B35-A1EB-0695556B7C52";
createNode transform -n "R_Arm_Clav_Ctrl_Grp" -p "R_Arm_Ctrl_Grp";
	rename -uid "B44A2FB1-407D-4644-C4BB-47A5C75787DF";
createNode transform -n "R_Clavical_01_FK_Ctrl_Grp" -p "R_Arm_Clav_Ctrl_Grp";
	rename -uid "04D96065-4BBC-B745-2FAC-CF92A6B37B3B";
createNode transform -n "R_Clavical_01_FK_Ctrl" -p "R_Clavical_01_FK_Ctrl_Grp";
	rename -uid "864B87AB-4C1F-46F3-75A4-4697B0E78501";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Clavical_01_FK_CtrlShape" -p "R_Clavical_01_FK_Ctrl";
	rename -uid "42C59B93-4545-41DF-B79F-A898F8B94088";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58853434199697707 7.9085417183309108 5.9314604410332095e-05
		0.18684588285100223 14.725804966800728 3.1563828446490305e-05
		-0.32429430113397184 14.140536066486252 -1.665735775380206e-05
		-0.64546722245342414 6.4955776015564153 -5.7101637308321074e-05
		-0.58853413966542067 -3.730757443011786 -6.6077299774036646e-05
		-0.18684568051944617 -10.548020691481662 -3.8326523810194857e-05
		0.32429450346553107 -9.962751791167122 9.8946623900975084e-06
		0.64546742478498764 -2.3177933262373509 5.0338941944616522e-05
		0.58853434199697707 7.9085417183309108 5.9314604410332095e-05
		0.18684588285100223 14.725804966800728 3.1563828446490305e-05
		-0.32429430113397184 14.140536066486252 -1.665735775380206e-05
		;
createNode parentConstraint -n "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1" -p "R_Clavical_01_FK_Ctrl_Grp";
	rename -uid "5001C628-4605-B385-4ACD-62B518A4E040";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.9251513916015597 0.037530082397462694 -2.3138299999999967 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999999999997 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" -89.999999999999972 8.9959671327898822e-15 1.7991934265579783e-14 ;
	setAttr ".rst" -type "double3" -2.31383 95.4631 -1.13107 ;
	setAttr ".rsrr" -type "double3" -89.999999999999972 8.9959671327898822e-15 1.7991934265579783e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Clavical_01_FK_Ctrl_Grp";
	rename -uid "354A87AB-4FD2-8243-A037-B897738B5CA5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.9251513916015597 0.037530082397462694 -2.3138299999999967 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999999999997 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" -89.999999999999972 8.9959671327898822e-15 1.7991934265579783e-14 ;
	setAttr ".rst" -type "double3" -2.31383 95.4631 -1.13107 ;
	setAttr ".rsrr" -type "double3" -89.999999999999972 8.9959671327898822e-15 1.7991934265579783e-14 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_Clav_Ctrl_Grp_scaleConstraint1" -p "R_Arm_Clav_Ctrl_Grp";
	rename -uid "4990F0A6-4262-E3BA-21FE-EBBA71318B83";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_FK_Ctrl_Grp" -p "R_Arm_Ctrl_Grp";
	rename -uid "2F377CC3-4FAD-D383-BAC4-19A279849986";
createNode transform -n "R_Arm_01_FK_Ctrl_Grp" -p "R_Arm_FK_Ctrl_Grp";
	rename -uid "3CD7B2A5-40B1-6194-B6A9-14A98F8E1606";
createNode transform -n "R_Arm_01_FK_Ctrl" -p "R_Arm_01_FK_Ctrl_Grp";
	rename -uid "2C08652C-489F-EEA1-30E8-95A567CCCBFE";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Arm_01_FK_CtrlShape" -p "R_Arm_01_FK_Ctrl";
	rename -uid "23C9C4BE-40F5-E869-347B-2694FCCABFB8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.8375535710469868 4.1015684505434589 4.0035933894902991
		-2.8375535710469868 5.7874714865678722 -0.066536584925823108
		-2.8375535710469868 4.1015684505434571 -4.136666559341946
		-2.8375535710469868 0.031438476127336121 -5.822569595366363
		-2.8375535710469868 -4.0386914982887872 -4.136666559341946
		-2.8375535710469868 -5.724594534313205 -0.066536584925824038
		-2.8375535710469868 -4.0386914982887863 4.0035933894902991
		-2.8375535710469868 0.031438476127335038 5.689496425514716
		-2.8375535710469868 4.1015684505434589 4.0035933894902991
		-2.8375535710469868 5.7874714865678722 -0.066536584925823108
		-2.8375535710469868 4.1015684505434571 -4.136666559341946
		;
createNode parentConstraint -n "R_Arm_01_FK_Ctrl_Grp_parentConstraint1" -p "R_Arm_01_FK_Ctrl_Grp";
	rename -uid "C123D322-41AF-F9CC-CAF5-69B04BC06CDE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.2450400000000048 8.8817841970012523e-16 
		5.6843418860808015e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0.031714073332931469 1.3429067857251986 0.63534752723476684 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925639 -1.3429893242056095 ;
	setAttr ".rst" -type "double3" -8.5588700000000042 95.463100000000054 -1.1310700000000009 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925639 -1.3429893242056095 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Arm_01_FK_Ctrl_Grp";
	rename -uid "B9F63C5A-4F6C-8E61-C181-1187717CEDF0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.2450400000000066 1.3322676295501878e-15 
		8.5265128291212022e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0.031714073332931469 1.3429067857251986 0.63534752723476684 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925639 -1.3429893242056095 ;
	setAttr ".rst" -type "double3" -8.558870000000006 95.463100000000082 -1.1310700000000014 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925639 -1.3429893242056095 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_02_FK_Ctrl_Grp" -p "R_Arm_FK_Ctrl_Grp";
	rename -uid "0CB07A28-4269-D35A-378F-0E863C7F0C14";
createNode transform -n "R_Arm_02_FK_Ctrl" -p "R_Arm_02_FK_Ctrl_Grp";
	rename -uid "13210570-4186-32B2-D1AE-F4AA3E1FA38C";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.0658141036401503e-14 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 1.0658141036401503e-14 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Arm_02_FK_CtrlShape" -p "R_Arm_02_FK_Ctrl";
	rename -uid "0725BA25-4B49-1FAA-492B-41A3C4D35AD7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5527136788005009e-15 2.7493206626420967 2.7493206626420812
		3.5527136788005009e-15 3.8881265684210358 -1.3972775627367173e-14
		3.5527136788005009e-15 2.7493206626420958 -2.7493206626421096
		3.5527136788005009e-15 1.2591123033939924e-15 -3.8881265684210504
		3.5527136788005009e-15 -2.7493206626420945 -2.7493206626421096
		3.5527136788005009e-15 -3.8881265684210362 -1.460033101277226e-14
		3.5527136788005009e-15 -2.7493206626420941 2.7493206626420812
		3.5527136788005009e-15 5.2732868817104992e-16 3.888126568421022
		3.5527136788005009e-15 2.7493206626420967 2.7493206626420812
		3.5527136788005009e-15 3.8881265684210358 -1.3972775627367173e-14
		3.5527136788005009e-15 2.7493206626420958 -2.7493206626421096
		;
createNode parentConstraint -n "R_Arm_02_FK_Ctrl_Grp_parentConstraint1" -p "R_Arm_02_FK_Ctrl_Grp";
	rename -uid "5466C670-4A30-017C-94AD-F3B2C40F7564";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -17.298644268687632 -1.5543122344752192e-15 
		-1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 -7.0297751710508784e-17 
		-3.975693351829396e-16 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925661 -1.3429893242056095 ;
	setAttr ".rst" -type "double3" -25.851699759289996 95.868511011042713 -0.93930357191785074 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925661 -1.3429893242056095 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_02_FK_Ctrl_Grp_parentConstraint2" -p "R_Arm_02_FK_Ctrl_Grp";
	rename -uid "631C80AB-4D02-055E-69D5-5985BA9BD7F6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -17.298644268687632 -1.5543122344752192e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 -7.0297751710508784e-17 
		-3.975693351829396e-16 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925661 -1.3429893242056095 ;
	setAttr ".rst" -type "double3" -25.851699759289996 95.868511011042727 -0.93930357191785074 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925661 -1.3429893242056095 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_03_FK_Ctrl_Grp" -p "R_Arm_FK_Ctrl_Grp";
	rename -uid "86FE2A70-4D08-CACF-4416-768A8E724383";
createNode transform -n "R_Arm_03_FK_Ctrl" -p "R_Arm_03_FK_Ctrl_Grp";
	rename -uid "BB845081-4157-4401-0C55-EBA7B61B034C";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Arm_03_FK_CtrlShape" -p "R_Arm_03_FK_Ctrl";
	rename -uid "58676970-4E9D-59EF-66EE-8EA46EE4FFBA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 3.3334171996710209 3.3334171996710049
		0 4.7141638128224974 -1.3922195434000536e-14
		0 3.33341719967102 -3.3334171996710333
		0 1.5501990759988281e-15 -4.7141638128225125
		0 -3.3334171996710178 -3.3334171996710333
		0 -4.7141638128224992 -1.4683075728496693e-14
		0 -3.3334171996710174 3.3334171996710049
		0 6.6294713679527533e-16 4.7141638128224841
		0 3.3334171996710209 3.3334171996710049
		0 4.7141638128224974 -1.3922195434000536e-14
		0 3.33341719967102 -3.3334171996710333
		;
createNode parentConstraint -n "R_Arm_03_FK_Ctrl_Grp_parentConstraint1" -p "R_Arm_03_FK_Ctrl_Grp";
	rename -uid "1FF6B19F-4EE0-7F02-D126-36BB6DB9ACAE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -14.466561687799722 -1.0123883138479783e-06 
		-3.8336277810913089e-05 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 -7.0297751710508784e-17 
		-3.975693351829396e-16 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925661 -1.3429893242056095 ;
	setAttr ".rst" -type "double3" -40.313399759290036 96.207511011042754 -0.77893157191785167 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925661 -1.3429893242056095 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_03_FK_Ctrl_Grp_parentConstraint2" -p "R_Arm_03_FK_Ctrl_Grp";
	rename -uid "5E85F0EC-48A0-132E-AEDE-6C9A1F8C2751";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -14.466561687799736 -1.0123883136259337e-06 
		-3.8336277810913089e-05 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 -7.0297751710508784e-17 
		-3.975693351829396e-16 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925661 -1.3429893242056095 ;
	setAttr ".rst" -type "double3" -40.31339975929005 96.207511011042754 -0.77893157191785178 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925661 -1.3429893242056095 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_FK_Ctrl_Grp_scaleConstraint1" -p "R_Arm_FK_Ctrl_Grp";
	rename -uid "966CBBEF-4491-10C8-398F-529D059B264A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_IK_Main_Ctrl_Grp" -p "R_Arm_Ctrl_Grp";
	rename -uid "2C8FB98A-4905-DE03-C52B-2DA180B01020";
createNode transform -n "R_Arm_IK_Ctrl_Base_Grp" -p "R_Arm_IK_Main_Ctrl_Grp";
	rename -uid "4DE96333-49B9-6EC4-90EA-AD865A909F2F";
	setAttr ".t" -type "double3" -8.5588703155517578 95.463096618652344 -1.1310700178146362 ;
createNode transform -n "R_Arm_IK_Base_Ctrl" -p "R_Arm_IK_Ctrl_Base_Grp";
	rename -uid "A64F798B-4F17-E1F0-F312-46AE3CF8A700";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 3.814697265625e-06 -7.62939453125e-06 2.0265579223632812e-06 ;
	setAttr ".sp" -type "double3" 3.814697265625e-06 -7.62939453125e-06 2.0265579223632812e-06 ;
createNode nurbsCurve -n "R_Arm_IK_Base_CtrlShape" -p "R_Arm_IK_Base_Ctrl";
	rename -uid "5B3FC185-44B2-E4B4-42AF-15B0377DAB4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.3708864917176178 -2.8900298693479796 -2.8900202133955264
		-2.3708864917176182 -7.6293945315002627e-06 -4.0871066207441169
		-2.3708864917176178 2.8900146105589171 -2.8900202133955255
		-2.3708864917176182 4.0871010179075089 2.0265579207694482e-06
		-2.3708864917176187 2.8900146105589171 2.8900242665113702
		-2.3708864917176187 -7.6293945308405917e-06 4.0871106738599652
		-2.3708864917176187 -2.8900298693479796 2.8900242665113693
		-2.3708864917176182 -4.0871162766965714 2.0265579215386824e-06
		-2.3708864917176178 -2.8900298693479796 -2.8900202133955264
		-2.3708864917176182 -7.6293945315002627e-06 -4.0871066207441169
		-2.3708864917176178 2.8900146105589171 -2.8900202133955255
		;
createNode transform -n "R_Arm_PV_Ctrl_Grp" -p "R_Arm_IK_Main_Ctrl_Grp";
	rename -uid "647CA108-4183-090E-5A76-6ABF3D5288B2";
	setAttr ".t" -type "double3" -25.851699821708198 95.868511014161271 -0.93930920724877065 ;
	setAttr ".r" -type "double3" -89.983176540659002 0.63519534902042507 -1.3429893176474008 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "R_Arm_PV_Ctrl_Offset" -p "R_Arm_PV_Ctrl_Grp";
	rename -uid "D9547C11-47BB-5EB6-B8DD-A6B87D2709DF";
	setAttr ".t" -type "double3" -1.0658141036401503e-14 38.441949575932057 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 89.983172950910117 -1.3431757650075771 -0.63480093870769261 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
createNode transform -n "R_Arm_PV_Ctrl" -p "R_Arm_PV_Ctrl_Offset";
	rename -uid "E55AF5D7-4137-30DF-8BF4-EF9453237CBA";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.7351700156214065e-08 -2.9390460953848674e-08 -3.628075347705817e-06 ;
	setAttr ".sp" -type "double3" 7.7351700156214065e-08 -2.9390460953848674e-08 -3.628075347705817e-06 ;
createNode nurbsCurve -n "R_Arm_PV_CtrlShape" -p "R_Arm_PV_Ctrl";
	rename -uid "9C8264D9-4B89-51F6-1697-FA94061A7621";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.26932434047054177 0.26932438843178108 -3.628075347705817e-06
		7.7351699906468094e-08 4.0786733855306849 -3.6280753472617278e-06
		0.26932449517394208 0.26932438843178053 -3.628075347705817e-06
		4.078673492272852 -2.9390460520364317e-08 -3.6280753472617278e-06
		0.26932449517394208 -0.26932444721270243 -3.628075347705817e-06
		7.7351700564778713e-08 -4.0786734443116091 -3.6280753481499062e-06
		-0.26932434047054177 -0.26932444721270199 -3.628075347705817e-06
		-4.0786733375694517 -2.9390461288011642e-08 -3.6280753481499062e-06
		-0.26932434047054177 0.26932438843178108 -3.628075347705817e-06
		7.7351699906468094e-08 4.0786733855306849 -3.6280753472617278e-06
		0.26932449517394208 0.26932438843178053 -3.628075347705817e-06
		;
createNode transform -n "R_Arm_IK_Ctrl_Grp" -p "R_Arm_IK_Main_Ctrl_Grp";
	rename -uid "7D1AD936-474C-3956-7817-55B28B29E965";
	setAttr ".t" -type "double3" -40.313400268554688 96.207511901855469 -0.77893155813217163 ;
createNode transform -n "R_Arm_IK_Ctrl" -p "R_Arm_IK_Ctrl_Grp";
	rename -uid "4F5CC72F-4879-DD4D-3EFD-7ABB71EE7835";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -4.1961669921875e-05 3.0517578125e-05 2.2649765014648438e-06 ;
	setAttr ".sp" -type "double3" -4.1961669921875e-05 3.0517578125e-05 2.2649765014648438e-06 ;
createNode nurbsCurve -n "R_Arm_IK_CtrlShape" -p "R_Arm_IK_Ctrl";
	rename -uid "32885225-472F-6575-F405-738725B4100D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.1961669921319279e-05 3.0252468015975471 -3.025214019042922
		-4.1961669921089089e-05 3.051757812526197e-05 -4.2782996329957079
		-4.1961669921319279e-05 -3.0251857664412971 -3.0252140190429206
		-4.1961669921875e-05 -4.2782713803940853 2.264976500202644e-06
		-4.1961669922430721e-05 -3.0251857664412971 3.0252185489959236
		-4.1961669922660911e-05 3.0517578124571439e-05 4.2783041629487117
		-4.1961669922430721e-05 3.0252468015975471 3.0252185489959236
		-4.1961669921875e-05 4.2783324155503353 2.2649765010078623e-06
		-4.1961669921319279e-05 3.0252468015975471 -3.025214019042922
		-4.1961669921089089e-05 3.051757812526197e-05 -4.2782996329957079
		-4.1961669921319279e-05 -3.0251857664412971 -3.0252140190429206
		;
createNode ikHandle -n "R_Arm_IK_Handle" -p "R_Arm_IK_Ctrl";
	rename -uid "3BCE6D94-4A02-037C-351E-A293433098C9";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_Arm_IK_Handle_poleVectorConstraint1" -p "R_Arm_IK_Handle";
	rename -uid "97C1F307-4E0A-41CC-4CB3-729DCEA22F02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_PV_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -17.718619951401418 0.42669469699994522 -38.247830434316043 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1" -p "R_Arm_IK_Main_Ctrl_Grp";
	rename -uid "2E017E14-4E7A-51DF-FB41-81A6FF53D55E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.31383 -1.1310700000000424 -95.4631 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999972 0 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_IK_Main_Ctrl_Grp_scaleConstraint1" -p "R_Arm_IK_Main_Ctrl_Grp";
	rename -uid "B3EA9B39-4C5F-D63E-AC15-258A077978C3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clavical_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Hand_FK_Ctrl_Grp" -p "Arm_Ctrl_Grp";
	rename -uid "659CAAA4-4B79-26AB-DF0F-3F89149283F6";
createNode transform -n "R_Hand_01_FK_Ctrl_Grp" -p "R_Hand_FK_Ctrl_Grp";
	rename -uid "D2DDF3FD-4905-2219-269D-F8829A66D059";
createNode transform -n "R_Hand_01_FK_Ctrl" -p "R_Hand_01_FK_Ctrl_Grp";
	rename -uid "20E5449C-41AA-983E-325F-978608DF1F59";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Hand_01_FK_CtrlShape" -p "R_Hand_01_FK_Ctrl";
	rename -uid "52A1DBB1-4E4D-474F-3E20-C4A67F9CB16B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 7;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-19.051569126700841 2.5748068118689256 2.574806811868906
		-19.051569126700841 3.6413267138356642 -1.6762415967131268e-14
		-19.051569126700841 2.5748068118689251 -2.574806811868946
		-19.051569126700841 1.2291819923931094e-15 -3.6413267138356802
		-19.051569126700841 -2.5748068118689265 -2.574806811868946
		-19.051569126700841 -3.6413267138356642 -1.7350137109710976e-14
		-19.051569126700841 -2.5748068118689265 2.574806811868906
		-19.051569126700841 5.4384853424371118e-16 3.6413267138356495
		-19.051569126700841 2.5748068118689256 2.574806811868906
		-19.051569126700841 3.6413267138356642 -1.6762415967131268e-14
		-19.051569126700841 2.5748068118689251 -2.574806811868946
		;
createNode parentConstraint -n "R_Hand_01_FK_Ctrl_Grp_parentConstraint1" -p "R_Hand_01_FK_Ctrl_Grp";
	rename -uid "9CC75362-42F4-9436-63A7-9EA8C96936C8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_03_RK_JntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.0057826061820520636 0.0087543738683613093 
		-0.0036086412004863178 ;
	setAttr ".tg[0].tor" -type "double3" -1.9111282182661152e-14 9.369231934050586e-16 
		1.1927080055488188e-15 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925583 -1.3429893242056083 ;
	setAttr ".rst" -type "double3" -40.307799759289985 96.203811011042703 -0.78775157191785194 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.6351730150592555 -1.3429893242056083 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Hand_Cup_01_FK_Ctrl_Grp" -p "R_Hand_FK_Ctrl_Grp";
	rename -uid "D451CF91-401F-01E3-9DDD-3985F5E6B4BA";
createNode transform -n "R_Hand_Cup_01_FK_Ctrl" -p "R_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "E1D46984-4CB2-7031-675A-4DB405CBF63B";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Hand_Cup_01_FK_CtrlShape" -p "R_Hand_Cup_01_FK_Ctrl";
	rename -uid "167EA8D2-4E15-6AA8-1F8E-809126DA80F7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 3.5278899207600922 -0.28522334531492521
		0 4.9891897724982623 -2.469908832552068e-17
		0 3.5278899207600909 0.28522334531492521
		0 1.0703140219180186e-15 0.40336672324979189
		0 -3.5278899207600896 0.28522334531492521
		0 -4.9891897724982641 4.0405520543065553e-17
		0 -3.5278899207600887 -0.28522334531492521
		0 1.3129949538351336e-16 -0.40336672324979189
		0 3.5278899207600922 -0.28522334531492521
		0 4.9891897724982623 -2.469908832552068e-17
		0 3.5278899207600909 0.28522334531492521
		;
createNode parentConstraint -n "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1" -p "R_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "6E77FAB7-481C-62DC-D656-85B00ED8B78E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6094737698135759 1.910292120689409 0.091912549127911802 ;
	setAttr ".tg[0].tor" -type "double3" 89.983172950910131 -1.3431757650075775 -0.63477860474556225 ;
	setAttr ".lr" -type "double3" 6.3580033524959178e-15 -2.981770013872047e-16 -1.6544066513870868e-32 ;
	setAttr ".rst" -type "double3" -42.935399759290021 96.357911011042717 -2.6689715719178531 ;
	setAttr ".rsrr" -type "double3" 6.3580033524959178e-15 -2.981770013872047e-16 -1.6544066513870868e-32 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "494E2255-44E0-8134-764B-E8A66818E0CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.609473769813583 1.9102921206894099 0.091912549127911802 ;
	setAttr ".tg[0].tor" -type "double3" 89.983172950910131 -1.3431757650075775 -0.63477860474556225 ;
	setAttr ".lr" -type "double3" 6.3564503472803595e-15 -1.0933156717530838e-15 1.3914926731402888e-15 ;
	setAttr ".rst" -type "double3" -42.935399759290028 96.357911011042717 -2.6689715719178539 ;
	setAttr ".rsrr" -type "double3" 6.3580033524959178e-15 -2.981770013872047e-16 -1.6544066513870868e-32 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1" -p "R_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "3FC4FAF9-480C-0AE1-C596-D7A43BDC8D50";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_01_FK_Ctrl_Grp" -p "R_Hand_FK_Ctrl_Grp";
	rename -uid "C0EE33E9-4679-8051-D270-5393FF9EC3B5";
createNode transform -n "R_Finger_01_Knuckle_01_FK_Ctrl_Grp" -p "R_Finger_01_FK_Ctrl_Grp";
	rename -uid "5724A901-4857-4D1E-601C-0DA96FE501F5";
createNode transform -n "R_Finger_01_Knuckle_01_FK_Ctrl" -p "R_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "3E11AC94-4B71-6719-C94C-A59799E16794";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_01_Knuckle_01_FK_CtrlShape" -p "R_Finger_01_Knuckle_01_FK_Ctrl";
	rename -uid "878D16FF-4250-1C1A-33DD-A98203D4F7C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23111167546282491 3.6873877864014863 0
		2.0013255503376501e-17 5.2147538172578844 0
		-0.23111167546282491 3.6873877864014855 0
		-0.32684126586229628 1.5045570846083967e-15 0
		-0.23111167546282491 -3.6873877864014832 0
		-3.2739913138403332e-17 -5.2147538172578853 0
		0.23111167546282491 -3.6873877864014828 0
		0.32684126586229628 5.2308918901972055e-16 0
		0.23111167546282491 3.6873877864014863 0
		2.0013255503376501e-17 5.2147538172578844 0
		-0.23111167546282491 3.6873877864014855 0
		;
createNode parentConstraint -n "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "11719216-40E0-19DC-FCD5-918825453AD3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.0471587998276632 -0.4702512160499146 -0.21917722508489135 ;
	setAttr ".tg[0].tor" -type "double3" 88.656824177087657 0.016822425508364762 89.364826957562073 ;
	setAttr ".lr" -type "double3" 8.0471737242534562e-15 89.999999999999972 0 ;
	setAttr ".rst" -type "double3" -42.354199759290012 96.032411011042697 -0.29489957191785193 ;
	setAttr ".rsrr" -type "double3" 8.0471737242534562e-15 89.999999999999972 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "F48737B7-40D7-4A5D-172F-018AA4D2ADC4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.0471587998276632 -0.47025121604991427 -0.21917722508489135 ;
	setAttr ".tg[0].tor" -type "double3" 88.656824177087657 0.016822425508364762 89.364826957562073 ;
	setAttr ".lr" -type "double3" 7.0983803157170224e-15 89.999999999999972 0 ;
	setAttr ".rst" -type "double3" -42.354199759290012 96.032411011042697 -0.29489957191785227 ;
	setAttr ".rsrr" -type "double3" 8.0471737242534562e-15 89.999999999999972 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_01_Knuckle_02_FK_Ctrl_Grp" -p "R_Finger_01_FK_Ctrl_Grp";
	rename -uid "4433B828-47DA-1A74-EE2C-24BD49F8E16C";
createNode transform -n "R_Finger_01_Knuckle_02_FK_Ctrl" -p "R_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "3674DF7C-4B3E-7F26-F6ED-E8815BDE85B6";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 1.4210854715202004e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_01_Knuckle_02_FK_CtrlShape" -p "R_Finger_01_Knuckle_02_FK_Ctrl";
	rename -uid "25AA2F0A-4E1A-4E03-F58D-DDA2C270F6E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.4210854715202004e-14 1.7083208564400671 -1.7083208564400594
		-1.4210854715202004e-14 2.4159305240623654 1.4062921636039235e-14
		-1.4210854715202004e-14 1.7083208564400665 1.7083208564400878
		-1.4210854715202004e-14 -6.5871459464313279e-15 2.4159305240623876
		-1.4210854715202004e-14 -1.7083208564400802 1.7083208564400878
		-1.4210854715202004e-14 -2.4159305240623805 1.4452860128127874e-14
		-1.4210854715202004e-14 -1.7083208564400798 -1.7083208564400594
		-1.4210854715202004e-14 -7.041847803974967e-15 -2.4159305240623592
		-1.4210854715202004e-14 1.7083208564400671 -1.7083208564400594
		-1.4210854715202004e-14 2.4159305240623654 1.4062921636039235e-14
		-1.4210854715202004e-14 1.7083208564400665 1.7083208564400878
		;
createNode parentConstraint -n "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "0373866E-41E3-5E6A-B483-1EA7A9A63455";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.0522180000000021 -0.69159999999996558 -1.179000000000002 ;
	setAttr ".tg[0].tor" -type "double3" 4.2928659695229552 -25.469866719530067 54.373605364405023 ;
	setAttr ".lr" -type "double3" 77.164848362321536 31.72787180024357 59.629158448751909 ;
	setAttr ".rst" -type "double3" -43.533199759290014 95.340811011042732 2.7573184280821499 ;
	setAttr ".rsrr" -type "double3" 77.164848362321536 31.72787180024357 59.629158448751909 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "E126AF86-4EE2-9677-56AD-1D8F68DBD9E4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.0522180000000021 -0.69159999999995136 -1.1790000000000092 ;
	setAttr ".tg[0].tor" -type "double3" 4.2928659695229552 -25.469866719530067 54.373605364405023 ;
	setAttr ".lr" -type "double3" 77.164848362321536 31.72787180024357 59.629158448751909 ;
	setAttr ".rst" -type "double3" -43.533199759290021 95.340811011042746 2.7573184280821499 ;
	setAttr ".rsrr" -type "double3" 77.164848362321536 31.72787180024357 59.629158448751909 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_01_Knuckle_03_FK_Ctrl_Grp" -p "R_Finger_01_FK_Ctrl_Grp";
	rename -uid "FCFFE4D9-49BB-6E6F-44E7-58913C5116C8";
createNode transform -n "R_Finger_01_Knuckle_03_FK_Ctrl" -p "R_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "57BE64FC-430B-25E7-E555-05B0AACB040F";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.5987211554602254e-14 7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" -1.5987211554602254e-14 7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_01_Knuckle_03_FK_CtrlShape" -p "R_Finger_01_Knuckle_03_FK_Ctrl";
	rename -uid "0BEA01C8-4FFD-5E71-39B0-0497AFC86C6E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6645352591003757e-15 1.7083208564400814 -1.7083208564400736
		-2.6645352591003757e-15 2.4159305240623796 -1.4793307916276857e-16
		-2.6645352591003757e-15 1.7083208564400807 1.7083208564400736
		-2.6645352591003757e-15 7.6237087687706766e-15 2.4159305240623734
		-2.6645352591003757e-15 -1.708320856440066 1.7083208564400736
		-2.6645352591003757e-15 -2.4159305240623663 2.4200541292587085e-16
		-2.6645352591003757e-15 -1.7083208564400656 -1.7083208564400736
		-2.6645352591003757e-15 7.1690069112270367e-15 -2.4159305240623734
		-2.6645352591003757e-15 1.7083208564400814 -1.7083208564400736
		-2.6645352591003757e-15 2.4159305240623796 -1.4793307916276857e-16
		-2.6645352591003757e-15 1.7083208564400807 1.7083208564400736
		;
createNode parentConstraint -n "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "C3306804-4D60-597D-6CFE-3193013C3952";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.3333566172594544 2.9002132954758508e-05 
		-4.1612826095160926e-05 ;
	setAttr ".tg[0].tor" -type "double3" -0.37571711577718125 -29.209601892891438 3.6072916636437253 ;
	setAttr ".lr" -type "double3" 64.941546953431725 18.68433633237094 30.32765547980015 ;
	setAttr ".rst" -type "double3" -44.966699759290023 92.894711011042702 4.5102984280821623 ;
	setAttr ".rsrr" -type "double3" 64.941546953431725 18.68433633237094 30.32765547980015 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "85A952CA-4284-385E-2DE5-4095615F2FC7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_01_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.3333566172594615 2.9002132947653081e-05 
		-4.1612826095160926e-05 ;
	setAttr ".tg[0].tor" -type "double3" -0.37571711577718125 -29.209601892891438 3.6072916636437253 ;
	setAttr ".lr" -type "double3" 64.941546953431725 18.68433633237094 30.32765547980015 ;
	setAttr ".rst" -type "double3" -44.966699759290023 92.894711011042702 4.5102984280821605 ;
	setAttr ".rsrr" -type "double3" 64.941546953431725 18.68433633237094 30.32765547980015 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_01_Knuckle_04_FK_Ctrl_Grp" -p "R_Finger_01_FK_Ctrl_Grp";
	rename -uid "42F4A5B5-49C7-044F-D631-099491D8AC17";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -48.015999759290011 91.110811011042713 5.7049984280821455 ;
	setAttr ".r" -type "double3" 10.61452240596663 18.684336332370936 30.327655479800164 ;
createNode transform -n "R_Finger_01_Knuckle_04_FK_Ctrl" -p "R_Finger_01_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "4D93E4A6-4AA2-64A3-858C-6692B7087ECF";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -2.7533531010703882e-14 0 1.9539925233402755e-14 ;
	setAttr ".sp" -type "double3" -2.7533531010703882e-14 0 1.9539925233402755e-14 ;
createNode nurbsCurve -n "R_Finger_01_Knuckle_04_FK_CtrlShape" -p "R_Finger_01_Knuckle_04_FK_Ctrl";
	rename -uid "3EFCBA9F-4390-22BD-F0E5-F6B40EC50AA6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.9936057773011271e-15 1.7083208564400743 -1.7083208564400665
		-7.9936057773011271e-15 2.4159305240623725 6.9574942784382331e-15
		-7.9936057773011271e-15 1.7083208564400736 1.7083208564400807
		-7.9936057773011271e-15 5.18281411169674e-16 2.4159305240623805
		-7.9936057773011271e-15 -1.7083208564400731 1.7083208564400807
		-7.9936057773011271e-15 -2.4159305240623734 7.3474327705268722e-15
		-7.9936057773011271e-15 -1.7083208564400727 -1.7083208564400665
		-7.9936057773011271e-15 6.3579553626034573e-17 -2.4159305240623663
		-7.9936057773011271e-15 1.7083208564400743 -1.7083208564400665
		-7.9936057773011271e-15 2.4159305240623725 6.9574942784382331e-15
		-7.9936057773011271e-15 1.7083208564400736 1.7083208564400807
		;
createNode scaleConstraint -n "R_Finger_01_FK_Ctrl_Grp_scaleConstraint1" -p "R_Finger_01_FK_Ctrl_Grp";
	rename -uid "654A23D4-4CB1-BC7F-AF0B-50B31E41890D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_02_FK_Ctrl_Grp" -p "R_Hand_FK_Ctrl_Grp";
	rename -uid "F2106EFF-455B-FAA4-1DDA-32BE7487A55A";
createNode transform -n "R_Finger_02_Knuckle_01_FK_Ctrl_Grp" -p "R_Finger_02_FK_Ctrl_Grp";
	rename -uid "46DCDCCF-41F4-83AA-C17F-BFAC967100C3";
createNode transform -n "R_Finger_02_Knuckle_01_FK_Ctrl" -p "R_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "55054D57-486A-94D0-BD36-45820ADF98EE";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 -2.8421709430404007e-14 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_02_Knuckle_01_FK_CtrlShape" -p "R_Finger_02_Knuckle_01_FK_Ctrl";
	rename -uid "8D789343-4E17-A7FC-9BDA-07B23BF59485";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.5527136788005009e-15 1.70832085644006 -1.7083208564400736
		-3.5527136788005009e-15 2.4159305240623583 -1.4793307916276857e-16
		-3.5527136788005009e-15 1.7083208564400594 1.7083208564400736
		-3.5527136788005009e-15 -1.3692573304032329e-14 2.4159305240623734
		-3.5527136788005009e-15 -1.7083208564400874 1.7083208564400736
		-3.5527136788005009e-15 -2.4159305240623876 2.4200541292587085e-16
		-3.5527136788005009e-15 -1.7083208564400869 -1.7083208564400736
		-3.5527136788005009e-15 -1.4147275161575969e-14 -2.4159305240623734
		-3.5527136788005009e-15 1.70832085644006 -1.7083208564400736
		-3.5527136788005009e-15 2.4159305240623583 -1.4793307916276857e-16
		-3.5527136788005009e-15 1.7083208564400594 1.7083208564400736
		;
createNode parentConstraint -n "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "FFA09F68-41A8-2533-0EF4-AF8BC53377E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.3750917141169907 -3.0746619690990213 -0.22513910900990197 ;
	setAttr ".tg[0].tor" -type "double3" 96.984319633482997 -21.446472576163398 0.81102226025628676 ;
	setAttr ".lr" -type "double3" 7.5288532379989261 1.3398884268187228 20.109876494637774 ;
	setAttr ".rst" -type "double3" -48.651299759290005 96.173311011042713 2.3794984280821483 ;
	setAttr ".rsrr" -type "double3" 7.5288532379989261 1.3398884268187228 20.109876494637774 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "1A42E73D-4EA7-AA9E-E9E5-5A9C3DC577EA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.3750917141169907 -3.0746619690990205 -0.22513910900990197 ;
	setAttr ".tg[0].tor" -type "double3" 96.984319633482997 -21.446472576163398 0.81102226025628676 ;
	setAttr ".lr" -type "double3" 7.5288532379989261 1.3398884268187212 20.109876494637774 ;
	setAttr ".rst" -type "double3" -48.651299759290005 96.173311011042713 2.3794984280821474 ;
	setAttr ".rsrr" -type "double3" 7.5288532379989261 1.3398884268187228 20.109876494637774 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_02_Knuckle_02_FK_Ctrl_Grp" -p "R_Finger_02_FK_Ctrl_Grp";
	rename -uid "8A724855-4EFD-F5B8-69C8-4E865E9BCFFE";
createNode transform -n "R_Finger_02_Knuckle_02_FK_Ctrl" -p "R_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "23296D2C-48CE-9CCD-1DE9-E59B103C7DEF";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_02_Knuckle_02_FK_CtrlShape" -p "R_Finger_02_Knuckle_02_FK_Ctrl";
	rename -uid "3C03AC04-4A32-D2F0-4B0A-16A95D647F9C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5527136788005009e-15 1.7083208564400743 -1.7083208564400736
		3.5527136788005009e-15 2.4159305240623725 -1.4793307916276857e-16
		3.5527136788005009e-15 1.7083208564400736 1.7083208564400736
		3.5527136788005009e-15 5.18281411169674e-16 2.4159305240623734
		3.5527136788005009e-15 -1.7083208564400731 1.7083208564400736
		3.5527136788005009e-15 -2.4159305240623734 2.4200541292587085e-16
		3.5527136788005009e-15 -1.7083208564400727 -1.7083208564400736
		3.5527136788005009e-15 6.3579553626034573e-17 -2.4159305240623734
		3.5527136788005009e-15 1.7083208564400743 -1.7083208564400736
		3.5527136788005009e-15 2.4159305240623725 -1.4793307916276857e-16
		3.5527136788005009e-15 1.7083208564400736 1.7083208564400736
		;
createNode parentConstraint -n "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "34AD7CCD-4625-4513-5176-DD84A6939563";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_02_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.0966790240319817 1.4610952504767738e-05 
		-2.6145914944208926e-06 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317584e-15 1.987846675914698e-15 
		22.928549236095332 ;
	setAttr ".lr" -type "double3" 7.4584132894044881 -1.6902111096619861 42.840087749056359 ;
	setAttr ".rst" -type "double3" -51.558399759289998 95.108911011042693 2.4519084280821475 ;
	setAttr ".rsrr" -type "double3" 7.4584132894044881 -1.6902111096619861 42.840087749056359 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "CD4CBDC3-4C72-578D-53EA-52AB9A7D9A33";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_02_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.0966790240319817 1.4610952504767738e-05 
		-2.6145914961972494e-06 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317584e-15 1.987846675914698e-15 
		22.928549236095332 ;
	setAttr ".lr" -type "double3" 7.4584132894044863 -1.6902111096619876 42.840087749056359 ;
	setAttr ".rst" -type "double3" -51.558399759289998 95.108911011042693 2.4519084280821457 ;
	setAttr ".rsrr" -type "double3" 7.4584132894044881 -1.6902111096619861 42.840087749056359 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_02_Knuckle_03_FK_Ctrl_Grp" -p "R_Finger_02_FK_Ctrl_Grp";
	rename -uid "3BF34F0C-4302-D1F4-7852-88B5A8C2ED30";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -54.264799759290014 92.599211011042712 2.3429984280821485 ;
	setAttr ".r" -type "double3" 7.4584132894044961 -1.6902111096619872 42.840087749056359 ;
createNode transform -n "R_Finger_02_Knuckle_03_FK_Ctrl" -p "R_Finger_02_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "89352549-4500-B601-1FD2-749E7C0D0406";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 0 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 0 -5.3290705182007514e-15 ;
createNode nurbsCurve -n "R_Finger_02_Knuckle_03_FK_CtrlShape" -p "R_Finger_02_Knuckle_03_FK_Ctrl";
	rename -uid "85A08A6D-4AD0-65C9-4C65-BBAAF8B8CF81";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.5527136788005009e-15 1.7083208564400743 -1.7083208564400754
		-3.5527136788005009e-15 2.4159305240623725 -1.9242899185630192e-15
		-3.5527136788005009e-15 1.7083208564400736 1.7083208564400718
		-3.5527136788005009e-15 5.18281411169674e-16 2.4159305240623716
		-3.5527136788005009e-15 -1.7083208564400731 1.7083208564400718
		-3.5527136788005009e-15 -2.4159305240623734 -1.5343514264743796e-15
		-3.5527136788005009e-15 -1.7083208564400727 -1.7083208564400754
		-3.5527136788005009e-15 6.3579553626034573e-17 -2.4159305240623752
		-3.5527136788005009e-15 1.7083208564400743 -1.7083208564400754
		-3.5527136788005009e-15 2.4159305240623725 -1.9242899185630192e-15
		-3.5527136788005009e-15 1.7083208564400736 1.7083208564400718
		;
createNode scaleConstraint -n "R_Finger_02_FK_Ctrl_Grp_scaleConstraint1" -p "R_Finger_02_FK_Ctrl_Grp";
	rename -uid "9DB21E75-47A1-3462-3E30-2EB4297371F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_03_FK_Ctrl_Grp" -p "R_Hand_FK_Ctrl_Grp";
	rename -uid "27D735AB-4503-3FB8-7E39-2687E45B200F";
createNode transform -n "R_Finger_03_Knuckle_01_FK_Ctrl_Grp" -p "R_Finger_03_FK_Ctrl_Grp";
	rename -uid "DAEFCBE9-4473-0633-92F3-D69D73E33035";
createNode transform -n "R_Finger_03_Knuckle_01_FK_Ctrl" -p "R_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "7C90A63D-44DA-5DB1-73DB-5A9406137F23";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -4.2632564145606011e-14 5.5511151231257827e-16 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -4.2632564145606011e-14 5.5511151231257827e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_03_Knuckle_01_FK_CtrlShape" -p "R_Finger_03_Knuckle_01_FK_Ctrl";
	rename -uid "AC7FF061-41E1-D9B0-E0B4-E0B27F3B3444";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 1.7083208564400625 -1.7083208564400736
		0 2.4159305240623619 -3.6910776700252962e-17
		0 1.7083208564400618 1.708320856440074
		0 -1.3692573304032327e-14 2.4159305240623739
		0 -1.7083208564400898 1.708320856440074
		0 -2.4159305240623907 3.5302771538838655e-16
		0 -1.7083208564400894 -1.7083208564400736
		0 -1.4147275161575967e-14 -2.4159305240623739
		0 1.7083208564400625 -1.7083208564400736
		0 2.4159305240623619 -3.6910776700252962e-17
		0 1.7083208564400618 1.708320856440074
		;
createNode parentConstraint -n "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "98A8F19D-4BF8-92F0-6C37-01B6FDF323B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.6573981715691559 -0.73970892058643067 0.21737428945681359 ;
	setAttr ".tg[0].tor" -type "double3" 90.214072174133676 -20.434713950500633 -0.12703297212553111 ;
	setAttr ".lr" -type "double3" 0.40725246633192819 0.4702887734504993 19.092405550321914 ;
	setAttr ".rst" -type "double3" -48.948999759290018 96.623611011042712 0.047948428082148054 ;
	setAttr ".rsrr" -type "double3" 0.40725246633192819 0.4702887734504993 19.092405550321914 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "8677314F-408C-BB9C-FA83-21A8652B409F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.657398171569163 -0.73970892058643034 0.21737428945681359 ;
	setAttr ".tg[0].tor" -type "double3" 90.214072174133676 -20.434713950500633 -0.12703297212553111 ;
	setAttr ".lr" -type "double3" 0.40725246633192774 0.4702887734504978 19.092405550321914 ;
	setAttr ".rst" -type "double3" -48.948999759290025 96.623611011042712 0.047948428082147831 ;
	setAttr ".rsrr" -type "double3" 0.40725246633192819 0.4702887734504993 19.092405550321914 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_03_Knuckle_02_FK_Ctrl_Grp" -p "R_Finger_03_FK_Ctrl_Grp";
	rename -uid "E72EFF52-494B-2B13-834A-1B85B3294E5B";
createNode transform -n "R_Finger_03_Knuckle_02_FK_Ctrl" -p "R_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "10048DCE-4043-2ACA-52D9-D997F0BF3D92";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_03_Knuckle_02_FK_CtrlShape" -p "R_Finger_03_Knuckle_02_FK_Ctrl";
	rename -uid "3071BF56-4BC3-D6DC-234B-889F8D2CC71B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.1054273576010019e-15 1.7083208564400885 -1.7083208564400736
		7.1054273576010019e-15 2.4159305240623867 -3.6910776700252913e-17
		7.1054273576010019e-15 1.7083208564400878 1.7083208564400736
		7.1054273576010019e-15 1.4729136126371675e-14 2.4159305240623734
		7.1054273576010019e-15 -1.7083208564400589 1.7083208564400736
		7.1054273576010019e-15 -2.4159305240623592 3.530277153883865e-16
		7.1054273576010019e-15 -1.7083208564400585 -1.7083208564400736
		7.1054273576010019e-15 1.4274434268828037e-14 -2.4159305240623734
		7.1054273576010019e-15 1.7083208564400885 -1.7083208564400736
		7.1054273576010019e-15 2.4159305240623867 -3.6910776700252913e-17
		7.1054273576010019e-15 1.7083208564400878 1.7083208564400736
		;
createNode parentConstraint -n "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "19BE0B69-479A-BCCD-941C-5A8CD30B1EC6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_03_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.2946304711159549 1.3854961338211069e-05 
		-1.0113538562173119e-08 ;
	setAttr ".tg[0].tor" -type "double3" -9.9392333795734924e-17 9.9392333795734899e-17 
		15.347549166690113 ;
	setAttr ".lr" -type "double3" 0.51720052065500555 0.3457300176195699 34.439843760823116 ;
	setAttr ".rst" -type "double3" -52.062299759290021 95.546011011042737 0.074990828082148853 ;
	setAttr ".rsrr" -type "double3" 0.51720052065500555 0.3457300176195699 34.439843760823116 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "4F619CDB-4FCD-6A00-C5ED-938182F2B760";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_03_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.2946304711159691 1.3854961338211069e-05 
		-1.0113538451150816e-08 ;
	setAttr ".tg[0].tor" -type "double3" -9.9392333795734924e-17 9.9392333795734899e-17 
		15.347549166690113 ;
	setAttr ".lr" -type "double3" 0.51720052065500466 0.34573001761956851 34.439843760823116 ;
	setAttr ".rst" -type "double3" -52.062299759290035 95.546011011042737 0.074990828082149075 ;
	setAttr ".rsrr" -type "double3" 0.51720052065500555 0.3457300176195699 34.439843760823116 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_03_Knuckle_03_FK_Ctrl_Grp" -p "R_Finger_03_FK_Ctrl_Grp";
	rename -uid "E3AF2152-4CE7-4D77-D358-599516F20201";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -55.404499759290005 93.254111011042724 0.099444728082149034 ;
	setAttr ".r" -type "double3" 0.51720052065499322 0.34573001761957523 34.439843760823081 ;
createNode transform -n "R_Finger_03_Knuckle_03_FK_Ctrl" -p "R_Finger_03_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "A4C16A7B-4D97-7091-C79F-E58A0FDBCCCF";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 1.4210854715202004e-14 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 1.4210854715202004e-14 -2.2204460492503131e-16 ;
createNode nurbsCurve -n "R_Finger_03_Knuckle_03_FK_CtrlShape" -p "R_Finger_03_Knuckle_03_FK_Ctrl";
	rename -uid "9F098FCA-4C42-4830-BC1E-6586C4B8858F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.1054273576010019e-15 1.7083208564400743 -1.7083208564400738
		7.1054273576010019e-15 2.4159305240623725 -3.6997768408779988e-16
		7.1054273576010019e-15 1.7083208564400736 1.7083208564400734
		7.1054273576010019e-15 5.18281411169674e-16 2.4159305240623734
		7.1054273576010019e-15 -1.7083208564400731 1.7083208564400734
		7.1054273576010019e-15 -2.4159305240623734 1.9960808000839541e-17
		7.1054273576010019e-15 -1.7083208564400727 -1.7083208564400738
		7.1054273576010019e-15 6.3579553626034573e-17 -2.4159305240623734
		7.1054273576010019e-15 1.7083208564400743 -1.7083208564400738
		7.1054273576010019e-15 2.4159305240623725 -3.6997768408779988e-16
		7.1054273576010019e-15 1.7083208564400736 1.7083208564400734
		;
createNode scaleConstraint -n "R_Finger_03_FK_Ctrl_Grp_scaleConstraint1" -p "R_Finger_03_FK_Ctrl_Grp";
	rename -uid "02B7D515-417C-C1D3-FBC1-FFAA5D8413B2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_04_FK_Ctrl_Grp" -p "R_Hand_FK_Ctrl_Grp";
	rename -uid "24C3EFC6-4640-8E9B-BA62-ADB475A4AC63";
createNode transform -n "R_Finger_04_Knuckle_01_FK_Ctrl_Grp" -p "R_Finger_04_FK_Ctrl_Grp";
	rename -uid "E797FA6A-4623-1FA1-0B76-36BF8B516B01";
createNode transform -n "R_Finger_04_Knuckle_01_FK_Ctrl" -p "R_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "6BDC25CF-44EB-6C4B-3885-499A45BA560C";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -2.4868995751603507e-14 -5.6843418860808015e-14 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -2.4868995751603507e-14 -5.6843418860808015e-14 1.7763568394002505e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_04_Knuckle_01_FK_CtrlShape" -p "R_Finger_04_Knuckle_01_FK_Ctrl";
	rename -uid "1017F3D5-485E-C505-3830-009F76F8251F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0658141036401503e-14 1.7083208564400461 -1.7083208564400738
		-1.0658141036401503e-14 2.4159305240623445 -1.4793307916276862e-16
		-1.0658141036401503e-14 1.7083208564400456 1.7083208564400738
		-1.0658141036401503e-14 -2.7903428019234333e-14 2.4159305240623739
		-1.0658141036401503e-14 -1.7083208564401018 1.7083208564400738
		-1.0658141036401503e-14 -2.4159305240624023 2.420054129258709e-16
		-1.0658141036401503e-14 -1.7083208564401016 -1.7083208564400738
		-1.0658141036401503e-14 -2.8358129876777971e-14 -2.4159305240623739
		-1.0658141036401503e-14 1.7083208564400461 -1.7083208564400738
		-1.0658141036401503e-14 2.4159305240623445 -1.4793307916276862e-16
		-1.0658141036401503e-14 1.7083208564400456 1.7083208564400738
		;
createNode parentConstraint -n "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "B60E78A0-4B79-0F6B-078A-27B5E0D362A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.9966999999999757 -0.05330000000000723 0.4421200000000014 ;
	setAttr ".tg[0].tor" -type "double3" -6.5870617948138825 -0.074524456937096376 19.831777082974707 ;
	setAttr ".lr" -type "double3" -6.5870617948138825 -0.074524456937096376 19.83177708297471 ;
	setAttr ".rst" -type "double3" -48.932099759289997 96.304611011042709 -2.2268515719178517 ;
	setAttr ".rsrr" -type "double3" -6.5870617948138825 -0.074524456937096376 19.83177708297471 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "41D47803-4C43-EA86-E1AF-D198679A4906";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.9966999999999757 -0.05330000000000723 0.44212000000000184 ;
	setAttr ".tg[0].tor" -type "double3" -6.5870617948138825 -0.074524456937096376 19.831777082974707 ;
	setAttr ".lr" -type "double3" -6.5870617948138825 -0.074524456937096376 19.83177708297471 ;
	setAttr ".rst" -type "double3" -48.932099759289997 96.304611011042709 -2.2268515719178512 ;
	setAttr ".rsrr" -type "double3" -6.5870617948138825 -0.074524456937096376 19.83177708297471 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_04_Knuckle_02_FK_Ctrl_Grp" -p "R_Finger_04_FK_Ctrl_Grp";
	rename -uid "F69A7913-4CC3-2F0D-3C22-3C810FBD7B74";
createNode transform -n "R_Finger_04_Knuckle_02_FK_Ctrl" -p "R_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "6D24928B-41FE-3854-BDB1-5CA0741DED80";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.1974423109204508e-14 -1.4210854715202004e-14 0 ;
	setAttr ".sp" -type "double3" -3.1974423109204508e-14 -1.4210854715202004e-14 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_04_Knuckle_02_FK_CtrlShape" -p "R_Finger_04_Knuckle_02_FK_Ctrl";
	rename -uid "640FA388-4EC7-F426-1E3C-9FB82DED411C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0658141036401503e-14 1.7083208564400767 -1.7083208564400756
		-1.0658141036401503e-14 2.4159305240623761 -1.9242899185630192e-15
		-1.0658141036401503e-14 1.708320856440076 1.708320856440072
		-1.0658141036401503e-14 5.1828141116967498e-16 2.4159305240623721
		-1.0658141036401503e-14 -1.7083208564400756 1.708320856440072
		-1.0658141036401503e-14 -2.4159305240623765 -1.5343514264743796e-15
		-1.0658141036401503e-14 -1.7083208564400751 -1.7083208564400756
		-1.0658141036401503e-14 6.3579553626034967e-17 -2.4159305240623756
		-1.0658141036401503e-14 1.7083208564400767 -1.7083208564400756
		-1.0658141036401503e-14 2.4159305240623761 -1.9242899185630192e-15
		-1.0658141036401503e-14 1.708320856440076 1.708320856440072
		;
createNode parentConstraint -n "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "9142CD4B-405C-F8F3-9417-2CAD7833B947";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_04_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.0461486323296789 3.6275829799592429e-05 
		6.3187344139237211e-06 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317584e-15 7.9513867036587939e-16 
		17.790460952726558 ;
	setAttr ".lr" -type "double3" -6.2972915085652428 1.9375660210312657 37.51135452139912 ;
	setAttr ".rst" -type "double3" -51.797599759289994 95.271211011042709 -2.2308115719178501 ;
	setAttr ".rsrr" -type "double3" -6.2972915085652428 1.9375660210312657 37.51135452139912 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "9981482F-4865-27F8-4F2C-15AED15F817C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_04_Knuckle_01_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.0461486323296789 3.6275829813803284e-05 
		6.3187344139237211e-06 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317584e-15 7.9513867036587939e-16 
		17.790460952726558 ;
	setAttr ".lr" -type "double3" -6.2972915085652428 1.9375660210312657 37.51135452139912 ;
	setAttr ".rst" -type "double3" -51.797599759290001 95.271211011042723 -2.2308115719178518 ;
	setAttr ".rsrr" -type "double3" -6.2972915085652428 1.9375660210312657 37.51135452139912 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_04_Knuckle_03_FK_Ctrl_Grp" -p "R_Finger_04_FK_Ctrl_Grp";
	rename -uid "0D8CDC74-4A67-1984-1B6C-06A58203DE03";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -54.895299759289998 92.893311011042726 -2.0987015719178523 ;
	setAttr ".r" -type "double3" -6.2972915085652383 1.9375660210312644 37.511354521399113 ;
createNode transform -n "R_Finger_04_Knuckle_03_FK_Ctrl" -p "R_Finger_04_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "6358653A-4729-172F-3DB6-45A8D5F21392";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -5.3290705182007514e-15 -1.4210854715202004e-14 0 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-15 -1.4210854715202004e-14 0 ;
createNode nurbsCurve -n "R_Finger_04_Knuckle_03_FK_CtrlShape" -p "R_Finger_04_Knuckle_03_FK_Ctrl";
	rename -uid "096FD835-41AA-3825-279F-EBB40E41D548";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.3290705182007514e-15 1.7083208564400625 -1.7083208564400738
		-5.3290705182007514e-15 2.4159305240623619 -1.4793307916276862e-16
		-5.3290705182007514e-15 1.7083208564400618 1.7083208564400738
		-5.3290705182007514e-15 -1.3692573304032327e-14 2.4159305240623739
		-5.3290705182007514e-15 -1.7083208564400898 1.7083208564400738
		-5.3290705182007514e-15 -2.4159305240623907 2.420054129258709e-16
		-5.3290705182007514e-15 -1.7083208564400894 -1.7083208564400738
		-5.3290705182007514e-15 -1.4147275161575967e-14 -2.4159305240623739
		-5.3290705182007514e-15 1.7083208564400625 -1.7083208564400738
		-5.3290705182007514e-15 2.4159305240623619 -1.4793307916276862e-16
		-5.3290705182007514e-15 1.7083208564400618 1.7083208564400738
		;
createNode scaleConstraint -n "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1" -p "R_Finger_04_FK_Ctrl_Grp";
	rename -uid "9B088CC1-4831-748A-0448-D38A984070F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_05_FK_Ctrl_Grp" -p "R_Hand_FK_Ctrl_Grp";
	rename -uid "95B30DCB-443C-AA2F-4930-8EAEEFF6B5B5";
createNode transform -n "R_Finger_05_Knuckle_01_FK_Ctrl_Grp" -p "R_Finger_05_FK_Ctrl_Grp";
	rename -uid "1FA866D2-43CC-52FB-70F2-31B7962BE4B1";
createNode transform -n "R_Finger_05_Knuckle_02_FK_Ctrl" -p "R_Finger_05_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "05A87D17-408A-CCC9-366E-419A401A6E47";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 6.6613381477509392e-16 4.2632564145606011e-14 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 6.6613381477509392e-16 4.2632564145606011e-14 1.7763568394002505e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_05_Knuckle_02_FK_CtrlShape" -p "R_Finger_05_Knuckle_02_FK_Ctrl";
	rename -uid "ED49BC58-4E5B-3553-D2C0-F78D9F17429C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.6613381477509392e-16 1.7083208564400885 -1.7083208564400736
		6.6613381477509392e-16 2.4159305240623867 -1.4793307916276857e-16
		6.6613381477509392e-16 1.7083208564400878 1.7083208564400736
		6.6613381477509392e-16 1.4729136126371675e-14 2.4159305240623734
		6.6613381477509392e-16 -1.7083208564400589 1.7083208564400736
		6.6613381477509392e-16 -2.4159305240623592 2.4200541292587085e-16
		6.6613381477509392e-16 -1.7083208564400585 -1.7083208564400736
		6.6613381477509392e-16 1.4274434268828037e-14 -2.4159305240623734
		6.6613381477509392e-16 1.7083208564400885 -1.7083208564400736
		6.6613381477509392e-16 2.4159305240623867 -1.4793307916276857e-16
		6.6613381477509392e-16 1.7083208564400878 1.7083208564400736
		;
createNode parentConstraint -n "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_05_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "A4914CF9-449A-98F0-C6A2-73AE791D6047";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.9570999999999827 -0.86489999999999156 -1.7271199999999984 ;
	setAttr ".tg[0].tor" -type "double3" -10.099488601197722 0.13134202521530869 26.395094951067854 ;
	setAttr ".lr" -type "double3" -10.099488601197722 0.13134202521530869 26.395094951067854 ;
	setAttr ".rst" -type "double3" -48.892499759290004 95.493011011042725 -4.3960915719178519 ;
	setAttr ".rsrr" -type "double3" -10.099488601197722 0.13134202521530869 26.395094951067854 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_05_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "1AE63222-4695-298B-20F9-E88D2A807183";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.9570999999999827 -0.86489999999999156 -1.7271199999999984 ;
	setAttr ".tg[0].tor" -type "double3" -10.099488601197722 0.13134202521530869 26.395094951067854 ;
	setAttr ".lr" -type "double3" -10.099488601197722 0.13134202521530869 26.395094951067854 ;
	setAttr ".rst" -type "double3" -48.892499759290004 95.493011011042725 -4.3960915719178519 ;
	setAttr ".rsrr" -type "double3" -10.099488601197722 0.13134202521530869 26.395094951067854 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_05_Knuckle_02_FK_Ctrl_Grp" -p "R_Finger_05_FK_Ctrl_Grp";
	rename -uid "8FBF4249-4AD7-6C9D-E865-1EB90AE8FA15";
createNode transform -n "R_Finger_05_Knuckle_03_FK_Ctrl" -p "R_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "1D1DA664-41F3-7B4A-AD81-D8A2EB0D8E97";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -4.2632564145606011e-14 -7.1054273576010019e-15 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -4.2632564145606011e-14 -7.1054273576010019e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_05_Knuckle_03_FK_CtrlShape" -p "R_Finger_05_Knuckle_03_FK_Ctrl";
	rename -uid "85BB1F7E-4842-E3F6-D141-D1B17A78D95C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5527136788005009e-15 1.7083208564400596 -1.7083208564400754
		3.5527136788005009e-15 2.4159305240623579 -1.9242899185630192e-15
		3.5527136788005009e-15 1.7083208564400592 1.7083208564400718
		3.5527136788005009e-15 -1.3692573304032329e-14 2.4159305240623716
		3.5527136788005009e-15 -1.7083208564400869 1.7083208564400718
		3.5527136788005009e-15 -2.4159305240623867 -1.5343514264743796e-15
		3.5527136788005009e-15 -1.7083208564400867 -1.7083208564400754
		3.5527136788005009e-15 -1.4147275161575969e-14 -2.4159305240623752
		3.5527136788005009e-15 1.7083208564400596 -1.7083208564400754
		3.5527136788005009e-15 2.4159305240623579 -1.9242899185630192e-15
		3.5527136788005009e-15 1.7083208564400592 1.7083208564400718
		;
createNode parentConstraint -n "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1" 
		-p "R_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "D161BDAF-468A-0591-4A52-BB931D3CADA3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_05_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3815183148368537 -8.6495528989871673e-05 
		-1.4665521932855086e-05 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317584e-15 2.3854160110976372e-15 
		16.857278106024349 ;
	setAttr ".lr" -type "double3" -9.6362944165126727 3.0407121202990424 43.007613539756413 ;
	setAttr ".rst" -type "double3" -51.025699759289992 94.434211011042734 -4.3906315719178526 ;
	setAttr ".rsrr" -type "double3" -9.6362944165126727 3.0407121202990424 43.007613539756413 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "71480DDF-48C6-C9AE-BFFB-7AA75C92F3F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_05_Knuckle_02_FK_CtrlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3815183148368537 -8.6495529004082528e-05 
		-1.4665521936407799e-05 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317584e-15 2.3854160110976372e-15 
		16.857278106024349 ;
	setAttr ".lr" -type "double3" -9.6362944165126727 3.0407121202990424 43.007613539756413 ;
	setAttr ".rst" -type "double3" -51.025699759289985 94.43421101104272 -4.3906315719178544 ;
	setAttr ".rsrr" -type "double3" -9.6362944165126727 3.0407121202990424 43.007613539756413 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Finger_05_Knuckle_03_FK_Ctrl_Grp" -p "R_Finger_05_FK_Ctrl_Grp";
	rename -uid "518A2CDF-4DC9-4DD1-7E24-4786045A4F1D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -53.532899759290011 92.095611011042706 -4.2085015719178491 ;
	setAttr ".r" -type "double3" -9.6362944165126798 3.040712120299045 43.007613539756434 ;
createNode transform -n "R_Finger_05_Knuckle_04_FK_Ctrl" -p "R_Finger_05_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "8A63917E-4344-50F2-C061-F38720583560";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.7763568394002505e-14 5.6843418860808015e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-14 5.6843418860808015e-14 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "R_Finger_05_Knuckle_04_FK_CtrlShape" -p "R_Finger_05_Knuckle_04_FK_Ctrl";
	rename -uid "186E4796-4A65-A342-7431-3CAC244B726C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5527136788005009e-15 1.708320856440088 -1.7083208564400736
		3.5527136788005009e-15 2.4159305240623863 -1.4793307916276857e-16
		3.5527136788005009e-15 1.7083208564400876 1.7083208564400736
		3.5527136788005009e-15 1.4729136126371675e-14 2.4159305240623734
		3.5527136788005009e-15 -1.7083208564400585 1.7083208564400736
		3.5527136788005009e-15 -2.4159305240623583 2.4200541292587085e-16
		3.5527136788005009e-15 -1.7083208564400583 -1.7083208564400736
		3.5527136788005009e-15 1.4274434268828037e-14 -2.4159305240623734
		3.5527136788005009e-15 1.708320856440088 -1.7083208564400736
		3.5527136788005009e-15 2.4159305240623863 -1.4793307916276857e-16
		3.5527136788005009e-15 1.7083208564400876 1.7083208564400736
		;
createNode scaleConstraint -n "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1" -p "R_Finger_05_FK_Ctrl_Grp";
	rename -uid "492DCE00-46E4-317A-F48F-7F8D9FCE5080";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_Cup_01_FK_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Hand_FK_Ctrl_Grp_scaleConstraint1" -p "R_Hand_FK_Ctrl_Grp";
	rename -uid "9E759A63-4EE9-1E34-AF2B-D693B825ECDD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_03_RK_JntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Leg_Ctrl_Grp" -p "Controls";
	rename -uid "B6996EEC-44A7-2C3E-8DCE-56886A1D1351";
createNode transform -n "L_Leg_Ctrl_Grp" -p "Leg_Ctrl_Grp";
	rename -uid "7748EB2C-4931-9BCE-9B56-7E87DA01A61C";
createNode transform -n "L_Leg_Clav_FK_Ctrl_Grp" -p "L_Leg_Ctrl_Grp";
	rename -uid "825B26C9-4315-519A-9CEC-B6B7ED00AE5E";
createNode transform -n "L_Leg_01_FK_Ctrl_Grp" -p "L_Leg_Clav_FK_Ctrl_Grp";
	rename -uid "CF3CFDC5-4FA0-37F2-ABB9-B49B8A612BD4";
createNode transform -n "L_Leg_01_FK_Ctrl" -p "L_Leg_01_FK_Ctrl_Grp";
	rename -uid "C6564CBC-4EE1-2AE7-BB1D-06AB2EB03405";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Leg_01_FK_CtrlShape" -p "L_Leg_01_FK_Ctrl";
	rename -uid "6C6B1284-4D21-3A30-0102-07A066A37FFC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8757481330531363e-05 8.023878542868836 0.24982691458410233
		-2.3315393919170105e-06 11.757978660805112 -1.2400568937223002e-12
		-4.3420560114082463e-05 8.0238785428688324 -0.24982691458906414
		-6.0440189762367424e-05 -0.99103660511191727 -0.35330861085485488
		-4.3420560114082463e-05 -10.005951753092674 -0.24982691458906414
		-2.3315393918265351e-06 -13.74005187102896 -1.2399180242299311e-12
		3.8757481330531363e-05 -10.005951753092674 0.24982691458410233
		5.5777110978816324e-05 -0.99103660511191971 0.35330861085486021
		3.8757481330531363e-05 8.023878542868836 0.24982691458410233
		-2.3315393919170105e-06 11.757978660805112 -1.2400568937223002e-12
		-4.3420560114082463e-05 8.0238785428688324 -0.24982691458906414
		;
createNode parentConstraint -n "L_Leg_01_FK_Ctrl_Grp_parentConstraint1" -p "L_Leg_01_FK_Ctrl_Grp";
	rename -uid "EAF13892-4E08-A2ED-D60D-7FB3D73BDD7C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.7890304992640012 0.18803441524505615 -3.155798673629763 ;
	setAttr ".lr" -type "double3" 90 0 -90 ;
	setAttr ".rst" -type "double3" 3.155798673629763 65.186620288089514 -0.046615719795227051 ;
	setAttr ".rsrr" -type "double3" 90 0 -90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Leg_01_FK_Ctrl_Grp";
	rename -uid "F5A17A06-4773-F260-AE65-2DB13338ED03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.7890304992640012 0.18803441524505615 -3.155798673629763 ;
	setAttr ".lr" -type "double3" 90 0 -90 ;
	setAttr ".rst" -type "double3" 3.155798673629763 65.186620288089514 -0.046615719795227051 ;
	setAttr ".rsrr" -type "double3" 90 0 -90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1" -p "L_Leg_Clav_FK_Ctrl_Grp";
	rename -uid "B74703D0-4D6C-243A-7F2D-37BA3322A180";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Leg_FK_Ctrl_Grp" -p "L_Leg_Ctrl_Grp";
	rename -uid "2C263757-4F08-DC0E-6566-77B08C64FEFA";
createNode transform -n "L_Leg_02_FK_Ctrl_Grp" -p "L_Leg_FK_Ctrl_Grp";
	rename -uid "CD3BF9C9-4E78-182A-CB00-EF8CEF049A9F";
createNode transform -n "L_Leg_02_FK_Ctrl" -p "L_Leg_02_FK_Ctrl_Grp";
	rename -uid "D4F8BAB2-40FC-1A76-8103-4DAEE5BFCB68";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 -2.6645352591003757e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Leg_02_FK_CtrlShape" -p "L_Leg_02_FK_Ctrl";
	rename -uid "B6CD901D-4900-81D9-8D29-56BFD723D0CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 5.7633763982913253 5.7633763982913218
		0 8.1506450675245876 -3.8909535005361789e-16
		0 5.7633763982913235 -5.7633763982913235
		0 2.5391340538080647e-15 -8.1506450675245894
		0 -5.7633763982913209 -5.7633763982913235
		0 -8.1506450675245894 -1.7046341105954716e-15
		0 -5.76337639829132 5.7633763982913218
		0 1.0051025841652519e-15 8.1506450675245894
		0 5.7633763982913253 5.7633763982913218
		0 8.1506450675245876 -3.8909535005361789e-16
		0 5.7633763982913235 -5.7633763982913235
		;
createNode parentConstraint -n "L_Leg_02_FK_Ctrl_Grp_parentConstraint1" -p "L_Leg_02_FK_Ctrl_Grp";
	rename -uid "CAB661EC-4F90-F308-4AF7-07BE08435844";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.789030499263994 0.18803441524505615 -3.1557986736297639 ;
	setAttr ".tg[0].tor" -type "double3" 0.015477464396240363 0.35448768832736161 -3.5111959034939533 ;
	setAttr ".lr" -type "double3" 90.037228249172855 3.5111286174724632 -89.644845650769213 ;
	setAttr ".rst" -type "double3" 6.3115973472595268 61.39758978882552 0.1414186954498291 ;
	setAttr ".rsrr" -type "double3" 90.037228249172855 3.5111286174724632 -89.644845650769213 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_02_FK_Ctrl_Grp_parentConstraint2" -p "L_Leg_02_FK_Ctrl_Grp";
	rename -uid "1781917E-46F2-CFE3-06D5-5F855259148A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.789030499263994 0.18803441524505615 -3.1557986736297639 ;
	setAttr ".tg[0].tor" -type "double3" 0.015477464396240363 0.35448768832736161 -3.5111959034939533 ;
	setAttr ".lr" -type "double3" 90.037228249172855 3.5111286174724632 -89.644845650769213 ;
	setAttr ".rst" -type "double3" 6.3115973472595268 61.39758978882552 0.1414186954498291 ;
	setAttr ".rsrr" -type "double3" 90.037228249172855 3.5111286174724632 -89.644845650769213 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Leg_03_FK_Ctrl_Grp" -p "L_Leg_FK_Ctrl_Grp";
	rename -uid "910837D2-4C63-542A-0C05-488753B2C818";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "L_Leg_03_FK_Ctrl" -p "L_Leg_03_FK_Ctrl_Grp";
	rename -uid "864E87DC-4D41-F5C7-74FF-6D8048B58BB7";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Leg_03_FK_CtrlShape" -p "L_Leg_03_FK_Ctrl";
	rename -uid "24DBC078-4A8A-0AFC-3479-0A863EA07352";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 4.9999793820394913 4.9999793820394887
		0 7.0710386536660916 4.329762426929693e-16
		0 4.9999793820394896 -4.9999793820394887
		0 2.1586921925924012e-15 -7.0710386536660925
		0 -4.9999793820394869 -4.9999793820394887
		0 -7.0710386536660916 -7.0831077804250509e-16
		0 -4.999979382039486 4.9999793820394887
		0 8.2785325556101563e-16 7.0710386536660925
		0 4.9999793820394913 4.9999793820394887
		0 7.0710386536660916 4.329762426929693e-16
		0 4.9999793820394896 -4.9999793820394887
		;
createNode parentConstraint -n "L_Leg_03_FK_Ctrl_Grp_parentConstraint1" -p "L_Leg_03_FK_Ctrl_Grp";
	rename -uid "D58CDA8E-4486-2D8A-71C0-24ADC0D97DF4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 18.899732833631958 -8.8817841970012523e-16 
		4.4408920985006262e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.1494945771523488e-15 -1.1527181212481913e-14 
		-2.7619997114322854 ;
	setAttr ".lr" -type "double3" 90.037382201810388 6.2731277436868114 -89.643040915118135 ;
	setAttr ".rst" -type "double3" 6.4285288196376156 42.533695634112995 -1.0160464371723077 ;
	setAttr ".rsrr" -type "double3" 90.037382201810388 6.2731277436868114 -89.643040915118135 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_03_FK_Ctrl_Grp_parentConstraint2" -p "L_Leg_03_FK_Ctrl_Grp";
	rename -uid "7AEE1E18-4E1C-39C4-0165-95813F94BB3D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 18.899732833631951 -8.8817841970012523e-16 
		6.2172489379008766e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.1494945771523488e-15 -1.1527181212481913e-14 
		-2.7619997114322854 ;
	setAttr ".lr" -type "double3" 90.037382201810388 6.2731277436868114 -89.643040915118149 ;
	setAttr ".rst" -type "double3" 6.4285288196376138 42.533695634113002 -1.0160464371723072 ;
	setAttr ".rsrr" -type "double3" 90.037382201810388 6.2731277436868114 -89.643040915118135 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Leg_04_FK_Ctrl_Grp" -p "L_Leg_FK_Ctrl_Grp";
	rename -uid "BA87FC16-46D0-1401-7C48-A68E137C8D94";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "L_Leg_04_FK_Ctrl" -p "L_Leg_04_FK_Ctrl_Grp";
	rename -uid "81AE71A1-4D67-B45C-6B40-159CCAB849AF";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Leg_04_FK_CtrlShape" -p "L_Leg_04_FK_Ctrl";
	rename -uid "C7F0EF59-4B3A-92BD-C2E6-688ECEF55A63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.6985491259705068 5.1688200174319903 -5.440750821894051
		-2.4021112103044562 7.3098153701178541 -1.3593235321688641e-15
		-1.6985491259705063 5.1688200174319885 5.4407508218940492
		-8.4647853881221634e-16 2.2428345774984067e-15 7.6943836018151295
		1.6985491259705052 -5.1688200174319858 5.4407508218940492
		2.4021112103044557 -7.309815370117855 -1.1742675187640034e-16
		1.698549125970505 -5.1688200174319849 -5.440750821894051
		-3.9437761187196914e-16 8.6705551680559035e-16 -7.6943836018151313
		-1.6985491259705068 5.1688200174319903 -5.440750821894051
		-2.4021112103044562 7.3098153701178541 -1.3593235321688641e-15
		-1.6985491259705063 5.1688200174319885 5.4407508218940492
		;
createNode parentConstraint -n "L_Leg_04_FK_Ctrl_Grp_parentConstraint1" -p "L_Leg_04_FK_Ctrl_Grp";
	rename -uid "BDA25B27-4476-7EB8-747F-6C83FB5DE545";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 33.278810447817222 3.1974423109204508e-14 -2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 5.8231483562576167e-14 1.1422741611735611e-14 
		1.4198331622974565 ;
	setAttr ".lr" -type "double3" 90.037292076110987 4.8532948828280791 -89.643970512732565 ;
	setAttr ".rst" -type "double3" 6.6346167489351124 9.4547902793947856 -4.6523595591052196 ;
	setAttr ".rsrr" -type "double3" 90.037292076110987 4.8532948828280791 -89.643970512732565 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_04_FK_Ctrl_Grp_parentConstraint2" -p "L_Leg_04_FK_Ctrl_Grp";
	rename -uid "8DC104CC-472C-FCD3-7CFE-5B908D147842";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 33.278810447817214 3.0198066269804258e-14 -2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 5.8231483562576167e-14 1.1422741611735611e-14 
		1.4198331622974565 ;
	setAttr ".lr" -type "double3" 90.037292076110987 4.8532948828280826 -89.643970512732579 ;
	setAttr ".rst" -type "double3" 6.6346167489351124 9.4547902793947927 -4.6523595591052205 ;
	setAttr ".rsrr" -type "double3" 90.037292076110987 4.8532948828280791 -89.643970512732565 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_FK_Ctrl_Grp_scaleConstraint1" -p "L_Leg_FK_Ctrl_Grp";
	rename -uid "B5EE81D5-4E6B-4471-F54D-14AB535DBFB4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Foot_FK_Ctrl_Grp" -p "L_Leg_Ctrl_Grp";
	rename -uid "CC227D2F-426E-A768-E35D-7387B92BC90D";
createNode transform -n "L_Foot_01_FK_Ctrl_Grp" -p "L_Foot_FK_Ctrl_Grp";
	rename -uid "0327C211-48E6-F048-24F3-068DF06CCF2F";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "L_Foot_01_FK_Ctrl" -p "L_Foot_01_FK_Ctrl_Grp";
	rename -uid "0067387A-4327-CB7F-2993-8CA0F0A7986B";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -2.6645352591003757e-15 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -2.6645352591003757e-15 2.6645352591003757e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Foot_01_FK_CtrlShape" -p "L_Foot_01_FK_Ctrl";
	rename -uid "03F420D5-41BF-3ECB-8184-3CB445CB0D61";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		24.506671944162211 0.0077167277109985721 5.1463995635170949
		4.4445080404209527 -9.4902566245709821 7.2766454783254071
		-1.253271408331418 -12.261183353213113 5.1453796364513789
		-3.6134298796489608 -13.408938784558778 0.00018105996137060068
		-1.2534185503836111 -12.261183353213113 -5.1449627061394771
		4.4442999501351492 -9.4902566245709821 -7.2760962240286915
		24.506524802110025 0.0077167277109985721 -5.1439427790737611
		26.866683273427558 1.1554721590566257 0.0012557974162351942
		24.506671944162211 0.0077167277109985721 5.1463995635170949
		4.4445080404209527 -9.4902566245709821 7.2766454783254071
		-1.253271408331418 -12.261183353213113 5.1453796364513789
		;
createNode parentConstraint -n "L_Foot_01_FK_Ctrl_Grp_parentConstraint1" -p "L_Foot_01_FK_Ctrl_Grp";
	rename -uid "370A9387-47C6-0727-066F-A898AEFE6D14";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.024681606807771317 -0.00087748476257232255 
		0.010261807432267567 ;
	setAttr ".tg[0].tor" -type "double3" -0.33532667872156036 -0.11246489350224155 69.759457814268643 ;
	setAttr ".lr" -type "double3" 89.992440083587809 -64.905728504263379 -89.991652139077644 ;
	setAttr ".rst" -type "double3" 6.6242024302482614 9.4793939590453924 -4.6511523723599852 ;
	setAttr ".rsrr" -type "double3" 89.992440083587809 -64.905728504263379 -89.991652139077644 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Foot_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Foot_01_FK_Ctrl_Grp";
	rename -uid "3EC941DB-401E-4658-EADD-74948495F813";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.024681606807771317 -0.00087748476257232255 
		0.010261807432267567 ;
	setAttr ".tg[0].tor" -type "double3" -0.33532667872156036 -0.11246489350224155 69.759457814268643 ;
	setAttr ".lr" -type "double3" 89.992440083587823 -64.905728504263365 -89.991652139077729 ;
	setAttr ".rst" -type "double3" 6.6242024302482614 9.4793939590453924 -4.6511523723599852 ;
	setAttr ".rsrr" -type "double3" 89.992440083587809 -64.905728504263379 -89.991652139077644 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Foot_02_FK_Ctrl_Grp" -p "L_Foot_FK_Ctrl_Grp";
	rename -uid "49CCDFAC-421C-7ABE-651F-279D4F20DB2D";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "L_Foot_02_FK_Ctrl" -p "L_Foot_02_FK_Ctrl_Grp";
	rename -uid "41270955-427B-F717-EC03-FA8679C38E79";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Foot_02_FK_CtrlShape" -p "L_Foot_02_FK_Ctrl";
	rename -uid "2DC91A5E-45D8-C01F-0042-7498357F17D3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.8319423041132691e-05 5.0032127545859195 -5.2105125499767739
		-4.2981019808112725e-10 7.0756190131396046 7.6801661537974765e-06
		2.8318815177794636e-05 5.0032236159810539 5.2105234113719074
		4.0049282285045655e-05 7.6801661572446415e-06 7.3687851952585293
		2.8319422973098798e-05 -5.0032127545859142 5.2105125499767722
		4.2974216419070095e-10 -7.075619013139602 -7.6801661551110027e-06
		-2.8318815245828533e-05 -5.0032236159810504 -5.2105234113719092
		-4.0049282353079545e-05 -7.6801661541855921e-06 -7.3687851952585328
		-2.8319423041132691e-05 5.0032127545859195 -5.2105125499767739
		-4.2981019808112725e-10 7.0756190131396046 7.6801661537974765e-06
		2.8318815177794636e-05 5.0032236159810539 5.2105234113719074
		;
createNode parentConstraint -n "L_Foot_02_FK_Ctrl_Grp_parentConstraint1" -p "L_Foot_02_FK_Ctrl_Grp";
	rename -uid "422D95FB-4073-7A39-9143-88B27D7821EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 12.716406985465778 -8.8817841970012523e-16 
		8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" -7.684036003495879e-15 -4.5465004188078707e-14 
		25.094271303580321 ;
	setAttr ".lr" -type "double3" 1.068992355059589e-05 -89.996793772319762 0.0014908259687410308 ;
	setAttr ".rst" -type "double3" 6.6249881982810708 4.0862528829622713 6.8649682998124089 ;
	setAttr ".rsrr" -type "double3" 1.068992355059589e-05 -89.996793772319762 0.0014908259687410308 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Foot_02_FK_Ctrl_Grp_parentConstraint2" -p "L_Foot_02_FK_Ctrl_Grp";
	rename -uid "C60AF7E2-4248-892A-366F-6E859D9CB15B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 12.716406985465781 -2.6645352591003757e-15 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -7.684036003495879e-15 -4.5465004188078707e-14 
		25.094271303580321 ;
	setAttr ".lr" -type "double3" 1.069016463782762e-05 -89.996793772319776 0.0014908257275574202 ;
	setAttr ".rst" -type "double3" 6.6249881982810681 4.0862528829622677 6.8649682998124089 ;
	setAttr ".rsrr" -type "double3" 1.068992355059589e-05 -89.996793772319762 0.0014908259687410308 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "L_Foot_03_FK_Ctrl_Grp" -p "L_Foot_FK_Ctrl_Grp";
	rename -uid "2EB6E13D-46C7-3896-8CE7-839907D63106";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.62549980925189 4.0862528962743028 16.007534668478403 ;
	setAttr ".r" -type "double3" 1.068990279003551e-05 -89.996793772319762 0.0014908260184803427 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "L_Foot_03_FK_Ctrl" -p "L_Foot_03_FK_Ctrl_Grp";
	rename -uid "40778B9C-4B10-C4C5-74E0-4D852544FDF3";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "L_Foot_03_FK_CtrlShape" -p "L_Foot_03_FK_Ctrl";
	rename -uid "B6CCB0C7-488A-4DEC-00C0-FBA78F840ED8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 3.5885165230157225 -3.5885165230157217
		0 5.0749287356487747 -1.198928181300785e-15
		0 3.5885165230157217 3.5885165230157199
		0 1.455284207373551e-15 5.0749287356487747
		0 -3.5885165230157194 3.5885165230157199
		0 -5.0749287356487756 -3.7981933734749815e-16
		0 -3.588516523015719 -3.5885165230157217
		0 5.0013276571664848e-16 -5.0749287356487764
		0 3.5885165230157225 -3.5885165230157217
		0 5.0749287356487747 -1.198928181300785e-15
		0 3.5885165230157217 3.5885165230157199
		;
createNode scaleConstraint -n "L_Foot_FK_Ctrl_Grp_scaleConstraint1" -p "L_Foot_FK_Ctrl_Grp";
	rename -uid "D8866945-4234-FBBC-9705-0C9D520DFEF6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "L_Leg_IK_Main_Ctrl_Grp" -p "L_Leg_Ctrl_Grp";
	rename -uid "9DF1527C-4682-8D8D-540E-C7AB9FA5BBA3";
createNode transform -n "L_Leg_IK_Ctrl_Base_Grp" -p "L_Leg_IK_Main_Ctrl_Grp";
	rename -uid "4E422740-4BE6-D943-F004-1A9DF74A8C39";
	setAttr ".t" -type "double3" 6.3115973472595215 61.397590637207031 0.1414186954498291 ;
createNode transform -n "L_Leg_IK_Base_Ctrl" -p "L_Leg_IK_Ctrl_Base_Grp";
	rename -uid "E4854E94-4949-0972-B3BE-67863F1482A9";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "L_Leg_IK_Base_CtrlShape" -p "L_Leg_IK_Base_Ctrl";
	rename -uid "71856F97-4375-A5FB-B0F7-9B95E97D9C9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.1113946279563667 -0.51565461440696536 -5.2415659078155308
		-1.4342602200579303e-15 -1.6765413975485397 -7.412693594905166
		-5.111394627956372 -2.8374281806901154 -5.2415659078155263
		-7.2286036054968879 -3.3182832306470327 -2.7957542808794302e-15
		-5.111394627956372 -2.8374281806901163 5.2415659078155263
		-2.3999233123847312e-15 -1.6765413975485406 7.4126935949051722
		5.1113946279563667 -0.51565461440696603 5.2415659078155263
		7.2286036054968843 -0.034799564450049121 -1.4006125276564777e-15
		5.1113946279563667 -0.51565461440696536 -5.2415659078155308
		-1.4342602200579303e-15 -1.6765413975485397 -7.412693594905166
		-5.111394627956372 -2.8374281806901154 -5.2415659078155263
		;
createNode transform -n "L_Leg_PV_Ctrl_Grp" -p "L_Leg_IK_Main_Ctrl_Grp";
	rename -uid "5BC727C2-4CD2-995F-EDA7-7EB7C405CBF4";
	setAttr ".t" -type "double3" 6.4285272239944629 42.533336058998643 -1.010171424039541 ;
	setAttr ".r" -type "double3" 90.037382928981444 6.2832583392479338 -89.643034265541942 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "L_Leg_PV_Ctrl_Offset" -p "L_Leg_PV_Ctrl_Grp";
	rename -uid "A236B024-4AC2-8372-167B-5F96874EBFD5";
	setAttr ".t" -type "double3" -4.0811532132982151 34.297755639016138 5.773159728050814e-14 ;
	setAttr ".r" -type "double3" -96.011243783006208 89.645174592196057 0.2721303091508408 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999922 ;
createNode transform -n "L_Leg_PV_Ctrl" -p "L_Leg_PV_Ctrl_Offset";
	rename -uid "64562B0E-4503-2BFC-9E17-4289F50A73F5";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "L_Leg_PV_CtrlShape" -p "L_Leg_PV_Ctrl";
	rename -uid "1B88F745-414E-C9C7-A365-0D93AB8CB4FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.21706749548193136 -0.21706749548192372 -1.2487274443277446e-14
		1.7962031642440537e-14 -2.4969903141417964 -6.5722546763263239e-15
		-0.21706749548191448 -0.21706749548192364 -1.2487274443277446e-14
		-2.4969903141417755 -1.2944441882055117e-16 -6.4193581165405418e-15
		-0.21706749548191448 0.21706749548192206 -1.246069134192336e-14
		1.7559009855117315e-14 2.4969903141417942 -6.2664615567547597e-15
		0.21706749548193136 0.21706749548192206 -1.246069134192336e-14
		2.4969903141418146 3.4051368750760246e-16 -6.4193581165405418e-15
		0.21706749548193136 -0.21706749548192372 -1.2487274443277446e-14
		1.7962031642440537e-14 -2.4969903141417964 -6.5722546763263239e-15
		-0.21706749548191448 -0.21706749548192364 -1.2487274443277446e-14
		;
createNode transform -n "L_Leg_IK_Ctrl_Grp" -p "L_Leg_IK_Main_Ctrl_Grp";
	rename -uid "26F5CB79-4208-6503-FF9E-EBA7DB13381B";
	setAttr ".t" -type "double3" 6.6346168518066406 9.4547901153564453 -4.6523594856262207 ;
createNode transform -n "L_Leg_IK_Ctrl" -p "L_Leg_IK_Ctrl_Grp";
	rename -uid "F2722C96-4F38-880B-2072-0B823C3A4132";
	addAttr -ci true -sn "HeelTap" -ln "HeelTap" -at "double";
	addAttr -ci true -sn "HeelTwist" -ln "HeelTwist" -at "double";
	addAttr -ci true -sn "HeelRoll" -ln "HeelRoll" -at "double";
	addAttr -ci true -sn "ToeTap" -ln "ToeTap" -at "double";
	addAttr -ci true -sn "ToeTwist" -ln "ToeTwist" -at "double";
	addAttr -ci true -sn "ToeRoll" -ln "ToeRoll" -at "double";
	addAttr -ci true -sn "BallTap" -ln "BallTap" -at "double";
	addAttr -ci true -sn "BallTwist" -ln "BallTwist" -at "double";
	addAttr -ci true -sn "BallRoll" -ln "BallRoll" -at "double";
	addAttr -ci true -sn "TipTap" -ln "TipTap" -at "double";
	addAttr -ci true -sn "TipTwist" -ln "TipTwist" -at "double";
	addAttr -ci true -sn "TipRoll" -ln "TipRoll" -at "double";
	addAttr -ci true -sn "FootRoll" -ln "FootRoll" -min -10 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".HeelTap";
	setAttr -k on ".HeelTwist";
	setAttr -k on ".HeelRoll";
	setAttr -k on ".ToeTap";
	setAttr -k on ".ToeTwist";
	setAttr -k on ".ToeRoll";
	setAttr -k on ".BallTap";
	setAttr -k on ".BallTwist";
	setAttr -k on ".BallRoll";
	setAttr -k on ".TipTap";
	setAttr -k on ".TipTwist";
	setAttr -k on ".TipRoll";
	setAttr -k on ".FootRoll";
createNode nurbsCurve -n "L_Leg_IK_CtrlShape" -p "L_Leg_IK_Ctrl";
	rename -uid "E8C14DCB-478B-76D7-1EB2-FCB57A0430F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.8851808891844684 -9.4547901153564453 -3.8410456781437148
		5.0963080330306761e-16 -9.4547901153564453 -9.0305922301706989
		-5.8851808891844684 -9.4547901153564453 -3.8410456781437006
		-4.1133804066622019 -9.4547901153564453 8.687627990326412
		-5.8851808891844684 -9.4547901153564453 21.216301658796532
		-8.337108487912976e-16 -9.4547901153564453 22.172167257777716
		5.8851808891844684 -9.4547901153564453 21.216301658796517
		8.3229026305036236 -9.4547901153564453 8.6876279903264155
		5.8851808891844684 -9.4547901153564453 -3.8410456781437148
		5.0963080330306761e-16 -9.4547901153564453 -9.0305922301706989
		-5.8851808891844684 -9.4547901153564453 -3.8410456781437006
		;
createNode joint -n "L_Heel_Offset_IK_Reverse_Jnt" -p "L_Leg_IK_Ctrl";
	rename -uid "2A99119B-48E1-B3ED-2384-02A1EC2F1FD8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.010420322418212891 -9.6165906488895416 -6.9706387519836426 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -90 0 ;
	setAttr ".radi" 1.8928734089190631;
createNode joint -n "L_Heel_IK_Reverse_Jnt" -p "L_Heel_Offset_IK_Reverse_Jnt";
	rename -uid "F1CD9FCE-420D-6FDC-8C42-A3ADD720AB72";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.8928734089190631;
createNode joint -n "L_Toe_Offset_IK_Reverse_Jnt" -p "L_Heel_IK_Reverse_Jnt";
	rename -uid "21456F4E-40E7-DD9C-1124-5797317CD786";
	setAttr ".t" -type "double3" 27.928704261779785 0.03049999475479126 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.98318571377150099;
createNode joint -n "L_Toe_IK_Reverse_Jnt" -p "L_Toe_Offset_IK_Reverse_Jnt";
	rename -uid "52932F94-4993-B6A2-CD4A-CB936EF0AF26";
	setAttr ".t" -type "double3" 0 2.7755575615628914e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.98318571377150099;
createNode joint -n "L_Toe_Tap_01_IK_Reverse_Jnt" -p "L_Toe_IK_Reverse_Jnt";
	rename -uid "CDE25601-41C4-0C07-9B99-A9BBB7B712FF";
	setAttr ".t" -type "double3" -9.443761348724367 4.2118273675441751 -0.00082874298095791943 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode joint -n "L_Toe_Tap_02_IK_Reverse_Jnt" -p "L_Toe_Tap_01_IK_Reverse_Jnt";
	rename -uid "CE7C193C-446A-3F7E-9D85-BDAB1EE57F7A";
	setAttr ".t" -type "double3" 9.1425642967224139 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode ikHandle -n "L_Foot_02_IK_Reverse_Handle" -p "L_Toe_Tap_02_IK_Reverse_Jnt";
	rename -uid "F2811D0B-4786-7723-3594-F79637C622F2";
	setAttr ".t" -type "double3" 7.5512919295306347e-07 -0.0052935997146441593 -0.00054437293461617742 ;
	setAttr ".r" -type "double3" 0.0015229712254675805 0.0034105447955145329 -0.03317320361757032 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
	setAttr ".pv" -type "double3" 1 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "L_Ball_Offset_IK_Reverse_Jnt" -p "L_Toe_IK_Reverse_Jnt";
	rename -uid "24FC0BA5-4487-54CD-01A2-11A3C8E55483";
	setAttr ".t" -type "double3" -9.443761348724367 4.2118273675441751 -0.00082874298095791943 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode joint -n "L_Ball_IK_Reverse_Jnt" -p "L_Ball_Offset_IK_Reverse_Jnt";
	rename -uid "98AC08CF-4C5D-DE33-6436-E9955C51E9B0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode joint -n "L_Ankle_IK_Reverse_Jnt" -p "L_Ball_IK_Reverse_Jnt";
	rename -uid "A0DF3FBA-462E-2D1A-0F0C-5F94918CE455";
	setAttr ".t" -type "double3" -11.514217376708984 5.3752045631408683 -0.0095858573913520928 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode ikHandle -n "L_Foot_01_IK_Reverse_Handle" -p "L_Ankle_IK_Reverse_Jnt";
	rename -uid "7068B81F-4497-7D13-EDC4-CEB3673FD551";
	setAttr ".t" -type "double3" 11.51421759416138 -5.3752047852052707 0.0095856978777177915 ;
	setAttr ".r" -type "double3" -6.7222515599318951e-05 0.0037345332089476642 -25.127444554716295 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".pv" -type "double3" 1 0 0 ;
	setAttr ".roc" yes;
createNode ikHandle -n "L_Leg_IK_Handle" -p "L_Ankle_IK_Reverse_Jnt";
	rename -uid "BD6A19D4-4768-139A-CE90-CD97FAD40030";
	setAttr ".t" -type "double3" -1.1679144318321732e-05 -0.0001256691753539485 -5.5341009996823232e-07 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_Leg_IK_Handle_poleVectorConstraint1" -p "L_Leg_IK_Handle";
	rename -uid "0BAFA549-401D-A6F7-2C0B-658FA8EA8BD2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_PV_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 32.139218613661285 -20.646436141434094 -0.092665071370926277 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1" -p "L_Leg_IK_Main_Ctrl_Grp";
	rename -uid "ED65CEF3-4E33-8835-1F29-7C9D63A47A3C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 65.186620288089514 0.046615719795227037 3.155798673629763 ;
	setAttr ".tg[0].tor" -type "double3" -90 90 0 ;
	setAttr ".rst" -type "double3" 0 0 -1.3877787807814457e-17 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_IK_Main_Ctrl_Grp_scaleConstraint1" -p "L_Leg_IK_Main_Ctrl_Grp";
	rename -uid "CAD0454D-4D86-10EB-73F2-399DFDF21F3A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_Ctrl_Grp" -p "Leg_Ctrl_Grp";
	rename -uid "9ADD202E-4A6F-7117-FC02-1A9540A01624";
createNode transform -n "R_Leg_Clav_Ctrl_Grp" -p "R_Leg_Ctrl_Grp";
	rename -uid "EE40CFE2-4D3F-0110-8598-0699EE10F907";
createNode transform -n "R_Leg_01_FK_Ctrl_Grp" -p "R_Leg_Clav_Ctrl_Grp";
	rename -uid "D27C9D50-4E0A-7C12-F936-20939C51C674";
createNode transform -n "R_Leg_01_FK_Ctrl" -p "R_Leg_01_FK_Ctrl_Grp";
	rename -uid "7B7D6E6A-48FB-A9F2-1471-4EA268208DA6";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Leg_01_FK_CtrlShape" -p "R_Leg_01_FK_Ctrl";
	rename -uid "C2034562-4C1A-D1C4-FF7F-5DAB07FD01E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0188025350107459e-05 9.1172644602448401 0.39708396479364261
		-2.6855468597695113e-07 12.671368782436833 1.0414123652324747e-07
		-4.0725134722197076e-05 9.1172644602448347 -0.39708375651116956
		-5.7482798860419848e-05 0.53689760352009253 -0.56156127699286307
		-4.0725134722197076e-05 -8.0434692532046643 -0.39708375651116956
		-2.6855468615581707e-07 -11.597573575396655 1.0414123652324747e-07
		4.0188025350107459e-05 -8.0434692532046608 0.39708396479364261
		5.694568948877432e-05 0.53689760352008986 0.56156148527533567
		4.0188025350107459e-05 9.1172644602448401 0.39708396479364261
		-2.6855468597695113e-07 12.671368782436833 1.0414123652324747e-07
		-4.0725134722197076e-05 9.1172644602448347 -0.39708375651116956
		;
createNode parentConstraint -n "R_Leg_01_FK_Ctrl_Grp_parentConstraint1" -p "R_Leg_01_FK_Ctrl_Grp";
	rename -uid "F1896077-4563-2E82-CE25-8581239C083B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.7890507873535171 0.18803443504028319 3.1558 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 180 ;
	setAttr ".lr" -type "double3" -90 0 90 ;
	setAttr ".rst" -type "double3" -3.1558 65.1866 -0.04661570000000001 ;
	setAttr ".rsrr" -type "double3" -90 0 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Leg_01_FK_Ctrl_Grp";
	rename -uid "8779D9B9-4D51-1D57-0B39-E2B867A90692";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.7890507873535171 0.18803443504028319 3.1558 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 180 ;
	setAttr ".lr" -type "double3" -90 0 90 ;
	setAttr ".rst" -type "double3" -3.1558 65.1866 -0.04661570000000001 ;
	setAttr ".rsrr" -type "double3" -90 0 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_Clav_Ctrl_Grp_scaleConstraint1" -p "R_Leg_Clav_Ctrl_Grp";
	rename -uid "0C575C41-469C-114E-76BF-2A98471BAFF6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_FK_Ctrl_Grp" -p "R_Leg_Ctrl_Grp";
	rename -uid "11CCDFAA-4037-D184-4FDA-21A53D78FE4F";
createNode transform -n "R_Leg_02_FK_Ctrl_Grp" -p "R_Leg_FK_Ctrl_Grp";
	rename -uid "CD27940A-4524-9135-D8E4-0B88A61726DC";
createNode transform -n "R_Leg_02_FK_Ctrl" -p "R_Leg_02_FK_Ctrl_Grp";
	rename -uid "953D8B72-40FB-9046-3BE6-F18AA77175AE";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 2.6645352591003757e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Leg_02_FK_CtrlShape" -p "R_Leg_02_FK_Ctrl";
	rename -uid "C279DD09-461F-39BD-B691-418E34ADE4FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 5.314856412384886 5.3148564123848843
		0 7.5163420204603133 1.3484216295327987e-15
		0 5.3148564123848852 -5.3148564123848825
		0 2.3156123808148098e-15 -7.5163420204603133
		0 -5.3148564123848816 -5.3148564123848825
		0 -7.5163420204603142 1.3526129884892524e-16
		0 -5.3148564123848816 5.3148564123848843
		0 9.0096297571114687e-16 7.5163420204603151
		0 5.314856412384886 5.3148564123848843
		0 7.5163420204603133 1.3484216295327987e-15
		0 5.3148564123848852 -5.3148564123848825
		;
createNode parentConstraint -n "R_Leg_02_FK_Ctrl_Grp_parentConstraint1" -p "R_Leg_02_FK_Ctrl_Grp";
	rename -uid "1AEF16FA-451C-413C-623F-3BABD6A05EAA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.7890000000000015 -0.18803469999999997 3.1558000000000006 ;
	setAttr ".tg[0].tor" -type "double3" 0.015477464415289065 0.35448768832736161 -3.5111959034938893 ;
	setAttr ".lr" -type "double3" -89.962771750808116 -3.5111286174724023 89.644845650769199 ;
	setAttr ".rst" -type "double3" -6.3116 61.3976 0.14141899999999996 ;
	setAttr ".rsrr" -type "double3" -89.962771750808116 -3.5111286174724023 89.644845650769199 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_02_FK_Ctrl_Grp_parentConstraint2" -p "R_Leg_02_FK_Ctrl_Grp";
	rename -uid "C695301A-42EE-2BB0-92DF-2F83A702359B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.7890000000000015 -0.18803469999999997 3.1558000000000006 ;
	setAttr ".tg[0].tor" -type "double3" 0.015477464415289065 0.35448768832736161 -3.5111959034938893 ;
	setAttr ".lr" -type "double3" -89.962771750808116 -3.5111286174724023 89.644845650769199 ;
	setAttr ".rst" -type "double3" -6.3116 61.3976 0.14141899999999996 ;
	setAttr ".rsrr" -type "double3" -89.962771750808116 -3.5111286174724023 89.644845650769199 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_03_FK_Ctrl_Grp" -p "R_Leg_FK_Ctrl_Grp";
	rename -uid "D72B3829-4B29-CFBB-333B-9498C9864B93";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "R_Leg_03_FK_Ctrl" -p "R_Leg_03_FK_Ctrl_Grp";
	rename -uid "1D132D4E-486E-611C-0A98-39895D3DB4B3";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Leg_03_FK_CtrlShape" -p "R_Leg_03_FK_Ctrl";
	rename -uid "0E611046-4C23-EFB8-4D5B-359DE147F2C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 4.7362541646254588 4.7362541646254552
		0 6.6980748744593743 -1.3662180416274515e-15
		0 4.7362541646254579 -4.7362541646254588
		0 2.0272637085578213e-15 -6.698074874459377
		0 -4.7362541646254552 -4.7362541646254588
		0 -6.6980748744593743 -2.4473075805980102e-15
		0 -4.7362541646254543 4.7362541646254552
		0 7.6662021858615909e-16 6.6980748744593734
		0 4.7362541646254588 4.7362541646254552
		0 6.6980748744593743 -1.3662180416274515e-15
		0 4.7362541646254579 -4.7362541646254588
		;
createNode parentConstraint -n "R_Leg_03_FK_Ctrl_Grp_parentConstraint1" -p "R_Leg_03_FK_Ctrl_Grp";
	rename -uid "885803FC-47A6-7E50-02F3-22A7A1D558EB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -18.899738895573279 1.3322676295501878e-15 
		-2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.0004060764587471e-15 -4.7832560639197428e-16 
		-2.7619997114322783 ;
	setAttr ".lr" -type "double3" -89.962617798170484 -6.2731277436867483 89.643040915117211 ;
	setAttr ".rst" -type "double3" -6.4285315098829452 42.533699794841127 -1.0160465038699917 ;
	setAttr ".rsrr" -type "double3" -89.962617798170484 -6.2731277436867483 89.643040915117211 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_03_FK_Ctrl_Grp_parentConstraint2" -p "R_Leg_03_FK_Ctrl_Grp";
	rename -uid "2AB9015C-4EAE-DD51-9363-82AA8EC81C60";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_02_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -18.899738895573265 2.2204460492503131e-15 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.0004060764587471e-15 -4.7832560639197428e-16 
		-2.7619997114322783 ;
	setAttr ".lr" -type "double3" -89.962617798170484 -6.2731277436867483 89.643040915117211 ;
	setAttr ".rst" -type "double3" -6.4285315098829461 42.533699794841141 -1.0160465038699917 ;
	setAttr ".rsrr" -type "double3" -89.962617798170484 -6.2731277436867483 89.643040915117211 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_04_FK_Ctrl_Grp" -p "R_Leg_FK_Ctrl_Grp";
	rename -uid "487DE978-4697-6D4F-63C6-DCBC19F095A6";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
createNode transform -n "R_Leg_04_FK_Ctrl" -p "R_Leg_04_FK_Ctrl_Grp";
	rename -uid "AB523647-4EB4-C2B8-DEBE-25AE64CB7C87";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Leg_04_FK_CtrlShape" -p "R_Leg_04_FK_Ctrl";
	rename -uid "F8503CB8-45A5-5854-4867-838F4FBA9E8C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.4211647132815566 5.1986088362533884 5.3893638747674473
		-2.009830411888847 7.3519431217021491 -1.3096616107390849e-15
		-1.4211647132815561 5.1986088362533867 -5.3893638747674508
		-7.0824294188294364e-16 3.1458583704899691e-15 -7.6217114842597438
		1.421164713281555 -5.1986088362533822 -5.3893638747674508
		2.009830411888847 -7.3519431217021483 -2.5398288915057153e-15
		1.4211647132815548 -5.1986088362533813 5.3893638747674473
		-3.2997311477844417e-16 1.7621504531066445e-15 7.6217114842597402
		-1.4211647132815566 5.1986088362533884 5.3893638747674473
		-2.009830411888847 7.3519431217021491 -1.3096616107390849e-15
		-1.4211647132815561 5.1986088362533867 -5.3893638747674508
		;
createNode parentConstraint -n "R_Leg_04_FK_Ctrl_Grp_parentConstraint1" -p "R_Leg_04_FK_Ctrl_Grp";
	rename -uid "76031D76-4527-3BB3-DE81-5986E2E1C824";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -33.27881473689056 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.8326815131784447e-15 -3.1178909210157373e-14 
		1.4198331622974247 ;
	setAttr ".lr" -type "double3" -89.962707923869914 -4.8532948828280471 89.643970512732125 ;
	setAttr ".rst" -type "double3" -6.6346194657422028 9.4547901768139511 -4.652360094461887 ;
	setAttr ".rsrr" -type "double3" -89.962707923869914 -4.8532948828280471 89.643970512732125 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_04_FK_Ctrl_Grp_parentConstraint2" -p "R_Leg_04_FK_Ctrl_Grp";
	rename -uid "9379F557-456C-F504-60AB-4D987E23AC54";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_03_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -33.278814736890553 1.7763568394002505e-15 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.8326815131784447e-15 -3.1178909210157373e-14 
		1.4198331622974247 ;
	setAttr ".lr" -type "double3" -89.962707923869914 -4.8532948828280471 89.643970512732125 ;
	setAttr ".rst" -type "double3" -6.6346194657422028 9.4547901768139582 -4.652360094461887 ;
	setAttr ".rsrr" -type "double3" -89.962707923869914 -4.8532948828280471 89.643970512732125 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_FK_Ctrl_Grp_scaleConstraint1" -p "R_Leg_FK_Ctrl_Grp";
	rename -uid "27A1F9FE-4F68-A138-EB31-36B0ED04ADA8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Foot_FK_Ctrl_Grp" -p "R_Leg_Ctrl_Grp";
	rename -uid "39E1038A-4F7C-BA23-ED85-F9B7C5750A97";
createNode transform -n "R_Foot_01_FK_Ctrl_Grp" -p "R_Foot_FK_Ctrl_Grp";
	rename -uid "8246050F-4760-E285-E22B-A89C4E049B2F";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
createNode transform -n "R_Foot_01_FK_Ctrl" -p "R_Foot_01_FK_Ctrl_Grp";
	rename -uid "5C8DB08E-4DC2-FFD9-7E96-C1B697A587D6";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Foot_01_FK_CtrlShape" -p "R_Foot_01_FK_Ctrl";
	rename -uid "B4212013-432E-0554-89E3-148E4E4F0DBB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.71562734197819644 11.93768695129944 -5.7113024492618614
		-4.4444026304036583 9.4902537101174786 -8.0768876283064053
		-24.277962828924725 0.17102561756708168 -5.7122091512105824
		-26.41531722573696 -0.84273442393322906 -0.0011813290124103053
		-24.277962828924725 0.17102561756708168 5.7098464931857595
		-4.4444026304036601 9.4902537101174786 8.0763383741790644
		0.71562734197819644 11.93768695129944 5.7107531951344814
		2.8529817387904322 12.951446992799751 -0.00027462706368445007
		0.71562734197819644 11.93768695129944 -5.7113024492618614
		-4.4444026304036583 9.4902537101174786 -8.0768876283064053
		-24.277962828924725 0.17102561756708168 -5.7122091512105824
		;
createNode parentConstraint -n "R_Foot_01_FK_Ctrl_Grp_parentConstraint1" -p "R_Foot_01_FK_Ctrl_Grp";
	rename -uid "35F05EDC-4762-92B9-FD8B-8C8D42D4C183";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.024678213611842637 0.00087436955951858408 
		-0.010267509474124914 ;
	setAttr ".tg[0].tor" -type "double3" -0.3353266787282233 -0.11246489348447844 69.759457814268657 ;
	setAttr ".lr" -type "double3" -90.007559916411907 64.905728504263408 89.991652139077644 ;
	setAttr ".rst" -type "double3" -6.6241994657422039 9.4793901768139452 -4.6511500944618867 ;
	setAttr ".rsrr" -type "double3" -90.007559916411907 64.905728504263408 89.991652139077644 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Foot_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Foot_01_FK_Ctrl_Grp";
	rename -uid "8DD89ED7-4AEC-FCB4-40B9-36A74C3D2C29";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.02467821361184086 0.0008743695595176959 -0.010267509474124026 ;
	setAttr ".tg[0].tor" -type "double3" -0.3353266787282233 -0.11246489348447844 69.759457814268657 ;
	setAttr ".lr" -type "double3" -90.007559916411907 64.905728504263408 89.991652139077644 ;
	setAttr ".rst" -type "double3" -6.6241994657422048 9.4793901768139435 -4.6511500944618858 ;
	setAttr ".rsrr" -type "double3" -90.007559916411907 64.905728504263408 89.991652139077644 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Foot_02_FK_Ctrl_Grp" -p "R_Foot_FK_Ctrl_Grp";
	rename -uid "AFDDFB2D-45C4-76F3-428C-B3BDE67DF4CA";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "R_Foot_02_FK_Ctrl" -p "R_Foot_02_FK_Ctrl_Grp";
	rename -uid "6A361F4E-4572-0ED9-163A-64B4CD836877";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Foot_02_FK_CtrlShape" -p "R_Foot_02_FK_Ctrl";
	rename -uid "C9E008DC-490B-64BF-8597-1AB2F5AF3DB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.600681352298977e-06 5.2755097389796237 -5.7269857928407832
		-9.3599429465610917e-10 7.4607141536490431 1.67323527145045e-05
		3.5993576358053157e-06 5.2755334020997671 5.7270094559609133
		5.0911963580138348e-06 1.6732352720122924e-05 8.0991977121061787
		3.6006812817344943e-06 -5.2755097389796175 5.7269857928407815
		9.3592373017351218e-10 -7.4607141536490422 -1.6732352715965449e-05
		-3.5993577063697933e-06 -5.27553340209976 -5.7270094559609159
		-5.0911964285783175e-06 -1.6732352713061007e-05 -8.0991977121061787
		-3.600681352298977e-06 5.2755097389796237 -5.7269857928407832
		-9.3599429465610917e-10 7.4607141536490431 1.67323527145045e-05
		3.5993576358053157e-06 5.2755334020997671 5.7270094559609133
		;
createNode parentConstraint -n "R_Foot_02_FK_Ctrl_Grp_parentConstraint1" -p "R_Foot_02_FK_Ctrl_Grp";
	rename -uid "A2148C5C-4182-3A88-3F58-9BA1B70DCD94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -12.716405920624014 5.3290705182007514e-15 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 3.5107071102797195e-14 -2.1281995222707849e-14 
		25.094271303580307 ;
	setAttr ".lr" -type "double3" -179.99998930995579 89.996793772319876 -0.0014908258483204134 ;
	setAttr ".rst" -type "double3" -6.6249852337092143 4.086249552339666 6.8649696133778786 ;
	setAttr ".rsrr" -type "double3" -179.99998930995579 89.996793772319876 -0.0014908258483204134 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Foot_02_FK_Ctrl_Grp_parentConstraint2" -p "R_Foot_02_FK_Ctrl_Grp";
	rename -uid "B30EEF00-4050-A314-C9D0-8BA1B9DB40D3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -12.716405920624014 3.5527136788005009e-15 
		-2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.5107071102797195e-14 -2.1281995222707849e-14 
		25.094271303580307 ;
	setAttr ".lr" -type "double3" -179.99998930995579 89.996793772319876 -0.0014908258483204134 ;
	setAttr ".rst" -type "double3" -6.6249852337092126 4.0862495523396669 6.8649696133778786 ;
	setAttr ".rsrr" -type "double3" -179.99998930995579 89.996793772319876 -0.0014908258483204134 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "R_Foot_03_FK_Ctrl_Grp" -p "R_Foot_FK_Ctrl_Grp";
	rename -uid "A335E21E-4530-4B4C-5725-429CDC171A7B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.6254968426448437 4.0862495656516398 16.007499613287845 ;
	setAttr ".r" -type "double3" -179.99998930998353 89.996793772319904 -0.0014908260753801672 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "R_Foot_03_FK_Ctrl" -p "R_Foot_03_FK_Ctrl_Grp";
	rename -uid "ED2BA913-4C5D-6EF5-A9DF-FF8D68D3F37B";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Foot_03_FK_CtrlShape" -p "R_Foot_03_FK_Ctrl";
	rename -uid "C69A9793-4BE8-42F2-5773-21B404DF355F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 3.6749076001771597 -3.6749076001771583
		0 5.1971041686384991 -1.2064092689480504e-15
		0 3.6749076001771583 3.6749076001771566
		0 1.4983375354427307e-15 5.1971041686384991
		0 -3.6749076001771561 3.6749076001771566
		0 -5.1971041686385 -3.6758094066531274e-16
		0 -3.6749076001771557 -3.6749076001771583
		0 5.2019147710570376e-16 -5.1971041686385009
		0 3.6749076001771597 -3.6749076001771583
		0 5.1971041686384991 -1.2064092689480504e-15
		0 3.6749076001771583 3.6749076001771566
		;
createNode scaleConstraint -n "R_Foot_FK_Ctrl_Grp_scaleConstraint1" -p "R_Foot_FK_Ctrl_Grp";
	rename -uid "0090E074-4C87-6BE9-12E3-BBA2649D3170";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_04_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_IK_Main_Ctrl_Grp" -p "R_Leg_Ctrl_Grp";
	rename -uid "DBB8E36D-4347-D82A-1D08-E08B0095D7CE";
createNode transform -n "R_Leg_IK_Ctrl_Base_Grp" -p "R_Leg_IK_Main_Ctrl_Grp";
	rename -uid "E1A14143-4E1B-F950-A2EF-ECB14F14688E";
	setAttr ".t" -type "double3" -6.3116002082824707 61.397598266601562 0.14141899347305298 ;
createNode transform -n "R_Leg_IK_Base_Ctrl" -p "R_Leg_IK_Ctrl_Base_Grp";
	rename -uid "3241B6B5-40CD-A045-E6D3-84887E62B2C5";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "R_Leg_IK_Base_CtrlShape" -p "R_Leg_IK_Base_Ctrl";
	rename -uid "9988DC13-4AA6-9CB5-FD75-D394EFB59EC9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2531262724414782 -2.8881673639826619 -5.421917975737423
		-3.3737049047136966e-15 -1.5458339845982401 -7.6677499353623482
		-5.2531262724414898 -0.20350060521381683 -5.421917975737423
		-7.4290424193451932 0.35251208575332338 -2.6953904168143025e-15
		-5.2531262724414898 -0.20350060521381683 5.421917975737423
		-4.8753467641634395e-15 -1.5458339845982416 7.6677499353623553
		5.2531262724414782 -2.8881673639826619 5.421917975737423
		7.4290424193451754 -3.4441800549498032 -1.2522445547690694e-15
		5.2531262724414782 -2.8881673639826619 -5.421917975737423
		-3.3737049047136966e-15 -1.5458339845982401 -7.6677499353623482
		-5.2531262724414898 -0.20350060521381683 -5.421917975737423
		;
createNode transform -n "R_Leg_PV_Ctrl_Grp" -p "R_Leg_IK_Main_Ctrl_Grp";
	rename -uid "A0A9AE8F-4609-CA89-EC74-90B7B2A5DDA5";
	setAttr ".t" -type "double3" -6.4285299142341099 42.533340218454519 -1.0101714699018034 ;
	setAttr ".r" -type "double3" -89.962617070996927 -6.283258374052461 89.643034265518182 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "R_Leg_PV_Ctrl_Offset" -p "R_Leg_PV_Ctrl_Grp";
	rename -uid "D1D26BD8-473D-F521-19CE-528B2E981B2D";
	setAttr ".t" -type "double3" 4.0949408072220379 -34.30556977354135 -2.4868995751603507e-13 ;
	setAttr ".r" -type "double3" 83.98875621391737 89.645174592195232 0.27213034088147792 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999922 ;
createNode transform -n "R_Leg_PV_Ctrl" -p "R_Leg_PV_Ctrl_Offset";
	rename -uid "F0798F96-4CCB-2B77-CC4C-5F8C5252CC70";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "R_Leg_PV_CtrlShape" -p "R_Leg_PV_Ctrl";
	rename -uid "99506962-4B0F-B9D8-4DED-B0BAA02897BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.12311134720238483 0.12311134720238838 3.5602520746650069e-15
		1.4184603836407352e-16 2.3165216038262235 3.6945597171645743e-15
		-0.12311134720238483 0.12311134720238834 3.5602520746650069e-15
		-2.3165216038262204 3.6728025678099127e-15 3.5527136788005009e-15
		-0.12311134720238483 -0.12311134720238127 3.545175282935995e-15
		-2.3204755339694174e-16 -2.3165216038262177 3.4108676404364276e-15
		0.12311134720238483 -0.12311134720238123 3.545175282935995e-15
		2.3165216038262204 3.2368104455991341e-15 3.5527136788005009e-15
		0.12311134720238483 0.12311134720238838 3.5602520746650069e-15
		1.4184603836407352e-16 2.3165216038262235 3.6945597171645743e-15
		-0.12311134720238483 0.12311134720238834 3.5602520746650069e-15
		;
createNode transform -n "R_Leg_IK_Ctrl_Grp" -p "R_Leg_IK_Main_Ctrl_Grp";
	rename -uid "1C27B00C-4DC5-A3C6-CE45-F4887D13A151";
	setAttr ".t" -type "double3" -6.6346192359924316 9.4547901153564453 -4.6523609161376953 ;
createNode transform -n "R_Leg_IK_Ctrl" -p "R_Leg_IK_Ctrl_Grp";
	rename -uid "EA49631E-4361-814C-1108-0F9E073CDF41";
	addAttr -ci true -sn "HeelTap" -ln "HeelTap" -at "double";
	addAttr -ci true -sn "HeelTwist" -ln "HeelTwist" -at "double";
	addAttr -ci true -sn "HeelRoll" -ln "HeelRoll" -at "double";
	addAttr -ci true -sn "ToeTap" -ln "ToeTap" -at "double";
	addAttr -ci true -sn "ToeTwist" -ln "ToeTwist" -at "double";
	addAttr -ci true -sn "ToeRoll" -ln "ToeRoll" -at "double";
	addAttr -ci true -sn "BallTap" -ln "BallTap" -at "double";
	addAttr -ci true -sn "BallTwist" -ln "BallTwist" -at "double";
	addAttr -ci true -sn "BallRoll" -ln "BallRoll" -at "double";
	addAttr -ci true -sn "TipTap" -ln "TipTap" -at "double";
	addAttr -ci true -sn "TipTwist" -ln "TipTwist" -at "double";
	addAttr -ci true -sn "TipRoll" -ln "TipRoll" -at "double";
	addAttr -ci true -sn "FootRoll" -ln "FootRoll" -min -10 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".HeelTap";
	setAttr -k on ".HeelTwist";
	setAttr -k on ".HeelRoll";
	setAttr -k on ".ToeTap";
	setAttr -k on ".ToeTwist";
	setAttr -k on ".ToeRoll";
	setAttr -k on ".BallTap";
	setAttr -k on ".BallTwist";
	setAttr -k on ".BallRoll";
	setAttr -k on ".TipTap";
	setAttr -k on ".TipTwist";
	setAttr -k on ".TipRoll";
	setAttr -k on ".FootRoll";
createNode nurbsCurve -n "R_Leg_IK_CtrlShape" -p "R_Leg_IK_Ctrl";
	rename -uid "98ECB9CB-4359-FC04-98D2-4D81679928AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.7221212671833888 -9.4547901153564435 -3.7561210442171387
		4.9551055658313758e-16 -9.4547901153564435 -8.7874378164870848
		-5.7221212671833888 -9.4547901153564435 -3.7561210442171147
		-8.0923015015942816 -9.4547901153564435 8.3905521439922097
		-5.7221212671833888 -9.4547901153564435 20.537225332201533
		-8.1061137599311555e-16 -9.4547901153564453 22.672544806061818
		5.7221212671833888 -9.4547901153564435 20.537225332201533
		4.2255664215323039 -9.4547901153564453 8.3905521439922151
		5.7221212671833888 -9.4547901153564435 -3.7561210442171387
		4.9551055658313758e-16 -9.4547901153564435 -8.7874378164870848
		-5.7221212671833888 -9.4547901153564435 -3.7561210442171147
		;
createNode joint -n "R_Heel_Offset_IK_Reverse_Jnt" -p "R_Leg_IK_Ctrl";
	rename -uid "EA6ADFBF-4601-A5A8-A81A-B88CF630526B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.010419235992432441 -9.6165911153564458 -6.970639083862304 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 90 0 ;
	setAttr ".radi" 1.8928734089190631;
createNode joint -n "R_Heel_IK_Reverse_Jnt" -p "R_Heel_Offset_IK_Reverse_Jnt";
	rename -uid "C9DB535B-4021-6CFE-213F-6093464E7A19";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.8928734089190631;
createNode joint -n "R_Toe_Offset_IK_Reverse_Jnt" -p "R_Heel_IK_Reverse_Jnt";
	rename -uid "E9AAEA74-497A-5675-E936-49AF17AECABB";
	setAttr ".t" -type "double3" -27.9287 -0.030499999999999972 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.98318571377150099;
createNode joint -n "R_Toe_IK_Reverse_Jnt" -p "R_Toe_Offset_IK_Reverse_Jnt";
	rename -uid "A64C581C-4F6A-C5D7-361A-1DA5583A0C05";
	setAttr ".t" -type "double3" 0 -2.7755575615628914e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.98318571377150099;
createNode joint -n "R_Toe_Tap_01_IK_Reverse_Jnt" -p "R_Toe_IK_Reverse_Jnt";
	rename -uid "562C5C2C-4531-55B1-AF3A-DB8723E4037C";
	setAttr ".t" -type "double3" 9.443760000000001 -4.211831 0.00083000000000055252 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode joint -n "R_Toe_Tap_02_IK_Reverse_Jnt" -p "R_Toe_Tap_01_IK_Reverse_Jnt";
	rename -uid "390E4E4F-49BB-FB12-F5BD-16A03404F60A";
	setAttr ".t" -type "double3" -9.14256 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode ikHandle -n "R_Foot_02_IK_Reverse_Handle" -p "R_Toe_Tap_02_IK_Reverse_Jnt";
	rename -uid "D43A198A-4597-AFF2-810B-008DC6B3F0EC";
	setAttr ".t" -type "double3" -0.00036816105750858696 0.0038711866523151173 0.0005278153364338678 ;
	setAttr ".r" -type "double3" 0.001520187479425809 0.0033839709889822898 -0.028858747610894367 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".pv" -type "double3" -1 0 0 ;
	setAttr ".roc" yes;
createNode joint -n "R_Ball_Offset_IK_Reverse_Jnt" -p "R_Toe_IK_Reverse_Jnt";
	rename -uid "37A3062A-4FE9-28E2-4A83-13A4469874CE";
	setAttr ".t" -type "double3" 9.443760000000001 -4.211831 0.00083000000000055252 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode joint -n "R_Ball_IK_Reverse_Jnt" -p "R_Ball_Offset_IK_Reverse_Jnt";
	rename -uid "CBD43739-449B-9B5F-DDDB-91996C3DDD1D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode joint -n "R_Ankle_IK_Reverse_Jnt" -p "R_Ball_IK_Reverse_Jnt";
	rename -uid "B579CF06-4B9B-F422-67B1-008866A808A9";
	setAttr ".t" -type "double3" 11.51421 -5.3752000000000013 0.009580000000000588 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.105539100308023;
createNode ikHandle -n "R_Foot_01_IK_Reverse_Handle" -p "R_Ankle_IK_Reverse_Jnt";
	rename -uid "DB404351-4907-AC53-9935-CCB0EAC4F840";
	setAttr ".t" -type "double3" -11.514609322479792 5.3744662758398345 -0.0095921556104476835 ;
	setAttr ".r" -type "double3" -5.8473321670345519e-05 0.0037092870597054111 -25.123130097976215 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".pv" -type "double3" -1 0 0 ;
	setAttr ".roc" yes;
createNode ikHandle -n "R_Leg_IK_Handle" -p "R_Ankle_IK_Reverse_Jnt";
	rename -uid "B979C33D-4CB1-038C-30B3-A1895D6966E4";
	setAttr ".t" -type "double3" 2.6764020788050402e-05 0.00025360803672924703 5.1983402320487926e-06 ;
	setAttr ".r" -type "double3" -180 90 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_Leg_IK_Handle_poleVectorConstraint1" -p "R_Leg_IK_Handle";
	rename -uid "3FDE4C35-4A33-5603-B347-3B8FB01F61C9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_PV_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -32.149292329602055 20.634206040663077 0.092579747253127564 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1" -p "R_Leg_IK_Main_Ctrl_Grp";
	rename -uid "1076921C-42E1-FF4A-A38A-BDACCD719C9A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -65.1866 -0.04661570000000001 -3.1557999999999993 ;
	setAttr ".tg[0].tor" -type "double3" 90 90 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_IK_Main_Ctrl_Grp_scaleConstraint1" -p "R_Leg_IK_Main_Ctrl_Grp";
	rename -uid "580FC7B8-4574-FD82-786E-78BFD1BF3A3F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_01_FK_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Accessories_Ctrl_Grp" -p "Controls";
	rename -uid "FC997F28-4B66-7984-D0DD-00A3A09A8735";
createNode transform -n "Goggle_01_FK_Ctrl_Grp" -p "Accessories_Ctrl_Grp";
	rename -uid "4950DD73-4886-F77B-ABE8-4384D7A2B4FA";
createNode transform -n "Goggle_01_FK_Ctrl" -p "Goggle_01_FK_Ctrl_Grp";
	rename -uid "F723B826-4735-2E6D-B6E8-FC8D93AE3334";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Goggle_01_FK_CtrlShape" -p "Goggle_01_FK_Ctrl";
	rename -uid "20A98AE2-407C-5F5F-E8A0-2CB6A0840EA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0146740540504693 0.631951669746176 0
		1.0181622203486298 2.6703121870300328 0
		-2.5747752333375331 3.1444400409218587 0
		-4.6594442753969201 1.7765975649106696 0
		-4.0146740540504693 -0.63195166974617489 0
		-1.0181622203486302 -2.6703121870300333 0
		2.574775233337534 -3.1444400409218578 0
		4.6594442753969201 -1.7765975649106689 0
		4.0146740540504693 0.631951669746176 0
		1.0181622203486298 2.6703121870300328 0
		-2.5747752333375331 3.1444400409218587 0
		;
createNode parentConstraint -n "Goggle_01_FK_Ctrl_Grp_parentConstraint1" -p "Goggle_01_FK_Ctrl_Grp";
	rename -uid "F8EC31F8-4C55-0A26-1FEE-379C0FBCE376";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 22.690028818444034 14.685483232474432 7.9200727887812892e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 5.5659706925611543e-15 ;
	setAttr ".lr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr ".rst" -type "double3" 4.052072476673129e-16 129.71244410513367 9.7329750061035103 ;
	setAttr ".rsrr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode parentConstraint -n "Goggle_01_FK_Ctrl_Grp_parentConstraint2" -p "Goggle_01_FK_Ctrl_Grp";
	rename -uid "8F9DA2B8-49A4-02D2-16CF-0E8D7EACB5EF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 22.690028818444006 14.685483232474432 7.9200727887812876e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 5.5659706925611543e-15 ;
	setAttr ".lr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr ".rst" -type "double3" 4.0520724766731132e-16 129.71244410513364 9.7329750061035121 ;
	setAttr ".rsrr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Goggle_01_FK_Ctrl_Grp_scaleConstraint1" -p "Goggle_01_FK_Ctrl_Grp";
	rename -uid "9D1F9D9F-432B-E26F-6288-7D8DB1A6D25E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_FK_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D686EED1-4FCF-A36B-F33C-549AB74CF83E";
	setAttr -s 12 ".lnk";
	setAttr -s 12 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "BD66B311-49FA-81E7-29F7-29B0D8F23ECD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1661DC36-4DDF-922C-B032-65B66478EFDD";
createNode displayLayerManager -n "layerManager";
	rename -uid "901880DF-4C0E-889C-3D46-118EF3B432E2";
	setAttr ".cdl" 4;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "31CAD749-4562-13B6-1DA2-DBB4B11C7A18";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6288BC52-4DB5-C22E-7CBD-4DBAEFD46FB1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AEDC8A2F-4A6E-E2D2-FF77-06B1D0300DD4";
	setAttr ".g" yes;
createNode reference -n "Takoto_ModelRN";
	rename -uid "149AE1AD-4820-8D60-2067-2EAB9AD74D16";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Takoto_ModelRN"
		"Takoto_ModelRN" 0
		"Takoto_ModelRN" 7
		2 "|Takoto_Model:Takoto" "translate" " -type \"double3\" 0 0 0"
		2 "|Takoto_Model:Takoto" "rotate" " -type \"double3\" 0 0 0"
		2 "|Takoto_Model:Takoto" "scale" " -type \"double3\" 1 1 1"
		2 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo|Takoto_Model:Takoto_GeoShape" 
		"intermediateObject" " 0"
		2 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo|Takoto_Model:Takoto_GeoShape" 
		"uvPivot" " -type \"double2\" 0.76770249009132385 -0.10984699986875057"
		2 "Takoto_Model:Geo_Layer" "displayType" " 2"
		2 "Takoto_Model:Geo_Layer" "visibility" " 1";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CFE08DFC-4A8C-19A8-7323-1CAA027E33F9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 591\n            -height 325\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 590\n            -height 325\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 591\n            -height 325\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1112\n            -height 694\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp|perspShape\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1112\\n    -height 694\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1112\\n    -height 694\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D5B55A3F-4320-8070-1EF1-C0851160263F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Controls_Layer";
	rename -uid "F91EF0A2-43BE-C1EE-661D-2699A95FA919";
	setAttr ".do" 2;
createNode displayLayer -n "Skeleton_Layer";
	rename -uid "98D31320-4D35-A16E-B81C-91882D22044F";
	setAttr ".do" 3;
createNode reverse -n "L_Clav_01_FK_Translate_REV";
	rename -uid "5057C87E-40DC-C5B1-3C43-45B6B2066144";
createNode reverse -n "L_CLav_01_FK_Rotate_REV";
	rename -uid "5C3745AF-456E-32E1-A41E-C3BD5A31C7CD";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "62B86AAC-4082-F8DA-079D-D894C234D09B";
createNode reverse -n "L_Arm_IKFK_REV";
	rename -uid "E7CC9E17-4A9A-ABD1-F4CD-9BAF25BFB58C";
createNode reverse -n "R_Arm_IKFK_REV";
	rename -uid "CB8B0837-4EA8-3CAF-497C-B4B34C34EA6A";
createNode reverse -n "R_Leg_IKFK_REV";
	rename -uid "AED37406-4204-04B8-3097-6EA3A668C141";
createNode reverse -n "L_Leg_IKFK_REV";
	rename -uid "45FFF327-4C3A-D10C-BF7B-EABABB482334";
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "DB3F82E7-452E-7604-212E-43A24886FAE6";
createNode unitConversion -n "unitConversion1";
	rename -uid "C4AFDF3E-4B24-C5A3-FF19-67AE771A3E1C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion2";
	rename -uid "48D75F7F-4391-6459-A23E-C4BDD9A83CD1";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion3";
	rename -uid "BDC11924-45C8-7CE1-B43D-76A3994E04AC";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion4";
	rename -uid "FFDF69E9-4C1A-A3ED-3CFB-77901E7AC445";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "251194EA-4D79-1C19-B36A-C8956120DA61";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion6";
	rename -uid "04E2FB60-48B9-5DD9-C2E0-34BF9E4D13E7";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion7";
	rename -uid "756EB1EA-47D0-F3BD-A6B1-83A6F74991A7";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion8";
	rename -uid "056E804E-460A-3EBA-29E7-B6ABBE9080EF";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion9";
	rename -uid "0A4C56F8-43A8-4D7E-E2D2-9BB86B359725";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion10";
	rename -uid "25709ED4-4DC3-F3E6-D90B-BD866D0ED8C8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion11";
	rename -uid "877DB94E-4D11-9D94-9B17-F593D956EC7C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion12";
	rename -uid "7930D40C-4D78-0C86-54E9-F4877C767D8E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion13";
	rename -uid "01749A05-4902-E1BA-95DD-39BB6C2342FB";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion14";
	rename -uid "5D5BE6CC-43F4-23EF-7DD9-F5BC6A01ACBE";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion15";
	rename -uid "11E71771-47C9-F642-C61D-30A072529171";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion16";
	rename -uid "8F4A56DB-4310-C4D5-3025-24B75CBC487C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion17";
	rename -uid "85A7E557-4200-4309-E170-50B9213DC70E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion18";
	rename -uid "72027A16-42A9-ABFA-B148-108596CF0358";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion19";
	rename -uid "7AA151E3-4132-84DB-D024-A1926F21577B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion20";
	rename -uid "176D5E77-4480-BC52-DDFB-4C9DC72089B9";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion21";
	rename -uid "C54B18FE-4AD3-2C52-DDB5-9ABBFA719238";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion22";
	rename -uid "7CA2C5A2-466A-3693-4671-37A0ED066A6D";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion23";
	rename -uid "E34D3ADA-4083-195E-D1AB-179368FCF4B5";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion24";
	rename -uid "F9172A7D-4A2A-7B8B-0040-9AB59EE9ABE7";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUA -n "L_Heel_Offset_IK_Reverse_Jnt_rotateZ";
	rename -uid "C2BD9E0C-40DA-31A6-F4C4-DDA7299C2DA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 50 0 0 5 0 10 0;
createNode animCurveUA -n "L_Toe_Offset_IK_Reverse_Jnt_rotateZ";
	rename -uid "3C79D1B3-485D-9A25-C564-71A2F6C244F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 0 0 4 0 10 -59.999999999999993;
createNode animCurveUA -n "L_Ball_Offset_IK_Reverse_Jnt_rotateZ";
	rename -uid "B5A6C610-4545-27A1-9ADD-CDA2447CCB6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 0 0 5 -50 10 0;
createNode animCurveUA -n "R_Heel_Offset_IK_Reverse_Jnt_rotateZ";
	rename -uid "00B555C3-4815-8AE4-F352-7EA44196A985";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 50 0 0 5 0 10 0;
createNode animCurveUA -n "R_Toe_Offset_IK_Reverse_Jnt_rotateZ";
	rename -uid "FC947BBB-4FE8-26F3-ED3B-DD970986038F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 0 0 4 0 10 -59.999999999999993;
createNode animCurveUA -n "R_Ball_Offset_IK_Reverse_Jnt_rotateZ";
	rename -uid "207A779C-4C8A-8638-A88A-7E898CAD8904";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 0 0 0 5 -50 10 0;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "FB91FD35-49F1-3F56-B0E8-78BB0BFA66EE";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 909.73016321988769 311.35166340115933 ;
	setAttr ".tgi[0].vh" -type "double2" 2686.5933380147339 1204.9686491686064 ;
	setAttr -s 16 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 765.71429443359375;
	setAttr ".tgi[0].ni[0].y" 997.14288330078125;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 765.71429443359375;
	setAttr ".tgi[0].ni[1].y" 765.71429443359375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 765.71429443359375;
	setAttr ".tgi[0].ni[2].y" 895.71429443359375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 458.57144165039062;
	setAttr ".tgi[0].ni[3].y" 1495.301513671875;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" 2152.925537109375;
	setAttr ".tgi[0].ni[4].y" 1158.99755859375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 2225.52099609375;
	setAttr ".tgi[0].ni[5].y" 941.21075439453125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 2004.092529296875;
	setAttr ".tgi[0].ni[6].y" 941.21075439453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 2374.35400390625;
	setAttr ".tgi[0].ni[7].y" 1158.99755859375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1782.6639404296875;
	setAttr ".tgi[0].ni[8].y" 941.21075439453125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1488.6397705078125;
	setAttr ".tgi[0].ni[9].y" 1158.99755859375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1339.8067626953125;
	setAttr ".tgi[0].ni[10].y" 941.21075439453125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2446.94970703125;
	setAttr ".tgi[0].ni[11].y" 941.21075439453125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1710.068359375;
	setAttr ".tgi[0].ni[12].y" 1158.99755859375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1931.4969482421875;
	setAttr ".tgi[0].ni[13].y" 1158.99755859375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1561.2353515625;
	setAttr ".tgi[0].ni[14].y" 941.21075439453125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1267.211181640625;
	setAttr ".tgi[0].ni[15].y" 1158.99755859375;
	setAttr ".tgi[0].ni[15].nvs" 18304;
select -ne :time1;
	setAttr ".o" 5;
	setAttr ".unw" 5;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 12 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Skeleton_Layer.di" "Skeleton.do";
connectAttr "Skeleton_scaleConstraint1.csx" "Skeleton.sx";
connectAttr "Skeleton_scaleConstraint1.csy" "Skeleton.sy";
connectAttr "Skeleton_scaleConstraint1.csz" "Skeleton.sz";
connectAttr "ROOT_Jnt.s" "COG_Jnt.is";
connectAttr "COG_Jnt_scaleConstraint1.csx" "COG_Jnt.sx";
connectAttr "COG_Jnt_scaleConstraint1.csy" "COG_Jnt.sy";
connectAttr "COG_Jnt_scaleConstraint1.csz" "COG_Jnt.sz";
connectAttr "COG_Jnt_parentConstraint1.ctx" "COG_Jnt.tx";
connectAttr "COG_Jnt_parentConstraint1.cty" "COG_Jnt.ty";
connectAttr "COG_Jnt_parentConstraint1.ctz" "COG_Jnt.tz";
connectAttr "COG_Jnt_parentConstraint1.crx" "COG_Jnt.rx";
connectAttr "COG_Jnt_parentConstraint1.cry" "COG_Jnt.ry";
connectAttr "COG_Jnt_parentConstraint1.crz" "COG_Jnt.rz";
connectAttr "COG_Jnt.s" "Spine_01_FK_Jnt.is";
connectAttr "Spine_01_FK_Jnt_scaleConstraint1.csx" "Spine_01_FK_Jnt.sx";
connectAttr "Spine_01_FK_Jnt_scaleConstraint1.csy" "Spine_01_FK_Jnt.sy";
connectAttr "Spine_01_FK_Jnt_scaleConstraint1.csz" "Spine_01_FK_Jnt.sz";
connectAttr "Spine_01_FK_Jnt_parentConstraint1.ctx" "Spine_01_FK_Jnt.tx";
connectAttr "Spine_01_FK_Jnt_parentConstraint1.cty" "Spine_01_FK_Jnt.ty";
connectAttr "Spine_01_FK_Jnt_parentConstraint1.ctz" "Spine_01_FK_Jnt.tz";
connectAttr "Spine_01_FK_Jnt_parentConstraint1.crx" "Spine_01_FK_Jnt.rx";
connectAttr "Spine_01_FK_Jnt_parentConstraint1.cry" "Spine_01_FK_Jnt.ry";
connectAttr "Spine_01_FK_Jnt_parentConstraint1.crz" "Spine_01_FK_Jnt.rz";
connectAttr "Spine_01_FK_Jnt.s" "Spine_02_FK_Jnt.is";
connectAttr "Spine_02_FK_Jnt_scaleConstraint1.csx" "Spine_02_FK_Jnt.sx";
connectAttr "Spine_02_FK_Jnt_scaleConstraint1.csy" "Spine_02_FK_Jnt.sy";
connectAttr "Spine_02_FK_Jnt_scaleConstraint1.csz" "Spine_02_FK_Jnt.sz";
connectAttr "Spine_02_FK_Jnt_parentConstraint1.ctx" "Spine_02_FK_Jnt.tx";
connectAttr "Spine_02_FK_Jnt_parentConstraint1.cty" "Spine_02_FK_Jnt.ty";
connectAttr "Spine_02_FK_Jnt_parentConstraint1.ctz" "Spine_02_FK_Jnt.tz";
connectAttr "Spine_02_FK_Jnt_parentConstraint1.crx" "Spine_02_FK_Jnt.rx";
connectAttr "Spine_02_FK_Jnt_parentConstraint1.cry" "Spine_02_FK_Jnt.ry";
connectAttr "Spine_02_FK_Jnt_parentConstraint1.crz" "Spine_02_FK_Jnt.rz";
connectAttr "Spine_02_FK_Jnt.s" "Spine_03_FK_Jnt.is";
connectAttr "Spine_03_FK_Jnt_scaleConstraint1.csx" "Spine_03_FK_Jnt.sx";
connectAttr "Spine_03_FK_Jnt_scaleConstraint1.csy" "Spine_03_FK_Jnt.sy";
connectAttr "Spine_03_FK_Jnt_scaleConstraint1.csz" "Spine_03_FK_Jnt.sz";
connectAttr "Spine_03_FK_Jnt_parentConstraint1.ctx" "Spine_03_FK_Jnt.tx";
connectAttr "Spine_03_FK_Jnt_parentConstraint1.cty" "Spine_03_FK_Jnt.ty";
connectAttr "Spine_03_FK_Jnt_parentConstraint1.ctz" "Spine_03_FK_Jnt.tz";
connectAttr "Spine_03_FK_Jnt_parentConstraint1.crx" "Spine_03_FK_Jnt.rx";
connectAttr "Spine_03_FK_Jnt_parentConstraint1.cry" "Spine_03_FK_Jnt.ry";
connectAttr "Spine_03_FK_Jnt_parentConstraint1.crz" "Spine_03_FK_Jnt.rz";
connectAttr "Spine_03_FK_Jnt.s" "Spine_04_FK_Jnt.is";
connectAttr "Spine_04_FK_Jnt_scaleConstraint1.csx" "Spine_04_FK_Jnt.sx";
connectAttr "Spine_04_FK_Jnt_scaleConstraint1.csy" "Spine_04_FK_Jnt.sy";
connectAttr "Spine_04_FK_Jnt_scaleConstraint1.csz" "Spine_04_FK_Jnt.sz";
connectAttr "Spine_04_FK_Jnt_parentConstraint1.ctx" "Spine_04_FK_Jnt.tx";
connectAttr "Spine_04_FK_Jnt_parentConstraint1.cty" "Spine_04_FK_Jnt.ty";
connectAttr "Spine_04_FK_Jnt_parentConstraint1.ctz" "Spine_04_FK_Jnt.tz";
connectAttr "Spine_04_FK_Jnt_parentConstraint1.crx" "Spine_04_FK_Jnt.rx";
connectAttr "Spine_04_FK_Jnt_parentConstraint1.cry" "Spine_04_FK_Jnt.ry";
connectAttr "Spine_04_FK_Jnt_parentConstraint1.crz" "Spine_04_FK_Jnt.rz";
connectAttr "Spine_04_FK_Jnt.s" "Neck_01_FK_Jnt.is";
connectAttr "Neck_01_FK_Jnt_scaleConstraint1.csx" "Neck_01_FK_Jnt.sx";
connectAttr "Neck_01_FK_Jnt_scaleConstraint1.csy" "Neck_01_FK_Jnt.sy";
connectAttr "Neck_01_FK_Jnt_scaleConstraint1.csz" "Neck_01_FK_Jnt.sz";
connectAttr "Neck_01_FK_Jnt_parentConstraint1.ctx" "Neck_01_FK_Jnt.tx";
connectAttr "Neck_01_FK_Jnt_parentConstraint1.cty" "Neck_01_FK_Jnt.ty";
connectAttr "Neck_01_FK_Jnt_parentConstraint1.ctz" "Neck_01_FK_Jnt.tz";
connectAttr "Neck_01_FK_Jnt_parentConstraint1.crx" "Neck_01_FK_Jnt.rx";
connectAttr "Neck_01_FK_Jnt_parentConstraint1.cry" "Neck_01_FK_Jnt.ry";
connectAttr "Neck_01_FK_Jnt_parentConstraint1.crz" "Neck_01_FK_Jnt.rz";
connectAttr "Neck_01_FK_Jnt.s" "Goggle_01_FK_Jnt.is";
connectAttr "Goggle_01_FK_Jnt_parentConstraint1.ctx" "Goggle_01_FK_Jnt.tx";
connectAttr "Goggle_01_FK_Jnt_parentConstraint1.cty" "Goggle_01_FK_Jnt.ty";
connectAttr "Goggle_01_FK_Jnt_parentConstraint1.ctz" "Goggle_01_FK_Jnt.tz";
connectAttr "Goggle_01_FK_Jnt_parentConstraint1.crx" "Goggle_01_FK_Jnt.rx";
connectAttr "Goggle_01_FK_Jnt_parentConstraint1.cry" "Goggle_01_FK_Jnt.ry";
connectAttr "Goggle_01_FK_Jnt_parentConstraint1.crz" "Goggle_01_FK_Jnt.rz";
connectAttr "Goggle_01_FK_Jnt_scaleConstraint1.csx" "Goggle_01_FK_Jnt.sx";
connectAttr "Goggle_01_FK_Jnt_scaleConstraint1.csy" "Goggle_01_FK_Jnt.sy";
connectAttr "Goggle_01_FK_Jnt_scaleConstraint1.csz" "Goggle_01_FK_Jnt.sz";
connectAttr "Goggle_01_FK_Jnt.ro" "Goggle_01_FK_Jnt_parentConstraint1.cro";
connectAttr "Goggle_01_FK_Jnt.pim" "Goggle_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "Goggle_01_FK_Jnt.rp" "Goggle_01_FK_Jnt_parentConstraint1.crp";
connectAttr "Goggle_01_FK_Jnt.rpt" "Goggle_01_FK_Jnt_parentConstraint1.crt";
connectAttr "Goggle_01_FK_Jnt.jo" "Goggle_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "Goggle_01_FK_Ctrl.t" "Goggle_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Goggle_01_FK_Ctrl.rp" "Goggle_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Goggle_01_FK_Ctrl.rpt" "Goggle_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Goggle_01_FK_Ctrl.r" "Goggle_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Goggle_01_FK_Ctrl.ro" "Goggle_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Goggle_01_FK_Ctrl.s" "Goggle_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Goggle_01_FK_Ctrl.pm" "Goggle_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Goggle_01_FK_Jnt_parentConstraint1.w0" "Goggle_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Goggle_01_FK_Jnt.ssc" "Goggle_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Goggle_01_FK_Jnt.pim" "Goggle_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Goggle_01_FK_Ctrl.s" "Goggle_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Goggle_01_FK_Ctrl.pm" "Goggle_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Goggle_01_FK_Jnt_scaleConstraint1.w0" "Goggle_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Neck_01_FK_Jnt.ro" "Neck_01_FK_Jnt_parentConstraint1.cro";
connectAttr "Neck_01_FK_Jnt.pim" "Neck_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "Neck_01_FK_Jnt.rp" "Neck_01_FK_Jnt_parentConstraint1.crp";
connectAttr "Neck_01_FK_Jnt.rpt" "Neck_01_FK_Jnt_parentConstraint1.crt";
connectAttr "Neck_01_FK_Jnt.jo" "Neck_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "Neck_01_FK_Ctrl.t" "Neck_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Neck_01_FK_Ctrl.rp" "Neck_01_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Neck_01_FK_Ctrl.rpt" "Neck_01_FK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Neck_01_FK_Ctrl.r" "Neck_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Neck_01_FK_Ctrl.ro" "Neck_01_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Neck_01_FK_Ctrl.s" "Neck_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Neck_01_FK_Ctrl.pm" "Neck_01_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Neck_01_FK_Jnt_parentConstraint1.w0" "Neck_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Neck_01_FK_Jnt.ssc" "Neck_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Neck_01_FK_Jnt.pim" "Neck_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Neck_01_FK_Ctrl.s" "Neck_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Neck_01_FK_Ctrl.pm" "Neck_01_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Neck_01_FK_Jnt_scaleConstraint1.w0" "Neck_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_04_FK_Jnt.ro" "Spine_04_FK_Jnt_parentConstraint1.cro";
connectAttr "Spine_04_FK_Jnt.pim" "Spine_04_FK_Jnt_parentConstraint1.cpim";
connectAttr "Spine_04_FK_Jnt.rp" "Spine_04_FK_Jnt_parentConstraint1.crp";
connectAttr "Spine_04_FK_Jnt.rpt" "Spine_04_FK_Jnt_parentConstraint1.crt";
connectAttr "Spine_04_FK_Jnt.jo" "Spine_04_FK_Jnt_parentConstraint1.cjo";
connectAttr "Spine_04_FK_Ctrl.t" "Spine_04_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_04_FK_Ctrl.rp" "Spine_04_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_04_FK_Ctrl.rpt" "Spine_04_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_04_FK_Ctrl.r" "Spine_04_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_04_FK_Ctrl.ro" "Spine_04_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_04_FK_Ctrl.s" "Spine_04_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_04_FK_Ctrl.pm" "Spine_04_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_04_FK_Jnt_parentConstraint1.w0" "Spine_04_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_04_FK_Jnt.ssc" "Spine_04_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_04_FK_Jnt.pim" "Spine_04_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_04_FK_Ctrl.s" "Spine_04_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_04_FK_Ctrl.pm" "Spine_04_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_04_FK_Jnt_scaleConstraint1.w0" "Spine_04_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_FK_Jnt.s" "L_Clavical_01_FK_Jnt.is";
connectAttr "L_Clavical_01_FK_Jnt_scaleConstraint1.csx" "L_Clavical_01_FK_Jnt.sx"
		;
connectAttr "L_Clavical_01_FK_Jnt_scaleConstraint1.csy" "L_Clavical_01_FK_Jnt.sy"
		;
connectAttr "L_Clavical_01_FK_Jnt_scaleConstraint1.csz" "L_Clavical_01_FK_Jnt.sz"
		;
connectAttr "L_Clavical_01_FK_Jnt_parentConstraint1.ctx" "L_Clavical_01_FK_Jnt.tx"
		;
connectAttr "L_Clavical_01_FK_Jnt_parentConstraint1.cty" "L_Clavical_01_FK_Jnt.ty"
		;
connectAttr "L_Clavical_01_FK_Jnt_parentConstraint1.ctz" "L_Clavical_01_FK_Jnt.tz"
		;
connectAttr "L_Clavical_01_FK_Jnt_parentConstraint1.crx" "L_Clavical_01_FK_Jnt.rx"
		;
connectAttr "L_Clavical_01_FK_Jnt_parentConstraint1.cry" "L_Clavical_01_FK_Jnt.ry"
		;
connectAttr "L_Clavical_01_FK_Jnt_parentConstraint1.crz" "L_Clavical_01_FK_Jnt.rz"
		;
connectAttr "L_Clavical_01_FK_Jnt.s" "L_Arm_01_FK_Jnt.is";
connectAttr "L_Arm_01_FK_Jnt_scaleConstraint1.csx" "L_Arm_01_FK_Jnt.sx";
connectAttr "L_Arm_01_FK_Jnt_scaleConstraint1.csy" "L_Arm_01_FK_Jnt.sy";
connectAttr "L_Arm_01_FK_Jnt_scaleConstraint1.csz" "L_Arm_01_FK_Jnt.sz";
connectAttr "L_Arm_01_FK_Jnt_parentConstraint1.ctx" "L_Arm_01_FK_Jnt.tx";
connectAttr "L_Arm_01_FK_Jnt_parentConstraint1.cty" "L_Arm_01_FK_Jnt.ty";
connectAttr "L_Arm_01_FK_Jnt_parentConstraint1.ctz" "L_Arm_01_FK_Jnt.tz";
connectAttr "L_Arm_01_FK_Jnt_parentConstraint1.crx" "L_Arm_01_FK_Jnt.rx";
connectAttr "L_Arm_01_FK_Jnt_parentConstraint1.cry" "L_Arm_01_FK_Jnt.ry";
connectAttr "L_Arm_01_FK_Jnt_parentConstraint1.crz" "L_Arm_01_FK_Jnt.rz";
connectAttr "L_Arm_01_FK_Jnt.s" "L_Arm_02_FK_Jnt.is";
connectAttr "L_Arm_02_FK_Jnt_scaleConstraint1.csx" "L_Arm_02_FK_Jnt.sx";
connectAttr "L_Arm_02_FK_Jnt_scaleConstraint1.csy" "L_Arm_02_FK_Jnt.sy";
connectAttr "L_Arm_02_FK_Jnt_scaleConstraint1.csz" "L_Arm_02_FK_Jnt.sz";
connectAttr "L_Arm_02_FK_Jnt_parentConstraint1.ctx" "L_Arm_02_FK_Jnt.tx";
connectAttr "L_Arm_02_FK_Jnt_parentConstraint1.cty" "L_Arm_02_FK_Jnt.ty";
connectAttr "L_Arm_02_FK_Jnt_parentConstraint1.ctz" "L_Arm_02_FK_Jnt.tz";
connectAttr "L_Arm_02_FK_Jnt_parentConstraint1.crx" "L_Arm_02_FK_Jnt.rx";
connectAttr "L_Arm_02_FK_Jnt_parentConstraint1.cry" "L_Arm_02_FK_Jnt.ry";
connectAttr "L_Arm_02_FK_Jnt_parentConstraint1.crz" "L_Arm_02_FK_Jnt.rz";
connectAttr "L_Arm_02_FK_Jnt.s" "L_Arm_03_FK_Jnt.is";
connectAttr "L_Arm_03_FK_Jnt_parentConstraint1.ctx" "L_Arm_03_FK_Jnt.tx";
connectAttr "L_Arm_03_FK_Jnt_parentConstraint1.cty" "L_Arm_03_FK_Jnt.ty";
connectAttr "L_Arm_03_FK_Jnt_parentConstraint1.ctz" "L_Arm_03_FK_Jnt.tz";
connectAttr "L_Arm_03_FK_Jnt_parentConstraint1.crx" "L_Arm_03_FK_Jnt.rx";
connectAttr "L_Arm_03_FK_Jnt_parentConstraint1.cry" "L_Arm_03_FK_Jnt.ry";
connectAttr "L_Arm_03_FK_Jnt_parentConstraint1.crz" "L_Arm_03_FK_Jnt.rz";
connectAttr "L_Arm_03_FK_Jnt_scaleConstraint1.csx" "L_Arm_03_FK_Jnt.sx";
connectAttr "L_Arm_03_FK_Jnt_scaleConstraint1.csy" "L_Arm_03_FK_Jnt.sy";
connectAttr "L_Arm_03_FK_Jnt_scaleConstraint1.csz" "L_Arm_03_FK_Jnt.sz";
connectAttr "L_Arm_03_FK_Jnt.ro" "L_Arm_03_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Arm_03_FK_Jnt.pim" "L_Arm_03_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Arm_03_FK_Jnt.rp" "L_Arm_03_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Arm_03_FK_Jnt.rpt" "L_Arm_03_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Arm_03_FK_Jnt.jo" "L_Arm_03_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_03_FK_Ctrl.t" "L_Arm_03_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_03_FK_Ctrl.rp" "L_Arm_03_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_03_FK_Ctrl.rpt" "L_Arm_03_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_03_FK_Ctrl.r" "L_Arm_03_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_03_FK_Ctrl.ro" "L_Arm_03_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_03_FK_Ctrl.s" "L_Arm_03_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_03_FK_Ctrl.pm" "L_Arm_03_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_03_FK_Jnt_parentConstraint1.w0" "L_Arm_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_03_FK_Jnt.ssc" "L_Arm_03_FK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Arm_03_FK_Jnt.pim" "L_Arm_03_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Arm_03_FK_Ctrl.s" "L_Arm_03_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_03_FK_Ctrl.pm" "L_Arm_03_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Arm_03_FK_Jnt_scaleConstraint1.w0" "L_Arm_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_02_FK_Jnt.ro" "L_Arm_02_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Arm_02_FK_Jnt.pim" "L_Arm_02_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Arm_02_FK_Jnt.rp" "L_Arm_02_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Arm_02_FK_Jnt.rpt" "L_Arm_02_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Arm_02_FK_Jnt.jo" "L_Arm_02_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_02_FK_Ctrl.t" "L_Arm_02_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_02_FK_Ctrl.rp" "L_Arm_02_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_02_FK_Ctrl.rpt" "L_Arm_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_02_FK_Ctrl.r" "L_Arm_02_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_02_FK_Ctrl.ro" "L_Arm_02_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_02_FK_Ctrl.s" "L_Arm_02_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_02_FK_Ctrl.pm" "L_Arm_02_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_02_FK_Jnt_parentConstraint1.w0" "L_Arm_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_02_FK_Jnt.ssc" "L_Arm_02_FK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Arm_02_FK_Jnt.pim" "L_Arm_02_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Arm_02_FK_Ctrl.s" "L_Arm_02_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_02_FK_Ctrl.pm" "L_Arm_02_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Arm_02_FK_Jnt_scaleConstraint1.w0" "L_Arm_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_FK_Jnt.ro" "L_Arm_01_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Arm_01_FK_Jnt.pim" "L_Arm_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Arm_01_FK_Jnt.rp" "L_Arm_01_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Arm_01_FK_Jnt.rpt" "L_Arm_01_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Arm_01_FK_Jnt.jo" "L_Arm_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_01_FK_Ctrl.t" "L_Arm_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_01_FK_Ctrl.rp" "L_Arm_01_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_01_FK_Ctrl.rpt" "L_Arm_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_01_FK_Ctrl.r" "L_Arm_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_01_FK_Ctrl.ro" "L_Arm_01_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_01_FK_Ctrl.s" "L_Arm_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_01_FK_Ctrl.pm" "L_Arm_01_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_01_FK_Jnt_parentConstraint1.w0" "L_Arm_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_FK_Jnt.ssc" "L_Arm_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Arm_01_FK_Jnt.pim" "L_Arm_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Arm_01_FK_Ctrl.s" "L_Arm_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_01_FK_Ctrl.pm" "L_Arm_01_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Arm_01_FK_Jnt_scaleConstraint1.w0" "L_Arm_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Clavical_01_FK_Jnt.s" "L_Arm_01_IK_Jnt.is";
connectAttr "L_Arm_01_IK_Jnt_pointConstraint1.ctx" "L_Arm_01_IK_Jnt.tx";
connectAttr "L_Arm_01_IK_Jnt_pointConstraint1.cty" "L_Arm_01_IK_Jnt.ty";
connectAttr "L_Arm_01_IK_Jnt_pointConstraint1.ctz" "L_Arm_01_IK_Jnt.tz";
connectAttr "L_Arm_01_IK_Jnt.s" "L_Arm_02_IK_Jnt.is";
connectAttr "L_Arm_02_IK_Jnt.s" "L_Arm_03_IK_Jnt.is";
connectAttr "L_Arm_03_IK_Jnt_orientConstraint1.crx" "L_Arm_03_IK_Jnt.rx";
connectAttr "L_Arm_03_IK_Jnt_orientConstraint1.cry" "L_Arm_03_IK_Jnt.ry";
connectAttr "L_Arm_03_IK_Jnt_orientConstraint1.crz" "L_Arm_03_IK_Jnt.rz";
connectAttr "L_Arm_03_IK_Jnt.ro" "L_Arm_03_IK_Jnt_orientConstraint1.cro";
connectAttr "L_Arm_03_IK_Jnt.pim" "L_Arm_03_IK_Jnt_orientConstraint1.cpim";
connectAttr "L_Arm_03_IK_Jnt.jo" "L_Arm_03_IK_Jnt_orientConstraint1.cjo";
connectAttr "L_Arm_03_IK_Jnt.is" "L_Arm_03_IK_Jnt_orientConstraint1.is";
connectAttr "L_Arm_IK_Ctrl.r" "L_Arm_03_IK_Jnt_orientConstraint1.tg[0].tr";
connectAttr "L_Arm_IK_Ctrl.ro" "L_Arm_03_IK_Jnt_orientConstraint1.tg[0].tro";
connectAttr "L_Arm_IK_Ctrl.pm" "L_Arm_03_IK_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "L_Arm_03_IK_Jnt_orientConstraint1.w0" "L_Arm_03_IK_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_03_IK_Jnt.tx" "effector1.tx";
connectAttr "L_Arm_03_IK_Jnt.ty" "effector1.ty";
connectAttr "L_Arm_03_IK_Jnt.tz" "effector1.tz";
connectAttr "L_Arm_03_IK_Jnt.opm" "effector1.opm";
connectAttr "L_Arm_01_IK_Jnt.pim" "L_Arm_01_IK_Jnt_pointConstraint1.cpim";
connectAttr "L_Arm_01_IK_Jnt.rp" "L_Arm_01_IK_Jnt_pointConstraint1.crp";
connectAttr "L_Arm_01_IK_Jnt.rpt" "L_Arm_01_IK_Jnt_pointConstraint1.crt";
connectAttr "L_Arm_IK_Base_Ctrl.t" "L_Arm_01_IK_Jnt_pointConstraint1.tg[0].tt";
connectAttr "L_Arm_IK_Base_Ctrl.rp" "L_Arm_01_IK_Jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_IK_Base_Ctrl.rpt" "L_Arm_01_IK_Jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_IK_Base_Ctrl.pm" "L_Arm_01_IK_Jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_01_IK_Jnt_pointConstraint1.w0" "L_Arm_01_IK_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Clavical_01_FK_Jnt.s" "L_Arm_01_RK_Jnt.is";
connectAttr "L_Arm_01_RK_Jnt_scaleConstraint1.csx" "L_Arm_01_RK_Jnt.sx";
connectAttr "L_Arm_01_RK_Jnt_scaleConstraint1.csy" "L_Arm_01_RK_Jnt.sy";
connectAttr "L_Arm_01_RK_Jnt_scaleConstraint1.csz" "L_Arm_01_RK_Jnt.sz";
connectAttr "L_Arm_01_RK_Jnt_parentConstraint1.ctx" "L_Arm_01_RK_Jnt.tx";
connectAttr "L_Arm_01_RK_Jnt_parentConstraint1.cty" "L_Arm_01_RK_Jnt.ty";
connectAttr "L_Arm_01_RK_Jnt_parentConstraint1.ctz" "L_Arm_01_RK_Jnt.tz";
connectAttr "L_Arm_01_RK_Jnt_parentConstraint1.crx" "L_Arm_01_RK_Jnt.rx";
connectAttr "L_Arm_01_RK_Jnt_parentConstraint1.cry" "L_Arm_01_RK_Jnt.ry";
connectAttr "L_Arm_01_RK_Jnt_parentConstraint1.crz" "L_Arm_01_RK_Jnt.rz";
connectAttr "L_Arm_01_RK_Jnt.s" "L_Arm_02_RK_Jnt.is";
connectAttr "L_Arm_02_RK_Jnt_scaleConstraint1.csx" "L_Arm_02_RK_Jnt.sx";
connectAttr "L_Arm_02_RK_Jnt_scaleConstraint1.csy" "L_Arm_02_RK_Jnt.sy";
connectAttr "L_Arm_02_RK_Jnt_scaleConstraint1.csz" "L_Arm_02_RK_Jnt.sz";
connectAttr "L_Arm_02_RK_Jnt_parentConstraint1.ctx" "L_Arm_02_RK_Jnt.tx";
connectAttr "L_Arm_02_RK_Jnt_parentConstraint1.cty" "L_Arm_02_RK_Jnt.ty";
connectAttr "L_Arm_02_RK_Jnt_parentConstraint1.ctz" "L_Arm_02_RK_Jnt.tz";
connectAttr "L_Arm_02_RK_Jnt_parentConstraint1.crx" "L_Arm_02_RK_Jnt.rx";
connectAttr "L_Arm_02_RK_Jnt_parentConstraint1.cry" "L_Arm_02_RK_Jnt.ry";
connectAttr "L_Arm_02_RK_Jnt_parentConstraint1.crz" "L_Arm_02_RK_Jnt.rz";
connectAttr "L_Arm_02_RK_Jnt.s" "L_Arm_03_RK_Jnt.is";
connectAttr "L_Arm_03_RK_Jnt_parentConstraint1.ctx" "L_Arm_03_RK_Jnt.tx";
connectAttr "L_Arm_03_RK_Jnt_parentConstraint1.cty" "L_Arm_03_RK_Jnt.ty";
connectAttr "L_Arm_03_RK_Jnt_parentConstraint1.ctz" "L_Arm_03_RK_Jnt.tz";
connectAttr "L_Arm_03_RK_Jnt_parentConstraint1.crx" "L_Arm_03_RK_Jnt.rx";
connectAttr "L_Arm_03_RK_Jnt_parentConstraint1.cry" "L_Arm_03_RK_Jnt.ry";
connectAttr "L_Arm_03_RK_Jnt_parentConstraint1.crz" "L_Arm_03_RK_Jnt.rz";
connectAttr "L_Arm_03_RK_Jnt_scaleConstraint1.csx" "L_Arm_03_RK_Jnt.sx";
connectAttr "L_Arm_03_RK_Jnt_scaleConstraint1.csy" "L_Arm_03_RK_Jnt.sy";
connectAttr "L_Arm_03_RK_Jnt_scaleConstraint1.csz" "L_Arm_03_RK_Jnt.sz";
connectAttr "L_Arm_03_RK_Jnt.ro" "L_Arm_03_RK_Jnt_parentConstraint1.cro";
connectAttr "L_Arm_03_RK_Jnt.pim" "L_Arm_03_RK_Jnt_parentConstraint1.cpim";
connectAttr "L_Arm_03_RK_Jnt.rp" "L_Arm_03_RK_Jnt_parentConstraint1.crp";
connectAttr "L_Arm_03_RK_Jnt.rpt" "L_Arm_03_RK_Jnt_parentConstraint1.crt";
connectAttr "L_Arm_03_RK_Jnt.jo" "L_Arm_03_RK_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_03_FK_Jnt.t" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_03_FK_Jnt.rp" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_03_FK_Jnt.rpt" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Arm_03_FK_Jnt.r" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_03_FK_Jnt.ro" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_03_FK_Jnt.s" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_03_FK_Jnt.pm" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_03_FK_Jnt.jo" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_Arm_03_FK_Jnt.ssc" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_Arm_03_FK_Jnt.is" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_Arm_03_RK_Jnt_parentConstraint1.w0" "L_Arm_03_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_03_IK_Jnt.t" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_Arm_03_IK_Jnt.rp" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_Arm_03_IK_Jnt.rpt" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_Arm_03_IK_Jnt.r" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_Arm_03_IK_Jnt.ro" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_Arm_03_IK_Jnt.s" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_Arm_03_IK_Jnt.pm" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_Arm_03_IK_Jnt.jo" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_Arm_03_IK_Jnt.ssc" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_Arm_03_IK_Jnt.is" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_Arm_03_RK_Jnt_parentConstraint1.w1" "L_Arm_03_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Arm_IKFK" "L_Arm_03_RK_Jnt_parentConstraint1.w0";
connectAttr "L_Arm_IKFK_REV.ox" "L_Arm_03_RK_Jnt_parentConstraint1.w1";
connectAttr "L_Arm_03_RK_Jnt.ssc" "L_Arm_03_RK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Arm_03_RK_Jnt.pim" "L_Arm_03_RK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Arm_03_FK_Jnt.s" "L_Arm_03_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_03_FK_Jnt.pm" "L_Arm_03_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Arm_03_RK_Jnt_scaleConstraint1.w0" "L_Arm_03_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_03_IK_Jnt.s" "L_Arm_03_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "L_Arm_03_IK_Jnt.pm" "L_Arm_03_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "L_Arm_03_RK_Jnt_scaleConstraint1.w1" "L_Arm_03_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Arm_IKFK" "L_Arm_03_RK_Jnt_scaleConstraint1.w0";
connectAttr "L_Arm_IKFK_REV.ox" "L_Arm_03_RK_Jnt_scaleConstraint1.w1";
connectAttr "L_Arm_02_RK_Jnt.ro" "L_Arm_02_RK_Jnt_parentConstraint1.cro";
connectAttr "L_Arm_02_RK_Jnt.pim" "L_Arm_02_RK_Jnt_parentConstraint1.cpim";
connectAttr "L_Arm_02_RK_Jnt.rp" "L_Arm_02_RK_Jnt_parentConstraint1.crp";
connectAttr "L_Arm_02_RK_Jnt.rpt" "L_Arm_02_RK_Jnt_parentConstraint1.crt";
connectAttr "L_Arm_02_RK_Jnt.jo" "L_Arm_02_RK_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_02_FK_Jnt.t" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_02_FK_Jnt.rp" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_02_FK_Jnt.rpt" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Arm_02_FK_Jnt.r" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_02_FK_Jnt.ro" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_02_FK_Jnt.s" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_02_FK_Jnt.pm" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_02_FK_Jnt.jo" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_Arm_02_FK_Jnt.ssc" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_Arm_02_FK_Jnt.is" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_Arm_02_RK_Jnt_parentConstraint1.w0" "L_Arm_02_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_02_IK_Jnt.t" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_Arm_02_IK_Jnt.rp" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_Arm_02_IK_Jnt.rpt" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_Arm_02_IK_Jnt.r" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_Arm_02_IK_Jnt.ro" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_Arm_02_IK_Jnt.s" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_Arm_02_IK_Jnt.pm" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_Arm_02_IK_Jnt.jo" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_Arm_02_IK_Jnt.ssc" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_Arm_02_IK_Jnt.is" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_Arm_02_RK_Jnt_parentConstraint1.w1" "L_Arm_02_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Arm_IKFK" "L_Arm_02_RK_Jnt_parentConstraint1.w0";
connectAttr "L_Arm_IKFK_REV.ox" "L_Arm_02_RK_Jnt_parentConstraint1.w1";
connectAttr "L_Arm_02_RK_Jnt.ssc" "L_Arm_02_RK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Arm_02_RK_Jnt.pim" "L_Arm_02_RK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Arm_02_FK_Jnt.s" "L_Arm_02_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_02_FK_Jnt.pm" "L_Arm_02_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Arm_02_RK_Jnt_scaleConstraint1.w0" "L_Arm_02_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_02_IK_Jnt.s" "L_Arm_02_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "L_Arm_02_IK_Jnt.pm" "L_Arm_02_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "L_Arm_02_RK_Jnt_scaleConstraint1.w1" "L_Arm_02_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Arm_IKFK" "L_Arm_02_RK_Jnt_scaleConstraint1.w0";
connectAttr "L_Arm_IKFK_REV.ox" "L_Arm_02_RK_Jnt_scaleConstraint1.w1";
connectAttr "L_Arm_01_RK_Jnt.ro" "L_Arm_01_RK_Jnt_parentConstraint1.cro";
connectAttr "L_Arm_01_RK_Jnt.pim" "L_Arm_01_RK_Jnt_parentConstraint1.cpim";
connectAttr "L_Arm_01_RK_Jnt.rp" "L_Arm_01_RK_Jnt_parentConstraint1.crp";
connectAttr "L_Arm_01_RK_Jnt.rpt" "L_Arm_01_RK_Jnt_parentConstraint1.crt";
connectAttr "L_Arm_01_RK_Jnt.jo" "L_Arm_01_RK_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_01_FK_Jnt.t" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_01_FK_Jnt.rp" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_01_FK_Jnt.rpt" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Arm_01_FK_Jnt.r" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_01_FK_Jnt.ro" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_01_FK_Jnt.s" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_01_FK_Jnt.pm" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_01_FK_Jnt.jo" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_Arm_01_FK_Jnt.ssc" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_Arm_01_FK_Jnt.is" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_Arm_01_RK_Jnt_parentConstraint1.w0" "L_Arm_01_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_IK_Jnt.t" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_Arm_01_IK_Jnt.rp" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_Arm_01_IK_Jnt.rpt" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_Arm_01_IK_Jnt.r" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_Arm_01_IK_Jnt.ro" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_Arm_01_IK_Jnt.s" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_Arm_01_IK_Jnt.pm" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_Arm_01_IK_Jnt.jo" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_Arm_01_IK_Jnt.ssc" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_Arm_01_IK_Jnt.is" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_Arm_01_RK_Jnt_parentConstraint1.w1" "L_Arm_01_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Arm_IKFK" "L_Arm_01_RK_Jnt_parentConstraint1.w0";
connectAttr "L_Arm_IKFK_REV.ox" "L_Arm_01_RK_Jnt_parentConstraint1.w1";
connectAttr "L_Arm_01_RK_Jnt.ssc" "L_Arm_01_RK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Arm_01_RK_Jnt.pim" "L_Arm_01_RK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Arm_01_FK_Jnt.s" "L_Arm_01_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_01_FK_Jnt.pm" "L_Arm_01_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Arm_01_RK_Jnt_scaleConstraint1.w0" "L_Arm_01_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_IK_Jnt.s" "L_Arm_01_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "L_Arm_01_IK_Jnt.pm" "L_Arm_01_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "L_Arm_01_RK_Jnt_scaleConstraint1.w1" "L_Arm_01_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Arm_IKFK" "L_Arm_01_RK_Jnt_scaleConstraint1.w0";
connectAttr "L_Arm_IKFK_REV.ox" "L_Arm_01_RK_Jnt_scaleConstraint1.w1";
connectAttr "L_Clavical_01_FK_Jnt.ro" "L_Clavical_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Clavical_01_FK_Jnt.pim" "L_Clavical_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Clavical_01_FK_Jnt.rp" "L_Clavical_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Clavical_01_FK_Jnt.rpt" "L_Clavical_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Clavical_01_FK_Jnt.jo" "L_Clavical_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Clavical_01_FK_Ctrl.t" "L_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.rp" "L_Clavical_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Clavical_01_FK_Ctrl.rpt" "L_Clavical_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.r" "L_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Clavical_01_FK_Ctrl.ro" "L_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Clavical_01_FK_Ctrl.s" "L_Clavical_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Clavical_01_FK_Ctrl.pm" "L_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Clavical_01_FK_Jnt_parentConstraint1.w0" "L_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Clavical_01_FK_Jnt.ssc" "L_Clavical_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Clavical_01_FK_Jnt.pim" "L_Clavical_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Clavical_01_FK_Ctrl.s" "L_Clavical_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Clavical_01_FK_Ctrl.pm" "L_Clavical_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Clavical_01_FK_Jnt_scaleConstraint1.w0" "L_Clavical_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_FK_Jnt.s" "R_Clavical_01_FK_Jnt.is";
connectAttr "R_Clavical_01_FK_Jnt_scaleConstraint1.csx" "R_Clavical_01_FK_Jnt.sx"
		;
connectAttr "R_Clavical_01_FK_Jnt_scaleConstraint1.csy" "R_Clavical_01_FK_Jnt.sy"
		;
connectAttr "R_Clavical_01_FK_Jnt_scaleConstraint1.csz" "R_Clavical_01_FK_Jnt.sz"
		;
connectAttr "R_Clavical_01_FK_Jnt_parentConstraint1.ctx" "R_Clavical_01_FK_Jnt.tx"
		;
connectAttr "R_Clavical_01_FK_Jnt_parentConstraint1.cty" "R_Clavical_01_FK_Jnt.ty"
		;
connectAttr "R_Clavical_01_FK_Jnt_parentConstraint1.ctz" "R_Clavical_01_FK_Jnt.tz"
		;
connectAttr "R_Clavical_01_FK_Jnt_parentConstraint1.crx" "R_Clavical_01_FK_Jnt.rx"
		;
connectAttr "R_Clavical_01_FK_Jnt_parentConstraint1.cry" "R_Clavical_01_FK_Jnt.ry"
		;
connectAttr "R_Clavical_01_FK_Jnt_parentConstraint1.crz" "R_Clavical_01_FK_Jnt.rz"
		;
connectAttr "R_Clavical_01_FK_Jnt.s" "R_Arm_01_FK_Jnt.is";
connectAttr "R_Arm_01_FK_Jnt_scaleConstraint1.csx" "R_Arm_01_FK_Jnt.sx";
connectAttr "R_Arm_01_FK_Jnt_scaleConstraint1.csy" "R_Arm_01_FK_Jnt.sy";
connectAttr "R_Arm_01_FK_Jnt_scaleConstraint1.csz" "R_Arm_01_FK_Jnt.sz";
connectAttr "R_Arm_01_FK_Jnt_parentConstraint1.ctx" "R_Arm_01_FK_Jnt.tx";
connectAttr "R_Arm_01_FK_Jnt_parentConstraint1.cty" "R_Arm_01_FK_Jnt.ty";
connectAttr "R_Arm_01_FK_Jnt_parentConstraint1.ctz" "R_Arm_01_FK_Jnt.tz";
connectAttr "R_Arm_01_FK_Jnt_parentConstraint1.crx" "R_Arm_01_FK_Jnt.rx";
connectAttr "R_Arm_01_FK_Jnt_parentConstraint1.cry" "R_Arm_01_FK_Jnt.ry";
connectAttr "R_Arm_01_FK_Jnt_parentConstraint1.crz" "R_Arm_01_FK_Jnt.rz";
connectAttr "R_Arm_01_FK_Jnt.s" "R_Arm_02_FK_Jnt.is";
connectAttr "R_Arm_02_FK_Jnt_scaleConstraint1.csx" "R_Arm_02_FK_Jnt.sx";
connectAttr "R_Arm_02_FK_Jnt_scaleConstraint1.csy" "R_Arm_02_FK_Jnt.sy";
connectAttr "R_Arm_02_FK_Jnt_scaleConstraint1.csz" "R_Arm_02_FK_Jnt.sz";
connectAttr "R_Arm_02_FK_Jnt_parentConstraint1.ctx" "R_Arm_02_FK_Jnt.tx";
connectAttr "R_Arm_02_FK_Jnt_parentConstraint1.cty" "R_Arm_02_FK_Jnt.ty";
connectAttr "R_Arm_02_FK_Jnt_parentConstraint1.ctz" "R_Arm_02_FK_Jnt.tz";
connectAttr "R_Arm_02_FK_Jnt_parentConstraint1.crx" "R_Arm_02_FK_Jnt.rx";
connectAttr "R_Arm_02_FK_Jnt_parentConstraint1.cry" "R_Arm_02_FK_Jnt.ry";
connectAttr "R_Arm_02_FK_Jnt_parentConstraint1.crz" "R_Arm_02_FK_Jnt.rz";
connectAttr "R_Arm_02_FK_Jnt.s" "R_Arm_03_FK_Jnt.is";
connectAttr "R_Arm_03_FK_Jnt_parentConstraint1.ctx" "R_Arm_03_FK_Jnt.tx";
connectAttr "R_Arm_03_FK_Jnt_parentConstraint1.cty" "R_Arm_03_FK_Jnt.ty";
connectAttr "R_Arm_03_FK_Jnt_parentConstraint1.ctz" "R_Arm_03_FK_Jnt.tz";
connectAttr "R_Arm_03_FK_Jnt_parentConstraint1.crx" "R_Arm_03_FK_Jnt.rx";
connectAttr "R_Arm_03_FK_Jnt_parentConstraint1.cry" "R_Arm_03_FK_Jnt.ry";
connectAttr "R_Arm_03_FK_Jnt_parentConstraint1.crz" "R_Arm_03_FK_Jnt.rz";
connectAttr "R_Arm_03_FK_Jnt_scaleConstraint1.csx" "R_Arm_03_FK_Jnt.sx";
connectAttr "R_Arm_03_FK_Jnt_scaleConstraint1.csy" "R_Arm_03_FK_Jnt.sy";
connectAttr "R_Arm_03_FK_Jnt_scaleConstraint1.csz" "R_Arm_03_FK_Jnt.sz";
connectAttr "R_Arm_03_FK_Jnt.ro" "R_Arm_03_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Arm_03_FK_Jnt.pim" "R_Arm_03_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Arm_03_FK_Jnt.rp" "R_Arm_03_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Arm_03_FK_Jnt.rpt" "R_Arm_03_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Arm_03_FK_Jnt.jo" "R_Arm_03_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_03_FK_Ctrl.t" "R_Arm_03_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_03_FK_Ctrl.rp" "R_Arm_03_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_03_FK_Ctrl.rpt" "R_Arm_03_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_03_FK_Ctrl.r" "R_Arm_03_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_03_FK_Ctrl.ro" "R_Arm_03_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_03_FK_Ctrl.s" "R_Arm_03_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_03_FK_Ctrl.pm" "R_Arm_03_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_03_FK_Jnt_parentConstraint1.w0" "R_Arm_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_03_FK_Jnt.ssc" "R_Arm_03_FK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Arm_03_FK_Jnt.pim" "R_Arm_03_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Arm_03_FK_Ctrl.s" "R_Arm_03_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_03_FK_Ctrl.pm" "R_Arm_03_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Arm_03_FK_Jnt_scaleConstraint1.w0" "R_Arm_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_02_FK_Jnt.ro" "R_Arm_02_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Arm_02_FK_Jnt.pim" "R_Arm_02_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Arm_02_FK_Jnt.rp" "R_Arm_02_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Arm_02_FK_Jnt.rpt" "R_Arm_02_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Arm_02_FK_Jnt.jo" "R_Arm_02_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_02_FK_Ctrl.t" "R_Arm_02_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_02_FK_Ctrl.rp" "R_Arm_02_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_02_FK_Ctrl.rpt" "R_Arm_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_02_FK_Ctrl.r" "R_Arm_02_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_02_FK_Ctrl.ro" "R_Arm_02_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_02_FK_Ctrl.s" "R_Arm_02_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_02_FK_Ctrl.pm" "R_Arm_02_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_02_FK_Jnt_parentConstraint1.w0" "R_Arm_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_02_FK_Jnt.ssc" "R_Arm_02_FK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Arm_02_FK_Jnt.pim" "R_Arm_02_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Arm_02_FK_Ctrl.s" "R_Arm_02_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_02_FK_Ctrl.pm" "R_Arm_02_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Arm_02_FK_Jnt_scaleConstraint1.w0" "R_Arm_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_FK_Jnt.ro" "R_Arm_01_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Arm_01_FK_Jnt.pim" "R_Arm_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Arm_01_FK_Jnt.rp" "R_Arm_01_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Arm_01_FK_Jnt.rpt" "R_Arm_01_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Arm_01_FK_Jnt.jo" "R_Arm_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_01_FK_Ctrl.t" "R_Arm_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_01_FK_Ctrl.rp" "R_Arm_01_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_01_FK_Ctrl.rpt" "R_Arm_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_01_FK_Ctrl.r" "R_Arm_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_01_FK_Ctrl.ro" "R_Arm_01_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_01_FK_Ctrl.s" "R_Arm_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_01_FK_Ctrl.pm" "R_Arm_01_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_01_FK_Jnt_parentConstraint1.w0" "R_Arm_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_FK_Jnt.ssc" "R_Arm_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Arm_01_FK_Jnt.pim" "R_Arm_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Arm_01_FK_Ctrl.s" "R_Arm_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_01_FK_Ctrl.pm" "R_Arm_01_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Arm_01_FK_Jnt_scaleConstraint1.w0" "R_Arm_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Clavical_01_FK_Jnt.s" "R_Arm_01_IK_Jnt.is";
connectAttr "R_Arm_01_IK_Jnt_pointConstraint1.ctx" "R_Arm_01_IK_Jnt.tx";
connectAttr "R_Arm_01_IK_Jnt_pointConstraint1.cty" "R_Arm_01_IK_Jnt.ty";
connectAttr "R_Arm_01_IK_Jnt_pointConstraint1.ctz" "R_Arm_01_IK_Jnt.tz";
connectAttr "R_Arm_01_IK_Jnt.s" "R_Arm_02_IK_Jnt.is";
connectAttr "R_Arm_02_IK_Jnt.s" "R_Arm_03_IK_Jnt.is";
connectAttr "R_Arm_03_IK_Jnt_orientConstraint1.crx" "R_Arm_03_IK_Jnt.rx";
connectAttr "R_Arm_03_IK_Jnt_orientConstraint1.cry" "R_Arm_03_IK_Jnt.ry";
connectAttr "R_Arm_03_IK_Jnt_orientConstraint1.crz" "R_Arm_03_IK_Jnt.rz";
connectAttr "R_Arm_03_IK_Jnt.ro" "R_Arm_03_IK_Jnt_orientConstraint1.cro";
connectAttr "R_Arm_03_IK_Jnt.pim" "R_Arm_03_IK_Jnt_orientConstraint1.cpim";
connectAttr "R_Arm_03_IK_Jnt.jo" "R_Arm_03_IK_Jnt_orientConstraint1.cjo";
connectAttr "R_Arm_03_IK_Jnt.is" "R_Arm_03_IK_Jnt_orientConstraint1.is";
connectAttr "R_Arm_IK_Ctrl.r" "R_Arm_03_IK_Jnt_orientConstraint1.tg[0].tr";
connectAttr "R_Arm_IK_Ctrl.ro" "R_Arm_03_IK_Jnt_orientConstraint1.tg[0].tro";
connectAttr "R_Arm_IK_Ctrl.pm" "R_Arm_03_IK_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "R_Arm_03_IK_Jnt_orientConstraint1.w0" "R_Arm_03_IK_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_03_IK_Jnt.tx" "effector2.tx";
connectAttr "R_Arm_03_IK_Jnt.ty" "effector2.ty";
connectAttr "R_Arm_03_IK_Jnt.tz" "effector2.tz";
connectAttr "R_Arm_03_IK_Jnt.opm" "effector2.opm";
connectAttr "R_Arm_01_IK_Jnt.pim" "R_Arm_01_IK_Jnt_pointConstraint1.cpim";
connectAttr "R_Arm_01_IK_Jnt.rp" "R_Arm_01_IK_Jnt_pointConstraint1.crp";
connectAttr "R_Arm_01_IK_Jnt.rpt" "R_Arm_01_IK_Jnt_pointConstraint1.crt";
connectAttr "R_Arm_IK_Base_Ctrl.t" "R_Arm_01_IK_Jnt_pointConstraint1.tg[0].tt";
connectAttr "R_Arm_IK_Base_Ctrl.rp" "R_Arm_01_IK_Jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_IK_Base_Ctrl.rpt" "R_Arm_01_IK_Jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_IK_Base_Ctrl.pm" "R_Arm_01_IK_Jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_01_IK_Jnt_pointConstraint1.w0" "R_Arm_01_IK_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Clavical_01_FK_Jnt.s" "R_Arm_01_RK_Jnt.is";
connectAttr "R_Arm_01_RK_Jnt_scaleConstraint1.csx" "R_Arm_01_RK_Jnt.sx";
connectAttr "R_Arm_01_RK_Jnt_scaleConstraint1.csy" "R_Arm_01_RK_Jnt.sy";
connectAttr "R_Arm_01_RK_Jnt_scaleConstraint1.csz" "R_Arm_01_RK_Jnt.sz";
connectAttr "R_Arm_01_RK_Jnt_parentConstraint1.ctx" "R_Arm_01_RK_Jnt.tx";
connectAttr "R_Arm_01_RK_Jnt_parentConstraint1.cty" "R_Arm_01_RK_Jnt.ty";
connectAttr "R_Arm_01_RK_Jnt_parentConstraint1.ctz" "R_Arm_01_RK_Jnt.tz";
connectAttr "R_Arm_01_RK_Jnt_parentConstraint1.crx" "R_Arm_01_RK_Jnt.rx";
connectAttr "R_Arm_01_RK_Jnt_parentConstraint1.cry" "R_Arm_01_RK_Jnt.ry";
connectAttr "R_Arm_01_RK_Jnt_parentConstraint1.crz" "R_Arm_01_RK_Jnt.rz";
connectAttr "R_Arm_01_RK_Jnt.s" "R_Arm_02_RK_Jnt.is";
connectAttr "R_Arm_02_RK_Jnt_scaleConstraint1.csx" "R_Arm_02_RK_Jnt.sx";
connectAttr "R_Arm_02_RK_Jnt_scaleConstraint1.csy" "R_Arm_02_RK_Jnt.sy";
connectAttr "R_Arm_02_RK_Jnt_scaleConstraint1.csz" "R_Arm_02_RK_Jnt.sz";
connectAttr "R_Arm_02_RK_Jnt_parentConstraint1.ctx" "R_Arm_02_RK_Jnt.tx";
connectAttr "R_Arm_02_RK_Jnt_parentConstraint1.cty" "R_Arm_02_RK_Jnt.ty";
connectAttr "R_Arm_02_RK_Jnt_parentConstraint1.ctz" "R_Arm_02_RK_Jnt.tz";
connectAttr "R_Arm_02_RK_Jnt_parentConstraint1.crx" "R_Arm_02_RK_Jnt.rx";
connectAttr "R_Arm_02_RK_Jnt_parentConstraint1.cry" "R_Arm_02_RK_Jnt.ry";
connectAttr "R_Arm_02_RK_Jnt_parentConstraint1.crz" "R_Arm_02_RK_Jnt.rz";
connectAttr "R_Arm_02_RK_Jnt.s" "R_Arm_03_RK_Jnt.is";
connectAttr "R_Arm_03_RK_Jnt_parentConstraint1.ctx" "R_Arm_03_RK_Jnt.tx";
connectAttr "R_Arm_03_RK_Jnt_parentConstraint1.cty" "R_Arm_03_RK_Jnt.ty";
connectAttr "R_Arm_03_RK_Jnt_parentConstraint1.ctz" "R_Arm_03_RK_Jnt.tz";
connectAttr "R_Arm_03_RK_Jnt_parentConstraint1.crx" "R_Arm_03_RK_Jnt.rx";
connectAttr "R_Arm_03_RK_Jnt_parentConstraint1.cry" "R_Arm_03_RK_Jnt.ry";
connectAttr "R_Arm_03_RK_Jnt_parentConstraint1.crz" "R_Arm_03_RK_Jnt.rz";
connectAttr "R_Arm_03_RK_Jnt_scaleConstraint1.csx" "R_Arm_03_RK_Jnt.sx";
connectAttr "R_Arm_03_RK_Jnt_scaleConstraint1.csy" "R_Arm_03_RK_Jnt.sy";
connectAttr "R_Arm_03_RK_Jnt_scaleConstraint1.csz" "R_Arm_03_RK_Jnt.sz";
connectAttr "R_Arm_03_RK_Jnt.ro" "R_Arm_03_RK_Jnt_parentConstraint1.cro";
connectAttr "R_Arm_03_RK_Jnt.pim" "R_Arm_03_RK_Jnt_parentConstraint1.cpim";
connectAttr "R_Arm_03_RK_Jnt.rp" "R_Arm_03_RK_Jnt_parentConstraint1.crp";
connectAttr "R_Arm_03_RK_Jnt.rpt" "R_Arm_03_RK_Jnt_parentConstraint1.crt";
connectAttr "R_Arm_03_RK_Jnt.jo" "R_Arm_03_RK_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_03_FK_Jnt.t" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_03_FK_Jnt.rp" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_03_FK_Jnt.rpt" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Arm_03_FK_Jnt.r" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_03_FK_Jnt.ro" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_03_FK_Jnt.s" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_03_FK_Jnt.pm" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_03_FK_Jnt.jo" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_Arm_03_FK_Jnt.ssc" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_Arm_03_FK_Jnt.is" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_Arm_03_RK_Jnt_parentConstraint1.w0" "R_Arm_03_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_03_IK_Jnt.t" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_Arm_03_IK_Jnt.rp" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_Arm_03_IK_Jnt.rpt" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_Arm_03_IK_Jnt.r" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_Arm_03_IK_Jnt.ro" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_Arm_03_IK_Jnt.s" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_Arm_03_IK_Jnt.pm" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_Arm_03_IK_Jnt.jo" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_Arm_03_IK_Jnt.ssc" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_Arm_03_IK_Jnt.is" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_Arm_03_RK_Jnt_parentConstraint1.w1" "R_Arm_03_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Arm_IKFK" "R_Arm_03_RK_Jnt_parentConstraint1.w0";
connectAttr "R_Arm_IKFK_REV.ox" "R_Arm_03_RK_Jnt_parentConstraint1.w1";
connectAttr "R_Arm_03_RK_Jnt.ssc" "R_Arm_03_RK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Arm_03_RK_Jnt.pim" "R_Arm_03_RK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Arm_03_FK_Jnt.s" "R_Arm_03_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_03_FK_Jnt.pm" "R_Arm_03_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Arm_03_RK_Jnt_scaleConstraint1.w0" "R_Arm_03_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_03_IK_Jnt.s" "R_Arm_03_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "R_Arm_03_IK_Jnt.pm" "R_Arm_03_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "R_Arm_03_RK_Jnt_scaleConstraint1.w1" "R_Arm_03_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Arm_IKFK" "R_Arm_03_RK_Jnt_scaleConstraint1.w0";
connectAttr "R_Arm_IKFK_REV.ox" "R_Arm_03_RK_Jnt_scaleConstraint1.w1";
connectAttr "R_Arm_02_RK_Jnt.ro" "R_Arm_02_RK_Jnt_parentConstraint1.cro";
connectAttr "R_Arm_02_RK_Jnt.pim" "R_Arm_02_RK_Jnt_parentConstraint1.cpim";
connectAttr "R_Arm_02_RK_Jnt.rp" "R_Arm_02_RK_Jnt_parentConstraint1.crp";
connectAttr "R_Arm_02_RK_Jnt.rpt" "R_Arm_02_RK_Jnt_parentConstraint1.crt";
connectAttr "R_Arm_02_RK_Jnt.jo" "R_Arm_02_RK_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_02_FK_Jnt.t" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_02_FK_Jnt.rp" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_02_FK_Jnt.rpt" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Arm_02_FK_Jnt.r" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_02_FK_Jnt.ro" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_02_FK_Jnt.s" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_02_FK_Jnt.pm" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_02_FK_Jnt.jo" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_Arm_02_FK_Jnt.ssc" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_Arm_02_FK_Jnt.is" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_Arm_02_RK_Jnt_parentConstraint1.w0" "R_Arm_02_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_02_IK_Jnt.t" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_Arm_02_IK_Jnt.rp" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_Arm_02_IK_Jnt.rpt" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_Arm_02_IK_Jnt.r" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_Arm_02_IK_Jnt.ro" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_Arm_02_IK_Jnt.s" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_Arm_02_IK_Jnt.pm" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_Arm_02_IK_Jnt.jo" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_Arm_02_IK_Jnt.ssc" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_Arm_02_IK_Jnt.is" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_Arm_02_RK_Jnt_parentConstraint1.w1" "R_Arm_02_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Arm_IKFK" "R_Arm_02_RK_Jnt_parentConstraint1.w0";
connectAttr "R_Arm_IKFK_REV.ox" "R_Arm_02_RK_Jnt_parentConstraint1.w1";
connectAttr "R_Arm_02_RK_Jnt.ssc" "R_Arm_02_RK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Arm_02_RK_Jnt.pim" "R_Arm_02_RK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Arm_02_FK_Jnt.s" "R_Arm_02_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_02_FK_Jnt.pm" "R_Arm_02_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Arm_02_RK_Jnt_scaleConstraint1.w0" "R_Arm_02_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_02_IK_Jnt.s" "R_Arm_02_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "R_Arm_02_IK_Jnt.pm" "R_Arm_02_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "R_Arm_02_RK_Jnt_scaleConstraint1.w1" "R_Arm_02_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Arm_IKFK" "R_Arm_02_RK_Jnt_scaleConstraint1.w0";
connectAttr "R_Arm_IKFK_REV.ox" "R_Arm_02_RK_Jnt_scaleConstraint1.w1";
connectAttr "R_Arm_01_RK_Jnt.ro" "R_Arm_01_RK_Jnt_parentConstraint1.cro";
connectAttr "R_Arm_01_RK_Jnt.pim" "R_Arm_01_RK_Jnt_parentConstraint1.cpim";
connectAttr "R_Arm_01_RK_Jnt.rp" "R_Arm_01_RK_Jnt_parentConstraint1.crp";
connectAttr "R_Arm_01_RK_Jnt.rpt" "R_Arm_01_RK_Jnt_parentConstraint1.crt";
connectAttr "R_Arm_01_RK_Jnt.jo" "R_Arm_01_RK_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_01_FK_Jnt.t" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_01_FK_Jnt.rp" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_01_FK_Jnt.rpt" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Arm_01_FK_Jnt.r" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_01_FK_Jnt.ro" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_01_FK_Jnt.s" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_01_FK_Jnt.pm" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_01_FK_Jnt.jo" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_Arm_01_FK_Jnt.ssc" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_Arm_01_FK_Jnt.is" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_Arm_01_RK_Jnt_parentConstraint1.w0" "R_Arm_01_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_IK_Jnt.t" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_Arm_01_IK_Jnt.rp" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_Arm_01_IK_Jnt.rpt" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_Arm_01_IK_Jnt.r" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_Arm_01_IK_Jnt.ro" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_Arm_01_IK_Jnt.s" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_Arm_01_IK_Jnt.pm" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_Arm_01_IK_Jnt.jo" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_Arm_01_IK_Jnt.ssc" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_Arm_01_IK_Jnt.is" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_Arm_01_RK_Jnt_parentConstraint1.w1" "R_Arm_01_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Arm_IKFK" "R_Arm_01_RK_Jnt_parentConstraint1.w0";
connectAttr "R_Arm_IKFK_REV.ox" "R_Arm_01_RK_Jnt_parentConstraint1.w1";
connectAttr "R_Arm_01_RK_Jnt.ssc" "R_Arm_01_RK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Arm_01_RK_Jnt.pim" "R_Arm_01_RK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Arm_01_FK_Jnt.s" "R_Arm_01_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_01_FK_Jnt.pm" "R_Arm_01_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Arm_01_RK_Jnt_scaleConstraint1.w0" "R_Arm_01_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_IK_Jnt.s" "R_Arm_01_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "R_Arm_01_IK_Jnt.pm" "R_Arm_01_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "R_Arm_01_RK_Jnt_scaleConstraint1.w1" "R_Arm_01_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Arm_IKFK" "R_Arm_01_RK_Jnt_scaleConstraint1.w0";
connectAttr "R_Arm_IKFK_REV.ox" "R_Arm_01_RK_Jnt_scaleConstraint1.w1";
connectAttr "R_Clavical_01_FK_Jnt.ro" "R_Clavical_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Clavical_01_FK_Jnt.pim" "R_Clavical_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Clavical_01_FK_Jnt.rp" "R_Clavical_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Clavical_01_FK_Jnt.rpt" "R_Clavical_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Clavical_01_FK_Jnt.jo" "R_Clavical_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Clavical_01_FK_Ctrl.t" "R_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.rp" "R_Clavical_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Clavical_01_FK_Ctrl.rpt" "R_Clavical_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.r" "R_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Clavical_01_FK_Ctrl.ro" "R_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Clavical_01_FK_Ctrl.s" "R_Clavical_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Clavical_01_FK_Ctrl.pm" "R_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Clavical_01_FK_Jnt_parentConstraint1.w0" "R_Clavical_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Clavical_01_FK_Jnt.ssc" "R_Clavical_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Clavical_01_FK_Jnt.pim" "R_Clavical_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Clavical_01_FK_Ctrl.s" "R_Clavical_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Clavical_01_FK_Ctrl.pm" "R_Clavical_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Clavical_01_FK_Jnt_scaleConstraint1.w0" "R_Clavical_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_FK_Jnt.ro" "Spine_03_FK_Jnt_parentConstraint1.cro";
connectAttr "Spine_03_FK_Jnt.pim" "Spine_03_FK_Jnt_parentConstraint1.cpim";
connectAttr "Spine_03_FK_Jnt.rp" "Spine_03_FK_Jnt_parentConstraint1.crp";
connectAttr "Spine_03_FK_Jnt.rpt" "Spine_03_FK_Jnt_parentConstraint1.crt";
connectAttr "Spine_03_FK_Jnt.jo" "Spine_03_FK_Jnt_parentConstraint1.cjo";
connectAttr "Spine_03_FK_Ctrl.t" "Spine_03_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_03_FK_Ctrl.rp" "Spine_03_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_03_FK_Ctrl.rpt" "Spine_03_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_03_FK_Ctrl.r" "Spine_03_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_03_FK_Ctrl.ro" "Spine_03_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_03_FK_Ctrl.s" "Spine_03_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_03_FK_Ctrl.pm" "Spine_03_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_03_FK_Jnt_parentConstraint1.w0" "Spine_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_FK_Jnt.ssc" "Spine_03_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_03_FK_Jnt.pim" "Spine_03_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_03_FK_Ctrl.s" "Spine_03_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_03_FK_Ctrl.pm" "Spine_03_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_03_FK_Jnt_scaleConstraint1.w0" "Spine_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_FK_Jnt.ro" "Spine_02_FK_Jnt_parentConstraint1.cro";
connectAttr "Spine_02_FK_Jnt.pim" "Spine_02_FK_Jnt_parentConstraint1.cpim";
connectAttr "Spine_02_FK_Jnt.rp" "Spine_02_FK_Jnt_parentConstraint1.crp";
connectAttr "Spine_02_FK_Jnt.rpt" "Spine_02_FK_Jnt_parentConstraint1.crt";
connectAttr "Spine_02_FK_Jnt.jo" "Spine_02_FK_Jnt_parentConstraint1.cjo";
connectAttr "Spine_02_FK_Ctrl.t" "Spine_02_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_02_FK_Ctrl.rp" "Spine_02_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_02_FK_Ctrl.rpt" "Spine_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_02_FK_Ctrl.r" "Spine_02_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_02_FK_Ctrl.ro" "Spine_02_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_02_FK_Ctrl.s" "Spine_02_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_02_FK_Ctrl.pm" "Spine_02_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_02_FK_Jnt_parentConstraint1.w0" "Spine_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_FK_Jnt.ssc" "Spine_02_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_02_FK_Jnt.pim" "Spine_02_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_02_FK_Ctrl.s" "Spine_02_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_02_FK_Ctrl.pm" "Spine_02_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_02_FK_Jnt_scaleConstraint1.w0" "Spine_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_01_FK_Jnt.ro" "Spine_01_FK_Jnt_parentConstraint1.cro";
connectAttr "Spine_01_FK_Jnt.pim" "Spine_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "Spine_01_FK_Jnt.rp" "Spine_01_FK_Jnt_parentConstraint1.crp";
connectAttr "Spine_01_FK_Jnt.rpt" "Spine_01_FK_Jnt_parentConstraint1.crt";
connectAttr "Spine_01_FK_Jnt.jo" "Spine_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "Spine_01_FK_Ctrl.t" "Spine_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_01_FK_Ctrl.rp" "Spine_01_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_01_FK_Ctrl.rpt" "Spine_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_01_FK_Ctrl.r" "Spine_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_01_FK_Ctrl.ro" "Spine_01_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_01_FK_Ctrl.s" "Spine_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_01_FK_Ctrl.pm" "Spine_01_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_01_FK_Jnt_parentConstraint1.w0" "Spine_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_01_FK_Jnt.ssc" "Spine_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_01_FK_Jnt.pim" "Spine_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_01_FK_Ctrl.s" "Spine_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_01_FK_Ctrl.pm" "Spine_01_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_01_FK_Jnt_scaleConstraint1.w0" "Spine_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "COG_Jnt.s" "Pelvis_01_FK_Jnt.is";
connectAttr "Pelvis_01_FK_Jnt_scaleConstraint1.csx" "Pelvis_01_FK_Jnt.sx";
connectAttr "Pelvis_01_FK_Jnt_scaleConstraint1.csy" "Pelvis_01_FK_Jnt.sy";
connectAttr "Pelvis_01_FK_Jnt_scaleConstraint1.csz" "Pelvis_01_FK_Jnt.sz";
connectAttr "Pelvis_01_FK_Jnt_parentConstraint1.ctx" "Pelvis_01_FK_Jnt.tx";
connectAttr "Pelvis_01_FK_Jnt_parentConstraint1.cty" "Pelvis_01_FK_Jnt.ty";
connectAttr "Pelvis_01_FK_Jnt_parentConstraint1.ctz" "Pelvis_01_FK_Jnt.tz";
connectAttr "Pelvis_01_FK_Jnt_parentConstraint1.crx" "Pelvis_01_FK_Jnt.rx";
connectAttr "Pelvis_01_FK_Jnt_parentConstraint1.cry" "Pelvis_01_FK_Jnt.ry";
connectAttr "Pelvis_01_FK_Jnt_parentConstraint1.crz" "Pelvis_01_FK_Jnt.rz";
connectAttr "Pelvis_01_FK_Jnt.s" "L_Leg_01_FK_Jnt.is";
connectAttr "L_Leg_01_FK_Jnt_scaleConstraint1.csx" "L_Leg_01_FK_Jnt.sx";
connectAttr "L_Leg_01_FK_Jnt_scaleConstraint1.csy" "L_Leg_01_FK_Jnt.sy";
connectAttr "L_Leg_01_FK_Jnt_scaleConstraint1.csz" "L_Leg_01_FK_Jnt.sz";
connectAttr "L_Leg_01_FK_Jnt_parentConstraint1.ctx" "L_Leg_01_FK_Jnt.tx";
connectAttr "L_Leg_01_FK_Jnt_parentConstraint1.cty" "L_Leg_01_FK_Jnt.ty";
connectAttr "L_Leg_01_FK_Jnt_parentConstraint1.ctz" "L_Leg_01_FK_Jnt.tz";
connectAttr "L_Leg_01_FK_Jnt_parentConstraint1.crx" "L_Leg_01_FK_Jnt.rx";
connectAttr "L_Leg_01_FK_Jnt_parentConstraint1.cry" "L_Leg_01_FK_Jnt.ry";
connectAttr "L_Leg_01_FK_Jnt_parentConstraint1.crz" "L_Leg_01_FK_Jnt.rz";
connectAttr "L_Leg_01_FK_Jnt.s" "L_Leg_02_FK_Jnt.is";
connectAttr "L_Leg_02_FK_Jnt_scaleConstraint1.csx" "L_Leg_02_FK_Jnt.sx";
connectAttr "L_Leg_02_FK_Jnt_scaleConstraint1.csy" "L_Leg_02_FK_Jnt.sy";
connectAttr "L_Leg_02_FK_Jnt_scaleConstraint1.csz" "L_Leg_02_FK_Jnt.sz";
connectAttr "L_Leg_02_FK_Jnt_parentConstraint1.ctx" "L_Leg_02_FK_Jnt.tx";
connectAttr "L_Leg_02_FK_Jnt_parentConstraint1.cty" "L_Leg_02_FK_Jnt.ty";
connectAttr "L_Leg_02_FK_Jnt_parentConstraint1.ctz" "L_Leg_02_FK_Jnt.tz";
connectAttr "L_Leg_02_FK_Jnt_parentConstraint1.crx" "L_Leg_02_FK_Jnt.rx";
connectAttr "L_Leg_02_FK_Jnt_parentConstraint1.cry" "L_Leg_02_FK_Jnt.ry";
connectAttr "L_Leg_02_FK_Jnt_parentConstraint1.crz" "L_Leg_02_FK_Jnt.rz";
connectAttr "L_Leg_02_FK_Jnt.s" "L_Leg_03_FK_Jnt.is";
connectAttr "L_Leg_03_FK_Jnt_scaleConstraint1.csx" "L_Leg_03_FK_Jnt.sx";
connectAttr "L_Leg_03_FK_Jnt_scaleConstraint1.csy" "L_Leg_03_FK_Jnt.sy";
connectAttr "L_Leg_03_FK_Jnt_scaleConstraint1.csz" "L_Leg_03_FK_Jnt.sz";
connectAttr "L_Leg_03_FK_Jnt_parentConstraint1.ctx" "L_Leg_03_FK_Jnt.tx";
connectAttr "L_Leg_03_FK_Jnt_parentConstraint1.cty" "L_Leg_03_FK_Jnt.ty";
connectAttr "L_Leg_03_FK_Jnt_parentConstraint1.ctz" "L_Leg_03_FK_Jnt.tz";
connectAttr "L_Leg_03_FK_Jnt_parentConstraint1.crx" "L_Leg_03_FK_Jnt.rx";
connectAttr "L_Leg_03_FK_Jnt_parentConstraint1.cry" "L_Leg_03_FK_Jnt.ry";
connectAttr "L_Leg_03_FK_Jnt_parentConstraint1.crz" "L_Leg_03_FK_Jnt.rz";
connectAttr "L_Leg_03_FK_Jnt.s" "L_Leg_04_FK_Jnt.is";
connectAttr "L_Leg_04_FK_Jnt_scaleConstraint1.csx" "L_Leg_04_FK_Jnt.sx";
connectAttr "L_Leg_04_FK_Jnt_scaleConstraint1.csy" "L_Leg_04_FK_Jnt.sy";
connectAttr "L_Leg_04_FK_Jnt_scaleConstraint1.csz" "L_Leg_04_FK_Jnt.sz";
connectAttr "L_Leg_04_FK_Jnt_parentConstraint1.ctx" "L_Leg_04_FK_Jnt.tx";
connectAttr "L_Leg_04_FK_Jnt_parentConstraint1.cty" "L_Leg_04_FK_Jnt.ty";
connectAttr "L_Leg_04_FK_Jnt_parentConstraint1.ctz" "L_Leg_04_FK_Jnt.tz";
connectAttr "L_Leg_04_FK_Jnt_parentConstraint1.crx" "L_Leg_04_FK_Jnt.rx";
connectAttr "L_Leg_04_FK_Jnt_parentConstraint1.cry" "L_Leg_04_FK_Jnt.ry";
connectAttr "L_Leg_04_FK_Jnt_parentConstraint1.crz" "L_Leg_04_FK_Jnt.rz";
connectAttr "L_Leg_04_FK_Jnt.s" "L_Foot_01_FK_Jnt.is";
connectAttr "L_Foot_01_FK_Jnt_scaleConstraint1.csx" "L_Foot_01_FK_Jnt.sx";
connectAttr "L_Foot_01_FK_Jnt_scaleConstraint1.csy" "L_Foot_01_FK_Jnt.sy";
connectAttr "L_Foot_01_FK_Jnt_scaleConstraint1.csz" "L_Foot_01_FK_Jnt.sz";
connectAttr "L_Foot_01_FK_Jnt_parentConstraint1.ctx" "L_Foot_01_FK_Jnt.tx";
connectAttr "L_Foot_01_FK_Jnt_parentConstraint1.cty" "L_Foot_01_FK_Jnt.ty";
connectAttr "L_Foot_01_FK_Jnt_parentConstraint1.ctz" "L_Foot_01_FK_Jnt.tz";
connectAttr "L_Foot_01_FK_Jnt_parentConstraint1.crx" "L_Foot_01_FK_Jnt.rx";
connectAttr "L_Foot_01_FK_Jnt_parentConstraint1.cry" "L_Foot_01_FK_Jnt.ry";
connectAttr "L_Foot_01_FK_Jnt_parentConstraint1.crz" "L_Foot_01_FK_Jnt.rz";
connectAttr "L_Foot_01_FK_Jnt.s" "L_Foot_02_FK_Jnt.is";
connectAttr "L_Foot_02_FK_Jnt_scaleConstraint1.csx" "L_Foot_02_FK_Jnt.sx";
connectAttr "L_Foot_02_FK_Jnt_scaleConstraint1.csy" "L_Foot_02_FK_Jnt.sy";
connectAttr "L_Foot_02_FK_Jnt_scaleConstraint1.csz" "L_Foot_02_FK_Jnt.sz";
connectAttr "L_Foot_02_FK_Jnt_parentConstraint1.ctx" "L_Foot_02_FK_Jnt.tx";
connectAttr "L_Foot_02_FK_Jnt_parentConstraint1.cty" "L_Foot_02_FK_Jnt.ty";
connectAttr "L_Foot_02_FK_Jnt_parentConstraint1.ctz" "L_Foot_02_FK_Jnt.tz";
connectAttr "L_Foot_02_FK_Jnt_parentConstraint1.crx" "L_Foot_02_FK_Jnt.rx";
connectAttr "L_Foot_02_FK_Jnt_parentConstraint1.cry" "L_Foot_02_FK_Jnt.ry";
connectAttr "L_Foot_02_FK_Jnt_parentConstraint1.crz" "L_Foot_02_FK_Jnt.rz";
connectAttr "L_Foot_02_FK_Jnt.s" "L_Foot_03_FK_Jnt.is";
connectAttr "L_Foot_02_FK_Jnt.ro" "L_Foot_02_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Foot_02_FK_Jnt.pim" "L_Foot_02_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Foot_02_FK_Jnt.rp" "L_Foot_02_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Foot_02_FK_Jnt.rpt" "L_Foot_02_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Foot_02_FK_Jnt.jo" "L_Foot_02_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Foot_02_FK_Ctrl.t" "L_Foot_02_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Foot_02_FK_Ctrl.rp" "L_Foot_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Foot_02_FK_Ctrl.rpt" "L_Foot_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Foot_02_FK_Ctrl.r" "L_Foot_02_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Foot_02_FK_Ctrl.ro" "L_Foot_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Foot_02_FK_Ctrl.s" "L_Foot_02_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Foot_02_FK_Ctrl.pm" "L_Foot_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_02_FK_Jnt_parentConstraint1.w0" "L_Foot_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_02_FK_Jnt.ssc" "L_Foot_02_FK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Foot_02_FK_Jnt.pim" "L_Foot_02_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Foot_02_FK_Ctrl.s" "L_Foot_02_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Foot_02_FK_Ctrl.pm" "L_Foot_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_02_FK_Jnt_scaleConstraint1.w0" "L_Foot_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_01_FK_Jnt.ro" "L_Foot_01_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Foot_01_FK_Jnt.pim" "L_Foot_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Foot_01_FK_Jnt.rp" "L_Foot_01_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Foot_01_FK_Jnt.rpt" "L_Foot_01_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Foot_01_FK_Jnt.jo" "L_Foot_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Foot_01_FK_Ctrl.t" "L_Foot_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Foot_01_FK_Ctrl.rp" "L_Foot_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Foot_01_FK_Ctrl.rpt" "L_Foot_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Foot_01_FK_Ctrl.r" "L_Foot_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Foot_01_FK_Ctrl.ro" "L_Foot_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Foot_01_FK_Ctrl.s" "L_Foot_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Foot_01_FK_Ctrl.pm" "L_Foot_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_01_FK_Jnt_parentConstraint1.w0" "L_Foot_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_01_FK_Jnt.ssc" "L_Foot_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Foot_01_FK_Jnt.pim" "L_Foot_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Foot_01_FK_Ctrl.s" "L_Foot_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Foot_01_FK_Ctrl.pm" "L_Foot_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_01_FK_Jnt_scaleConstraint1.w0" "L_Foot_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_04_FK_Jnt.ro" "L_Leg_04_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Leg_04_FK_Jnt.pim" "L_Leg_04_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Leg_04_FK_Jnt.rp" "L_Leg_04_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Leg_04_FK_Jnt.rpt" "L_Leg_04_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Leg_04_FK_Jnt.jo" "L_Leg_04_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Leg_04_FK_Ctrl.t" "L_Leg_04_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Leg_04_FK_Ctrl.rp" "L_Leg_04_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Leg_04_FK_Ctrl.rpt" "L_Leg_04_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_04_FK_Ctrl.r" "L_Leg_04_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Leg_04_FK_Ctrl.ro" "L_Leg_04_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Leg_04_FK_Ctrl.s" "L_Leg_04_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Leg_04_FK_Ctrl.pm" "L_Leg_04_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg_04_FK_Jnt_parentConstraint1.w0" "L_Leg_04_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_04_FK_Jnt.ssc" "L_Leg_04_FK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Leg_04_FK_Jnt.pim" "L_Leg_04_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Leg_04_FK_Ctrl.s" "L_Leg_04_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_04_FK_Ctrl.pm" "L_Leg_04_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Leg_04_FK_Jnt_scaleConstraint1.w0" "L_Leg_04_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_03_FK_Jnt.ro" "L_Leg_03_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Leg_03_FK_Jnt.pim" "L_Leg_03_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Leg_03_FK_Jnt.rp" "L_Leg_03_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Leg_03_FK_Jnt.rpt" "L_Leg_03_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Leg_03_FK_Jnt.jo" "L_Leg_03_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Leg_03_FK_Ctrl.t" "L_Leg_03_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Leg_03_FK_Ctrl.rp" "L_Leg_03_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Leg_03_FK_Ctrl.rpt" "L_Leg_03_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_03_FK_Ctrl.r" "L_Leg_03_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Leg_03_FK_Ctrl.ro" "L_Leg_03_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Leg_03_FK_Ctrl.s" "L_Leg_03_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Leg_03_FK_Ctrl.pm" "L_Leg_03_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg_03_FK_Jnt_parentConstraint1.w0" "L_Leg_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_03_FK_Jnt.ssc" "L_Leg_03_FK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Leg_03_FK_Jnt.pim" "L_Leg_03_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Leg_03_FK_Ctrl.s" "L_Leg_03_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_03_FK_Ctrl.pm" "L_Leg_03_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Leg_03_FK_Jnt_scaleConstraint1.w0" "L_Leg_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_02_FK_Jnt.ro" "L_Leg_02_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Leg_02_FK_Jnt.pim" "L_Leg_02_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Leg_02_FK_Jnt.rp" "L_Leg_02_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Leg_02_FK_Jnt.rpt" "L_Leg_02_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Leg_02_FK_Jnt.jo" "L_Leg_02_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Leg_02_FK_Ctrl.t" "L_Leg_02_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Leg_02_FK_Ctrl.rp" "L_Leg_02_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Leg_02_FK_Ctrl.rpt" "L_Leg_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_02_FK_Ctrl.r" "L_Leg_02_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Leg_02_FK_Ctrl.ro" "L_Leg_02_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Leg_02_FK_Ctrl.s" "L_Leg_02_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Leg_02_FK_Ctrl.pm" "L_Leg_02_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg_02_FK_Jnt_parentConstraint1.w0" "L_Leg_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_02_FK_Jnt.ssc" "L_Leg_02_FK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Leg_02_FK_Jnt.pim" "L_Leg_02_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Leg_02_FK_Ctrl.s" "L_Leg_02_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_02_FK_Ctrl.pm" "L_Leg_02_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Leg_02_FK_Jnt_scaleConstraint1.w0" "L_Leg_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_01_FK_Jnt.s" "L_Leg_02_IK_Jnt.is";
connectAttr "L_Leg_02_IK_Jnt_pointConstraint1.ctx" "L_Leg_02_IK_Jnt.tx";
connectAttr "L_Leg_02_IK_Jnt_pointConstraint1.cty" "L_Leg_02_IK_Jnt.ty";
connectAttr "L_Leg_02_IK_Jnt_pointConstraint1.ctz" "L_Leg_02_IK_Jnt.tz";
connectAttr "L_Leg_02_IK_Jnt.s" "L_Leg_03_IK_Jnt.is";
connectAttr "L_Leg_03_IK_Jnt.s" "L_Leg_04_IK_Jnt.is";
connectAttr "L_Leg_04_IK_Jnt_orientConstraint1.crx" "L_Leg_04_IK_Jnt.rx";
connectAttr "L_Leg_04_IK_Jnt_orientConstraint1.cry" "L_Leg_04_IK_Jnt.ry";
connectAttr "L_Leg_04_IK_Jnt_orientConstraint1.crz" "L_Leg_04_IK_Jnt.rz";
connectAttr "L_Leg_04_IK_Jnt.s" "L_Foot_01_IK_Jnt.is";
connectAttr "L_Foot_01_IK_Jnt.s" "L_Foot_02_IK_Jnt.is";
connectAttr "L_Foot_02_IK_Jnt.s" "L_Foot_03_IK_Jnt.is";
connectAttr "L_Foot_03_IK_Jnt.tx" "effector6.tx";
connectAttr "L_Foot_03_IK_Jnt.ty" "effector6.ty";
connectAttr "L_Foot_03_IK_Jnt.tz" "effector6.tz";
connectAttr "L_Foot_03_IK_Jnt.opm" "effector6.opm";
connectAttr "L_Foot_02_IK_Jnt.tx" "effector5.tx";
connectAttr "L_Foot_02_IK_Jnt.ty" "effector5.ty";
connectAttr "L_Foot_02_IK_Jnt.tz" "effector5.tz";
connectAttr "L_Foot_02_IK_Jnt.opm" "effector5.opm";
connectAttr "L_Leg_04_IK_Jnt.ro" "L_Leg_04_IK_Jnt_orientConstraint1.cro";
connectAttr "L_Leg_04_IK_Jnt.pim" "L_Leg_04_IK_Jnt_orientConstraint1.cpim";
connectAttr "L_Leg_04_IK_Jnt.jo" "L_Leg_04_IK_Jnt_orientConstraint1.cjo";
connectAttr "L_Leg_04_IK_Jnt.is" "L_Leg_04_IK_Jnt_orientConstraint1.is";
connectAttr "L_Leg_IK_Ctrl.r" "L_Leg_04_IK_Jnt_orientConstraint1.tg[0].tr";
connectAttr "L_Leg_IK_Ctrl.ro" "L_Leg_04_IK_Jnt_orientConstraint1.tg[0].tro";
connectAttr "L_Leg_IK_Ctrl.pm" "L_Leg_04_IK_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "L_Leg_04_IK_Jnt_orientConstraint1.w0" "L_Leg_04_IK_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_04_IK_Jnt.tx" "effector3.tx";
connectAttr "L_Leg_04_IK_Jnt.ty" "effector3.ty";
connectAttr "L_Leg_04_IK_Jnt.tz" "effector3.tz";
connectAttr "L_Leg_04_IK_Jnt.opm" "effector3.opm";
connectAttr "L_Leg_02_IK_Jnt.pim" "L_Leg_02_IK_Jnt_pointConstraint1.cpim";
connectAttr "L_Leg_02_IK_Jnt.rp" "L_Leg_02_IK_Jnt_pointConstraint1.crp";
connectAttr "L_Leg_02_IK_Jnt.rpt" "L_Leg_02_IK_Jnt_pointConstraint1.crt";
connectAttr "L_Leg_IK_Base_Ctrl.t" "L_Leg_02_IK_Jnt_pointConstraint1.tg[0].tt";
connectAttr "L_Leg_IK_Base_Ctrl.rp" "L_Leg_02_IK_Jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Leg_IK_Base_Ctrl.rpt" "L_Leg_02_IK_Jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_IK_Base_Ctrl.pm" "L_Leg_02_IK_Jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_02_IK_Jnt_pointConstraint1.w0" "L_Leg_02_IK_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_01_FK_Jnt.s" "L_Leg_02_RK_Jnt.is";
connectAttr "L_Leg_02_RK_Jnt_scaleConstraint1.csx" "L_Leg_02_RK_Jnt.sx";
connectAttr "L_Leg_02_RK_Jnt_scaleConstraint1.csy" "L_Leg_02_RK_Jnt.sy";
connectAttr "L_Leg_02_RK_Jnt_scaleConstraint1.csz" "L_Leg_02_RK_Jnt.sz";
connectAttr "L_Leg_02_RK_Jnt_parentConstraint1.ctx" "L_Leg_02_RK_Jnt.tx";
connectAttr "L_Leg_02_RK_Jnt_parentConstraint1.cty" "L_Leg_02_RK_Jnt.ty";
connectAttr "L_Leg_02_RK_Jnt_parentConstraint1.ctz" "L_Leg_02_RK_Jnt.tz";
connectAttr "L_Leg_02_RK_Jnt_parentConstraint1.crx" "L_Leg_02_RK_Jnt.rx";
connectAttr "L_Leg_02_RK_Jnt_parentConstraint1.cry" "L_Leg_02_RK_Jnt.ry";
connectAttr "L_Leg_02_RK_Jnt_parentConstraint1.crz" "L_Leg_02_RK_Jnt.rz";
connectAttr "L_Leg_02_RK_Jnt.s" "L_Leg_03_RK_Jnt.is";
connectAttr "L_Leg_03_RK_Jnt_scaleConstraint1.csx" "L_Leg_03_RK_Jnt.sx";
connectAttr "L_Leg_03_RK_Jnt_scaleConstraint1.csy" "L_Leg_03_RK_Jnt.sy";
connectAttr "L_Leg_03_RK_Jnt_scaleConstraint1.csz" "L_Leg_03_RK_Jnt.sz";
connectAttr "L_Leg_03_RK_Jnt_parentConstraint1.ctx" "L_Leg_03_RK_Jnt.tx";
connectAttr "L_Leg_03_RK_Jnt_parentConstraint1.cty" "L_Leg_03_RK_Jnt.ty";
connectAttr "L_Leg_03_RK_Jnt_parentConstraint1.ctz" "L_Leg_03_RK_Jnt.tz";
connectAttr "L_Leg_03_RK_Jnt_parentConstraint1.crx" "L_Leg_03_RK_Jnt.rx";
connectAttr "L_Leg_03_RK_Jnt_parentConstraint1.cry" "L_Leg_03_RK_Jnt.ry";
connectAttr "L_Leg_03_RK_Jnt_parentConstraint1.crz" "L_Leg_03_RK_Jnt.rz";
connectAttr "L_Leg_03_RK_Jnt.s" "L_Leg_04_RK_Jnt.is";
connectAttr "L_Leg_04_RK_Jnt_scaleConstraint1.csx" "L_Leg_04_RK_Jnt.sx";
connectAttr "L_Leg_04_RK_Jnt_scaleConstraint1.csy" "L_Leg_04_RK_Jnt.sy";
connectAttr "L_Leg_04_RK_Jnt_scaleConstraint1.csz" "L_Leg_04_RK_Jnt.sz";
connectAttr "L_Leg_04_RK_Jnt_parentConstraint1.ctx" "L_Leg_04_RK_Jnt.tx";
connectAttr "L_Leg_04_RK_Jnt_parentConstraint1.cty" "L_Leg_04_RK_Jnt.ty";
connectAttr "L_Leg_04_RK_Jnt_parentConstraint1.ctz" "L_Leg_04_RK_Jnt.tz";
connectAttr "L_Leg_04_RK_Jnt_parentConstraint1.crx" "L_Leg_04_RK_Jnt.rx";
connectAttr "L_Leg_04_RK_Jnt_parentConstraint1.cry" "L_Leg_04_RK_Jnt.ry";
connectAttr "L_Leg_04_RK_Jnt_parentConstraint1.crz" "L_Leg_04_RK_Jnt.rz";
connectAttr "L_Leg_04_RK_Jnt.s" "L_Foot_01_RK_Jnt.is";
connectAttr "L_Foot_01_RK_Jnt_scaleConstraint1.csx" "L_Foot_01_RK_Jnt.sx";
connectAttr "L_Foot_01_RK_Jnt_scaleConstraint1.csy" "L_Foot_01_RK_Jnt.sy";
connectAttr "L_Foot_01_RK_Jnt_scaleConstraint1.csz" "L_Foot_01_RK_Jnt.sz";
connectAttr "L_Foot_01_RK_Jnt_parentConstraint1.ctx" "L_Foot_01_RK_Jnt.tx";
connectAttr "L_Foot_01_RK_Jnt_parentConstraint1.cty" "L_Foot_01_RK_Jnt.ty";
connectAttr "L_Foot_01_RK_Jnt_parentConstraint1.ctz" "L_Foot_01_RK_Jnt.tz";
connectAttr "L_Foot_01_RK_Jnt_parentConstraint1.crx" "L_Foot_01_RK_Jnt.rx";
connectAttr "L_Foot_01_RK_Jnt_parentConstraint1.cry" "L_Foot_01_RK_Jnt.ry";
connectAttr "L_Foot_01_RK_Jnt_parentConstraint1.crz" "L_Foot_01_RK_Jnt.rz";
connectAttr "L_Foot_01_RK_Jnt.s" "L_Foot_02_RK_Jnt.is";
connectAttr "L_Foot_02_RK_Jnt_scaleConstraint1.csx" "L_Foot_02_RK_Jnt.sx";
connectAttr "L_Foot_02_RK_Jnt_scaleConstraint1.csy" "L_Foot_02_RK_Jnt.sy";
connectAttr "L_Foot_02_RK_Jnt_scaleConstraint1.csz" "L_Foot_02_RK_Jnt.sz";
connectAttr "L_Foot_02_RK_Jnt_parentConstraint1.ctx" "L_Foot_02_RK_Jnt.tx";
connectAttr "L_Foot_02_RK_Jnt_parentConstraint1.cty" "L_Foot_02_RK_Jnt.ty";
connectAttr "L_Foot_02_RK_Jnt_parentConstraint1.ctz" "L_Foot_02_RK_Jnt.tz";
connectAttr "L_Foot_02_RK_Jnt_parentConstraint1.crx" "L_Foot_02_RK_Jnt.rx";
connectAttr "L_Foot_02_RK_Jnt_parentConstraint1.cry" "L_Foot_02_RK_Jnt.ry";
connectAttr "L_Foot_02_RK_Jnt_parentConstraint1.crz" "L_Foot_02_RK_Jnt.rz";
connectAttr "L_Foot_02_RK_Jnt.s" "L_Foot_03_RK_Jnt.is";
connectAttr "L_Foot_03_RK_Jnt_parentConstraint1.ctx" "L_Foot_03_RK_Jnt.tx";
connectAttr "L_Foot_03_RK_Jnt_parentConstraint1.cty" "L_Foot_03_RK_Jnt.ty";
connectAttr "L_Foot_03_RK_Jnt_parentConstraint1.ctz" "L_Foot_03_RK_Jnt.tz";
connectAttr "L_Foot_03_RK_Jnt_parentConstraint1.crx" "L_Foot_03_RK_Jnt.rx";
connectAttr "L_Foot_03_RK_Jnt_parentConstraint1.cry" "L_Foot_03_RK_Jnt.ry";
connectAttr "L_Foot_03_RK_Jnt_parentConstraint1.crz" "L_Foot_03_RK_Jnt.rz";
connectAttr "L_Foot_03_RK_Jnt_scaleConstraint1.csx" "L_Foot_03_RK_Jnt.sx";
connectAttr "L_Foot_03_RK_Jnt_scaleConstraint1.csy" "L_Foot_03_RK_Jnt.sy";
connectAttr "L_Foot_03_RK_Jnt_scaleConstraint1.csz" "L_Foot_03_RK_Jnt.sz";
connectAttr "L_Foot_03_RK_Jnt.ro" "L_Foot_03_RK_Jnt_parentConstraint1.cro";
connectAttr "L_Foot_03_RK_Jnt.pim" "L_Foot_03_RK_Jnt_parentConstraint1.cpim";
connectAttr "L_Foot_03_RK_Jnt.rp" "L_Foot_03_RK_Jnt_parentConstraint1.crp";
connectAttr "L_Foot_03_RK_Jnt.rpt" "L_Foot_03_RK_Jnt_parentConstraint1.crt";
connectAttr "L_Foot_03_RK_Jnt.jo" "L_Foot_03_RK_Jnt_parentConstraint1.cjo";
connectAttr "L_Foot_03_FK_Jnt.t" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Foot_03_FK_Jnt.rp" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Foot_03_FK_Jnt.rpt" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Foot_03_FK_Jnt.r" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Foot_03_FK_Jnt.ro" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Foot_03_FK_Jnt.s" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Foot_03_FK_Jnt.pm" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_03_FK_Jnt.jo" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "L_Foot_03_FK_Jnt.ssc" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "L_Foot_03_FK_Jnt.is" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "L_Foot_03_RK_Jnt_parentConstraint1.w0" "L_Foot_03_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_03_IK_Jnt.t" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_Foot_03_IK_Jnt.rp" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "L_Foot_03_IK_Jnt.rpt" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "L_Foot_03_IK_Jnt.r" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_Foot_03_IK_Jnt.ro" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "L_Foot_03_IK_Jnt.s" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_Foot_03_IK_Jnt.pm" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "L_Foot_03_IK_Jnt.jo" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "L_Foot_03_IK_Jnt.ssc" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "L_Foot_03_IK_Jnt.is" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "L_Foot_03_RK_Jnt_parentConstraint1.w1" "L_Foot_03_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Foot_03_RK_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Foot_03_RK_Jnt_parentConstraint1.w1";
connectAttr "L_Foot_03_RK_Jnt.ssc" "L_Foot_03_RK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Foot_03_RK_Jnt.pim" "L_Foot_03_RK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Foot_03_FK_Jnt.s" "L_Foot_03_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Foot_03_FK_Jnt.pm" "L_Foot_03_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Foot_03_RK_Jnt_scaleConstraint1.w0" "L_Foot_03_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_03_IK_Jnt.s" "L_Foot_03_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "L_Foot_03_IK_Jnt.pm" "L_Foot_03_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "L_Foot_03_RK_Jnt_scaleConstraint1.w1" "L_Foot_03_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Foot_03_RK_Jnt_scaleConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Foot_03_RK_Jnt_scaleConstraint1.w1";
connectAttr "L_Foot_02_RK_Jnt.ro" "L_Foot_02_RK_Jnt_parentConstraint1.cro";
connectAttr "L_Foot_02_RK_Jnt.pim" "L_Foot_02_RK_Jnt_parentConstraint1.cpim";
connectAttr "L_Foot_02_RK_Jnt.rp" "L_Foot_02_RK_Jnt_parentConstraint1.crp";
connectAttr "L_Foot_02_RK_Jnt.rpt" "L_Foot_02_RK_Jnt_parentConstraint1.crt";
connectAttr "L_Foot_02_RK_Jnt.jo" "L_Foot_02_RK_Jnt_parentConstraint1.cjo";
connectAttr "L_Foot_02_FK_Jnt.t" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Foot_02_FK_Jnt.rp" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Foot_02_FK_Jnt.rpt" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Foot_02_FK_Jnt.r" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Foot_02_FK_Jnt.ro" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Foot_02_FK_Jnt.s" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Foot_02_FK_Jnt.pm" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_02_FK_Jnt.jo" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "L_Foot_02_FK_Jnt.ssc" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "L_Foot_02_FK_Jnt.is" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "L_Foot_02_RK_Jnt_parentConstraint1.w0" "L_Foot_02_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_02_IK_Jnt.t" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_Foot_02_IK_Jnt.rp" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "L_Foot_02_IK_Jnt.rpt" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "L_Foot_02_IK_Jnt.r" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_Foot_02_IK_Jnt.ro" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "L_Foot_02_IK_Jnt.s" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_Foot_02_IK_Jnt.pm" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "L_Foot_02_IK_Jnt.jo" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "L_Foot_02_IK_Jnt.ssc" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "L_Foot_02_IK_Jnt.is" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "L_Foot_02_RK_Jnt_parentConstraint1.w1" "L_Foot_02_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Foot_02_RK_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Foot_02_RK_Jnt_parentConstraint1.w1";
connectAttr "L_Foot_02_RK_Jnt.ssc" "L_Foot_02_RK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Foot_02_RK_Jnt.pim" "L_Foot_02_RK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Foot_02_FK_Jnt.s" "L_Foot_02_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Foot_02_FK_Jnt.pm" "L_Foot_02_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Foot_02_RK_Jnt_scaleConstraint1.w0" "L_Foot_02_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_02_IK_Jnt.s" "L_Foot_02_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "L_Foot_02_IK_Jnt.pm" "L_Foot_02_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "L_Foot_02_RK_Jnt_scaleConstraint1.w1" "L_Foot_02_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Foot_02_RK_Jnt_scaleConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Foot_02_RK_Jnt_scaleConstraint1.w1";
connectAttr "L_Foot_01_RK_Jnt.ro" "L_Foot_01_RK_Jnt_parentConstraint1.cro";
connectAttr "L_Foot_01_RK_Jnt.pim" "L_Foot_01_RK_Jnt_parentConstraint1.cpim";
connectAttr "L_Foot_01_RK_Jnt.rp" "L_Foot_01_RK_Jnt_parentConstraint1.crp";
connectAttr "L_Foot_01_RK_Jnt.rpt" "L_Foot_01_RK_Jnt_parentConstraint1.crt";
connectAttr "L_Foot_01_RK_Jnt.jo" "L_Foot_01_RK_Jnt_parentConstraint1.cjo";
connectAttr "L_Foot_01_FK_Jnt.t" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Foot_01_FK_Jnt.rp" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Foot_01_FK_Jnt.rpt" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Foot_01_FK_Jnt.r" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Foot_01_FK_Jnt.ro" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Foot_01_FK_Jnt.s" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Foot_01_FK_Jnt.pm" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_01_FK_Jnt.jo" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "L_Foot_01_FK_Jnt.ssc" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "L_Foot_01_FK_Jnt.is" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "L_Foot_01_RK_Jnt_parentConstraint1.w0" "L_Foot_01_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_01_IK_Jnt.t" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_Foot_01_IK_Jnt.rp" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "L_Foot_01_IK_Jnt.rpt" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "L_Foot_01_IK_Jnt.r" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_Foot_01_IK_Jnt.ro" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "L_Foot_01_IK_Jnt.s" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_Foot_01_IK_Jnt.pm" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "L_Foot_01_IK_Jnt.jo" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "L_Foot_01_IK_Jnt.ssc" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "L_Foot_01_IK_Jnt.is" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "L_Foot_01_RK_Jnt_parentConstraint1.w1" "L_Foot_01_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Foot_01_RK_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Foot_01_RK_Jnt_parentConstraint1.w1";
connectAttr "L_Foot_01_RK_Jnt.ssc" "L_Foot_01_RK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Foot_01_RK_Jnt.pim" "L_Foot_01_RK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Foot_01_FK_Jnt.s" "L_Foot_01_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Foot_01_FK_Jnt.pm" "L_Foot_01_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Foot_01_RK_Jnt_scaleConstraint1.w0" "L_Foot_01_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_01_IK_Jnt.s" "L_Foot_01_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "L_Foot_01_IK_Jnt.pm" "L_Foot_01_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "L_Foot_01_RK_Jnt_scaleConstraint1.w1" "L_Foot_01_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Foot_01_RK_Jnt_scaleConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Foot_01_RK_Jnt_scaleConstraint1.w1";
connectAttr "L_Leg_04_RK_Jnt.ro" "L_Leg_04_RK_Jnt_parentConstraint1.cro";
connectAttr "L_Leg_04_RK_Jnt.pim" "L_Leg_04_RK_Jnt_parentConstraint1.cpim";
connectAttr "L_Leg_04_RK_Jnt.rp" "L_Leg_04_RK_Jnt_parentConstraint1.crp";
connectAttr "L_Leg_04_RK_Jnt.rpt" "L_Leg_04_RK_Jnt_parentConstraint1.crt";
connectAttr "L_Leg_04_RK_Jnt.jo" "L_Leg_04_RK_Jnt_parentConstraint1.cjo";
connectAttr "L_Leg_04_FK_Jnt.t" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Leg_04_FK_Jnt.rp" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Leg_04_FK_Jnt.rpt" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Leg_04_FK_Jnt.r" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Leg_04_FK_Jnt.ro" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Leg_04_FK_Jnt.s" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Leg_04_FK_Jnt.pm" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg_04_FK_Jnt.jo" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_Leg_04_FK_Jnt.ssc" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_Leg_04_FK_Jnt.is" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_Leg_04_RK_Jnt_parentConstraint1.w0" "L_Leg_04_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_04_IK_Jnt.t" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_Leg_04_IK_Jnt.rp" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_Leg_04_IK_Jnt.rpt" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_Leg_04_IK_Jnt.r" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_Leg_04_IK_Jnt.ro" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_Leg_04_IK_Jnt.s" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_Leg_04_IK_Jnt.pm" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_Leg_04_IK_Jnt.jo" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_Leg_04_IK_Jnt.ssc" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_Leg_04_IK_Jnt.is" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_Leg_04_RK_Jnt_parentConstraint1.w1" "L_Leg_04_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Leg_04_RK_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Leg_04_RK_Jnt_parentConstraint1.w1";
connectAttr "L_Leg_04_RK_Jnt.ssc" "L_Leg_04_RK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Leg_04_RK_Jnt.pim" "L_Leg_04_RK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Leg_04_FK_Jnt.s" "L_Leg_04_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_04_FK_Jnt.pm" "L_Leg_04_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Leg_04_RK_Jnt_scaleConstraint1.w0" "L_Leg_04_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_04_IK_Jnt.s" "L_Leg_04_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "L_Leg_04_IK_Jnt.pm" "L_Leg_04_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "L_Leg_04_RK_Jnt_scaleConstraint1.w1" "L_Leg_04_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Leg_04_RK_Jnt_scaleConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Leg_04_RK_Jnt_scaleConstraint1.w1";
connectAttr "L_Leg_03_RK_Jnt.ro" "L_Leg_03_RK_Jnt_parentConstraint1.cro";
connectAttr "L_Leg_03_RK_Jnt.pim" "L_Leg_03_RK_Jnt_parentConstraint1.cpim";
connectAttr "L_Leg_03_RK_Jnt.rp" "L_Leg_03_RK_Jnt_parentConstraint1.crp";
connectAttr "L_Leg_03_RK_Jnt.rpt" "L_Leg_03_RK_Jnt_parentConstraint1.crt";
connectAttr "L_Leg_03_RK_Jnt.jo" "L_Leg_03_RK_Jnt_parentConstraint1.cjo";
connectAttr "L_Leg_03_FK_Jnt.t" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Leg_03_FK_Jnt.rp" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Leg_03_FK_Jnt.rpt" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Leg_03_FK_Jnt.r" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Leg_03_FK_Jnt.ro" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Leg_03_FK_Jnt.s" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Leg_03_FK_Jnt.pm" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg_03_FK_Jnt.jo" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_Leg_03_FK_Jnt.ssc" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_Leg_03_FK_Jnt.is" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_Leg_03_RK_Jnt_parentConstraint1.w0" "L_Leg_03_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_03_IK_Jnt.t" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_Leg_03_IK_Jnt.rp" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_Leg_03_IK_Jnt.rpt" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_Leg_03_IK_Jnt.r" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_Leg_03_IK_Jnt.ro" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_Leg_03_IK_Jnt.s" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_Leg_03_IK_Jnt.pm" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_Leg_03_IK_Jnt.jo" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_Leg_03_IK_Jnt.ssc" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_Leg_03_IK_Jnt.is" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_Leg_03_RK_Jnt_parentConstraint1.w1" "L_Leg_03_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Leg_03_RK_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Leg_03_RK_Jnt_parentConstraint1.w1";
connectAttr "L_Leg_03_RK_Jnt.ssc" "L_Leg_03_RK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Leg_03_RK_Jnt.pim" "L_Leg_03_RK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Leg_03_FK_Jnt.s" "L_Leg_03_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_03_FK_Jnt.pm" "L_Leg_03_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Leg_03_RK_Jnt_scaleConstraint1.w0" "L_Leg_03_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_03_IK_Jnt.s" "L_Leg_03_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "L_Leg_03_IK_Jnt.pm" "L_Leg_03_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "L_Leg_03_RK_Jnt_scaleConstraint1.w1" "L_Leg_03_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Leg_03_RK_Jnt_scaleConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Leg_03_RK_Jnt_scaleConstraint1.w1";
connectAttr "L_Leg_02_RK_Jnt.ro" "L_Leg_02_RK_Jnt_parentConstraint1.cro";
connectAttr "L_Leg_02_RK_Jnt.pim" "L_Leg_02_RK_Jnt_parentConstraint1.cpim";
connectAttr "L_Leg_02_RK_Jnt.rp" "L_Leg_02_RK_Jnt_parentConstraint1.crp";
connectAttr "L_Leg_02_RK_Jnt.rpt" "L_Leg_02_RK_Jnt_parentConstraint1.crt";
connectAttr "L_Leg_02_RK_Jnt.jo" "L_Leg_02_RK_Jnt_parentConstraint1.cjo";
connectAttr "L_Leg_02_FK_Jnt.t" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Leg_02_FK_Jnt.rp" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Leg_02_FK_Jnt.rpt" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Leg_02_FK_Jnt.r" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Leg_02_FK_Jnt.ro" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Leg_02_FK_Jnt.s" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Leg_02_FK_Jnt.pm" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg_02_FK_Jnt.jo" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_Leg_02_FK_Jnt.ssc" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_Leg_02_FK_Jnt.is" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_Leg_02_RK_Jnt_parentConstraint1.w0" "L_Leg_02_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_02_IK_Jnt.t" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_Leg_02_IK_Jnt.rp" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_Leg_02_IK_Jnt.rpt" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_Leg_02_IK_Jnt.r" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_Leg_02_IK_Jnt.ro" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_Leg_02_IK_Jnt.s" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_Leg_02_IK_Jnt.pm" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_Leg_02_IK_Jnt.jo" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_Leg_02_IK_Jnt.ssc" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_Leg_02_IK_Jnt.is" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_Leg_02_RK_Jnt_parentConstraint1.w1" "L_Leg_02_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Leg_02_RK_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Leg_02_RK_Jnt_parentConstraint1.w1";
connectAttr "L_Leg_02_RK_Jnt.ssc" "L_Leg_02_RK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Leg_02_RK_Jnt.pim" "L_Leg_02_RK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Leg_02_FK_Jnt.s" "L_Leg_02_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_02_FK_Jnt.pm" "L_Leg_02_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Leg_02_RK_Jnt_scaleConstraint1.w0" "L_Leg_02_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_02_IK_Jnt.s" "L_Leg_02_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "L_Leg_02_IK_Jnt.pm" "L_Leg_02_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "L_Leg_02_RK_Jnt_scaleConstraint1.w1" "L_Leg_02_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Leg_02_RK_Jnt_scaleConstraint1.w0";
connectAttr "L_Leg_IKFK_REV.ox" "L_Leg_02_RK_Jnt_scaleConstraint1.w1";
connectAttr "L_Leg_01_FK_Jnt.ro" "L_Leg_01_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Leg_01_FK_Jnt.pim" "L_Leg_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Leg_01_FK_Jnt.rp" "L_Leg_01_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Leg_01_FK_Jnt.rpt" "L_Leg_01_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Leg_01_FK_Jnt.jo" "L_Leg_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Leg_01_FK_Ctrl.t" "L_Leg_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Leg_01_FK_Ctrl.rp" "L_Leg_01_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Leg_01_FK_Ctrl.rpt" "L_Leg_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_01_FK_Ctrl.r" "L_Leg_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Leg_01_FK_Ctrl.ro" "L_Leg_01_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Leg_01_FK_Ctrl.s" "L_Leg_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Leg_01_FK_Ctrl.pm" "L_Leg_01_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg_01_FK_Jnt_parentConstraint1.w0" "L_Leg_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_01_FK_Jnt.ssc" "L_Leg_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "L_Leg_01_FK_Jnt.pim" "L_Leg_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Leg_01_FK_Ctrl.s" "L_Leg_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_01_FK_Ctrl.pm" "L_Leg_01_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Leg_01_FK_Jnt_scaleConstraint1.w0" "L_Leg_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Pelvis_01_FK_Jnt.s" "R_Leg_01_FK_Jnt.is";
connectAttr "R_Leg_01_FK_Jnt_scaleConstraint1.csx" "R_Leg_01_FK_Jnt.sx";
connectAttr "R_Leg_01_FK_Jnt_scaleConstraint1.csy" "R_Leg_01_FK_Jnt.sy";
connectAttr "R_Leg_01_FK_Jnt_scaleConstraint1.csz" "R_Leg_01_FK_Jnt.sz";
connectAttr "R_Leg_01_FK_Jnt_parentConstraint1.ctx" "R_Leg_01_FK_Jnt.tx";
connectAttr "R_Leg_01_FK_Jnt_parentConstraint1.cty" "R_Leg_01_FK_Jnt.ty";
connectAttr "R_Leg_01_FK_Jnt_parentConstraint1.ctz" "R_Leg_01_FK_Jnt.tz";
connectAttr "R_Leg_01_FK_Jnt_parentConstraint1.crx" "R_Leg_01_FK_Jnt.rx";
connectAttr "R_Leg_01_FK_Jnt_parentConstraint1.cry" "R_Leg_01_FK_Jnt.ry";
connectAttr "R_Leg_01_FK_Jnt_parentConstraint1.crz" "R_Leg_01_FK_Jnt.rz";
connectAttr "R_Leg_01_FK_Jnt.s" "R_Leg_02_FK_Jnt.is";
connectAttr "R_Leg_02_FK_Jnt_scaleConstraint1.csx" "R_Leg_02_FK_Jnt.sx";
connectAttr "R_Leg_02_FK_Jnt_scaleConstraint1.csy" "R_Leg_02_FK_Jnt.sy";
connectAttr "R_Leg_02_FK_Jnt_scaleConstraint1.csz" "R_Leg_02_FK_Jnt.sz";
connectAttr "R_Leg_02_FK_Jnt_parentConstraint1.ctx" "R_Leg_02_FK_Jnt.tx";
connectAttr "R_Leg_02_FK_Jnt_parentConstraint1.cty" "R_Leg_02_FK_Jnt.ty";
connectAttr "R_Leg_02_FK_Jnt_parentConstraint1.ctz" "R_Leg_02_FK_Jnt.tz";
connectAttr "R_Leg_02_FK_Jnt_parentConstraint1.crx" "R_Leg_02_FK_Jnt.rx";
connectAttr "R_Leg_02_FK_Jnt_parentConstraint1.cry" "R_Leg_02_FK_Jnt.ry";
connectAttr "R_Leg_02_FK_Jnt_parentConstraint1.crz" "R_Leg_02_FK_Jnt.rz";
connectAttr "R_Leg_02_FK_Jnt.s" "R_Leg_03_FK_Jnt.is";
connectAttr "R_Leg_03_FK_Jnt_scaleConstraint1.csx" "R_Leg_03_FK_Jnt.sx";
connectAttr "R_Leg_03_FK_Jnt_scaleConstraint1.csy" "R_Leg_03_FK_Jnt.sy";
connectAttr "R_Leg_03_FK_Jnt_scaleConstraint1.csz" "R_Leg_03_FK_Jnt.sz";
connectAttr "R_Leg_03_FK_Jnt_parentConstraint1.ctx" "R_Leg_03_FK_Jnt.tx";
connectAttr "R_Leg_03_FK_Jnt_parentConstraint1.cty" "R_Leg_03_FK_Jnt.ty";
connectAttr "R_Leg_03_FK_Jnt_parentConstraint1.ctz" "R_Leg_03_FK_Jnt.tz";
connectAttr "R_Leg_03_FK_Jnt_parentConstraint1.crx" "R_Leg_03_FK_Jnt.rx";
connectAttr "R_Leg_03_FK_Jnt_parentConstraint1.cry" "R_Leg_03_FK_Jnt.ry";
connectAttr "R_Leg_03_FK_Jnt_parentConstraint1.crz" "R_Leg_03_FK_Jnt.rz";
connectAttr "R_Leg_03_FK_Jnt.s" "R_Leg_04_FK_Jnt.is";
connectAttr "R_Leg_04_FK_Jnt_scaleConstraint1.csx" "R_Leg_04_FK_Jnt.sx";
connectAttr "R_Leg_04_FK_Jnt_scaleConstraint1.csy" "R_Leg_04_FK_Jnt.sy";
connectAttr "R_Leg_04_FK_Jnt_scaleConstraint1.csz" "R_Leg_04_FK_Jnt.sz";
connectAttr "R_Leg_04_FK_Jnt_parentConstraint1.ctx" "R_Leg_04_FK_Jnt.tx";
connectAttr "R_Leg_04_FK_Jnt_parentConstraint1.cty" "R_Leg_04_FK_Jnt.ty";
connectAttr "R_Leg_04_FK_Jnt_parentConstraint1.ctz" "R_Leg_04_FK_Jnt.tz";
connectAttr "R_Leg_04_FK_Jnt_parentConstraint1.crx" "R_Leg_04_FK_Jnt.rx";
connectAttr "R_Leg_04_FK_Jnt_parentConstraint1.cry" "R_Leg_04_FK_Jnt.ry";
connectAttr "R_Leg_04_FK_Jnt_parentConstraint1.crz" "R_Leg_04_FK_Jnt.rz";
connectAttr "R_Leg_04_FK_Jnt.s" "R_Foot_01_FK_Jnt.is";
connectAttr "R_Foot_01_FK_Jnt_scaleConstraint1.csx" "R_Foot_01_FK_Jnt.sx";
connectAttr "R_Foot_01_FK_Jnt_scaleConstraint1.csy" "R_Foot_01_FK_Jnt.sy";
connectAttr "R_Foot_01_FK_Jnt_scaleConstraint1.csz" "R_Foot_01_FK_Jnt.sz";
connectAttr "R_Foot_01_FK_Jnt_parentConstraint1.ctx" "R_Foot_01_FK_Jnt.tx";
connectAttr "R_Foot_01_FK_Jnt_parentConstraint1.cty" "R_Foot_01_FK_Jnt.ty";
connectAttr "R_Foot_01_FK_Jnt_parentConstraint1.ctz" "R_Foot_01_FK_Jnt.tz";
connectAttr "R_Foot_01_FK_Jnt_parentConstraint1.crx" "R_Foot_01_FK_Jnt.rx";
connectAttr "R_Foot_01_FK_Jnt_parentConstraint1.cry" "R_Foot_01_FK_Jnt.ry";
connectAttr "R_Foot_01_FK_Jnt_parentConstraint1.crz" "R_Foot_01_FK_Jnt.rz";
connectAttr "R_Foot_01_FK_Jnt.s" "R_Foot_02_FK_Jnt.is";
connectAttr "R_Foot_02_FK_Jnt_scaleConstraint1.csx" "R_Foot_02_FK_Jnt.sx";
connectAttr "R_Foot_02_FK_Jnt_scaleConstraint1.csy" "R_Foot_02_FK_Jnt.sy";
connectAttr "R_Foot_02_FK_Jnt_scaleConstraint1.csz" "R_Foot_02_FK_Jnt.sz";
connectAttr "R_Foot_02_FK_Jnt_parentConstraint1.ctx" "R_Foot_02_FK_Jnt.tx";
connectAttr "R_Foot_02_FK_Jnt_parentConstraint1.cty" "R_Foot_02_FK_Jnt.ty";
connectAttr "R_Foot_02_FK_Jnt_parentConstraint1.ctz" "R_Foot_02_FK_Jnt.tz";
connectAttr "R_Foot_02_FK_Jnt_parentConstraint1.crx" "R_Foot_02_FK_Jnt.rx";
connectAttr "R_Foot_02_FK_Jnt_parentConstraint1.cry" "R_Foot_02_FK_Jnt.ry";
connectAttr "R_Foot_02_FK_Jnt_parentConstraint1.crz" "R_Foot_02_FK_Jnt.rz";
connectAttr "R_Foot_02_FK_Jnt.s" "R_Foot_03_FK_Jnt.is";
connectAttr "R_Foot_02_FK_Jnt.ro" "R_Foot_02_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Foot_02_FK_Jnt.pim" "R_Foot_02_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Foot_02_FK_Jnt.rp" "R_Foot_02_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Foot_02_FK_Jnt.rpt" "R_Foot_02_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Foot_02_FK_Jnt.jo" "R_Foot_02_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Foot_02_FK_Ctrl.t" "R_Foot_02_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Foot_02_FK_Ctrl.rp" "R_Foot_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Foot_02_FK_Ctrl.rpt" "R_Foot_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Foot_02_FK_Ctrl.r" "R_Foot_02_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Foot_02_FK_Ctrl.ro" "R_Foot_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Foot_02_FK_Ctrl.s" "R_Foot_02_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Foot_02_FK_Ctrl.pm" "R_Foot_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_02_FK_Jnt_parentConstraint1.w0" "R_Foot_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_02_FK_Jnt.ssc" "R_Foot_02_FK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Foot_02_FK_Jnt.pim" "R_Foot_02_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Foot_02_FK_Ctrl.s" "R_Foot_02_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Foot_02_FK_Ctrl.pm" "R_Foot_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_02_FK_Jnt_scaleConstraint1.w0" "R_Foot_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_01_FK_Jnt.ro" "R_Foot_01_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Foot_01_FK_Jnt.pim" "R_Foot_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Foot_01_FK_Jnt.rp" "R_Foot_01_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Foot_01_FK_Jnt.rpt" "R_Foot_01_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Foot_01_FK_Jnt.jo" "R_Foot_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Foot_01_FK_Ctrl.t" "R_Foot_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Foot_01_FK_Ctrl.rp" "R_Foot_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Foot_01_FK_Ctrl.rpt" "R_Foot_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Foot_01_FK_Ctrl.r" "R_Foot_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Foot_01_FK_Ctrl.ro" "R_Foot_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Foot_01_FK_Ctrl.s" "R_Foot_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Foot_01_FK_Ctrl.pm" "R_Foot_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_01_FK_Jnt_parentConstraint1.w0" "R_Foot_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_01_FK_Jnt.ssc" "R_Foot_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Foot_01_FK_Jnt.pim" "R_Foot_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Foot_01_FK_Ctrl.s" "R_Foot_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Foot_01_FK_Ctrl.pm" "R_Foot_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_01_FK_Jnt_scaleConstraint1.w0" "R_Foot_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_04_FK_Jnt.ro" "R_Leg_04_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Leg_04_FK_Jnt.pim" "R_Leg_04_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Leg_04_FK_Jnt.rp" "R_Leg_04_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Leg_04_FK_Jnt.rpt" "R_Leg_04_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Leg_04_FK_Jnt.jo" "R_Leg_04_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Leg_04_FK_Ctrl.t" "R_Leg_04_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Leg_04_FK_Ctrl.rp" "R_Leg_04_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Leg_04_FK_Ctrl.rpt" "R_Leg_04_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_04_FK_Ctrl.r" "R_Leg_04_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Leg_04_FK_Ctrl.ro" "R_Leg_04_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Leg_04_FK_Ctrl.s" "R_Leg_04_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Leg_04_FK_Ctrl.pm" "R_Leg_04_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg_04_FK_Jnt_parentConstraint1.w0" "R_Leg_04_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_04_FK_Jnt.ssc" "R_Leg_04_FK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Leg_04_FK_Jnt.pim" "R_Leg_04_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Leg_04_FK_Ctrl.s" "R_Leg_04_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_04_FK_Ctrl.pm" "R_Leg_04_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Leg_04_FK_Jnt_scaleConstraint1.w0" "R_Leg_04_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_03_FK_Jnt.ro" "R_Leg_03_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Leg_03_FK_Jnt.pim" "R_Leg_03_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Leg_03_FK_Jnt.rp" "R_Leg_03_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Leg_03_FK_Jnt.rpt" "R_Leg_03_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Leg_03_FK_Jnt.jo" "R_Leg_03_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Leg_03_FK_Ctrl.t" "R_Leg_03_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Leg_03_FK_Ctrl.rp" "R_Leg_03_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Leg_03_FK_Ctrl.rpt" "R_Leg_03_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_03_FK_Ctrl.r" "R_Leg_03_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Leg_03_FK_Ctrl.ro" "R_Leg_03_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Leg_03_FK_Ctrl.s" "R_Leg_03_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Leg_03_FK_Ctrl.pm" "R_Leg_03_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg_03_FK_Jnt_parentConstraint1.w0" "R_Leg_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_03_FK_Jnt.ssc" "R_Leg_03_FK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Leg_03_FK_Jnt.pim" "R_Leg_03_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Leg_03_FK_Ctrl.s" "R_Leg_03_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_03_FK_Ctrl.pm" "R_Leg_03_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Leg_03_FK_Jnt_scaleConstraint1.w0" "R_Leg_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_02_FK_Jnt.ro" "R_Leg_02_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Leg_02_FK_Jnt.pim" "R_Leg_02_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Leg_02_FK_Jnt.rp" "R_Leg_02_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Leg_02_FK_Jnt.rpt" "R_Leg_02_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Leg_02_FK_Jnt.jo" "R_Leg_02_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Leg_02_FK_Ctrl.t" "R_Leg_02_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Leg_02_FK_Ctrl.rp" "R_Leg_02_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Leg_02_FK_Ctrl.rpt" "R_Leg_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_02_FK_Ctrl.r" "R_Leg_02_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Leg_02_FK_Ctrl.ro" "R_Leg_02_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Leg_02_FK_Ctrl.s" "R_Leg_02_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Leg_02_FK_Ctrl.pm" "R_Leg_02_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg_02_FK_Jnt_parentConstraint1.w0" "R_Leg_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_02_FK_Jnt.ssc" "R_Leg_02_FK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Leg_02_FK_Jnt.pim" "R_Leg_02_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Leg_02_FK_Ctrl.s" "R_Leg_02_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_02_FK_Ctrl.pm" "R_Leg_02_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Leg_02_FK_Jnt_scaleConstraint1.w0" "R_Leg_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_01_FK_Jnt.s" "R_Leg_02_IK_Jnt.is";
connectAttr "R_Leg_02_IK_Jnt_pointConstraint1.ctx" "R_Leg_02_IK_Jnt.tx";
connectAttr "R_Leg_02_IK_Jnt_pointConstraint1.cty" "R_Leg_02_IK_Jnt.ty";
connectAttr "R_Leg_02_IK_Jnt_pointConstraint1.ctz" "R_Leg_02_IK_Jnt.tz";
connectAttr "R_Leg_02_IK_Jnt.s" "R_Leg_03_IK_Jnt.is";
connectAttr "R_Leg_03_IK_Jnt.s" "R_Leg_04_IK_Jnt.is";
connectAttr "R_Leg_04_IK_Jnt_orientConstraint1.crx" "R_Leg_04_IK_Jnt.rx";
connectAttr "R_Leg_04_IK_Jnt_orientConstraint1.cry" "R_Leg_04_IK_Jnt.ry";
connectAttr "R_Leg_04_IK_Jnt_orientConstraint1.crz" "R_Leg_04_IK_Jnt.rz";
connectAttr "R_Leg_04_IK_Jnt.s" "R_Foot_01_IK_Jnt.is";
connectAttr "R_Foot_01_IK_Jnt.s" "R_Foot_02_IK_Jnt.is";
connectAttr "R_Foot_02_IK_Jnt.s" "R_Foot_03_IK_Jnt.is";
connectAttr "R_Foot_03_IK_Jnt.tx" "effector8.tx";
connectAttr "R_Foot_03_IK_Jnt.ty" "effector8.ty";
connectAttr "R_Foot_03_IK_Jnt.tz" "effector8.tz";
connectAttr "R_Foot_03_IK_Jnt.opm" "effector8.opm";
connectAttr "R_Foot_02_IK_Jnt.tx" "effector7.tx";
connectAttr "R_Foot_02_IK_Jnt.ty" "effector7.ty";
connectAttr "R_Foot_02_IK_Jnt.tz" "effector7.tz";
connectAttr "R_Foot_02_IK_Jnt.opm" "effector7.opm";
connectAttr "R_Leg_04_IK_Jnt.ro" "R_Leg_04_IK_Jnt_orientConstraint1.cro";
connectAttr "R_Leg_04_IK_Jnt.pim" "R_Leg_04_IK_Jnt_orientConstraint1.cpim";
connectAttr "R_Leg_04_IK_Jnt.jo" "R_Leg_04_IK_Jnt_orientConstraint1.cjo";
connectAttr "R_Leg_04_IK_Jnt.is" "R_Leg_04_IK_Jnt_orientConstraint1.is";
connectAttr "R_Leg_IK_Ctrl.r" "R_Leg_04_IK_Jnt_orientConstraint1.tg[0].tr";
connectAttr "R_Leg_IK_Ctrl.ro" "R_Leg_04_IK_Jnt_orientConstraint1.tg[0].tro";
connectAttr "R_Leg_IK_Ctrl.pm" "R_Leg_04_IK_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "R_Leg_04_IK_Jnt_orientConstraint1.w0" "R_Leg_04_IK_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_04_IK_Jnt.tx" "effector4.tx";
connectAttr "R_Leg_04_IK_Jnt.ty" "effector4.ty";
connectAttr "R_Leg_04_IK_Jnt.tz" "effector4.tz";
connectAttr "R_Leg_04_IK_Jnt.opm" "effector4.opm";
connectAttr "R_Leg_02_IK_Jnt.pim" "R_Leg_02_IK_Jnt_pointConstraint1.cpim";
connectAttr "R_Leg_02_IK_Jnt.rp" "R_Leg_02_IK_Jnt_pointConstraint1.crp";
connectAttr "R_Leg_02_IK_Jnt.rpt" "R_Leg_02_IK_Jnt_pointConstraint1.crt";
connectAttr "R_Leg_IK_Base_Ctrl.t" "R_Leg_02_IK_Jnt_pointConstraint1.tg[0].tt";
connectAttr "R_Leg_IK_Base_Ctrl.rp" "R_Leg_02_IK_Jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Leg_IK_Base_Ctrl.rpt" "R_Leg_02_IK_Jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_IK_Base_Ctrl.pm" "R_Leg_02_IK_Jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_02_IK_Jnt_pointConstraint1.w0" "R_Leg_02_IK_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_01_FK_Jnt.s" "R_Leg_02_RK_Jnt.is";
connectAttr "R_Leg_02_RK_Jnt_scaleConstraint1.csx" "R_Leg_02_RK_Jnt.sx";
connectAttr "R_Leg_02_RK_Jnt_scaleConstraint1.csy" "R_Leg_02_RK_Jnt.sy";
connectAttr "R_Leg_02_RK_Jnt_scaleConstraint1.csz" "R_Leg_02_RK_Jnt.sz";
connectAttr "R_Leg_02_RK_Jnt_parentConstraint1.ctx" "R_Leg_02_RK_Jnt.tx";
connectAttr "R_Leg_02_RK_Jnt_parentConstraint1.cty" "R_Leg_02_RK_Jnt.ty";
connectAttr "R_Leg_02_RK_Jnt_parentConstraint1.ctz" "R_Leg_02_RK_Jnt.tz";
connectAttr "R_Leg_02_RK_Jnt_parentConstraint1.crx" "R_Leg_02_RK_Jnt.rx";
connectAttr "R_Leg_02_RK_Jnt_parentConstraint1.cry" "R_Leg_02_RK_Jnt.ry";
connectAttr "R_Leg_02_RK_Jnt_parentConstraint1.crz" "R_Leg_02_RK_Jnt.rz";
connectAttr "R_Leg_02_RK_Jnt.s" "R_Leg_03_RK_Jnt.is";
connectAttr "R_Leg_03_RK_Jnt_scaleConstraint1.csx" "R_Leg_03_RK_Jnt.sx";
connectAttr "R_Leg_03_RK_Jnt_scaleConstraint1.csy" "R_Leg_03_RK_Jnt.sy";
connectAttr "R_Leg_03_RK_Jnt_scaleConstraint1.csz" "R_Leg_03_RK_Jnt.sz";
connectAttr "R_Leg_03_RK_Jnt_parentConstraint1.ctx" "R_Leg_03_RK_Jnt.tx";
connectAttr "R_Leg_03_RK_Jnt_parentConstraint1.cty" "R_Leg_03_RK_Jnt.ty";
connectAttr "R_Leg_03_RK_Jnt_parentConstraint1.ctz" "R_Leg_03_RK_Jnt.tz";
connectAttr "R_Leg_03_RK_Jnt_parentConstraint1.crx" "R_Leg_03_RK_Jnt.rx";
connectAttr "R_Leg_03_RK_Jnt_parentConstraint1.cry" "R_Leg_03_RK_Jnt.ry";
connectAttr "R_Leg_03_RK_Jnt_parentConstraint1.crz" "R_Leg_03_RK_Jnt.rz";
connectAttr "R_Leg_03_RK_Jnt.s" "R_Leg_04_RK_Jnt.is";
connectAttr "R_Leg_04_RK_Jnt_scaleConstraint1.csx" "R_Leg_04_RK_Jnt.sx";
connectAttr "R_Leg_04_RK_Jnt_scaleConstraint1.csy" "R_Leg_04_RK_Jnt.sy";
connectAttr "R_Leg_04_RK_Jnt_scaleConstraint1.csz" "R_Leg_04_RK_Jnt.sz";
connectAttr "R_Leg_04_RK_Jnt_parentConstraint1.ctx" "R_Leg_04_RK_Jnt.tx";
connectAttr "R_Leg_04_RK_Jnt_parentConstraint1.cty" "R_Leg_04_RK_Jnt.ty";
connectAttr "R_Leg_04_RK_Jnt_parentConstraint1.ctz" "R_Leg_04_RK_Jnt.tz";
connectAttr "R_Leg_04_RK_Jnt_parentConstraint1.crx" "R_Leg_04_RK_Jnt.rx";
connectAttr "R_Leg_04_RK_Jnt_parentConstraint1.cry" "R_Leg_04_RK_Jnt.ry";
connectAttr "R_Leg_04_RK_Jnt_parentConstraint1.crz" "R_Leg_04_RK_Jnt.rz";
connectAttr "R_Leg_04_RK_Jnt.s" "R_Foot_01_RK_Jnt.is";
connectAttr "R_Foot_01_RK_Jnt_scaleConstraint1.csx" "R_Foot_01_RK_Jnt.sx";
connectAttr "R_Foot_01_RK_Jnt_scaleConstraint1.csy" "R_Foot_01_RK_Jnt.sy";
connectAttr "R_Foot_01_RK_Jnt_scaleConstraint1.csz" "R_Foot_01_RK_Jnt.sz";
connectAttr "R_Foot_01_RK_Jnt_parentConstraint1.ctx" "R_Foot_01_RK_Jnt.tx";
connectAttr "R_Foot_01_RK_Jnt_parentConstraint1.cty" "R_Foot_01_RK_Jnt.ty";
connectAttr "R_Foot_01_RK_Jnt_parentConstraint1.ctz" "R_Foot_01_RK_Jnt.tz";
connectAttr "R_Foot_01_RK_Jnt_parentConstraint1.crx" "R_Foot_01_RK_Jnt.rx";
connectAttr "R_Foot_01_RK_Jnt_parentConstraint1.cry" "R_Foot_01_RK_Jnt.ry";
connectAttr "R_Foot_01_RK_Jnt_parentConstraint1.crz" "R_Foot_01_RK_Jnt.rz";
connectAttr "R_Foot_01_RK_Jnt.s" "R_Foot_02_RK_Jnt.is";
connectAttr "R_Foot_02_RK_Jnt_scaleConstraint1.csx" "R_Foot_02_RK_Jnt.sx";
connectAttr "R_Foot_02_RK_Jnt_scaleConstraint1.csy" "R_Foot_02_RK_Jnt.sy";
connectAttr "R_Foot_02_RK_Jnt_scaleConstraint1.csz" "R_Foot_02_RK_Jnt.sz";
connectAttr "R_Foot_02_RK_Jnt_parentConstraint1.ctx" "R_Foot_02_RK_Jnt.tx";
connectAttr "R_Foot_02_RK_Jnt_parentConstraint1.cty" "R_Foot_02_RK_Jnt.ty";
connectAttr "R_Foot_02_RK_Jnt_parentConstraint1.ctz" "R_Foot_02_RK_Jnt.tz";
connectAttr "R_Foot_02_RK_Jnt_parentConstraint1.crx" "R_Foot_02_RK_Jnt.rx";
connectAttr "R_Foot_02_RK_Jnt_parentConstraint1.cry" "R_Foot_02_RK_Jnt.ry";
connectAttr "R_Foot_02_RK_Jnt_parentConstraint1.crz" "R_Foot_02_RK_Jnt.rz";
connectAttr "R_Foot_02_RK_Jnt.s" "R_Foot_03_RK_Jnt.is";
connectAttr "R_Foot_03_RK_Jnt_parentConstraint1.ctx" "R_Foot_03_RK_Jnt.tx";
connectAttr "R_Foot_03_RK_Jnt_parentConstraint1.cty" "R_Foot_03_RK_Jnt.ty";
connectAttr "R_Foot_03_RK_Jnt_parentConstraint1.ctz" "R_Foot_03_RK_Jnt.tz";
connectAttr "R_Foot_03_RK_Jnt_parentConstraint1.crx" "R_Foot_03_RK_Jnt.rx";
connectAttr "R_Foot_03_RK_Jnt_parentConstraint1.cry" "R_Foot_03_RK_Jnt.ry";
connectAttr "R_Foot_03_RK_Jnt_parentConstraint1.crz" "R_Foot_03_RK_Jnt.rz";
connectAttr "R_Foot_03_RK_Jnt_scaleConstraint1.csx" "R_Foot_03_RK_Jnt.sx";
connectAttr "R_Foot_03_RK_Jnt_scaleConstraint1.csy" "R_Foot_03_RK_Jnt.sy";
connectAttr "R_Foot_03_RK_Jnt_scaleConstraint1.csz" "R_Foot_03_RK_Jnt.sz";
connectAttr "R_Foot_03_RK_Jnt.ro" "R_Foot_03_RK_Jnt_parentConstraint1.cro";
connectAttr "R_Foot_03_RK_Jnt.pim" "R_Foot_03_RK_Jnt_parentConstraint1.cpim";
connectAttr "R_Foot_03_RK_Jnt.rp" "R_Foot_03_RK_Jnt_parentConstraint1.crp";
connectAttr "R_Foot_03_RK_Jnt.rpt" "R_Foot_03_RK_Jnt_parentConstraint1.crt";
connectAttr "R_Foot_03_RK_Jnt.jo" "R_Foot_03_RK_Jnt_parentConstraint1.cjo";
connectAttr "R_Foot_03_FK_Jnt.t" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Foot_03_FK_Jnt.rp" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Foot_03_FK_Jnt.rpt" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Foot_03_FK_Jnt.r" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Foot_03_FK_Jnt.ro" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Foot_03_FK_Jnt.s" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Foot_03_FK_Jnt.pm" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_03_FK_Jnt.jo" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "R_Foot_03_FK_Jnt.ssc" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "R_Foot_03_FK_Jnt.is" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "R_Foot_03_RK_Jnt_parentConstraint1.w0" "R_Foot_03_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_03_IK_Jnt.t" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_Foot_03_IK_Jnt.rp" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "R_Foot_03_IK_Jnt.rpt" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "R_Foot_03_IK_Jnt.r" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_Foot_03_IK_Jnt.ro" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "R_Foot_03_IK_Jnt.s" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_Foot_03_IK_Jnt.pm" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "R_Foot_03_IK_Jnt.jo" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "R_Foot_03_IK_Jnt.ssc" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "R_Foot_03_IK_Jnt.is" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "R_Foot_03_RK_Jnt_parentConstraint1.w1" "R_Foot_03_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Foot_03_RK_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Foot_03_RK_Jnt_parentConstraint1.w1";
connectAttr "R_Foot_03_RK_Jnt.ssc" "R_Foot_03_RK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Foot_03_RK_Jnt.pim" "R_Foot_03_RK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Foot_03_FK_Jnt.s" "R_Foot_03_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Foot_03_FK_Jnt.pm" "R_Foot_03_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Foot_03_RK_Jnt_scaleConstraint1.w0" "R_Foot_03_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_03_IK_Jnt.s" "R_Foot_03_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "R_Foot_03_IK_Jnt.pm" "R_Foot_03_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "R_Foot_03_RK_Jnt_scaleConstraint1.w1" "R_Foot_03_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Foot_03_RK_Jnt_scaleConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Foot_03_RK_Jnt_scaleConstraint1.w1";
connectAttr "R_Foot_02_RK_Jnt.ro" "R_Foot_02_RK_Jnt_parentConstraint1.cro";
connectAttr "R_Foot_02_RK_Jnt.pim" "R_Foot_02_RK_Jnt_parentConstraint1.cpim";
connectAttr "R_Foot_02_RK_Jnt.rp" "R_Foot_02_RK_Jnt_parentConstraint1.crp";
connectAttr "R_Foot_02_RK_Jnt.rpt" "R_Foot_02_RK_Jnt_parentConstraint1.crt";
connectAttr "R_Foot_02_RK_Jnt.jo" "R_Foot_02_RK_Jnt_parentConstraint1.cjo";
connectAttr "R_Foot_02_FK_Jnt.t" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Foot_02_FK_Jnt.rp" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Foot_02_FK_Jnt.rpt" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Foot_02_FK_Jnt.r" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Foot_02_FK_Jnt.ro" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Foot_02_FK_Jnt.s" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Foot_02_FK_Jnt.pm" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_02_FK_Jnt.jo" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "R_Foot_02_FK_Jnt.ssc" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "R_Foot_02_FK_Jnt.is" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "R_Foot_02_RK_Jnt_parentConstraint1.w0" "R_Foot_02_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_02_IK_Jnt.t" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_Foot_02_IK_Jnt.rp" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "R_Foot_02_IK_Jnt.rpt" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "R_Foot_02_IK_Jnt.r" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_Foot_02_IK_Jnt.ro" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "R_Foot_02_IK_Jnt.s" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_Foot_02_IK_Jnt.pm" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "R_Foot_02_IK_Jnt.jo" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "R_Foot_02_IK_Jnt.ssc" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "R_Foot_02_IK_Jnt.is" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "R_Foot_02_RK_Jnt_parentConstraint1.w1" "R_Foot_02_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Foot_02_RK_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Foot_02_RK_Jnt_parentConstraint1.w1";
connectAttr "R_Foot_02_RK_Jnt.ssc" "R_Foot_02_RK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Foot_02_RK_Jnt.pim" "R_Foot_02_RK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Foot_02_FK_Jnt.s" "R_Foot_02_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Foot_02_FK_Jnt.pm" "R_Foot_02_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Foot_02_RK_Jnt_scaleConstraint1.w0" "R_Foot_02_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_02_IK_Jnt.s" "R_Foot_02_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "R_Foot_02_IK_Jnt.pm" "R_Foot_02_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "R_Foot_02_RK_Jnt_scaleConstraint1.w1" "R_Foot_02_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Foot_02_RK_Jnt_scaleConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Foot_02_RK_Jnt_scaleConstraint1.w1";
connectAttr "R_Foot_01_RK_Jnt.ro" "R_Foot_01_RK_Jnt_parentConstraint1.cro";
connectAttr "R_Foot_01_RK_Jnt.pim" "R_Foot_01_RK_Jnt_parentConstraint1.cpim";
connectAttr "R_Foot_01_RK_Jnt.rp" "R_Foot_01_RK_Jnt_parentConstraint1.crp";
connectAttr "R_Foot_01_RK_Jnt.rpt" "R_Foot_01_RK_Jnt_parentConstraint1.crt";
connectAttr "R_Foot_01_RK_Jnt.jo" "R_Foot_01_RK_Jnt_parentConstraint1.cjo";
connectAttr "R_Foot_01_FK_Jnt.t" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Foot_01_FK_Jnt.rp" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Foot_01_FK_Jnt.rpt" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Foot_01_FK_Jnt.r" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Foot_01_FK_Jnt.ro" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Foot_01_FK_Jnt.s" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Foot_01_FK_Jnt.pm" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_01_FK_Jnt.jo" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "R_Foot_01_FK_Jnt.ssc" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "R_Foot_01_FK_Jnt.is" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "R_Foot_01_RK_Jnt_parentConstraint1.w0" "R_Foot_01_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_01_IK_Jnt.t" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_Foot_01_IK_Jnt.rp" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "R_Foot_01_IK_Jnt.rpt" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "R_Foot_01_IK_Jnt.r" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_Foot_01_IK_Jnt.ro" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "R_Foot_01_IK_Jnt.s" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_Foot_01_IK_Jnt.pm" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "R_Foot_01_IK_Jnt.jo" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "R_Foot_01_IK_Jnt.ssc" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "R_Foot_01_IK_Jnt.is" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "R_Foot_01_RK_Jnt_parentConstraint1.w1" "R_Foot_01_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Foot_01_RK_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Foot_01_RK_Jnt_parentConstraint1.w1";
connectAttr "R_Foot_01_RK_Jnt.ssc" "R_Foot_01_RK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Foot_01_RK_Jnt.pim" "R_Foot_01_RK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Foot_01_FK_Jnt.s" "R_Foot_01_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Foot_01_FK_Jnt.pm" "R_Foot_01_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Foot_01_RK_Jnt_scaleConstraint1.w0" "R_Foot_01_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_01_IK_Jnt.s" "R_Foot_01_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "R_Foot_01_IK_Jnt.pm" "R_Foot_01_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "R_Foot_01_RK_Jnt_scaleConstraint1.w1" "R_Foot_01_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Foot_01_RK_Jnt_scaleConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Foot_01_RK_Jnt_scaleConstraint1.w1";
connectAttr "R_Leg_04_RK_Jnt.ro" "R_Leg_04_RK_Jnt_parentConstraint1.cro";
connectAttr "R_Leg_04_RK_Jnt.pim" "R_Leg_04_RK_Jnt_parentConstraint1.cpim";
connectAttr "R_Leg_04_RK_Jnt.rp" "R_Leg_04_RK_Jnt_parentConstraint1.crp";
connectAttr "R_Leg_04_RK_Jnt.rpt" "R_Leg_04_RK_Jnt_parentConstraint1.crt";
connectAttr "R_Leg_04_RK_Jnt.jo" "R_Leg_04_RK_Jnt_parentConstraint1.cjo";
connectAttr "R_Leg_04_FK_Jnt.t" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Leg_04_FK_Jnt.rp" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Leg_04_FK_Jnt.rpt" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Leg_04_FK_Jnt.r" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Leg_04_FK_Jnt.ro" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Leg_04_FK_Jnt.s" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Leg_04_FK_Jnt.pm" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg_04_FK_Jnt.jo" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_Leg_04_FK_Jnt.ssc" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_Leg_04_FK_Jnt.is" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_Leg_04_RK_Jnt_parentConstraint1.w0" "R_Leg_04_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_04_IK_Jnt.t" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_Leg_04_IK_Jnt.rp" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_Leg_04_IK_Jnt.rpt" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_Leg_04_IK_Jnt.r" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_Leg_04_IK_Jnt.ro" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_Leg_04_IK_Jnt.s" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_Leg_04_IK_Jnt.pm" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_Leg_04_IK_Jnt.jo" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_Leg_04_IK_Jnt.ssc" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_Leg_04_IK_Jnt.is" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_Leg_04_RK_Jnt_parentConstraint1.w1" "R_Leg_04_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Leg_04_RK_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Leg_04_RK_Jnt_parentConstraint1.w1";
connectAttr "R_Leg_04_RK_Jnt.ssc" "R_Leg_04_RK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Leg_04_RK_Jnt.pim" "R_Leg_04_RK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Leg_04_FK_Jnt.s" "R_Leg_04_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_04_FK_Jnt.pm" "R_Leg_04_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Leg_04_RK_Jnt_scaleConstraint1.w0" "R_Leg_04_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_04_IK_Jnt.s" "R_Leg_04_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "R_Leg_04_IK_Jnt.pm" "R_Leg_04_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "R_Leg_04_RK_Jnt_scaleConstraint1.w1" "R_Leg_04_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Leg_04_RK_Jnt_scaleConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Leg_04_RK_Jnt_scaleConstraint1.w1";
connectAttr "R_Leg_03_RK_Jnt.ro" "R_Leg_03_RK_Jnt_parentConstraint1.cro";
connectAttr "R_Leg_03_RK_Jnt.pim" "R_Leg_03_RK_Jnt_parentConstraint1.cpim";
connectAttr "R_Leg_03_RK_Jnt.rp" "R_Leg_03_RK_Jnt_parentConstraint1.crp";
connectAttr "R_Leg_03_RK_Jnt.rpt" "R_Leg_03_RK_Jnt_parentConstraint1.crt";
connectAttr "R_Leg_03_RK_Jnt.jo" "R_Leg_03_RK_Jnt_parentConstraint1.cjo";
connectAttr "R_Leg_03_FK_Jnt.t" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Leg_03_FK_Jnt.rp" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Leg_03_FK_Jnt.rpt" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Leg_03_FK_Jnt.r" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Leg_03_FK_Jnt.ro" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Leg_03_FK_Jnt.s" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Leg_03_FK_Jnt.pm" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg_03_FK_Jnt.jo" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_Leg_03_FK_Jnt.ssc" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_Leg_03_FK_Jnt.is" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_Leg_03_RK_Jnt_parentConstraint1.w0" "R_Leg_03_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_03_IK_Jnt.t" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_Leg_03_IK_Jnt.rp" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_Leg_03_IK_Jnt.rpt" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_Leg_03_IK_Jnt.r" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_Leg_03_IK_Jnt.ro" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_Leg_03_IK_Jnt.s" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_Leg_03_IK_Jnt.pm" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_Leg_03_IK_Jnt.jo" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_Leg_03_IK_Jnt.ssc" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_Leg_03_IK_Jnt.is" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_Leg_03_RK_Jnt_parentConstraint1.w1" "R_Leg_03_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Leg_03_RK_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Leg_03_RK_Jnt_parentConstraint1.w1";
connectAttr "R_Leg_03_RK_Jnt.ssc" "R_Leg_03_RK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Leg_03_RK_Jnt.pim" "R_Leg_03_RK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Leg_03_FK_Jnt.s" "R_Leg_03_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_03_FK_Jnt.pm" "R_Leg_03_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Leg_03_RK_Jnt_scaleConstraint1.w0" "R_Leg_03_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_03_IK_Jnt.s" "R_Leg_03_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "R_Leg_03_IK_Jnt.pm" "R_Leg_03_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "R_Leg_03_RK_Jnt_scaleConstraint1.w1" "R_Leg_03_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Leg_03_RK_Jnt_scaleConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Leg_03_RK_Jnt_scaleConstraint1.w1";
connectAttr "R_Leg_02_RK_Jnt.ro" "R_Leg_02_RK_Jnt_parentConstraint1.cro";
connectAttr "R_Leg_02_RK_Jnt.pim" "R_Leg_02_RK_Jnt_parentConstraint1.cpim";
connectAttr "R_Leg_02_RK_Jnt.rp" "R_Leg_02_RK_Jnt_parentConstraint1.crp";
connectAttr "R_Leg_02_RK_Jnt.rpt" "R_Leg_02_RK_Jnt_parentConstraint1.crt";
connectAttr "R_Leg_02_RK_Jnt.jo" "R_Leg_02_RK_Jnt_parentConstraint1.cjo";
connectAttr "R_Leg_02_FK_Jnt.t" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Leg_02_FK_Jnt.rp" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Leg_02_FK_Jnt.rpt" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Leg_02_FK_Jnt.r" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Leg_02_FK_Jnt.ro" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Leg_02_FK_Jnt.s" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Leg_02_FK_Jnt.pm" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg_02_FK_Jnt.jo" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_Leg_02_FK_Jnt.ssc" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_Leg_02_FK_Jnt.is" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_Leg_02_RK_Jnt_parentConstraint1.w0" "R_Leg_02_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_02_IK_Jnt.t" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_Leg_02_IK_Jnt.rp" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_Leg_02_IK_Jnt.rpt" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_Leg_02_IK_Jnt.r" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_Leg_02_IK_Jnt.ro" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_Leg_02_IK_Jnt.s" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_Leg_02_IK_Jnt.pm" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_Leg_02_IK_Jnt.jo" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_Leg_02_IK_Jnt.ssc" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_Leg_02_IK_Jnt.is" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_Leg_02_RK_Jnt_parentConstraint1.w1" "R_Leg_02_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Leg_02_RK_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Leg_02_RK_Jnt_parentConstraint1.w1";
connectAttr "R_Leg_02_RK_Jnt.ssc" "R_Leg_02_RK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Leg_02_RK_Jnt.pim" "R_Leg_02_RK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Leg_02_FK_Jnt.s" "R_Leg_02_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_02_FK_Jnt.pm" "R_Leg_02_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Leg_02_RK_Jnt_scaleConstraint1.w0" "R_Leg_02_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_02_IK_Jnt.s" "R_Leg_02_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "R_Leg_02_IK_Jnt.pm" "R_Leg_02_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "R_Leg_02_RK_Jnt_scaleConstraint1.w1" "R_Leg_02_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Leg_02_RK_Jnt_scaleConstraint1.w0";
connectAttr "R_Leg_IKFK_REV.ox" "R_Leg_02_RK_Jnt_scaleConstraint1.w1";
connectAttr "R_Leg_01_FK_Jnt.ro" "R_Leg_01_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Leg_01_FK_Jnt.pim" "R_Leg_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Leg_01_FK_Jnt.rp" "R_Leg_01_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Leg_01_FK_Jnt.rpt" "R_Leg_01_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Leg_01_FK_Jnt.jo" "R_Leg_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Leg_01_FK_Ctrl.t" "R_Leg_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Leg_01_FK_Ctrl.rp" "R_Leg_01_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Leg_01_FK_Ctrl.rpt" "R_Leg_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_01_FK_Ctrl.r" "R_Leg_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Leg_01_FK_Ctrl.ro" "R_Leg_01_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Leg_01_FK_Ctrl.s" "R_Leg_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Leg_01_FK_Ctrl.pm" "R_Leg_01_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg_01_FK_Jnt_parentConstraint1.w0" "R_Leg_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_01_FK_Jnt.ssc" "R_Leg_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "R_Leg_01_FK_Jnt.pim" "R_Leg_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Leg_01_FK_Ctrl.s" "R_Leg_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_01_FK_Ctrl.pm" "R_Leg_01_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Leg_01_FK_Jnt_scaleConstraint1.w0" "R_Leg_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Pelvis_01_FK_Jnt.ro" "Pelvis_01_FK_Jnt_parentConstraint1.cro";
connectAttr "Pelvis_01_FK_Jnt.pim" "Pelvis_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "Pelvis_01_FK_Jnt.rp" "Pelvis_01_FK_Jnt_parentConstraint1.crp";
connectAttr "Pelvis_01_FK_Jnt.rpt" "Pelvis_01_FK_Jnt_parentConstraint1.crt";
connectAttr "Pelvis_01_FK_Jnt.jo" "Pelvis_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "Pelvis_01_FK_Ctrl.t" "Pelvis_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Pelvis_01_FK_Ctrl.rp" "Pelvis_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Pelvis_01_FK_Ctrl.rpt" "Pelvis_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Pelvis_01_FK_Ctrl.r" "Pelvis_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Pelvis_01_FK_Ctrl.ro" "Pelvis_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Pelvis_01_FK_Ctrl.s" "Pelvis_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Pelvis_01_FK_Ctrl.pm" "Pelvis_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pelvis_01_FK_Jnt_parentConstraint1.w0" "Pelvis_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Pelvis_01_FK_Jnt.ssc" "Pelvis_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Pelvis_01_FK_Jnt.pim" "Pelvis_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Pelvis_01_FK_Ctrl.s" "Pelvis_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Pelvis_01_FK_Ctrl.pm" "Pelvis_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Pelvis_01_FK_Jnt_scaleConstraint1.w0" "Pelvis_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "COG_Jnt.ro" "COG_Jnt_parentConstraint1.cro";
connectAttr "COG_Jnt.pim" "COG_Jnt_parentConstraint1.cpim";
connectAttr "COG_Jnt.rp" "COG_Jnt_parentConstraint1.crp";
connectAttr "COG_Jnt.rpt" "COG_Jnt_parentConstraint1.crt";
connectAttr "COG_Jnt.jo" "COG_Jnt_parentConstraint1.cjo";
connectAttr "COG_Ctrl.t" "COG_Jnt_parentConstraint1.tg[0].tt";
connectAttr "COG_Ctrl.rp" "COG_Jnt_parentConstraint1.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "COG_Jnt_parentConstraint1.tg[0].trt";
connectAttr "COG_Ctrl.r" "COG_Jnt_parentConstraint1.tg[0].tr";
connectAttr "COG_Ctrl.ro" "COG_Jnt_parentConstraint1.tg[0].tro";
connectAttr "COG_Ctrl.s" "COG_Jnt_parentConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "COG_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "COG_Jnt_parentConstraint1.w0" "COG_Jnt_parentConstraint1.tg[0].tw";
connectAttr "COG_Jnt.ssc" "COG_Jnt_scaleConstraint1.tsc";
connectAttr "COG_Jnt.pim" "COG_Jnt_scaleConstraint1.cpim";
connectAttr "COG_Ctrl.s" "COG_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "COG_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "COG_Jnt_scaleConstraint1.w0" "COG_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "R_Hand_01_FK_Jnt_scaleConstraint1.csx" "R_Hand_01_FK_Jnt.sx";
connectAttr "R_Hand_01_FK_Jnt_scaleConstraint1.csy" "R_Hand_01_FK_Jnt.sy";
connectAttr "R_Hand_01_FK_Jnt_scaleConstraint1.csz" "R_Hand_01_FK_Jnt.sz";
connectAttr "R_Hand_01_FK_Jnt_parentConstraint1.ctx" "R_Hand_01_FK_Jnt.tx";
connectAttr "R_Hand_01_FK_Jnt_parentConstraint1.cty" "R_Hand_01_FK_Jnt.ty";
connectAttr "R_Hand_01_FK_Jnt_parentConstraint1.ctz" "R_Hand_01_FK_Jnt.tz";
connectAttr "R_Hand_01_FK_Jnt_parentConstraint1.crx" "R_Hand_01_FK_Jnt.rx";
connectAttr "R_Hand_01_FK_Jnt_parentConstraint1.cry" "R_Hand_01_FK_Jnt.ry";
connectAttr "R_Hand_01_FK_Jnt_parentConstraint1.crz" "R_Hand_01_FK_Jnt.rz";
connectAttr "R_Hand_01_FK_Jnt.s" "R_Finger_01_Knuckle_01_FK_Jnt.is";
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.csx" "R_Finger_01_Knuckle_01_FK_Jnt.sx"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.csy" "R_Finger_01_Knuckle_01_FK_Jnt.sy"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.csz" "R_Finger_01_Knuckle_01_FK_Jnt.sz"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.ctx" "R_Finger_01_Knuckle_01_FK_Jnt.tx"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cty" "R_Finger_01_Knuckle_01_FK_Jnt.ty"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.ctz" "R_Finger_01_Knuckle_01_FK_Jnt.tz"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.crx" "R_Finger_01_Knuckle_01_FK_Jnt.rx"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cry" "R_Finger_01_Knuckle_01_FK_Jnt.ry"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.crz" "R_Finger_01_Knuckle_01_FK_Jnt.rz"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt.s" "R_Finger_01_Knuckle_02_FK_Jnt.is"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "R_Finger_01_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "R_Finger_01_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "R_Finger_01_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "R_Finger_01_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cty" "R_Finger_01_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "R_Finger_01_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.crx" "R_Finger_01_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cry" "R_Finger_01_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.crz" "R_Finger_01_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt.s" "R_Finger_01_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.csx" "R_Finger_01_Knuckle_03_FK_Jnt.sx"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.csy" "R_Finger_01_Knuckle_03_FK_Jnt.sy"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.csz" "R_Finger_01_Knuckle_03_FK_Jnt.sz"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.ctx" "R_Finger_01_Knuckle_03_FK_Jnt.tx"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cty" "R_Finger_01_Knuckle_03_FK_Jnt.ty"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.ctz" "R_Finger_01_Knuckle_03_FK_Jnt.tz"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.crx" "R_Finger_01_Knuckle_03_FK_Jnt.rx"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cry" "R_Finger_01_Knuckle_03_FK_Jnt.ry"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.crz" "R_Finger_01_Knuckle_03_FK_Jnt.rz"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt.s" "R_Finger_01_Knuckle_04_FK_Jnt.is"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt.ro" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt.pim" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt.rp" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt.rpt" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt.jo" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.t" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.rp" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.rpt" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.r" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.ro" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.s" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.pm" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.w0" "R_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt.ssc" "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt.pim" "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.s" "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.pm" "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.w0" "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt.ro" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt.pim" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt.rp" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt.rpt" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt.jo" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.t" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.rp" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.rpt" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.r" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.ro" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.s" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.pm" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.w0" "R_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt.ssc" "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt.pim" "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.s" "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.pm" "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt.ro" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt.pim" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt.rp" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt.rpt" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt.jo" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.t" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.rp" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.rpt" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.r" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.ro" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.s" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.pm" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.w0" "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt.ssc" "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt.pim" "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.s" "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.pm" "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.w0" "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_01_FK_Jnt.s" "R_Finger_02_Knuckle_01_FK_Jnt.is";
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.csx" "R_Finger_02_Knuckle_01_FK_Jnt.sx"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.csy" "R_Finger_02_Knuckle_01_FK_Jnt.sy"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.csz" "R_Finger_02_Knuckle_01_FK_Jnt.sz"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.ctx" "R_Finger_02_Knuckle_01_FK_Jnt.tx"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cty" "R_Finger_02_Knuckle_01_FK_Jnt.ty"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.ctz" "R_Finger_02_Knuckle_01_FK_Jnt.tz"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.crx" "R_Finger_02_Knuckle_01_FK_Jnt.rx"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cry" "R_Finger_02_Knuckle_01_FK_Jnt.ry"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.crz" "R_Finger_02_Knuckle_01_FK_Jnt.rz"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt.s" "R_Finger_02_Knuckle_02_FK_Jnt.is"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "R_Finger_02_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "R_Finger_02_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "R_Finger_02_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "R_Finger_02_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cty" "R_Finger_02_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "R_Finger_02_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.crx" "R_Finger_02_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cry" "R_Finger_02_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.crz" "R_Finger_02_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt.s" "R_Finger_02_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt.ro" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt.pim" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt.rp" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt.rpt" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt.jo" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.t" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.rp" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.rpt" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.r" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.ro" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.s" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.pm" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.w0" "R_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt.ssc" "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt.pim" "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.s" "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.pm" "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt.ro" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt.pim" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt.rp" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt.rpt" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt.jo" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.t" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.rp" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.rpt" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.r" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.ro" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.s" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.pm" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.w0" "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt.ssc" "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt.pim" "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.s" "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.pm" "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.w0" "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_01_FK_Jnt.s" "R_Finger_03_Knuckle_01_FK_Jnt.is";
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.csx" "R_Finger_03_Knuckle_01_FK_Jnt.sx"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.csy" "R_Finger_03_Knuckle_01_FK_Jnt.sy"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.csz" "R_Finger_03_Knuckle_01_FK_Jnt.sz"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.ctx" "R_Finger_03_Knuckle_01_FK_Jnt.tx"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cty" "R_Finger_03_Knuckle_01_FK_Jnt.ty"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.ctz" "R_Finger_03_Knuckle_01_FK_Jnt.tz"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.crx" "R_Finger_03_Knuckle_01_FK_Jnt.rx"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cry" "R_Finger_03_Knuckle_01_FK_Jnt.ry"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.crz" "R_Finger_03_Knuckle_01_FK_Jnt.rz"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt.s" "R_Finger_03_Knuckle_02_FK_Jnt.is"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "R_Finger_03_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "R_Finger_03_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "R_Finger_03_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "R_Finger_03_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cty" "R_Finger_03_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "R_Finger_03_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.crx" "R_Finger_03_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cry" "R_Finger_03_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.crz" "R_Finger_03_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt.s" "R_Finger_03_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt.ro" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt.pim" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt.rp" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt.rpt" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt.jo" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.t" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.rp" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.rpt" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.r" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.ro" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.s" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.pm" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.w0" "R_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt.ssc" "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt.pim" "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.s" "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.pm" "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt.ro" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt.pim" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt.rp" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt.rpt" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt.jo" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.t" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.rp" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.rpt" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.r" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.ro" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.s" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.pm" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.w0" "R_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt.ssc" "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt.pim" "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.s" "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.pm" "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.w0" "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_01_FK_Jnt.s" "R_Hand_Cup_01_FK_Jnt.is";
connectAttr "R_Hand_Cup_01_FK_Jnt_scaleConstraint1.csx" "R_Hand_Cup_01_FK_Jnt.sx"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_scaleConstraint1.csy" "R_Hand_Cup_01_FK_Jnt.sy"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_scaleConstraint1.csz" "R_Hand_Cup_01_FK_Jnt.sz"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_parentConstraint1.ctx" "R_Hand_Cup_01_FK_Jnt.tx"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_parentConstraint1.cty" "R_Hand_Cup_01_FK_Jnt.ty"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_parentConstraint1.ctz" "R_Hand_Cup_01_FK_Jnt.tz"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_parentConstraint1.crx" "R_Hand_Cup_01_FK_Jnt.rx"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_parentConstraint1.cry" "R_Hand_Cup_01_FK_Jnt.ry"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_parentConstraint1.crz" "R_Hand_Cup_01_FK_Jnt.rz"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.s" "R_Finger_04_Knuckle_01_FK_Jnt.is";
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.csx" "R_Finger_04_Knuckle_01_FK_Jnt.sx"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.csy" "R_Finger_04_Knuckle_01_FK_Jnt.sy"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.csz" "R_Finger_04_Knuckle_01_FK_Jnt.sz"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.ctx" "R_Finger_04_Knuckle_01_FK_Jnt.tx"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cty" "R_Finger_04_Knuckle_01_FK_Jnt.ty"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.ctz" "R_Finger_04_Knuckle_01_FK_Jnt.tz"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.crx" "R_Finger_04_Knuckle_01_FK_Jnt.rx"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cry" "R_Finger_04_Knuckle_01_FK_Jnt.ry"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.crz" "R_Finger_04_Knuckle_01_FK_Jnt.rz"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt.s" "R_Finger_04_Knuckle_02_FK_Jnt.is"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "R_Finger_04_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "R_Finger_04_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "R_Finger_04_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "R_Finger_04_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cty" "R_Finger_04_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "R_Finger_04_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.crx" "R_Finger_04_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cry" "R_Finger_04_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.crz" "R_Finger_04_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt.s" "R_Finger_04_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt.ro" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt.pim" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt.rp" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt.rpt" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt.jo" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.t" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.rp" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.rpt" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.r" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.ro" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.s" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.pm" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.w0" "R_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt.ssc" "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt.pim" "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.s" "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.pm" "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt.ro" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt.pim" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt.rp" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt.rpt" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt.jo" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.t" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.rp" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.rpt" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.r" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.ro" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.s" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.pm" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.w0" "R_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt.ssc" "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt.pim" "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.s" "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.pm" "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.w0" "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.s" "R_Finger_05_Knuckle_02_FK_Jnt.is";
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "R_Finger_05_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "R_Finger_05_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "R_Finger_05_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "R_Finger_05_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cty" "R_Finger_05_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "R_Finger_05_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.crx" "R_Finger_05_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cry" "R_Finger_05_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.crz" "R_Finger_05_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt.s" "R_Finger_05_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.csx" "R_Finger_05_Knuckle_03_FK_Jnt.sx"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.csy" "R_Finger_05_Knuckle_03_FK_Jnt.sy"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.csz" "R_Finger_05_Knuckle_03_FK_Jnt.sz"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.ctx" "R_Finger_05_Knuckle_03_FK_Jnt.tx"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cty" "R_Finger_05_Knuckle_03_FK_Jnt.ty"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.ctz" "R_Finger_05_Knuckle_03_FK_Jnt.tz"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.crx" "R_Finger_05_Knuckle_03_FK_Jnt.rx"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cry" "R_Finger_05_Knuckle_03_FK_Jnt.ry"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.crz" "R_Finger_05_Knuckle_03_FK_Jnt.rz"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt.s" "R_Finger_05_Knuckle_04_FK_Jnt.is"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt.ro" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt.pim" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt.rp" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt.rpt" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt.jo" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.t" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.rp" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.rpt" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.r" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.ro" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.s" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.pm" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.w0" "R_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt.ssc" "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt.pim" "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.s" "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.pm" "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.w0" "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt.ro" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt.pim" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt.rp" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt.rpt" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt.jo" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.t" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.rp" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.rpt" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.r" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.ro" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.s" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.pm" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.w0" "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt.ssc" "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt.pim" "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.s" "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.pm" "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.ro" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.pim" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.rp" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.rpt" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.jo" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.t" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rp" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rpt" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.r" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.ro" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.s" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.pm" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_parentConstraint1.w0" "R_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.ssc" "R_Hand_Cup_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.pim" "R_Hand_Cup_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.s" "R_Hand_Cup_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.pm" "R_Hand_Cup_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt_scaleConstraint1.w0" "R_Hand_Cup_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_01_FK_Jnt.ro" "R_Hand_01_FK_Jnt_parentConstraint1.cro";
connectAttr "R_Hand_01_FK_Jnt.pim" "R_Hand_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "R_Hand_01_FK_Jnt.rp" "R_Hand_01_FK_Jnt_parentConstraint1.crp";
connectAttr "R_Hand_01_FK_Jnt.rpt" "R_Hand_01_FK_Jnt_parentConstraint1.crt";
connectAttr "R_Hand_01_FK_Jnt.jo" "R_Hand_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "R_Hand_01_FK_Ctrl.t" "R_Hand_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Hand_01_FK_Ctrl.rp" "R_Hand_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_01_FK_Ctrl.rpt" "R_Hand_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_01_FK_Ctrl.r" "R_Hand_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Hand_01_FK_Ctrl.ro" "R_Hand_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Hand_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Hand_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Hand_01_FK_Jnt_parentConstraint1.w0" "R_Hand_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_01_FK_Jnt.pim" "R_Hand_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Hand_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Hand_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Hand_01_FK_Jnt_scaleConstraint1.w0" "R_Hand_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_01_FK_Jnt_scaleConstraint1.csx" "L_Hand_01_FK_Jnt.sx";
connectAttr "L_Hand_01_FK_Jnt_scaleConstraint1.csy" "L_Hand_01_FK_Jnt.sy";
connectAttr "L_Hand_01_FK_Jnt_scaleConstraint1.csz" "L_Hand_01_FK_Jnt.sz";
connectAttr "L_Hand_01_FK_Jnt_parentConstraint1.ctx" "L_Hand_01_FK_Jnt.tx";
connectAttr "L_Hand_01_FK_Jnt_parentConstraint1.cty" "L_Hand_01_FK_Jnt.ty";
connectAttr "L_Hand_01_FK_Jnt_parentConstraint1.ctz" "L_Hand_01_FK_Jnt.tz";
connectAttr "L_Hand_01_FK_Jnt_parentConstraint1.crx" "L_Hand_01_FK_Jnt.rx";
connectAttr "L_Hand_01_FK_Jnt_parentConstraint1.cry" "L_Hand_01_FK_Jnt.ry";
connectAttr "L_Hand_01_FK_Jnt_parentConstraint1.crz" "L_Hand_01_FK_Jnt.rz";
connectAttr "L_Hand_01_FK_Jnt.s" "L_Finger_01_Knuckle_01_FK_Jnt.is";
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.csx" "L_Finger_01_Knuckle_01_FK_Jnt.sx"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.csy" "L_Finger_01_Knuckle_01_FK_Jnt.sy"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.csz" "L_Finger_01_Knuckle_01_FK_Jnt.sz"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.ctx" "L_Finger_01_Knuckle_01_FK_Jnt.tx"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cty" "L_Finger_01_Knuckle_01_FK_Jnt.ty"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.ctz" "L_Finger_01_Knuckle_01_FK_Jnt.tz"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.crx" "L_Finger_01_Knuckle_01_FK_Jnt.rx"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cry" "L_Finger_01_Knuckle_01_FK_Jnt.ry"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.crz" "L_Finger_01_Knuckle_01_FK_Jnt.rz"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt.s" "L_Finger_01_Knuckle_02_FK_Jnt.is"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "L_Finger_01_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "L_Finger_01_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "L_Finger_01_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "L_Finger_01_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cty" "L_Finger_01_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "L_Finger_01_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.crx" "L_Finger_01_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cry" "L_Finger_01_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.crz" "L_Finger_01_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt.s" "L_Finger_01_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.csx" "L_Finger_01_Knuckle_03_FK_Jnt.sx"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.csy" "L_Finger_01_Knuckle_03_FK_Jnt.sy"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.csz" "L_Finger_01_Knuckle_03_FK_Jnt.sz"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.ctx" "L_Finger_01_Knuckle_03_FK_Jnt.tx"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cty" "L_Finger_01_Knuckle_03_FK_Jnt.ty"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.ctz" "L_Finger_01_Knuckle_03_FK_Jnt.tz"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.crx" "L_Finger_01_Knuckle_03_FK_Jnt.rx"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cry" "L_Finger_01_Knuckle_03_FK_Jnt.ry"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.crz" "L_Finger_01_Knuckle_03_FK_Jnt.rz"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt.s" "L_Finger_01_Knuckle_04_FK_Jnt.is"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt.ro" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt.pim" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt.rp" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt.rpt" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt.jo" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.t" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.rp" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.rpt" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.r" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.ro" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.s" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.pm" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.w0" "L_Finger_01_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt.ssc" "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt.pim" "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.s" "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.pm" "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.w0" "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt.ro" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt.pim" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt.rp" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt.rpt" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt.jo" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.t" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.rp" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.rpt" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.r" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.ro" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.s" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.pm" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.w0" "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt.ssc" "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt.pim" "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.s" "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.pm" "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt.ro" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt.pim" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt.rp" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt.rpt" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt.jo" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.t" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.rp" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.rpt" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.r" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.ro" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.s" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.pm" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.w0" "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt.ssc" "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt.pim" "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.s" "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.pm" "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.w0" "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_01_FK_Jnt.s" "L_Finger_02_Knuckle_01_FK_Jnt.is";
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.csx" "L_Finger_02_Knuckle_01_FK_Jnt.sx"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.csy" "L_Finger_02_Knuckle_01_FK_Jnt.sy"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.csz" "L_Finger_02_Knuckle_01_FK_Jnt.sz"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.ctx" "L_Finger_02_Knuckle_01_FK_Jnt.tx"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cty" "L_Finger_02_Knuckle_01_FK_Jnt.ty"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.ctz" "L_Finger_02_Knuckle_01_FK_Jnt.tz"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.crx" "L_Finger_02_Knuckle_01_FK_Jnt.rx"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cry" "L_Finger_02_Knuckle_01_FK_Jnt.ry"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.crz" "L_Finger_02_Knuckle_01_FK_Jnt.rz"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt.s" "L_Finger_02_Knuckle_02_FK_Jnt.is"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "L_Finger_02_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "L_Finger_02_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "L_Finger_02_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "L_Finger_02_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cty" "L_Finger_02_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "L_Finger_02_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.crx" "L_Finger_02_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cry" "L_Finger_02_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.crz" "L_Finger_02_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt.s" "L_Finger_02_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt.ro" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt.pim" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt.rp" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt.rpt" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt.jo" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.t" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.rp" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.rpt" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.r" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.ro" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.s" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.pm" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.w0" "L_Finger_02_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt.ssc" "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt.pim" "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.s" "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.pm" "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt.ro" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt.pim" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt.rp" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt.rpt" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt.jo" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.t" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.rp" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.rpt" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.r" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.ro" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.s" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.pm" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.w0" "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt.ssc" "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt.pim" "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.s" "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.pm" "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.w0" "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_01_FK_Jnt.s" "L_Finger_03_Knuckle_01_FK_Jnt.is";
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.csx" "L_Finger_03_Knuckle_01_FK_Jnt.sx"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.csy" "L_Finger_03_Knuckle_01_FK_Jnt.sy"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.csz" "L_Finger_03_Knuckle_01_FK_Jnt.sz"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.ctx" "L_Finger_03_Knuckle_01_FK_Jnt.tx"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cty" "L_Finger_03_Knuckle_01_FK_Jnt.ty"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.ctz" "L_Finger_03_Knuckle_01_FK_Jnt.tz"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.crx" "L_Finger_03_Knuckle_01_FK_Jnt.rx"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cry" "L_Finger_03_Knuckle_01_FK_Jnt.ry"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.crz" "L_Finger_03_Knuckle_01_FK_Jnt.rz"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt.s" "L_Finger_03_Knuckle_02_FK_Jnt.is"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "L_Finger_03_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "L_Finger_03_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "L_Finger_03_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "L_Finger_03_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cty" "L_Finger_03_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "L_Finger_03_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.crx" "L_Finger_03_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cry" "L_Finger_03_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.crz" "L_Finger_03_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt.s" "L_Finger_03_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt.ro" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt.pim" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt.rp" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt.rpt" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt.jo" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.t" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.rp" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.rpt" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.r" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.ro" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.s" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.pm" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.w0" "L_Finger_03_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt.ssc" "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt.pim" "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.s" "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.pm" "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt.ro" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt.pim" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt.rp" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt.rpt" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt.jo" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.t" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.rp" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.rpt" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.r" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.ro" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.s" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.pm" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.w0" "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt.ssc" "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt.pim" "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.s" "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.pm" "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.w0" "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_01_FK_Jnt.s" "L_Hand_Cup_01_FK_Jnt.is";
connectAttr "L_Hand_Cup_01_FK_Jnt_scaleConstraint1.csx" "L_Hand_Cup_01_FK_Jnt.sx"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_scaleConstraint1.csy" "L_Hand_Cup_01_FK_Jnt.sy"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_scaleConstraint1.csz" "L_Hand_Cup_01_FK_Jnt.sz"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_parentConstraint1.ctx" "L_Hand_Cup_01_FK_Jnt.tx"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_parentConstraint1.cty" "L_Hand_Cup_01_FK_Jnt.ty"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_parentConstraint1.ctz" "L_Hand_Cup_01_FK_Jnt.tz"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_parentConstraint1.crx" "L_Hand_Cup_01_FK_Jnt.rx"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_parentConstraint1.cry" "L_Hand_Cup_01_FK_Jnt.ry"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_parentConstraint1.crz" "L_Hand_Cup_01_FK_Jnt.rz"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.s" "L_Finger_04_Knuckle_01_FK_Jnt.is";
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.csx" "L_Finger_04_Knuckle_01_FK_Jnt.sx"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.csy" "L_Finger_04_Knuckle_01_FK_Jnt.sy"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.csz" "L_Finger_04_Knuckle_01_FK_Jnt.sz"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.ctx" "L_Finger_04_Knuckle_01_FK_Jnt.tx"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cty" "L_Finger_04_Knuckle_01_FK_Jnt.ty"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.ctz" "L_Finger_04_Knuckle_01_FK_Jnt.tz"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.crx" "L_Finger_04_Knuckle_01_FK_Jnt.rx"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cry" "L_Finger_04_Knuckle_01_FK_Jnt.ry"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.crz" "L_Finger_04_Knuckle_01_FK_Jnt.rz"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt.s" "L_Finger_04_Knuckle_02_FK_Jnt.is"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "L_Finger_04_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "L_Finger_04_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "L_Finger_04_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "L_Finger_04_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cty" "L_Finger_04_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "L_Finger_04_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.crx" "L_Finger_04_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cry" "L_Finger_04_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.crz" "L_Finger_04_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt.s" "L_Finger_04_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt.ro" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt.pim" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt.rp" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt.rpt" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt.jo" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.t" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.rp" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.rpt" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.r" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.ro" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.s" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.pm" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.w0" "L_Finger_04_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt.ssc" "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt.pim" "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.s" "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.pm" "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt.ro" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt.pim" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt.rp" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt.rpt" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt.jo" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.t" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.rp" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.rpt" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.r" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.ro" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.s" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.pm" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.w0" "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt.ssc" "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt.pim" "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.s" "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.pm" "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.w0" "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.s" "L_Finger_05_Knuckle_02_FK_Jnt.is";
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.csx" "L_Finger_05_Knuckle_02_FK_Jnt.sx"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.csy" "L_Finger_05_Knuckle_02_FK_Jnt.sy"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.csz" "L_Finger_05_Knuckle_02_FK_Jnt.sz"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.ctx" "L_Finger_05_Knuckle_02_FK_Jnt.tx"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cty" "L_Finger_05_Knuckle_02_FK_Jnt.ty"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.ctz" "L_Finger_05_Knuckle_02_FK_Jnt.tz"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.crx" "L_Finger_05_Knuckle_02_FK_Jnt.rx"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cry" "L_Finger_05_Knuckle_02_FK_Jnt.ry"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.crz" "L_Finger_05_Knuckle_02_FK_Jnt.rz"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt.s" "L_Finger_05_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.csx" "L_Finger_05_Knuckle_03_FK_Jnt.sx"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.csy" "L_Finger_05_Knuckle_03_FK_Jnt.sy"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.csz" "L_Finger_05_Knuckle_03_FK_Jnt.sz"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.ctx" "L_Finger_05_Knuckle_03_FK_Jnt.tx"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cty" "L_Finger_05_Knuckle_03_FK_Jnt.ty"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.ctz" "L_Finger_05_Knuckle_03_FK_Jnt.tz"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.crx" "L_Finger_05_Knuckle_03_FK_Jnt.rx"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cry" "L_Finger_05_Knuckle_03_FK_Jnt.ry"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.crz" "L_Finger_05_Knuckle_03_FK_Jnt.rz"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt.s" "L_Finger_05_Knuckle_04_FK_Jnt.is"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt.ro" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt.pim" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt.rp" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt.rpt" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt.jo" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.t" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.rp" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.rpt" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.r" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.ro" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.s" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.pm" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.w0" "L_Finger_05_Knuckle_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt.ssc" "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt.pim" "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.s" "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.pm" "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.w0" "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt.ro" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt.pim" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt.rp" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt.rpt" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt.jo" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.t" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.rp" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.rpt" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.r" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.ro" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.s" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.pm" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.w0" "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt.ssc" "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt.pim" "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.s" "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.pm" "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.w0" "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.ro" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.cro"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.pim" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.cpim"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.rp" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.crp"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.rpt" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.crt"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.jo" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.cjo"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.t" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rp" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rpt" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.r" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.ro" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.s" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.pm" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_parentConstraint1.w0" "L_Hand_Cup_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.ssc" "L_Hand_Cup_01_FK_Jnt_scaleConstraint1.tsc"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.pim" "L_Hand_Cup_01_FK_Jnt_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.s" "L_Hand_Cup_01_FK_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.pm" "L_Hand_Cup_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt_scaleConstraint1.w0" "L_Hand_Cup_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_01_FK_Jnt.ro" "L_Hand_01_FK_Jnt_parentConstraint1.cro";
connectAttr "L_Hand_01_FK_Jnt.pim" "L_Hand_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "L_Hand_01_FK_Jnt.rp" "L_Hand_01_FK_Jnt_parentConstraint1.crp";
connectAttr "L_Hand_01_FK_Jnt.rpt" "L_Hand_01_FK_Jnt_parentConstraint1.crt";
connectAttr "L_Hand_01_FK_Jnt.jo" "L_Hand_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "L_Hand_01_FK_Ctrl.t" "L_Hand_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Hand_01_FK_Ctrl.rp" "L_Hand_01_FK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_01_FK_Ctrl.rpt" "L_Hand_01_FK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_01_FK_Ctrl.r" "L_Hand_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Hand_01_FK_Ctrl.ro" "L_Hand_01_FK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Hand_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Hand_01_FK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Hand_01_FK_Jnt_parentConstraint1.w0" "L_Hand_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_01_FK_Jnt.pim" "L_Hand_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Hand_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Hand_01_FK_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Hand_01_FK_Jnt_scaleConstraint1.w0" "L_Hand_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Skeleton.pim" "Skeleton_scaleConstraint1.cpim";
connectAttr "ROOT_Ctrl.s" "Skeleton_scaleConstraint1.tg[0].ts";
connectAttr "ROOT_Ctrl.pm" "Skeleton_scaleConstraint1.tg[0].tpm";
connectAttr "Skeleton_scaleConstraint1.w0" "Skeleton_scaleConstraint1.tg[0].tw";
connectAttr "Controls_Layer.di" "Controls.do";
connectAttr "COG_Ctrl_Grp_parentConstraint1.ctx" "COG_Ctrl_Grp.tx";
connectAttr "COG_Ctrl_Grp_parentConstraint1.cty" "COG_Ctrl_Grp.ty";
connectAttr "COG_Ctrl_Grp_parentConstraint1.ctz" "COG_Ctrl_Grp.tz";
connectAttr "COG_Ctrl_Grp_parentConstraint2.crx" "COG_Ctrl_Grp.rx";
connectAttr "COG_Ctrl_Grp_parentConstraint2.cry" "COG_Ctrl_Grp.ry";
connectAttr "COG_Ctrl_Grp_parentConstraint2.crz" "COG_Ctrl_Grp.rz";
connectAttr "COG_Ctrl_Grp_scaleConstraint1.csx" "COG_Ctrl_Grp.sx";
connectAttr "COG_Ctrl_Grp_scaleConstraint1.csy" "COG_Ctrl_Grp.sy";
connectAttr "COG_Ctrl_Grp_scaleConstraint1.csz" "COG_Ctrl_Grp.sz";
connectAttr "COG_Ctrl_Grp.ro" "COG_Ctrl_Grp_parentConstraint1.cro";
connectAttr "COG_Ctrl_Grp.pim" "COG_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "COG_Ctrl_Grp.rp" "COG_Ctrl_Grp_parentConstraint1.crp";
connectAttr "COG_Ctrl_Grp.rpt" "COG_Ctrl_Grp_parentConstraint1.crt";
connectAttr "ROOT_Ctrl.t" "COG_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "ROOT_Ctrl.rp" "COG_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "ROOT_Ctrl.rpt" "COG_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "ROOT_Ctrl.r" "COG_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "ROOT_Ctrl.ro" "COG_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "ROOT_Ctrl.s" "COG_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "ROOT_Ctrl.pm" "COG_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "COG_Ctrl_Grp_parentConstraint1.w0" "COG_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "COG_Ctrl.FollowTranslate" "COG_Ctrl_Grp_parentConstraint1.w0";
connectAttr "COG_Ctrl_Grp.ro" "COG_Ctrl_Grp_parentConstraint2.cro";
connectAttr "COG_Ctrl_Grp.pim" "COG_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "COG_Ctrl_Grp.rp" "COG_Ctrl_Grp_parentConstraint2.crp";
connectAttr "COG_Ctrl_Grp.rpt" "COG_Ctrl_Grp_parentConstraint2.crt";
connectAttr "ROOT_Ctrl.t" "COG_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "ROOT_Ctrl.rp" "COG_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "ROOT_Ctrl.rpt" "COG_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "ROOT_Ctrl.r" "COG_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "ROOT_Ctrl.ro" "COG_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "ROOT_Ctrl.s" "COG_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "ROOT_Ctrl.pm" "COG_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "COG_Ctrl_Grp_parentConstraint2.w0" "COG_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "COG_Ctrl.FollowRotate" "COG_Ctrl_Grp_parentConstraint2.w0";
connectAttr "COG_Ctrl_Grp.pim" "COG_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "ROOT_Ctrl.s" "COG_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "ROOT_Ctrl.pm" "COG_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "COG_Ctrl_Grp_scaleConstraint1.w0" "COG_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Pelvis_Ctrl_Grp_scaleConstraint1.csx" "Pelvis_Ctrl_Grp.sx";
connectAttr "Pelvis_Ctrl_Grp_scaleConstraint1.csy" "Pelvis_Ctrl_Grp.sy";
connectAttr "Pelvis_Ctrl_Grp_scaleConstraint1.csz" "Pelvis_Ctrl_Grp.sz";
connectAttr "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.ctx" "Pelvis_01_FK_Ctrl_Grp.tx"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.cty" "Pelvis_01_FK_Ctrl_Grp.ty"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.ctz" "Pelvis_01_FK_Ctrl_Grp.tz"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.crx" "Pelvis_01_FK_Ctrl_Grp.rx"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.cry" "Pelvis_01_FK_Ctrl_Grp.ry"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.crz" "Pelvis_01_FK_Ctrl_Grp.rz"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp.ro" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp.pim" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp.rp" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp.rpt" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "COG_Ctrl.t" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "COG_Ctrl.rp" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "COG_Ctrl.r" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "COG_Ctrl.ro" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "COG_Ctrl.s" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.w0" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Pelvis_01_FK_Ctrl.FollowTranslate" "Pelvis_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp.ro" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp.pim" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp.rp" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Pelvis_01_FK_Ctrl_Grp.rpt" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "COG_Ctrl.t" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "COG_Ctrl.rp" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "COG_Ctrl.r" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "COG_Ctrl.ro" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "COG_Ctrl.s" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.w0" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Pelvis_01_FK_Ctrl.FollowRotate" "Pelvis_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Pelvis_Ctrl_Grp.pim" "Pelvis_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "COG_Ctrl.s" "Pelvis_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Pelvis_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Pelvis_Ctrl_Grp_scaleConstraint1.w0" "Pelvis_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_FK_Ctrl_Grp_scaleConstraint1.csx" "Spine_FK_Ctrl_Grp.sx";
connectAttr "Spine_FK_Ctrl_Grp_scaleConstraint1.csy" "Spine_FK_Ctrl_Grp.sy";
connectAttr "Spine_FK_Ctrl_Grp_scaleConstraint1.csz" "Spine_FK_Ctrl_Grp.sz";
connectAttr "Spine_01_FK_Ctrl_Grp_parentConstraint1.ctx" "Spine_01_FK_Ctrl_Grp.tx"
		;
connectAttr "Spine_01_FK_Ctrl_Grp_parentConstraint1.cty" "Spine_01_FK_Ctrl_Grp.ty"
		;
connectAttr "Spine_01_FK_Ctrl_Grp_parentConstraint1.ctz" "Spine_01_FK_Ctrl_Grp.tz"
		;
connectAttr "Spine_01_FK_Ctrl_Grp_parentConstraint2.crx" "Spine_01_FK_Ctrl_Grp.rx"
		;
connectAttr "Spine_01_FK_Ctrl_Grp_parentConstraint2.cry" "Spine_01_FK_Ctrl_Grp.ry"
		;
connectAttr "Spine_01_FK_Ctrl_Grp_parentConstraint2.crz" "Spine_01_FK_Ctrl_Grp.rz"
		;
connectAttr "Spine_01_FK_Ctrl_Grp.ro" "Spine_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Spine_01_FK_Ctrl_Grp.pim" "Spine_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Spine_01_FK_Ctrl_Grp.rp" "Spine_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Spine_01_FK_Ctrl_Grp.rpt" "Spine_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "COG_Ctrl.t" "Spine_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "COG_Ctrl.rp" "Spine_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "Spine_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "COG_Ctrl.r" "Spine_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "COG_Ctrl.ro" "Spine_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "COG_Ctrl.s" "Spine_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Spine_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Spine_01_FK_Ctrl_Grp_parentConstraint1.w0" "Spine_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_01_FK_Ctrl.FollowTranslate" "Spine_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spine_01_FK_Ctrl_Grp.ro" "Spine_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Spine_01_FK_Ctrl_Grp.pim" "Spine_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Spine_01_FK_Ctrl_Grp.rp" "Spine_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Spine_01_FK_Ctrl_Grp.rpt" "Spine_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "COG_Ctrl.t" "Spine_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "COG_Ctrl.rp" "Spine_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "Spine_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "COG_Ctrl.r" "Spine_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "COG_Ctrl.ro" "Spine_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "COG_Ctrl.s" "Spine_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Spine_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Spine_01_FK_Ctrl_Grp_parentConstraint2.w0" "Spine_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spine_01_FK_Ctrl.FollowRotate" "Spine_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spine_02_FK_Ctrl_Grp_parentConstraint1.ctx" "Spine_02_FK_Ctrl_Grp.tx"
		;
connectAttr "Spine_02_FK_Ctrl_Grp_parentConstraint1.cty" "Spine_02_FK_Ctrl_Grp.ty"
		;
connectAttr "Spine_02_FK_Ctrl_Grp_parentConstraint1.ctz" "Spine_02_FK_Ctrl_Grp.tz"
		;
connectAttr "Spine_02_FK_Ctrl_Grp_parentConstraint2.crx" "Spine_02_FK_Ctrl_Grp.rx"
		;
connectAttr "Spine_02_FK_Ctrl_Grp_parentConstraint2.cry" "Spine_02_FK_Ctrl_Grp.ry"
		;
connectAttr "Spine_02_FK_Ctrl_Grp_parentConstraint2.crz" "Spine_02_FK_Ctrl_Grp.rz"
		;
connectAttr "Spine_02_FK_Ctrl_Grp.ro" "Spine_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Spine_02_FK_Ctrl_Grp.pim" "Spine_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Spine_02_FK_Ctrl_Grp.rp" "Spine_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Spine_02_FK_Ctrl_Grp.rpt" "Spine_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Spine_01_FK_Ctrl.t" "Spine_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Spine_01_FK_Ctrl.rp" "Spine_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spine_01_FK_Ctrl.rpt" "Spine_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_01_FK_Ctrl.r" "Spine_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Spine_01_FK_Ctrl.ro" "Spine_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spine_01_FK_Ctrl.s" "Spine_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Spine_01_FK_Ctrl.pm" "Spine_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Spine_02_FK_Ctrl_Grp_parentConstraint1.w0" "Spine_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_FK_Ctrl.FollowTranslate" "Spine_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spine_02_FK_Ctrl_Grp.ro" "Spine_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Spine_02_FK_Ctrl_Grp.pim" "Spine_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Spine_02_FK_Ctrl_Grp.rp" "Spine_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Spine_02_FK_Ctrl_Grp.rpt" "Spine_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Spine_01_FK_Ctrl.t" "Spine_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Spine_01_FK_Ctrl.rp" "Spine_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spine_01_FK_Ctrl.rpt" "Spine_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spine_01_FK_Ctrl.r" "Spine_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Spine_01_FK_Ctrl.ro" "Spine_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spine_01_FK_Ctrl.s" "Spine_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Spine_01_FK_Ctrl.pm" "Spine_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Spine_02_FK_Ctrl_Grp_parentConstraint2.w0" "Spine_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spine_02_FK_Ctrl.FollowRotate" "Spine_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spine_03_FK_Ctrl_Grp_parentConstraint1.ctx" "Spine_03_FK_Ctrl_Grp.tx"
		;
connectAttr "Spine_03_FK_Ctrl_Grp_parentConstraint1.cty" "Spine_03_FK_Ctrl_Grp.ty"
		;
connectAttr "Spine_03_FK_Ctrl_Grp_parentConstraint1.ctz" "Spine_03_FK_Ctrl_Grp.tz"
		;
connectAttr "Spine_03_FK_Ctrl_Grp_parentConstraint2.crx" "Spine_03_FK_Ctrl_Grp.rx"
		;
connectAttr "Spine_03_FK_Ctrl_Grp_parentConstraint2.cry" "Spine_03_FK_Ctrl_Grp.ry"
		;
connectAttr "Spine_03_FK_Ctrl_Grp_parentConstraint2.crz" "Spine_03_FK_Ctrl_Grp.rz"
		;
connectAttr "Spine_03_FK_Ctrl_Grp.ro" "Spine_03_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Spine_03_FK_Ctrl_Grp.pim" "Spine_03_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Spine_03_FK_Ctrl_Grp.rp" "Spine_03_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Spine_03_FK_Ctrl_Grp.rpt" "Spine_03_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Spine_02_FK_Ctrl.t" "Spine_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Spine_02_FK_Ctrl.rp" "Spine_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spine_02_FK_Ctrl.rpt" "Spine_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_02_FK_Ctrl.r" "Spine_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Spine_02_FK_Ctrl.ro" "Spine_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spine_02_FK_Ctrl.s" "Spine_03_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Spine_02_FK_Ctrl.pm" "Spine_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Spine_03_FK_Ctrl_Grp_parentConstraint1.w0" "Spine_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_FK_Ctrl.FollowTranslate" "Spine_03_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spine_03_FK_Ctrl_Grp.ro" "Spine_03_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Spine_03_FK_Ctrl_Grp.pim" "Spine_03_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Spine_03_FK_Ctrl_Grp.rp" "Spine_03_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Spine_03_FK_Ctrl_Grp.rpt" "Spine_03_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Spine_02_FK_Ctrl.t" "Spine_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Spine_02_FK_Ctrl.rp" "Spine_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spine_02_FK_Ctrl.rpt" "Spine_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spine_02_FK_Ctrl.r" "Spine_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Spine_02_FK_Ctrl.ro" "Spine_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spine_02_FK_Ctrl.s" "Spine_03_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Spine_02_FK_Ctrl.pm" "Spine_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Spine_03_FK_Ctrl_Grp_parentConstraint2.w0" "Spine_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spine_03_FK_Ctrl.FollowRotate" "Spine_03_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spine_FK_Ctrl_Grp.pim" "Spine_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "COG_Ctrl.s" "Spine_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Spine_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_FK_Ctrl_Grp_scaleConstraint1.w0" "Spine_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Head_FK_Ctrl_Grp_scaleConstraint1.csx" "Head_FK_Ctrl_Grp.sx";
connectAttr "Head_FK_Ctrl_Grp_scaleConstraint1.csy" "Head_FK_Ctrl_Grp.sy";
connectAttr "Head_FK_Ctrl_Grp_scaleConstraint1.csz" "Head_FK_Ctrl_Grp.sz";
connectAttr "Spine_04_FK_Ctrl_Grp_parentConstraint1.ctx" "Spine_04_FK_Ctrl_Grp.tx"
		;
connectAttr "Spine_04_FK_Ctrl_Grp_parentConstraint1.cty" "Spine_04_FK_Ctrl_Grp.ty"
		;
connectAttr "Spine_04_FK_Ctrl_Grp_parentConstraint1.ctz" "Spine_04_FK_Ctrl_Grp.tz"
		;
connectAttr "Spine_04_FK_Ctrl_Grp_parentConstraint2.crx" "Spine_04_FK_Ctrl_Grp.rx"
		;
connectAttr "Spine_04_FK_Ctrl_Grp_parentConstraint2.cry" "Spine_04_FK_Ctrl_Grp.ry"
		;
connectAttr "Spine_04_FK_Ctrl_Grp_parentConstraint2.crz" "Spine_04_FK_Ctrl_Grp.rz"
		;
connectAttr "Spine_04_FK_Ctrl_Grp.ro" "Spine_04_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Spine_04_FK_Ctrl_Grp.pim" "Spine_04_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Spine_04_FK_Ctrl_Grp.rp" "Spine_04_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Spine_04_FK_Ctrl_Grp.rpt" "Spine_04_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Spine_03_FK_Ctrl.t" "Spine_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Spine_03_FK_Ctrl.rp" "Spine_04_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spine_03_FK_Ctrl.rpt" "Spine_04_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_03_FK_Ctrl.r" "Spine_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Spine_03_FK_Ctrl.ro" "Spine_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spine_03_FK_Ctrl.s" "Spine_04_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Spine_03_FK_Ctrl.pm" "Spine_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Spine_04_FK_Ctrl_Grp_parentConstraint1.w0" "Spine_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_04_FK_Ctrl.FollowTranslate" "Spine_04_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spine_04_FK_Ctrl_Grp.ro" "Spine_04_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Spine_04_FK_Ctrl_Grp.pim" "Spine_04_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Spine_04_FK_Ctrl_Grp.rp" "Spine_04_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Spine_04_FK_Ctrl_Grp.rpt" "Spine_04_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Spine_03_FK_Ctrl.t" "Spine_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Spine_03_FK_Ctrl.rp" "Spine_04_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spine_03_FK_Ctrl.rpt" "Spine_04_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spine_03_FK_Ctrl.r" "Spine_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Spine_03_FK_Ctrl.ro" "Spine_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spine_03_FK_Ctrl.s" "Spine_04_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Spine_03_FK_Ctrl.pm" "Spine_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Spine_04_FK_Ctrl_Grp_parentConstraint2.w0" "Spine_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spine_04_FK_Ctrl.FollowRotate" "Spine_04_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Neck_01_FK_Ctrl_Grp_parentConstraint1.ctx" "Neck_01_FK_Ctrl_Grp.tx"
		;
connectAttr "Neck_01_FK_Ctrl_Grp_parentConstraint1.cty" "Neck_01_FK_Ctrl_Grp.ty"
		;
connectAttr "Neck_01_FK_Ctrl_Grp_parentConstraint1.ctz" "Neck_01_FK_Ctrl_Grp.tz"
		;
connectAttr "Neck_01_FK_Ctrl_Grp_parentConstraint2.crx" "Neck_01_FK_Ctrl_Grp.rx"
		;
connectAttr "Neck_01_FK_Ctrl_Grp_parentConstraint2.cry" "Neck_01_FK_Ctrl_Grp.ry"
		;
connectAttr "Neck_01_FK_Ctrl_Grp_parentConstraint2.crz" "Neck_01_FK_Ctrl_Grp.rz"
		;
connectAttr "Neck_01_FK_Ctrl_Grp.ro" "Neck_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Neck_01_FK_Ctrl_Grp.pim" "Neck_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Neck_01_FK_Ctrl_Grp.rp" "Neck_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Neck_01_FK_Ctrl_Grp.rpt" "Neck_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Spine_04_FK_Ctrl.t" "Neck_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Spine_04_FK_Ctrl.rp" "Neck_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spine_04_FK_Ctrl.rpt" "Neck_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_04_FK_Ctrl.r" "Neck_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Spine_04_FK_Ctrl.ro" "Neck_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spine_04_FK_Ctrl.s" "Neck_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Spine_04_FK_Ctrl.pm" "Neck_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Neck_01_FK_Ctrl_Grp_parentConstraint1.w0" "Neck_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Neck_01_FK_Ctrl.FollowTranslate" "Neck_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Neck_01_FK_Ctrl_Grp.ro" "Neck_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Neck_01_FK_Ctrl_Grp.pim" "Neck_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Neck_01_FK_Ctrl_Grp.rp" "Neck_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Neck_01_FK_Ctrl_Grp.rpt" "Neck_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Spine_04_FK_Ctrl.t" "Neck_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Spine_04_FK_Ctrl.rp" "Neck_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spine_04_FK_Ctrl.rpt" "Neck_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spine_04_FK_Ctrl.r" "Neck_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Spine_04_FK_Ctrl.ro" "Neck_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spine_04_FK_Ctrl.s" "Neck_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Spine_04_FK_Ctrl.pm" "Neck_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Neck_01_FK_Ctrl_Grp_parentConstraint2.w0" "Neck_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Neck_01_FK_Ctrl.FollowRotate" "Neck_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Head_FK_Ctrl_Grp.pim" "Head_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Spine_03_FK_Ctrl.s" "Head_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Spine_03_FK_Ctrl.pm" "Head_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Head_FK_Ctrl_Grp_scaleConstraint1.w0" "Head_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_Clav_Ctrl_Grp_scaleConstraint1.csx" "L_Arm_Clav_Ctrl_Grp.sx";
connectAttr "L_Arm_Clav_Ctrl_Grp_scaleConstraint1.csy" "L_Arm_Clav_Ctrl_Grp.sy";
connectAttr "L_Arm_Clav_Ctrl_Grp_scaleConstraint1.csz" "L_Arm_Clav_Ctrl_Grp.sz";
connectAttr "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Clavical_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Clavical_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Clavical_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Clavical_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Clavical_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Clavical_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp.ro" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp.pim" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp.rp" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp.rpt" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Spine_03_FK_Ctrl.t" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Spine_03_FK_Ctrl.rp" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spine_03_FK_Ctrl.rpt" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_03_FK_Ctrl.r" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Spine_03_FK_Ctrl.ro" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spine_03_FK_Ctrl.s" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Spine_03_FK_Ctrl.pm" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Clavical_01_FK_Ctrl.FollowTranslate" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp.ro" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp.pim" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp.rp" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp.rpt" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Spine_03_FK_Ctrl.t" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Spine_03_FK_Ctrl.rp" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spine_03_FK_Ctrl.rpt" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spine_03_FK_Ctrl.r" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Spine_03_FK_Ctrl.ro" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spine_03_FK_Ctrl.s" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Spine_03_FK_Ctrl.pm" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Clavical_01_FK_Ctrl.FollowRotate" "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Arm_Clav_Ctrl_Grp.pim" "L_Arm_Clav_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "Spine_03_FK_Ctrl.s" "L_Arm_Clav_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Spine_03_FK_Ctrl.pm" "L_Arm_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_Clav_Ctrl_Grp_scaleConstraint1.w0" "L_Arm_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Arm_FK_Ctrl_Grp.sx";
connectAttr "L_Arm_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Arm_FK_Ctrl_Grp.sy";
connectAttr "L_Arm_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Arm_FK_Ctrl_Grp.sz";
connectAttr "ROOT_Ctrl.L_Arm_IKFK" "L_Arm_FK_Ctrl_Grp.v";
connectAttr "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Arm_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Arm_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Arm_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Arm_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Arm_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Arm_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp.ro" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp.pim" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp.rp" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp.rpt" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.t" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.rp" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Clavical_01_FK_Ctrl.rpt" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.r" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Clavical_01_FK_Ctrl.ro" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Clavical_01_FK_Ctrl.s" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Clavical_01_FK_Ctrl.pm" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_FK_Ctrl.FollowTranslate" "L_Arm_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp.ro" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp.pim" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp.rp" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp.rpt" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.t" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.rp" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Clavical_01_FK_Ctrl.rpt" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.r" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Clavical_01_FK_Ctrl.ro" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Clavical_01_FK_Ctrl.s" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Clavical_01_FK_Ctrl.pm" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Arm_01_FK_Ctrl.FollowRotate" "L_Arm_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Arm_02_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.cty" "L_Arm_02_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Arm_02_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.crx" "L_Arm_02_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.cry" "L_Arm_02_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.crz" "L_Arm_02_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp.ro" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp.pim" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp.rp" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp.rpt" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Arm_01_FK_Ctrl.t" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_01_FK_Ctrl.rp" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_01_FK_Ctrl.rpt" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_01_FK_Ctrl.r" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Arm_01_FK_Ctrl.ro" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Arm_01_FK_Ctrl.s" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Arm_01_FK_Ctrl.pm" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.w0" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_02_FK_Ctrl.FollowTranslate" "L_Arm_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp.ro" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp.pim" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp.rp" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp.rpt" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Arm_01_FK_Ctrl.t" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Arm_01_FK_Ctrl.rp" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Arm_01_FK_Ctrl.rpt" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Arm_01_FK_Ctrl.r" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Arm_01_FK_Ctrl.ro" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Arm_01_FK_Ctrl.s" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Arm_01_FK_Ctrl.pm" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.w0" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Arm_02_FK_Ctrl.FollowRotate" "L_Arm_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Arm_03_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.cty" "L_Arm_03_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Arm_03_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.crx" "L_Arm_03_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.cry" "L_Arm_03_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.crz" "L_Arm_03_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp.ro" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp.pim" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp.rp" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp.rpt" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Arm_02_FK_Ctrl.t" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_02_FK_Ctrl.rp" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_02_FK_Ctrl.rpt" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_02_FK_Ctrl.r" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Arm_02_FK_Ctrl.ro" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Arm_02_FK_Ctrl.s" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Arm_02_FK_Ctrl.pm" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.w0" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_03_FK_Ctrl.FollowTranslate" "L_Arm_03_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp.ro" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp.pim" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp.rp" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp.rpt" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Arm_02_FK_Ctrl.t" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Arm_02_FK_Ctrl.rp" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Arm_02_FK_Ctrl.rpt" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Arm_02_FK_Ctrl.r" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Arm_02_FK_Ctrl.ro" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Arm_02_FK_Ctrl.s" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Arm_02_FK_Ctrl.pm" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.w0" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Arm_03_FK_Ctrl.FollowRotate" "L_Arm_03_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Arm_FK_Ctrl_Grp.pim" "L_Arm_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "L_Clavical_01_FK_Ctrl.s" "L_Arm_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Clavical_01_FK_Ctrl.pm" "L_Arm_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Arm_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.crx" "L_Arm_IK_Main_Ctrl_Grp.rx"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.cry" "L_Arm_IK_Main_Ctrl_Grp.ry"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.crz" "L_Arm_IK_Main_Ctrl_Grp.rz"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.csx" "L_Arm_IK_Main_Ctrl_Grp.sx"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.csy" "L_Arm_IK_Main_Ctrl_Grp.sy"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.csz" "L_Arm_IK_Main_Ctrl_Grp.sz"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.ctx" "L_Arm_IK_Main_Ctrl_Grp.tx"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.cty" "L_Arm_IK_Main_Ctrl_Grp.ty"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.ctz" "L_Arm_IK_Main_Ctrl_Grp.tz"
		;
connectAttr "L_Arm_IKFK_REV.ox" "L_Arm_IK_Main_Ctrl_Grp.v";
connectAttr "L_Arm_01_IK_Jnt.msg" "L_Arm_IK_Handle.hsj";
connectAttr "effector1.hp" "L_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "L_Arm_IK_Handle.hsv";
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.ctx" "L_Arm_IK_Handle.pvx";
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.cty" "L_Arm_IK_Handle.pvy";
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.ctz" "L_Arm_IK_Handle.pvz";
connectAttr "L_Arm_IK_Handle.pim" "L_Arm_IK_Handle_poleVectorConstraint1.cpim";
connectAttr "L_Arm_01_IK_Jnt.pm" "L_Arm_IK_Handle_poleVectorConstraint1.ps";
connectAttr "L_Arm_01_IK_Jnt.t" "L_Arm_IK_Handle_poleVectorConstraint1.crp";
connectAttr "L_Arm_PV_Ctrl.t" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Arm_PV_Ctrl.rp" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_PV_Ctrl.rpt" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_PV_Ctrl.pm" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.w0" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp.ro" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp.pim" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp.rp" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp.rpt" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.t" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.rp" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Clavical_01_FK_Ctrl.rpt" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Clavical_01_FK_Ctrl.r" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Clavical_01_FK_Ctrl.ro" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Clavical_01_FK_Ctrl.s" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Clavical_01_FK_Ctrl.pm" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.w0" "L_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp.pim" "L_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Clavical_01_FK_Ctrl.s" "L_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Clavical_01_FK_Ctrl.pm" "L_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.w0" "L_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Hand_FK_Ctrl_Grp.sx";
connectAttr "L_Hand_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Hand_FK_Ctrl_Grp.sy";
connectAttr "L_Hand_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Hand_FK_Ctrl_Grp.sz";
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Hand_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Hand_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Hand_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.crx" "L_Hand_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.cry" "L_Hand_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.crz" "L_Hand_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.ro" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.pim" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.rp" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.rpt" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Arm_03_RK_Jnt.t" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_03_RK_Jnt.rp" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_03_RK_Jnt.rpt" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_03_RK_Jnt.r" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Arm_03_RK_Jnt.ro" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Arm_03_RK_Jnt.s" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Arm_03_RK_Jnt.pm" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_03_RK_Jnt.jo" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "L_Arm_03_RK_Jnt.ssc" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "L_Arm_03_RK_Jnt.is" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tis"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Hand_Cup_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Hand_Cup_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Hand_Cup_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Hand_Cup_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Hand_Cup_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Hand_Cup_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Hand_Cup_01_FK_Ctrl_Grp.sx"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Hand_Cup_01_FK_Ctrl_Grp.sy"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Hand_Cup_01_FK_Ctrl_Grp.sz"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp.ro" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp.pim" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp.rp" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp.rpt" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Hand_01_FK_Ctrl.t" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Hand_01_FK_Ctrl.rp" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_01_FK_Ctrl.rpt" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_01_FK_Ctrl.r" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Hand_01_FK_Ctrl.ro" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.FollowTranslate" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp.ro" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp.pim" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp.rp" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp.rpt" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Hand_01_FK_Ctrl.t" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Hand_01_FK_Ctrl.rp" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Hand_01_FK_Ctrl.rpt" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Hand_01_FK_Ctrl.r" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Hand_01_FK_Ctrl.ro" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.FollowRotate" "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp.pim" "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_01_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_01_FK_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_01_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_01_FK_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_01_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_01_FK_Ctrl_Grp.sz"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Hand_01_FK_Ctrl.t" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Hand_01_FK_Ctrl.rp" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_01_FK_Ctrl.rpt" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_01_FK_Ctrl.r" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Hand_01_FK_Ctrl.ro" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.FollowTranslate" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Hand_01_FK_Ctrl.t" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Hand_01_FK_Ctrl.rp" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Hand_01_FK_Ctrl.rpt" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Hand_01_FK_Ctrl.r" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Hand_01_FK_Ctrl.ro" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.FollowRotate" "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.t" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.rp" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.rpt" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.r" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.ro" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.s" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.pm" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.FollowTranslate" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.t" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.rp" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.rpt" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.r" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.ro" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.s" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_01_FK_Ctrl.pm" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.FollowRotate" "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.ro" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.pim" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.rp" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.rpt" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.t" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.rp" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.rpt" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.r" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.ro" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.s" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.pm" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.FollowTranslate" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.ro" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.pim" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.rp" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp.rpt" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.t" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.rp" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.rpt" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.r" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.ro" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.s" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Ctrl.pm" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Ctrl.FollowRotate" "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_01_FK_Ctrl_Grp.pim" "L_Finger_01_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_01_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_02_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_02_FK_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_02_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_02_FK_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_02_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_02_FK_Ctrl_Grp.sz"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Hand_01_FK_Ctrl.t" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Hand_01_FK_Ctrl.rp" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_01_FK_Ctrl.rpt" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_01_FK_Ctrl.r" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Hand_01_FK_Ctrl.ro" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.FollowTranslate" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Hand_01_FK_Ctrl.t" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Hand_01_FK_Ctrl.rp" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Hand_01_FK_Ctrl.rpt" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Hand_01_FK_Ctrl.r" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Hand_01_FK_Ctrl.ro" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.FollowRotate" "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.t" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.rp" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.rpt" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.r" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.ro" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.s" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.pm" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.FollowTranslate" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.t" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.rp" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.rpt" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.r" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.ro" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.s" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_02_Knuckle_01_FK_Ctrl.pm" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Ctrl.FollowRotate" "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_02_FK_Ctrl_Grp.pim" "L_Finger_02_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_02_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_02_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_02_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_02_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_03_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_03_FK_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_03_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_03_FK_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_03_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_03_FK_Ctrl_Grp.sz"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Hand_01_FK_Ctrl.t" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Hand_01_FK_Ctrl.rp" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_01_FK_Ctrl.rpt" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_01_FK_Ctrl.r" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Hand_01_FK_Ctrl.ro" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.FollowTranslate" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Hand_01_FK_Ctrl.t" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Hand_01_FK_Ctrl.rp" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Hand_01_FK_Ctrl.rpt" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Hand_01_FK_Ctrl.r" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Hand_01_FK_Ctrl.ro" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.FollowRotate" "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.t" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.rp" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.rpt" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.r" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.ro" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.s" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.pm" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.FollowTranslate" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.t" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.rp" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.rpt" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.r" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.ro" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.s" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_03_Knuckle_01_FK_Ctrl.pm" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Ctrl.FollowRotate" "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_03_FK_Ctrl_Grp.pim" "L_Finger_03_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_03_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_03_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_03_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_03_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_04_FK_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_04_FK_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_04_FK_Ctrl_Grp.sz"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.t" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rp" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rpt" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.r" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.ro" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.s" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.pm" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.FollowTranslate" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.t" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rp" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rpt" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.r" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.ro" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.s" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.pm" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.FollowRotate" "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.t" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.rp" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.rpt" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.r" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.ro" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.s" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.pm" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.FollowTranslate" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.t" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.rp" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.rpt" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.r" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.ro" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.s" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_04_Knuckle_01_FK_Ctrl.pm" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Ctrl.FollowRotate" "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_04_FK_Ctrl_Grp.pim" "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.s" "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.pm" "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_05_FK_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_05_FK_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_05_FK_Ctrl_Grp.sz"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.t" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rp" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rpt" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.r" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.ro" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.s" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.pm" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.FollowTranslate" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.ro" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.pim" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.rp" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp.rpt" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.t" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rp" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.rpt" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.r" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.ro" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.s" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.pm" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.FollowRotate" "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.t" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.rp" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.rpt" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.r" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.ro" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.s" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.pm" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.FollowTranslate" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.ro" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.pim" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.rp" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp.rpt" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.t" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.rp" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.rpt" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.r" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.ro" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.s" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl.pm" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Ctrl.FollowRotate" "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_05_FK_Ctrl_Grp.pim" "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.s" "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_Cup_01_FK_Ctrl.pm" "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_FK_Ctrl_Grp.pim" "L_Hand_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "L_Arm_03_RK_Jnt.s" "L_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_03_RK_Jnt.pm" "L_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Hand_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_Clav_Ctrl_Grp_scaleConstraint1.csx" "R_Arm_Clav_Ctrl_Grp.sx";
connectAttr "R_Arm_Clav_Ctrl_Grp_scaleConstraint1.csy" "R_Arm_Clav_Ctrl_Grp.sy";
connectAttr "R_Arm_Clav_Ctrl_Grp_scaleConstraint1.csz" "R_Arm_Clav_Ctrl_Grp.sz";
connectAttr "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Clavical_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Clavical_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Clavical_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Clavical_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Clavical_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Clavical_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp.ro" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp.pim" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp.rp" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp.rpt" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Spine_03_FK_Ctrl.t" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Spine_03_FK_Ctrl.rp" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spine_03_FK_Ctrl.rpt" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_03_FK_Ctrl.r" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Spine_03_FK_Ctrl.ro" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spine_03_FK_Ctrl.s" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Spine_03_FK_Ctrl.pm" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Clavical_01_FK_Ctrl.FollowTranslate" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp.ro" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp.pim" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp.rp" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp.rpt" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Spine_03_FK_Ctrl.t" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Spine_03_FK_Ctrl.rp" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spine_03_FK_Ctrl.rpt" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spine_03_FK_Ctrl.r" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Spine_03_FK_Ctrl.ro" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spine_03_FK_Ctrl.s" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Spine_03_FK_Ctrl.pm" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Clavical_01_FK_Ctrl.FollowRotate" "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Arm_Clav_Ctrl_Grp.pim" "R_Arm_Clav_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "Spine_03_FK_Ctrl.s" "R_Arm_Clav_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Spine_03_FK_Ctrl.pm" "R_Arm_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_Clav_Ctrl_Grp_scaleConstraint1.w0" "R_Arm_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Arm_FK_Ctrl_Grp.sx";
connectAttr "R_Arm_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Arm_FK_Ctrl_Grp.sy";
connectAttr "R_Arm_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Arm_FK_Ctrl_Grp.sz";
connectAttr "ROOT_Ctrl.R_Arm_IKFK" "R_Arm_FK_Ctrl_Grp.v";
connectAttr "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Arm_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Arm_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Arm_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Arm_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Arm_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Arm_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp.ro" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp.pim" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp.rp" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp.rpt" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.t" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.rp" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Clavical_01_FK_Ctrl.rpt" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.r" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Clavical_01_FK_Ctrl.ro" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Clavical_01_FK_Ctrl.s" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Clavical_01_FK_Ctrl.pm" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_FK_Ctrl.FollowTranslate" "R_Arm_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp.ro" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp.pim" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp.rp" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp.rpt" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.t" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.rp" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Clavical_01_FK_Ctrl.rpt" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.r" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Clavical_01_FK_Ctrl.ro" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Clavical_01_FK_Ctrl.s" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Clavical_01_FK_Ctrl.pm" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Arm_01_FK_Ctrl.FollowRotate" "R_Arm_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Arm_02_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.cty" "R_Arm_02_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Arm_02_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.crx" "R_Arm_02_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.cry" "R_Arm_02_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.crz" "R_Arm_02_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp.ro" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp.pim" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp.rp" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp.rpt" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Arm_01_FK_Ctrl.t" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_01_FK_Ctrl.rp" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_01_FK_Ctrl.rpt" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_01_FK_Ctrl.r" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Arm_01_FK_Ctrl.ro" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Arm_01_FK_Ctrl.s" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Arm_01_FK_Ctrl.pm" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.w0" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_02_FK_Ctrl.FollowTranslate" "R_Arm_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp.ro" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp.pim" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp.rp" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp.rpt" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Arm_01_FK_Ctrl.t" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Arm_01_FK_Ctrl.rp" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Arm_01_FK_Ctrl.rpt" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Arm_01_FK_Ctrl.r" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Arm_01_FK_Ctrl.ro" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Arm_01_FK_Ctrl.s" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Arm_01_FK_Ctrl.pm" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.w0" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Arm_02_FK_Ctrl.FollowRotate" "R_Arm_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Arm_03_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.cty" "R_Arm_03_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Arm_03_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.crx" "R_Arm_03_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.cry" "R_Arm_03_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.crz" "R_Arm_03_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp.ro" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp.pim" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp.rp" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp.rpt" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Arm_02_FK_Ctrl.t" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_02_FK_Ctrl.rp" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_02_FK_Ctrl.rpt" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_02_FK_Ctrl.r" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Arm_02_FK_Ctrl.ro" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Arm_02_FK_Ctrl.s" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Arm_02_FK_Ctrl.pm" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.w0" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_03_FK_Ctrl.FollowTranslate" "R_Arm_03_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp.ro" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp.pim" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp.rp" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp.rpt" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Arm_02_FK_Ctrl.t" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Arm_02_FK_Ctrl.rp" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Arm_02_FK_Ctrl.rpt" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Arm_02_FK_Ctrl.r" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Arm_02_FK_Ctrl.ro" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Arm_02_FK_Ctrl.s" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Arm_02_FK_Ctrl.pm" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.w0" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Arm_03_FK_Ctrl.FollowRotate" "R_Arm_03_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Arm_FK_Ctrl_Grp.pim" "R_Arm_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "R_Clavical_01_FK_Ctrl.s" "R_Arm_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Clavical_01_FK_Ctrl.pm" "R_Arm_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Arm_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.ctx" "R_Arm_IK_Main_Ctrl_Grp.tx"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.cty" "R_Arm_IK_Main_Ctrl_Grp.ty"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.ctz" "R_Arm_IK_Main_Ctrl_Grp.tz"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.crx" "R_Arm_IK_Main_Ctrl_Grp.rx"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.cry" "R_Arm_IK_Main_Ctrl_Grp.ry"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.crz" "R_Arm_IK_Main_Ctrl_Grp.rz"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.csx" "R_Arm_IK_Main_Ctrl_Grp.sx"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.csy" "R_Arm_IK_Main_Ctrl_Grp.sy"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.csz" "R_Arm_IK_Main_Ctrl_Grp.sz"
		;
connectAttr "R_Arm_IKFK_REV.ox" "R_Arm_IK_Main_Ctrl_Grp.v";
connectAttr "R_Arm_01_IK_Jnt.msg" "R_Arm_IK_Handle.hsj";
connectAttr "effector2.hp" "R_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "R_Arm_IK_Handle.hsv";
connectAttr "R_Arm_IK_Handle_poleVectorConstraint1.ctx" "R_Arm_IK_Handle.pvx";
connectAttr "R_Arm_IK_Handle_poleVectorConstraint1.cty" "R_Arm_IK_Handle.pvy";
connectAttr "R_Arm_IK_Handle_poleVectorConstraint1.ctz" "R_Arm_IK_Handle.pvz";
connectAttr "R_Arm_IK_Handle.pim" "R_Arm_IK_Handle_poleVectorConstraint1.cpim";
connectAttr "R_Arm_01_IK_Jnt.pm" "R_Arm_IK_Handle_poleVectorConstraint1.ps";
connectAttr "R_Arm_01_IK_Jnt.t" "R_Arm_IK_Handle_poleVectorConstraint1.crp";
connectAttr "R_Arm_PV_Ctrl.t" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Arm_PV_Ctrl.rp" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_PV_Ctrl.rpt" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_PV_Ctrl.pm" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_IK_Handle_poleVectorConstraint1.w0" "R_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp.ro" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp.pim" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp.rp" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp.rpt" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.t" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.rp" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Clavical_01_FK_Ctrl.rpt" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Clavical_01_FK_Ctrl.r" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Clavical_01_FK_Ctrl.ro" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Clavical_01_FK_Ctrl.s" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Clavical_01_FK_Ctrl.pm" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.w0" "R_Arm_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp.pim" "R_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Clavical_01_FK_Ctrl.s" "R_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Clavical_01_FK_Ctrl.pm" "R_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.w0" "R_Arm_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Hand_FK_Ctrl_Grp.sx";
connectAttr "R_Hand_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Hand_FK_Ctrl_Grp.sy";
connectAttr "R_Hand_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Hand_FK_Ctrl_Grp.sz";
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Hand_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Hand_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Hand_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.crx" "R_Hand_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.cry" "R_Hand_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.crz" "R_Hand_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.ro" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.pim" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.rp" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.rpt" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Arm_03_RK_Jnt.t" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_03_RK_Jnt.rp" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_03_RK_Jnt.rpt" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_03_RK_Jnt.r" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Arm_03_RK_Jnt.ro" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Arm_03_RK_Jnt.s" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Arm_03_RK_Jnt.pm" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_03_RK_Jnt.jo" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "R_Arm_03_RK_Jnt.ssc" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "R_Arm_03_RK_Jnt.is" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tis"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Hand_Cup_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Hand_Cup_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Hand_Cup_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Hand_Cup_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Hand_Cup_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Hand_Cup_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Hand_Cup_01_FK_Ctrl_Grp.sx"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Hand_Cup_01_FK_Ctrl_Grp.sy"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Hand_Cup_01_FK_Ctrl_Grp.sz"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp.ro" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp.pim" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp.rp" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp.rpt" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Hand_01_FK_Ctrl.t" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Hand_01_FK_Ctrl.rp" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_01_FK_Ctrl.rpt" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_01_FK_Ctrl.r" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Hand_01_FK_Ctrl.ro" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.FollowTranslate" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp.ro" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp.pim" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp.rp" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp.rpt" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Hand_01_FK_Ctrl.t" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Hand_01_FK_Ctrl.rp" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Hand_01_FK_Ctrl.rpt" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Hand_01_FK_Ctrl.r" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Hand_01_FK_Ctrl.ro" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.FollowRotate" "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp.pim" "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_01_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_01_FK_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_01_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_01_FK_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_01_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_01_FK_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Hand_01_FK_Ctrl.t" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Hand_01_FK_Ctrl.rp" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_01_FK_Ctrl.rpt" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_01_FK_Ctrl.r" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Hand_01_FK_Ctrl.ro" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.FollowTranslate" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Hand_01_FK_Ctrl.t" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Hand_01_FK_Ctrl.rp" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Hand_01_FK_Ctrl.rpt" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Hand_01_FK_Ctrl.r" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Hand_01_FK_Ctrl.ro" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.FollowRotate" "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.t" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.rp" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.rpt" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.r" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.ro" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.s" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.pm" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.FollowTranslate" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.t" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.rp" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.rpt" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.r" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.ro" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.s" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_01_FK_Ctrl.pm" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.FollowRotate" "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.ro" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.pim" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.rp" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.rpt" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.t" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.rp" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.rpt" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.r" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.ro" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.s" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.pm" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.FollowTranslate" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.ro" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.pim" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.rp" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp.rpt" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.t" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.rp" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.rpt" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.r" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.ro" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.s" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Ctrl.pm" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Ctrl.FollowRotate" "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_01_FK_Ctrl_Grp.pim" "R_Finger_01_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_01_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_02_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_02_FK_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_02_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_02_FK_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_02_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_02_FK_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Hand_01_FK_Ctrl.t" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Hand_01_FK_Ctrl.rp" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_01_FK_Ctrl.rpt" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_01_FK_Ctrl.r" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Hand_01_FK_Ctrl.ro" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.FollowTranslate" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Hand_01_FK_Ctrl.t" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Hand_01_FK_Ctrl.rp" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Hand_01_FK_Ctrl.rpt" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Hand_01_FK_Ctrl.r" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Hand_01_FK_Ctrl.ro" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.FollowRotate" "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.t" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.rp" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.rpt" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.r" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.ro" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.s" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.pm" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.FollowTranslate" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.t" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.rp" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.rpt" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.r" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.ro" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.s" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_02_Knuckle_01_FK_Ctrl.pm" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Ctrl.FollowRotate" "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_02_FK_Ctrl_Grp.pim" "R_Finger_02_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_02_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_02_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_02_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_02_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_03_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_03_FK_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_03_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_03_FK_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_03_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_03_FK_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Hand_01_FK_Ctrl.t" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Hand_01_FK_Ctrl.rp" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_01_FK_Ctrl.rpt" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_01_FK_Ctrl.r" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Hand_01_FK_Ctrl.ro" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.FollowTranslate" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Hand_01_FK_Ctrl.t" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Hand_01_FK_Ctrl.rp" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Hand_01_FK_Ctrl.rpt" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Hand_01_FK_Ctrl.r" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Hand_01_FK_Ctrl.ro" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.FollowRotate" "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.t" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.rp" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.rpt" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.r" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.ro" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.s" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.pm" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.FollowTranslate" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.t" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.rp" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.rpt" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.r" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.ro" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.s" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_03_Knuckle_01_FK_Ctrl.pm" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Ctrl.FollowRotate" "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_03_FK_Ctrl_Grp.pim" "R_Finger_03_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_03_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_03_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_03_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_03_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_04_FK_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_04_FK_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_04_FK_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.t" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rp" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rpt" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.r" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.ro" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.s" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.pm" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.FollowTranslate" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.t" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rp" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rpt" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.r" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.ro" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.s" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.pm" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.FollowRotate" "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.t" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.rp" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.rpt" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.r" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.ro" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.s" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.pm" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.FollowTranslate" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.t" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.rp" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.rpt" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.r" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.ro" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.s" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_04_Knuckle_01_FK_Ctrl.pm" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Ctrl.FollowRotate" "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_04_FK_Ctrl_Grp.pim" "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.s" "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.pm" "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_05_FK_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_05_FK_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_05_FK_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.t" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rp" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rpt" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.r" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.ro" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.s" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.pm" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.FollowTranslate" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.ro" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.pim" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.rp" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp.rpt" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.t" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rp" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.rpt" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.r" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.ro" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.s" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.pm" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.FollowRotate" "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cty" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crx" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cry" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crz" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.t" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.rp" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.rpt" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.r" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.ro" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.s" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.pm" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.FollowTranslate" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.ro" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.pim" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.rp" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp.rpt" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.t" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.rp" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.rpt" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.r" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.ro" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.s" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl.pm" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Ctrl.FollowRotate" "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_05_FK_Ctrl_Grp.pim" "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.s" "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_Cup_01_FK_Ctrl.pm" "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_FK_Ctrl_Grp.pim" "R_Hand_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "R_Arm_03_RK_Jnt.s" "R_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_03_RK_Jnt.pm" "R_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Hand_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Leg_Clav_FK_Ctrl_Grp.sx"
		;
connectAttr "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Leg_Clav_FK_Ctrl_Grp.sy"
		;
connectAttr "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Leg_Clav_FK_Ctrl_Grp.sz"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Leg_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Leg_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Leg_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Leg_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Leg_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Leg_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp.ro" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp.pim" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp.rp" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp.rpt" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Pelvis_01_FK_Ctrl.t" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Pelvis_01_FK_Ctrl.rp" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Pelvis_01_FK_Ctrl.rpt" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Pelvis_01_FK_Ctrl.r" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Pelvis_01_FK_Ctrl.ro" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Pelvis_01_FK_Ctrl.s" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Pelvis_01_FK_Ctrl.pm" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_01_FK_Ctrl.FollowTranslate" "L_Leg_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp.ro" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp.pim" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp.rp" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp.rpt" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Pelvis_01_FK_Ctrl.t" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Pelvis_01_FK_Ctrl.rp" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Pelvis_01_FK_Ctrl.rpt" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Pelvis_01_FK_Ctrl.r" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Pelvis_01_FK_Ctrl.ro" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Pelvis_01_FK_Ctrl.s" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Pelvis_01_FK_Ctrl.pm" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Leg_01_FK_Ctrl.FollowRotate" "L_Leg_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Leg_Clav_FK_Ctrl_Grp.pim" "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "Pelvis_01_FK_Ctrl.s" "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Pelvis_01_FK_Ctrl.pm" "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Leg_FK_Ctrl_Grp.sx";
connectAttr "L_Leg_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Leg_FK_Ctrl_Grp.sy";
connectAttr "L_Leg_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Leg_FK_Ctrl_Grp.sz";
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Leg_FK_Ctrl_Grp.v";
connectAttr "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Leg_02_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.cty" "L_Leg_02_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Leg_02_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.crx" "L_Leg_02_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.cry" "L_Leg_02_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.crz" "L_Leg_02_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp.ro" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp.pim" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp.rp" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp.rpt" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Leg_01_FK_Ctrl.t" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Leg_01_FK_Ctrl.rp" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Leg_01_FK_Ctrl.rpt" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_01_FK_Ctrl.r" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Leg_01_FK_Ctrl.ro" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Leg_01_FK_Ctrl.s" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Leg_01_FK_Ctrl.pm" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.w0" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_02_FK_Ctrl.FollowTranslate" "L_Leg_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp.ro" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp.pim" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp.rp" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp.rpt" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Leg_01_FK_Ctrl.t" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Leg_01_FK_Ctrl.rp" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Leg_01_FK_Ctrl.rpt" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Leg_01_FK_Ctrl.r" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Leg_01_FK_Ctrl.ro" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Leg_01_FK_Ctrl.s" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Leg_01_FK_Ctrl.pm" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.w0" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Leg_02_FK_Ctrl.FollowRotate" "L_Leg_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Leg_03_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.cty" "L_Leg_03_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Leg_03_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.crx" "L_Leg_03_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.cry" "L_Leg_03_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.crz" "L_Leg_03_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp.ro" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp.pim" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp.rp" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp.rpt" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Leg_02_FK_Ctrl.t" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Leg_02_FK_Ctrl.rp" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Leg_02_FK_Ctrl.rpt" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_02_FK_Ctrl.r" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Leg_02_FK_Ctrl.ro" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Leg_02_FK_Ctrl.s" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Leg_02_FK_Ctrl.pm" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.w0" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_03_FK_Ctrl.FollowTranslate" "L_Leg_03_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp.ro" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp.pim" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp.rp" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp.rpt" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Leg_02_FK_Ctrl.t" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Leg_02_FK_Ctrl.rp" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Leg_02_FK_Ctrl.rpt" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Leg_02_FK_Ctrl.r" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Leg_02_FK_Ctrl.ro" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Leg_02_FK_Ctrl.s" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Leg_02_FK_Ctrl.pm" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.w0" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Leg_03_FK_Ctrl.FollowRotate" "L_Leg_03_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Leg_04_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.cty" "L_Leg_04_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Leg_04_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.crx" "L_Leg_04_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.cry" "L_Leg_04_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.crz" "L_Leg_04_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp.ro" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp.pim" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp.rp" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp.rpt" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Leg_03_FK_Ctrl.t" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Leg_03_FK_Ctrl.rp" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Leg_03_FK_Ctrl.rpt" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_03_FK_Ctrl.r" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Leg_03_FK_Ctrl.ro" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Leg_03_FK_Ctrl.s" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Leg_03_FK_Ctrl.pm" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.w0" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_04_FK_Ctrl.FollowTranslate" "L_Leg_04_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp.ro" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp.pim" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp.rp" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp.rpt" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Leg_03_FK_Ctrl.t" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Leg_03_FK_Ctrl.rp" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Leg_03_FK_Ctrl.rpt" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Leg_03_FK_Ctrl.r" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Leg_03_FK_Ctrl.ro" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Leg_03_FK_Ctrl.s" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Leg_03_FK_Ctrl.pm" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.w0" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Leg_04_FK_Ctrl.FollowRotate" "L_Leg_04_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Leg_FK_Ctrl_Grp.pim" "L_Leg_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "L_Leg_01_FK_Ctrl.s" "L_Leg_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_01_FK_Ctrl.pm" "L_Leg_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Leg_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Foot_FK_Ctrl_Grp.sx";
connectAttr "L_Foot_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Foot_FK_Ctrl_Grp.sy";
connectAttr "L_Foot_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Foot_FK_Ctrl_Grp.sz";
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Foot_FK_Ctrl_Grp.v";
connectAttr "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Foot_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Foot_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Foot_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Foot_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Foot_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Foot_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp.ro" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp.pim" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp.rp" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp.rpt" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Leg_04_FK_Ctrl.t" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Leg_04_FK_Ctrl.rp" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Leg_04_FK_Ctrl.rpt" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_04_FK_Ctrl.r" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Leg_04_FK_Ctrl.ro" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Leg_04_FK_Ctrl.s" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Leg_04_FK_Ctrl.pm" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_01_FK_Ctrl.FollowTranslate" "L_Foot_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp.ro" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp.pim" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp.rp" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp.rpt" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Leg_04_FK_Ctrl.t" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Leg_04_FK_Ctrl.rp" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Leg_04_FK_Ctrl.rpt" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Leg_04_FK_Ctrl.r" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Leg_04_FK_Ctrl.ro" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Leg_04_FK_Ctrl.s" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Leg_04_FK_Ctrl.pm" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Foot_01_FK_Ctrl.FollowRotate" "L_Foot_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Foot_02_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.cty" "L_Foot_02_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Foot_02_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.crx" "L_Foot_02_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.cry" "L_Foot_02_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.crz" "L_Foot_02_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp.ro" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp.pim" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp.rp" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp.rpt" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Foot_01_FK_Ctrl.t" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Foot_01_FK_Ctrl.rp" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Foot_01_FK_Ctrl.rpt" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Foot_01_FK_Ctrl.r" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Foot_01_FK_Ctrl.ro" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Foot_01_FK_Ctrl.s" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Foot_01_FK_Ctrl.pm" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.w0" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Foot_02_FK_Ctrl.FollowTranslate" "L_Foot_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp.ro" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp.pim" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp.rp" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp.rpt" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Foot_01_FK_Ctrl.t" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Foot_01_FK_Ctrl.rp" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Foot_01_FK_Ctrl.rpt" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Foot_01_FK_Ctrl.r" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Foot_01_FK_Ctrl.ro" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Foot_01_FK_Ctrl.s" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Foot_01_FK_Ctrl.pm" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.w0" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Foot_02_FK_Ctrl.FollowRotate" "L_Foot_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Foot_FK_Ctrl_Grp.pim" "L_Foot_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "L_Leg_04_FK_Ctrl.s" "L_Foot_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_04_FK_Ctrl.pm" "L_Foot_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Foot_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Foot_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.ctx" "L_Leg_IK_Main_Ctrl_Grp.tx"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.cty" "L_Leg_IK_Main_Ctrl_Grp.ty"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.ctz" "L_Leg_IK_Main_Ctrl_Grp.tz"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.crx" "L_Leg_IK_Main_Ctrl_Grp.rx"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.cry" "L_Leg_IK_Main_Ctrl_Grp.ry"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.crz" "L_Leg_IK_Main_Ctrl_Grp.rz"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.csx" "L_Leg_IK_Main_Ctrl_Grp.sx"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.csy" "L_Leg_IK_Main_Ctrl_Grp.sy"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.csz" "L_Leg_IK_Main_Ctrl_Grp.sz"
		;
connectAttr "L_Leg_IKFK_REV.ox" "L_Leg_IK_Main_Ctrl_Grp.v";
connectAttr "L_Heel_Offset_IK_Reverse_Jnt_rotateZ.o" "L_Heel_Offset_IK_Reverse_Jnt.rz"
		;
connectAttr "unitConversion1.o" "L_Heel_IK_Reverse_Jnt.rz";
connectAttr "unitConversion2.o" "L_Heel_IK_Reverse_Jnt.rx";
connectAttr "unitConversion3.o" "L_Heel_IK_Reverse_Jnt.ry";
connectAttr "L_Heel_Offset_IK_Reverse_Jnt.s" "L_Heel_IK_Reverse_Jnt.is";
connectAttr "L_Heel_IK_Reverse_Jnt.s" "L_Toe_Offset_IK_Reverse_Jnt.is";
connectAttr "L_Toe_Offset_IK_Reverse_Jnt_rotateZ.o" "L_Toe_Offset_IK_Reverse_Jnt.rz"
		;
connectAttr "L_Toe_Offset_IK_Reverse_Jnt.s" "L_Toe_IK_Reverse_Jnt.is";
connectAttr "unitConversion4.o" "L_Toe_IK_Reverse_Jnt.rz";
connectAttr "unitConversion5.o" "L_Toe_IK_Reverse_Jnt.rx";
connectAttr "unitConversion6.o" "L_Toe_IK_Reverse_Jnt.ry";
connectAttr "L_Toe_IK_Reverse_Jnt.s" "L_Toe_Tap_01_IK_Reverse_Jnt.is";
connectAttr "unitConversion10.o" "L_Toe_Tap_01_IK_Reverse_Jnt.rz";
connectAttr "unitConversion11.o" "L_Toe_Tap_01_IK_Reverse_Jnt.rx";
connectAttr "unitConversion12.o" "L_Toe_Tap_01_IK_Reverse_Jnt.ry";
connectAttr "L_Toe_Tap_01_IK_Reverse_Jnt.s" "L_Toe_Tap_02_IK_Reverse_Jnt.is";
connectAttr "L_Foot_02_IK_Jnt.msg" "L_Foot_02_IK_Reverse_Handle.hsj";
connectAttr "effector6.hp" "L_Foot_02_IK_Reverse_Handle.hee";
connectAttr "ikSCsolver.msg" "L_Foot_02_IK_Reverse_Handle.hsv";
connectAttr "L_Toe_IK_Reverse_Jnt.s" "L_Ball_Offset_IK_Reverse_Jnt.is";
connectAttr "L_Ball_Offset_IK_Reverse_Jnt_rotateZ.o" "L_Ball_Offset_IK_Reverse_Jnt.rz"
		;
connectAttr "L_Ball_Offset_IK_Reverse_Jnt.s" "L_Ball_IK_Reverse_Jnt.is";
connectAttr "unitConversion7.o" "L_Ball_IK_Reverse_Jnt.rz";
connectAttr "unitConversion8.o" "L_Ball_IK_Reverse_Jnt.rx";
connectAttr "unitConversion9.o" "L_Ball_IK_Reverse_Jnt.ry";
connectAttr "L_Ball_IK_Reverse_Jnt.s" "L_Ankle_IK_Reverse_Jnt.is";
connectAttr "L_Foot_01_IK_Jnt.msg" "L_Foot_01_IK_Reverse_Handle.hsj";
connectAttr "effector5.hp" "L_Foot_01_IK_Reverse_Handle.hee";
connectAttr "ikSCsolver.msg" "L_Foot_01_IK_Reverse_Handle.hsv";
connectAttr "L_Leg_02_IK_Jnt.msg" "L_Leg_IK_Handle.hsj";
connectAttr "effector3.hp" "L_Leg_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "L_Leg_IK_Handle.hsv";
connectAttr "L_Leg_IK_Handle_poleVectorConstraint1.ctx" "L_Leg_IK_Handle.pvx";
connectAttr "L_Leg_IK_Handle_poleVectorConstraint1.cty" "L_Leg_IK_Handle.pvy";
connectAttr "L_Leg_IK_Handle_poleVectorConstraint1.ctz" "L_Leg_IK_Handle.pvz";
connectAttr "L_Leg_IK_Handle.pim" "L_Leg_IK_Handle_poleVectorConstraint1.cpim";
connectAttr "L_Leg_02_IK_Jnt.pm" "L_Leg_IK_Handle_poleVectorConstraint1.ps";
connectAttr "L_Leg_02_IK_Jnt.t" "L_Leg_IK_Handle_poleVectorConstraint1.crp";
connectAttr "L_Leg_PV_Ctrl.t" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg_PV_Ctrl.rp" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_Leg_PV_Ctrl.rpt" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_PV_Ctrl.pm" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_IK_Handle_poleVectorConstraint1.w0" "L_Leg_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp.ro" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp.pim" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp.rp" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp.rpt" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Leg_01_FK_Ctrl.t" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Leg_01_FK_Ctrl.rp" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Leg_01_FK_Ctrl.rpt" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_01_FK_Ctrl.r" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Leg_01_FK_Ctrl.ro" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Leg_01_FK_Ctrl.s" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Leg_01_FK_Ctrl.pm" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.w0" "L_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp.pim" "L_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Leg_01_FK_Ctrl.s" "L_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Leg_01_FK_Ctrl.pm" "L_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.w0" "L_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_Clav_Ctrl_Grp_scaleConstraint1.csx" "R_Leg_Clav_Ctrl_Grp.sx";
connectAttr "R_Leg_Clav_Ctrl_Grp_scaleConstraint1.csy" "R_Leg_Clav_Ctrl_Grp.sy";
connectAttr "R_Leg_Clav_Ctrl_Grp_scaleConstraint1.csz" "R_Leg_Clav_Ctrl_Grp.sz";
connectAttr "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Leg_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Leg_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Leg_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Leg_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Leg_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Leg_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp.ro" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp.pim" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp.rp" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp.rpt" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Pelvis_01_FK_Ctrl.t" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Pelvis_01_FK_Ctrl.rp" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Pelvis_01_FK_Ctrl.rpt" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Pelvis_01_FK_Ctrl.r" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Pelvis_01_FK_Ctrl.ro" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Pelvis_01_FK_Ctrl.s" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Pelvis_01_FK_Ctrl.pm" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_01_FK_Ctrl.FollowTranslate" "R_Leg_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp.ro" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp.pim" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp.rp" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp.rpt" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Pelvis_01_FK_Ctrl.t" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Pelvis_01_FK_Ctrl.rp" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Pelvis_01_FK_Ctrl.rpt" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Pelvis_01_FK_Ctrl.r" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Pelvis_01_FK_Ctrl.ro" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Pelvis_01_FK_Ctrl.s" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Pelvis_01_FK_Ctrl.pm" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Leg_01_FK_Ctrl.FollowRotate" "R_Leg_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Leg_Clav_Ctrl_Grp.pim" "R_Leg_Clav_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "Pelvis_01_FK_Ctrl.s" "R_Leg_Clav_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Pelvis_01_FK_Ctrl.pm" "R_Leg_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_Clav_Ctrl_Grp_scaleConstraint1.w0" "R_Leg_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Leg_FK_Ctrl_Grp.sx";
connectAttr "R_Leg_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Leg_FK_Ctrl_Grp.sy";
connectAttr "R_Leg_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Leg_FK_Ctrl_Grp.sz";
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Leg_FK_Ctrl_Grp.v";
connectAttr "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Leg_02_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.cty" "R_Leg_02_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Leg_02_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.crx" "R_Leg_02_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.cry" "R_Leg_02_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.crz" "R_Leg_02_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp.ro" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp.pim" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp.rp" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp.rpt" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Leg_01_FK_Ctrl.t" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Leg_01_FK_Ctrl.rp" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Leg_01_FK_Ctrl.rpt" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_01_FK_Ctrl.r" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Leg_01_FK_Ctrl.ro" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Leg_01_FK_Ctrl.s" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Leg_01_FK_Ctrl.pm" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.w0" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_02_FK_Ctrl.FollowTranslate" "R_Leg_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp.ro" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp.pim" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp.rp" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp.rpt" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Leg_01_FK_Ctrl.t" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Leg_01_FK_Ctrl.rp" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Leg_01_FK_Ctrl.rpt" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Leg_01_FK_Ctrl.r" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Leg_01_FK_Ctrl.ro" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Leg_01_FK_Ctrl.s" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Leg_01_FK_Ctrl.pm" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.w0" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Leg_02_FK_Ctrl.FollowRotate" "R_Leg_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Leg_03_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.cty" "R_Leg_03_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Leg_03_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.crx" "R_Leg_03_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.cry" "R_Leg_03_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.crz" "R_Leg_03_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp.ro" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp.pim" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp.rp" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp.rpt" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Leg_02_FK_Ctrl.t" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Leg_02_FK_Ctrl.rp" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Leg_02_FK_Ctrl.rpt" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_02_FK_Ctrl.r" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Leg_02_FK_Ctrl.ro" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Leg_02_FK_Ctrl.s" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Leg_02_FK_Ctrl.pm" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.w0" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_03_FK_Ctrl.FollowTranslate" "R_Leg_03_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp.ro" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp.pim" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp.rp" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp.rpt" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Leg_02_FK_Ctrl.t" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Leg_02_FK_Ctrl.rp" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Leg_02_FK_Ctrl.rpt" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Leg_02_FK_Ctrl.r" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Leg_02_FK_Ctrl.ro" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Leg_02_FK_Ctrl.s" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Leg_02_FK_Ctrl.pm" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.w0" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Leg_03_FK_Ctrl.FollowRotate" "R_Leg_03_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Leg_04_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.cty" "R_Leg_04_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Leg_04_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.crx" "R_Leg_04_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.cry" "R_Leg_04_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.crz" "R_Leg_04_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp.ro" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp.pim" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp.rp" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp.rpt" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Leg_03_FK_Ctrl.t" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Leg_03_FK_Ctrl.rp" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Leg_03_FK_Ctrl.rpt" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_03_FK_Ctrl.r" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Leg_03_FK_Ctrl.ro" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Leg_03_FK_Ctrl.s" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Leg_03_FK_Ctrl.pm" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.w0" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_04_FK_Ctrl.FollowTranslate" "R_Leg_04_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp.ro" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp.pim" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp.rp" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp.rpt" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Leg_03_FK_Ctrl.t" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Leg_03_FK_Ctrl.rp" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Leg_03_FK_Ctrl.rpt" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Leg_03_FK_Ctrl.r" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Leg_03_FK_Ctrl.ro" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Leg_03_FK_Ctrl.s" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Leg_03_FK_Ctrl.pm" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.w0" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Leg_04_FK_Ctrl.FollowRotate" "R_Leg_04_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Leg_FK_Ctrl_Grp.pim" "R_Leg_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "R_Leg_01_FK_Ctrl.s" "R_Leg_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_01_FK_Ctrl.pm" "R_Leg_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Leg_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Foot_FK_Ctrl_Grp.sx";
connectAttr "R_Foot_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Foot_FK_Ctrl_Grp.sy";
connectAttr "R_Foot_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Foot_FK_Ctrl_Grp.sz";
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Foot_FK_Ctrl_Grp.v";
connectAttr "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Foot_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Foot_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Foot_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Foot_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Foot_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Foot_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp.ro" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp.pim" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp.rp" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp.rpt" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Leg_04_FK_Ctrl.t" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Leg_04_FK_Ctrl.rp" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Leg_04_FK_Ctrl.rpt" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_04_FK_Ctrl.r" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Leg_04_FK_Ctrl.ro" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Leg_04_FK_Ctrl.s" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Leg_04_FK_Ctrl.pm" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_01_FK_Ctrl.FollowTranslate" "R_Foot_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp.ro" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp.pim" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp.rp" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp.rpt" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Leg_04_FK_Ctrl.t" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Leg_04_FK_Ctrl.rp" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Leg_04_FK_Ctrl.rpt" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Leg_04_FK_Ctrl.r" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Leg_04_FK_Ctrl.ro" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Leg_04_FK_Ctrl.s" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Leg_04_FK_Ctrl.pm" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Foot_01_FK_Ctrl.FollowRotate" "R_Foot_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Foot_02_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.cty" "R_Foot_02_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Foot_02_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.crx" "R_Foot_02_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.cry" "R_Foot_02_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.crz" "R_Foot_02_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp.ro" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp.pim" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp.rp" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp.rpt" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Foot_01_FK_Ctrl.t" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Foot_01_FK_Ctrl.rp" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Foot_01_FK_Ctrl.rpt" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Foot_01_FK_Ctrl.r" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Foot_01_FK_Ctrl.ro" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Foot_01_FK_Ctrl.s" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Foot_01_FK_Ctrl.pm" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.w0" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Foot_02_FK_Ctrl.FollowTranslate" "R_Foot_02_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp.ro" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp.pim" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp.rp" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp.rpt" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Foot_01_FK_Ctrl.t" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Foot_01_FK_Ctrl.rp" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Foot_01_FK_Ctrl.rpt" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Foot_01_FK_Ctrl.r" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Foot_01_FK_Ctrl.ro" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Foot_01_FK_Ctrl.s" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Foot_01_FK_Ctrl.pm" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.w0" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Foot_02_FK_Ctrl.FollowRotate" "R_Foot_02_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Foot_FK_Ctrl_Grp.pim" "R_Foot_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "R_Leg_04_FK_Ctrl.s" "R_Foot_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_04_FK_Ctrl.pm" "R_Foot_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Foot_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Foot_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.ctx" "R_Leg_IK_Main_Ctrl_Grp.tx"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.cty" "R_Leg_IK_Main_Ctrl_Grp.ty"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.ctz" "R_Leg_IK_Main_Ctrl_Grp.tz"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.crx" "R_Leg_IK_Main_Ctrl_Grp.rx"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.cry" "R_Leg_IK_Main_Ctrl_Grp.ry"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.crz" "R_Leg_IK_Main_Ctrl_Grp.rz"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.csx" "R_Leg_IK_Main_Ctrl_Grp.sx"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.csy" "R_Leg_IK_Main_Ctrl_Grp.sy"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.csz" "R_Leg_IK_Main_Ctrl_Grp.sz"
		;
connectAttr "R_Leg_IKFK_REV.ox" "R_Leg_IK_Main_Ctrl_Grp.v";
connectAttr "R_Heel_Offset_IK_Reverse_Jnt_rotateZ.o" "R_Heel_Offset_IK_Reverse_Jnt.rz"
		;
connectAttr "unitConversion13.o" "R_Heel_IK_Reverse_Jnt.rz";
connectAttr "unitConversion14.o" "R_Heel_IK_Reverse_Jnt.rx";
connectAttr "unitConversion15.o" "R_Heel_IK_Reverse_Jnt.ry";
connectAttr "R_Heel_Offset_IK_Reverse_Jnt.s" "R_Heel_IK_Reverse_Jnt.is";
connectAttr "R_Heel_IK_Reverse_Jnt.s" "R_Toe_Offset_IK_Reverse_Jnt.is";
connectAttr "R_Toe_Offset_IK_Reverse_Jnt_rotateZ.o" "R_Toe_Offset_IK_Reverse_Jnt.rz"
		;
connectAttr "R_Toe_Offset_IK_Reverse_Jnt.s" "R_Toe_IK_Reverse_Jnt.is";
connectAttr "unitConversion16.o" "R_Toe_IK_Reverse_Jnt.rz";
connectAttr "unitConversion17.o" "R_Toe_IK_Reverse_Jnt.rx";
connectAttr "unitConversion18.o" "R_Toe_IK_Reverse_Jnt.ry";
connectAttr "R_Toe_IK_Reverse_Jnt.s" "R_Toe_Tap_01_IK_Reverse_Jnt.is";
connectAttr "unitConversion22.o" "R_Toe_Tap_01_IK_Reverse_Jnt.rz";
connectAttr "unitConversion23.o" "R_Toe_Tap_01_IK_Reverse_Jnt.rx";
connectAttr "unitConversion24.o" "R_Toe_Tap_01_IK_Reverse_Jnt.ry";
connectAttr "R_Toe_Tap_01_IK_Reverse_Jnt.s" "R_Toe_Tap_02_IK_Reverse_Jnt.is";
connectAttr "R_Foot_02_IK_Jnt.msg" "R_Foot_02_IK_Reverse_Handle.hsj";
connectAttr "effector8.hp" "R_Foot_02_IK_Reverse_Handle.hee";
connectAttr "ikSCsolver.msg" "R_Foot_02_IK_Reverse_Handle.hsv";
connectAttr "R_Toe_IK_Reverse_Jnt.s" "R_Ball_Offset_IK_Reverse_Jnt.is";
connectAttr "R_Ball_Offset_IK_Reverse_Jnt_rotateZ.o" "R_Ball_Offset_IK_Reverse_Jnt.rz"
		;
connectAttr "R_Ball_Offset_IK_Reverse_Jnt.s" "R_Ball_IK_Reverse_Jnt.is";
connectAttr "unitConversion19.o" "R_Ball_IK_Reverse_Jnt.rz";
connectAttr "unitConversion20.o" "R_Ball_IK_Reverse_Jnt.rx";
connectAttr "unitConversion21.o" "R_Ball_IK_Reverse_Jnt.ry";
connectAttr "R_Ball_IK_Reverse_Jnt.s" "R_Ankle_IK_Reverse_Jnt.is";
connectAttr "R_Foot_01_IK_Jnt.msg" "R_Foot_01_IK_Reverse_Handle.hsj";
connectAttr "effector7.hp" "R_Foot_01_IK_Reverse_Handle.hee";
connectAttr "ikSCsolver.msg" "R_Foot_01_IK_Reverse_Handle.hsv";
connectAttr "R_Leg_02_IK_Jnt.msg" "R_Leg_IK_Handle.hsj";
connectAttr "effector4.hp" "R_Leg_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "R_Leg_IK_Handle.hsv";
connectAttr "R_Leg_IK_Handle_poleVectorConstraint1.ctx" "R_Leg_IK_Handle.pvx";
connectAttr "R_Leg_IK_Handle_poleVectorConstraint1.cty" "R_Leg_IK_Handle.pvy";
connectAttr "R_Leg_IK_Handle_poleVectorConstraint1.ctz" "R_Leg_IK_Handle.pvz";
connectAttr "R_Leg_IK_Handle.pim" "R_Leg_IK_Handle_poleVectorConstraint1.cpim";
connectAttr "R_Leg_02_IK_Jnt.pm" "R_Leg_IK_Handle_poleVectorConstraint1.ps";
connectAttr "R_Leg_02_IK_Jnt.t" "R_Leg_IK_Handle_poleVectorConstraint1.crp";
connectAttr "R_Leg_PV_Ctrl.t" "R_Leg_IK_Handle_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg_PV_Ctrl.rp" "R_Leg_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_Leg_PV_Ctrl.rpt" "R_Leg_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_PV_Ctrl.pm" "R_Leg_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_IK_Handle_poleVectorConstraint1.w0" "R_Leg_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp.ro" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp.pim" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp.rp" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp.rpt" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Leg_01_FK_Ctrl.t" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Leg_01_FK_Ctrl.rp" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Leg_01_FK_Ctrl.rpt" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_01_FK_Ctrl.r" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Leg_01_FK_Ctrl.ro" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Leg_01_FK_Ctrl.s" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Leg_01_FK_Ctrl.pm" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.w0" "R_Leg_IK_Main_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp.pim" "R_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Leg_01_FK_Ctrl.s" "R_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Leg_01_FK_Ctrl.pm" "R_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.w0" "R_Leg_IK_Main_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_parentConstraint1.ctx" "Goggle_01_FK_Ctrl_Grp.tx"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_parentConstraint1.cty" "Goggle_01_FK_Ctrl_Grp.ty"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_parentConstraint1.ctz" "Goggle_01_FK_Ctrl_Grp.tz"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_parentConstraint2.crx" "Goggle_01_FK_Ctrl_Grp.rx"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_parentConstraint2.cry" "Goggle_01_FK_Ctrl_Grp.ry"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_parentConstraint2.crz" "Goggle_01_FK_Ctrl_Grp.rz"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_scaleConstraint1.csx" "Goggle_01_FK_Ctrl_Grp.sx"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_scaleConstraint1.csy" "Goggle_01_FK_Ctrl_Grp.sy"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_scaleConstraint1.csz" "Goggle_01_FK_Ctrl_Grp.sz"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp.ro" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp.pim" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp.rp" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp.rpt" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Neck_01_FK_Ctrl.t" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Neck_01_FK_Ctrl.rp" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Neck_01_FK_Ctrl.rpt" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Neck_01_FK_Ctrl.r" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Neck_01_FK_Ctrl.ro" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Neck_01_FK_Ctrl.s" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Neck_01_FK_Ctrl.pm" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_parentConstraint1.w0" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Goggle_01_FK_Ctrl.FollowTranslate" "Goggle_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp.ro" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp.pim" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp.rp" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp.rpt" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Neck_01_FK_Ctrl.t" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "Neck_01_FK_Ctrl.rp" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Neck_01_FK_Ctrl.rpt" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Neck_01_FK_Ctrl.r" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "Neck_01_FK_Ctrl.ro" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Neck_01_FK_Ctrl.s" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "Neck_01_FK_Ctrl.pm" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_parentConstraint2.w0" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Goggle_01_FK_Ctrl.FollowRotate" "Goggle_01_FK_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp.pim" "Goggle_01_FK_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "Neck_01_FK_Ctrl.s" "Goggle_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Neck_01_FK_Ctrl.pm" "Goggle_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "Goggle_01_FK_Ctrl_Grp_scaleConstraint1.w0" "Goggle_01_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[2]" "Controls_Layer.id";
connectAttr "layerManager.dli[3]" "Skeleton_Layer.id";
connectAttr "ROOT_Ctrl.L_Arm_IKFK" "L_Arm_IKFK_REV.ix";
connectAttr "ROOT_Ctrl.R_Arm_IKFK" "R_Arm_IKFK_REV.ix";
connectAttr "ROOT_Ctrl.R_Leg_IKFK" "R_Leg_IKFK_REV.ix";
connectAttr "ROOT_Ctrl.L_Leg_IKFK" "L_Leg_IKFK_REV.ix";
connectAttr "L_Leg_IK_Ctrl.HeelTap" "unitConversion1.i";
connectAttr "L_Leg_IK_Ctrl.HeelTwist" "unitConversion2.i";
connectAttr "L_Leg_IK_Ctrl.HeelRoll" "unitConversion3.i";
connectAttr "L_Leg_IK_Ctrl.ToeTap" "unitConversion4.i";
connectAttr "L_Leg_IK_Ctrl.ToeTwist" "unitConversion5.i";
connectAttr "L_Leg_IK_Ctrl.ToeRoll" "unitConversion6.i";
connectAttr "L_Leg_IK_Ctrl.BallTap" "unitConversion7.i";
connectAttr "L_Leg_IK_Ctrl.BallTwist" "unitConversion8.i";
connectAttr "L_Leg_IK_Ctrl.BallRoll" "unitConversion9.i";
connectAttr "L_Leg_IK_Ctrl.TipTap" "unitConversion10.i";
connectAttr "L_Leg_IK_Ctrl.TipTwist" "unitConversion11.i";
connectAttr "L_Leg_IK_Ctrl.TipRoll" "unitConversion12.i";
connectAttr "R_Leg_IK_Ctrl.HeelTap" "unitConversion13.i";
connectAttr "R_Leg_IK_Ctrl.HeelTwist" "unitConversion14.i";
connectAttr "R_Leg_IK_Ctrl.HeelRoll" "unitConversion15.i";
connectAttr "R_Leg_IK_Ctrl.ToeTap" "unitConversion16.i";
connectAttr "R_Leg_IK_Ctrl.ToeTwist" "unitConversion17.i";
connectAttr "R_Leg_IK_Ctrl.ToeRoll" "unitConversion18.i";
connectAttr "R_Leg_IK_Ctrl.BallTap" "unitConversion19.i";
connectAttr "R_Leg_IK_Ctrl.BallTwist" "unitConversion20.i";
connectAttr "R_Leg_IK_Ctrl.BallRoll" "unitConversion21.i";
connectAttr "R_Leg_IK_Ctrl.TipTap" "unitConversion22.i";
connectAttr "R_Leg_IK_Ctrl.TipTwist" "unitConversion23.i";
connectAttr "R_Leg_IK_Ctrl.TipRoll" "unitConversion24.i";
connectAttr "L_Leg_IK_Ctrl.FootRoll" "L_Heel_Offset_IK_Reverse_Jnt_rotateZ.i";
connectAttr "L_Leg_IK_Ctrl.FootRoll" "L_Toe_Offset_IK_Reverse_Jnt_rotateZ.i";
connectAttr "L_Leg_IK_Ctrl.FootRoll" "L_Ball_Offset_IK_Reverse_Jnt_rotateZ.i";
connectAttr "R_Leg_IK_Ctrl.FootRoll" "R_Heel_Offset_IK_Reverse_Jnt_rotateZ.i";
connectAttr "R_Leg_IK_Ctrl.FootRoll" "R_Toe_Offset_IK_Reverse_Jnt_rotateZ.i";
connectAttr "R_Leg_IK_Ctrl.FootRoll" "R_Ball_Offset_IK_Reverse_Jnt_rotateZ.i";
connectAttr "L_Leg_IKFK_REV.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "ROOT_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "R_Leg_IKFK_REV.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "ROOT_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "L_Foot_01_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "R_Foot_01_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "R_Foot_02_RK_Jnt_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "L_Foot_01_RK_Jnt_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "R_Foot_02_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "L_Foot_03_RK_Jnt_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "R_Foot_03_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "R_Foot_01_RK_Jnt_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "L_Foot_02_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "L_Foot_02_RK_Jnt_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "R_Foot_03_RK_Jnt_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "L_Foot_03_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "L_Clav_01_FK_Translate_REV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_CLav_01_FK_Rotate_REV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Arm_IKFK_REV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_IKFK_REV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Leg_IKFK_REV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Leg_IKFK_REV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
// End of Takoto_Rig.ma
