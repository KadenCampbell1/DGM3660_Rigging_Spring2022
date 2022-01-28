//Maya ASCII 2022 scene
//Name: Takoto_Rig.ma
//Last modified: Fri, Jan 28, 2022 01:19:33 AM
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
fileInfo "UUID" "11CBD88E-42D9-05A6-CA2A-098AB0918790";
createNode transform -s -n "persp";
	rename -uid "F1509FDE-4492-5299-1A37-E6B9EFE7DBA9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 101.66780292054827 172.29485228559793 305.46939713623175 ;
	setAttr ".r" -type "double3" 341.06164726524048 735.39999999991073 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0F00DEC8-4B13-0876-7E93-1994D60AD1BB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 341.7434488629255;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 48.932144165039062 96.304607391357379 -2.2268500328063983 ;
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
createNode joint -n "ROOT_Jnt";
	rename -uid "89E77A48-4911-3150-BDF2-3A8782084446";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".radi" 0.5;
createNode joint -n "COG_Jnt" -p "ROOT_Jnt";
	rename -uid "EF598716-465A-4F55-5508-258ACF9B522B";
	setAttr ".t" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "Spine_02_FK_Jnt" -p "Spine_01_FK_Jnt";
	rename -uid "C88E6B03-44E5-F0B3-7487-EA8D44C1432E";
	setAttr ".t" -type "double3" 11.060997009277344 0.52590012550353993 -1.1677328559745788e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -6.361109362927032e-15 0 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "Spine_03_FK_Jnt" -p "Spine_02_FK_Jnt";
	rename -uid "06C6BBF9-403C-8390-EABE-13915E3EC550";
	setAttr ".t" -type "double3" 10.501300811767578 -1.45985007286072 -2.5905446547566664e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "Spine_04_FK_Jnt" -p "Spine_03_FK_Jnt";
	rename -uid "DFD760AA-47AB-3849-57B2-5997A77F6A7B";
	setAttr ".t" -type "double3" 9.8716697692871094 -1.5726258158683719 -4.1753507160649348e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -2.8587497894855788e-14 -6.4399641896370281e-14 -4.3999241267888713 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "Neck_01_FK_Jnt" -p "Spine_04_FK_Jnt";
	rename -uid "DD135F06-4056-9687-80B0-F98F5AA9624A";
	setAttr ".t" -type "double3" 5.5694450981821531 2.1094237467877951e-15 1.9248862614085335e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "Goggle_01_FK_Jnt" -p "Neck_01_FK_Jnt";
	rename -uid "D7D07325-49D8-5F30-D730-53AEEB091440";
	setAttr ".t" -type "double3" 22.828194873746611 14.800016773098374 -2.6271440060360851e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 4.3999241267888749 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Clavical_01_FK_Jnt" -p "Spine_03_FK_Jnt";
	rename -uid "4E794A75-4388-69F8-4965-B995CC06DC70";
	setAttr ".t" -type "double3" 4.925140380859375 0.037532091140749735 2.3138317700026962 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Arm_01_FK_Jnt" -p "L_Clavical_01_FK_Jnt";
	rename -uid "5895AD8F-46AC-D9FE-ECBB-CFA4D477C41E";
	setAttr ".t" -type "double3" 6.2450352076889555 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073331631037 1.3429067857254053 0.63534752723488419 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Arm_02_FK_Jnt" -p "L_Arm_01_FK_Jnt";
	rename -uid "C56B0010-4276-8D02-CEC0-71B27B01F38B";
	setAttr ".t" -type "double3" 17.29862321182889 -3.3306690738754696e-15 1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Arm_03_FK_Jnt" -p "L_Arm_02_FK_Jnt";
	rename -uid "1DD8C203-472D-8571-1B1E-6FB539A6FE0A";
	setAttr ".t" -type "double3" 14.466630739471192 -1.3766765505351941e-14 -1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
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
createNode joint -n "L_Arm_02_IK_Jnt" -p "L_Arm_01_IK_Jnt";
	rename -uid "B5D0A1E4-4596-7CA2-CDB0-5096989B7C90";
	setAttr ".t" -type "double3" 17.29862321182889 -3.3306690738754696e-15 1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Arm_03_IK_Jnt" -p "L_Arm_02_IK_Jnt";
	rename -uid "9F9C3019-4424-3242-B50D-289DEEF2EC92";
	setAttr ".t" -type "double3" 14.466630739471192 -1.3766765505351941e-14 -1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "L_Arm_02_RK_Jnt" -p "L_Arm_01_RK_Jnt";
	rename -uid "168A009E-4868-B2C3-54BD-439B0E3C1255";
	setAttr ".t" -type "double3" 17.29862321182889 -3.3306690738754696e-15 1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Arm_03_RK_Jnt" -p "L_Arm_02_RK_Jnt";
	rename -uid "788FE006-45F1-E34C-9CB2-468B2B2EEA2A";
	setAttr ".t" -type "double3" 14.466630739471192 -1.3766765505351941e-14 -1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode joint -n "R_Clavical_01_FK_Jnt" -p "Spine_03_FK_Jnt";
	rename -uid "4637D922-460F-BDC1-E9DD-10BDFCD69535";
	setAttr ".t" -type "double3" 4.9251513916015597 0.037530082397462694 -2.3138299999999967 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -179.99999999999997 -89.999999999999972 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Arm_01_FK_Jnt" -p "R_Clavical_01_FK_Jnt";
	rename -uid "AB2E0605-4063-5574-CB66-51B8FB7C9541";
	setAttr ".t" -type "double3" -6.2450400000000013 1.3322676295501878e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0.031714073332947797 1.3429067857252246 0.63534752723475374 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Arm_02_FK_Jnt" -p "R_Arm_01_FK_Jnt";
	rename -uid "B9DD00D6-4FFC-7D56-A6AE-828276C57498";
	setAttr ".t" -type "double3" -17.298644268687653 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Arm_03_FK_Jnt" -p "R_Arm_02_FK_Jnt";
	rename -uid "223ED1F9-4D5D-8397-8EF7-5D9C12C878C0";
	setAttr ".t" -type "double3" -14.466561687799683 -1.0123883158463798e-06 -3.8336277881967362e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
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
createNode joint -n "R_Arm_02_IK_Jnt" -p "R_Arm_01_IK_Jnt";
	rename -uid "F10E371C-4C00-8F14-8BFC-E9AC41E96347";
	setAttr ".t" -type "double3" -17.298644268687653 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Arm_03_IK_Jnt" -p "R_Arm_02_IK_Jnt";
	rename -uid "E0D9A20C-4A0F-CA3E-321C-23A999921078";
	setAttr ".t" -type "double3" -14.466561687799683 -1.0123883158463798e-06 -3.8336277881967362e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "R_Arm_02_RK_Jnt" -p "R_Arm_01_RK_Jnt";
	rename -uid "2E554765-4F84-6D79-9B63-5CBA2B828DFD";
	setAttr ".t" -type "double3" -17.298644268687653 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Arm_03_RK_Jnt" -p "R_Arm_02_RK_Jnt";
	rename -uid "84CF8192-4663-98A9-4B74-78A046872ABD";
	setAttr ".t" -type "double3" -14.466561687799683 -1.0123883158463798e-06 -3.8336277881967362e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 0 0 5 ;
	setAttr ".radi" 2;
createNode joint -n "Pelvis_01_FK_Jnt" -p "COG_Jnt";
	rename -uid "D026FD0E-40E8-A839-3F3B-B88C6F28DE8E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 90 0 -90 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".radi" 2;
createNode joint -n "L_Leg_01_FK_Jnt" -p "Pelvis_01_FK_Jnt";
	rename -uid "66EC52D4-42E2-0E42-6662-CEAAADE6BBD0";
	setAttr ".t" -type "double3" 3.7890304992640012 0.18803441524505615 -3.155798673629763 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 -1.2722218725854067e-14 0 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Leg_02_FK_Jnt" -p "L_Leg_01_FK_Jnt";
	rename -uid "B6DC0044-436D-CE8B-D9F6-AC99238BECD3";
	setAttr ".t" -type "double3" 3.789030499263994 0.18803441524505615 -3.1557986736297643 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -2.0489174546204432e-13 0.35482540780393812 -6.0112437830075711 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Leg_03_FK_Jnt" -p "L_Leg_02_FK_Jnt";
	rename -uid "DC5F9739-470E-4B66-A5AB-9F90391F60E8";
	setAttr ".t" -type "double3" 18.89973283363198 0 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 1.1578334514342763 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode joint -n "L_Leg_04_FK_Jnt" -p "L_Leg_03_FK_Jnt";
	rename -uid "918D8B7B-4EAF-1216-7FA5-3DB115C377D8";
	setAttr ".t" -type "double3" 33.267266496368634 0 2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".radi" 2;
createNode joint -n "L_Foot_01_FK_Jnt" -p "L_Leg_04_FK_Jnt";
	rename -uid "77920604-4848-FC39-3377-33BB8BFB7045";
	setAttr ".t" -type "double3" -0.024681606807778422 -0.00087748476257232255 0.010261807432266679 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872156346 -0.11246489350220029 69.759457814268615 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Foot_02_FK_Jnt" -p "L_Foot_01_FK_Jnt";
	rename -uid "066C7DBF-4D7F-F604-C080-1DAAF08D4780";
	setAttr ".t" -type "double3" 12.716406985465769 0 -1.9114484300919443e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 25.094271303580328 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Foot_03_FK_Jnt" -p "L_Foot_02_FK_Jnt";
	rename -uid "AC79C635-4307-C2EE-2B77-71B13A8336F3";
	setAttr ".t" -type "double3" 9.1425663829806751 1.0150114028522722e-15 6.6276719873763217e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "L_Foot_03_IK_Jnt" -p "L_Foot_02_IK_Jnt";
	rename -uid "17D662A1-4C33-D8C7-70BA-1DA3C75C8603";
	setAttr ".t" -type "double3" 9.1425663829806751 1.0150114028522722e-15 6.6276719873763217e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "L_Foot_03_RK_Jnt" -p "L_Foot_02_RK_Jnt";
	rename -uid "75983235-4219-5ECF-269E-82A561A16435";
	setAttr ".t" -type "double3" 9.1425663829806751 1.0150114028522722e-15 6.6276719873763217e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Leg_01_FK_Jnt" -p "Pelvis_01_FK_Jnt";
	rename -uid "6B874245-40F8-58CA-FC88-36B67E307EB1";
	setAttr ".t" -type "double3" 3.7890507873535171 0.18803443504028319 3.1558 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 7.016709298534876e-15 -7.016709298534876e-15 180 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Leg_02_FK_Jnt" -p "R_Leg_01_FK_Jnt";
	rename -uid "70D859E8-4E82-1EDE-C4B9-1E9BB6658D1F";
	setAttr ".t" -type "double3" -3.7890000000000015 -0.18803470000000044 3.1558 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 2.4012197790518564e-11 0.3548254078039354 -6.0112437830075187 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Leg_03_FK_Jnt" -p "R_Leg_02_FK_Jnt";
	rename -uid "0BFAEC75-4BDC-5FF0-BCD9-F4A812EBF08E";
	setAttr ".t" -type "double3" -18.899782720370716 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 1.1578334514339272 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".pa" -type "double3" 0 0 5 ;
createNode joint -n "R_Leg_04_FK_Jnt" -p "R_Leg_03_FK_Jnt";
	rename -uid "E9145EBD-49DC-253E-C521-339740CECBED";
	setAttr ".t" -type "double3" -33.267227000177719 5.7329179403708963e-06 3.7134785157988404e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
	setAttr ".radi" 2;
