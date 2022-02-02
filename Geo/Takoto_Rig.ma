//Maya ASCII 2022 scene
//Name: Takoto_Rig.ma
//Last modified: Wed, Feb 02, 2022 03:46:26 PM
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
fileInfo "UUID" "14CE01A8-41AF-76EC-C963-D5B2E0C8CF95";
createNode transform -s -n "persp";
	rename -uid "F1509FDE-4492-5299-1A37-E6B9EFE7DBA9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 24.25075978058327 138.21879812139713 488.44509458746688 ;
	setAttr ".r" -type "double3" 351.86164726412528 721.39999999994723 -1.1184976381767105e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0F00DEC8-4B13-0876-7E93-1994D60AD1BB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 507.70303963870509;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 17.517337214486002 39.458819687378153 3.2796490882574405 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D8C8EA00-4CC1-3E7E-98CB-739C6A6D0F46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CBE8D0ED-4185-C444-CA7C-8394C36F924C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "F804F427-4EE4-4116-9545-7EA7BEC60315";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B72D024C-4214-63AF-F6BA-9386AC2019B9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "9EB94366-47F3-3488-84AF-C0A0E8414575";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E36A839F-4CE9-7665-A5C6-56A48A6A2025";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
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
	setAttr ".jo" -type "double3" 0 0 4.3999241267888749 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "Goggle_01_FK_Jnt_parentConstraint1" -p "Goggle_01_FK_Jnt";
	rename -uid "4B08A748-4B67-44B4-D667-92A0F72AE2BB";
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
	setAttr ".tg[0].tot" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" 0 0 -2.3854160110976376e-15 ;
	setAttr ".rst" -type "double3" 22.828194873746597 14.800016773098378 -2.6271440060360851e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Goggle_01_FK_Jnt_scaleConstraint1" -p "Goggle_01_FK_Jnt";
	rename -uid "D9BF1615-4519-3D8C-B1A0-969F0D73115F";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck_01_FK_Jnt_parentConstraint1" -p "Neck_01_FK_Jnt";
	rename -uid "FF6D4ED5-4E44-7855-A616-BEA0EE431982";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 2.6645352591003757e-15 
		0 ;
	setAttr ".rst" -type "double3" 5.5694450981821859 3.5527136788005009e-15 1.9248862614083757e-17 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Neck_01_FK_Jnt_scaleConstraint1" -p "Neck_01_FK_Jnt";
	rename -uid "D6A38553-43EA-5C26-F954-0083A37BC695";
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
	rename -uid "71315C3D-46A7-7FF9-81EF-CF89015EB32A";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 2.6645352591003757e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.8288189418415221e-14 ;
	setAttr ".lr" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr ".rst" -type "double3" 9.8716697692871236 -1.5726258158683719 -4.175350716064934e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_04_FK_Jnt_scaleConstraint1" -p "Spine_04_FK_Jnt";
	rename -uid "2C10FEF5-44C1-58B9-525E-6CBEDC954F68";
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
	rename -uid "5895AD8F-46AC-D9FE-ECBB-CFA4D477C41E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073331631037 1.3429067857254053 0.63534752723488419 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Arm_02_FK_Jnt" -p "L_Arm_01_FK_Jnt";
	rename -uid "C56B0010-4276-8D02-CEC0-71B27B01F38B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Arm_03_FK_Jnt" -p "L_Arm_02_FK_Jnt";
	rename -uid "1DD8C203-472D-8571-1B1E-6FB539A6FE0A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode parentConstraint -n "L_Arm_03_FK_Jnt_parentConstraint1" -p "L_Arm_03_FK_Jnt";
	rename -uid "7FD9AAA1-4B81-2C7B-5B4A-BEA09FFB20E7";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 0 -8.5265128291212022e-14 ;
	setAttr ".rst" -type "double3" 14.466630739471196 -1.3988810110276972e-14 -1.4210854715202004e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_03_FK_Jnt_scaleConstraint1" -p "L_Arm_03_FK_Jnt";
	rename -uid "6FA7D6B1-4D5E-A9F0-C566-CE9ADFB42940";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_02_FK_Jnt_parentConstraint1" -p "L_Arm_02_FK_Jnt";
	rename -uid "A60329F9-49D0-8FEC-D2B2-B0BDF7D9C66E";
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
	setAttr ".tg[0].tot" -type "double3" -3.1974423109204508e-14 8.8817841970012523e-16 
		1.1368683772161603e-13 ;
	setAttr ".rst" -type "double3" 17.298623211828883 -2.6645352591003757e-15 4.2632564145606011e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_02_FK_Jnt_scaleConstraint1" -p "L_Arm_02_FK_Jnt";
	rename -uid "4DABEDE5-45E4-7C27-5DFB-22BB4C75D2E0";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_01_FK_Jnt_parentConstraint1" -p "L_Arm_01_FK_Jnt";
	rename -uid "C14AB783-4AB3-CF0A-D837-9CAEF4FB30CA";
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
	setAttr ".tg[0].tot" -type "double3" 0 2.2204460492503131e-16 8.5265128291212022e-14 ;
	setAttr ".tg[0].tor" -type "double3" -4.6801365176066674e-14 3.975693351829396e-16 
		5.2132443829774619e-16 ;
	setAttr ".lr" -type "double3" 4.6810683207360023e-14 -2.5952173094369725e-16 -4.4537277697434537e-16 ;
	setAttr ".rst" -type "double3" 6.2450352076889555 2.2204460492503131e-16 -2.8421709430404007e-14 ;
	setAttr ".rsrr" -type "double3" 4.6810683207360023e-14 -2.5952173094369725e-16 -4.4537277697434537e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_01_FK_Jnt_scaleConstraint1" -p "L_Arm_01_FK_Jnt";
	rename -uid "71937054-4805-EBC2-6939-2E95CCEC6912";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode joint -n "L_Arm_01_IK_Jnt" -p "L_Clavical_01_FK_Jnt";
	rename -uid "29082FF9-4549-F5AD-B7F7-9DA999D6FFDF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.2450352076889555 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073331631037 1.3429067857254053 0.63534752723488419 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Arm_02_IK_Jnt" -p "L_Arm_01_IK_Jnt";
	rename -uid "B5D0A1E4-4596-7CA2-CDB0-5096989B7C90";
	setAttr ".t" -type "double3" 17.29862321182889 -3.3306690738754696e-15 1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Arm_03_IK_Jnt" -p "L_Arm_02_IK_Jnt";
	rename -uid "9F9C3019-4424-3242-B50D-289DEEF2EC92";
	setAttr ".t" -type "double3" 14.466630739471192 -1.3766765505351941e-14 -1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode joint -n "L_Arm_01_RK_Jnt" -p "L_Clavical_01_FK_Jnt";
	rename -uid "DD17F102-4008-DFDB-DF1D-6FA8D58E737D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.2450352076889555 0 0 ;
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
	setAttr ".t" -type "double3" 17.29862321182889 -3.3306690738754696e-15 1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Arm_03_RK_Jnt" -p "L_Arm_02_RK_Jnt";
	rename -uid "788FE006-45F1-E34C-9CB2-468B2B2EEA2A";
	setAttr ".t" -type "double3" 14.466630739471192 -1.3766765505351941e-14 -1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode parentConstraint -n "L_Clavical_01_FK_Jnt_parentConstraint1" -p "L_Clavical_01_FK_Jnt";
	rename -uid "BEA8C6D7-45D3-BF0D-6150-95936BA72E20";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Clavical_01_FK_Jnt_scaleConstraint1" -p "L_Clavical_01_FK_Jnt";
	rename -uid "ACD1E96E-42C6-A4B9-77C0-B49BA3AFA1D7";
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
	rename -uid "AB2E0605-4063-5574-CB66-51B8FB7C9541";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073332947797 1.3429067857252246 0.63534752723475374 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Arm_02_FK_Jnt" -p "R_Arm_01_FK_Jnt";
	rename -uid "B9DD00D6-4FFC-7D56-A6AE-828276C57498";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Arm_03_FK_Jnt" -p "R_Arm_02_FK_Jnt";
	rename -uid "223ED1F9-4D5D-8397-8EF7-5D9C12C878C0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode parentConstraint -n "R_Arm_03_FK_Jnt_parentConstraint1" -p "R_Arm_03_FK_Jnt";
	rename -uid "13AEE0EB-4955-40EC-A68C-67AD23F03435";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 1.0123883145141122e-06 
		3.8336277796702234e-05 ;
	setAttr ".rst" -type "double3" -14.466561687799675 -4.4408920985006262e-16 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_03_FK_Jnt_scaleConstraint1" -p "R_Arm_03_FK_Jnt";
	rename -uid "88ADD2B8-42E2-01BD-CF2F-22B8CE241981";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_02_FK_Jnt_parentConstraint1" -p "R_Arm_02_FK_Jnt";
	rename -uid "C9CBB649-4EF7-3D61-8B16-A88AE5998AB3";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-14 6.6613381477509392e-16 
		-2.8421709430404007e-14 ;
	setAttr ".rst" -type "double3" -17.298644268687649 0 -1.4210854715202004e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_02_FK_Jnt_scaleConstraint1" -p "R_Arm_02_FK_Jnt";
	rename -uid "768FCA9E-4E97-3DF2-5CB2-3B89055854FA";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_01_FK_Jnt_parentConstraint1" -p "R_Arm_01_FK_Jnt";
	rename -uid "E0A111E1-4FE2-E672-0FBE-E99C8537F90D";
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-15 -1.1102230246251565e-15 
		-5.6843418860808015e-14 ;
	setAttr ".tg[0].tor" -type "double3" 2.3065233461472734e-14 1.9878466759146985e-16 
		-1.6636568371668911e-16 ;
	setAttr ".lr" -type "double3" -2.306833947190385e-14 -7.0904394372836229e-17 2.2669023005853402e-16 ;
	setAttr ".rst" -type "double3" -6.2450400000000013 6.6613381477509392e-16 -7.1054273576010019e-14 ;
	setAttr ".rsrr" -type "double3" -2.306833947190385e-14 -7.0904394372836229e-17 2.2669023005853402e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_01_FK_Jnt_scaleConstraint1" -p "R_Arm_01_FK_Jnt";
	rename -uid "29B39DC7-4C5F-AECA-B973-9B8ECCB435E9";
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
	rename -uid "40571459-4F7C-28FA-F0D9-C1BF2FADB2AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.2450400000000013 1.3322676295501878e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073332947797 1.3429067857252239 0.63534752723475352 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Arm_02_IK_Jnt" -p "R_Arm_01_IK_Jnt";
	rename -uid "F10E371C-4C00-8F14-8BFC-E9AC41E96347";
	setAttr ".t" -type "double3" -17.298644268687653 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Arm_03_IK_Jnt" -p "R_Arm_02_IK_Jnt";
	rename -uid "E0D9A20C-4A0F-CA3E-321C-23A999921078";
	setAttr ".t" -type "double3" -14.466561687799683 -1.0123883158463798e-06 -3.8336277881967362e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode joint -n "R_Arm_01_RK_Jnt" -p "R_Clavical_01_FK_Jnt";
	rename -uid "11DF0603-42CB-1328-D5A9-0B9962957251";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.2450400000000013 1.3322676295501878e-15 0 ;
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
	setAttr ".t" -type "double3" -17.298644268687653 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Arm_03_RK_Jnt" -p "R_Arm_02_RK_Jnt";
	rename -uid "84CF8192-4663-98A9-4B74-78A046872ABD";
	setAttr ".t" -type "double3" -14.466561687799683 -1.0123883158463798e-06 -3.8336277881967362e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode parentConstraint -n "R_Clavical_01_FK_Jnt_parentConstraint1" -p "R_Clavical_01_FK_Jnt";
	rename -uid "9B92427C-416C-E256-C2B4-0EA9CABDBCCE";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Clavical_01_FK_Jnt_scaleConstraint1" -p "R_Clavical_01_FK_Jnt";
	rename -uid "ED9EF8CC-47B5-F625-0D19-24BC47467F6D";
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
	rename -uid "25F788A4-45A5-E73C-AD86-CB851D618168";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 -3.944304526105059e-31 ;
	setAttr ".rst" -type "double3" 10.501300811767578 -1.45985007286072 -2.5905446547566668e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_03_FK_Jnt_scaleConstraint1" -p "Spine_03_FK_Jnt";
	rename -uid "7DA62519-4310-A994-52F5-3EB67758F21C";
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
	rename -uid "02E55968-445A-7720-807C-1088F5F94619";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_02_FK_Jnt_scaleConstraint1" -p "Spine_02_FK_Jnt";
	rename -uid "98F3FF26-4FDD-53DB-6D7D-2FAE9E904E76";
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
	rename -uid "214ACC63-44F4-8766-7F48-598D0EEE37FC";
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
createNode scaleConstraint -n "Spine_01_FK_Jnt_scaleConstraint1" -p "Spine_01_FK_Jnt";
	rename -uid "7F8F71CF-421A-C57D-A705-DCBA292D2771";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -2.0489174546204432e-13 0.35482540780393812 -6.0112437830075711 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Leg_03_FK_Jnt" -p "L_Leg_02_FK_Jnt";
	rename -uid "DC5F9739-470E-4B66-A5AB-9F90391F60E8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 1.1578334514342763 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode joint -n "L_Leg_04_FK_Jnt" -p "L_Leg_03_FK_Jnt";
	rename -uid "918D8B7B-4EAF-1216-7FA5-3DB115C377D8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
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
createNode parentConstraint -n "L_Foot_02_FK_Jnt_parentConstraint1" -p "L_Foot_02_FK_Jnt";
	rename -uid "9FDE0E98-4064-7D00-6344-1791B84E373D";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 9.7699626167013776e-15 
		-2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -4.7708320221952748e-14 ;
	setAttr ".lr" -type "double3" 0 0 4.7708320221952742e-14 ;
	setAttr ".rst" -type "double3" 12.71640698546577 0 -2.6645352591003757e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 4.4527765540489222e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Foot_02_FK_Jnt_scaleConstraint1" -p "L_Foot_02_FK_Jnt";
	rename -uid "76C93986-42CC-1C0A-99E0-A588D9DD7203";
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
	setAttr ".o" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Foot_01_FK_Jnt_parentConstraint1" -p "L_Foot_01_FK_Jnt";
	rename -uid "D0C2A837-4DCF-767F-E9F6-D0858A4F63B7";
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-15 1.3322676295501878e-14 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -4.447806937359137e-14 3.2799470152592518e-15 
		-2.4813140831583662e-14 ;
	setAttr ".lr" -type "double3" 4.4453221290142432e-14 -3.329643182157139e-15 5.0835975663261312e-14 ;
	setAttr ".rst" -type "double3" -0.024681606807780199 -0.00087748476257498709 0.010261807432264014 ;
	setAttr ".rsrr" -type "double3" 4.447806937359137e-14 -3.3296431821571339e-15 3.8113659874581275e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Foot_01_FK_Jnt_scaleConstraint1" -p "L_Foot_01_FK_Jnt";
	rename -uid "35756982-4103-11DD-F381-C8B580A8B4A0";
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
	setAttr ".o" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_04_FK_Jnt_parentConstraint1" -p "L_Leg_04_FK_Jnt";
	rename -uid "2D2A0A47-4A42-B0CC-CB0A-E3A0816E7583";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 1.7763568394002505e-15 
		3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 33.267266496368634 -8.8817841970012523e-16 4.4408920985006262e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_04_FK_Jnt_scaleConstraint1" -p "L_Leg_04_FK_Jnt";
	rename -uid "10F48D05-40F1-F1E7-B522-18A2790DDCE5";
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
	setAttr ".o" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_03_FK_Jnt_parentConstraint1" -p "L_Leg_03_FK_Jnt";
	rename -uid "CB94DBBE-448B-4266-2968-98ABF27FDC77";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 0 8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.0016484806311931e-14 ;
	setAttr ".lr" -type "double3" 0 0 -3.0016484806311938e-14 ;
	setAttr ".rst" -type "double3" 18.899732833631973 0 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.0016484806311938e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_03_FK_Jnt_scaleConstraint1" -p "L_Leg_03_FK_Jnt";
	rename -uid "4E9668B3-43B5-3676-097F-BFB2EB028299";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_02_FK_Jnt_parentConstraint1" -p "L_Leg_02_FK_Jnt";
	rename -uid "5C36D651-4BC0-0076-1D70-CC8364B11B7C";
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
	setAttr ".tg[0].tor" -type "double3" -4.3484146035634018e-17 6.4605016967227689e-16 
		7.1561715178215032e-15 ;
	setAttr ".lr" -type "double3" 4.0378135604517343e-17 -5.4840496674404514e-16 -7.1561873690266795e-15 ;
	setAttr ".rst" -type "double3" 3.789030499263994 0.18803441524505615 -3.1557986736297639 ;
	setAttr ".rsrr" -type "double3" 4.0378135604517343e-17 -5.4840496674404514e-16 -7.1561873690266795e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_02_FK_Jnt_scaleConstraint1" -p "L_Leg_02_FK_Jnt";
	rename -uid "6D623CF4-4A85-5BEF-74C4-8CA14313B0FC";
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
	setAttr -k on ".w0";
createNode joint -n "L_Leg_02_IK_Jnt" -p "L_Leg_01_FK_Jnt";
	rename -uid "486CED1E-427B-C715-DF8B-1A90889A5A5B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.789030499263994 0.18803441524505615 -3.1557986736297643 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0.35482540780393784 -6.0112437830075667 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Leg_03_IK_Jnt" -p "L_Leg_02_IK_Jnt";
	rename -uid "AC1B08D2-49B8-62D8-A259-DAB72C23B50E";
	setAttr ".t" -type "double3" 18.89973283363198 0 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 1.1578334514342756 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode joint -n "L_Leg_04_IK_Jnt" -p "L_Leg_03_IK_Jnt";
	rename -uid "070C96D5-40E0-6B6F-1458-BCA7DA66F002";
	setAttr ".t" -type "double3" 33.267266496368634 0 2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "L_Foot_01_IK_Jnt" -p "L_Leg_04_IK_Jnt";
	rename -uid "07CDFAAF-40B1-65F9-F0D6-ADA676EF9BA1";
	setAttr ".t" -type "double3" -0.024681606807778422 -0.00087748476257232255 0.010261807432266679 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872156369 -0.11246489350220028 69.759457814268629 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Foot_02_IK_Jnt" -p "L_Foot_01_IK_Jnt";
	rename -uid "986EA028-441B-AD08-35C0-D5BC632517C7";
	setAttr ".t" -type "double3" 12.716406985465769 0 -1.9114484300919443e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 25.094271303580335 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Foot_03_IK_Jnt" -p "L_Foot_02_IK_Jnt";
	rename -uid "17D662A1-4C33-D8C7-70BA-1DA3C75C8603";
	setAttr ".t" -type "double3" 9.1425663829806751 1.0150114028522722e-15 6.6276719873763217e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Leg_02_RK_Jnt" -p "L_Leg_01_FK_Jnt";
	rename -uid "5ECF1508-40FF-7644-8752-6493B6DFFCCB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.789030499263994 0.18803441524505615 -3.1557986736297643 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0.35482540780393762 -6.0112437830075631 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "L_Leg_03_RK_Jnt" -p "L_Leg_02_RK_Jnt";
	rename -uid "A0107DD8-492C-242C-6C85-F5A8E4DAEA80";
	setAttr ".t" -type "double3" 18.89973283363198 0 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 1.1578334514342752 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode joint -n "L_Leg_04_RK_Jnt" -p "L_Leg_03_RK_Jnt";
	rename -uid "5072CCC2-420D-79A2-0FBC-5BAC501FE73D";
	setAttr ".t" -type "double3" 33.267266496368634 0 2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "L_Foot_01_RK_Jnt" -p "L_Leg_04_RK_Jnt";
	rename -uid "D8438C4F-4C4C-DE4C-3A7F-A4B01BA76278";
	setAttr ".t" -type "double3" -0.024681606807778422 -0.00087748476257232255 0.010261807432266679 ;
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
	rename -uid "18E62EE9-4D8F-8C98-37FD-0CA802263AA1";
	setAttr ".t" -type "double3" 12.716406985465769 0 -1.9114484300919443e-15 ;
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
	rename -uid "75983235-4219-5ECF-269E-82A561A16435";
	setAttr ".t" -type "double3" 9.1425663829806751 1.0150114028522722e-15 6.6276719873763217e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "L_Leg_01_FK_Jnt_parentConstraint1" -p "L_Leg_01_FK_Jnt";
	rename -uid "4DACCBCD-40F2-136B-2915-7785B358CB6E";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_01_FK_Jnt_scaleConstraint1" -p "L_Leg_01_FK_Jnt";
	rename -uid "FAD91629-4B8D-20E5-1CFE-E3885A3E83FB";
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
	rename -uid "6B874245-40F8-58CA-FC88-36B67E307EB1";
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
	rename -uid "70D859E8-4E82-1EDE-C4B9-1E9BB6658D1F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 2.4012197790518564e-11 0.3548254078039354 -6.0112437830075187 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Leg_03_FK_Jnt" -p "R_Leg_02_FK_Jnt";
	rename -uid "0BFAEC75-4BDC-5FF0-BCD9-F4A812EBF08E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 1.1578334514339272 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode joint -n "R_Leg_04_FK_Jnt" -p "R_Leg_03_FK_Jnt";
	rename -uid "E9145EBD-49DC-253E-C521-339740CECBED";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "R_Foot_01_FK_Jnt" -p "R_Leg_04_FK_Jnt";
	rename -uid "ECA9EF14-4F02-446B-C0CE-299DF17103BC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872356753 -0.11246489350219968 69.759457814268913 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Foot_02_FK_Jnt" -p "R_Foot_01_FK_Jnt";
	rename -uid "B50E6306-4E91-C14A-408E-19AB80B55033";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -1.8939538549204536e-13 -8.5099366769734753e-13 25.094271303580364 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Foot_03_FK_Jnt" -p "R_Foot_02_FK_Jnt";
	rename -uid "27ED24D7-4FEB-3DFB-6AFF-138889D1F178";
	setAttr ".t" -type "double3" -9.1425300142245884 1.3360619277591468e-08 -1.60893558209807e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "R_Foot_02_FK_Jnt_parentConstraint1" -p "R_Foot_02_FK_Jnt";
	rename -uid "8AF29137-4AF9-2130-A46C-B1897764FBE4";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -2.5757174171303632e-14 
		2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" 0 0 -9.5416640443905503e-15 ;
	setAttr ".rst" -type "double3" -12.71640592062402 -6.8931235652769374e-07 4.2320337358958682e-06 ;
	setAttr ".rsrr" -type "double3" 0 0 -9.5416640443905503e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Foot_02_FK_Jnt_scaleConstraint1" -p "R_Foot_02_FK_Jnt";
	rename -uid "5BD65C27-4D4B-E9AC-CDA4-128131235548";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Foot_01_FK_Jnt_parentConstraint1" -p "R_Foot_01_FK_Jnt";
	rename -uid "C574DEE4-40AA-0857-3ED7-63AA2A18E21C";
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
	setAttr ".tg[0].tot" -type "double3" 1.2434497875801753e-14 -2.8421709430404007e-14 
		1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 6.6592863643142385e-15 -9.4422717105948153e-15 
		2.9620662601996504e-15 ;
	setAttr ".lr" -type "double3" -6.6841344477631723e-15 9.3925755436969478e-15 3.4166114742283326e-17 ;
	setAttr ".rst" -type "double3" 0.024678213611869282 0.00087436955928144044 -0.010267509474132908 ;
	setAttr ".rsrr" -type "double3" -6.6344382808653048e-15 9.4174236271458816e-15 3.4069051916310929e-17 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Foot_01_FK_Jnt_scaleConstraint1" -p "R_Foot_01_FK_Jnt";
	rename -uid "12F513E5-47CD-FE85-699F-E7B7A5157133";
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
	setAttr ".o" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_04_FK_Jnt_parentConstraint1" -p "R_Leg_04_FK_Jnt";
	rename -uid "B2AEF6DD-4241-C179-4313-E5A3B10843AB";
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
	setAttr ".tg[0].tot" -type "double3" 3.730349362740526e-14 8.8817841970012523e-16 
		9.7699626167013776e-15 ;
	setAttr ".rst" -type "double3" -33.267227000177719 5.7329179403708963e-06 3.7134785157988404e-06 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_04_FK_Jnt_scaleConstraint1" -p "R_Leg_04_FK_Jnt";
	rename -uid "C864F5C8-4DC3-89FA-291B-9BA94939BC44";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_03_FK_Jnt_parentConstraint1" -p "R_Leg_03_FK_Jnt";
	rename -uid "D61CD798-4619-7E62-CA7E-3187A277E1B6";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 1.7763568394002505e-15 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.5781240166464568e-15 ;
	setAttr ".lr" -type "double3" 0 0 -3.5781240166464568e-15 ;
	setAttr ".rst" -type "double3" -18.899782720370709 0 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.5781240166464568e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_03_FK_Jnt_scaleConstraint1" -p "R_Leg_03_FK_Jnt";
	rename -uid "72FB8A6F-4446-97C0-C879-E5B1940BF999";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_02_FK_Jnt_parentConstraint1" -p "R_Leg_02_FK_Jnt";
	rename -uid "508D9926-460F-6A16-4AD8-A88962A6C9E7";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 1.7763568394002505e-15 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -7.7650320338054144e-17 -1.987846675914698e-15 
		1.192696528228107e-14 ;
	setAttr ".lr" -type "double3" 8.0756271209034353e-17 2.1427589461666443e-15 -1.3517236067687481e-14 ;
	setAttr ".rst" -type "double3" -3.7889999999999873 -0.18803470000000105 3.1558000000000006 ;
	setAttr ".rsrr" -type "double3" 8.0756271209034353e-17 2.1427589461666443e-15 -1.3517236067687481e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_02_FK_Jnt_scaleConstraint1" -p "R_Leg_02_FK_Jnt";
	rename -uid "E95C8897-4D8E-4E4A-D66B-A2AF0C69DF56";
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
	rename -uid "A02BFA27-457A-9FFF-C980-B9A1C86D359A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.7890000000000015 -0.18803470000000044 3.1558 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 3.106069992395102e-18 0.3548254078039354 -6.0112437830075187 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Leg_03_IK_Jnt" -p "R_Leg_02_IK_Jnt";
	rename -uid "659C1D43-4DA3-93EB-50B7-51A09C443919";
	setAttr ".t" -type "double3" -18.899782720370716 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 1.1578334514339279 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode joint -n "R_Leg_04_IK_Jnt" -p "R_Leg_03_IK_Jnt";
	rename -uid "25AB5C23-4D00-EB10-C255-D69B577F6D05";
	setAttr ".t" -type "double3" -33.267227000177719 5.7329179403708963e-06 3.7134785157988404e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "R_Foot_01_IK_Jnt" -p "R_Leg_04_IK_Jnt";
	rename -uid "6D12A441-4ECB-B6B0-E884-7FAB5F95A538";
	setAttr ".t" -type "double3" 0.024678213611869282 0.00087436955928144044 -0.010267509474132019 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872356769 -0.11246489350219978 69.759457814268913 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Foot_02_IK_Jnt" -p "R_Foot_01_IK_Jnt";
	rename -uid "C6D9CD8E-4B76-B184-2E21-DCA271900FFF";
	setAttr ".t" -type "double3" -12.71640592062402 -6.8931235830405058e-07 4.2320337358958682e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 25.094271303580364 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Foot_03_IK_Jnt" -p "R_Foot_02_IK_Jnt";
	rename -uid "D314C888-4755-7D8F-393C-11BD2E684704";
	setAttr ".t" -type "double3" -9.1425300142245884 1.3360619277591468e-08 -1.60893558209807e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Leg_02_RK_Jnt" -p "R_Leg_01_FK_Jnt";
	rename -uid "C2BAA6B1-4C35-459C-88E7-7D8AA8F196C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.7890000000000015 -0.18803470000000044 3.1558 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 3.106069992395102e-18 0.3548254078039354 -6.0112437830075187 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Leg_03_RK_Jnt" -p "R_Leg_02_RK_Jnt";
	rename -uid "7D170AD1-40B9-1806-4A0E-34A3A764E647";
	setAttr ".t" -type "double3" -18.899782720370716 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 1.1578334514339281 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode joint -n "R_Leg_04_RK_Jnt" -p "R_Leg_03_RK_Jnt";
	rename -uid "2CCD7C36-44E0-8211-D719-DFB257A47B3A";
	setAttr ".t" -type "double3" -33.267227000177719 5.7329179403708963e-06 3.7134785157988404e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
	setAttr ".radi" 2;
createNode joint -n "R_Foot_01_RK_Jnt" -p "R_Leg_04_RK_Jnt";
	rename -uid "A634165D-4CD6-5F2A-4410-E19408C37F95";
	setAttr ".t" -type "double3" 0.024678213611869282 0.00087436955928144044 -0.010267509474132019 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872356769 -0.11246489350219978 69.759457814268913 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Foot_02_RK_Jnt" -p "R_Foot_01_RK_Jnt";
	rename -uid "FCF11587-4778-2849-CAF2-6CA2E12C02AC";
	setAttr ".t" -type "double3" -12.71640592062402 -6.8931235830405058e-07 4.2320337358958682e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 25.094271303580364 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode joint -n "R_Foot_03_RK_Jnt" -p "R_Foot_02_RK_Jnt";
	rename -uid "D9DD8D0A-453D-9CCA-5358-2B863B101E4B";
	setAttr ".t" -type "double3" -9.1425300142245884 1.3360619277591468e-08 -1.60893558209807e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".ssc" no;