createNode joint -n "R_Foot_01_FK_Jnt" -p "R_Leg_04_FK_Jnt";
	rename -uid "ECA9EF14-4F02-446B-C0CE-299DF17103BC";
	setAttr ".t" -type "double3" 0.024678213611869282 0.00087436955928144044 -0.010267509474132019 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.33532667872356753 -0.11246489350219968 69.759457814268913 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Foot_02_FK_Jnt" -p "R_Foot_01_FK_Jnt";
	rename -uid "B50E6306-4E91-C14A-408E-19AB80B55033";
	setAttr ".t" -type "double3" -12.71640592062402 -6.8931235830405058e-07 4.2320337358958682e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -1.8939538549204536e-13 -8.5099366769734753e-13 25.094271303580364 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Foot_03_FK_Jnt" -p "R_Foot_02_FK_Jnt";
	rename -uid "27ED24D7-4FEB-3DFB-6AFF-138889D1F178";
	setAttr ".t" -type "double3" -9.1425300142245884 1.3360619277591468e-08 -1.60893558209807e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "R_Foot_03_IK_Jnt" -p "R_Foot_02_IK_Jnt";
	rename -uid "D314C888-4755-7D8F-393C-11BD2E684704";
	setAttr ".t" -type "double3" -9.1425300142245884 1.3360619277591468e-08 -1.60893558209807e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "R_Foot_03_RK_Jnt" -p "R_Foot_02_RK_Jnt";
	rename -uid "D9DD8D0A-453D-9CCA-5358-2B863B101E4B";
	setAttr ".t" -type "double3" -9.1425300142245884 1.3360619277591468e-08 -1.60893558209807e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Hand_01_FK_Jnt";
	rename -uid "79747DA2-4CC3-B9F1-BAB8-579830C05F42";
	setAttr ".t" -type "double3" -40.307799759290006 96.203811011042717 -0.7877515719178515 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -89.983176540731733 0.63517301505925605 -1.3429893242056095 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_01_Knuckle_01_FK_Jnt" -p "R_Hand_01_FK_Jnt";
	rename -uid "9F76FA64-4C85-93F4-3BEE-B0A94C1C7AE4";
	setAttr ".t" -type "double3" -2.0471587998276206 -0.47025121604991482 -0.21917722508493398 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 88.656824177087643 0.01682242550840423 89.364826957562087 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_01_Knuckle_02_FK_Jnt" -p "R_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "C4790255-46C6-8AC3-B8AA-3D8F32CAE031";
	setAttr ".t" -type "double3" -3.0522180000000008 -0.691599999999994 -1.1789999999999949 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 4.2928659695229845 -25.469866719530053 54.373605364405073 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_01_Knuckle_03_FK_Jnt" -p "R_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "F8F13761-40C8-B850-93C3-BC8A2FE17B30";
	setAttr ".t" -type "double3" -3.3333566172594544 2.9002132940547654e-05 -4.1612826095160926e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -0.37571711577720829 -29.209601892891438 3.60729166364372 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "R_Finger_02_Knuckle_01_FK_Jnt" -p "R_Hand_01_FK_Jnt";
	rename -uid "E8CE8760-49F4-D247-4A6E-879713E2ADC2";
	setAttr ".t" -type "double3" -8.3750917141169552 -3.0746619690990218 -0.22513910900995882 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 96.984319633482997 -21.446472576163387 0.81102226025629609 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_02_Knuckle_02_FK_Jnt" -p "R_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "0D7CFD2E-40CF-E746-B3A4-268C16CCC79F";
	setAttr ".t" -type "double3" -3.0966790240319781 1.4610952490556883e-05 -2.6145914961972494e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 9.2722513302792285e-16 4.5720473546038028e-15 22.92854923609535 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_02_Knuckle_03_FK_Jnt" -p "R_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "592DDAD7-4F37-2EA6-4D4B-6EB2D7382F6A";
	setAttr ".t" -type "double3" -3.6925677296029242 -1.8778434380806175e-05 6.5169293961275798e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_03_Knuckle_01_FK_Jnt" -p "R_Hand_01_FK_Jnt";
	rename -uid "6D694431-4D9D-A322-A93A-9C9EC91D0222";
	setAttr ".t" -type "double3" -8.6573981715691062 -0.7397089205864309 0.21737428945675674 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 90.214072174133662 -20.434713950500633 -0.12703297212552028 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_03_Knuckle_02_FK_Jnt" -p "R_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "59AEED80-42A4-3D4F-59E4-089855531418";
	setAttr ".t" -type "double3" -3.294630471115946 1.3854961295578505e-05 -1.0113538562173119e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -1.2722445732028495e-16 -9.4422717105948031e-16 15.347549166690049 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_03_Knuckle_03_FK_Jnt" -p "R_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "9EFBE78A-4F4D-D1A1-0D94-94966D9E378E";
	setAttr ".t" -type "double3" -4.0526169868999053 -2.6748568856760357e-05 2.8375209359943199e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "R_Finger_04_Knuckle_01_FK_Jnt" -p "R_Hand_Cup_01_FK_Jnt";
	rename -uid "C56660D8-4ABA-E382-7B95-77BBC6B34E00";
	setAttr ".t" -type "double3" -5.9966999999999899 -0.05329999999999302 0.44211999999998008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -6.5870617948139412 -0.074524456937272471 19.831777082974597 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_04_Knuckle_02_FK_Jnt" -p "R_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "6C61C6E1-48A6-4B58-5966-63B1ABF99EAC";
	setAttr ".t" -type "double3" -3.0461486323296985 3.6275829728538156e-05 6.318734415700078e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 5.4134697389850784e-15 3.4588532160915697e-14 17.790460952726566 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_04_Knuckle_03_FK_Jnt" -p "R_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "3E8C653F-4E94-A1D5-6D4B-45B817179DE3";
	setAttr ".t" -type "double3" -3.9073785012113333 1.9181435845894157e-05 1.8445434282199358e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_05_Knuckle_02_FK_Jnt" -p "R_Hand_Cup_01_FK_Jnt";
	rename -uid "50116F4E-46A5-E6B6-2DE7-5B9A53876697";
	setAttr ".t" -type "double3" -5.9570999999999898 -0.86489999999997735 -1.7271200000000193 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -10.099488601197805 0.1313420252151401 26.395094951067758 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_05_Knuckle_03_FK_Jnt" -p "R_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "19942F26-4099-B68D-E940-E98A30470943";
	setAttr ".t" -type "double3" -2.3815183148368635 -8.6495528933028254e-05 -1.4665521925749658e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 7.4227864191170342e-15 5.0093736233050344e-14 16.857278106024363 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "R_Finger_05_Knuckle_04_FK_Jnt" -p "R_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "C6701982-4B57-621E-25D0-218A00B00F12";
	setAttr ".t" -type "double3" -3.433405472204214 1.7324891359749017e-05 6.1797532833196556e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Hand_01_FK_Jnt";
	rename -uid "5BCC86E7-4C90-165D-0DDF-8E89F864AA4D";
	setAttr ".t" -type "double3" 40.307750701904304 96.20380020141603 -0.78774988651275624 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 90.016823459266931 -0.63517301505935997 1.3429893242058291 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_01_Knuckle_01_FK_Jnt" -p "L_Hand_01_FK_Jnt";
	rename -uid "67960DD0-4F4E-635F-D3E0-57BF54AE88B4";
	setAttr ".t" -type "double3" 2.0471668234810068 0.47025145090340126 0.2191466035987446 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 88.656824177087458 0.016822425507043295 89.364826957561988 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_01_Knuckle_02_FK_Jnt" -p "L_Finger_01_Knuckle_01_FK_Jnt";
	rename -uid "52955276-4BF6-850F-C884-F99747FFD613";
	setAttr ".t" -type "double3" 3.0522225473461306 0.6916297633857198 1.1790508445751726 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 4.2928659695229827 -25.469866719530049 54.373605364405073 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_01_Knuckle_03_FK_Jnt" -p "L_Finger_01_Knuckle_02_FK_Jnt";
	rename -uid "30F54751-4E0D-6498-3A91-9B956DC8F404";
	setAttr ".t" -type "double3" 3.3333777555324104 7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -0.37571711577687489 -29.209601892891417 3.6072916636437253 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
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
createNode joint -n "L_Finger_02_Knuckle_01_FK_Jnt" -p "L_Hand_01_FK_Jnt";
	rename -uid "0CD22FEA-42AE-A8A2-BBEE-33B6630F890B";
	setAttr ".t" -type "double3" 8.3751282917814507 3.0746614791383138 0.22513083948689427 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 96.984319633484418 -21.446472576163632 0.81102226025566126 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_02_Knuckle_02_FK_Jnt" -p "L_Finger_02_Knuckle_01_FK_Jnt";
	rename -uid "800A3226-4377-1631-2953-268BBEDEE4DC";
	setAttr ".t" -type "double3" 3.0966687641577888 -1.4210854715202004e-14 4.0856207306205761e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 22.928549236095364 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_02_Knuckle_03_FK_Jnt" -p "L_Finger_02_Knuckle_02_FK_Jnt";
	rename -uid "93DE3B7D-4261-9C19-18FC-C6A93F7B331D";
	setAttr ".t" -type "double3" 3.6925445402917241 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_03_Knuckle_01_FK_Jnt" -p "L_Hand_01_FK_Jnt";
	rename -uid "35A4520F-4FE1-F6F8-66E3-9DB03C1BF16C";
	setAttr ".t" -type "double3" 8.6574391364605958 0.73970838377729908 -0.21736931773043011 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 90.214072174135083 -20.434713950500829 -0.12703297212613512 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_03_Knuckle_02_FK_Jnt" -p "L_Finger_03_Knuckle_01_FK_Jnt";
	rename -uid "41173413-4078-11BA-D212-9FA9712210F5";
	setAttr ".t" -type "double3" 3.2946389742747559 -2.8421709430404007e-14 8.4265927569049381e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 15.347549166690071 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_03_Knuckle_03_FK_Jnt" -p "L_Finger_03_Knuckle_02_FK_Jnt";
	rename -uid "3E315B94-4082-4DE6-1BB4-DBBF5BC1E592";
	setAttr ".t" -type "double3" 4.0526140746727553 0 -7.7715611723760958e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Hand_Cup_01_FK_Jnt" -p "L_Hand_01_FK_Jnt";
	rename -uid "73AE5C83-4AF2-4C04-3AA5-D381DDE88DF3";
	setAttr ".t" -type "double3" 2.6094838232571149 -1.9102878729137875 -0.09191560529831122 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 89.983172950911452 -1.3431757650077694 -0.63477860474570891 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_04_Knuckle_01_FK_Jnt" -p "L_Hand_Cup_01_FK_Jnt";
	rename -uid "9C90F7CB-4278-C0F5-18A1-3CB4DF19DE76";
	setAttr ".t" -type "double3" 5.9967835317562432 0.053296098651102852 -0.44211549384583337 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -6.5870617948139651 -0.074524456937090588 19.831777082974714 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_04_Knuckle_02_FK_Jnt" -p "L_Finger_04_Knuckle_01_FK_Jnt";
	rename -uid "34CE5D4F-4979-D297-D43C-8796BFBCA9B5";
	setAttr ".t" -type "double3" 3.0461052105657735 0 4.7961634663806763e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 17.790460952726576 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_04_Knuckle_03_FK_Jnt" -p "L_Finger_04_Knuckle_02_FK_Jnt";
	rename -uid "43244967-4D8C-8CDE-DF92-F89DF6426E36";
	setAttr ".t" -type "double3" 3.9073653391879066 -1.4210854715202004e-14 5.3290705182007514e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_05_Knuckle_02_FK_Jnt" -p "L_Hand_Cup_01_FK_Jnt";
	rename -uid "E31537D0-42B0-7E62-00E3-D6A0443B0B53";
	setAttr ".t" -type "double3" 5.9571259389828128 0.86494923585811989 1.7271218814135669 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" -10.099488601197866 0.13134202521530944 26.395094951067836 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_05_Knuckle_03_FK_Jnt" -p "L_Finger_05_Knuckle_02_FK_Jnt";
	rename -uid "26587548-45D0-6218-4B4A-7585A17F42E8";
	setAttr ".t" -type "double3" 2.3815401405463437 -1.4210854715202004e-14 1.5987211554602254e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr ".jo" -type "double3" 0 0 16.857278106024378 ;
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode joint -n "L_Finger_05_Knuckle_04_FK_Jnt" -p "L_Finger_05_Knuckle_03_FK_Jnt";
	rename -uid "C0DDF38D-43B8-1528-EBB6-DB98C34051B1";
	setAttr ".t" -type "double3" 3.4333581167632801 -2.8421709430404007e-14 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -cb on ".dla";
	setAttr -cb on ".jox";
	setAttr -cb on ".joy";
	setAttr -cb on ".joz";
createNode transform -n "ROOT_Ctrl_Grp";
	rename -uid "8233BCC6-42DA-2B01-E668-74867D49F137";
createNode transform -n "ROOT_Ctrl" -p "ROOT_Ctrl_Grp";
	rename -uid "B481A136-42DE-74E1-7319-90986C645124";
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
createNode transform -n "COG_Ctrl_Grp";
	rename -uid "D60AC471-470A-DCA0-8C51-57BF0C11BD16";
	setAttr ".t" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
createNode transform -n "COG_Ctrl" -p "COG_Ctrl_Grp";
	rename -uid "B467996A-427A-B027-09E1-DEA2621B11BC";
createNode nurbsCurve -n "COG_CtrlShape" -p "COG_Ctrl";
	rename -uid "25E39376-4EF8-A2D9-7E6B-EF9DCC25DEFC";
	setAttr -k off ".v";
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
createNode transform -n "Spine_01_FK_Ctrl_Grp";
	rename -uid "23B359EB-41C7-62ED-ED4D-76AA0B40E76C";
	setAttr ".t" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 90 ;
createNode transform -n "Spine_01_FK_Ctrl" -p "Spine_01_FK_Ctrl_Grp";
	rename -uid "8F6008D4-4293-4FC0-71EE-E1A05DC5E0EE";
createNode nurbsCurve -n "Spine_01_FK_CtrlShape" -p "Spine_01_FK_Ctrl";
	rename -uid "883811DC-41D1-4346-BF14-32A3BC784CE1";
	setAttr -k off ".v";
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
createNode transform -n "Spine_02_FK_Ctrl_Grp";
	rename -uid "12C7DE12-4667-278E-3FB2-239B845370B9";
	setAttr ".t" -type "double3" 0 80.036647796630859 0.29124999046325672 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 90 ;
createNode transform -n "Spine_02_FK_Ctrl" -p "Spine_02_FK_Ctrl_Grp";
	rename -uid "DD3AC214-423C-9740-2546-7A86DB8F07C4";
createNode nurbsCurve -n "Spine_02_FK_CtrlShape" -p "Spine_02_FK_Ctrl";
	rename -uid "54560C15-42AD-F64D-FFC9-6AB25BA4BCB2";
	setAttr -k off ".v";
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
createNode transform -n "Spine_03_FK_Ctrl_Grp";
	rename -uid "FC3AEF2C-4888-C9FB-370C-63BB1829A67E";
	setAttr ".t" -type "double3" -2.9146964874348031e-15 90.537948608398438 -1.1686000823974632 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 90 ;
createNode transform -n "Spine_03_FK_Ctrl" -p "Spine_03_FK_Ctrl_Grp";
	rename -uid "7E342C89-4505-E26F-BD94-928CBD08542A";
createNode nurbsCurve -n "Spine_03_FK_CtrlShape" -p "Spine_03_FK_Ctrl";
	rename -uid "7305B09B-47CD-F06B-B57B-13A3564BA89B";
	setAttr -k off ".v";
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
createNode transform -n "Spine_04_FK_Ctrl_Grp";
	rename -uid "E782ECDC-45A9-E7D9-0272-438BFC1DAFA6";
	setAttr ".t" -type "double3" -7.4392402814791352e-15 100.40961837768555 -2.7412258982658351 ;
	setAttr ".r" -type "double3" 90 4.3999241267888811 90 ;
createNode transform -n "Spine_04_FK_Ctrl" -p "Spine_04_FK_Ctrl_Grp";
	rename -uid "4E157F18-4206-EB9B-C1AC-CC914060A475";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode nurbsCurve -n "Spine_04_FK_CtrlShape" -p "Spine_04_FK_Ctrl";
	rename -uid "BB112CD9-4AD2-8BE0-1B2E-D09B709DD559";
	setAttr -k off ".v";
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
createNode transform -n "Neck_01_FK_Ctrl_Grp";
	rename -uid "ECC581FE-481D-B754-2442-1BB181723513";
	setAttr ".t" -type "double3" -7.5148655411139747e-15 105.96264950702326 -3.168500959873199 ;
	setAttr ".r" -type "double3" 90 4.3999241267888811 90 ;
createNode transform -n "Neck_01_FK_Ctrl" -p "Neck_01_FK_Ctrl_Grp";
	rename -uid "1DD81E39-431B-1FE7-FDAD-13853466F523";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode nurbsCurve -n "Neck_01_FK_CtrlShape" -p "Neck_01_FK_Ctrl";
	rename -uid "168BD12E-4976-06C4-14DE-58B3C6D7C05D";
	setAttr -k off ".v";
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
createNode transform -n "Goggle_01_FK_Ctrl_Grp";
	rename -uid "4950DD73-4886-F77B-ABE8-4384D7A2B4FA";
	setAttr ".t" -type "double3" -3.0898599488032036e-14 129.85898971557617 9.8365712165832484 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 90 ;
createNode transform -n "Goggle_01_FK_Ctrl" -p "Goggle_01_FK_Ctrl_Grp";
	rename -uid "F723B826-4735-2E6D-B6E8-FC8D93AE3334";
createNode nurbsCurve -n "Goggle_01_FK_CtrlShape" -p "Goggle_01_FK_Ctrl";
	rename -uid "20A98AE2-407C-5F5F-E8A0-2CB6A0840EA2";
	setAttr -k off ".v";
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
createNode transform -n "L_Clavical_01_FK_Ctrl_Grp";
	rename -uid "147F62F4-43B2-DF28-26E5-039B4CD6DD47";
	setAttr ".t" -type "double3" 2.3138317700026931 95.463088989257812 -1.1310679912567139 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "L_Clavical_01_FK_Ctrl" -p "L_Clavical_01_FK_Ctrl_Grp";
	rename -uid "EE651B6F-4C99-1987-6594-9DBD13973903";
createNode nurbsCurve -n "L_Clavical_01_FK_CtrlShape" -p "L_Clavical_01_FK_Ctrl";
	rename -uid "9A4757D7-47F8-0F56-E6D7-FC949FB9F6DF";
	setAttr -k off ".v";
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
createNode transform -n "L_Arm_01_FK_Ctrl_Grp";
	rename -uid "64583AD7-4155-7C7D-4F8E-06AE8C8BC59C";
	setAttr ".t" -type "double3" 8.5588669776916504 95.463088989257812 -1.1310679912567152 ;
	setAttr ".r" -type "double3" 90.016823459266973 -0.63517301505935997 1.3429893242058291 ;
createNode transform -n "L_Arm_01_FK_Ctrl" -p "L_Arm_01_FK_Ctrl_Grp";
	rename -uid "33E90493-4147-B8F0-0C4A-1DA83988167B";
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "L_Arm_01_FK_CtrlShape" -p "L_Arm_01_FK_Ctrl";
	rename -uid "495C42D5-4BE4-2F94-A7AA-FE967D0E0273";
	setAttr -k off ".v";
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
createNode transform -n "L_Arm_02_FK_Ctrl_Grp";
	rename -uid "BEE756DA-4334-5274-590A-069C73F6373A";
	setAttr ".t" -type "double3" 25.851675687200636 95.868499506812071 -0.93930179660315472 ;
	setAttr ".r" -type "double3" 90.016823459266973 -0.63517301505935997 1.3429893242058291 ;
createNode transform -n "L_Arm_02_FK_Ctrl" -p "L_Arm_02_FK_Ctrl_Grp";
	rename -uid "A62F93A0-47B5-7C13-90B1-DDA9C8843910";
	setAttr ".rp" -type "double3" 1.7763568394002505e-14 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-14 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "L_Arm_02_FK_CtrlShape" -p "L_Arm_02_FK_Ctrl";
	rename -uid "8B6E785C-4E71-5177-D0BB-2D875A0BAB48";
	setAttr -k off ".v";
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
createNode transform -n "L_Arm_03_FK_Ctrl_Grp";
	rename -uid "EADE80EC-4EC5-C59D-AE2D-5BA3038819CD";
	setAttr ".t" -type "double3" 40.313443828246172 96.207539451409815 -0.77893003219190349 ;
	setAttr ".r" -type "double3" 90.016823459266973 -0.63517301505935997 1.3429893242058291 ;
createNode transform -n "L_Arm_03_FK_Ctrl" -p "L_Arm_03_FK_Ctrl_Grp";
	rename -uid "A09E5D45-4FB5-A473-E707-F1837EBEBFDD";
	setAttr ".rp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 4.2632564145606011e-14 ;
createNode nurbsCurve -n "L_Arm_03_FK_CtrlShape" -p "L_Arm_03_FK_Ctrl";
	rename -uid "80524594-4EF9-B135-FBA5-CC942EE11B7C";
	setAttr -k off ".v";
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
createNode transform -n "L_Arm_01_IK_Ctrl_Grp";
	rename -uid "07A2425C-4CB5-8F46-BA0E-D89A91B65D7B";
	setAttr ".t" -type "double3" 8.5588669776916504 95.463088989257812 -1.1310679912567152 ;
	setAttr ".r" -type "double3" 90.016823459266973 -0.63517301505935997 1.3429893242058291 ;
createNode transform -n "L_Arm_01_IK_Ctrl" -p "L_Arm_01_IK_Ctrl_Grp";
	rename -uid "C813EC34-45CB-201C-9364-BE949D15489E";
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "L_Arm_01_IK_CtrlShape" -p "L_Arm_01_IK_Ctrl";
	rename -uid "4250D267-4497-3838-21CC-3CA6532EC420";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6486077763942579 3.992516820246903 -3.9597558091953848
		2.6486077763942579 5.6584265588689915 0.062106075475493759
		2.6486077763942579 3.9925168202469021 4.0839679601463743
		2.6486077763942579 -0.029345064423974773 5.7498776987684694
		2.6486077763942579 -4.0512069490948504 4.0839679601463743
		2.6486077763942579 -5.717116687716949 0.062106075475494675
		2.6486077763942579 -4.0512069490948504 -3.9597558091953848
		2.6486077763942579 -0.029345064423975841 -5.62566554781748
		2.6486077763942579 3.992516820246903 -3.9597558091953848
		2.6486077763942579 5.6584265588689915 0.062106075475493759
		2.6486077763942579 3.9925168202469021 4.0839679601463743
		;
createNode transform -n "L_Arm_02_IK_Ctrl_Grp";
	rename -uid "CBF186F4-4B07-BD37-7226-D19ABCE22B11";
	setAttr ".t" -type "double3" 25.851675687200636 95.868499506812071 -0.93930179660315472 ;
	setAttr ".r" -type "double3" 90.016823459266973 -0.63517301505935997 1.3429893242058291 ;