createNode parentConstraint -n "R_Leg_01_FK_Jnt_parentConstraint1" -p "R_Leg_01_FK_Jnt";
	rename -uid "8C2D7933-40E7-4331-81D8-6A8792DD82C0";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_01_FK_Jnt_scaleConstraint1" -p "R_Leg_01_FK_Jnt";
	rename -uid "173C2208-4C87-7C38-D74D-19AAEEA2E675";
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
	rename -uid "0CA9E9EB-4459-E861-6110-9A995B53CFC4";
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
createNode scaleConstraint -n "Pelvis_01_FK_Jnt_scaleConstraint1" -p "Pelvis_01_FK_Jnt";
	rename -uid "8BD1AC60-4365-354C-8034-33AA906540E2";
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
	rename -uid "22928E86-4567-9907-4552-75A75EF38009";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "COG_Jnt_scaleConstraint1" -p "COG_Jnt";
	rename -uid "7D6728AB-49C2-B78D-AF44-139888C3DC43";
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
	rename -uid "638E3154-4421-B952-7821-E89033AA9760";
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-15 -1.4210854715202004e-14 
		2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" 3.1308585145656493e-15 -3.1805546814635168e-15 
		-1.1653751137549917e-14 ;
	setAttr ".lr" -type "double3" -4.7708320221952783e-15 -2.1975023800150762e-14 1.5157330903849571e-14 ;
	setAttr ".rst" -type "double3" -3.3333566172594544 2.9002132933442226e-05 -4.1612826095160926e-05 ;
	setAttr ".rsrr" -type "double3" -2.981770013872048e-15 -9.3273493246434977e-15 1.1355574136162712e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_01_Knuckle_03_FK_Jnt";
	rename -uid "ED3F121C-49AF-D921-89E8-10A9F02F2A64";
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
	rename -uid "C6F08522-4657-04CC-9C7C-E7B181A55432";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 1.4210854715202004e-14 
		1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 2.0673605429512861e-14 2.2263882770244621e-14 
		-4.5720473546038059e-15 ;
	setAttr ".lr" -type "double3" -2.2263882770244617e-14 -2.1468744099878737e-14 5.9635400277440983e-15 ;
	setAttr ".rst" -type "double3" -3.0522180000000176 -0.69160000000000821 -1.1789999999999878 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-14 -2.1468744099878737e-14 
		5.1684013573782183e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "D9B0943F-4C17-56F3-9546-2BAC927B62E0";
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
	setAttr ".o" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "R_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "5AFD08D1-41BF-9CCC-6E57-D88FA9072D61";
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
	setAttr ".tg[0].tot" -type "double3" -5.5511151231257827e-17 1.4210854715202004e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.9282112756372571e-14 1.0498315257174499e-15 
		-4.4509129477902536e-14 ;
	setAttr ".lr" -type "double3" 1.9083328088781104e-14 6.3611093629270264e-15 4.4527765540489235e-14 ;
	setAttr ".rst" -type "double3" -2.0471587998276277 -0.47025121604991482 -0.21917722508494819 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781104e-14 6.3611093629270264e-15 4.4527765540489235e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "CF6E2147-4557-A5B0-D093-09AFCB146E5A";
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
	rename -uid "08B5217F-4F0A-1B7B-380D-96B76DEFF43B";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -1.4210854715202004e-14 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 9.5416640443905519e-15 ;
	setAttr ".rst" -type "double3" -3.0966790240319924 1.4610952490556883e-05 -2.6145914908681789e-06 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "EE10262D-4793-ACB0-C9E8-6DBB73024BD4";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "R_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "DC317D86-45A8-41C8-8E0E-AA9740BAA56E";
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
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr ".tg[0].tor" -type "double3" -2.3854160110976376e-15 3.975693351829396e-15 
		-6.3611093629270335e-15 ;
	setAttr ".lr" -type "double3" 5.5659706925611543e-15 -4.7708320221952752e-15 4.7708320221952752e-15 ;
	setAttr ".rst" -type "double3" -8.375091714116941 -3.07466196909902 -0.22513910900998724 ;
	setAttr ".rsrr" -type "double3" 5.5659706925611543e-15 -4.7708320221952752e-15 4.7708320221952752e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "8515E072-4541-48D6-9485-078EC12DEB9A";
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
	rename -uid "465EFDEC-4F0A-04CC-4ABF-678E186BA3D4";
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
	setAttr ".tg[0].tot" -type "double3" -3.1974423109204508e-14 -4.2632564145606011e-14 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -4.4527765540489235e-14 ;
	setAttr ".lr" -type "double3" 0 0 5.0888874903416268e-14 ;
	setAttr ".rst" -type "double3" -3.2946304711159442 1.385496128136765e-05 -1.0113538784217724e-08 ;
	setAttr ".rsrr" -type "double3" 0 0 4.4527765540489235e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "DEA23A94-47C7-4EFC-ED8D-408EE46EBA75";
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
	rename -uid "86C85B30-4D93-7C37-0233-2293E507710C";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 4.2632564145606011e-14 
		-5.5511151231257827e-16 ;
	setAttr ".tg[0].tor" -type "double3" -2.5469285535157063e-14 7.963810745383258e-15 
		6.3611093629270335e-15 ;
	setAttr ".lr" -type "double3" 2.4649298781342254e-14 -9.5416640443905503e-15 -1.5902773407317606e-15 ;
	setAttr ".rst" -type "double3" -8.6573981715691133 -0.7397089205864309 0.21737428945674253 ;
	setAttr ".rsrr" -type "double3" 2.4649298781342254e-14 -9.5416640443905503e-15 -1.5902773407317606e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "81554EBB-4A80-1B68-073F-14AEC255FC1F";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode joint -n "R_Hand_Cup_01_FK_Jnt" -p "R_Hand_01_FK_Jnt";
	rename -uid "523829A1-4EF2-3962-19F8-A5ABD9B298B6";
	setAttr ".t" -type "double3" -2.6094737698135262 1.9102921206894079 0.091912549127854959 ;
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
	rename -uid "CD3D569D-453D-2CAC-2424-98A78AA5C88D";
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
	setAttr ".tg[0].tot" -type "double3" 3.1974423109204508e-14 4.2632564145606011e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" 0 0 1.5902773407317584e-14 ;
	setAttr ".rst" -type "double3" -3.0461486323297002 3.6275829785381575e-05 6.3187344192527917e-06 ;
	setAttr ".rsrr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "30A1EF9A-4DB3-56BB-DEB9-508CD9C0954E";
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
	rename -uid "A3D4AB6C-4142-2D04-8156-8793E440C0DB";
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
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-14 4.2632564145606011e-14 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.1927080055488189e-14 8.5850128316066002e-15 
		-1.8101828792548217e-14 ;
	setAttr ".lr" -type "double3" 1.1131941385122304e-14 -9.3428793767990787e-15 2.1804193226439341e-14 ;
	setAttr ".rst" -type "double3" -5.996699999999997 -0.053300000000021441 0.44211999999998008 ;
	setAttr ".rsrr" -type "double3" 1.1131941385122304e-14 -9.3428793767990787e-15 2.1804193226439341e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "EB7FE559-4684-17D7-8CD3-028750A99D5C";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1 1 ;
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
	rename -uid "83BF1D8E-4974-54BB-A9A2-EEBE179A533A";
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
	setAttr ".tg[0].tot" -type "double3" 1.3855583347321954e-13 5.6843418860808015e-13 
		-1.5987211554602254e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.5444437451708134e-14 ;
	setAttr ".lr" -type "double3" 0 0 -1.2722218725854064e-14 ;
	setAttr ".rst" -type "double3" -2.3815183148368697 -8.6495528364594065e-05 -1.4665521945289584e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.2263882770244611e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "F7078AEA-4183-71C6-C933-2F90B3CBF70B";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "R_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "D1EB4827-400B-3B29-3707-B3BECDC2A3C4";
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
	setAttr ".tg[0].tot" -type "double3" 1.1102230246251565e-15 -5.6843418860808015e-14 
		-5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317587e-14 7.4047288677822494e-15 
		-1.2889943289134371e-15 ;
	setAttr ".lr" -type "double3" 1.1628903054100984e-14 -7.9513867036587919e-15 -6.9574633657014508e-16 ;
	setAttr ".rst" -type "double3" -5.957099999999997 -0.86489999999999156 -1.7271200000000206 ;
	setAttr ".rsrr" -type "double3" 1.1628903054100984e-14 -7.9513867036587919e-15 -6.9574633657014508e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "R_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "85676185-4394-BBEA-ACEF-34BF42F68DF3";
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
	setAttr ".o" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Hand_01_FK_Jnt_parentConstraint1" -p "R_Hand_01_FK_Jnt";
	rename -uid "6B381942-40C0-9CAC-B895-4485CE9EBCC6";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 -2.2204460492503131e-16 
		4.2632564145606011e-14 ;
	setAttr ".tg[0].tor" -type "double3" 6.2120208622334312e-18 3.273686462984032e-16 
		0 ;
	setAttr ".lr" -type "double3" -2.3295078233375367e-18 -4.4726550208080709e-16 9.0923667943843291e-36 ;
	setAttr ".rst" -type "double3" -40.307799759290006 96.203811011042717 -0.78775157191785161 ;
	setAttr ".rsrr" -type "double3" -2.3295078233375367e-18 -4.4726550208080709e-16 
		9.0923667943843291e-36 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Hand_01_FK_Jnt_scaleConstraint1" -p "R_Hand_01_FK_Jnt";
	rename -uid "7FF73362-4F5B-CCE9-902D-2F87D1A6D203";
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
	rename -uid "2A2B01CB-4848-4763-BB37-37ABA444BF02";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 -1.4210854715202004e-14 
		1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -3.2898862486388253e-14 1.2722218725854067e-14 
		-6.9823114491503765e-15 ;
	setAttr ".lr" -type "double3" 2.9121953802150323e-14 -1.9782180435782362e-14 9.7652967954309462e-15 ;
	setAttr ".rst" -type "double3" 3.3333777555323962 7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr ".rsrr" -type "double3" 3.25012931512053e-14 -1.3548417500531114e-14 6.7338306146610335e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_01_Knuckle_03_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_01_Knuckle_03_FK_Jnt";
	rename -uid "0644CA3C-458B-A96E-EF37-95812E63476B";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "L_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "B50104CE-4B84-13EC-51A7-26A165A27E25";
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 7.1054273576010019e-15 
		-1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 4.5720473546038061e-14 -3.1805546814635168e-15 
		-9.3428793767990803e-15 ;
	setAttr ".lr" -type "double3" -3.9756933518293967e-14 1.5902773407317619e-15 9.5416640443905503e-15 ;
	setAttr ".rst" -type "double3" 3.0522225473461275 0.6916297633857198 1.1790508445751797 ;
	setAttr ".rsrr" -type "double3" -4.6118042881221007e-14 6.3611093629270367e-15 3.9756933518293936e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_01_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "5807C188-4EBD-ACE4-7467-C1862C141926";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "L_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "F2DCB23A-42C9-70C3-0D78-118645EF3F78";
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-16 -5.6843418860808015e-14 
		-2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.2921003393445537e-14 -1.5787268644410435e-16 
		-3.1060104311167164e-18 ;
	setAttr ".lr" -type "double3" -1.272221872585407e-14 0 0 ;
	setAttr ".rst" -type "double3" 2.0471668234810139 0.47025145090340092 0.21914660359871618 ;
	setAttr ".rsrr" -type "double3" -1.272221872585407e-14 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_01_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "F48A0122-44CD-40A7-EAAB-1FA51356E830";
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
	rename -uid "9DF30F7C-42E1-1EFA-AD1F-19BCC31C21FB";
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
	setAttr ".tg[0].tot" -type "double3" 1.0658141036401503e-14 -1.4210854715202004e-14 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.544443745170814e-14 ;
	setAttr ".lr" -type "double3" 0 0 -1.5902773407317584e-14 ;
	setAttr ".rst" -type "double3" 3.0966687641577799 -1.4210854715202004e-14 3.907985046680551e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.2263882770244617e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_02_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "3C24CF4B-43AD-DCD0-A53C-05AE6FC2B78B";
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
	setAttr ".o" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_02_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "L_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "B3BA955C-4698-2B86-460D-EEB70E3F3D43";
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
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-14 -4.2632564145606011e-14 
		5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 3.1805546814635168e-15 1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" -3.975693351829393e-16 -3.1805546814635168e-15 -1.1131941385122309e-14 ;
	setAttr ".rst" -type "double3" 8.3751282917814649 3.0746614791383138 0.22513083948685164 ;
	setAttr ".rsrr" -type "double3" -3.975693351829393e-16 -3.1805546814635168e-15 -1.1131941385122309e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_02_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "E369FC05-42FE-8103-1891-FCB712A52719";
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
	setAttr ".o" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
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
	rename -uid "3474CBCF-4539-21EC-C45D-E8B6AC94BAA6";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 -2.8421709430404007e-14 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -4.7708320221952755e-14 ;
	setAttr ".lr" -type "double3" 0 0 5.7249984266343308e-14 ;
	setAttr ".rst" -type "double3" 3.2946389742747613 -7.1054273576010019e-14 8.4710016778899444e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 4.7708320221952748e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_03_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "1393A0B9-492F-2EAA-2AFB-1E983ABCC982";
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
	setAttr ".o" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_03_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "L_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "01E7FD8A-4A3D-FA46-BF14-23B6DA5E1D72";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 3.3306690738754696e-16 ;
	setAttr ".tg[0].tor" -type "double3" -1.272221872585407e-14 -6.3735334046515004e-15 
		0 ;
	setAttr ".lr" -type "double3" 2.0673605429512861e-14 6.3611093629270335e-15 1.1476156374930413e-30 ;
	setAttr ".rst" -type "double3" 8.6574391364606029 0.73970838377729886 -0.21736931773044432 ;
	setAttr ".rsrr" -type "double3" 2.0673605429512861e-14 6.3611093629270335e-15 1.1476156374930413e-30 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_03_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "F7B2558A-4CD3-C5E2-B4B4-BEB375BD519E";
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
	rename -uid "DE34A1E9-440F-B6BC-162A-0E97B470D1FB";
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
	setAttr ".tg[0].tot" -type "double3" 5.3290705182007514e-14 8.5265128291212022e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 3.0461052105657824 7.1054273576010019e-14 4.4408920985006262e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_04_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "97C82AE3-450B-514B-66E5-57958B1B07D1";
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
	setAttr ".o" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_04_Knuckle_01_FK_Jnt_parentConstraint1" 
		-p "L_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "8089E9E6-4B38-6F7A-EF31-13958C70F270";
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
	setAttr ".tg[0].tot" -type "double3" -2.3092638912203256e-14 -2.8421709430404007e-14 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317584e-15 -9.4422717105948169e-16 
		2.74260721067606e-15 ;
	setAttr ".lr" -type "double3" 1.8139100917721617e-15 -1.5143168518884236e-31 9.5665121278394825e-15 ;
	setAttr ".rst" -type "double3" 5.9967835317562503 0.053296098651102852 -0.44211549384583293 ;
	setAttr ".rsrr" -type "double3" 1.8387581752210955e-15 7.9513867036587909e-16 3.2302508483613843e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_04_Knuckle_01_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "2BE54870-4CBC-8348-6257-519979155656";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
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
	rename -uid "4DD517C0-4262-1451-BB4C-2EBF02B7AB98";
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
	setAttr ".tg[0].tot" -type "double3" -5.6843418860808015e-14 -1.9895196601282805e-13 
		8.1712414612411521e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.5902773407317584e-14 ;
	setAttr ".lr" -type "double3" 0 0 -6.361109362927032e-15 ;
	setAttr ".rst" -type "double3" 2.3815401405463446 -2.9842794901924208e-13 9.0594198809412774e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.2722218725854064e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_05_Knuckle_03_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "C145550D-487D-6836-DDBB-889C6DFEA0F6";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_05_Knuckle_02_FK_Jnt_parentConstraint1" 
		-p "L_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "2ECA2C79-4E5C-90DC-B39A-FD80A2194BB0";
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
	setAttr ".tg[0].tot" -type "double3" -1.7097434579227411e-14 5.6843418860808015e-14 
		-5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587919e-15 9.9143852961245565e-15 
		-6.6782330279440499e-14 ;
	setAttr ".lr" -type "double3" 3.9756933518293881e-15 -1.033680271475643e-14 7.6010287270288246e-14 ;
	setAttr ".rst" -type "double3" 5.9571259389828128 0.86494923585811989 1.7271218814135656 ;
	setAttr ".rsrr" -type "double3" 5.4665783587654138e-15 -9.1440947092076103e-15 6.3288068544434192e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_05_Knuckle_02_FK_Jnt_scaleConstraint1" -p
		 "L_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "5BD58536-4766-23B0-6D18-7E9FD8DD844A";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Hand_Cup_01_FK_Jnt_parentConstraint1" -p "L_Hand_Cup_01_FK_Jnt";
	rename -uid "F55A1D9A-41F5-B3B1-A362-C8A29D4CF36C";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-14 1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.4598249026248565e-16 -1.2695817637189575e-14 
		-1.3119788061037007e-14 ;
	setAttr ".lr" -type "double3" 2.2207974582484662e-16 1.2722218725854067e-14 1.3119788061037007e-14 ;
	setAttr ".rst" -type "double3" 2.6094838232571291 -1.9102878729137889 -0.091915605298325431 ;
	setAttr ".rsrr" -type "double3" 2.2207974582484662e-16 1.2722218725854067e-14 1.3119788061037007e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Hand_Cup_01_FK_Jnt_scaleConstraint1" -p "L_Hand_Cup_01_FK_Jnt";
	rename -uid "F2560D0D-4C44-BE19-71C3-3EA6B13EF52D";
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
	rename -uid "92F2A960-4EA0-597C-D856-AD984DB926A7";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 8.8817841970012523e-16 
		2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" -1.5272874491887114e-13 1.1890196181618676e-16 
		5.9635400277440939e-16 ;
	setAttr ".lr" -type "double3" 1.6541912703780626e-13 -5.963540027744087e-16 -4.9696166897867538e-16 ;
	setAttr ".rst" -type "double3" 40.307750701904297 96.203800201416016 -0.78774988651275624 ;
	setAttr ".rsrr" -type "double3" 1.6541912703780626e-13 -5.963540027744087e-16 -4.9696166897867538e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Hand_01_FK_Jnt_scaleConstraint1" -p "L_Hand_01_FK_Jnt";
	rename -uid "F26FFEA3-4F6B-FCA6-5381-738833A17F2B";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode transform -n "Controls";
	rename -uid "E7EC0705-4303-4B4E-713F-B39C0BD578EE";
createNode transform -n "ROOT_Ctrl_Grp" -p "Controls";
	rename -uid "8233BCC6-42DA-2B01-E668-74867D49F137";
createNode transform -n "ROOT_Ctrl" -p "ROOT_Ctrl_Grp";
	rename -uid "B481A136-42DE-74E1-7319-90986C645124";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
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
	rename -uid "681096DD-4BD6-160B-6AD5-6793350386D8";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "COG_Ctrl_Grp_parentConstraint2" -p "COG_Ctrl_Grp";
	rename -uid "F6499F54-43C3-0B5A-1AB4-7DBB3F6E3DE8";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "COG_Ctrl_Grp_scaleConstraint1" -p "COG_Ctrl_Grp";
	rename -uid "8A47F0D3-43BD-459E-DA82-20926888A389";
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
	rename -uid "FE90883F-4981-F18E-D90B-9F8008DBB62A";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Pelvis_01_FK_Ctrl_Grp_parentConstraint2" -p "Pelvis_01_FK_Ctrl_Grp";
	rename -uid "E13870E2-47A7-9CFD-D107-8EADAB2005E5";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "Pelvis_Ctrl_Grp_scaleConstraint1" -p "Pelvis_Ctrl_Grp";
	rename -uid "DCF3497C-42C6-67C7-FFCC-D99AD0480A63";
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
	rename -uid "377317D6-4805-6681-24F3-86BD8AE96ADA";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_01_FK_Ctrl_Grp_parentConstraint2" -p "Spine_01_FK_Ctrl_Grp";
	rename -uid "1F112873-42A3-BA41-2346-628673D09DFF";
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
	rename -uid "98DDFBBE-4A5B-6636-E514-BE88010DC20B";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_02_FK_Ctrl_Grp_parentConstraint2" -p "Spine_02_FK_Ctrl_Grp";
	rename -uid "EBBB1F8D-4190-D9ED-548D-62AE7DE7A0D4";
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
	rename -uid "854CA8ED-426B-9B6D-91AA-BEAABD893C29";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_03_FK_Ctrl_Grp_parentConstraint2" -p "Spine_03_FK_Ctrl_Grp";
	rename -uid "09DC499F-4C72-E87B-959B-2DBA7C388ACE";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_FK_Ctrl_Grp_scaleConstraint1" -p "Spine_FK_Ctrl_Grp";
	rename -uid "BC4AD694-45C9-BF60-C9A1-12A004624482";
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
	rename -uid "91FF63BB-4296-36F9-9D83-11AEB0810D26";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_04_FK_Ctrl_Grp_parentConstraint2" -p "Spine_04_FK_Ctrl_Grp";
	rename -uid "48EF20B9-4E19-CD59-1114-F8906BF89711";
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
	rename -uid "BA19AA4C-4E3E-7874-7F57-D892675CBFF0";
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
	setAttr ".tg[0].tot" -type "double3" 5.5694450981821717 6.2172489379008766e-15 -7.5625259634839515e-17 ;
	setAttr ".lr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr ".rst" -type "double3" -7.5148655411139747e-15 105.96264950702327 -3.1685009598731999 ;
	setAttr ".rsrr" -type "double3" 90 4.3999241267888873 90 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck_01_FK_Ctrl_Grp_parentConstraint2" -p "Neck_01_FK_Ctrl_Grp";
	rename -uid "38547D56-49A2-5A25-A447-1F9050526872";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "Head_FK_Ctrl_Grp_scaleConstraint1" -p "Head_FK_Ctrl_Grp";
	rename -uid "E8362DC1-4601-119F-68F6-9EA5B2ABD542";
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
	rename -uid "8B2E4BD2-4CA0-BA13-57E3-0E975B06F86D";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Clavical_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Clavical_01_FK_Ctrl_Grp";
	rename -uid "06FA50C0-480B-8076-CD7D-0D8BC7E0D60B";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_Clav_Ctrl_Grp_scaleConstraint1" -p "L_Arm_Clav_Ctrl_Grp";
	rename -uid "C18120B2-4C9C-187B-6F04-C5975A6B268B";
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
	rename -uid "AD580586-45A7-A013-C399-B09228AA4434";
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
		-5.6843418860808015e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0.031714073331665274 1.3429067857254178 0.63534752723487131 ;
	setAttr ".lr" -type "double3" 90.016823459266973 -0.63517301505935964 1.3429893242058286 ;
	setAttr ".rst" -type "double3" 8.5588669776916504 95.463088989257869 -1.1310679912567152 ;
	setAttr ".rsrr" -type "double3" 90.016823459266973 -0.63517301505935964 1.3429893242058286 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Arm_01_FK_Ctrl_Grp";
	rename -uid "C5404392-4376-3315-9EC1-61B765CB8222";
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
	setAttr ".tg[0].tor" -type "double3" 0.031714073331665274 1.3429067857254178 0.63534752723487131 ;
	setAttr ".lr" -type "double3" 90.016823459266973 -0.63517301505935964 1.3429893242058286 ;
	setAttr ".rst" -type "double3" 8.5588669776916504 95.463088989257898 -1.1310679912567152 ;
	setAttr ".rsrr" -type "double3" 90.016823459266973 -0.63517301505935964 1.3429893242058286 ;
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
	rename -uid "E934659B-492F-B15B-C9D6-37B1C7E3CBB5";
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
	setAttr ".tg[0].tot" -type "double3" 17.298623211828897 -2.886579864025407e-15 5.6843418860808015e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.544133144127703e-14 -4.1341484152293346e-16 
		1.987846675914698e-16 ;
	setAttr ".lr" -type "double3" 90.016823459267016 -0.63517301505935952 1.3429893242058286 ;
	setAttr ".rst" -type "double3" 25.85167568720064 95.868499506812128 -0.9393017966031546 ;
	setAttr ".rsrr" -type "double3" 90.016823459267016 -0.63517301505935952 1.3429893242058286 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_02_FK_Ctrl_Grp_parentConstraint2" -p "L_Arm_02_FK_Ctrl_Grp";
	rename -uid "3F925EB7-4287-EC64-3C25-7DA55D143746";
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
	setAttr ".tg[0].tot" -type "double3" 17.298623211828897 -2.886579864025407e-15 2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.544133144127703e-14 -4.1341484152293346e-16 
		1.987846675914698e-16 ;
	setAttr ".lr" -type "double3" 90.016823459267016 -0.63517301505935952 1.3429893242058286 ;
	setAttr ".rst" -type "double3" 25.85167568720064 95.868499506812157 -0.9393017966031546 ;
	setAttr ".rsrr" -type "double3" 90.016823459267016 -0.63517301505935952 1.3429893242058286 ;
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
	rename -uid "A41647D9-4714-E70F-36E0-E489F6BBACB2";
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
	setAttr ".tg[0].tot" -type "double3" 14.46663073947116 -1.2878587085651816e-14 1.2789769243681803e-13 ;
	setAttr ".tg[0].tor" -type "double3" -6.3620411660563704e-14 -1.8898132216825766e-16 
		3.975693351829396e-16 ;
	setAttr ".lr" -type "double3" 90.016823459267044 -0.63517301505935941 1.3429893242058284 ;
	setAttr ".rst" -type "double3" 40.313443828246164 96.207539451409772 -0.77893003219190304 ;
	setAttr ".rsrr" -type "double3" 90.016823459267044 -0.63517301505935941 1.3429893242058284 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_03_FK_Ctrl_Grp_parentConstraint2" -p "L_Arm_03_FK_Ctrl_Grp";
	rename -uid "3002001E-4051-F085-F2B8-7881304105EF";
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
	setAttr ".tg[0].tot" -type "double3" 14.46663073947116 -1.2434497875801753e-14 1.5631940186722204e-13 ;
	setAttr ".tg[0].tor" -type "double3" -6.3620411660563704e-14 -1.8898132216825766e-16 
		3.975693351829396e-16 ;
	setAttr ".lr" -type "double3" 90.016823459267044 -0.63517301505935941 1.3429893242058284 ;
	setAttr ".rst" -type "double3" 40.313443828246164 96.207539451409744 -0.7789300321919026 ;
	setAttr ".rsrr" -type "double3" 90.016823459267044 -0.63517301505935941 1.3429893242058284 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_FK_Ctrl_Grp_scaleConstraint1" -p "L_Arm_FK_Ctrl_Grp";
	rename -uid "7B9D49BC-4401-54D1-7DE5-E48851B29062";
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
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
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
	rename -uid "82843FBE-4025-C192-C553-7287C9413838";
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
	setAttr ".tg[0].tot" -type "double3" -0.005876619469660227 -0.0087541874270216091 
		0.0036073611411069351 ;
	setAttr ".tg[0].tor" -type "double3" -7.6376796501160034e-14 2.3435819331035343e-16 
		8.9453100416161419e-16 ;
	setAttr ".lr" -type "double3" 90.016823459267087 -0.6351730150593593 1.3429893242058286 ;
	setAttr ".rst" -type "double3" 40.307750701904304 96.203800201416044 -0.78774988651275635 ;
	setAttr ".rsrr" -type "double3" 90.016823459267087 -0.6351730150593593 1.3429893242058286 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Hand_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Hand_01_FK_Ctrl_Grp";
	rename -uid "139361A2-4D8B-5AB6-711C-27AFB38B99CF";
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
	setAttr ".tg[0].tot" -type "double3" -0.005876619469660227 -0.0087541874270216091 
		0.0036073611410927242 ;
	setAttr ".tg[0].tor" -type "double3" -7.6376796501160034e-14 2.3435819331035343e-16 
		8.9453100416161419e-16 ;
	setAttr ".lr" -type "double3" 90.016823459267087 -0.6351730150593593 1.3429893242058286 ;
	setAttr ".rst" -type "double3" 40.307750701904304 96.203800201416058 -0.78774988651275635 ;
	setAttr ".rsrr" -type "double3" 90.016823459267087 -0.6351730150593593 1.3429893242058286 ;
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
	rename -uid "C773E92B-44A4-292E-E170-C8B9ACF41C5D";
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
	setAttr ".tg[0].tot" -type "double3" 2.6094838232570794 -1.9102878729137864 -0.091915605298282799 ;
	setAttr ".tg[0].tor" -type "double3" 89.983172950911296 -1.343175765007784 -0.63477860474569214 ;
	setAttr ".lr" -type "double3" 180 1.9310840053969449e-32 -3.478731682850722e-16 ;
	setAttr ".rst" -type "double3" 42.935360633282812 96.357903490008496 -2.6689655266522294 ;
	setAttr ".rsrr" -type "double3" 180 1.9310840053969449e-32 -3.478731682850722e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "ACDD9CD9-4F5C-5DE4-BE9E-17AF90A648BD";
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
	setAttr ".tg[0].tot" -type "double3" 2.6094838232570723 -1.910287872913786 -0.091915605298282799 ;
	setAttr ".tg[0].tor" -type "double3" 89.983172950911296 -1.343175765007784 -0.63477860474569214 ;
	setAttr ".lr" -type "double3" 180 1.9310840053969449e-32 -3.478731682850722e-16 ;
	setAttr ".rst" -type "double3" 42.935360633282805 96.357903490008496 -2.6689655266522294 ;
	setAttr ".rsrr" -type "double3" 180 1.9310840053969449e-32 -3.478731682850722e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1" -p "L_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "EEE91043-4527-B660-300A-84B5A6A55A83";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
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
	rename -uid "E535A506-4E72-0D35-01CA-0EACE512F33A";
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
	setAttr ".tg[0].tot" -type "double3" 2.0471668234809783 0.47025145090340281 0.21914660359875882 ;
	setAttr ".tg[0].tor" -type "double3" 88.656824177087444 0.016822425507195881 89.364826957561988 ;
	setAttr ".lr" -type "double3" 180 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 42.354158002470733 96.032431002399392 -0.29489755373574866 ;
	setAttr ".rsrr" -type "double3" 180 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "BCA12270-4BED-CB5A-548D-E9B64540C37D";
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
	setAttr ".tg[0].tot" -type "double3" 2.0471668234809712 0.47025145090340303 0.21914660359875882 ;
	setAttr ".tg[0].tor" -type "double3" 88.656824177087444 0.016822425507195881 89.364826957561988 ;
	setAttr ".lr" -type "double3" 180 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 42.354158002470726 96.032431002399392 -0.29489755373574855 ;
	setAttr ".rsrr" -type "double3" 180 -89.999999999999986 0 ;
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
	rename -uid "EB845CDE-452B-5E7A-B72B-4B880BB3CC76";
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
	setAttr ".tg[0].tor" -type "double3" 4.292865969522949 -25.469866719530053 54.373605364405073 ;
	setAttr ".lr" -type "double3" -102.83515163767846 -31.727871800243534 -59.629158448751937 ;
	setAttr ".rst" -type "double3" 43.533208847045913 95.340801239013672 2.7573249936103821 ;
	setAttr ".rsrr" -type "double3" -102.83515163767846 -31.727871800243534 -59.629158448751937 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "40D468FB-43E3-097A-689A-84BCA5E21D12";
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
	setAttr ".tg[0].tot" -type "double3" 3.0522225473461311 0.69162976338567717 1.1790508445751584 ;
	setAttr ".tg[0].tor" -type "double3" 4.292865969522949 -25.469866719530053 54.373605364405073 ;
	setAttr ".lr" -type "double3" -102.83515163767845 -31.727871800243527 -59.629158448751951 ;
	setAttr ".rst" -type "double3" 43.533208847045913 95.340801239013672 2.757324993610383 ;
	setAttr ".rsrr" -type "double3" -102.83515163767846 -31.727871800243534 -59.629158448751937 ;
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
	rename -uid "9A1822D4-4D50-34BF-8636-0D9228B8D184";
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
	setAttr ".tg[0].tot" -type "double3" 3.3333777555324247 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" -0.37571711577679684 -29.209601892891417 3.6072916636436929 ;
	setAttr ".lr" -type "double3" -115.05845304656788 -18.684336332370936 -30.327655479800164 ;
	setAttr ".rst" -type "double3" 44.966682434082031 92.894653320312486 4.5102999210357586 ;
	setAttr ".rsrr" -type "double3" -115.05845304656788 -18.684336332370936 -30.327655479800164 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "9832852D-4F67-842A-D7C6-7DB6F4C1EE36";
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
	setAttr ".tg[0].tot" -type "double3" 3.3333777555324389 1.4210854715202004e-14 -4.2632564145606011e-14 ;
	setAttr ".tg[0].tor" -type "double3" -0.37571711577679684 -29.209601892891417 3.6072916636436929 ;
	setAttr ".lr" -type "double3" -115.05845304656786 -18.684336332370936 -30.327655479800182 ;
	setAttr ".rst" -type "double3" 44.966682434082024 92.894653320312472 4.5102999210357684 ;
	setAttr ".rsrr" -type "double3" -115.05845304656788 -18.684336332370936 -30.327655479800164 ;
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
	rename -uid "5009BDEE-4D43-DBDC-AD4C-4A90D2CD926E";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
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
	rename -uid "E027C5CC-47AE-AE7C-DF64-F6925D6F5AF4";
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
	setAttr ".tg[0].tot" -type "double3" 8.3751282917814152 3.0746614791383151 0.22513083948690849 ;
	setAttr ".tg[0].tor" -type "double3" 96.984319633484262 -21.446472576163629 0.81102226025572466 ;
	setAttr ".lr" -type "double3" -172.47114676200107 -1.3398884268187172 -20.10987649463776 ;
	setAttr ".rst" -type "double3" 48.651287078857429 96.173309326171847 2.3795000314712502 ;
	setAttr ".rsrr" -type "double3" -172.47114676200107 -1.3398884268187172 -20.10987649463776 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "F8D33C86-4B3A-8E15-3DB4-E592C63A811B";
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
	setAttr ".tg[0].tot" -type "double3" 8.3751282917814009 3.0746614791383156 0.2251308394869227 ;
	setAttr ".tg[0].tor" -type "double3" 96.984319633484262 -21.446472576163629 0.81102226025572466 ;
	setAttr ".lr" -type "double3" -172.47114676200107 -1.3398884268187172 -20.10987649463776 ;
	setAttr ".rst" -type "double3" 48.651287078857415 96.173309326171832 2.3795000314712502 ;
	setAttr ".rsrr" -type "double3" -172.47114676200107 -1.3398884268187172 -20.10987649463776 ;
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
	rename -uid "EC5918A5-4189-2EA4-C838-15A371D7AF37";
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
	setAttr ".tg[0].tot" -type "double3" 3.0966687641577995 -5.6843418860808015e-14 
		4.6185277824406512e-14 ;
	setAttr ".tg[0].tor" -type "double3" -1.4312496066585827e-14 -3.975693351829396e-16 
		22.928549236095364 ;
	setAttr ".lr" -type "double3" -172.54158671059551 1.6902111096620005 -42.840087749056366 ;
	setAttr ".rst" -type "double3" 51.558372334193024 95.108898934614672 2.451910469020337 ;
	setAttr ".rsrr" -type "double3" -172.54158671059551 1.6902111096620005 -42.840087749056366 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "39684085-46F6-ACAF-F719-0E89E56641E9";
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
	setAttr ".tg[0].tot" -type "double3" 3.0966687641577924 -8.5265128291212022e-14 
		4.9737991503207013e-14 ;
	setAttr ".tg[0].tor" -type "double3" -1.4312496066585827e-14 -3.975693351829396e-16 
		22.928549236095364 ;
	setAttr ".lr" -type "double3" -172.54158671059551 1.6902111096620005 -42.840087749056366 ;
	setAttr ".rst" -type "double3" 51.558372334193031 95.1088989346147 2.451910469020337 ;
	setAttr ".rsrr" -type "double3" -172.54158671059551 1.6902111096620005 -42.840087749056366 ;
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
	rename -uid "DFDEE710-4685-F3FD-6331-FCB54BCA5BC5";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
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
	rename -uid "0C7C84A9-4F58-12EE-171D-7FA5B5F17C39";
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
	setAttr ".tg[0].tot" -type "double3" 8.6574391364605603 0.73970838377729975 -0.2173693177304159 ;
	setAttr ".tg[0].tor" -type "double3" 90.214072174134941 -20.434713950500829 -0.12703297212607764 ;
	setAttr ".lr" -type "double3" -179.59274753366807 -0.47028877345049086 -19.092405550321899 ;
	setAttr ".rst" -type "double3" 48.948991775512695 96.62359619140625 0.047950029373167169 ;
	setAttr ".rsrr" -type "double3" -179.59274753366807 -0.47028877345049086 -19.092405550321899 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "301A2C79-452F-483C-727E-16827B9B63A8";
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
	setAttr ".tg[0].tot" -type "double3" 8.6574391364605461 0.73970838377729997 -0.2173693177304159 ;
	setAttr ".tg[0].tor" -type "double3" 90.214072174134941 -20.434713950500829 -0.12703297212607764 ;
	setAttr ".lr" -type "double3" -179.59274753366807 -0.47028877345049086 -19.092405550321899 ;
	setAttr ".rst" -type "double3" 48.948991775512681 96.62359619140625 0.047950029373167169 ;
	setAttr ".rsrr" -type "double3" -179.59274753366807 -0.47028877345049086 -19.092405550321899 ;
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
	rename -uid "72B381B4-4AA0-7CFF-9796-3591AD1AD575";
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
	setAttr ".tg[0].tot" -type "double3" 3.2946389742747701 -4.2632564145606011e-14 
		8.482103908136196e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.3754767777180642e-14 0 15.347549166690101 ;
	setAttr ".lr" -type "double3" -179.48279947934498 -0.34573001761955841 -34.439843760823088 ;
	setAttr ".rst" -type "double3" 52.062295279581868 95.545980317373463 0.074992410804429782 ;
	setAttr ".rsrr" -type "double3" -179.48279947934498 -0.34573001761955841 -34.439843760823088 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "5E2D5570-4D63-E4DF-8700-B48C7F842B32";
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
	setAttr ".tg[0].tot" -type "double3" 3.2946389742747701 -4.2632564145606011e-14 
		8.482103908136196e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.3754767777180642e-14 0 15.347549166690101 ;
	setAttr ".lr" -type "double3" -179.48279947934498 -0.34573001761955841 -34.439843760823088 ;
	setAttr ".rst" -type "double3" 52.062295279581868 95.545980317373463 0.074992410804429782 ;
	setAttr ".rsrr" -type "double3" -179.48279947934498 -0.34573001761955841 -34.439843760823088 ;
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
	rename -uid "3F596E0D-4B8D-625D-1221-57933365D766";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
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
	rename -uid "8801197D-498E-5DAA-25BA-57B8950D1142";
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
	setAttr ".tg[0].tor" -type "double3" -6.5870617948139545 -0.074524456937106492 19.831777082974714 ;
	setAttr ".lr" -type "double3" 173.41293820518604 0.074524456937103897 -19.831777082974714 ;
	setAttr ".rst" -type "double3" 48.93214416503907 96.304607391357393 -2.2268500328063983 ;
	setAttr ".rsrr" -type "double3" 173.41293820518604 0.074524456937103897 -19.831777082974714 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "F5FEFCD8-461F-5753-25E0-63B143647823";
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
	setAttr ".tg[0].tot" -type "double3" 5.9967835317562646 0.053296098651102852 -0.44211549384583071 ;
	setAttr ".tg[0].tor" -type "double3" -6.5870617948139545 -0.074524456937106492 19.831777082974714 ;
	setAttr ".lr" -type "double3" 173.41293820518604 0.074524456937103897 -19.831777082974714 ;
	setAttr ".rst" -type "double3" 48.932144165039077 96.304607391357393 -2.2268500328063987 ;
	setAttr ".rsrr" -type "double3" 173.41293820518604 0.074524456937103897 -19.831777082974714 ;
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
	rename -uid "E1290818-41A3-E1D6-2B28-3BB0A1FA0FD7";
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
	setAttr ".tg[0].tot" -type "double3" 3.0461052105657505 -2.8421709430404007e-14 
		4.6185277824406512e-14 ;
	setAttr ".tg[0].tor" -type "double3" -6.361109362927032e-15 2.3854160110976376e-15 
		17.790460952726573 ;
	setAttr ".lr" -type "double3" 173.70270849143469 -1.9375660210312835 -37.511354521399134 ;
	setAttr ".rst" -type "double3" 51.797590844352072 95.271187542536694 -2.2308120920455456 ;
	setAttr ".rsrr" -type "double3" 173.70270849143469 -1.9375660210312835 -37.511354521399134 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "28D207B0-4ED0-6B7E-FE4C-4C86A5B1C3B8";
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
	setAttr ".tg[0].tot" -type "double3" 3.0461052105657505 -4.2632564145606011e-14 
		4.4408920985006262e-14 ;
	setAttr ".tg[0].tor" -type "double3" -6.361109362927032e-15 2.3854160110976376e-15 
		17.790460952726573 ;
	setAttr ".lr" -type "double3" 173.70270849143469 -1.9375660210312835 -37.511354521399134 ;
	setAttr ".rst" -type "double3" 51.797590844352079 95.271187542536708 -2.2308120920455456 ;
	setAttr ".rsrr" -type "double3" 173.70270849143469 -1.9375660210312835 -37.511354521399134 ;
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
	rename -uid "8389DC57-4394-F83C-33E2-B6809E6AA2FB";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
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
	rename -uid "5D102020-4CFB-6CAA-62BB-648267011771";
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
	setAttr ".tg[0].tot" -type "double3" 5.9571259389828271 0.86494923585811989 1.7271218814135691 ;
	setAttr ".tg[0].tor" -type "double3" -10.099488601197852 0.13134202521529365 26.395094951067868 ;
	setAttr ".lr" -type "double3" 169.90051139880214 -0.1313420252152972 -26.39509495106789 ;
	setAttr ".rst" -type "double3" 48.892486572265639 95.492954254150376 -4.3960874080657986 ;
	setAttr ".rsrr" -type "double3" 169.90051139880214 -0.1313420252152972 -26.39509495106789 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_05_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "78E15299-46EB-3355-029F-CF923174AACB";
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
	setAttr ".tg[0].tot" -type "double3" 5.9571259389828342 0.86494923585811989 1.7271218814135691 ;
	setAttr ".tg[0].tor" -type "double3" -10.099488601197852 0.13134202521529365 26.395094951067868 ;
	setAttr ".lr" -type "double3" 169.90051139880214 -0.1313420252152972 -26.395094951067886 ;
	setAttr ".rst" -type "double3" 48.892486572265646 95.492954254150376 -4.3960874080657986 ;
	setAttr ".rsrr" -type "double3" 169.90051139880214 -0.1313420252152972 -26.39509495106789 ;
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
	rename -uid "25264879-42BB-0F19-C3E5-03860C7CBF61";
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
	setAttr ".tg[0].tot" -type "double3" 2.3815401405463303 4.2632564145606011e-14 7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-15 1.4312496066585827e-14 
		16.857278106024303 ;
	setAttr ".lr" -type "double3" 170.36370558348719 -3.040712120299065 -43.007613539756399 ;
	setAttr ".rst" -type "double3" 51.025745123859203 94.434223132049652 -4.3906280874335009 ;
	setAttr ".rsrr" -type "double3" 170.36370558348719 -3.040712120299065 -43.007613539756399 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "L_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "25941D30-47B9-E29A-EFD6-318413F2D575";
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
	setAttr ".tg[0].tot" -type "double3" 2.3815401405463374 2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-15 1.4312496066585827e-14 
		16.857278106024303 ;
	setAttr ".lr" -type "double3" 170.36370558348719 -3.040712120299065 -43.007613539756399 ;
	setAttr ".rst" -type "double3" 51.025745123859217 94.434223132049652 -4.3906280874335 ;
	setAttr ".rsrr" -type "double3" 170.36370558348719 -3.040712120299065 -43.007613539756399 ;
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
	rename -uid "A3F3E5BC-4002-B6CA-AF1C-5398BA9BE183";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Hand_FK_Ctrl_Grp_scaleConstraint1" -p "L_Hand_FK_Ctrl_Grp";
	rename -uid "CCFE602D-40F5-E05F-C441-E69D6936EA83";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
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
	rename -uid "8D25122A-46F4-731C-A6B1-9B9959E1A1A6";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Clavical_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Clavical_01_FK_Ctrl_Grp";
	rename -uid "CFF604E4-44DF-9B9D-5DA3-E2A886CAA3D9";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_Clav_Ctrl_Grp_scaleConstraint1" -p "R_Arm_Clav_Ctrl_Grp";
	rename -uid "67A91412-42E6-0D5A-8EF3-40A7D21ACCD9";
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
	rename -uid "9B3B340D-4688-5058-7098-39A02F122D0A";
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
	setAttr ".tg[0].tot" -type "double3" -6.245040000000003 4.4408920985006262e-16 2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0.031714073332931469 1.3429067857251988 0.63534752723476684 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056097 ;
	setAttr ".rst" -type "double3" -8.5588700000000024 95.463100000000026 -1.1310700000000005 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056097 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Arm_01_FK_Ctrl_Grp";
	rename -uid "AE997C39-405A-5B0D-BCD4-1FB0237AB1A8";
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
	setAttr ".tg[0].tor" -type "double3" 0.031714073332931469 1.3429067857251988 0.63534752723476684 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056097 ;
	setAttr ".rst" -type "double3" -8.5588700000000042 95.463100000000054 -1.1310700000000009 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056097 ;
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
	rename -uid "E2EAE7B6-4B4C-CFD8-4247-199EE550DD29";
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
	setAttr ".tg[0].tot" -type "double3" -17.298644268687639 -1.1102230246251565e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 5.2612904818337985e-16 
		-1.987846675914698e-16 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925627 -1.3429893242056092 ;
	setAttr ".rst" -type "double3" -25.85169975929 95.868511011042699 -0.93930357191785074 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925627 -1.3429893242056092 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_02_FK_Ctrl_Grp_parentConstraint2" -p "R_Arm_02_FK_Ctrl_Grp";
	rename -uid "93ED69EB-4EE0-420F-1F93-D6A64D8D40F7";
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
	setAttr ".tg[0].tot" -type "double3" -17.298644268687632 -2.2204460492503131e-15 
		-2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 5.2612904818337985e-16 
		-1.987846675914698e-16 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925627 -1.3429893242056092 ;
	setAttr ".rst" -type "double3" -25.851699759289993 95.868511011042671 -0.93930357191784974 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925627 -1.3429893242056092 ;
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
	rename -uid "E64F7B03-400C-0AD1-8089-8A97BF946A39";
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
	setAttr ".tg[0].tot" -type "double3" -14.466561687799707 -1.0123883140700229e-06 
		-3.8336277796702234e-05 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 5.2612904818337985e-16 
		-9.9392333795734899e-17 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056092 ;
	setAttr ".rst" -type "double3" -40.313399759290022 96.207511011042754 -0.77893157191785178 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056092 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_03_FK_Ctrl_Grp_parentConstraint2" -p "R_Arm_03_FK_Ctrl_Grp";
	rename -uid "744B8EF8-4E39-A7F5-B5D1-39A683993A94";
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
	setAttr ".tg[0].tot" -type "double3" -14.466561687799715 -1.0123883138479783e-06 
		-3.8336277782491379e-05 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 5.2612904818337985e-16 
		-9.9392333795734899e-17 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056092 ;
	setAttr ".rst" -type "double3" -40.313399759290029 96.207511011042769 -0.77893157191785189 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056092 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_FK_Ctrl_Grp_scaleConstraint1" -p "R_Arm_FK_Ctrl_Grp";
	rename -uid "0B8CDC79-4E9A-9B71-7C88-C99F2B737BBA";
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
	rename -uid "EE394108-433E-BCAD-4179-1CA19EDC061B";
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
	setAttr ".tg[0].tot" -type "double3" 0.0057826061820378527 0.0087553862566771556 
		-0.0035703049225617178 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 5.2605625106390061e-16 
		-3.975693351829396e-16 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056092 ;
	setAttr ".rst" -type "double3" -40.307799759289999 96.203811011042717 -0.78775157191785172 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056092 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Hand_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Hand_01_FK_Ctrl_Grp";
	rename -uid "AAA13774-4492-F99B-F99F-9691354E990F";
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
	setAttr ".tg[0].tot" -type "double3" 0.0057826061820449581 0.0087553862566771556 
		-0.0035703049225617178 ;
	setAttr ".tg[0].tor" -type "double3" 9.3180312933501468e-18 5.2605625106390061e-16 
		-3.975693351829396e-16 ;
	setAttr ".lr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056092 ;
	setAttr ".rst" -type "double3" -40.307799759289992 96.203811011042717 -0.78775157191785172 ;
	setAttr ".rsrr" -type "double3" -89.983176540731733 0.63517301505925616 -1.3429893242056092 ;
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
	rename -uid "9CD62F4E-4D5B-5D28-1F6E-2794CB31901D";
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
	setAttr ".tg[0].tot" -type "double3" -2.6094737698135617 1.9102921206894081 0.091912549127897591 ;
	setAttr ".tg[0].tor" -type "double3" 89.983172950910145 -1.3431757650075773 -0.6347786047455618 ;
	setAttr ".lr" -type "double3" 6.3626623681425918e-15 -9.9392333795734899e-17 -5.5187298898655713e-33 ;
	setAttr ".rst" -type "double3" -42.935399759290021 96.357911011042717 -2.6689715719178522 ;
	setAttr ".rsrr" -type "double3" 6.3626623681425918e-15 -9.9392333795734899e-17 -5.5187298898655713e-33 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Hand_Cup_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "F571D859-4B6F-A01C-2F94-178E9978ABF9";
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
	setAttr ".tg[0].tot" -type "double3" -2.6094737698135688 1.9102921206894086 0.091912549127897591 ;
	setAttr ".tg[0].tor" -type "double3" 89.983172950910145 -1.3431757650075773 -0.6347786047455618 ;
	setAttr ".lr" -type "double3" 1.2722995228461846e-14 -3.478731682850722e-16 1.9878466759146975e-16 ;
	setAttr ".rst" -type "double3" -42.935399759290028 96.357911011042717 -2.6689715719178526 ;
	setAttr ".rsrr" -type "double3" 6.3626623681425918e-15 -9.9392333795734899e-17 -5.5187298898655713e-33 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Hand_Cup_01_FK_Ctrl_Grp_scaleConstraint1" -p "R_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "1F27D86C-49F6-CF6E-3ED1-318C3A9E4F76";
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
	rename -uid "8A5874C8-4D6D-31F4-B465-BD8E2CD8F0B3";
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
	setAttr ".tg[0].tot" -type "double3" -2.0471587998276561 -0.47025121604991504 -0.21917722508490556 ;
	setAttr ".tg[0].tor" -type "double3" 88.656824177087657 0.016822425508364321 89.364826957562073 ;
	setAttr ".lr" -type "double3" -1.1947768848236531e-15 89.999999999999972 0 ;
	setAttr ".rst" -type "double3" -42.354199759290019 96.032411011042697 -0.29489957191785149 ;
	setAttr ".rsrr" -type "double3" -1.1947768848236531e-15 89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_01_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "451F572C-4BF9-7E66-4393-70874C0645B2";
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
	setAttr ".tg[0].tot" -type "double3" -2.0471587998276632 -0.47025121604991493 -0.21917722508491977 ;
	setAttr ".tg[0].tor" -type "double3" 88.656824177087657 0.016822425508364321 89.364826957562073 ;
	setAttr ".lr" -type "double3" 3.2329256883463691e-15 89.999999999999972 0 ;
	setAttr ".rst" -type "double3" -42.354199759290026 96.032411011042683 -0.29489957191785149 ;
	setAttr ".rsrr" -type "double3" -1.1947768848236531e-15 89.999999999999972 0 ;
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
	rename -uid "B70690A5-491B-103B-2622-91971C32E1D7";
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
	setAttr ".tg[0].tot" -type "double3" -3.0522180000000021 -0.69159999999997979 -1.1789999999999949 ;
	setAttr ".tg[0].tor" -type "double3" 4.2928659695229658 -25.469866719530067 54.373605364405044 ;
	setAttr ".lr" -type "double3" 77.164848362321536 31.727871800243566 59.629158448751909 ;
	setAttr ".rst" -type "double3" -43.533199759290014 95.340811011042717 2.7573184280821503 ;
	setAttr ".rsrr" -type "double3" 77.164848362321536 31.727871800243566 59.629158448751909 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_01_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "DE9A62A7-4419-563A-30C5-3FB589446F14";
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
	setAttr ".tg[0].tot" -type "double3" -3.0522180000000025 -0.69159999999997979 -1.179000000000002 ;
	setAttr ".tg[0].tor" -type "double3" 4.2928659695229658 -25.469866719530067 54.373605364405044 ;
	setAttr ".lr" -type "double3" 77.164848362321536 31.727871800243566 59.629158448751909 ;
	setAttr ".rst" -type "double3" -43.533199759290021 95.340811011042717 2.7573184280821508 ;
	setAttr ".rsrr" -type "double3" 77.164848362321536 31.727871800243566 59.629158448751909 ;
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
	rename -uid "69C639E8-44A1-6513-0BE8-3EB89A44AC9F";
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
	setAttr ".tg[0].tot" -type "double3" -3.3333566172594544 2.9002132961863936e-05 
		-4.1612826095160926e-05 ;
	setAttr ".tg[0].tor" -type "double3" -0.37571711577716677 -29.209601892891424 3.6072916636437182 ;
	setAttr ".lr" -type "double3" 64.941546953431754 18.684336332370929 30.327655479800157 ;
	setAttr ".rst" -type "double3" -44.966699759290023 92.894711011042702 4.5102984280821685 ;
	setAttr ".rsrr" -type "double3" 64.941546953431754 18.684336332370929 30.327655479800157 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_01_Knuckle_03_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "D4B4C1AC-48C1-DFB9-AC1F-41AB3725DA7C";
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
	setAttr ".tg[0].tot" -type "double3" -3.3333566172594615 2.900213297607479e-05 -4.1612826080950072e-05 ;
	setAttr ".tg[0].tor" -type "double3" -0.37571711577716677 -29.209601892891424 3.6072916636437182 ;
	setAttr ".lr" -type "double3" 64.941546953431754 18.684336332370929 30.327655479800157 ;
	setAttr ".rst" -type "double3" -44.966699759290009 92.894711011042702 4.5102984280821872 ;
	setAttr ".rsrr" -type "double3" 64.941546953431754 18.684336332370929 30.327655479800157 ;
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
	rename -uid "300FDA08-4D00-7A0D-1283-9EBC48641F7E";
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
	rename -uid "9A33A7F6-408D-1A65-671F-F5B64151A5F5";
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
	setAttr ".tg[0].tot" -type "double3" -8.3750917141169836 -3.0746619690990222 -0.22513910900991618 ;
	setAttr ".tg[0].tor" -type "double3" 96.984319633482997 -21.446472576163398 0.81102226025629021 ;
	setAttr ".lr" -type "double3" 7.5288532379989279 1.3398884268187277 20.109876494637774 ;
	setAttr ".rst" -type "double3" -48.651299759290012 96.173311011042713 2.3794984280821492 ;
	setAttr ".rsrr" -type "double3" 7.5288532379989279 1.3398884268187277 20.109876494637774 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_02_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "BB287ACA-4AC7-420D-B893-22BF552132AB";
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
	setAttr ".tg[0].tot" -type "double3" -8.3750917141169836 -3.0746619690990222 -0.22513910900991618 ;
	setAttr ".tg[0].tor" -type "double3" 96.984319633482997 -21.446472576163398 0.81102226025629021 ;
	setAttr ".lr" -type "double3" 7.5288532379989279 1.3398884268187277 20.109876494637774 ;
	setAttr ".rst" -type "double3" -48.651299759290012 96.173311011042713 2.3794984280821492 ;
	setAttr ".rsrr" -type "double3" 7.5288532379989279 1.3398884268187277 20.109876494637774 ;
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
	rename -uid "E1CA8695-488B-9831-F499-2AA4745BA341";
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
	setAttr ".tg[0].tot" -type "double3" -3.0966790240319817 1.4610952518978593e-05 
		-2.6145914961972494e-06 ;
	setAttr ".tg[0].tor" -type "double3" 4.7708320221952752e-15 -3.975693351829396e-15 
		22.928549236095332 ;
	setAttr ".lr" -type "double3" 7.4584132894044899 -1.6902111096619821 42.840087749056359 ;
	setAttr ".rst" -type "double3" -51.558399759290005 95.108911011042693 2.4519084280821488 ;
	setAttr ".rsrr" -type "double3" 7.4584132894044899 -1.6902111096619821 42.840087749056359 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_02_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "E950C8D7-4C8F-7B30-D656-AA875893026A";
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
	setAttr ".tg[0].tot" -type "double3" -3.0966790240319888 1.4610952504767738e-05 
		-2.6145914944208926e-06 ;
	setAttr ".tg[0].tor" -type "double3" 4.7708320221952752e-15 -3.975693351829396e-15 
		22.928549236095332 ;
	setAttr ".lr" -type "double3" 7.4584132894044899 -1.6902111096619821 42.840087749056359 ;
	setAttr ".rst" -type "double3" -51.558399759290012 95.108911011042679 2.4519084280821488 ;
	setAttr ".rsrr" -type "double3" 7.4584132894044899 -1.6902111096619821 42.840087749056359 ;
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
	rename -uid "03F67744-4896-9555-955B-CD88D79EA293";
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
	rename -uid "19ED4296-4BE5-81D1-1347-7B8F59BC9EC0";
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
	setAttr ".tg[0].tot" -type "double3" -8.6573981715691417 -0.73970892058643123 0.21737428945679937 ;
	setAttr ".tg[0].tor" -type "double3" 90.214072174133676 -20.434713950500637 -0.12703297212552975 ;
	setAttr ".lr" -type "double3" 0.40725246633191514 0.4702887734504983 19.092405550321921 ;
	setAttr ".rst" -type "double3" -48.948999759290018 96.623611011042712 0.047948428082148498 ;
	setAttr ".rsrr" -type "double3" 0.40725246633191514 0.4702887734504983 19.092405550321921 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_03_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "511E833A-4080-798C-9BD9-028E901C162C";
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
	setAttr ".tg[0].tot" -type "double3" -8.6573981715691488 -0.73970892058643112 0.21737428945681359 ;
	setAttr ".tg[0].tor" -type "double3" 90.214072174133676 -20.434713950500637 -0.12703297212552975 ;
	setAttr ".lr" -type "double3" 0.40725246633192819 0.4702887734504993 19.092405550321921 ;
	setAttr ".rst" -type "double3" -48.948999759290025 96.623611011042726 0.047948428082148387 ;
	setAttr ".rsrr" -type "double3" 0.40725246633191514 0.4702887734504983 19.092405550321921 ;
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
	rename -uid "BA00B7BE-4442-CBCE-56C4-A0A65112C3BF";
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
	setAttr ".tg[0].tot" -type "double3" -3.2946304711159513 1.3854961324000215e-05 
		-1.0113538784217724e-08 ;
	setAttr ".tg[0].tor" -type "double3" 5.9635400277440949e-16 2.6835930124848422e-15 
		15.347549166690081 ;
	setAttr ".lr" -type "double3" 0.51720052065499267 0.34573001761957267 34.439843760823088 ;
	setAttr ".rst" -type "double3" -52.062299759290013 95.546011011042737 0.07499082808214888 ;
	setAttr ".rsrr" -type "double3" 0.51720052065499267 0.34573001761957267 34.439843760823088 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_03_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "3FDE19E4-43F2-DA85-6CEC-7CA14CC59C7F";
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
	setAttr ".tg[0].tot" -type "double3" -3.2946304711159584 1.3854961324000215e-05 
		-1.0113538784217724e-08 ;
	setAttr ".tg[0].tor" -type "double3" 5.9635400277440949e-16 2.6835930124848422e-15 
		15.347549166690081 ;
	setAttr ".lr" -type "double3" 0.51720052065500555 0.34573001761956995 34.439843760823088 ;
	setAttr ".rst" -type "double3" -52.062299759290021 95.546011011042722 0.074990828082148936 ;
	setAttr ".rsrr" -type "double3" 0.51720052065499267 0.34573001761957267 34.439843760823088 ;
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
	rename -uid "9CA8E70A-4049-2C14-90A7-9CA9EF792987";
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
	rename -uid "F13D3897-4438-082A-2B25-E997722409B2";
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
	setAttr ".tg[0].tot" -type "double3" -5.9966999999999828 -0.05330000000000723 0.44212000000000051 ;
	setAttr ".tg[0].tor" -type "double3" -6.5870617948138808 -0.074524456937096376 19.8317770829747 ;
	setAttr ".lr" -type "double3" -6.5870617948138817 -0.074524456937096376 19.831777082974703 ;
	setAttr ".rst" -type "double3" -48.932099759290004 96.304611011042709 -2.2268515719178517 ;
	setAttr ".rsrr" -type "double3" -6.5870617948138817 -0.074524456937096376 19.831777082974703 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_04_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "323D692B-4D6A-18C6-14AA-6A8ADDF0A0CC";
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
	setAttr ".tg[0].tot" -type "double3" -5.9966999999999828 -0.05330000000000723 0.44212000000000051 ;
	setAttr ".tg[0].tor" -type "double3" -6.5870617948138808 -0.074524456937096376 19.8317770829747 ;
	setAttr ".lr" -type "double3" -6.5870617948138817 -0.074524456937096376 19.831777082974703 ;
	setAttr ".rst" -type "double3" -48.932099759290004 96.304611011042709 -2.2268515719178517 ;
	setAttr ".rsrr" -type "double3" -6.5870617948138817 -0.074524456937096376 19.831777082974703 ;
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
	rename -uid "AE0074AF-4BC8-8693-02DA-73B28064FC6A";
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
	setAttr ".tg[0].tot" -type "double3" -3.0461486323296825 3.6275829785381575e-05 
		6.3187344139237211e-06 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 17.790460952726566 ;
	setAttr ".lr" -type "double3" -6.2972915085652401 1.9375660210312657 37.51135452139912 ;
	setAttr ".rst" -type "double3" -51.797599759290001 95.271211011042695 -2.2308115719178483 ;
	setAttr ".rsrr" -type "double3" -6.2972915085652401 1.9375660210312657 37.51135452139912 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_04_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "5D02DCE4-450C-4407-0BB8-34BA4C0DBE02";
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
	setAttr ".tg[0].tot" -type "double3" -3.0461486323296896 3.6275829785381575e-05 
		6.3187344139237211e-06 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 17.790460952726566 ;
	setAttr ".lr" -type "double3" -6.2972915085652401 1.937566021031266 37.51135452139912 ;
	setAttr ".rst" -type "double3" -51.797599759290009 95.271211011042695 -2.2308115719178483 ;
	setAttr ".rsrr" -type "double3" -6.2972915085652401 1.9375660210312657 37.51135452139912 ;
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
	rename -uid "5096164F-485D-AAE4-A3C3-9FB6DE482F88";
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
	rename -uid "A14289B0-454B-EC55-C1B7-84A927D4D232";
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
	setAttr ".tg[0].tot" -type "double3" -5.9570999999999898 -0.86489999999999156 -1.7271199999999993 ;
	setAttr ".tg[0].tor" -type "double3" -10.099488601197722 0.13134202521530788 26.395094951067858 ;
	setAttr ".lr" -type "double3" -10.099488601197722 0.13134202521530827 26.395094951067858 ;
	setAttr ".rst" -type "double3" -48.892499759290011 95.493011011042725 -4.3960915719178519 ;
	setAttr ".rsrr" -type "double3" -10.099488601197722 0.13134202521530827 26.395094951067858 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_05_Knuckle_01_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_05_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "CA787360-4501-05C2-8044-E0AB4245EDCB";
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
	setAttr ".tg[0].tot" -type "double3" -5.9570999999999898 -0.86489999999999156 -1.7271199999999993 ;
	setAttr ".tg[0].tor" -type "double3" -10.099488601197722 0.13134202521530788 26.395094951067858 ;
	setAttr ".lr" -type "double3" -10.099488601197722 0.13134202521530827 26.395094951067858 ;
	setAttr ".rst" -type "double3" -48.892499759290011 95.493011011042725 -4.3960915719178519 ;
	setAttr ".rsrr" -type "double3" -10.099488601197722 0.13134202521530827 26.395094951067858 ;
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
	rename -uid "FFB2F82D-463A-4F91-B6F5-478F9FFCA969";
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
	setAttr ".tg[0].tot" -type "double3" -2.3815183148368608 -8.6495528975660818e-05 
		-1.4665521929302372e-05 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587935e-15 0 16.85727810602436 ;
	setAttr ".lr" -type "double3" -9.6362944165126727 3.040712120299045 43.007613539756434 ;
	setAttr ".rst" -type "double3" -51.025699759290013 94.434211011042748 -4.3906315719178517 ;
	setAttr ".rsrr" -type "double3" -9.6362944165126727 3.040712120299045 43.007613539756434 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_05_Knuckle_02_FK_Ctrl_Grp_parentConstraint2" 
		-p "R_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "054D0B1E-45A3-E93B-FB30-65A6962CE95D";
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
	setAttr ".tg[0].tot" -type "double3" -2.3815183148368608 -8.6495528975660818e-05 
		-1.4665521929302372e-05 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587935e-15 0 16.85727810602436 ;
	setAttr ".lr" -type "double3" -9.6362944165126727 3.040712120299045 43.007613539756427 ;
	setAttr ".rst" -type "double3" -51.025699759290013 94.434211011042748 -4.3906315719178517 ;
	setAttr ".rsrr" -type "double3" -9.6362944165126727 3.040712120299045 43.007613539756434 ;
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
	rename -uid "5148A000-4E55-B405-1BC8-179C0743DB5D";
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
createNode scaleConstraint -n "R_Hand_FK_Ctrl_Grp_scaleConstraint1" -p "R_Hand_FK_Ctrl_Grp";
	rename -uid "348856D1-470F-7D07-6702-BAAE894245E3";
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
	rename -uid "F8A52D19-405C-7048-B7AF-F78359760A1F";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Leg_01_FK_Ctrl_Grp";
	rename -uid "ECB2AA2D-4718-2B05-730B-309D03DC0310";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_Clav_FK_Ctrl_Grp_scaleConstraint1" -p "L_Leg_Clav_FK_Ctrl_Grp";
	rename -uid "6AE60541-4E17-C522-A790-22875D5DB8CA";
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
	rename -uid "3184E83E-4BF5-DCA6-1261-F184FFE8BC2A";
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
	setAttr ".tg[0].tor" -type "double3" -3.1806156722125844e-15 0.35482540780393751 
		-6.0112437830075756 ;
	setAttr ".lr" -type "double3" 90.037363810983081 6.0111280879910964 -89.643212799350422 ;
	setAttr ".rst" -type "double3" 6.3115973472595268 61.39758978882552 0.1414186954498291 ;
	setAttr ".rsrr" -type "double3" 90.037363810983081 6.0111280879910964 -89.643212799350422 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_02_FK_Ctrl_Grp_parentConstraint2" -p "L_Leg_02_FK_Ctrl_Grp";
	rename -uid "CEA540EC-45D3-0431-D8F3-30826C0BF8E0";
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
	setAttr ".tg[0].tor" -type "double3" -3.1806156722125844e-15 0.35482540780393751 
		-6.0112437830075756 ;
	setAttr ".lr" -type "double3" 90.037363810983081 6.0111280879910964 -89.643212799350422 ;
	setAttr ".rst" -type "double3" 6.3115973472595268 61.39758978882552 0.1414186954498291 ;
	setAttr ".rsrr" -type "double3" 90.037363810983081 6.0111280879910964 -89.643212799350422 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg_03_FK_Ctrl_Grp" -p "L_Leg_FK_Ctrl_Grp";
	rename -uid "910837D2-4C63-542A-0C05-488753B2C818";
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
	rename -uid "87898E9F-4A61-8E56-3517-B3B547FA7C80";
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
	setAttr ".tg[0].tot" -type "double3" 18.899732833631987 5.3290705182007514e-15 1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 6.8829191153546407e-15 -1.410905238334768e-15 
		1.1578334514342705 ;
	setAttr ".lr" -type "double3" 90.037292076111001 4.8532948822590036 -89.64397051273292 ;
	setAttr ".rst" -type "double3" 6.4286402185164793 42.602140141132139 -1.8377919274949488 ;
	setAttr ".rsrr" -type "double3" 90.037292076111001 4.8532948822590036 -89.64397051273292 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_03_FK_Ctrl_Grp_parentConstraint2" -p "L_Leg_03_FK_Ctrl_Grp";
	rename -uid "F1E04E2D-44DF-D78E-C665-7CA5BF63FD37";
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
	setAttr ".tg[0].tot" -type "double3" 18.899732833631987 5.3290705182007514e-15 2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 6.8829191153546407e-15 -1.410905238334768e-15 
		1.1578334514342705 ;
	setAttr ".lr" -type "double3" 90.037292076111001 4.8532948822590036 -89.64397051273292 ;
	setAttr ".rst" -type "double3" 6.4286402185164784 42.602140141132139 -1.8377919274949488 ;
	setAttr ".rsrr" -type "double3" 90.037292076111001 4.8532948822590036 -89.64397051273292 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg_04_FK_Ctrl_Grp" -p "L_Leg_FK_Ctrl_Grp";
	rename -uid "BA87FC16-46D0-1401-7C48-A68E137C8D94";
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
	rename -uid "C6E775CB-41EB-8AB8-F117-53B195D53133";
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
	setAttr ".tg[0].tot" -type "double3" 33.267266496368627 1.7763568394002505e-14 -5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" -7.4544250346801162e-17 -3.8825130388958945e-19 
		1.5902773407317584e-14 ;
	setAttr ".lr" -type "double3" 90.037292076111001 4.8532948822590116 -89.64397051273292 ;
	setAttr ".rst" -type "double3" 6.6346167489351124 9.4547902793947927 -4.6523595591052205 ;
	setAttr ".rsrr" -type "double3" 90.037292076111001 4.8532948822590116 -89.64397051273292 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_04_FK_Ctrl_Grp_parentConstraint2" -p "L_Leg_04_FK_Ctrl_Grp";
	rename -uid "55F6F955-406C-535B-01DA-31A14D7A5074";
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
	setAttr ".tg[0].tot" -type "double3" 33.26726649636862 1.6875389974302379e-14 -4.4408920985006262e-15 ;
	setAttr ".tg[0].tor" -type "double3" -7.4544250346801162e-17 -3.8825130388958945e-19 
		1.5902773407317584e-14 ;
	setAttr ".lr" -type "double3" 90.037292076111001 4.8532948822590116 -89.64397051273292 ;
	setAttr ".rst" -type "double3" 6.6346167489351116 9.4547902793947998 -4.6523595591052205 ;
	setAttr ".rsrr" -type "double3" 90.037292076111001 4.8532948822590116 -89.64397051273292 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Leg_FK_Ctrl_Grp_scaleConstraint1" -p "L_Leg_FK_Ctrl_Grp";
	rename -uid "5A57174E-4A71-E887-8566-01ABB89300EB";
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
	rename -uid "320103FE-4F03-9158-6196-90B62CA03D67";
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
	setAttr ".tg[0].tot" -type "double3" -0.024681606807771317 -0.00087748476256876984 
		0.010261807432270231 ;
	setAttr ".tg[0].tor" -type "double3" -0.33532667872152377 -0.11246489350217649 69.759457814268671 ;
	setAttr ".lr" -type "double3" 89.992440083595895 -64.905728504832453 -89.991652139085303 ;
	setAttr ".rst" -type "double3" 6.6242024302482587 9.4793939590454102 -4.6511523723602277 ;
	setAttr ".rsrr" -type "double3" 89.992440083595895 -64.905728504832453 -89.991652139085303 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Foot_01_FK_Ctrl_Grp_parentConstraint2" -p "L_Foot_01_FK_Ctrl_Grp";
	rename -uid "54ACB64E-4823-71D5-55C5-A69E655E9E0D";
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
	setAttr ".tg[0].tot" -type "double3" -0.024681606807769541 -0.00087748476256788166 
		0.010261807432271119 ;
	setAttr ".tg[0].tor" -type "double3" -0.33532667872152377 -0.11246489350217649 69.759457814268671 ;
	setAttr ".lr" -type "double3" 89.992440083595895 -64.905728504832467 -89.991652139085289 ;
	setAttr ".rst" -type "double3" 6.6242024302482578 9.4793939590454084 -4.6511523723602268 ;
	setAttr ".rsrr" -type "double3" 89.992440083595895 -64.905728504832453 -89.991652139085303 ;
	setAttr -k on ".w0";