createNode transform -n "L_Arm_02_IK_Ctrl" -p "L_Arm_02_IK_Ctrl_Grp";
	rename -uid "C8E26661-48E5-712A-55BC-418824D1480A";
	setAttr ".rp" -type "double3" 1.7763568394002505e-14 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-14 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "L_Arm_02_IK_CtrlShape" -p "L_Arm_02_IK_Ctrl";
	rename -uid "27450317-4FF2-DEDF-F42B-99910DE6A82A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5527136788005009e-15 2.7917047960002024 -2.7917047960002184
		3.5527136788005009e-15 3.9480667846454987 -1.4452604082733809e-14
		3.5527136788005009e-15 2.7917047960002015 2.7917047960001899
		3.5527136788005009e-15 1.2802346004916945e-15 3.9480667846454893
		3.5527136788005009e-15 -2.7917047960002002 2.7917047960001899
		3.5527136788005009e-15 -3.9480667846454991 -1.3815374165177551e-14
		3.5527136788005009e-15 -2.7917047960001997 -2.7917047960002184
		3.5527136788005009e-15 5.3716964775205809e-16 -3.9480667846455177
		3.5527136788005009e-15 2.7917047960002024 -2.7917047960002184
		3.5527136788005009e-15 3.9480667846454987 -1.4452604082733809e-14
		3.5527136788005009e-15 2.7917047960002015 2.7917047960001899
		;
createNode transform -n "L_Arm_03_IK_Ctrl_Grp";
	rename -uid "8E079A16-4D91-AE4B-D3CD-46949EC1A311";
	setAttr ".t" -type "double3" 40.313443828246172 96.207539451409815 -0.77893003219190349 ;
	setAttr ".r" -type "double3" 90.016823459266973 -0.63517301505935997 1.3429893242058291 ;
createNode transform -n "L_Arm_03_IK_Ctrl" -p "L_Arm_03_IK_Ctrl_Grp";
	rename -uid "FA26DD8F-4241-75F4-1B67-2280E3721074";
	setAttr ".rp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 4.2632564145606011e-14 ;
createNode nurbsCurve -n "L_Arm_03_IK_CtrlShape" -p "L_Arm_03_IK_Ctrl";
	rename -uid "2315A07A-4712-B0EE-1418-3F85CA53ECBE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.1054273576010019e-15 3.7454985716598679 -3.7454985716598515
		7.1054273576010019e-15 5.2969348778904379 1.3886510998026978e-14
		7.1054273576010019e-15 3.745498571659867 3.7454985716598799
		7.1054273576010019e-15 1.9776060294715039e-15 5.296934877890453
		7.1054273576010019e-15 -3.7454985716598639 3.7454985716598799
		7.1054273576010019e-15 -5.2969348778904379 1.474145230465993e-14
		7.1054273576010019e-15 -3.7454985716598634 -3.7454985716598515
		7.1054273576010019e-15 9.8067085096539759e-16 -5.2969348778904246
		7.1054273576010019e-15 3.7454985716598679 -3.7454985716598515
		7.1054273576010019e-15 5.2969348778904379 1.3886510998026978e-14
		7.1054273576010019e-15 3.745498571659867 3.7454985716598799
		;
createNode transform -n "L_Arm_01_RK_Ctrl_Grp";
	rename -uid "BFFCEB9F-49A5-C357-0C1E-45BF50B9633D";
	setAttr ".t" -type "double3" 8.5588669776916504 95.463088989257812 -1.1310679912567152 ;
	setAttr ".r" -type "double3" 90.016823459266973 -0.63517301505935997 1.3429893242058291 ;
createNode transform -n "L_Arm_01_RK_Ctrl" -p "L_Arm_01_RK_Ctrl_Grp";
	rename -uid "F21472AE-4118-8B78-57A2-7DAB1044A6B9";
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "L_Arm_01_RK_CtrlShape" -p "L_Arm_01_RK_Ctrl";
	rename -uid "C880355B-480F-6A36-EBE1-24A75BD280B2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6687600325632359 3.9922935447355821 -3.9592832675250977
		2.6687600325632359 5.6582032833576728 0.062578617145781557
		2.6687600325632359 3.9922935447355812 4.084440501816661
		2.6687600325632359 -0.029568339935297495 5.7503502404387579
		2.6687600325632359 -4.0514302246061717 4.084440501816661
		2.6687600325632359 -5.7173399632282678 0.062578617145782472
		2.6687600325632359 -4.0514302246061709 -3.9592832675250977
		2.6687600325632359 -0.02956833993529856 -5.6251930061471915
		2.6687600325632359 3.9922935447355821 -3.9592832675250977
		2.6687600325632359 5.6582032833576728 0.062578617145781557
		2.6687600325632359 3.9922935447355812 4.084440501816661
		;
createNode transform -n "L_Arm_02_RK_Ctrl_Grp";
	rename -uid "E6102635-4380-48AD-FA56-CF94AFE463D1";
	setAttr ".t" -type "double3" 25.851675687200636 95.868499506812071 -0.93930179660315472 ;
	setAttr ".r" -type "double3" 90.016823459266973 -0.63517301505935997 1.3429893242058291 ;
createNode transform -n "L_Arm_02_RK_Ctrl" -p "L_Arm_02_RK_Ctrl_Grp";
	rename -uid "190C2266-4C8E-76D0-87B3-D79BAC01ABDC";
	setAttr ".rp" -type "double3" 1.7763568394002505e-14 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-14 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "L_Arm_02_RK_CtrlShape" -p "L_Arm_02_RK_Ctrl";
	rename -uid "0538DA71-4E39-4CB4-3E31-129AB48C8C8A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.5527136788005009e-15 2.8019332831097796 -2.8019332831097947
		3.5527136788005009e-15 3.9625320498384213 -1.4453489824769674e-14
		3.5527136788005009e-15 2.8019332831097792 2.8019332831097663
		3.5527136788005009e-15 1.285332006678182e-15 3.9625320498384107
		3.5527136788005009e-15 -2.8019332831097774 2.8019332831097663
		3.5527136788005009e-15 -3.9625320498384218 -1.3813925169669928e-14
		3.5527136788005009e-15 -2.8019332831097774 -2.8019332831097947
		3.5527136788005009e-15 5.3954454892957566e-16 -3.9625320498384391
		3.5527136788005009e-15 2.8019332831097796 -2.8019332831097947
		3.5527136788005009e-15 3.9625320498384213 -1.4453489824769674e-14
		3.5527136788005009e-15 2.8019332831097792 2.8019332831097663
		;
createNode transform -n "L_Arm_03_RK_Ctrl_Grp";
	rename -uid "BBDD0777-4874-622C-3E3B-D1A3CB8B4448";
	setAttr ".t" -type "double3" 40.313443828246172 96.207539451409815 -0.77893003219190349 ;
	setAttr ".r" -type "double3" 90.016823459266973 -0.63517301505935997 1.3429893242058291 ;
createNode transform -n "L_Arm_03_RK_Ctrl" -p "L_Arm_03_RK_Ctrl_Grp";
	rename -uid "0BAEB905-4FB1-14F4-7E93-D4A86CFFB801";
	setAttr ".rp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 4.2632564145606011e-14 ;
createNode nurbsCurve -n "L_Arm_03_RK_CtrlShape" -p "L_Arm_03_RK_Ctrl";
	rename -uid "39815AC6-4BC2-83DB-CF8C-1C84C431A681";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.1054273576010019e-15 3.6761324400513096 -3.6761324400512936
		7.1054273576010019e-15 5.1988363538002575 1.3892517800203385e-14
		7.1054273576010019e-15 3.6761324400513082 3.676132440051322
		7.1054273576010019e-15 1.9430371489903352e-15 5.1988363538002726
		7.1054273576010019e-15 -3.6761324400513056 3.676132440051322
		7.1054273576010019e-15 -5.1988363538002567 1.4731625708409164e-14
		7.1054273576010019e-15 -3.6761324400513047 -3.6761324400512936
		7.1054273576010019e-15 9.6456507638972907e-16 -5.1988363538002442
		7.1054273576010019e-15 3.6761324400513096 -3.6761324400512936
		7.1054273576010019e-15 5.1988363538002575 1.3892517800203385e-14
		7.1054273576010019e-15 3.6761324400513082 3.676132440051322
		;
createNode transform -n "R_Clavical_01_FK_Ctrl_Grp";
	rename -uid "04D96065-4BBC-B745-2FAC-CF92A6B37B3B";
	setAttr ".t" -type "double3" -2.31383 95.4631 -1.13107 ;
	setAttr ".r" -type "double3" -89.999999999999972 0 0 ;
createNode transform -n "R_Clavical_01_FK_Ctrl" -p "R_Clavical_01_FK_Ctrl_Grp";
	rename -uid "864B87AB-4C1F-46F3-75A4-4697B0E78501";
createNode nurbsCurve -n "R_Clavical_01_FK_CtrlShape" -p "R_Clavical_01_FK_Ctrl";
	rename -uid "42C59B93-4545-41DF-B79F-A898F8B94088";
	setAttr -k off ".v";
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
createNode transform -n "R_Arm_01_FK_Ctrl_Grp";
	rename -uid "3CD7B2A5-40B1-6194-B6A9-14A98F8E1606";
	setAttr ".t" -type "double3" -8.55887 95.4631 -1.13107 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925605 -1.3429893242056097 ;
createNode transform -n "R_Arm_01_FK_Ctrl" -p "R_Arm_01_FK_Ctrl_Grp";
	rename -uid "2C08652C-489F-EEA1-30E8-95A567CCCBFE";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Arm_01_FK_CtrlShape" -p "R_Arm_01_FK_Ctrl";
	rename -uid "23C9C4BE-40F5-E869-347B-2694FCCABFB8";
	setAttr -k off ".v";
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
createNode transform -n "R_Arm_02_FK_Ctrl_Grp";
	rename -uid "0CB07A28-4269-D35A-378F-0E863C7F0C14";
	setAttr ".t" -type "double3" -25.851699759290007 95.868511011042727 -0.93930357191785163 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925605 -1.3429893242056097 ;
createNode transform -n "R_Arm_02_FK_Ctrl" -p "R_Arm_02_FK_Ctrl_Grp";
	rename -uid "13210570-4186-32B2-D1AE-F4AA3E1FA38C";
	setAttr ".rp" -type "double3" 1.0658141036401503e-14 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 1.0658141036401503e-14 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Arm_02_FK_CtrlShape" -p "R_Arm_02_FK_Ctrl";
	rename -uid "0725BA25-4B49-1FAA-492B-41A3C4D35AD7";
	setAttr -k off ".v";
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
createNode transform -n "R_Arm_03_FK_Ctrl_Grp";
	rename -uid "86FE2A70-4D08-CACF-4416-768A8E724383";
	setAttr ".t" -type "double3" -40.313399759290014 96.20751101104274 -0.77893157191785156 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925605 -1.3429893242056097 ;
createNode transform -n "R_Arm_03_FK_Ctrl" -p "R_Arm_03_FK_Ctrl_Grp";
	rename -uid "BB845081-4157-4401-0C55-EBA7B61B034C";
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Arm_03_FK_CtrlShape" -p "R_Arm_03_FK_Ctrl";
	rename -uid "58676970-4E9D-59EF-66EE-8EA46EE4FFBA";
	setAttr -k off ".v";
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
createNode transform -n "R_Arm_01_IK_Ctrl_Grp";
	rename -uid "E90892C1-4E37-441B-6D9F-72B7BF037945";
	setAttr ".t" -type "double3" -8.55887 95.4631 -1.13107 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925572 -1.3429893242056092 ;
createNode transform -n "R_Arm_01_IK_Ctrl" -p "R_Arm_01_IK_Ctrl_Grp";
	rename -uid "4B78D16B-498F-F2D7-0A10-8DAA3D0540C0";
	setAttr ".rp" -type "double3" 0 4.4408920985006262e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 4.4408920985006262e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Arm_01_IK_CtrlShape" -p "R_Arm_01_IK_Ctrl";
	rename -uid "9C486099-4764-0F42-7951-5AA87F1FD73B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.8242075198996233 4.1014205839041562 4.0039063353583897
		-2.8242075198996233 5.7873236199285696 -0.066223639057730543
		-2.8242075198996233 4.1014205839041544 -4.1363536134738554
		-2.8242075198996233 0.031290609488034152 -5.8222566494982724
		-2.8242075198996233 -4.0388393649280898 -4.1363536134738554
		-2.8242075198996233 -5.7247424009525076 -0.066223639057731473
		-2.8242075198996233 -4.0388393649280889 4.0039063353583897
		-2.8242075198996233 0.031290609488033076 5.6898093713828066
		-2.8242075198996233 4.1014205839041562 4.0039063353583897
		-2.8242075198996233 5.7873236199285696 -0.066223639057730543
		-2.8242075198996233 4.1014205839041544 -4.1363536134738554
		;
createNode transform -n "R_Arm_02_IK_Ctrl_Grp";
	rename -uid "C46A2502-4574-5F85-496B-B1BCFE86E12B";
	setAttr ".t" -type "double3" -25.851699759290007 95.868511011042727 -0.93930357191785163 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925572 -1.3429893242056092 ;
createNode transform -n "R_Arm_02_IK_Ctrl" -p "R_Arm_02_IK_Ctrl_Grp";
	rename -uid "780323D9-4C10-930F-0546-70926C2D9FEA";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Arm_02_IK_CtrlShape" -p "R_Arm_02_IK_Ctrl";
	rename -uid "2706EA73-4459-5B16-0B52-17BF80217816";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 2.7493206626420967 2.7493206626420812
		0 3.8881265684210358 -1.3972775627367173e-14
		0 2.7493206626420958 -2.7493206626421096
		0 1.2591123033939924e-15 -3.8881265684210504
		0 -2.7493206626420945 -2.7493206626421096
		0 -3.8881265684210362 -1.460033101277226e-14
		0 -2.7493206626420941 2.7493206626420812
		0 5.2732868817104992e-16 3.888126568421022
		0 2.7493206626420967 2.7493206626420812
		0 3.8881265684210358 -1.3972775627367173e-14
		0 2.7493206626420958 -2.7493206626421096
		;
createNode transform -n "R_Arm_03_IK_Ctrl_Grp";
	rename -uid "7658819E-4F19-8203-B526-788BC2E3AA30";
	setAttr ".t" -type "double3" -40.313399759290014 96.20751101104274 -0.77893157191785156 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925572 -1.3429893242056092 ;
createNode transform -n "R_Arm_03_IK_Ctrl" -p "R_Arm_03_IK_Ctrl_Grp";
	rename -uid "7CF26A2D-464D-75A4-E025-4891F0BAC6BA";
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Arm_03_IK_CtrlShape" -p "R_Arm_03_IK_Ctrl";
	rename -uid "844D6DF7-4D28-E4A3-4219-00A8E2D2F628";
	setAttr -k off ".v";
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
createNode transform -n "R_Arm_01_RK_Ctrl_Grp";
	rename -uid "04C9C72C-4B63-F649-27E6-5FBDCD7FD8B5";
	setAttr ".t" -type "double3" -8.55887 95.4631 -1.13107 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925561 -1.3429893242056083 ;
createNode transform -n "R_Arm_01_RK_Ctrl" -p "R_Arm_01_RK_Ctrl_Grp";
	rename -uid "10630D6A-4A21-8895-7C24-A3BEA31717F9";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 -2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Arm_01_RK_CtrlShape" -p "R_Arm_01_RK_Ctrl";
	rename -uid "BD266DF6-4E2E-F9AB-023A-C985543C6BE0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.8244481661646104 4.1014232501276 4.0039006925466349
		-2.8244481661646104 5.7873262861520134 -0.066229281869485873
		-2.8244481661646104 4.1014232501275982 -4.1363592562856102
		-2.8244481661646104 0.031293275711478427 -5.8222622923100271
		-2.8244481661646104 -4.038836698704646 -4.1363592562856102
		-2.8244481661646104 -5.7247397347290638 -0.066229281869486803
		-2.8244481661646104 -4.0388366987046451 4.0039006925466349
		-2.8244481661646104 0.031293275711477359 5.6898037285710519
		-2.8244481661646104 4.1014232501276 4.0039006925466349
		-2.8244481661646104 5.7873262861520134 -0.066229281869485873
		-2.8244481661646104 4.1014232501275982 -4.1363592562856102
		;
createNode transform -n "R_Arm_02_RK_Ctrl_Grp";
	rename -uid "2688F7BD-4B35-BCFE-5EA8-14968EA6CA4F";
	setAttr ".t" -type "double3" -25.851699759290007 95.868511011042727 -0.93930357191785174 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925561 -1.3429893242056083 ;