createNode transform -n "L_Foot_02_FK_Ctrl_Grp" -p "L_Foot_FK_Ctrl_Grp";
	rename -uid "49CCDFAC-421C-7ABE-651F-279D4F20DB2D";
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
	rename -uid "5ABF972F-488E-554C-7694-ACB22ECF9F78";
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
	setAttr ".tg[0].tot" -type "double3" 12.716406985465767 4.4408920985006262e-15 -5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" -5.2042541792434504e-07 2.9453520415672041e-14 
		25.094271303580342 ;
	setAttr ".lr" -type "double3" 5.2044935589942333e-07 -89.996793772323286 0.0015009954425730379 ;
	setAttr ".rst" -type "double3" 6.6249881982803327 4.086252883076674 6.8649682998657253 ;
	setAttr ".rsrr" -type "double3" 5.2044935589942333e-07 -89.996793772323286 0.0015009954425730379 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Foot_02_FK_Ctrl_Grp_parentConstraint2" -p "L_Foot_02_FK_Ctrl_Grp";
	rename -uid "4F2D31B5-4242-011E-1D37-6E833F18AD7E";
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
	setAttr ".tg[0].tot" -type "double3" 12.716406985465767 5.3290705182007514e-15 -4.4408920985006262e-15 ;
	setAttr ".tg[0].tor" -type "double3" -5.2042541792434504e-07 2.9453520415672041e-14 
		25.094271303580342 ;
	setAttr ".lr" -type "double3" 5.1972594169124829e-07 -89.996793772323272 0.001500996165989471 ;
	setAttr ".rst" -type "double3" 6.6249881982803318 4.086252883076674 6.8649682998657253 ;
	setAttr ".rsrr" -type "double3" 5.2044935589942333e-07 -89.996793772323286 0.0015009954425730379 ;
	setAttr -k on ".w0";