createNode transform -n "R_Arm_02_RK_Ctrl" -p "R_Arm_02_RK_Ctrl_Grp";
	rename -uid "B3A11E04-4016-83D2-6A23-CBA1ED1C46D5";
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Arm_02_RK_CtrlShape" -p "R_Arm_02_RK_Ctrl";
	rename -uid "6A8847F6-4AB0-2F93-DB4C-7A9FD68EF855";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 2.7493206626420967 2.7493206626420812
		0 3.8881265684210358 -1.3972775627367173e-14
		0 2.7493206626420958 -2.7493206626421096
		0 1.2591123033939924e-15 -3.8881265684210504
		0 -2.7493206626420945 -2.7493206626421096
		0 -3.8881265684210362 -1.460033101277226e-14
		0 -2.7493206626420941 2.7493206626420812
		0 5.2732868817104992e-16 3.888126568421022
		0 2.7493206626420967 2.7493206626420812
		0 3.8881265684210358 -1.3972775627367173e-14
		0 2.7493206626420958 -2.7493206626421096
		;
createNode transform -n "R_Arm_03_RK_Ctrl_Grp";
	rename -uid "D2986385-44AB-D693-7DF5-83B5A1D0C218";
	setAttr ".t" -type "double3" -40.313399759290014 96.20751101104274 -0.77893157191785178 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925561 -1.3429893242056083 ;
createNode transform -n "R_Arm_03_RK_Ctrl" -p "R_Arm_03_RK_Ctrl_Grp";
	rename -uid "40972B6C-41E1-E3A0-6DC9-569D1473F898";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 -4.4408920985006262e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Arm_03_RK_CtrlShape" -p "R_Arm_03_RK_Ctrl";
	rename -uid "3DA7E932-4480-B292-8D27-44AB0481D4C1";
	setAttr -k off ".v";
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
createNode transform -n "Pelvis_01_FK_Ctrl_Grp";
	rename -uid "D97A68F4-4BFD-77B2-9132-3580D3C196A0";
	setAttr ".t" -type "double3" 0 68.975650787353516 -0.2346501350402832 ;
	setAttr ".r" -type "double3" 90 0 -90 ;
createNode transform -n "Pelvis_01_FK_Ctrl" -p "Pelvis_01_FK_Ctrl_Grp";
	rename -uid "7349DBF3-4B04-94DD-2B0D-8881FB19A632";
createNode nurbsCurve -n "Pelvis_01_FK_CtrlShape" -p "Pelvis_01_FK_Ctrl";
	rename -uid "7B688938-4202-711A-A423-AABB2858BF22";
	setAttr -k off ".v";
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
createNode transform -n "L_Leg_01_FK_Ctrl_Grp";
	rename -uid "CF3CFDC5-4FA0-37F2-ABB9-B49B8A612BD4";
	setAttr ".t" -type "double3" 3.155798673629763 65.186620288089514 -0.046615719795227051 ;
	setAttr ".r" -type "double3" 90 0 -90 ;
createNode transform -n "L_Leg_01_FK_Ctrl" -p "L_Leg_01_FK_Ctrl_Grp";
	rename -uid "C6564CBC-4EE1-2AE7-BB1D-06AB2EB03405";
createNode nurbsCurve -n "L_Leg_01_FK_CtrlShape" -p "L_Leg_01_FK_Ctrl";
	rename -uid "6C6B1284-4D21-3A30-0102-07A066A37FFC";
	setAttr -k off ".v";
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
createNode transform -n "L_Leg_02_FK_Ctrl_Grp";
	rename -uid "CD3BF9C9-4E78-182A-CB00-EF8CEF049A9F";
	setAttr ".t" -type "double3" 6.3115973472595268 61.39758978882552 0.1414186954498291 ;
	setAttr ".r" -type "double3" 90.037363810983081 6.0111280879910938 -89.643212799350422 ;
createNode transform -n "L_Leg_02_FK_Ctrl" -p "L_Leg_02_FK_Ctrl_Grp";
	rename -uid "D4F8BAB2-40FC-1A76-8103-4DAEE5BFCB68";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "L_Leg_02_FK_CtrlShape" -p "L_Leg_02_FK_Ctrl";
	rename -uid "B6CD901D-4900-81D9-8D29-56BFD723D0CA";
	setAttr -k off ".v";
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
createNode transform -n "L_Leg_03_FK_Ctrl_Grp";
	rename -uid "910837D2-4C63-542A-0C05-488753B2C818";
	setAttr ".t" -type "double3" 6.4286402185164802 42.602140141132139 -1.8377919274949488 ;
	setAttr ".r" -type "double3" 90.037292076110987 4.8532948822589921 -89.64397051273292 ;
createNode transform -n "L_Leg_03_FK_Ctrl" -p "L_Leg_03_FK_Ctrl_Grp";
	rename -uid "864E87DC-4D41-F5C7-74FF-6D8048B58BB7";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "L_Leg_03_FK_CtrlShape" -p "L_Leg_03_FK_Ctrl";
	rename -uid "24DBC078-4A8A-0AFC-3479-0A863EA07352";
	setAttr -k off ".v";
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
createNode transform -n "L_Leg_04_FK_Ctrl_Grp";
	rename -uid "BA87FC16-46D0-1401-7C48-A68E137C8D94";
	setAttr ".t" -type "double3" 6.6346167489351133 9.4547902793947856 -4.6523595591052196 ;
	setAttr ".r" -type "double3" 90.037292076110987 4.8532948822589921 -89.64397051273292 ;
createNode transform -n "L_Leg_04_FK_Ctrl" -p "L_Leg_04_FK_Ctrl_Grp";
	rename -uid "81AE71A1-4D67-B45C-6B40-159CCAB849AF";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -3.5527136788005009e-15 ;
createNode nurbsCurve -n "L_Leg_04_FK_CtrlShape" -p "L_Leg_04_FK_Ctrl";
	rename -uid "C7F0EF59-4B3A-92BD-C2E6-688ECEF55A63";
	setAttr -k off ".v";
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
createNode transform -n "L_Foot_01_FK_Ctrl_Grp";
	rename -uid "0327C211-48E6-F048-24F3-068DF06CCF2F";
	setAttr ".t" -type "double3" 6.6242024302482596 9.4793939590454119 -4.6511523723602286 ;
	setAttr ".r" -type "double3" 89.992440083595881 -64.905728504832453 -89.991652139085318 ;
createNode transform -n "L_Foot_01_FK_Ctrl" -p "L_Foot_01_FK_Ctrl_Grp";
	rename -uid "0067387A-4327-CB7F-2993-8CA0F0A7986B";
	setAttr ".rp" -type "double3" 0 -2.6645352591003757e-15 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -2.6645352591003757e-15 2.6645352591003757e-15 ;
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
createNode transform -n "L_Foot_02_FK_Ctrl_Grp";
	rename -uid "49CCDFAC-421C-7ABE-651F-279D4F20DB2D";
	setAttr ".t" -type "double3" 6.6249881982803336 4.0862528830766731 6.8649682998657253 ;
	setAttr ".r" -type "double3" 0 -89.996793772323244 0.0015009954665072614 ;
createNode transform -n "L_Foot_02_FK_Ctrl" -p "L_Foot_02_FK_Ctrl_Grp";
	rename -uid "41270955-427B-F717-EC03-FA8679C38E79";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "L_Foot_02_FK_CtrlShape" -p "L_Foot_02_FK_Ctrl";
	rename -uid "2DC91A5E-45D8-C01F-0042-7498357F17D3";
	setAttr -k off ".v";
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
createNode transform -n "L_Foot_03_FK_Ctrl_Grp";
	rename -uid "2EB6E13D-46C7-3896-8CE7-839907D63106";
	setAttr ".t" -type "double3" 6.6254998092505915 4.0862528964795066 16.007534668531722 ;
	setAttr ".r" -type "double3" 0 -89.996793772323244 0.0015009954665072614 ;
createNode transform -n "L_Foot_03_FK_Ctrl" -p "L_Foot_03_FK_Ctrl_Grp";
	rename -uid "40778B9C-4B10-C4C5-74E0-4D852544FDF3";
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
createNode transform -n "L_Leg_02_IK_Ctrl_Grp";
	rename -uid "2A676B4D-43D7-346C-1C06-32A841796C51";
	setAttr ".t" -type "double3" 6.3115973472595268 61.39758978882552 0.1414186954498291 ;
	setAttr ".r" -type "double3" 90.037363810983081 6.0111280879910876 -89.643212799350422 ;
createNode transform -n "L_Leg_02_IK_Ctrl" -p "L_Leg_02_IK_Ctrl_Grp";
	rename -uid "4606FBE2-45D4-7773-A1CC-0787E9D8F6F9";
	setAttr ".rp" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
	setAttr ".sp" -type "double3" 0 8.8817841970012523e-16 -4.4408920985006262e-15 ;
createNode nurbsCurve -n "L_Leg_02_IK_CtrlShape" -p "L_Leg_02_IK_Ctrl";
	rename -uid "D0B81652-4174-2631-7EDC-AD8BE19A3224";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2204460492503131e-16 5.7633763982913262 5.7633763982913218
		-3.9443045261050599e-31 8.1506450675245894 -3.8909535005361907e-16
		2.2204460492503131e-16 5.7633763982913244 -5.7633763982913235
		1.5543122344752192e-15 3.4273124735081899e-15 -8.1506450675245894
		2.2204460492503131e-16 -5.76337639829132 -5.7633763982913235
		-3.9443045261050599e-31 -8.1506450675245876 -1.704634110595472e-15
		2.2204460492503131e-16 -5.7633763982913191 5.7633763982913218
		1.5543122344752192e-15 1.8932810038653771e-15 8.1506450675245894
		2.2204460492503131e-16 5.7633763982913262 5.7633763982913218
		-3.9443045261050599e-31 8.1506450675245894 -3.8909535005361907e-16
		2.2204460492503131e-16 5.7633763982913244 -5.7633763982913235
		;
createNode transform -n "L_Leg_03_IK_Ctrl_Grp";
	rename -uid "EDD14E2F-4D55-6DC9-527D-6795152D2C89";
	setAttr ".t" -type "double3" 6.4286402185164802 42.602140141132139 -1.8377919274949477 ;
	setAttr ".r" -type "double3" 90.037292076110987 4.8532948822589841 -89.643970512732935 ;
createNode transform -n "L_Leg_03_IK_Ctrl" -p "L_Leg_03_IK_Ctrl_Grp";
	rename -uid "59CAA455-4359-09A6-6AFA-C6BAAC372969";
	setAttr ".rp" -type "double3" -2.1316282072803006e-14 -2.6645352591003757e-15 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" -2.1316282072803006e-14 -2.6645352591003757e-15 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "L_Leg_03_IK_CtrlShape" -p "L_Leg_03_IK_Ctrl";
	rename -uid "915281BD-464A-B2B3-9930-AE8D7F5E3EE0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.1054273576010019e-15 4.999979382039502 4.9999793820394993
		-7.1054273576010019e-15 7.0710386536661067 -4.5520217700715489e-16
		-7.1054273576010019e-15 4.9999793820395011 -4.9999793820395011
		-7.1054273576010019e-15 1.2705137728922817e-15 -7.0710386536661103
		-7.1054273576010019e-15 -4.9999793820394993 -4.9999793820395011
		-7.1054273576010019e-15 -7.0710386536661094 -1.5964891977426321e-15
		-7.1054273576010019e-15 -4.9999793820394993 4.9999793820394993
		-7.1054273576010019e-15 -6.0325164139107238e-17 7.0710386536661085
		-7.1054273576010019e-15 4.999979382039502 4.9999793820394993
		-7.1054273576010019e-15 7.0710386536661067 -4.5520217700715489e-16
		-7.1054273576010019e-15 4.9999793820395011 -4.9999793820395011
		;
createNode transform -n "L_Leg_04_IK_Ctrl_Grp";
	rename -uid "68A11D58-40BE-9F20-1E3F-EBB12F305ACE";
	setAttr ".t" -type "double3" 6.6346167489351133 9.4547902793947856 -4.6523595591052169 ;
	setAttr ".r" -type "double3" 90.037292076110987 4.8532948822589841 -89.643970512732935 ;
createNode transform -n "L_Leg_04_IK_Ctrl" -p "L_Leg_04_IK_Ctrl_Grp";
	rename -uid "B8E7E28D-4BE8-C3EE-03C9-B59F9E11B56E";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "L_Leg_04_IK_CtrlShape" -p "L_Leg_04_IK_Ctrl";
	rename -uid "BCDBB621-458C-4250-2129-DFB1CD3A638C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.698549125970509 5.1688200174319965 -5.4407508218940581
		-2.4021112103044593 7.309815370117863 -1.3593235321688647e-15
		-1.6985491259705083 5.1688200174319947 5.4407508218940563
		-8.4647853881221743e-16 2.2428345774984094e-15 7.6943836018151393
		1.6985491259705074 -5.168820017431992 5.4407508218940563
		2.4021112103044588 -7.3098153701178639 -1.1742675187639935e-16
		1.698549125970507 -5.1688200174319912 -5.4407508218940581
		-3.9437761187196964e-16 8.6705551680559153e-16 -7.694383601815141
		-1.698549125970509 5.1688200174319965 -5.4407508218940581
		-2.4021112103044593 7.309815370117863 -1.3593235321688647e-15
		-1.6985491259705083 5.1688200174319947 5.4407508218940563
		;
createNode transform -n "L_Foot_01_IK_Ctrl_Grp";
	rename -uid "3D223E95-4BE4-9BCF-3529-809AC7AD616A";
	setAttr ".t" -type "double3" 6.6242024302482596 9.4793939590454119 -4.6511523723602259 ;
	setAttr ".r" -type "double3" 89.992440083595881 -64.905728504832453 -89.991652139085318 ;
createNode transform -n "L_Foot_01_IK_Ctrl" -p "L_Foot_01_IK_Ctrl_Grp";
	rename -uid "061811AD-42B3-083A-54FB-CC9DC33B37F7";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 2.6645352591003757e-15 ;
createNode nurbsCurve -n "L_Foot_01_IK_CtrlShape" -p "L_Foot_01_IK_Ctrl";
	rename -uid "160ECBCD-4F5B-3EB8-A320-A4847A279E91";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		24.524836395957308 0.015536320134215797 5.1224738692820049
		4.4445064210324112 -9.4902566245709838 7.2428059691950777
		-1.2150890129166374 -12.242613950888641 5.1214525198375505
		-3.559430198820924 -13.382677683946431 0.0001825162680413517
		-1.21523386480755 -12.242613950888641 -5.1210335299970104
		4.4443015695237404 -9.4902566245709838 -7.2422567148983585
		24.524691544066393 0.015536320134215797 -5.1200121805526457
		26.869032729970755 1.1556000531920763 0.001257823016907296
		24.524836395957308 0.015536320134215797 5.1224738692820049
		4.4445064210324112 -9.4902566245709838 7.2428059691950777
		-1.2150890129166374 -12.242613950888641 5.1214525198375505
		;
createNode transform -n "L_Foot_02_IK_Ctrl_Grp";
	rename -uid "FB323973-4B62-FF2B-42A1-92BDCF0E7F91";
	setAttr ".t" -type "double3" 6.6249881982803336 4.086252883076674 6.8649682998657298 ;
	setAttr ".r" -type "double3" -1.7345275630426082e-15 -89.996793772323244 0.001500995523345995 ;
createNode transform -n "L_Foot_02_IK_Ctrl" -p "L_Foot_02_IK_Ctrl_Grp";
	rename -uid "4C2CC584-4543-0E6E-E2A7-B8B0AC82EE70";
	setAttr ".rp" -type "double3" -2.6645352591003757e-15 -3.5527136788005009e-15 0 ;
	setAttr ".sp" -type "double3" -2.6645352591003757e-15 -3.5527136788005009e-15 0 ;
createNode nurbsCurve -n "L_Foot_02_IK_CtrlShape" -p "L_Foot_02_IK_Ctrl";
	rename -uid "A44A17D4-4AEC-DA84-6F1F-8D9CDA60BF23";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.8319423060663359e-05 5.0032127545856682 -5.2105125499766398
		-4.2982973096467188e-10 7.0756190131395496 7.6801663946074002e-06
		2.831881515826909e-05 5.00322361598122 5.2105234113720913
		4.0049282265532747e-05 7.6801664471834077e-06 7.3687851952585133
		2.8319422953596257e-05 -5.0032127545856664 5.2105125499765386
		4.2972266385958995e-10 -7.0756190131395522 -7.6801664959589547e-06
		-2.8318815265336196e-05 -5.0032236159812209 -5.2105234113721943
		-4.0049282372599955e-05 -7.6801664459004391e-06 -7.3687851952586199
		-2.8319423060663359e-05 5.0032127545856682 -5.2105125499766398
		-4.2982973096467188e-10 7.0756190131395496 7.6801663946074002e-06
		2.831881515826909e-05 5.00322361598122 5.2105234113720913
		;
createNode transform -n "L_Foot_03_IK_Ctrl_Grp";
	rename -uid "6635495A-491B-73E5-4419-A69797D2A489";
	setAttr ".t" -type "double3" 6.6254998092505915 4.0862528964795084 16.007534668531726 ;
	setAttr ".r" -type "double3" -1.7345275630426082e-15 -89.996793772323244 0.001500995523345995 ;
createNode transform -n "L_Foot_03_IK_Ctrl" -p "L_Foot_03_IK_Ctrl_Grp";
	rename -uid "4354426D-4BA8-4354-C58F-7F844AF2B5CB";
	setAttr ".rp" -type "double3" 0 -2.6645352591003757e-15 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 -2.6645352591003757e-15 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "L_Foot_03_IK_CtrlShape" -p "L_Foot_03_IK_Ctrl";
	rename -uid "0FBE90ED-4655-7C24-1D1A-3AA0D741B85E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 3.5885165230157217 -3.5885165230157217
		0 5.0749287356487738 -1.198928181300785e-15
		0 3.5885165230157208 3.5885165230157199
		0 5.6710578767342577e-16 5.0749287356487747
		0 -3.5885165230157203 3.5885165230157199
		0 -5.0749287356487764 -3.7981933734749815e-16
		0 -3.5885165230157199 -3.5885165230157217
		0 -3.8804565398347675e-16 -5.0749287356487764
		0 3.5885165230157217 -3.5885165230157217
		0 5.0749287356487738 -1.198928181300785e-15
		0 3.5885165230157208 3.5885165230157199
		;
createNode transform -n "L_Leg_02_RK_Ctrl_Grp";
	rename -uid "E30879AA-4D55-C333-D5E3-51A95B94E3EB";
	setAttr ".t" -type "double3" 6.3115973472595268 61.39758978882552 0.1414186954498291 ;
	setAttr ".r" -type "double3" 90.037363810983081 6.0111280879910876 -89.643212799350422 ;
createNode transform -n "L_Leg_02_RK_Ctrl" -p "L_Leg_02_RK_Ctrl_Grp";
	rename -uid "FFE26E01-4F30-78AE-0DC8-BAA9D88C7529";
	setAttr ".rp" -type "double3" 0 8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 8.8817841970012523e-16 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "L_Leg_02_RK_CtrlShape" -p "L_Leg_02_RK_Ctrl";
	rename -uid "303E44EC-4817-920E-568D-D3A283EB2BB9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 5.7633763982913262 5.7633763982913218
		0 8.1506450675245894 -3.8909535005361789e-16
		0 5.7633763982913244 -5.7633763982913235
		0 3.4273124735081899e-15 -8.1506450675245894
		0 -5.76337639829132 -5.7633763982913235
		0 -8.1506450675245876 -1.7046341105954716e-15
		0 -5.7633763982913191 5.7633763982913218
		0 1.8932810038653771e-15 8.1506450675245894
		0 5.7633763982913262 5.7633763982913218
		0 8.1506450675245894 -3.8909535005361789e-16
		0 5.7633763982913244 -5.7633763982913235
		;
createNode transform -n "L_Leg_03_RK_Ctrl_Grp";
	rename -uid "DEF8F26B-4317-806B-A979-05AC35344285";
	setAttr ".t" -type "double3" 6.4286402185164802 42.602140141132139 -1.8377919274949468 ;
	setAttr ".r" -type "double3" 90.037292076110987 4.8532948822589743 -89.64397051273292 ;
createNode transform -n "L_Leg_03_RK_Ctrl" -p "L_Leg_03_RK_Ctrl_Grp";
	rename -uid "7EF0BB39-436B-833A-A59E-30B2BC5CDDC6";
	setAttr ".rp" -type "double3" -2.1316282072803006e-14 8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" -2.1316282072803006e-14 8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "L_Leg_03_RK_CtrlShape" -p "L_Leg_03_RK_Ctrl";
	rename -uid "7FCA0214-4F5C-6A44-B9A8-B89B3B43E10B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.1054273576010019e-15 4.9999793820395038 4.9999793820395002
		-7.1054273576010019e-15 7.0710386536661085 4.3297624269297034e-16
		-7.1054273576010019e-15 4.9999793820395029 -4.9999793820395002
		-7.1054273576010019e-15 3.0468706122925324e-15 -7.0710386536661094
		-7.1054273576010019e-15 -4.9999793820394975 -4.9999793820395002
		-7.1054273576010019e-15 -7.0710386536661076 -7.0831077804250677e-16
		-7.1054273576010019e-15 -4.9999793820394975 4.9999793820395002
		-7.1054273576010019e-15 1.7160316752611432e-15 7.0710386536661094
		-7.1054273576010019e-15 4.9999793820395038 4.9999793820395002
		-7.1054273576010019e-15 7.0710386536661085 4.3297624269297034e-16
		-7.1054273576010019e-15 4.9999793820395029 -4.9999793820395002
		;
createNode transform -n "L_Leg_04_RK_Ctrl_Grp";
	rename -uid "65951D17-4BE2-850B-2E48-F88D26230127";
	setAttr ".t" -type "double3" 6.6346167489351133 9.4547902793947856 -4.6523595591052143 ;
	setAttr ".r" -type "double3" 90.037292076110987 4.8532948822589743 -89.64397051273292 ;
createNode transform -n "L_Leg_04_RK_Ctrl" -p "L_Leg_04_RK_Ctrl_Grp";
	rename -uid "B10D75AA-4AF1-7703-9623-AD8A72D24BEC";
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 2.6645352591003757e-15 ;
createNode nurbsCurve -n "L_Leg_04_RK_CtrlShape" -p "L_Leg_04_RK_Ctrl";
	rename -uid "97F8F01A-47F6-F132-E512-F88F46D1C7E2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.698549125970509 5.1688200174319965 -5.4407508218940563
		-2.4021112103044593 7.309815370117863 4.1703330723138575e-16
		-1.6985491259705083 5.1688200174319947 5.4407508218940581
		-8.4647853881221743e-16 2.2428345774984094e-15 7.694383601815141
		1.6985491259705074 -5.168820017431992 5.4407508218940581
		2.4021112103044588 -7.3098153701178639 1.6589300875238511e-15
		1.698549125970507 -5.1688200174319912 -5.4407508218940563
		-3.9437761187196964e-16 8.6705551680559153e-16 -7.6943836018151393
		-1.698549125970509 5.1688200174319965 -5.4407508218940563
		-2.4021112103044593 7.309815370117863 4.1703330723138575e-16
		-1.6985491259705083 5.1688200174319947 5.4407508218940581
		;
createNode transform -n "L_Foot_01_RK_Ctrl_Grp";
	rename -uid "F770D24A-452B-49C8-4FE9-59AFCFCFD4F6";
	setAttr ".t" -type "double3" 6.6242024302482596 9.4793939590454119 -4.6511523723602233 ;
	setAttr ".r" -type "double3" 89.992440083595881 -64.905728504832453 -89.991652139085318 ;
createNode transform -n "L_Foot_01_RK_Ctrl" -p "L_Foot_01_RK_Ctrl_Grp";
	rename -uid "4D53B6AB-4868-14AD-BA29-BC9B9A56A3C8";
	setAttr ".rp" -type "double3" 0 0 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 0 2.6645352591003757e-15 ;
createNode nurbsCurve -n "L_Foot_01_RK_CtrlShape" -p "L_Foot_01_RK_Ctrl";
	rename -uid "B5C26390-43B3-DF4F-C57F-B2AFC48FF0A3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		24.444451268584633 -0.020921129682671735 5.289153753993264
		4.4444982498329386 -9.4902566245709767 7.4785470466774475
		-1.2809121624775317 -12.274622225403171 5.2881518303706772
		-3.6525100184485551 -13.427944219872945 0.00018986457985935247
		-1.2810454585472919 -12.274622225403171 -5.2877224484479086
		4.4443097407232708 -9.4902566245709767 -7.4779977923807071
		24.444317972514877 -0.020921129682671735 -5.2867205248253919
		26.815915828485974 1.1324008647872048 0.0012414409654661692
		24.444451268584633 -0.020921129682671735 5.289153753993264
		4.4444982498329386 -9.4902566245709767 7.4785470466774475
		-1.2809121624775317 -12.274622225403171 5.2881518303706772
		;
createNode transform -n "L_Foot_02_RK_Ctrl_Grp";
	rename -uid "430E9F11-4B4C-B7AB-9353-0BA771E2367F";
	setAttr ".t" -type "double3" 6.6249881982803336 4.086252883076674 6.8649682998657324 ;
	setAttr ".r" -type "double3" -1.7345275630426082e-15 -89.996793772323244 0.001500995523345995 ;
createNode transform -n "L_Foot_02_RK_Ctrl" -p "L_Foot_02_RK_Ctrl_Grp";
	rename -uid "E100D920-460F-6706-7BBA-6E9055C5A317";
	setAttr ".rp" -type "double3" -2.6645352591003757e-15 -3.5527136788005009e-15 0 ;
	setAttr ".sp" -type "double3" -2.6645352591003757e-15 -3.5527136788005009e-15 0 ;
createNode nurbsCurve -n "L_Foot_02_RK_CtrlShape" -p "L_Foot_02_RK_Ctrl";
	rename -uid "06F0661E-4C71-1D4C-A922-D8BF33C21BF3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.8319423042035031e-05 5.0032127545856682 -5.2105125499766398
		-4.2981110263740818e-10 7.0756190131395496 7.6801663946074747e-06
		2.8318815176897419e-05 5.00322361598122 5.2105234113720913
		4.0049282284161075e-05 7.6801664471834077e-06 7.3687851952585133
		2.8319422972224585e-05 -5.0032127545856664 5.2105125499765386
		4.2974129218685437e-10 -7.0756190131395522 -7.6801664959588547e-06
		-2.8318815246707872e-05 -5.0032236159812209 -5.2105234113721943
		-4.004928235397162e-05 -7.6801664459004391e-06 -7.3687851952586199
		-2.8319423042035031e-05 5.0032127545856682 -5.2105125499766398
		-4.2981110263740818e-10 7.0756190131395496 7.6801663946074747e-06
		2.8318815176897419e-05 5.00322361598122 5.2105234113720913
		;
createNode transform -n "L_Foot_03_RK_Ctrl_Grp";
	rename -uid "E450417A-4F52-DE1E-3A48-AFBBC2C28C85";
	setAttr ".t" -type "double3" 6.6254998092505915 4.0862528964795084 16.007534668531729 ;
	setAttr ".r" -type "double3" -1.7345275630426082e-15 -89.996793772323244 0.001500995523345995 ;
createNode transform -n "L_Foot_03_RK_Ctrl" -p "L_Foot_03_RK_Ctrl_Grp";
	rename -uid "3D9CDEFC-41B7-940D-37D7-D8BD358188BC";
	setAttr ".rp" -type "double3" 0 -2.6645352591003757e-15 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 -2.6645352591003757e-15 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "L_Foot_03_RK_CtrlShape" -p "L_Foot_03_RK_Ctrl";
	rename -uid "B416C9F3-44AB-44BB-2C16-76B5ED1DB134";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 3.5885165230157217 -3.5885165230157217
		0 5.0749287356487738 -1.198928181300785e-15
		0 3.5885165230157208 3.5885165230157199
		0 5.6710578767342577e-16 5.0749287356487747
		0 -3.5885165230157203 3.5885165230157199
		0 -5.0749287356487764 -3.7981933734749815e-16
		0 -3.5885165230157199 -3.5885165230157217
		0 -3.8804565398347675e-16 -5.0749287356487764
		0 3.5885165230157217 -3.5885165230157217
		0 5.0749287356487738 -1.198928181300785e-15
		0 3.5885165230157208 3.5885165230157199
		;
createNode transform -n "R_Leg_01_FK_Ctrl_Grp";
	rename -uid "D27C9D50-4E0A-7C12-F936-20939C51C674";
	setAttr ".t" -type "double3" -3.1558 65.1866 -0.04661570000000001 ;
	setAttr ".r" -type "double3" -90 0 90 ;
createNode transform -n "R_Leg_01_FK_Ctrl" -p "R_Leg_01_FK_Ctrl_Grp";
	rename -uid "7B7D6E6A-48FB-A9F2-1471-4EA268208DA6";
createNode nurbsCurve -n "R_Leg_01_FK_CtrlShape" -p "R_Leg_01_FK_Ctrl";
	rename -uid "C2034562-4C1A-D1C4-FF7F-5DAB07FD01E2";
	setAttr -k off ".v";
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
createNode transform -n "R_Leg_02_FK_Ctrl_Grp";
	rename -uid "CD27940A-4524-9135-D8E4-0B88A61726DC";
	setAttr ".t" -type "double3" -6.3116 61.3976 0.14141899999999996 ;
	setAttr ".r" -type "double3" -89.962636189016919 -6.0111280879910511 89.643212799350422 ;
createNode transform -n "R_Leg_02_FK_Ctrl" -p "R_Leg_02_FK_Ctrl_Grp";
	rename -uid "953D8B72-40FB-9046-3BE6-F18AA77175AE";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Leg_02_FK_CtrlShape" -p "R_Leg_02_FK_Ctrl";
	rename -uid "C279DD09-461F-39BD-B691-418E34ADE4FE";
	setAttr -k off ".v";
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
createNode transform -n "R_Leg_03_FK_Ctrl_Grp";
	rename -uid "D72B3829-4B29-CFBB-333B-9498C9864B93";
	setAttr ".t" -type "double3" -6.4286431801971453 42.602100740828277 -1.8377968471648161 ;
	setAttr ".r" -type "double3" -89.962707923888999 -4.8532948822592834 89.64397051273292 ;
createNode transform -n "R_Leg_03_FK_Ctrl" -p "R_Leg_03_FK_Ctrl_Grp";
	rename -uid "1D132D4E-486E-611C-0A98-39895D3DB4B3";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 -5.3290705182007514e-15 ;
createNode nurbsCurve -n "R_Leg_03_FK_CtrlShape" -p "R_Leg_03_FK_Ctrl";
	rename -uid "0E611046-4C23-EFB8-4D5B-359DE147F2C7";
	setAttr -k off ".v";
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
createNode transform -n "R_Leg_04_FK_Ctrl_Grp";
	rename -uid "487DE978-4697-6D4F-63C6-DCBC19F095A6";
	setAttr ".t" -type "double3" -6.6346231801971456 9.4547907408282725 -4.6523668471648163 ;
	setAttr ".r" -type "double3" -89.962707923888999 -4.8532948822592834 89.64397051273292 ;
createNode transform -n "R_Leg_04_FK_Ctrl" -p "R_Leg_04_FK_Ctrl_Grp";
	rename -uid "AB523647-4EB4-C2B8-DEBE-25AE64CB7C87";
	setAttr ".rp" -type "double3" 0 1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 1.7763568394002505e-15 -5.3290705182007514e-15 ;
createNode nurbsCurve -n "R_Leg_04_FK_CtrlShape" -p "R_Leg_04_FK_Ctrl";
	rename -uid "F8503CB8-45A5-5854-4867-838F4FBA9E8C";
	setAttr -k off ".v";
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
createNode transform -n "R_Foot_01_FK_Ctrl_Grp";
	rename -uid "8246050F-4760-E285-E22B-A89C4E049B2F";
	setAttr ".t" -type "double3" -6.6242031801971448 9.4793907408282845 -4.6511568471648168 ;
	setAttr ".r" -type "double3" -90.00755991640618 64.905728504832439 89.991652139085289 ;
createNode transform -n "R_Foot_01_FK_Ctrl" -p "R_Foot_01_FK_Ctrl_Grp";
	rename -uid "5C8DB08E-4DC2-FFD9-7E96-C1B697A587D6";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
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
createNode transform -n "R_Foot_02_FK_Ctrl_Grp";
	rename -uid "AFDDFB2D-45C4-76F3-428C-B3BDE67DF4CA";
	setAttr ".t" -type "double3" -6.6249931801971469 4.0862507408282855 6.8649631528351822 ;
	setAttr ".r" -type "double3" -179.99999947988462 89.996793772322391 -0.0015009957502966809 ;
createNode transform -n "R_Foot_02_FK_Ctrl" -p "R_Foot_02_FK_Ctrl_Grp";
	rename -uid "6A361F4E-4572-0ED9-163A-64B4CD836877";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Foot_02_FK_CtrlShape" -p "R_Foot_02_FK_Ctrl";
	rename -uid "C9E008DC-490B-64BF-8597-1AB2F5AF3DB5";
	setAttr -k off ".v";
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
createNode transform -n "R_Foot_03_FK_Ctrl_Grp";
	rename -uid "A335E21E-4530-4B4C-5725-429CDC171A7B";
	setAttr ".t" -type "double3" -6.6255031801971445 4.0862507408282838 16.007493152835185 ;
	setAttr ".r" -type "double3" -179.99999947988462 89.996793772322391 -0.0015009957502966809 ;
createNode transform -n "R_Foot_03_FK_Ctrl" -p "R_Foot_03_FK_Ctrl_Grp";
	rename -uid "ED2BA913-4C5D-6EF5-A9DF-FF8D68D3F37B";
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
createNode transform -n "R_Leg_02_IK_Ctrl_Grp";
	rename -uid "0E6A9F50-4D6F-E6F9-A6A4-F9900F04533C";
	setAttr ".t" -type "double3" -6.3116 61.3976 0.14141899999999996 ;
	setAttr ".r" -type "double3" -89.962636189016919 -6.0111280879910511 89.643212799350422 ;
createNode transform -n "R_Leg_02_IK_Ctrl" -p "R_Leg_02_IK_Ctrl_Grp";
	rename -uid "84161976-4CEC-8DCC-4B9A-85A0B7D126FC";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Leg_02_IK_CtrlShape" -p "R_Leg_02_IK_Ctrl";
	rename -uid "7E14FE11-4C24-D4F8-001E-40A34F5D3F05";
	setAttr -k off ".v";
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
createNode transform -n "R_Leg_03_IK_Ctrl_Grp";
	rename -uid "A5967741-4223-1116-FBCD-6DAC786139C3";
	setAttr ".t" -type "double3" -6.4286431801971453 42.602100740828277 -1.8377968471648161 ;
	setAttr ".r" -type "double3" -89.962707923888999 -4.8532948822592834 89.64397051273292 ;