createNode transform -n "L_Foot_03_FK_Ctrl_Grp" -p "L_Foot_FK_Ctrl_Grp";
	rename -uid "2EB6E13D-46C7-3896-8CE7-839907D63106";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.6254998092505915 4.0862528964795066 16.007534668531722 ;
	setAttr ".r" -type "double3" 0 -89.996793772323244 0.0015009954665072614 ;
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
	rename -uid "4701A174-42AA-9048-3C28-6CACED91B2BD";
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
	setAttr ".o" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
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
	rename -uid "D2C9092E-4946-43F0-3696-AAAC34DD9D2F";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Leg_01_FK_Ctrl_Grp";
	rename -uid "74F62368-4DE5-02F0-136A-52BFF26BBBBA";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_Clav_Ctrl_Grp_scaleConstraint1" -p "R_Leg_Clav_Ctrl_Grp";
	rename -uid "DE2F6891-4F75-BEFF-D5AE-0698D90C8F6C";
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
	rename -uid "D78787FC-4C20-E4DA-216F-E88B3D0C96DC";
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
	setAttr ".tg[0].tor" -type "double3" 1.2722462688850338e-14 0.35482540780393751 
		-6.0112437830075391 ;
	setAttr ".lr" -type "double3" -89.962636189016933 -6.0111280879910556 89.643212799350422 ;
	setAttr ".rst" -type "double3" -6.3116 61.3976 0.14141899999999996 ;
	setAttr ".rsrr" -type "double3" -89.962636189016933 -6.0111280879910556 89.643212799350422 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_02_FK_Ctrl_Grp_parentConstraint2" -p "R_Leg_02_FK_Ctrl_Grp";
	rename -uid "E9F14BF6-44CB-670D-CD93-BAA3A27FD333";
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
	setAttr ".tg[0].tor" -type "double3" 1.2722462688850338e-14 0.35482540780393751 
		-6.0112437830075391 ;
	setAttr ".lr" -type "double3" -89.962636189016933 -6.0111280879910547 89.643212799350422 ;
	setAttr ".rst" -type "double3" -6.3116 61.3976 0.14141899999999996 ;
	setAttr ".rsrr" -type "double3" -89.962636189016933 -6.0111280879910556 89.643212799350422 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_03_FK_Ctrl_Grp" -p "R_Leg_FK_Ctrl_Grp";
	rename -uid "D72B3829-4B29-CFBB-333B-9498C9864B93";
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
	rename -uid "AE086BA0-440F-EBAD-8F6D-608D77C6C5C0";
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
	setAttr ".tg[0].tot" -type "double3" -18.899782720370709 -2.6645352591003757e-15 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.8275765376690755e-14 4.7362776561491015e-15 
		1.1578334514339488 ;
	setAttr ".lr" -type "double3" -89.962707923889027 -4.8532948822592834 89.64397051273292 ;
	setAttr ".rst" -type "double3" -6.4286431801971453 42.602100740828291 -1.8377968471648161 ;
	setAttr ".rsrr" -type "double3" -89.962707923889027 -4.8532948822592834 89.64397051273292 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_03_FK_Ctrl_Grp_parentConstraint2" -p "R_Leg_03_FK_Ctrl_Grp";
	rename -uid "FEFF7572-477E-2E60-3EA7-48BD9AD0EAE8";
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
	setAttr ".tg[0].tot" -type "double3" -18.899782720370695 -2.6645352591003757e-15 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.8275765376690755e-14 4.7362776561491015e-15 
		1.1578334514339488 ;
	setAttr ".lr" -type "double3" -89.962707923889027 -4.8532948822592834 89.64397051273292 ;
	setAttr ".rst" -type "double3" -6.4286431801971453 42.602100740828305 -1.8377968471648147 ;
	setAttr ".rsrr" -type "double3" -89.962707923889027 -4.8532948822592834 89.64397051273292 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_04_FK_Ctrl_Grp" -p "R_Leg_FK_Ctrl_Grp";
	rename -uid "487DE978-4697-6D4F-63C6-DCBC19F095A6";
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
	rename -uid "65798B9B-4928-BD90-F5FA-0DBA12D0F27F";
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
	setAttr ".tg[0].tot" -type "double3" -33.267227000177741 5.732917937706361e-06 3.7134785273451598e-06 ;
	setAttr ".tg[0].tor" -type "double3" 3.181797085635964e-14 1.2743960798871884e-14 
		5.5659706925611543e-15 ;
	setAttr ".lr" -type "double3" -89.962707923889027 -4.8532948822592896 89.64397051273292 ;
	setAttr ".rst" -type "double3" -6.6346231801971447 9.4547907408282654 -4.6523668471648154 ;
	setAttr ".rsrr" -type "double3" -89.962707923889027 -4.8532948822592896 89.64397051273292 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_04_FK_Ctrl_Grp_parentConstraint2" -p "R_Leg_04_FK_Ctrl_Grp";
	rename -uid "41E05429-46E2-FA0D-1F57-F19AB786C286";
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
	setAttr ".tg[0].tot" -type "double3" -33.267227000177748 5.7329179359300042e-06 
		3.7134785264569814e-06 ;
	setAttr ".tg[0].tor" -type "double3" 3.181797085635964e-14 1.2743960798871884e-14 
		5.5659706925611543e-15 ;
	setAttr ".lr" -type "double3" -89.962707923889027 -4.8532948822592896 89.64397051273292 ;
	setAttr ".rst" -type "double3" -6.6346231801971438 9.4547907408282583 -4.6523668471648145 ;
	setAttr ".rsrr" -type "double3" -89.962707923889027 -4.8532948822592896 89.64397051273292 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Leg_FK_Ctrl_Grp_scaleConstraint1" -p "R_Leg_FK_Ctrl_Grp";
	rename -uid "39855C74-4A82-A138-7563-76997D8BE6BF";
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
	rename -uid "1D379B16-4930-BCE6-8CE7-A1955391533E";
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
	setAttr ".tg[0].tot" -type "double3" 0.024678213611876387 0.00087436955928232862 
		-0.010267509474125802 ;
	setAttr ".tg[0].tor" -type "double3" -0.33532667872356381 -0.11246489350222075 69.759457814268927 ;
	setAttr ".lr" -type "double3" -90.00755991640618 64.905728504832439 89.991652139085289 ;
	setAttr ".rst" -type "double3" -6.6242031801971448 9.4793907408282845 -4.6511568471648177 ;
	setAttr ".rsrr" -type "double3" -90.00755991640618 64.905728504832439 89.991652139085289 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Foot_01_FK_Ctrl_Grp_parentConstraint2" -p "R_Foot_01_FK_Ctrl_Grp";
	rename -uid "435C8CB4-45AB-5377-1352-599C020593CD";
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
	setAttr ".tg[0].tot" -type "double3" 0.024678213611876387 0.0008743695592832168 
		-0.010267509474125802 ;
	setAttr ".tg[0].tor" -type "double3" -0.33532667872356381 -0.11246489350222075 69.759457814268927 ;
	setAttr ".lr" -type "double3" -90.00755991640618 64.905728504832439 89.991652139085289 ;
	setAttr ".rst" -type "double3" -6.6242031801971448 9.4793907408282845 -4.6511568471648186 ;
	setAttr ".rsrr" -type "double3" -90.00755991640618 64.905728504832439 89.991652139085289 ;
	setAttr -k on ".w0";