createNode transform -n "R_Leg_03_IK_Ctrl" -p "R_Leg_03_IK_Ctrl_Grp";
	rename -uid "E1AB7402-491F-06D4-0968-CE833CE4C67D";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 -5.3290705182007514e-15 ;
createNode nurbsCurve -n "R_Leg_03_IK_CtrlShape" -p "R_Leg_03_IK_Ctrl";
	rename -uid "B5445736-46E7-E6AD-A41D-CCB68E1D885B";
	setAttr -k off ".v";
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
createNode transform -n "R_Leg_04_IK_Ctrl_Grp";
	rename -uid "77B0428A-4C10-F004-8006-D2A75AD3F51A";
	setAttr ".t" -type "double3" -6.6346231801971456 9.4547907408282725 -4.6523668471648163 ;
	setAttr ".r" -type "double3" -89.962707923888999 -4.8532948822592834 89.64397051273292 ;
createNode transform -n "R_Leg_04_IK_Ctrl" -p "R_Leg_04_IK_Ctrl_Grp";
	rename -uid "0AB2A69E-4453-3EEB-B0FC-93A262D359D8";
	setAttr ".rp" -type "double3" 0 1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 1.7763568394002505e-15 -5.3290705182007514e-15 ;
createNode nurbsCurve -n "R_Leg_04_IK_CtrlShape" -p "R_Leg_04_IK_Ctrl";
	rename -uid "00BD3937-4671-357D-3987-F2817265E580";
	setAttr -k off ".v";
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
createNode transform -n "R_Foot_01_IK_Ctrl_Grp";
	rename -uid "EF2F59E4-4D4E-E011-15EA-08BA010EF024";
	setAttr ".t" -type "double3" -6.6242031801971448 9.4793907408282845 -4.6511568471648168 ;
	setAttr ".r" -type "double3" -90.00755991640618 64.905728504832439 89.991652139085289 ;
createNode transform -n "R_Foot_01_IK_Ctrl" -p "R_Foot_01_IK_Ctrl_Grp";
	rename -uid "1643EA9A-4A27-E163-E287-4C8033C7A659";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
createNode nurbsCurve -n "R_Foot_01_IK_CtrlShape" -p "R_Foot_01_IK_Ctrl";
	rename -uid "90B9273D-4F23-181D-2902-CAA2EAE03516";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.71562734197819555 11.93768695129944 -5.7113024492618614
		-4.4444026304036583 9.4902537101174786 -8.0768876283064053
		-24.170956884913018 0.22113781850258318 -5.7122025391345232
		-26.308311281725242 -0.79262222299772889 -0.0011747169363478156
		-24.170956884913018 0.22113781850258318 5.7098531052618187
		-4.4444026304036601 9.4902537101174786 8.0763383741790644
		0.71562734197819555 11.93768695129944 5.7107531951344814
		2.8529817387904322 12.951446992799751 -0.00027462706368444996
		0.71562734197819555 11.93768695129944 -5.7113024492618614
		-4.4444026304036583 9.4902537101174786 -8.0768876283064053
		-24.170956884913018 0.22113781850258318 -5.7122025391345232
		;
createNode transform -n "R_Foot_02_IK_Ctrl_Grp";
	rename -uid "15672626-47EB-8FD0-FA96-B2A6DE26F9EB";
	setAttr ".t" -type "double3" -6.6249931801971469 4.0862507408282855 6.8649631528351822 ;
	setAttr ".r" -type "double3" -179.99999947988462 89.996793772322391 -0.0015009957502966809 ;
createNode transform -n "R_Foot_02_IK_Ctrl" -p "R_Foot_02_IK_Ctrl_Grp";
	rename -uid "3A867E7C-44AB-2264-B3B8-1A940DABB835";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Foot_02_IK_CtrlShape" -p "R_Foot_02_IK_Ctrl";
	rename -uid "7EB320ED-441A-AB75-4001-BC8DB139EB7C";
	setAttr -k off ".v";
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
createNode transform -n "R_Foot_03_IK_Ctrl_Grp";
	rename -uid "19911DB5-452E-0A07-887B-EDA31868BEAD";
	setAttr ".t" -type "double3" -6.6255031801971445 4.0862507408282838 16.007493152835185 ;
	setAttr ".r" -type "double3" -179.99999947988462 89.996793772322391 -0.0015009957502966809 ;
createNode transform -n "R_Foot_03_IK_Ctrl" -p "R_Foot_03_IK_Ctrl_Grp";
	rename -uid "68E0D4A5-4E96-862F-92F5-70A55BAA8437";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Foot_03_IK_CtrlShape" -p "R_Foot_03_IK_Ctrl";
	rename -uid "15EEE84E-47D5-90EE-709A-D58B55BE1A2D";
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
createNode transform -n "R_Leg_02_RK_Ctrl_Grp";
	rename -uid "D6B993E4-4127-1A79-CC3D-2BA1D501F5F1";
	setAttr ".t" -type "double3" -6.3116 61.3976 0.14141899999999996 ;
	setAttr ".r" -type "double3" -89.962636189016919 -6.0111280879910511 89.643212799350422 ;
createNode transform -n "R_Leg_02_RK_Ctrl" -p "R_Leg_02_RK_Ctrl_Grp";
	rename -uid "03742C79-4566-7A9B-79C9-7C82DB5F2C47";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Leg_02_RK_CtrlShape" -p "R_Leg_02_RK_Ctrl";
	rename -uid "9CCC7376-4204-D655-5F6A-67B2AA020686";
	setAttr -k off ".v";
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
createNode transform -n "R_Leg_03_RK_Ctrl_Grp";
	rename -uid "8204C2E5-4E4E-7248-C20D-F5A2338F28BC";
	setAttr ".t" -type "double3" -6.4286431801971453 42.602100740828277 -1.8377968471648161 ;
	setAttr ".r" -type "double3" -89.962707923888999 -4.8532948822592834 89.64397051273292 ;
createNode transform -n "R_Leg_03_RK_Ctrl" -p "R_Leg_03_RK_Ctrl_Grp";
	rename -uid "B947E7F4-4398-44C2-44FE-82AA58701167";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 -5.3290705182007514e-15 ;
createNode nurbsCurve -n "R_Leg_03_RK_CtrlShape" -p "R_Leg_03_RK_Ctrl";
	rename -uid "9BCDECCD-47BF-F334-665D-94B3FFD42C27";
	setAttr -k off ".v";
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
createNode transform -n "R_Leg_04_RK_Ctrl_Grp";
	rename -uid "FEAF9518-4919-5B9A-43C1-4A8179738B61";
	setAttr ".t" -type "double3" -6.6346231801971456 9.4547907408282725 -4.6523668471648154 ;
	setAttr ".r" -type "double3" -89.962707923888999 -4.8532948822592834 89.64397051273292 ;
createNode transform -n "R_Leg_04_RK_Ctrl" -p "R_Leg_04_RK_Ctrl_Grp";
	rename -uid "7388CBCE-4BF5-C237-6971-1D9F7ED3A57C";
	setAttr ".rp" -type "double3" 0 1.7763568394002505e-15 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 1.7763568394002505e-15 -5.3290705182007514e-15 ;
createNode nurbsCurve -n "R_Leg_04_RK_CtrlShape" -p "R_Leg_04_RK_Ctrl";
	rename -uid "13EFC02E-4764-B9E7-80E4-77973B3BA0FE";
	setAttr -k off ".v";
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
createNode transform -n "R_Foot_01_RK_Ctrl_Grp";
	rename -uid "634F5F25-4DB2-FDE5-EB1D-1EAA37FCCC8C";
	setAttr ".t" -type "double3" -6.6242031801971448 9.4793907408282845 -4.6511568471648159 ;
	setAttr ".r" -type "double3" -90.00755991640618 64.905728504832439 89.991652139085289 ;
createNode transform -n "R_Foot_01_RK_Ctrl" -p "R_Foot_01_RK_Ctrl_Grp";
	rename -uid "1ED76E14-4B7A-BABB-B09E-3D847F5FE896";
createNode nurbsCurve -n "R_Foot_01_RK_CtrlShape" -p "R_Foot_01_RK_Ctrl";
	rename -uid "3D0D34F9-48CE-9135-A77B-2499F51F10AE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.71562734197819644 11.937686951299444 -5.7113024492618605
		-4.4444026304036583 9.4902537101174822 -8.0768876283064071
		-24.189207545750843 0.21259080934755525 -5.7122036668733447
		-26.326561942563078 -0.80116923215275104 -0.0011758446751735877
		-24.189207545750843 0.21259080934755525 5.7098519775229972
		-4.4444026304036601 9.4902537101174822 8.0763383741790626
		0.71562734197819644 11.937686951299444 5.7107531951344823
		2.8529817387904304 12.951446992799754 -0.00027462706368445018
		0.71562734197819644 11.937686951299444 -5.7113024492618605
		-4.4444026304036583 9.4902537101174822 -8.0768876283064071
		-24.189207545750843 0.21259080934755525 -5.7122036668733447
		;
createNode transform -n "R_Foot_02_RK_Ctrl_Grp";
	rename -uid "50CF19A2-4C10-0694-D95A-77968DC42880";
	setAttr ".t" -type "double3" -6.6249931801971469 4.0862507408282855 6.8649631528351831 ;
	setAttr ".r" -type "double3" -179.99999947988462 89.996793772322391 -0.0015009957502966809 ;
createNode transform -n "R_Foot_02_RK_Ctrl" -p "R_Foot_02_RK_Ctrl_Grp";
	rename -uid "93504440-4FAD-E6C3-D713-A8B0B840F5C9";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Foot_02_RK_CtrlShape" -p "R_Foot_02_RK_Ctrl";
	rename -uid "0DDC5855-46B4-DC44-B86F-DF8B6FFFCA98";
	setAttr -k off ".v";
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
createNode transform -n "R_Foot_03_RK_Ctrl_Grp";
	rename -uid "E0D3063F-4A64-D7ED-CD7E-829A653D1631";
	setAttr ".t" -type "double3" -6.6255031801971445 4.0862507408282838 16.007493152835185 ;
	setAttr ".r" -type "double3" -179.99999947988462 89.996793772322391 -0.0015009957502966809 ;
createNode transform -n "R_Foot_03_RK_Ctrl" -p "R_Foot_03_RK_Ctrl_Grp";
	rename -uid "BB1469AD-41E2-B640-48CE-219CFD98A819";
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Foot_03_RK_CtrlShape" -p "R_Foot_03_RK_Ctrl";
	rename -uid "BF9CAADB-43FB-F299-7285-E4AD5CE5B513";
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
createNode transform -n "R_Hand_01_FK_Ctrl_Grp";
	rename -uid "D2DDF3FD-4905-2219-269D-F8829A66D059";
	setAttr ".t" -type "double3" -40.307799759290006 96.203811011042717 -0.7877515719178515 ;
	setAttr ".r" -type "double3" -89.983176540731733 0.63517301505925583 -1.3429893242056097 ;
createNode transform -n "R_Hand_01_FK_Ctrl" -p "R_Hand_01_FK_Ctrl_Grp";
	rename -uid "20E5449C-41AA-983E-325F-978608DF1F59";
	setAttr ".rp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 2.1316282072803006e-14 2.2204460492503131e-16 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Hand_01_FK_CtrlShape" -p "R_Hand_01_FK_Ctrl";
	rename -uid "52A1DBB1-4E4D-474F-3E20-C4A67F9CB16B";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "5724A901-4857-4D1E-601C-0DA96FE501F5";
	setAttr ".t" -type "double3" -42.354199759290012 96.032411011042711 -0.29489957191785154 ;
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
createNode transform -n "R_Finger_01_Knuckle_01_FK_Ctrl" -p "R_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "3E11AC94-4B71-6719-C94C-A59799E16794";
createNode nurbsCurve -n "R_Finger_01_Knuckle_01_FK_CtrlShape" -p "R_Finger_01_Knuckle_01_FK_Ctrl";
	rename -uid "878D16FF-4250-1C1A-33DD-A98203D4F7C1";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "4433B828-47DA-1A74-EE2C-24BD49F8E16C";
	setAttr ".t" -type "double3" -43.533199759290007 95.340811011042717 2.7573184280821499 ;
	setAttr ".r" -type "double3" 77.16484836232155 31.727871800243545 59.629158448751923 ;
createNode transform -n "R_Finger_01_Knuckle_02_FK_Ctrl" -p "R_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "3674DF7C-4B3E-7F26-F6ED-E8815BDE85B6";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 1.4210854715202004e-14 ;
createNode nurbsCurve -n "R_Finger_01_Knuckle_02_FK_CtrlShape" -p "R_Finger_01_Knuckle_02_FK_Ctrl";
	rename -uid "25AA2F0A-4E1A-4E03-F58D-DDA2C270F6E0";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "FCFFE4D9-49BB-6E6F-44E7-58913C5116C8";
	setAttr ".t" -type "double3" -44.966699759290023 92.894711011042702 4.5102984280821552 ;
	setAttr ".r" -type "double3" 64.941546953431754 18.684336332370933 30.327655479800164 ;
createNode transform -n "R_Finger_01_Knuckle_03_FK_Ctrl" -p "R_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "57BE64FC-430B-25E7-E555-05B0AACB040F";
	setAttr ".rp" -type "double3" -1.5987211554602254e-14 7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" -1.5987211554602254e-14 7.1054273576010019e-15 -1.4210854715202004e-14 ;
createNode nurbsCurve -n "R_Finger_01_Knuckle_03_FK_CtrlShape" -p "R_Finger_01_Knuckle_03_FK_Ctrl";
	rename -uid "0BEA01C8-4FFD-5E71-39B0-0497AFC86C6E";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_01_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "42F4A5B5-49C7-044F-D631-099491D8AC17";
	setAttr ".t" -type "double3" -48.015999759290011 91.110811011042713 5.7049984280821455 ;
	setAttr ".r" -type "double3" 10.61452240596663 18.684336332370936 30.327655479800164 ;
createNode transform -n "R_Finger_01_Knuckle_04_FK_Ctrl" -p "R_Finger_01_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "4D93E4A6-4AA2-64A3-858C-6692B7087ECF";
	setAttr ".rp" -type "double3" -2.7533531010703882e-14 0 1.9539925233402755e-14 ;
	setAttr ".sp" -type "double3" -2.7533531010703882e-14 0 1.9539925233402755e-14 ;
createNode nurbsCurve -n "R_Finger_01_Knuckle_04_FK_CtrlShape" -p "R_Finger_01_Knuckle_04_FK_Ctrl";
	rename -uid "3EFCBA9F-4390-22BD-F0E5-F6B40EC50AA6";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "46DCDCCF-41F4-83AA-C17F-BFAC967100C3";
	setAttr ".t" -type "double3" -48.651299759290012 96.173311011042713 2.3794984280821492 ;
	setAttr ".r" -type "double3" 7.5288532379989341 1.3398884268187283 20.109876494637771 ;
createNode transform -n "R_Finger_02_Knuckle_01_FK_Ctrl" -p "R_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "55054D57-486A-94D0-BD36-45820ADF98EE";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 -2.8421709430404007e-14 0 ;
createNode nurbsCurve -n "R_Finger_02_Knuckle_01_FK_CtrlShape" -p "R_Finger_02_Knuckle_01_FK_Ctrl";
	rename -uid "8D789343-4E17-A7FC-9BDA-07B23BF59485";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "8A724855-4EFD-F5B8-69C8-4E865E9BCFFE";
	setAttr ".t" -type "double3" -51.558399759290005 95.108911011042707 2.4519084280821484 ;
	setAttr ".r" -type "double3" 7.4584132894044961 -1.6902111096619872 42.840087749056359 ;
createNode transform -n "R_Finger_02_Knuckle_02_FK_Ctrl" -p "R_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "23296D2C-48CE-9CCD-1DE9-E59B103C7DEF";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 0 ;
createNode nurbsCurve -n "R_Finger_02_Knuckle_02_FK_CtrlShape" -p "R_Finger_02_Knuckle_02_FK_Ctrl";
	rename -uid "3C03AC04-4A32-D2F0-4B0A-16A95D647F9C";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_02_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "3BF34F0C-4302-D1F4-7852-88B5A8C2ED30";
	setAttr ".t" -type "double3" -54.264799759290014 92.599211011042712 2.3429984280821485 ;
	setAttr ".r" -type "double3" 7.4584132894044961 -1.6902111096619872 42.840087749056359 ;
createNode transform -n "R_Finger_02_Knuckle_03_FK_Ctrl" -p "R_Finger_02_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "89352549-4500-B601-1FD2-749E7C0D0406";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 0 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 0 -5.3290705182007514e-15 ;
createNode nurbsCurve -n "R_Finger_02_Knuckle_03_FK_CtrlShape" -p "R_Finger_02_Knuckle_03_FK_Ctrl";
	rename -uid "85A08A6D-4AD0-65C9-4C65-BBAAF8B8CF81";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "DAEFCBE9-4473-0633-92F3-D69D73E33035";
	setAttr ".t" -type "double3" -48.948999759290011 96.623611011042698 0.047948428082148498 ;
	setAttr ".r" -type "double3" 0.40725246633191547 0.47028877345050019 19.092405550321921 ;
createNode transform -n "R_Finger_03_Knuckle_01_FK_Ctrl" -p "R_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "7C90A63D-44DA-5DB1-73DB-5A9406137F23";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -4.2632564145606011e-14 5.5511151231257827e-16 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -4.2632564145606011e-14 5.5511151231257827e-16 ;
createNode nurbsCurve -n "R_Finger_03_Knuckle_01_FK_CtrlShape" -p "R_Finger_03_Knuckle_01_FK_Ctrl";
	rename -uid "AC7FF061-41E1-D9B0-E0B4-E0B27F3B3444";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "E72EFF52-494B-2B13-834A-1B85B3294E5B";
	setAttr ".t" -type "double3" -52.062299759290006 95.546011011042737 0.074990828082148769 ;
	setAttr ".r" -type "double3" 0.51720052065499322 0.34573001761957523 34.439843760823081 ;
createNode transform -n "R_Finger_03_Knuckle_02_FK_Ctrl" -p "R_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "10048DCE-4043-2ACA-52D9-D997F0BF3D92";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 4.4408920985006262e-16 ;
createNode nurbsCurve -n "R_Finger_03_Knuckle_02_FK_CtrlShape" -p "R_Finger_03_Knuckle_02_FK_Ctrl";
	rename -uid "3071BF56-4BC3-D6DC-234B-889F8D2CC71B";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_03_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "E3AF2152-4CE7-4D77-D358-599516F20201";
	setAttr ".t" -type "double3" -55.404499759290005 93.254111011042724 0.099444728082149034 ;
	setAttr ".r" -type "double3" 0.51720052065499322 0.34573001761957523 34.439843760823081 ;
createNode transform -n "R_Finger_03_Knuckle_03_FK_Ctrl" -p "R_Finger_03_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "A4C16A7B-4D97-7091-C79F-E58A0FDBCCCF";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 1.4210854715202004e-14 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 1.4210854715202004e-14 -2.2204460492503131e-16 ;
createNode nurbsCurve -n "R_Finger_03_Knuckle_03_FK_CtrlShape" -p "R_Finger_03_Knuckle_03_FK_Ctrl";
	rename -uid "9F098FCA-4C42-4830-BC1E-6586C4B8858F";
	setAttr -k off ".v";
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
createNode transform -n "R_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "D451CF91-401F-01E3-9DDD-3985F5E6B4BA";
	setAttr ".t" -type "double3" -42.935399759290014 96.357911011042717 -2.6689715719178517 ;
createNode transform -n "R_Hand_Cup_01_FK_Ctrl" -p "R_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "E1D46984-4CB2-7031-675A-4DB405CBF63B";
createNode nurbsCurve -n "R_Hand_Cup_01_FK_CtrlShape" -p "R_Hand_Cup_01_FK_Ctrl";
	rename -uid "167EA8D2-4E15-6AA8-1F8E-809126DA80F7";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "E797FA6A-4623-1FA1-0B76-36BF8B516B01";
	setAttr ".t" -type "double3" -48.932099759290004 96.304611011042709 -2.2268515719178517 ;
	setAttr ".r" -type "double3" -6.5870617948138799 -0.074524456937096376 19.831777082974696 ;
createNode transform -n "R_Finger_04_Knuckle_01_FK_Ctrl" -p "R_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "6BDC25CF-44EB-6C4B-3885-499A45BA560C";
	setAttr ".rp" -type "double3" -2.4868995751603507e-14 -5.6843418860808015e-14 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -2.4868995751603507e-14 -5.6843418860808015e-14 1.7763568394002505e-15 ;
createNode nurbsCurve -n "R_Finger_04_Knuckle_01_FK_CtrlShape" -p "R_Finger_04_Knuckle_01_FK_Ctrl";
	rename -uid "1017F3D5-485E-C505-3830-009F76F8251F";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "F69A7913-4CC3-2F0D-3C22-3C810FBD7B74";
	setAttr ".t" -type "double3" -51.797599759289994 95.271211011042695 -2.2308115719178487 ;
	setAttr ".r" -type "double3" -6.2972915085652383 1.9375660210312644 37.511354521399113 ;
createNode transform -n "R_Finger_04_Knuckle_02_FK_Ctrl" -p "R_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "6D24928B-41FE-3854-BDB1-5CA0741DED80";
	setAttr ".rp" -type "double3" -3.1974423109204508e-14 -1.4210854715202004e-14 0 ;
	setAttr ".sp" -type "double3" -3.1974423109204508e-14 -1.4210854715202004e-14 0 ;
createNode nurbsCurve -n "R_Finger_04_Knuckle_02_FK_CtrlShape" -p "R_Finger_04_Knuckle_02_FK_Ctrl";
	rename -uid "640FA388-4EC7-F426-1E3C-9FB82DED411C";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_04_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "0D8CDC74-4A67-1984-1B6C-06A58203DE03";
	setAttr ".t" -type "double3" -54.895299759289998 92.893311011042726 -2.0987015719178523 ;
	setAttr ".r" -type "double3" -6.2972915085652383 1.9375660210312644 37.511354521399113 ;
createNode transform -n "R_Finger_04_Knuckle_03_FK_Ctrl" -p "R_Finger_04_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "6358653A-4729-172F-3DB6-45A8D5F21392";
	setAttr ".rp" -type "double3" -5.3290705182007514e-15 -1.4210854715202004e-14 0 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-15 -1.4210854715202004e-14 0 ;
createNode nurbsCurve -n "R_Finger_04_Knuckle_03_FK_CtrlShape" -p "R_Finger_04_Knuckle_03_FK_Ctrl";
	rename -uid "096FD835-41AA-3825-279F-EBB40E41D548";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "1FA866D2-43CC-52FB-70F2-31B7962BE4B1";
	setAttr ".t" -type "double3" -48.892499759290011 95.493011011042725 -4.3960915719178519 ;
	setAttr ".r" -type "double3" -10.099488601197722 0.1313420252153075 26.395094951067858 ;
createNode transform -n "R_Finger_05_Knuckle_02_FK_Ctrl" -p "R_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "05A87D17-408A-CCC9-366E-419A401A6E47";
	setAttr ".rp" -type "double3" 6.6613381477509392e-16 4.2632564145606011e-14 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 6.6613381477509392e-16 4.2632564145606011e-14 1.7763568394002505e-15 ;
createNode nurbsCurve -n "R_Finger_05_Knuckle_02_FK_CtrlShape" -p "R_Finger_05_Knuckle_02_FK_Ctrl";
	rename -uid "ED49BC58-4E5B-3553-D2C0-F78D9F17429C";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_05_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "8FBF4249-4AD7-6C9D-E865-1EB90AE8FA15";
	setAttr ".t" -type "double3" -51.025699759290013 94.434211011042748 -4.3906315719178508 ;
	setAttr ".r" -type "double3" -9.6362944165126798 3.040712120299045 43.007613539756434 ;
createNode transform -n "R_Finger_05_Knuckle_03_FK_Ctrl" -p "R_Finger_05_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "1D1DA664-41F3-7B4A-AD81-D8A2EB0D8E97";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -4.2632564145606011e-14 -7.1054273576010019e-15 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -4.2632564145606011e-14 -7.1054273576010019e-15 ;
createNode nurbsCurve -n "R_Finger_05_Knuckle_03_FK_CtrlShape" -p "R_Finger_05_Knuckle_03_FK_Ctrl";
	rename -uid "85BB1F7E-4842-E3F6-D141-D1B17A78D95C";
	setAttr -k off ".v";
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
createNode transform -n "R_Finger_05_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "518A2CDF-4DC9-4DD1-7E24-4786045A4F1D";
	setAttr ".t" -type "double3" -53.532899759290011 92.095611011042706 -4.2085015719178491 ;
	setAttr ".r" -type "double3" -9.6362944165126798 3.040712120299045 43.007613539756434 ;
createNode transform -n "R_Finger_05_Knuckle_04_FK_Ctrl" -p "R_Finger_05_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "8A63917E-4344-50F2-C061-F38720583560";
	setAttr ".rp" -type "double3" 1.7763568394002505e-14 5.6843418860808015e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-14 5.6843418860808015e-14 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "R_Finger_05_Knuckle_04_FK_CtrlShape" -p "R_Finger_05_Knuckle_04_FK_Ctrl";
	rename -uid "186E4796-4A65-A342-7431-3CAC244B726C";
	setAttr -k off ".v";
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
createNode transform -n "L_Hand_01_FK_Ctrl_Grp";
	rename -uid "DBA00522-4B27-4725-734B-19BE56CA2073";
	setAttr ".t" -type "double3" 40.307750701904304 96.20380020141603 -0.78774988651275624 ;
	setAttr ".r" -type "double3" 90.016823459267002 -0.63517301505936019 1.3429893242058291 ;
createNode transform -n "L_Hand_01_FK_Ctrl" -p "L_Hand_01_FK_Ctrl_Grp";
	rename -uid "07A53F2A-4276-0991-853C-E5B78F1C3C27";
	setAttr ".rp" -type "double3" 2.1316282072803006e-14 -6.6613381477509392e-16 0 ;
	setAttr ".sp" -type "double3" 2.1316282072803006e-14 -6.6613381477509392e-16 0 ;
createNode nurbsCurve -n "L_Hand_01_FK_CtrlShape" -p "L_Hand_01_FK_Ctrl";
	rename -uid "4C6A9519-4872-3CFB-48CE-FF8F5B94AC86";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "52FEE64E-4D24-0CB1-3496-CEB1DA387DAD";
	setAttr ".t" -type "double3" 42.35415800247074 96.032431002399392 -0.29489755373574877 ;
	setAttr ".r" -type "double3" -180 -89.999999999999986 0 ;
createNode transform -n "L_Finger_01_Knuckle_01_FK_Ctrl" -p "L_Finger_01_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "128189E3-4A1A-2AE5-116A-828A7CCFD0B0";
	setAttr ".rp" -type "double3" 0 4.2632564145606011e-14 2.1316282072803006e-14 ;
	setAttr ".sp" -type "double3" 0 4.2632564145606011e-14 2.1316282072803006e-14 ;
createNode nurbsCurve -n "L_Finger_01_Knuckle_01_FK_CtrlShape" -p "L_Finger_01_Knuckle_01_FK_Ctrl";
	rename -uid "3D104105-4B82-DE7C-9D8A-2DAF04D62822";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "697C90BE-4B05-84F1-08F0-5E89984CDBC3";
	setAttr ".t" -type "double3" 43.533208847045913 95.340801239013672 2.7573249936103812 ;
	setAttr ".r" -type "double3" -102.83515163767844 -31.727871800243534 -59.629158448751937 ;
createNode transform -n "L_Finger_01_Knuckle_02_FK_Ctrl" -p "L_Finger_01_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "67E59B86-4C0B-B7B0-830C-73B2B6423FF4";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 -7.1054273576010019e-15 1.4210854715202004e-14 ;
createNode nurbsCurve -n "L_Finger_01_Knuckle_02_FK_CtrlShape" -p "L_Finger_01_Knuckle_02_FK_Ctrl";
	rename -uid "315FEECD-49F5-A4B2-1028-42AC064DE1DC";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "91EB65E3-4C83-7581-7954-849ACE5F8AF9";
	setAttr ".t" -type "double3" 44.966682434082031 92.8946533203125 4.5102999210357577 ;
	setAttr ".r" -type "double3" -115.05845304656788 -18.684336332370943 -30.327655479800178 ;
createNode transform -n "L_Finger_01_Knuckle_03_FK_Ctrl" -p "L_Finger_01_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "5C2BF581-46E6-0744-9A90-649951711174";
	setAttr ".rp" -type "double3" -2.3092638912203256e-14 0 1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" -2.3092638912203256e-14 0 1.4210854715202004e-14 ;
createNode nurbsCurve -n "L_Finger_01_Knuckle_03_FK_CtrlShape" -p "L_Finger_01_Knuckle_03_FK_Ctrl";
	rename -uid "85A6E796-47D8-46A6-9ECF-96884CD74597";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_01_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "08A9822A-45C7-5216-FAED-5BA1BCF8700B";
	setAttr ".t" -type "double3" 48.01599884033206 91.110801696777344 5.7049999237060449 ;
	setAttr ".r" -type "double3" -169.38547759403332 -18.684336332370943 -30.327655479800178 ;
createNode transform -n "L_Finger_01_Knuckle_04_FK_Ctrl" -p "L_Finger_01_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "E671AA12-487C-C5CC-D32D-23984AAAD36E";
	setAttr ".rp" -type "double3" 1.1102230246251565e-14 0 -1.2434497875801753e-14 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-14 0 -1.2434497875801753e-14 ;
createNode nurbsCurve -n "L_Finger_01_Knuckle_04_FK_CtrlShape" -p "L_Finger_01_Knuckle_04_FK_Ctrl";
	rename -uid "A05FB906-4D4F-4BBD-38BB-4E8AA2AE90CB";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "BF118CA6-4544-E4F5-3248-3FA241A5A55A";
	setAttr ".t" -type "double3" 48.651287078857443 96.173309326171861 2.3795000314712502 ;
	setAttr ".r" -type "double3" -172.47114676200107 -1.3398884268187192 -20.109876494637771 ;
createNode transform -n "L_Finger_02_Knuckle_01_FK_Ctrl" -p "L_Finger_02_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "9596006B-442D-068E-1A79-54982EBFDF07";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 0 ;
createNode nurbsCurve -n "L_Finger_02_Knuckle_01_FK_CtrlShape" -p "L_Finger_02_Knuckle_01_FK_Ctrl";
	rename -uid "D643FB14-450A-C6AF-6D94-8395F4D84E96";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "6C296CD8-4DEC-D5E3-4453-0299B04D37D1";
	setAttr ".t" -type "double3" 51.558372334193017 95.108898934614643 2.4519104690203366 ;
	setAttr ".r" -type "double3" -172.54158671059551 1.6902111096620005 -42.84008774905638 ;
createNode transform -n "L_Finger_02_Knuckle_02_FK_Ctrl" -p "L_Finger_02_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "8D202F12-4B37-273F-1F46-7299E877D877";
	setAttr ".rp" -type "double3" -2.8421709430404007e-14 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -2.8421709430404007e-14 0 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "L_Finger_02_Knuckle_02_FK_CtrlShape" -p "L_Finger_02_Knuckle_02_FK_Ctrl";
	rename -uid "B209FDDD-4BC8-A3D9-A669-68821494F611";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_02_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "357B0284-401B-8459-D8DA-F8B2A7F735A4";
	setAttr ".t" -type "double3" 54.264768486546039 92.599229049298202 2.342997130522634 ;
	setAttr ".r" -type "double3" -172.54158671059551 1.6902111096620005 -42.84008774905638 ;
createNode transform -n "L_Finger_02_Knuckle_03_FK_Ctrl" -p "L_Finger_02_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "58454689-4EEC-446F-7045-DCBCE6F37804";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 1.4210854715202004e-14 -3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 1.4210854715202004e-14 -3.5527136788005009e-15 ;
createNode nurbsCurve -n "L_Finger_02_Knuckle_03_FK_CtrlShape" -p "L_Finger_02_Knuckle_03_FK_Ctrl";
	rename -uid "77CEE244-4334-4374-1A83-1DBC0C216A95";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "5D7576EB-4A73-C9FD-A493-6695D77A43EF";
	setAttr ".t" -type "double3" 48.94899177551271 96.62359619140625 0.047950029373167058 ;
	setAttr ".r" -type "double3" -179.59274753366807 -0.47028877345048697 -19.092405550321899 ;
createNode transform -n "L_Finger_03_Knuckle_01_FK_Ctrl" -p "L_Finger_03_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "A3441DAF-485A-283F-1DD8-ECA4690C5468";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 0 ;
createNode nurbsCurve -n "L_Finger_03_Knuckle_01_FK_CtrlShape" -p "L_Finger_03_Knuckle_01_FK_Ctrl";
	rename -uid "3579096A-44F0-BE44-1FCA-ED9F6DC018DA";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "939581A6-4692-013B-07BA-F78A3D051F39";
	setAttr ".t" -type "double3" 52.062295279581868 95.545980317373463 0.074992410804429768 ;
	setAttr ".r" -type "double3" -179.482799479345 -0.34573001761955841 -34.439843760823081 ;
createNode transform -n "L_Finger_03_Knuckle_02_FK_Ctrl" -p "L_Finger_03_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "78B850EB-4834-EB89-C34B-34B497AF047B";
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 0 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 0 -2.2204460492503131e-16 ;
createNode nurbsCurve -n "L_Finger_03_Knuckle_02_FK_CtrlShape" -p "L_Finger_03_Knuckle_02_FK_Ctrl";
	rename -uid "B66B64A1-49D4-54F4-72E4-9EAA034D7F31";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_03_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "45C37482-4A9D-A9B3-24B8-CE88C413920B";
	setAttr ".t" -type "double3" 55.404508006298222 93.254104025486527 0.09944625094411684 ;
	setAttr ".r" -type "double3" -179.482799479345 -0.34573001761955841 -34.439843760823081 ;
createNode transform -n "L_Finger_03_Knuckle_03_FK_Ctrl" -p "L_Finger_03_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "F778DAF3-4D15-E39F-8F99-4D87735A7C6A";
	setAttr ".rp" -type "double3" -3.0198066269804258e-14 1.4210854715202004e-14 0 ;
	setAttr ".sp" -type "double3" -3.0198066269804258e-14 1.4210854715202004e-14 0 ;