createNode transform -n "R_Foot_02_FK_Ctrl_Grp" -p "R_Foot_FK_Ctrl_Grp";
	rename -uid "AFDDFB2D-45C4-76F3-428C-B3BDE67DF4CA";
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
	rename -uid "B5F50792-4F0C-A2BF-59FA-A7ABA63BDD8E";
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
	setAttr ".tg[0].tot" -type "double3" -12.716405920624016 -6.8931235741587216e-07 
		4.2320337350076898e-06 ;
	setAttr ".tg[0].tor" -type "double3" -2.4391067021897421e-11 -1.0876860278466848e-14 
		25.094271303580353 ;
	setAttr ".lr" -type "double3" -179.99999947975232 89.996793772322363 -0.0015009956423810528 ;
	setAttr ".rst" -type "double3" -6.6249931801971478 4.0862507408282864 6.8649631528351813 ;
	setAttr ".rsrr" -type "double3" -179.99999947975232 89.996793772322363 -0.0015009956423810528 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Foot_02_FK_Ctrl_Grp_parentConstraint2" -p "R_Foot_02_FK_Ctrl_Grp";
	rename -uid "46381733-4AF0-EC5E-DA55-AEAD6691061B";
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
	setAttr ".tg[0].tot" -type "double3" -12.716405920624016 -6.8931235830405058e-07 
		4.2320337358958682e-06 ;
	setAttr ".tg[0].tor" -type "double3" -2.4391067021897421e-11 -1.0876860278466848e-14 
		25.094271303580353 ;
	setAttr ".lr" -type "double3" -179.99999947975232 89.996793772322363 -0.0015009956423810528 ;
	setAttr ".rst" -type "double3" -6.6249931801971487 4.0862507408282873 6.8649631528351813 ;
	setAttr ".rsrr" -type "double3" -179.99999947975232 89.996793772322363 -0.0015009956423810528 ;
	setAttr -k on ".w0";