createNode nurbsCurve -n "L_Finger_03_Knuckle_03_FK_CtrlShape" -p "L_Finger_03_Knuckle_03_FK_Ctrl";
	rename -uid "EAEEB84B-412E-4281-005D-419908A179E6";
	setAttr -k off ".v";
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
createNode transform -n "L_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "4B8201EB-49F6-4E5A-17E4-0C86EB2018F9";
	setAttr ".t" -type "double3" 42.935360633282819 96.357903490008496 -2.6689655266522299 ;
	setAttr ".r" -type "double3" -180 0 0 ;
createNode transform -n "L_Hand_Cup_01_FK_Ctrl" -p "L_Hand_Cup_01_FK_Ctrl_Grp";
	rename -uid "3D91858A-45FA-C33E-17FC-7884A2E5E68E";
createNode nurbsCurve -n "L_Hand_Cup_01_FK_CtrlShape" -p "L_Hand_Cup_01_FK_Ctrl";
	rename -uid "5F1C93DA-40C3-1A20-A0A6-048385334931";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "631E5557-46DA-0E18-C8F5-0C80186522E2";
	setAttr ".t" -type "double3" 48.932144165039062 96.304607391357393 -2.2268500328063978 ;
	setAttr ".r" -type "double3" 173.41293820518604 0.0745244569371043 -19.831777082974714 ;
createNode transform -n "L_Finger_04_Knuckle_01_FK_Ctrl" -p "L_Finger_04_Knuckle_01_FK_Ctrl_Grp";
	rename -uid "FA54FB5B-4D21-30A2-1448-B0915DDDAF4E";
	setAttr ".rp" -type "double3" 2.3092638912203256e-14 1.4210854715202004e-14 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 2.3092638912203256e-14 1.4210854715202004e-14 1.7763568394002505e-15 ;
createNode nurbsCurve -n "L_Finger_04_Knuckle_01_FK_CtrlShape" -p "L_Finger_04_Knuckle_01_FK_Ctrl";
	rename -uid "71677DE4-4396-5AED-F443-7D82A5CAFF47";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "F3504FEB-4E22-F608-A8BA-999269DCDB08";
	setAttr ".t" -type "double3" 51.797590844352065 95.27118754253668 -2.2308120920455439 ;
	setAttr ".r" -type "double3" 173.70270849143469 -1.9375660210312855 -37.511354521399127 ;
createNode transform -n "L_Finger_04_Knuckle_02_FK_Ctrl" -p "L_Finger_04_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "6F4D3E27-4FBF-AE35-E795-FCB4DD02C631";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 -1.4210854715202004e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 -1.4210854715202004e-14 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "L_Finger_04_Knuckle_02_FK_CtrlShape" -p "L_Finger_04_Knuckle_02_FK_Ctrl";
	rename -uid "0CAE6D4F-4042-41AF-AD03-69AC95FBE69F";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_04_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "D1F55BA4-4792-CD4F-1169-9D95881618A3";
	setAttr ".t" -type "double3" 54.895268669861196 92.893280274101954 -2.0987022666676602 ;
	setAttr ".r" -type "double3" 173.70270849143469 -1.9375660210312855 -37.511354521399127 ;
createNode transform -n "L_Finger_04_Knuckle_03_FK_Ctrl" -p "L_Finger_04_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "06AF357E-443C-3AC5-F219-A1AD1AD94B34";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 1.4210854715202004e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 1.4210854715202004e-14 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "L_Finger_04_Knuckle_03_FK_CtrlShape" -p "L_Finger_04_Knuckle_03_FK_Ctrl";
	rename -uid "4657DA40-4E60-9886-0E36-6ABE77DBFDAC";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "AC0BF297-4E1A-143D-59FA-D4A365A70C34";
	setAttr ".t" -type "double3" 48.892486572265632 95.492954254150376 -4.3960874080657986 ;
	setAttr ".r" -type "double3" 169.90051139880214 -0.13134202521529639 -26.395094951067858 ;
createNode transform -n "L_Finger_05_Knuckle_02_FK_Ctrl" -p "L_Finger_05_Knuckle_02_FK_Ctrl_Grp";
	rename -uid "635FFEC3-4006-D539-20BE-1BB1234CC5E2";
	setAttr ".rp" -type "double3" 1.532107773982716e-14 -5.6843418860808015e-14 5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 1.532107773982716e-14 -5.6843418860808015e-14 5.3290705182007514e-15 ;
createNode nurbsCurve -n "L_Finger_05_Knuckle_02_FK_CtrlShape" -p "L_Finger_05_Knuckle_02_FK_Ctrl";
	rename -uid "B69C367E-4670-5FD2-CCDE-7F87AA15402A";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_05_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "3E681B85-44CF-6960-5C7F-F8A920C95801";
	setAttr ".t" -type "double3" 51.025745123859195 94.434223132049652 -4.3906280874335044 ;
	setAttr ".r" -type "double3" 170.36370558348719 -3.0407121202990788 -43.007613539756413 ;
createNode transform -n "L_Finger_05_Knuckle_03_FK_Ctrl" -p "L_Finger_05_Knuckle_03_FK_Ctrl_Grp";
	rename -uid "1E789CAA-4C26-CCD0-1972-028A038FF71F";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 -8.5265128291212022e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 -8.5265128291212022e-14 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "L_Finger_05_Knuckle_03_FK_CtrlShape" -p "L_Finger_05_Knuckle_03_FK_Ctrl";
	rename -uid "0338B62B-4A82-3352-7517-BA80618CD6FB";
	setAttr -k off ".v";
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
createNode transform -n "L_Finger_05_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "9CD69356-426A-28C9-5341-069BCC3FD070";
	setAttr ".t" -type "double3" 53.532898311080636 92.09564202524696 -4.2085037874206996 ;
	setAttr ".r" -type "double3" 170.36370558348719 -3.0407121202990788 -43.007613539756413 ;
createNode transform -n "L_Finger_05_Knuckle_04_FK_Ctrl" -p "L_Finger_05_Knuckle_04_FK_Ctrl_Grp";
	rename -uid "DB56AE9A-4F18-0550-14CB-6F9A9B4FCF2C";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 -4.2632564145606011e-14 -8.8817841970012523e-15 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 -4.2632564145606011e-14 -8.8817841970012523e-15 ;
createNode nurbsCurve -n "L_Finger_05_Knuckle_04_FK_CtrlShape" -p "L_Finger_05_Knuckle_04_FK_Ctrl";
	rename -uid "A95E6448-483C-BEDC-0F8F-B886E45DEAF2";
	setAttr -k off ".v";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "476BE562-4CB3-AA39-BABA-15B3598840B2";
	setAttr -s 12 ".lnk";
	setAttr -s 12 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "41D23D15-473D-AB38-5673-25833130AB91";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6F8322FF-4884-6E2A-37B8-FD916842D947";
createNode displayLayerManager -n "layerManager";
	rename -uid "8FA6CFD0-4BBC-3F8E-C332-08A9B7735818";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "31CAD749-4562-13B6-1DA2-DBB4B11C7A18";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FB762986-4011-0AA3-9B21-0BB6921790DE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AEDC8A2F-4A6E-E2D2-FF77-06B1D0300DD4";
	setAttr ".g" yes;
createNode reference -n "Takoto_ModelRN";
	rename -uid "149AE1AD-4820-8D60-2067-2EAB9AD74D16";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Takoto_ModelRN"
		"Takoto_ModelRN" 0
		"Takoto_ModelRN" 6
		2 "|Takoto_Model:Takoto" "translate" " -type \"double3\" 0 0 0"
		2 "|Takoto_Model:Takoto" "rotate" " -type \"double3\" 0 0 0"
		2 "|Takoto_Model:Takoto" "scale" " -type \"double3\" 1 1 1"
		2 "|Takoto_Model:Takoto|Takoto_Model:Geometry|Takoto_Model:Takoto_Geo|Takoto_Model:Takoto_GeoShape" 
		"uvPivot" " -type \"double2\" 0.76770249009132385 -0.10984699986875057"
		2 "Takoto_Model:Geo_Layer" "displayType" " 1"
		2 "Takoto_Model:Geo_Layer" "visibility" " 1";
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
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1187\n            -height 694\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1187\\n    -height 694\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1187\\n    -height 694\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D5B55A3F-4320-8070-1EF1-C0851160263F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "layer1";
	rename -uid "A021650B-4171-79A6-7BC4-478EE5F4B024";
	setAttr ".dt" 1;
	setAttr ".do" 1;
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
	setAttr -s 2 ".u";
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
connectAttr "ROOT_Jnt.s" "COG_Jnt.is";
connectAttr "COG_Jnt.s" "Spine_01_FK_Jnt.is";
connectAttr "Spine_01_FK_Jnt.s" "Spine_02_FK_Jnt.is";
connectAttr "Spine_02_FK_Jnt.s" "Spine_03_FK_Jnt.is";
connectAttr "Spine_03_FK_Jnt.s" "Spine_04_FK_Jnt.is";
connectAttr "Spine_04_FK_Jnt.s" "Neck_01_FK_Jnt.is";
connectAttr "Neck_01_FK_Jnt.s" "Goggle_01_FK_Jnt.is";
connectAttr "Spine_03_FK_Jnt.s" "L_Clavical_01_FK_Jnt.is";
connectAttr "L_Clavical_01_FK_Jnt.s" "L_Arm_01_FK_Jnt.is";
connectAttr "L_Arm_01_FK_Jnt.s" "L_Arm_02_FK_Jnt.is";
connectAttr "L_Arm_02_FK_Jnt.s" "L_Arm_03_FK_Jnt.is";
connectAttr "L_Clavical_01_FK_Jnt.s" "L_Arm_01_IK_Jnt.is";
connectAttr "L_Arm_01_IK_Jnt.s" "L_Arm_02_IK_Jnt.is";
connectAttr "L_Arm_02_IK_Jnt.s" "L_Arm_03_IK_Jnt.is";
connectAttr "L_Clavical_01_FK_Jnt.s" "L_Arm_01_RK_Jnt.is";
connectAttr "L_Arm_01_RK_Jnt.s" "L_Arm_02_RK_Jnt.is";
connectAttr "L_Arm_02_RK_Jnt.s" "L_Arm_03_RK_Jnt.is";
connectAttr "Spine_03_FK_Jnt.s" "R_Clavical_01_FK_Jnt.is";
connectAttr "R_Clavical_01_FK_Jnt.s" "R_Arm_01_FK_Jnt.is";
connectAttr "R_Arm_01_FK_Jnt.s" "R_Arm_02_FK_Jnt.is";
connectAttr "R_Arm_02_FK_Jnt.s" "R_Arm_03_FK_Jnt.is";
connectAttr "R_Clavical_01_FK_Jnt.s" "R_Arm_01_IK_Jnt.is";
connectAttr "R_Arm_01_IK_Jnt.s" "R_Arm_02_IK_Jnt.is";
connectAttr "R_Arm_02_IK_Jnt.s" "R_Arm_03_IK_Jnt.is";
connectAttr "R_Clavical_01_FK_Jnt.s" "R_Arm_01_RK_Jnt.is";
connectAttr "R_Arm_01_RK_Jnt.s" "R_Arm_02_RK_Jnt.is";
connectAttr "R_Arm_02_RK_Jnt.s" "R_Arm_03_RK_Jnt.is";
connectAttr "COG_Jnt.s" "Pelvis_01_FK_Jnt.is";
connectAttr "Pelvis_01_FK_Jnt.s" "L_Leg_01_FK_Jnt.is";
connectAttr "L_Leg_01_FK_Jnt.s" "L_Leg_02_FK_Jnt.is";
connectAttr "L_Leg_02_FK_Jnt.s" "L_Leg_03_FK_Jnt.is";
connectAttr "L_Leg_03_FK_Jnt.s" "L_Leg_04_FK_Jnt.is";
connectAttr "L_Leg_04_FK_Jnt.s" "L_Foot_01_FK_Jnt.is";
connectAttr "L_Foot_01_FK_Jnt.s" "L_Foot_02_FK_Jnt.is";
connectAttr "L_Foot_02_FK_Jnt.s" "L_Foot_03_FK_Jnt.is";
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
connectAttr "Pelvis_01_FK_Jnt.s" "R_Leg_01_FK_Jnt.is";
connectAttr "R_Leg_01_FK_Jnt.s" "R_Leg_02_FK_Jnt.is";
connectAttr "R_Leg_02_FK_Jnt.s" "R_Leg_03_FK_Jnt.is";
connectAttr "R_Leg_03_FK_Jnt.s" "R_Leg_04_FK_Jnt.is";
connectAttr "R_Leg_04_FK_Jnt.s" "R_Foot_01_FK_Jnt.is";
connectAttr "R_Foot_01_FK_Jnt.s" "R_Foot_02_FK_Jnt.is";
connectAttr "R_Foot_02_FK_Jnt.s" "R_Foot_03_FK_Jnt.is";
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
connectAttr "R_Hand_01_FK_Jnt.s" "R_Finger_01_Knuckle_01_FK_Jnt.is";
connectAttr "R_Finger_01_Knuckle_01_FK_Jnt.s" "R_Finger_01_Knuckle_02_FK_Jnt.is"
		;
connectAttr "R_Finger_01_Knuckle_02_FK_Jnt.s" "R_Finger_01_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Finger_01_Knuckle_03_FK_Jnt.s" "R_Finger_01_Knuckle_04_FK_Jnt.is"
		;
connectAttr "R_Hand_01_FK_Jnt.s" "R_Finger_02_Knuckle_01_FK_Jnt.is";
connectAttr "R_Finger_02_Knuckle_01_FK_Jnt.s" "R_Finger_02_Knuckle_02_FK_Jnt.is"
		;
connectAttr "R_Finger_02_Knuckle_02_FK_Jnt.s" "R_Finger_02_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Hand_01_FK_Jnt.s" "R_Finger_03_Knuckle_01_FK_Jnt.is";
connectAttr "R_Finger_03_Knuckle_01_FK_Jnt.s" "R_Finger_03_Knuckle_02_FK_Jnt.is"
		;
connectAttr "R_Finger_03_Knuckle_02_FK_Jnt.s" "R_Finger_03_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Hand_01_FK_Jnt.s" "R_Hand_Cup_01_FK_Jnt.is";
connectAttr "R_Hand_Cup_01_FK_Jnt.s" "R_Finger_04_Knuckle_01_FK_Jnt.is";
connectAttr "R_Finger_04_Knuckle_01_FK_Jnt.s" "R_Finger_04_Knuckle_02_FK_Jnt.is"
		;
connectAttr "R_Finger_04_Knuckle_02_FK_Jnt.s" "R_Finger_04_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Hand_Cup_01_FK_Jnt.s" "R_Finger_05_Knuckle_02_FK_Jnt.is";
connectAttr "R_Finger_05_Knuckle_02_FK_Jnt.s" "R_Finger_05_Knuckle_03_FK_Jnt.is"
		;
connectAttr "R_Finger_05_Knuckle_03_FK_Jnt.s" "R_Finger_05_Knuckle_04_FK_Jnt.is"
		;
connectAttr "L_Hand_01_FK_Jnt.s" "L_Finger_01_Knuckle_01_FK_Jnt.is";
connectAttr "L_Finger_01_Knuckle_01_FK_Jnt.s" "L_Finger_01_Knuckle_02_FK_Jnt.is"
		;
connectAttr "L_Finger_01_Knuckle_02_FK_Jnt.s" "L_Finger_01_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Finger_01_Knuckle_03_FK_Jnt.s" "L_Finger_01_Knuckle_04_FK_Jnt.is"
		;
connectAttr "L_Hand_01_FK_Jnt.s" "L_Finger_02_Knuckle_01_FK_Jnt.is";
connectAttr "L_Finger_02_Knuckle_01_FK_Jnt.s" "L_Finger_02_Knuckle_02_FK_Jnt.is"
		;
connectAttr "L_Finger_02_Knuckle_02_FK_Jnt.s" "L_Finger_02_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Hand_01_FK_Jnt.s" "L_Finger_03_Knuckle_01_FK_Jnt.is";
connectAttr "L_Finger_03_Knuckle_01_FK_Jnt.s" "L_Finger_03_Knuckle_02_FK_Jnt.is"
		;
connectAttr "L_Finger_03_Knuckle_02_FK_Jnt.s" "L_Finger_03_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Hand_01_FK_Jnt.s" "L_Hand_Cup_01_FK_Jnt.is";
connectAttr "L_Hand_Cup_01_FK_Jnt.s" "L_Finger_04_Knuckle_01_FK_Jnt.is";
connectAttr "L_Finger_04_Knuckle_01_FK_Jnt.s" "L_Finger_04_Knuckle_02_FK_Jnt.is"
		;
connectAttr "L_Finger_04_Knuckle_02_FK_Jnt.s" "L_Finger_04_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Hand_Cup_01_FK_Jnt.s" "L_Finger_05_Knuckle_02_FK_Jnt.is";
connectAttr "L_Finger_05_Knuckle_02_FK_Jnt.s" "L_Finger_05_Knuckle_03_FK_Jnt.is"
		;
connectAttr "L_Finger_05_Knuckle_03_FK_Jnt.s" "L_Finger_05_Knuckle_04_FK_Jnt.is"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Takoto_Rig.ma