createNode transform -n "R_Foot_03_FK_Ctrl_Grp" -p "R_Foot_FK_Ctrl_Grp";
	rename -uid "A335E21E-4530-4B4C-5725-429CDC171A7B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.6255031801971445 4.0862507408282838 16.007493152835185 ;
	setAttr ".r" -type "double3" -179.99999947988462 89.996793772322391 -0.0015009957502966809 ;
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
	rename -uid "1B3E1DFF-473A-F837-748B-85AF8C72A974";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
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
	rename -uid "BE2A8F87-48E3-FAEF-DF37-C4B24A05DB43";
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
	setAttr ".tg[0].tot" -type "double3" 22.828194873746625 14.800016773098385 -2.3383733946918061e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854064e-14 0 4.3999241267888873 ;
	setAttr ".lr" -type "double3" 90 0 90 ;
	setAttr ".rst" -type "double3" -3.0898599488032036e-14 129.8589897155762 9.8365712165832466 ;
	setAttr ".rsrr" -type "double3" 90 0 90 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Goggle_01_FK_Ctrl_Grp_parentConstraint2" -p "Goggle_01_FK_Ctrl_Grp";
	rename -uid "411853F7-48CF-1CB7-546D-968F9E74EC14";
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
	setAttr ".tg[0].tot" -type "double3" 22.828194873746654 14.800016773098385 -2.3383733946918061e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854064e-14 0 4.3999241267888873 ;
	setAttr ".lr" -type "double3" 90 0 90 ;
	setAttr ".rst" -type "double3" -3.0898599488032036e-14 129.85898971557623 9.8365712165832448 ;
	setAttr ".rsrr" -type "double3" 90 0 90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Goggle_01_FK_Ctrl_Grp_scaleConstraint1" -p "Goggle_01_FK_Ctrl_Grp";
	rename -uid "C0C88BE3-4B38-5BD0-795B-1BA42B68A2C1";
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
	rename -uid "497AC014-4753-76E8-8C5E-FE86AC38B3B3";
	setAttr -s 12 ".lnk";
	setAttr -s 12 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D09FB930-419F-3EE8-BBB5-85A15E3E6D70";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "747283B9-4E73-1FA0-8741-4B9A5D19ED7F";
createNode displayLayerManager -n "layerManager";
	rename -uid "95C67E72-4B62-1A98-48A8-67AA78ACCE4D";
	setAttr ".cdl" 4;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "31CAD749-4562-13B6-1DA2-DBB4B11C7A18";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5DDC5D04-4E1B-FFA1-8085-42B4A8BCC68F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AEDC8A2F-4A6E-E2D2-FF77-06B1D0300DD4";
	setAttr ".g" yes;
createNode reference -n "Takoto_ModelRN";
	rename -uid "149AE1AD-4820-8D60-2067-2EAB9AD74D16";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Takoto_ModelRN"
		"Takoto_ModelRN" 0
		"Takoto_ModelRN" 16
		2 "|Takoto_Model:Takoto" "translate" " -type \"double3\" 0 0 0"
		2 "|Takoto_Model:Takoto" "rotate" " -type \"double3\" 0 0 0"
		2 "|Takoto_Model:Takoto" "scale" " -type \"double3\" 1 1 1"
		2 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo|Takoto_Model:Takoto_GeoShape" 
		"intermediateObject" " 0"
		2 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo|Takoto_Model:Takoto_GeoShape" 
		"uvPivot" " -type \"double2\" 0.76770249009132385 -0.10984699986875057"
		2 "Takoto_Model:Geo_Layer" "displayType" " 1"
		2 "Takoto_Model:Geo_Layer" "visibility" " 1"
		9 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo" "translateX"
		
		9 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo" "translateY"
		
		9 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo" "translateZ"
		
		9 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo" "rotateX"
		
		9 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo" "rotateY"
		
		9 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo" "rotateZ"
		
		9 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo" "scaleX"
		
		9 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo" "scaleY"
		
		9 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CFE08DFC-4A8C-19A8-7323-1CAA027E33F9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1174\n            -height 694\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1174\\n    -height 694\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1174\\n    -height 694\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode reverse -n "L_Clav_01_FK_Translate_REV";
	rename -uid "5057C87E-40DC-C5B1-3C43-45B6B2066144";
createNode reverse -n "L_CLav_01_FK_Rotate_REV";
	rename -uid "5C3745AF-456E-32E1-A41E-C3BD5A31C7CD";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "693FBDEE-4398-96D5-F934-EAB1079D59A5";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 2023.0172717309792 -1461.9786169593012 ;
	setAttr ".tgi[0].vh" -type "double2" 3061.4540875306507 -939.72975142580844 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 966.318359375;
	setAttr ".tgi[0].ni[0].y" -1247.1531982421875;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1956.7264404296875;
	setAttr ".tgi[0].ni[1].y" -694.80316162109375;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 2433.95654296875;
	setAttr ".tgi[0].ni[2].y" -884.91473388671875;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" 2468.276611328125;
	setAttr ".tgi[0].ni[3].y" -678.8734130859375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 2765.38037109375;
	setAttr ".tgi[0].ni[4].y" -738.04888916015625;
	setAttr ".tgi[0].ni[4].nvs" 18306;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
	setAttr -s 4 ".u";
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
connectAttr "Skeleton_Layer.di" "Skeleton.do";
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
connectAttr "L_Arm_01_IK_Jnt.s" "L_Arm_02_IK_Jnt.is";
connectAttr "L_Arm_02_IK_Jnt.s" "L_Arm_03_IK_Jnt.is";
connectAttr "L_Clavical_01_FK_Jnt.s" "L_Arm_01_RK_Jnt.is";
connectAttr "L_Arm_01_RK_Jnt.s" "L_Arm_02_RK_Jnt.is";
connectAttr "L_Arm_02_RK_Jnt.s" "L_Arm_03_RK_Jnt.is";
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
connectAttr "R_Arm_01_IK_Jnt.s" "R_Arm_02_IK_Jnt.is";
connectAttr "R_Arm_02_IK_Jnt.s" "R_Arm_03_IK_Jnt.is";
connectAttr "R_Clavical_01_FK_Jnt.s" "R_Arm_01_RK_Jnt.is";
connectAttr "R_Arm_01_RK_Jnt.s" "R_Arm_02_RK_Jnt.is";
connectAttr "R_Arm_02_RK_Jnt.s" "R_Arm_03_RK_Jnt.is";
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
connectAttr "L_Leg_02_IK_Jnt.s" "L_Leg_03_IK_Jnt.is";
connectAttr "L_Leg_03_IK_Jnt.s" "L_Leg_04_IK_Jnt.is";
connectAttr "L_Leg_04_IK_Jnt.s" "L_Foot_01_IK_Jnt.is";
connectAttr "L_Foot_01_IK_Jnt.s" "L_Foot_02_IK_Jnt.is";
connectAttr "L_Foot_02_IK_Jnt.s" "L_Foot_03_IK_Jnt.is";
connectAttr "L_Leg_01_FK_Jnt.s" "L_Leg_02_RK_Jnt.is";
connectAttr "L_Leg_02_RK_Jnt.s" "L_Leg_03_RK_Jnt.is";
connectAttr "L_Leg_03_RK_Jnt.s" "L_Leg_04_RK_Jnt.is";
connectAttr "L_Leg_04_RK_Jnt.s" "L_Foot_01_RK_Jnt.is";
connectAttr "L_Foot_01_RK_Jnt.s" "L_Foot_02_RK_Jnt.is";
connectAttr "L_Foot_02_RK_Jnt.s" "L_Foot_03_RK_Jnt.is";
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
connectAttr "R_Leg_02_IK_Jnt.s" "R_Leg_03_IK_Jnt.is";
connectAttr "R_Leg_03_IK_Jnt.s" "R_Leg_04_IK_Jnt.is";
connectAttr "R_Leg_04_IK_Jnt.s" "R_Foot_01_IK_Jnt.is";
connectAttr "R_Foot_01_IK_Jnt.s" "R_Foot_02_IK_Jnt.is";
connectAttr "R_Foot_02_IK_Jnt.s" "R_Foot_03_IK_Jnt.is";
connectAttr "R_Leg_01_FK_Jnt.s" "R_Leg_02_RK_Jnt.is";
connectAttr "R_Leg_02_RK_Jnt.s" "R_Leg_03_RK_Jnt.is";
connectAttr "R_Leg_03_RK_Jnt.s" "R_Leg_04_RK_Jnt.is";
connectAttr "R_Leg_04_RK_Jnt.s" "R_Foot_01_RK_Jnt.is";
connectAttr "R_Foot_01_RK_Jnt.s" "R_Foot_02_RK_Jnt.is";
connectAttr "R_Foot_02_RK_Jnt.s" "R_Foot_03_RK_Jnt.is";
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
connectAttr "L_Hand_FK_Ctrl_Grp_scaleConstraint1.csx" "L_Hand_FK_Ctrl_Grp.sx";
connectAttr "L_Hand_FK_Ctrl_Grp_scaleConstraint1.csy" "L_Hand_FK_Ctrl_Grp.sy";
connectAttr "L_Hand_FK_Ctrl_Grp_scaleConstraint1.csz" "L_Hand_FK_Ctrl_Grp.sz";
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.ctx" "L_Hand_01_FK_Ctrl_Grp.tx"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.cty" "L_Hand_01_FK_Ctrl_Grp.ty"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.ctz" "L_Hand_01_FK_Ctrl_Grp.tz"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.crx" "L_Hand_01_FK_Ctrl_Grp.rx"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.cry" "L_Hand_01_FK_Ctrl_Grp.ry"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.crz" "L_Hand_01_FK_Ctrl_Grp.rz"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.ro" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.pim" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.rp" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.rpt" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Arm_03_FK_Ctrl.t" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_03_FK_Ctrl.rp" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_03_FK_Ctrl.rpt" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_03_FK_Ctrl.r" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Arm_03_FK_Ctrl.ro" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Arm_03_FK_Ctrl.s" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Arm_03_FK_Ctrl.pm" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.w0" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_01_FK_Ctrl.FollowTranslate" "L_Hand_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.ro" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.pim" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.rp" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp.rpt" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Arm_03_FK_Ctrl.t" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Arm_03_FK_Ctrl.rp" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Arm_03_FK_Ctrl.rpt" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Arm_03_FK_Ctrl.r" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Arm_03_FK_Ctrl.ro" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Arm_03_FK_Ctrl.s" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Arm_03_FK_Ctrl.pm" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.w0" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Hand_01_FK_Ctrl.FollowRotate" "L_Hand_01_FK_Ctrl_Grp_parentConstraint2.w0"
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
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
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
connectAttr "L_Hand_01_FK_Ctrl.s" "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Hand_01_FK_Ctrl.pm" "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_FK_Ctrl_Grp.pim" "L_Hand_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "L_Arm_03_FK_Ctrl.s" "L_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_03_FK_Ctrl.pm" "L_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
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
connectAttr "R_Hand_FK_Ctrl_Grp_scaleConstraint1.csx" "R_Hand_FK_Ctrl_Grp.sx";
connectAttr "R_Hand_FK_Ctrl_Grp_scaleConstraint1.csy" "R_Hand_FK_Ctrl_Grp.sy";
connectAttr "R_Hand_FK_Ctrl_Grp_scaleConstraint1.csz" "R_Hand_FK_Ctrl_Grp.sz";
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.ctx" "R_Hand_01_FK_Ctrl_Grp.tx"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.cty" "R_Hand_01_FK_Ctrl_Grp.ty"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.ctz" "R_Hand_01_FK_Ctrl_Grp.tz"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.crx" "R_Hand_01_FK_Ctrl_Grp.rx"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.cry" "R_Hand_01_FK_Ctrl_Grp.ry"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.crz" "R_Hand_01_FK_Ctrl_Grp.rz"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.ro" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.pim" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.rp" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.rpt" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Arm_03_FK_Ctrl.t" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_03_FK_Ctrl.rp" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_03_FK_Ctrl.rpt" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_03_FK_Ctrl.r" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Arm_03_FK_Ctrl.ro" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Arm_03_FK_Ctrl.s" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Arm_03_FK_Ctrl.pm" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.w0" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_01_FK_Ctrl.FollowTranslate" "R_Hand_01_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.ro" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.pim" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.rp" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp.rpt" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Arm_03_FK_Ctrl.t" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Arm_03_FK_Ctrl.rp" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Arm_03_FK_Ctrl.rpt" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Arm_03_FK_Ctrl.r" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Arm_03_FK_Ctrl.ro" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Arm_03_FK_Ctrl.s" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Arm_03_FK_Ctrl.pm" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.w0" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Hand_01_FK_Ctrl.FollowRotate" "R_Hand_01_FK_Ctrl_Grp_parentConstraint2.w0"
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
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_04_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
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
connectAttr "R_Hand_01_FK_Ctrl.s" "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Hand_01_FK_Ctrl.pm" "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_05_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_FK_Ctrl_Grp.pim" "R_Hand_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "R_Arm_03_FK_Ctrl.s" "R_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_03_FK_Ctrl.pm" "R_Hand_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
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
connectAttr "L_Clavical_01_FK_CtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "L_Clavical_01_FK_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "L_CLav_01_FK_Rotate_REV.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "L_Clav_01_FK_Translate_REV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_CLav_01_FK_Rotate_REV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Takoto_Rig.ma
