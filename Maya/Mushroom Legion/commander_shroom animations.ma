//Maya ASCII 2016 scene
//Name: commander_shroom animations.ma
//Last modified: Thu, Apr 21, 2016 10:34:59 AM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "2475EA61-4937-4F29-5281-55BEFE4FB6AB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 89.598350584976771 62.040377181023189 -0.54613926364586085 ;
	setAttr ".r" -type "double3" 1419.2616472696434 1526.1999999992304 2.3995529624964023e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D2B913AD-47B0-A218-D8D2-5A9F921047FE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 105.40034146066925;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B83F303E-4077-4FDE-6352-76BF07F9841E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "95660234-4F7F-7B78-D3AE-E8A673571461";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "9B2A96E1-47BB-E8EF-AA2B-6F94BB467FBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2445829447103141 6.1402148912803352 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "250FA034-45E7-3D98-8412-378DBB7DDDA4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 11.146053443599255;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "945E723F-440C-8BE8-54D6-838FAC8D89C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 3.358259332354649 -3.1085883470265498 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "148052CC-41B9-B683-4671-38A9ADB48ED4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 19.858841140602863;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root";
	rename -uid "322138CE-4245-D881-8BB3-3F864DC794CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0073656140238123058 5.7663222067832347 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "hip" -p "root";
	rename -uid "B8D89F24-4CAC-ABD0-C7D1-65A9A4E68875";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.64317081128348963 1.4281260869075427e-016 0 ;
	setAttr ".r" -type "double3" -1.403341859706975e-014 -3.1160448881339391e-030 3.8160543982526997e-046 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0073656140238123058 6.4094930180667244 0 1;
	setAttr ".radi" 0.5769100243256633;
createNode joint -n "spine_a" -p "hip";
	rename -uid "B5DE0DB4-47EE-729A-6A90-FDB2EB550560";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.4869271369628252 5.5220875360424965e-016 0 ;
	setAttr ".r" -type "double3" -1.4029424130436141e-014 3.3480754011711943e-016 -4.0990427412708216e-032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0073656140238123058 8.8964201550295492 0 1;
	setAttr ".radi" 0.5502960597208294;
createNode joint -n "spine_b" -p "spine_a";
	rename -uid "24159291-4646-C236-09BD-BD82F2338574";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.9723904879360359 4.3795866665164672e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0073656140238123058 10.868810642965585 0 1;
	setAttr ".radi" 0.52146426473225926;
createNode joint -n "occular" -p "spine_b";
	rename -uid "3A240B53-48EC-73B7-06F5-0ABB44BE2FEC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4149757848236801 3.1418773911966012e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0073656140238123058 12.283786427789265 0 1;
	setAttr ".radi" 0.57469219394192728;
createNode joint -n "spine_c" -p "occular";
	rename -uid "2A5F538C-45E0-DB7A-FA5A-77A16C705A77";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.4440490828772607 5.4268791302486636e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0073656140238123058 14.727835510666527 0 1;
	setAttr ".radi" 0.50372162166236967;
createNode joint -n "cap_start" -p "spine_c";
	rename -uid "12E4BD2A-4356-5D0B-645A-34ADDCD3C00E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.0719513521391468 2.3802101448458992e-016 0 ;
	setAttr ".r" -type "double3" -1.3101922551901328e-014 -4.1960123959306568 1.6992804419885699e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0073656140238123058 15.799786862805673 0 1;
	setAttr ".radi" 0.889778306999369;
createNode joint -n "cap_a" -p "cap_start";
	rename -uid "13A35870-4369-3C02-7952-5BA8CA8AE2DC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 8.5357139353211373 1.8953092285214658e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0073656140238123058 24.335500798126812 0 1;
	setAttr ".radi" 0.77618108459960944;
createNode joint -n "cap_b" -p "cap_a";
	rename -uid "BC34A120-47A0-B3F8-8603-83816BF208EA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 6.3395009689257851 1.4076519880669787e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0073656140238123058 30.675001767052599 0 1;
	setAttr ".radi" 0.8102491596677287;
createNode joint -n "cap_end" -p "cap_b";
	rename -uid "6FA358B3-4FEF-3CFD-587D-599BD33E45AA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 6.9981504202427569 1.5539015452687444e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 -0.0073656140238123058 37.673152187295358 0 1;
	setAttr ".radi" 0.8102491596677287;
createNode joint -n "right_cap" -p "cap_end";
	rename -uid "F27E66F5-4202-F08A-62F8-A9A8E0F5AE95";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.66795438597618739 -0.17015218729535064 -1.9721500000000004e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 20.725558865560476 ;
	setAttr ".bps" -type "matrix" 0.93528625745628435 0.35389209741589012 0 0 0.35389209741589012 -0.93528625745628435 -1.224646799147353e-016 0
		 -4.3339282434391312e-017 1.1453953214803459e-016 -1 0 -0.67532000000000003 37.503000000000007 -1.9721500000000004e-031 1;
	setAttr ".radi" 0.78954428521945719;
createNode joint -n "right_cap_a" -p "right_cap";
	rename -uid "181C3BC0-4641-7F01-C76F-52A005CBC842";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -6.5978419186681947 -2.5783567096482329e-005 3.1575762905640941e-021 ;
	setAttr ".r" -type "double3" -1.4966971826034817e-028 4.6465727834789019e-026 1.5502790607410103e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -64.674345468176298 ;
	setAttr ".bps" -type "matrix" 0.080200588641745008 0.99677874454741389 1.1069473509301693e-016 0
		 0.99677874454741389 -0.080200588641745008 -5.2385813435560753e-017 0 -4.3339282434391312e-017 1.1453953214803459e-016 -1 0
		 -6.8462000000000049 35.16810000000001 7.6950026937048127e-031 1;
	setAttr ".radi" 0.82474503796874532;
createNode joint -n "right_cap_b" -p "right_cap_a";
	rename -uid "2F319962-4D60-82BF-FD6C-CCB6BA53E222";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -7.2784460833052265 -4.3537462453002718e-006 -8.0568543300573904e-016 ;
	setAttr ".r" -type "double3" -3.0994947682992153e-031 2.9104318071629959e-026 2.8289780328987057e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.1835074744915932 ;
	setAttr ".bps" -type "matrix" 0.059595380047240881 0.99822261579120009 1.1175313038465898e-016 0
		 0.99822261579120009 -0.059595380047240881 -5.0088278826966939e-017 0 -4.3339282434391312e-017 1.1453953214803459e-016 -1 0
		 -7.4299400000000038 27.913099999999996 -3.1518347530840997e-031 1;
	setAttr ".radi" 1.027286219462519;
createNode joint -n "right_cab_end" -p "right_cap_b";
	rename -uid "EBF4EB78-4FB0-1CDF-6FD6-14A103B51E54";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -11.194196245572716 2.3838152571897808e-006 -1.2509865919841513e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 86.583411808228391 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -3.3306690738754696e-016 -4.3339282434391325e-017 0
		 -3.3306690738754696e-016 -1.0000000000000004 -1.1453953214803452e-016 0 -4.3339282434391312e-017 1.1453953214803459e-016 -1 0
		 -8.0970600000000044 16.738799999999991 7.9246977302095937e-032 1;
	setAttr ".radi" 1.027286219462519;
createNode joint -n "left_cap" -p "cap_end";
	rename -uid "93D57974-4FAF-BD81-9D2D-78A61683A5F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.68268607139303328 -0.17017066222139476 -1.9721522630525295e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -20.725558865560476 ;
	setAttr ".bps" -type "matrix" 0.93528625745628435 -0.35389209741589012 0 0 0.35389209741589012 0.93528625745628435 0 0
		 0 0 1 0 0.67532045736922131 37.502981525073963 -1.9721522630525295e-031 1;
	setAttr ".radi" 0.78954428521945719;
createNode joint -n "left_cap_a" -p "left_cap";
	rename -uid "E4ED22EC-424C-7FFD-3B20-2D8064AC76DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 6.5978561809095062 0 0 ;
	setAttr ".r" -type "double3" 0 0 -2.9955875614457382e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -64.674345468176298 ;
	setAttr ".bps" -type "matrix" 0.080200588641745008 -0.99677874454741389 0 0 0.99677874454741389 0.080200588641745008 0 0
		 0 0 1 0 6.8462046720468859 35.168052362763504 -1.9721522630525295e-031 1;
	setAttr ".radi" 0.82474503796874532;
createNode joint -n "left_cap_b" -p "left_cap_a";
	rename -uid "0800CC00-4F42-15CB-6CC1-8FAFA2AC7DDA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 7.2784040673957433 1.5543122344752192e-015 0 ;
	setAttr ".r" -type "double3" 0 0 -1.8675892327979136e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.1835074744919012 ;
	setAttr ".bps" -type "matrix" 0.059595380047235524 -0.99822261579120042 0 0 0.99822261579120042 0.059595380047235524 0 0
		 0 0 1 0 7.4299369626244971 27.913093894155985 -1.9721522630525295e-031 1;
	setAttr ".radi" 1.027286219462519;
createNode joint -n "left_cab_end" -p "left_cap_b";
	rename -uid "59794971-4D05-EBF8-1BA7-15BCE407C45D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 11.194200242942035 9.3258734068513149e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 86.583411808228703 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 4.163336342344337e-016 0 0 -4.163336342344337e-016 1.0000000000000004 0 0
		 0 0 1 0 8.0970595804274925 16.738790045955895 -1.9721522630525295e-031 1;
	setAttr ".radi" 1.027286219462519;
createNode joint -n "rear_cap" -p "cap_end";
	rename -uid "39DD9BEF-4EA1-E6F5-2260-6A9B7BB1E7FE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.0073656140238123023 -0.44195218729534957 -1.03381 ;
	setAttr ".r" -type "double3" 1.004858443321812e-014 -9.7960598410314744e-015 1.0616652653660757e-029 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000028 -57.3996664263098 90.000000000000028 ;
	setAttr ".bps" -type "matrix" -2.2204460492503141e-016 0.53877568972120893 0.84244926029134581 0
		 7.7715611723760997e-016 -0.84244926029134615 0.53877568972120871 0 1.0000000000000004 7.7715611723760997e-016 -2.2204460492503131e-016 0
		 0 37.231200000000008 -1.0338099999999999 1;
	setAttr ".radi" 0.77112823861648183;
createNode joint -n "rear_cap_a" -p "rear_cap";
	rename -uid "1C72559D-4C7F-9A2F-58C2-25837B6B3929";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -5.8812155471901955 0.23057060682364777 -1.5234792596775813e-015 ;
	setAttr ".r" -type "double3" 2.0629562528046529e-026 1.5743871542627371e-025 7.1042276487818495e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -49.805023057718351 ;
	setAttr ".bps" -type "matrix" -7.3693825864006742e-016 0.99122790068263489 0.13216372009101807 0
		 3.3195999772366561e-016 -0.13216372009101812 0.99122790068263456 0 1.0000000000000004 7.7715611723760997e-016 -2.2204460492503131e-016 0
		 -3.8397719474596755e-017 33.868300000000005 -5.864209849623494 1;
	setAttr ".radi" 0.78329149326806946;
createNode joint -n "rear_cap_b" -p "rear_cap_a";
	rename -uid "01160576-483D-DA4C-D253-5488A22E0718";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -6.3638813282140152 0.84851781384312008 -5.8721899048570092e-015 ;
	setAttr ".r" -type "double3" -6.2506942831197523e-027 -1.0396292896788842e-025 4.0504200132995776e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 -10.722449489877638 ;
	setAttr ".bps" -type "matrix" -7.8583298796704465e-016 0.9985103078369546 -0.05456340479983407 0
		 -3.1152010078104523e-016 -0.054563404799834098 -0.99851030783695427 0 -1.0000000000000004 -7.7047402733374021e-016 3.4432685016584774e-016 0
		 -9.3912602857368077e-016 27.448100000000004 -5.8642095488704928 1;
	setAttr ".radi" 1.0279018202984576;
createNode joint -n "rear_cap_end" -p "rear_cap_b";
	rename -uid "27C880E9-47BF-77E7-E7CD-28A7429FDC1F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -11.169395374943129 0.67157806495572658 1.013241166700316e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.872193878713787 -89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" -1.0000000000000004 5.5980893356962766e-016 2.7163379219298544e-016 0
		 -5.6460288818898255e-016 -1.0000000000000002 -6.0368376963992838e-016 0 3.5393375515579015e-016 -7.6327832942979512e-016 0.99999999999999989 0
		 -2.5034684207773458e-015 16.258700000000015 -5.9253469280335649 1;
	setAttr ".radi" 1.0279018202984576;
createNode joint -n "front_cap" -p "cap_end";
	rename -uid "5B8A395D-4DF1-5D85-31A5-BEAE2D725456";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.0073656140238123023 -0.44195773352395662 1.0338062116375877 ;
	setAttr ".r" -type "double3" -1.0156037160371943e-014 9.6846139168129612e-015 -6.928989580814331e-030 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 -57.399666426309814 -89.999999999999957 ;
	setAttr ".bps" -type "matrix" 4.4408920985006281e-016 -0.53877568972120871 0.84244926029134581 0
		 -3.3306690738754701e-016 0.84244926029134626 0.53877568972120848 0 -1.0000000000000002 -3.8857805861880484e-016 2.2204460492503131e-016 0
		 0 37.231194453771401 1.0338062116375877 1;
	setAttr ".radi" 0.77112823861648183;
createNode joint -n "front_cap_a" -p "front_cap";
	rename -uid "E9932881-4FB9-9EDE-D55F-DAB93D289ABA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 5.7782138259324283 -0.2964875965415672 2.0068236482763384e-015 ;
	setAttr ".r" -type "double3" -2.9386080204160029e-026 3.5163635424705487e-025 5.302599169356566e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -49.805023057718309 ;
	setAttr ".bps" -type "matrix" 5.4102508397136979e-016 -0.99122790068263478 0.13216372009101895 0
		 1.2426041049236161e-016 0.13216372009101912 0.99122790068263433 0 -1.0000000000000002 -3.8857805861880484e-016 2.2204460492503131e-016 0
		 6.5796897088556826e-016 33.868257557956028 5.741917865779123 1;
	setAttr ".radi" 0.78329149326806946;
createNode joint -n "front_cap_b" -p "front_cap_a";
	rename -uid "79C6C82F-4A93-87C1-27B3-21984E42E54D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 6.5496984017628161 0.54547148935099887 2.8375888565509769e-015 ;
	setAttr ".r" -type "double3" 7.4894093239520751e-027 -2.2978622989617547e-025 -2.1852167839362907e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -10.722449489877638 ;
	setAttr ".bps" -type "matrix" 5.084599228321342e-016 -0.99851030783695471 -0.054563404799833182 0
		 -3.4521408614401801e-016 0.054563404799833098 -0.99851030783695416 0 1.0000000000000002 3.9526014852267455e-016 -3.4432685016584774e-016 0
		 1.4317117533140996e-015 27.44810530230848 7.1482369313019181 1;
	setAttr ".radi" 1.0279018202984576;
createNode joint -n "front_cap_end" -p "front_cap_b";
	rename -uid "0A758AC5-41C9-4E3C-FD6E-72829273BDE4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 11.226119308612169 0.36631932600838041 -4.4512324143552907e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.87219387871383 -89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -4.885662813307016e-016 -4.482173455187288e-016 0
		 3.0612873847411861e-016 1.0000000000000002 -8.1878948066105324e-016 0 3.1695651883133423e-016 9.5062846483529029e-016 0.99999999999999978 0
		 2.5620525049552079e-015 16.258697085322758 6.1699280161556356 1;
	setAttr ".radi" 1.0279018202984576;
createNode ikEffector -n "effector7" -p "cap_b";
	rename -uid "6725F5C3-4957-A0D9-EF2D-01B039B12B09";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "left_eye" -p "occular";
	rename -uid "6B2B17B4-4F4B-6B27-8DF4-AEAB27A51F84";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.014974292778610732 -1.4988849446989656 1.0468774973761006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 1.4915193306751535 12.298760720567875 1.0468774973761006 1;
	setAttr ".radi" 0.57493960261151933;
createNode joint -n "right_eye" -p "occular";
	rename -uid "FD631925-4E11-7942-F123-3EB3A72C58AD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.015013572210733628 1.4841543859761874 1.04688 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 7.062250076880252e-031 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -1.49152 12.298799999999998 1.04688 1;
	setAttr ".radi" 0.57493960261151933;
createNode joint -n "front_right_leg" -p "hip";
	rename -uid "371CFBBC-4E05-CAF9-54F3-D7A251BCCA4C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.97015333568424023 2.9052943859761871 1.8854677559850765 ;
	setAttr ".r" -type "double3" 2.0238968643842288 -1.5245381408453365 -0.45936152123511986 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 -21.250505507133273 ;
	setAttr ".bps" -type "matrix" 0.36244626115494921 0.93200467154129585 0 0 0.93200467154129607 -0.36244626115494921 -1.2246467991473535e-016 0
		 -1.1413765377934284e-016 4.4386865358633426e-017 -1 0 -2.9126599999999998 5.4393396823824851 1.8854677559850765 1;
	setAttr ".radi" 0.58025674344735645;
createNode joint -n "front_right_a" -p "front_right_leg";
	rename -uid "1A963895-4140-30C9-A258-C6B6175BBEB6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.5540722833298029 0.079112214870301664 -0.61914920555301478 ;
	setAttr ".r" -type "double3" 0.29743406986144472 -1.858163595254325 -0.95182777169841204 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.1477765380808789 ;
	setAttr ".bps" -type "matrix" 0.29408584883752376 0.9557790087219501 8.8577653767278786e-018 0
		 0.95577900872195032 -0.29408584883752376 -1.2214392256329998e-016 0 -1.1413765377934284e-016 4.4386865358633426e-017 -1 0
		 -3.7646409959772709 3.0302584563735366 2.5046169615380913 1;
	setAttr ".radi" 0.5179872510420751;
createNode joint -n "front_right_b" -p "front_right_a";
	rename -uid "5896C6B4-4448-9437-D5CB-85B8055F69CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -1.3395919262018519 -0.078735748141604125 -0.2790490132257184 ;
	setAttr ".r" -type "double3" 0.042030414340577762 -2.2215932394995663 -0.25235459212558742 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 3.6228298965080485 ;
	setAttr ".bps" -type "matrix" 0.35389209741588978 0.93528625745628424 1.1220114913919533e-018 0
		 0.93528625745628446 -0.35389209741588973 -1.2245953991760612e-016 0 -1.1413765377934284e-016 4.4386865358633426e-017 -1 0
		 -4.2338499999999994 1.773059682382484 2.7836659747638097 1;
	setAttr ".radi" 0.51586140205252162;
createNode joint -n "front_right_end" -p "front_right_b";
	rename -uid "12E96918-4A2B-8283-18B8-B88CB97DB88F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -1.3066556447171478 5.4600495003719142e-006 -0.21928585771312115 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 69.274441134439556 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -1.6653345369377348e-016 -1.1413765377934284e-016 0
		 -5.5511151231257827e-017 -1.0000000000000002 -4.4386865358633402e-017 0 -1.1413765377934284e-016 4.4386865358633426e-017 -1 0
		 -4.6962599999999997 0.55096068238248486 3.0029518324769309 1;
	setAttr ".radi" 0.51586140205252162;
createNode ikEffector -n "effector1" -p "front_right_b";
	rename -uid "57168A78-4EE4-2D81-03F5-BBBCC610A8E6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "front_left_leg" -p "hip";
	rename -uid "89556340-42C2-60DE-1531-13A00A08769D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.0019949622602535 -2.9200276029712846 1.8836108291845504 ;
	setAttr ".r" -type "double3" 1.7290246824637814 -2.4228462337921304 -1.1893249639679377 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -158.74949449286669 ;
	setAttr ".bps" -type "matrix" 0.36244626115494938 -0.93200467154129585 -0 0 0.93200467154129585 0.36244626115494938 0 0
		 0 0 1 0 2.9126619889474723 5.40749805580647 1.8836108291845504 1;
	setAttr ".radi" 0.58025674344735645;
createNode joint -n "front_left_a" -p "front_left_leg";
	rename -uid "2D3EA6E4-41A1-A56E-912F-1EB765928CF6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.5791373881259956 -0.11864357653957283 0.63431644470738613 ;
	setAttr ".r" -type "double3" -0.54792641015568377 3.9481140789262543 2.0967101863917867 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.1477765380808789 ;
	setAttr ".bps" -type "matrix" 0.29408584883752392 -0.9557790087219501 -0 0 0.9557790087219501 0.29408584883752392 0 0
		 0 0 1 0 3.7368843246954317 2.960728040799407 2.5179272738919365 1;
	setAttr ".radi" 0.5179872510420751;
createNode joint -n "front_left_b" -p "front_left_a";
	rename -uid "D8718FB8-48CB-F054-73CD-AEB88DE5EE41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.334564944221923 -0.018504992939368279 0.42686010078962022 ;
	setAttr ".r" -type "double3" 0.38430916948879718 -10.019521410576351 -3.6578764189727067 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 3.6228298965080485 ;
	setAttr ".bps" -type "matrix" 0.35389209741588989 -0.93528625745628424 0 0 0.93528625745628424 0.35389209741588989 0 0
		 0 0 1 0 4.1116743053377425 1.6797368247796063 2.9447873746815567 1;
	setAttr ".radi" 0.51586140205252162;
createNode joint -n "front_left_end" -p "front_left_b";
	rename -uid "2024CC96-40CB-9C33-AA73-CEB7CA349944";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.2910156740679914 -0.014779171838285324 0.17525599315607421 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 69.274441134439542 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 2.7755575615628914e-016 0 0 -2.7755575615628914e-016 1.0000000000000002 0 0
		 0 0 1 0 4.5547317937135201 0.46703737454323191 3.1200433678376309 1;
	setAttr ".radi" 0.51586140205252162;
createNode ikEffector -n "effector3" -p "front_left_b";
	rename -uid "6D845DAE-44FE-8348-5CBA-9ABB62D5927C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "front_middle_leg" -p "hip";
	rename -uid "3153D515-426A-B51E-E197-5B9F94CCD48B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.0019949622602562 -0.046452127499368993 1.8854677559850752 ;
	setAttr ".r" -type "double3" -4.1109337941225768 0.70849835493982727 -1.9301586652633742 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -179.18154453831139 ;
	setAttr ".bps" -type "matrix" 0.014284256782849843 -0.99989797479951026 -0 0 0.99989797479951026 0.014284256782849843 0 0
		 0 0 1 0 0.039086513475556472 5.4074980558064683 1.8854677559850752 1;
	setAttr ".radi" 0.56787800700061253;
createNode joint -n "front_middle_a" -p "front_middle_leg";
	rename -uid "8D3D46BF-4E66-F70B-A1AF-D69C4E28BAF1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.3123081353451749 9.7143098770617739e-017 0.827942348388921 ;
	setAttr ".r" -type "double3" -0.19798798057348291 -1.0537652968021811 0.74243359415752896 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -0.81845546168859784 ;
	setAttr ".bps" -type "matrix" -1.3877787807814457e-017 -1.0000000000000002 -0 0 1.0000000000000002 -1.3877787807814457e-017 0 0
		 0 0 1 0 0.072116116641899763 3.0954258341623961 2.7134101043739962 1;
	setAttr ".radi" 0.51661297206829759;
createNode joint -n "front_middle_b" -p "front_middle_a";
	rename -uid "BFD5CE70-4047-BF1B-C0BC-D4B364D9F202";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.3211841266537541 -1.3534507957559505e-016 0.44581511067096047 ;
	setAttr ".r" -type "double3" 0.00036373123500082393 -10.210191643472189 0.0087313020993405668 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.3877787807814457e-017 -1.0000000000000002 0 0 1.0000000000000002 -1.3877787807814457e-017 0 0
		 0 0 1 0 0.072116116641899611 1.7742417075086419 3.1592252150449567 1;
	setAttr ".radi" 0.51490454431831445;
createNode joint -n "front_middle_end" -p "front_middle_b";
	rename -uid "653E037E-4864-88DD-EB14-119FE19CDA5E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.2881545234874128 -1.1949430855638095e-016 0.19106361885898115 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -2.3592239273284581e-016 0 0 2.3592239273284581e-016 1.0000000000000004 0 0
		 0 0 1 0 0.072116116641899472 0.48608718402122886 3.3502888339039378 1;
	setAttr ".radi" 0.51490454431831445;
createNode ikEffector -n "effector2" -p "front_middle_b";
	rename -uid "DCC7CDFD-4E82-CC77-CD59-5D9341D120AD";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "rear_left_leg" -p "hip";
	rename -uid "1C27F7D4-45C6-914D-961B-0D9B7A7758AD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.0019930180667238 -2.9200256140238117 -1.88361 ;
	setAttr ".r" -type "double3" 10.426598516815602 2.469031014828893 -0.079484805546587711 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 21.250505507133312 ;
	setAttr ".bps" -type "matrix" -0.36244626115494943 0.93200467154129585 0 0 -0.93200467154129585 -0.36244626115494943 0 0
		 0 0 1 0 2.9126599999999994 5.4074999999999998 -1.88361 1;
	setAttr ".radi" 0.58025674344735645;
createNode joint -n "rear_left_a" -p "rear_left_leg";
	rename -uid "5DF0C81C-410B-E33F-B692-82A5F4A5A19D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.5879816609441284 0.042974167491780305 -0.47027256159870401 ;
	setAttr ".r" -type "double3" -0.13552543778527634 4.0401730036078742 0.11780558192756885 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.1477765380808789 ;
	setAttr ".bps" -type "matrix" -0.29408584883752398 0.9557790087219501 0 0 -0.9557790087219501 -0.29408584883752398 0 0
		 0 0 1 0 3.8106121520888374 2.9799131758032273 -2.353882561598704 1;
	setAttr ".radi" 0.5179872510420751;
createNode joint -n "rear_left_b" -p "rear_left_a";
	rename -uid "6D77379D-4FC2-8570-DE80-0495126FCE94";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -1.3053855837016322 -0.070480727880193231 -0.33431515062380379 ;
	setAttr ".r" -type "double3" -1.0729694973168147 -0.8761420248803804 4.1972998911281891 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 3.6228298965079571 ;
	setAttr ".bps" -type "matrix" -0.35389209741588845 0.9352862574562848 0 0 -0.9352862574562848 -0.35389209741588845 0 0
		 0 0 1 0 4.2618715797593314 1.7529804212982902 -2.6881977122225078 1;
	setAttr ".radi" 0.51586140205252162;
createNode joint -n "rear_left_end" -p "rear_left_b";
	rename -uid "E033DAB8-432E-EF73-8F51-C98F96416C4F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -1.2540492811523634 0.10889909251394925 -0.29940007860365148 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 69.274441134439655 ;
	setAttr ".bps" -type "matrix" -1.0000000000000004 -3.8857805861880479e-016 0 0 3.8857805861880479e-016 -1.0000000000000004 0 0
		 0 0 1 0 4.6038178854514715 0.5415468342071037 -2.9875977908261593 1;
	setAttr ".radi" 0.51586140205252162;
createNode ikEffector -n "effector4" -p "rear_left_b";
	rename -uid "22B1CF39-45F8-863B-B3D3-2F83517124FE";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "rear_middle_leg" -p "hip";
	rename -uid "1E901516-4BE4-3753-6ABD-478E74C00A95";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.0019930180667247 -0.046452114023812524 -1.88547 ;
	setAttr ".r" -type "double3" -22.745695345694759 6.3529321639982799 -8.0980677739785616 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.81845546168864769 ;
	setAttr ".bps" -type "matrix" -0.014284256782850505 0.99989797479951026 0 0 -0.99989797479951026 -0.014284256782850505 0 0
		 0 0 1 0 0.039086500000000003 5.4074999999999998 -1.88547 1;
	setAttr ".radi" 0.56787800700061253;
createNode joint -n "rear_middle_a" -p "rear_middle_leg";
	rename -uid "49424B76-471A-56BD-F939-1D9DB0AED6CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.3123059138825384 -2.8568512749904684e-008 -0.8279399999999999 ;
	setAttr ".r" -type "double3" -0.19816135802263485 -1.053305280907805 0.74313312657888264 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -0.81845546168815253 ;
	setAttr ".bps" -type "matrix" -8.4186130289154448e-015 1.0000000000000002 0 0 -1.0000000000000002 -8.4186130289154448e-015 0 0
		 0 0 1 0 0.07211610000000003 3.0954299999999986 -2.7134099999999997 1;
	setAttr ".radi" 0.51661297206829759;
createNode joint -n "rear_middle_b" -p "rear_middle_a";
	rename -uid "D9F858BD-4F75-C6E4-95EE-3AA6B1E273CE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -1.3211899999999992 1.1129985821867194e-014 -0.44582000000000077 ;
	setAttr ".r" -type "double3" 6.9443626773283562e-005 -10.210220369411942 0.010649206506343904 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -8.4186130289154448e-015 1.0000000000000002 0 0 -1.0000000000000002 -8.4186130289154448e-015 0 0
		 0 0 1 0 0.072116100000000016 1.7742399999999992 -3.1592300000000004 1;
	setAttr ".radi" 0.51490454431831445;
createNode joint -n "rear_middle_end" -p "rear_middle_b";
	rename -uid "9639FBC9-4033-CB57-B16A-B484C73BD898";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -1.2881529999999992 1.0838552277903091e-014 -0.19105999999999934 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999517 ;
	setAttr ".bps" -type "matrix" -1.0000000000000002 1.3010426069826211e-016 0 0 -1.3010426069826211e-016 -1.0000000000000002 0 0
		 0 0 1 0 0.072116100000000016 0.48608699999999971 -3.3502899999999998 1;
	setAttr ".radi" 0.51490454431831445;
createNode ikEffector -n "effector5" -p "rear_middle_b";
	rename -uid "D97B1B06-48D3-EEA1-358E-6087B4C887A6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "rear_right_leg" -p "hip";
	rename -uid "C37FE677-49AE-D423-2EE1-C388CDDF7F2C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.97015301806672571 2.9052943859761871 -1.88547 ;
	setAttr ".r" -type "double3" 10.145046144414529 4.6009399601677439 3.8552607044991909 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 158.74949449286672 ;
	setAttr ".bps" -type "matrix" -0.36244626115494943 -0.93200467154129607 0 0 -0.93200467154129574 0.36244626115494943 1.2246467991473532e-016 0
		 -1.1413765377934281e-016 4.4386865358633451e-017 -1 0 -2.9126599999999998 5.4393399999999996 -1.88547 1;
	setAttr ".radi" 0.58025674344735645;
createNode joint -n "rear_right_a" -p "rear_right_leg";
	rename -uid "754B584D-4965-28B6-C529-07BEE858F452";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.5414923053921186 -0.28948190399757845 0.65684148244123475 ;
	setAttr ".r" -type "double3" 0.49082603663591851 -0.29782024821386238 -2.2076206686427171 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.1477765380808789 ;
	setAttr ".bps" -type "matrix" -0.29408584883752398 -0.95577900872195032 -8.8577653767278771e-018 0
		 -0.95577900872194999 0.29408584883752398 1.2214392256329996e-016 0 -1.1413765377934281e-016 4.4386865358633451e-017 -1 0
		 -3.5640158969910343 2.9657356649123483 -2.5423114824412347 1;
	setAttr ".radi" 0.5179872510420751;
createNode joint -n "rear_right_b" -p "rear_right_a";
	rename -uid "FD4C3FD8-41E2-0545-DBC8-CFBEB7A29627";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.2897234576070191 -0.00051807625640209933 0.32407514900492762 ;
	setAttr ".r" -type "double3" 0.63335503664884485 -4.8497912698473415 -3.772747445367477 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 3.6228298965080485 ;
	setAttr ".bps" -type "matrix" -0.35389209741588995 -0.93528625745628446 -1.1220114913919533e-018 0
		 -0.93528625745628413 0.35389209741589001 1.224595399176061e-016 0 -1.1413765377934281e-016 4.4386865358633451e-017 -1 0
		 -3.9428101483762745 1.7328926981796389 -2.8663866314461623 1;
	setAttr ".radi" 0.51586140205252162;
createNode joint -n "rear_right_end" -p "rear_right_b";
	rename -uid "35E9F919-4021-CA93-F09A-0AA7AEE5C0EE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.3796019929299976 0.005639393444414261 0.22489840737816635 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 69.274441134439542 ;
	setAttr ".bps" -type "matrix" -1.0000000000000002 2.7755575615628914e-016 1.1413765377934281e-016 0
		 3.3306690738754696e-016 1.0000000000000004 4.4386865358633395e-017 0 -1.1413765377934281e-016 4.4386865358633451e-017 -1 0
		 -4.436314838442363 0.44456565020710714 -3.0912850388243287 1;
	setAttr ".radi" 0.51586140205252162;
createNode ikEffector -n "effector6" -p "rear_right_b";
	rename -uid "ADD4B2B4-4F92-7806-2E98-00BB6A6A3565";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "cmdr_shroom_final:commander";
	rename -uid "BF0F1542-4291-42FA-175C-399E15CF3239";
	setAttr ".t" -type "double3" 1.00827312469482 25.2099723815918 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -179.99998474121099 -89.458236694335895 -179.99998474121099 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 10.7908325195313 19.046594619751001 10.7908325195313 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "cmdr_shroom_final:commanderShape" -p "cmdr_shroom_final:commander";
	rename -uid "3BBF84D8-490E-D427-BF0A-0AB37D6D55B8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".hio" yes;
createNode mesh -n "commanderShapeOrig" -p "cmdr_shroom_final:commander";
	rename -uid "40494E9F-4EA1-49EE-4701-C0B326D8F23B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1553 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.86465186 0.36866507 0.88860542
		 0.36756638 0.88902867 0.39782313 0.86475778 0.40250471 0.86433452 0.32885489 0.88733625
		 0.32914177 0.90938008 0.36231709 0.91022182 0.38884482 0.88902867 0.42262894 0.86475778
		 0.42848098 0.84352231 0.36678475 0.84352231 0.3958441 0.86401725 0.30100086 0.88606709
		 0.30123499 0.90643847 0.32832786 0.84352231 0.32799408 0.92097032 0.35174605 0.92222327
		 0.38261601 0.91006619 0.41420743 0.86475778 0.44470131 0.88902867 0.44470131 0.84352231
		 0.42015541 0.82356948 0.36973912 0.82345378 0.39240149 0.89986497 0.3104637 0.84352231
		 0.30029821 0.91555125 0.32588637 0.82345378 0.33058724 0.91001415 0.44470131 0.84352231
		 0.44470131 0.86475778 0.46092138 0.88902867 0.46677345 0.82328004 0.41268528 0.80314559
		 0.38534203 0.8026827 0.40673706 0.82328004 0.30062154 0.8026827 0.34066144 0.91006619
		 0.47519496 0.82322198 0.44470131 0.84352231 0.46924722 0.86475778 0.48689768 0.88902867
		 0.4915795 0.80198818 0.42110404 0.78114456 0.39689794 0.78045005 0.42043158 0.80198818
		 0.30346513 0.78045005 0.34785584 0.91022182 0.5005576 0.8017568 0.44470131 0.82328004
		 0.47671732 0.84352231 0.49355853 0.86465186 0.52073759 0.88860542 0.52183622 0.77940851
		 0.43188855 0.7564593 0.38771129 0.75599658 0.41506615 0.77940851 0.30531546 0.75599658
		 0.34180912 0.90938008 0.5270853 0.77906102 0.44470131 0.80198818 0.46829858 0.82345378
		 0.4970009 0.84352231 0.52261764 0.86433452 0.56054747 0.88733625 0.56026083 0.75530255
		 0.43151549 0.73339021 0.37383142 0.73313421 0.40476316 0.75530255 0.30265909 0.73332143
		 0.33459476 0.92222327 0.50678641 0.92097032 0.53765637 0.90643847 0.56107479 0.75507069
		 0.44470131 0.77940851 0.45751384 0.8026827 0.48266554 0.82356948 0.51966351 0.84352231
		 0.56140834 0.86401725 0.5884015 0.88606709 0.58816737 0.73282063 0.42813721 0.71623588
		 0.3713077 0.7156747 0.40364426 0.73314768 0.30249488 0.71642309 0.33828613 0.91555125
		 0.56351602 0.89986497 0.5789389 0.73271567 0.44470131 0.75530255 0.4578869 0.78045005
		 0.46897081 0.80314559 0.50406033 0.82345378 0.55881512 0.84352231 0.58910441 0.71511352
		 0.42990556 0.70563513 0.37506506 0.70479381 0.40616125 0.71642309 0.31182137 0.70591569
		 0.34751648 0.71492678 0.44470131 0.73282063 0.46126518 0.75599658 0.474336 0.78114456
		 0.49250445 0.8026827 0.54874074 0.82328004 0.58878058 0.70395201 0.43223116 0.70591569
		 0.32529521 0.7036714 0.44470131 0.71511352 0.45949706 0.73313421 0.48463947 0.7564593
		 0.5016911 0.78045005 0.54154658 0.80198818 0.5859375 0.70395201 0.45717099 0.7156747
		 0.48575813 0.73339021 0.51557118 0.75599658 0.54759324 0.77940851 0.58408719 0.70479381
		 0.48324114 0.71623588 0.51809466 0.73332143 0.55480784 0.75530255 0.58674306 0.70563513
		 0.5143373 0.71642309 0.55111599 0.73314768 0.58690751 0.70591569 0.54188567 0.71642309
		 0.57758099 0.70591569 0.56410742 0.47453508 0.45053038 0.47453508 0.47005114 0.44688916
		 0.47113448 0.44688916 0.45074499 0.483751 0.44988462 0.483751 0.46679923 0.47453508
		 0.48972058 0.44688916 0.49195418 0.41905648 0.47104716 0.41891527 0.44981495 0.47453508
		 0.43284738 0.44688916 0.43284738 0.483751 0.43284738 0.47453508 0.50784862 0.44688916
		 0.51114327 0.41919586 0.49334601 0.40927938 0.47078237 0.4087182 0.44702294 0.41886881
		 0.43284738 0.47453508 0.41516441 0.44688916 0.41494885 0.483751 0.41580921 0.47453508
		 0.52405334 0.44688916 0.5282957 0.41924325 0.51351434 0.40984055 0.49752051 0.40853143
		 0.43284738 0.41891527 0.41587982 0.44688916 0.39455935 0.47453508 0.3956427 0.483751
		 0.39889461 0.47453508 0.53795481 0.44688916 0.54300737 0.41924325 0.53121501 0.41002733
		 0.52063048 0.4087182 0.41867089 0.41905648 0.39464763 0.44688916 0.37373966 0.47453508
		 0.37597328 0.47453508 0.54944432 0.44688916 0.55520016 0.41924325 0.54611063 0.41002733
		 0.53997564 0.40927938 0.3949115 0.41919586 0.37234786 0.44688916 0.35455152 0.47453508
		 0.35784525 0.41924325 0.55830342 0.40984055 0.36817333 0.41924325 0.3521795 0.44688916
		 0.33739907 0.47453508 0.3416405 0.41002733 0.34506428 0.41924325 0.33447886 0.44688916
		 0.32268649 0.47453508 0.32773903 0.41002733 0.32571912 0.41924325 0.31958324 0.44688916
		 0.31049368 0.47453508 0.31625047 0.41924325 0.30739135 0.2536962 0.41727722 0.2671366
		 0.41727722 0.2671366 0.48310712 0.2536962 0.48310712 0.2536962 0.38971725 0.2671366
		 0.38971725 0.27875337 0.41727722 0.27875337 0.48310712 0.26822039 0.54683089 0.25391153
		 0.54683089 0.23751932 0.41727722 0.23751932 0.48310712 0.25358704 0.3779797 0.2671366
		 0.38339832 0.27875337 0.38971725 0.23751932 0.38971725 0.28946006 0.41727722 0.28946006
		 0.48310712 0.28098765 0.54683089 0.27147186 0.5680722 0.25455704 0.5680722 0.23751932
		 0.54683089 0.22134244 0.41727722 0.22134244 0.48310712 0.28218785 0.3779797 0.23751932
		 0.37611681 0.28946006 0.38971725 0.22134244 0.38971725 0.29903531 0.41727722 0.29903531
		 0.48310712 0.29275447 0.54683089 0.28769031 0.5680722 0.23751932 0.5680722 0.22112736
		 0.54683089 0.20790228 0.48310712 0.20790228 0.41727722 0.29422063 0.37611681 0.23751932
		 0.35216579 0.24691713 0.35216579 0.22145185 0.3779797 0.29903531 0.38971725 0.20790228
		 0.38971725 0.30725801 0.41727722 0.30725801 0.48310712 0.30327675 0.54683089 0.30263773
		 0.5680722 0.22048184 0.5680722 0.20681848 0.54683089 0.19628552 0.48310712 0.19628552
		 0.41727722 0.30221197 0.35216579 0.30850211 0.35216579 0.30336037 0.37611681 0.22812176
		 0.35216579 0.23751932 0.33032104 0.24336627 0.3359845 0.20790228 0.38339832 0.30725801
		 0.38971701 0.19628552 0.38971725 0.31382176 0.41727722 0.31382176 0.48310712 0.31231079
		 0.54683089;
	setAttr ".uvst[0].uvsp[250:499]" 0.31600147 0.5680722 0.20356701 0.5680722
		 0.194051 0.54683089 0.18557882 0.48310712 0.18557882 0.41727722 0.31510279 0.3359845
		 0.32338378 0.33032104 0.31633574 0.35216579 0.31120908 0.37611681 0.23167261 0.3359845
		 0.23751932 0.32303956 0.24440967 0.33032104 0.19281526 0.3779797 0.31382176 0.38971701
		 0.18557882 0.38971725 0.31957811 0.54683089 0.32746911 0.5680722 0.1873488 0.5680722
		 0.18228464 0.54683089 0.1760038 0.48310712 0.1760038 0.41727722 0.31802604 0.33032104
		 0.329945 0.32303956 0.32534584 0.3359845 0.32306278 0.35216579 0.23062922 0.33032104
		 0.18079062 0.37611681 0.1760038 0.38971725 0.17240115 0.5680722 0.17176192 0.54683089
		 0.1677811 0.48310712 0.1677811 0.41727722 0.33268589 0.33032104 0.17168619 0.37611681
		 0.16642599 0.35216579 0.1726037 0.35216579 0.1677811 0.38971701 0.15903717 0.5680722
		 0.16272809 0.54683089 0.16121688 0.48310712 0.16121688 0.41727722 0.16386719 0.37611681
		 0.15873288 0.35216579 0.15148902 0.33032104 0.15965968 0.3359845 0.16121688 0.38971701
		 0.14757 0.5680722 0.15546054 0.54683089 0.15212639 0.35216579 0.14971161 0.3359845
		 0.14498332 0.32303956 0.1566591 0.33032104 0.14251326 0.33032104 0.049753353 0.66103047
		 0.053035926 0.63843805 0.067541324 0.63843805 0.067678832 0.6498009 0.041185953 0.66599798
		 0.04281377 0.63843805 0.051814139 0.62670046 0.067366645 0.63211912 0.08327315 0.63843805
		 0.086171068 0.66103047 0.06762401 0.66703999 0.05389908 0.68011105 0.034460068 0.66599798
		 0.034867022 0.63843805 0.039667774 0.62483758 0.040642418 0.73182786 0.045767434
		 0.72870207 0.081059992 0.62670046 0.097359516 0.66599798 0.097173691 0.63843805 0.081348948
		 0.68011081 0.067491151 0.68258673 0.055910621 0.68942666 0.049324099 0.71932405 0.027187858
		 0.63843805 0.027187858 0.66599798 0.030953575 0.62483758 0.034324415 0.73182786 0.025887093
		 0.60088652 0.032120548 0.60088652 0.037891299 0.79555172 0.048323441 0.79727614 0.096987866
		 0.62483758 0.097420834 0.73182786 0.090335377 0.72870207 0.10846991 0.66103047 0.11098225
		 0.63843805 0.085924856 0.71932405 0.079070747 0.68942666 0.067391731 0.68887311 0.057862695
		 0.69335985 0.052051064 0.70994622 0.05389908 0.75853723 0.023254901 0.62483758 0.027187858
		 0.73182786 0.020623637 0.63843805 0.020623637 0.66599798 0.01812431 0.60088652 0.030218642
		 0.79555172 0.010977532 0.57904184 0.019203017 0.58470523 0.029636085 0.81679296 0.04409967
		 0.81679296 0.086263984 0.60088652 0.096925616 0.60088652 0.11285628 0.62670046 0.097359516
		 0.79555172 0.08603356 0.79727614 0.10446727 0.72870207 0.12639353 0.6498009 0.12644184
		 0.63843805 0.081348948 0.75853723 0.082930304 0.70994622 0.076919839 0.69335985 0.054686971
		 0.70682043 0.055910621 0.73046601 0.066594549 0.80549675 0.06762401 0.77160829 0.011458815
		 0.60088652 0.022134384 0.79555172 0.020623637 0.73182786 0.0091090752 0.58470523
		 0.017901322 0.81679296 0.063206054 0.81679296 0.089767687 0.58470523 0.096925616
		 0.57904184 0.10758818 0.60088652 0.12651803 0.63211912 0.097173691 0.81679296 0.082412787
		 0.81679296 0.10860742 0.79727614 0.11318333 0.68011105 0.10875887 0.71932405 0.12645392
		 0.66703999 0.14381449 0.66103047 0.14070381 0.63843805 0.079070747 0.73046601 0.080096498
		 0.70682043 0.060239382 0.69429153 0.057564449 0.70682043 0.057862695 0.72028083 0.067491151
		 0.73730594 0.0018405833 0.57904184 0.014866821 0.79555172 0.0044449018 0.5717603
		 0.087928966 0.57904184 0.096925616 0.5717603 0.10408355 0.58470523 0.14195347 0.62670046
		 0.11184354 0.81679296 0.11318333 0.75853723 0.11531287 0.68946081 0.11157781 0.70994622
		 0.13972545 0.68011081 0.12651618 0.68263221 0.15246274 0.66599798 0.15092131 0.63843805
		 0.076919839 0.72028083 0.060239382 0.71934915 0.067391731 0.72476751 0.1059232 0.57904184
		 0.15410355 0.62483758 0.13077711 0.81679296 0.12747781 0.80549675 0.11531287 0.73043185
		 0.12645392 0.77160829 0.11727145 0.69349664 0.11420443 0.70682043 0.14769913 0.72870207
		 0.14414898 0.71932405 0.13771948 0.68946081 0.12647343 0.6890552 0.15297653 0.73182786
		 0.15934099 0.66599798 0.15895541 0.63843805 0.16131723 0.60088652 0.16775973 0.60088652
		 0.16290508 0.62483758 0.14964007 0.81679296 0.1452444 0.79727614 0.11727145 0.72014421
		 0.12651618 0.73726046 0.13972545 0.75853723 0.14145361 0.70994622 0.13567449 0.69349664
		 0.15575738 0.79555172 0.15946922 0.73182786 0.1666643 0.63843805 0.1666643 0.66599798
		 0.17413627 0.58470523 0.18256709 0.57904184 0.17578267 0.60088652 0.17066601 0.62483758
		 0.16409901 0.81679296 0.12647343 0.72458541 0.13771948 0.73043185 0.13874151 0.70682043
		 0.16358241 0.79555172 0.1666643 0.73182786 0.17322852 0.63843805 0.17322852 0.66599798
		 0.18477747 0.58470523 0.18267208 0.60088652 0.17592204 0.81679296 0.13567449 0.72014421
		 0.13580643 0.70682043 0.1332272 0.69453073 0.17171684 0.79555172 0.17322852 0.73182786
		 0.18920192 0.5717603 0.19230796 0.57904184 0.1332272 0.71910989 0.1789844 0.79555172
		 0.064477086 0.87579101 0.06325344 0.86674052 0.07171306 0.86674052 0.070777439 0.87895864
		 0.064477086 0.85768974 0.070777439 0.85452211 0.078301437 0.86674052 0.075623721
		 0.87579101 0.075623721 0.85768998 0.3475706 0.37213114 0.37521651 0.37373966 0.37521651
		 0.39455935 0.3475706 0.39377913 0.3475706 0.35217971 0.37521651 0.35455152 0.40286243
		 0.37530988 0.40286243 0.39570147 0.37521651 0.41494909 0.3475706 0.41479415 0.33835512
		 0.36730576 0.33835512 0.39143822 0.3475706 0.33447909 0.37521651 0.33739907 0.40286243
		 0.35730311 0.33835512 0.34506407 0.40286243 0.41579527 0.3475706 0.43284738 0.37521651
		 0.43284738 0.33835512 0.41432959 0.37521651 0.3226867 0.3475706 0.31958392 0.40286243
		 0.34150484 0.40286243 0.43290916 0.33835512 0.43284738;
	setAttr ".uvst[0].uvsp[500:749]" 0.3475706 0.45090038 0.37521651 0.45074546
		 0.40286243 0.32773951 0.37521651 0.31049389 0.3475706 0.30739135 0.40286243 0.45000032
		 0.33835512 0.45136517 0.3475706 0.47191542 0.37521651 0.47113496 0.40286243 0.31625023
		 0.40286243 0.47002605 0.33835512 0.47425634 0.3475706 0.49356341 0.37521651 0.49195462
		 0.40286243 0.49035656 0.33835512 0.49838877 0.3475706 0.51351458 0.37521651 0.51114351
		 0.40286243 0.50836265 0.33835512 0.52063072 0.3475706 0.53121525 0.37521651 0.52829593
		 0.40286243 0.52418274 0.37521651 0.54300761 0.3475706 0.54611087 0.40286243 0.53795505
		 0.37521651 0.5552004 0.3475706 0.55830365 0.40286243 0.5494445 0.558676 0.16302773
		 0.558676 0.17557362 0.54200947 0.18222332 0.54200947 0.16553636 0.58065706 0.1788404
		 0.58065706 0.16130793 0.558676 0.19494759 0.54200947 0.20386434 0.53150207 0.1901487
		 0.53150207 0.16755718 0.558676 0.14930093 0.54200947 0.14930093 0.58065706 0.20301884
		 0.58065706 0.14930093 0.60464787 0.18335591 0.60464787 0.16142128 0.558676 0.22915958
		 0.54200947 0.23496285 0.53150207 0.21531479 0.53150207 0.14930093 0.558676 0.13557322
		 0.54200947 0.13306552 0.58065706 0.23496285 0.60464787 0.21106128 0.60464787 0.14930093
		 0.58065706 0.13729395 0.62734342 0.18045056 0.62734342 0.16441397 0.558676 0.26075426
		 0.54200947 0.26338458 0.53150207 0.24129759 0.53150207 0.13104376 0.54200947 0.11637764
		 0.558676 0.12302733 0.58065706 0.26231053 0.60464787 0.24049389 0.62734342 0.20205441
		 0.62734342 0.14930093 0.60464787 0.1371806 0.58065706 0.11976055 0.64880884 0.1791721
		 0.64880884 0.16755068 0.53150207 0.26400802 0.53150207 0.10845225 0.54200947 0.094736613
		 0.558676 0.10365336 0.60464787 0.26374695 0.62734342 0.23387021 0.64880884 0.19581631
		 0.64880884 0.14930093 0.62734342 0.13418791 0.60464787 0.11524597 0.58065706 0.095582113
		 0.66910821 0.18856548 0.66910821 0.16809607 0.53150207 0.083286159 0.54200947 0.063638099
		 0.558676 0.069441371 0.62734342 0.26075795 0.64880884 0.2291345 0.66910821 0.21216044
		 0.66910821 0.14930093 0.64880884 0.13105027 0.62734342 0.11815039 0.60464787 0.087540589
		 0.58065706 0.063638099 0.69034415 0.19842993 0.69034415 0.16766961 0.53150207 0.057304297
		 0.54200947 0.035216369 0.558676 0.037846703 0.64880884 0.25821218 0.66910821 0.24033131
		 0.69023824 0.23057278 0.69034415 0.14930093 0.66910821 0.13050488 0.64880884 0.11942979
		 0.62734342 0.096546538 0.60464787 0.058107056 0.58065706 0.03629043 0.71461457 0.16789167
		 0.71461457 0.19856372 0.53150207 0.034593858 0.66910821 0.26097816 0.68992049 0.25308809
		 0.71419179 0.23053654 0.71461457 0.14930093 0.69034415 0.13093135 0.66910821 0.11003547
		 0.64880884 0.10278556 0.62734342 0.064731665 0.60464787 0.034854013 0.73553085 0.16985118
		 0.73573899 0.20121357 0.68960363 0.26525769 0.71292263 0.25303236 0.73494923 0.23331182
		 0.73546213 0.14930093 0.71461457 0.13070929 0.69034415 0.10017102 0.66910821 0.086440518
		 0.64880884 0.069466457 0.62734342 0.037842985 0.71165347 0.26725343 0.73202437 0.25607243
		 0.74648702 0.26015869 0.74753231 0.21862803 0.73553085 0.12874977 0.71461457 0.10003816
		 0.69023824 0.068028182 0.66910821 0.05826965 0.64880884 0.04038877 0.72545183 0.26764831
		 0.74113721 0.27811483 0.73573899 0.097387388 0.71419179 0.068064414 0.68992049 0.045512859
		 0.66910821 0.037623715 0.72990972 0.28027037 0.74422556 0.29660985 0.75207663 0.28028059
		 0.73494923 0.06528914 0.71292263 0.045568604 0.68960363 0.033343267 0.73202437 0.042528529
		 0.74648702 0.038442269 0.74753231 0.079972923 0.71165347 0.031347521 0.72545183 0.030952645
		 0.74113721 0.020487057 0.72990972 0.018330574 0.74422556 0.0019920296 0.75207663
		 0.018320354 0.098332301 0.87601358 0.092199191 0.87911034 0.091284938 0.86716557
		 0.099534579 0.86716557 0.087489493 0.87601358 0.084864728 0.86716557 0.092199191
		 0.85522062 0.098332301 0.85831732 0.087489493 0.85831732 0.63986051 0.8641724 0.62798733
		 0.86814159 0.61768341 0.84232765 0.62706095 0.84232765 0.61189407 0.82614636 0.61440825
		 0.82048297 0.65832394 0.86679369 0.63798088 0.84232765 0.60905093 0.82048297 0.61179185
		 0.81320143 0.62488031 0.82614636 0.58451223 0.86814159 0.57265252 0.8641724 0.58545274
		 0.84232765 0.59474486 0.84232765 0.55420512 0.86679369 0.57463104 0.84232765 0.59811872
		 0.82048297 0.60055393 0.82614636 0.58774137 0.82614636 0.60077763 0.81320143 0.60338145
		 0.82048297 0.52973211 0.86814183 0.51788586 0.8641724 0.53068542 0.84232765 0.53989482
		 0.84232765 0.4994531 0.86679369 0.51996058 0.84232765 0.54336506 0.82048297 0.5457232
		 0.82614636 0.53308064 0.82614636 0.54853565 0.82048297 0.54606509 0.81320143 0.47527835
		 0.8641724 0.46336892 0.86814159 0.45287454 0.84232765 0.46247837 0.84232765 0.44713724
		 0.82614636 0.44986373 0.82048297 0.49378359 0.86679369 0.47366261 0.84232765 0.44425231
		 0.82048297 0.44735837 0.81320143 0.46058854 0.82614636 0.033061281 0.28007805 0.042507391
		 0.26780021 0.06054483 0.28324357 0.056758903 0.29519248 0.030369159 0.24845527 0.021100739
		 0.25785679 0.051275015 0.25904027 0.067692071 0.27393541 0.082260415 0.29543614 0.084301688
		 0.30605364 0.028103737 0.29355189 0.064460598 0.30621856 0.022223812 0.22534531 0.014885868
		 0.2303082 0.087171964 0.28612801 0.10543308 0.30502975 0.10779723 0.31551507 0.016164798
		 0.19860785 0.0084250122 0.19921201 0.10795866 0.29572162 0.12889448 0.30917662 0.13001524
		 0.31935164 0.012402799 0.17484821 0.0034869807 0.17314212 0.12900458 0.29986849 0.15147693
		 0.30502975 0.15372494 0.3133384 0.011148955 0.16067195 0.0018408155 0.16067195 0.14926238
		 0.29572162 0.17392814 0.29543614 0.17895979 0.3022173 0.012402799 0.14649594 0.0034869807
		 0.14820203 0.16940194 0.28612801;
	setAttr ".uvst[0].uvsp[750:999]" 0.19699582 0.28324357 0.20575278 0.29072994
		 0.0084250122 0.12213213 0.016164798 0.12273652 0.19009434 0.27393541 0.21793629 0.26780021
		 0.22945644 0.27537927 0.014885868 0.091035932 0.022223812 0.095998816 0.20922999
		 0.25904027 0.23400587 0.24845527 0.24542333 0.25266883 0.021100739 0.063487582 0.030369159
		 0.072888859 0.22469796 0.24133962 0.24602912 0.22621357 0.25590566 0.22668627 0.033061046
		 0.041265856 0.042507391 0.053543691 0.25482881 0.20208113 0.26315323 0.20152017 0.056758903
		 0.026151426 0.06054483 0.038100816 0.26021999 0.17918974 0.26737654 0.17892912 0.028103737
		 0.027792249 0.064460598 0.01512558 0.084301688 0.015290499 0.082260415 0.025907997
		 0.067692071 0.047408722 0.051275015 0.062303882 0.26878417 0.16067195 0.26201737
		 0.16067195 0.10779723 0.0058288234 0.10543308 0.016314387 0.087171964 0.035215903
		 0.26737654 0.14241502 0.26021999 0.14215416 0.13001524 0.0019924941 0.12889448 0.012167268
		 0.10795866 0.025622293 0.26315323 0.1198242 0.25482881 0.11926301 0.15372494 0.0080057476
		 0.15147693 0.016314387 0.12900458 0.021475639 0.25590566 0.094657637 0.24602912 0.095130555
		 0.17895979 0.019126829 0.17392814 0.025907997 0.14926238 0.025622293 0.24542333 0.068675309
		 0.23400587 0.072888859 0.20575278 0.030614447 0.19699582 0.038100816 0.16940194 0.035215903
		 0.22945644 0.045964874 0.21793629 0.053543691 0.19009434 0.047408722 0.22469796 0.080004513
		 0.20922999 0.062303882 0.51420051 0.52801931 0.52664608 0.51529455 0.5391652 0.52676219
		 0.52923781 0.5419203 0.51729751 0.50193083 0.50329989 0.51181382 0.55375934 0.53614026
		 0.54693729 0.55340952 0.51019019 0.48698339 0.49541399 0.49368581 0.54909265 0.51160389
		 0.56058115 0.51887119 0.5693323 0.54323637 0.56582421 0.56237853 0.50439483 0.47076494
		 0.48942092 0.4740164 0.57284039 0.52409399 0.5850997 0.54621375 0.58494657 0.56623322
		 0.58525276 0.52619427 0.60027635 0.54323637 0.60335267 0.56237853 0.59720004 0.52409399
		 0.61536479 0.53614026 0.62165165 0.55340952 0.60907745 0.51887119 0.63086712 0.52676219
		 0.64045328 0.5419203 0.62128139 0.51160389 0.64504731 0.51583737 0.65789843 0.52815497
		 0.63219666 0.50351983 0.6561684 0.50410193 0.67212927 0.5123567 0.66459501 0.48963928
		 0.68325311 0.4943499 0.67069143 0.47053218 0.69137734 0.47395831 0.67438978 0.45132568
		 0.69634533 0.45386451 0.6980015 0.43675062 0.67562276 0.43656501 0.69634533 0.4196595
		 0.67438978 0.42189518 0.69137734 0.39963374 0.67069143 0.40296137 0.68325311 0.37930322
		 0.66459501 0.38409841 0.67212927 0.3612974 0.65616888 0.36963901 0.65789843 0.34547728
		 0.64504731 0.35781646 0.63086712 0.34686306 0.64045328 0.3317045 0.61536479 0.33748454
		 0.62165165 0.32021549 0.62128139 0.36202118 0.63219666 0.37015605 0.60027635 0.33038887
		 0.60335267 0.31124625 0.60907745 0.35475361 0.5850997 0.32741106 0.58494657 0.30739179
		 0.59720004 0.34953102 0.5693323 0.33038887 0.56582421 0.31124625 0.58525276 0.34743077
		 0.55375934 0.33748454 0.54693729 0.32021549 0.57284039 0.34953102 0.52923781 0.3317045
		 0.5391652 0.34686306 0.56058115 0.35475361 0.54909265 0.36202118 0.51420051 0.34560597
		 0.52664608 0.35833025 0.51729751 0.37169421 0.50329989 0.36181119 0.51019019 0.38664186
		 0.49541399 0.3799392 0.50439483 0.40286011 0.48942092 0.39960864 0.27580923 0.12235373
		 0.27593884 0.096991584 0.29000613 0.090762772 0.30547827 0.12297159 0.31611621 0.089922853
		 0.34167603 0.12752427 0.27576625 0.15284738 0.31063581 0.15284738 0.27888575 0.059892822
		 0.29755965 0.053563666 0.35275275 0.097112365 0.37010589 0.13090904 0.35019583 0.15284738
		 0.27580923 0.18334198 0.30547827 0.1827241 0.28678396 0.034032673 0.31004816 0.031968173
		 0.34013137 0.061043069 0.39396077 0.099317163 0.39568335 0.13146001 0.37589034 0.15284738
		 0.34167603 0.17817143 0.29000613 0.21493292 0.27593884 0.20870411 0.29983971 0.016516935
		 0.33105668 0.021101205 0.34854269 0.03228407 0.39254922 0.062789813 0.43378556 0.083520301
		 0.42332277 0.12751126 0.39625755 0.15284738 0.37010589 0.17478666 0.31611621 0.21577285
		 0.27661523 0.036474396 0.28391391 0.018610239 0.36273822 0.01263415 0.39290807 0.028251698
		 0.44076091 0.039266396 0.46886721 0.071121216 0.45514739 0.12441172 0.41983485 0.15284738
		 0.39568335 0.17423569 0.35275275 0.2085824 0.29755965 0.2521311 0.27888575 0.24580288
		 0.39371571 0.0024779583 0.43378556 0.013140519 0.47736308 0.021867728 0.49584371
		 0.083520301 0.49327978 0.12751126 0.4505738 0.15284738 0.42332277 0.17818443 0.39396077
		 0.20637853 0.34013137 0.24465263 0.31004816 0.27372754 0.28678396 0.27166304 0.42282057
		 0.0019920296 0.46626428 0.0055384738 0.49495035 0.041989639 0.5118143 0.10093476
		 0.52201647 0.13229714 0.49242547 0.15284738 0.45514739 0.18128398 0.43378556 0.2221754
		 0.39254922 0.24290588 0.34854269 0.27341163 0.33105668 0.28459451 0.29983971 0.28917876
		 0.52541751 0.15284738 0.49327978 0.17818443 0.46886721 0.23457448 0.44076091 0.26642931
		 0.39290807 0.27744401 0.36273822 0.29306063 0.27661523 0.26922131 0.28391391 0.28708547
		 0.52201647 0.17339855 0.49584371 0.2221754 0.47736308 0.28382796 0.43378556 0.29255518
		 0.39371571 0.30321774 0.5118143 0.20476094 0.49495035 0.26370606 0.46626428 0.3001563
		 0.42282057 0.30370274 0.80096823 0.95019507 0.79898179 0.93514383 0.81328601 0.93514383
		 0.81255805 0.94942456 0.79192603 0.92159426 0.80822021 0.92483616 0.83046633 0.93514383
		 0.82937557 0.95141989 0.80511206 0.9681226 0.79632056 0.97021919 0.82810825 0.92159426
		 0.84386349 0.93514383 0.84386349 0.94909918 0.81519997 0.97176266 0.79751211 0.98603326
		 0.79399753 0.98311001 0.84386349 0.9217034 0.8551572 0.93514383 0.8551572 0.94932514
		 0.84386349 0.96682161 0.83178544 0.96988308 0.80614108 0.98486304;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.84386349 0.90552652 0.8305915 0.90552652
		 0.8551572 0.9217034 0.86602789 0.93514383 0.86602789 0.94909918 0.8551572 0.96772563
		 0.84386349 0.98152608 0.83044869 0.98175627 0.79632306 0.99795222 0.80610484 0.99533534
		 0.8551572 0.90552652 0.80991119 0.91492432 0.81378609 0.90552652 0.84386349 0.88934964
		 0.82810825 0.88945907 0.86602789 0.9217034 0.87855703 0.93514383 0.88006264 0.95143569
		 0.86602789 0.96682161 0.8551572 0.98310792 0.86602789 0.90552652 0.8551572 0.88934964
		 0.79864752 0.9113735 0.79753327 0.90552652 0.80991119 0.89612895 0.83046633 0.87590951
		 0.84386349 0.87590951 0.88057274 0.92179656 0.89482588 0.93514383 0.896882 0.94945759
		 0.87787646 0.96988308 0.86602789 0.98152608 0.8551572 0.98823524 0.84386349 0.98642743
		 0.87820393 0.90552652 0.86602789 0.88934964 0.8551572 0.87590951 0.78900999 0.91241688
		 0.78591788 0.90552652 0.79864752 0.89967984 0.81328601 0.87590951 0.80822021 0.88621712
		 0.82934648 0.85960209 0.84386349 0.86195415 0.89908588 0.9252575 0.90842956 0.93508554
		 0.9087069 0.950638 0.90572488 0.96825457 0.89550877 0.97186166 0.87916374 0.9817428
		 0.86602789 0.98642743 0.89341271 0.90552652 0.8973577 0.91618866 0.88057274 0.88925678
		 0.86602789 0.87590951 0.8551572 0.86172789 0.78900999 0.8986364 0.81255805 0.86156344
		 0.79898179 0.87590951 0.79192603 0.88945907 0.8317253 0.84117025 0.84386349 0.84423167
		 0.91378874 0.92139262 0.91481584 0.97033232 0.91447067 0.98621231 0.90547031 0.98497194
		 0.8973577 0.89486468 0.90897822 0.90552652 0.90848625 0.91268444 0.87855703 0.87590951
		 0.86602789 0.86195415 0.8551572 0.84332764 0.80511206 0.84266984 0.81501925 0.83909506
		 0.80099332 0.8608225 0.83041614 0.82932395 0.84386349 0.82952744 0.91792518 0.98325008
		 0.91623646 0.99800819 0.90584522 0.99534929 0.90848625 0.89836884 0.92222279 0.90552652
		 0.91896528 0.9145239 0.88000828 0.85967547 0.89482588 0.87590951 0.89908588 0.88579577
		 0.86602789 0.84423167 0.8551572 0.82794517 0.79647803 0.84061092 0.79748893 0.82466632
		 0.80594343 0.82597494 0.9202475 0.99147511 0.91896528 0.89652944 0.87776214 0.84117025
		 0.896882 0.86171675 0.90842956 0.87593508 0.91378874 0.88959587 0.86602789 0.82952744
		 0.84386349 0.82462591 0.8551572 0.8228178 0.79412293 0.82766688 0.7962302 0.81299055
		 0.80578059 0.81569058 0.87910289 0.82926077 0.8951664 0.83955449 0.90572488 0.84328258
		 0.90875566 0.86049962 0.86602789 0.82462591 0.90509868 0.82648039 0.91443306 0.82549691
		 0.9151206 0.84113538 0.90523666 0.81575561 0.91608596 0.81325024 0.91817975 0.82831633
		 0.92059219 0.81988597 0.22913496 0.81687707 0.23866306 0.81504112 0.23803313 0.81939125
		 0.23000833 0.82110083 0.2403169 0.83210248 0.2327929 0.83376843 0.21960592 0.81871301
		 0.22198261 0.82280856 0.24044512 0.84191865 0.23559883 0.84643787 0.2252689 0.83543527
		 0.22929849 0.84438825 0.20440763 0.82231748 0.21393621 0.82415342 0.21155906 0.82824898
		 0.20353428 0.82654035 0.20827277 0.84087569 0.20074877 0.83920884 0.19487907 0.82048154
		 0.19550902 0.82483166 0.20424412 0.84982777 0.19794284 0.85187787 0.19322477 0.83754247
		 0.19309703 0.84735906 0.17621982 0.82229888 0.18542087 0.82048154 0.18494517 0.82484561
		 0.17720561 0.82652175 0.1872675 0.83756155 0.17997345 0.8391903 0.16701829 0.82411629
		 0.16946606 0.8281979 0.18742731 0.84736794 0.18271761 0.85185927 0.17267987 0.84081948
		 0.17658496 0.84978127 0.15214776 0.82229847 0.16134882 0.82411581 0.15890151 0.82819647
		 0.15116103 0.82652038 0.1556877 0.84081858 0.14839318 0.83918983 0.14294577 0.82048112
		 0.14342149 0.82484424 0.15178262 0.8497799 0.14564951 0.85185832 0.14109962 0.83756012
		 0.1409398 0.84736699 0.22555716 0.79874343 0.20883256 0.79517192 0.20883256 0.75881457
		 0.22549932 0.7536208 0.20883256 0.71975261 0.22549932 0.70622927 0.24771175 0.8040334
		 0.24748017 0.76492912 0.19832517 0.76651651 0.19832517 0.73897374 0.20883256 0.70165056
		 0.22549932 0.69187069 0.24748017 0.72128099 0.27181795 0.80889219 0.2714707 0.78266507
		 0.19832517 0.71547818 0.20883256 0.68960506 0.22549932 0.68788475 0.24748017 0.70165056
		 0.2714707 0.74710912 0.29439762 0.81117225 0.29416627 0.79675514 0.19832517 0.69326019
		 0.20883256 0.66871381 0.22549932 0.6716131 0.24748017 0.69256985 0.2714707 0.71562636
		 0.29416627 0.76591349 0.31568953 0.81135249 0.31563145 0.8028878 0.19832517 0.66955048
		 0.20883256 0.64129275 0.22549932 0.64427477 0.24748017 0.68057352 0.2714707 0.69230735
		 0.29416627 0.71843415 0.31563145 0.77355969 0.33593175 0.80991328 0.33593175 0.79675514
		 0.19832517 0.6443156 0.20883256 0.60965675 0.22549932 0.60708821 0.24748017 0.65725964
		 0.2714707 0.6812439 0.29416627 0.67574489 0.31563145 0.71704656 0.33593175 0.76591349
		 0.35642672 0.80861902 0.3563208 0.78755498 0.19832517 0.61752266 0.20883256 0.58247584
		 0.22549932 0.57528955 0.24748017 0.61422616 0.2714707 0.66316974 0.29416627 0.65927255
		 0.31563145 0.66277254 0.33593175 0.71843415 0.3563208 0.754444 0.37847656 0.80923319
		 0.37805381 0.78448892 0.19832517 0.59381896 0.24748017 0.57624006 0.2714707 0.61882013
		 0.29416627 0.64492792 0.31563145 0.64016384 0.33593175 0.67328185 0.3563208 0.72051632
		 0.37805381 0.75062066 0.39227441 0.804766 0.39673281 0.78884041 0.2714707 0.57852662
		 0.29416627 0.60862124 0.33593175 0.64942068 0.3563208 0.68984383 0.37805381 0.72120994
		 0.3975049 0.75762343 0.29416627 0.57534719 0.31563145 0.62607473 0.31563145 0.59736031
		 0.33593175 0.63014984 0.3563208 0.66649878 0.37805381 0.69502968 0.39776227 0.7259419
		 0.31563145 0.5717603 0.33593175 0.59876931 0.3563208 0.6415078 0.37805381 0.67085266;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.39776227 0.69496465 0.33593175 0.57282555
		 0.3563208 0.60589755 0.37805381 0.64450097 0.39776227 0.66585958 0.35642672 0.57799143
		 0.37805381 0.61179554 0.3975049 0.63838506 0.37847656 0.58670795 0.39673281 0.61229962
		 0.4110491 0.62241584 0.41207859 0.65489459 0.39227441 0.59618914 0.40796071 0.6032477
		 0.65918893 0.65218872 0.65619951 0.63858855 0.66738236 0.64045143 0.66964245 0.65218872
		 0.64723098 0.61463749 0.65342981 0.61463749 0.68079722 0.64587003 0.68079722 0.65218872
		 0.63775837 0.59279275 0.64454699 0.5984562 0.68079722 0.67974895 0.66964245 0.67974895
		 0.69209087 0.65218896 0.69209087 0.67974895 0.68079722 0.74557883 0.66964245 0.74557883
		 0.70296156 0.65218896 0.70296156 0.67974895 0.69209087 0.74557883 0.67962772 0.80930263
		 0.66736847 0.80930263 0.71376908 0.65218896 0.71376908 0.67974895 0.70296156 0.74557883
		 0.69204003 0.80930263 0.70296156 0.64587003 0.71609747 0.64045143 0.71376908 0.74557883
		 0.7039873 0.80930263 0.72819501 0.63858855 0.72487342 0.65218896 0.71586472 0.80930263
		 0.73131824 0.61463749 0.73815984 0.61463749 0.7411381 0.5984562 0.74855572 0.59279275
		 0.72495472 0.85330033 0.72495472 0.83489448 0.75260156 0.83387059 0.75260156 0.85335237
		 0.72495472 0.81659645 0.75260156 0.81450033 0.7802484 0.83313102 0.7802484 0.85338956
		 0.72495472 0.87242347 0.75260156 0.87359226 0.7802484 0.8129915 0.7802484 0.87443405
		 0.72495472 0.89131057 0.75260156 0.89358503 0.7802484 0.89522213 0.60456216 0.79690474
		 0.60461974 0.75178117 0.62128812 0.75697678 0.62128812 0.79333317 0.58240825 0.80219513
		 0.58263868 0.76309037 0.60461974 0.70439059 0.62128812 0.71791297 0.55830133 0.80705255
		 0.55864882 0.78082728 0.58263868 0.71944225 0.60461974 0.69003195 0.62128812 0.69981188
		 0.63179457 0.73713452 0.63179457 0.76467735 0.5357219 0.80933446 0.53595418 0.79491639
		 0.55864882 0.74526989 0.58263868 0.69981188 0.60461974 0.68604606 0.62128812 0.68776679
		 0.63179457 0.71363902 0.51443022 0.8095147 0.51448786 0.80104858 0.53595418 0.76407528
		 0.55864882 0.71378767 0.58263868 0.69073063 0.60461974 0.66977346 0.62128812 0.66687465
		 0.63179457 0.69142193 0.49418846 0.80807459 0.49418846 0.79491639 0.51448786 0.7717219
		 0.53595418 0.71659547 0.55864882 0.69046867 0.58263868 0.67873389 0.60461974 0.64243507
		 0.62128812 0.63945448 0.63179457 0.66771084 0.47369212 0.80678123 0.47379804 0.7857163
		 0.49418846 0.76407528 0.51448786 0.71520734 0.53595418 0.67390621 0.55864882 0.67940474
		 0.58263868 0.65542042 0.60461974 0.60524994 0.62128812 0.60781801 0.63179457 0.64247596
		 0.45164227 0.80739444 0.45206597 0.78265017 0.47379804 0.75260437 0.49418846 0.71659547
		 0.51448786 0.66093385 0.53595418 0.65743476 0.55864882 0.66133147 0.58263868 0.61238742
		 0.60461974 0.57344991 0.62128812 0.58063757 0.63179457 0.61568391 0.43784487 0.80292726
		 0.43338698 0.78700215 0.45206597 0.74878198 0.47379804 0.71867669 0.49418846 0.67144215
		 0.51448786 0.63832468 0.53595418 0.64308918 0.55864882 0.61698097 0.58263868 0.57440132
		 0.63179457 0.59198028 0.43261582 0.7557838 0.45206597 0.71937168 0.47379804 0.68800461
		 0.49418846 0.64758241 0.53595418 0.60678297 0.55864882 0.57668698 0.43235752 0.72410274
		 0.45206597 0.69319099 0.47379804 0.66465962 0.49418846 0.62831062 0.51448786 0.62423551
		 0.51448786 0.59552205 0.53595418 0.5735094 0.43235752 0.6931259 0.45206597 0.66901344
		 0.47379804 0.63967001 0.49418846 0.59693062 0.51448786 0.56992114 0.43235752 0.66402036
		 0.45206597 0.64266181 0.47379804 0.6040588 0.49418846 0.57098591 0.43261582 0.63654631
		 0.45206597 0.60995686 0.47369212 0.57615179 0.41804165 0.6530568 0.41907111 0.62057668
		 0.43338698 0.6104604 0.45164227 0.58486879 0.42215949 0.60140896 0.43784487 0.59435135
		 0.77639025 0.74990618 0.78684378 0.74990618 0.78455114 0.76164281 0.7733776 0.76350665
		 0.79799855 0.74990618 0.79799855 0.75622606 0.77042741 0.78745747 0.76433933 0.78745747
		 0.78684378 0.72234672 0.79799855 0.72234672 0.76149905 0.80363899 0.75482053 0.80930287
		 0.78684378 0.65651679 0.79799855 0.65651679 0.8092922 0.72234672 0.8092922 0.74990618
		 0.78456974 0.59279233 0.79682899 0.59279233 0.8092922 0.65651679 0.82016289 0.72234672
		 0.82016289 0.74990618 0.80924129 0.59279233 0.82016289 0.65651679 0.83097035 0.72234672
		 0.83097035 0.74990618 0.82118863 0.59279233 0.83097035 0.65651679 0.82016289 0.75622606
		 0.83323789 0.76164281 0.83306599 0.59279233 0.84207475 0.74990618 0.84535867 0.76350665
		 0.85521013 0.78745747 0.84813911 0.78745747 0.86553079 0.80930287 0.85788369 0.80363899
		 0.71928549 0.85330033 0.69163954 0.85335124 0.69163954 0.83386898 0.71928549 0.8348943
		 0.71928549 0.87242275 0.69163954 0.87359202 0.66399342 0.85338813 0.66399342 0.83313036
		 0.69163954 0.81449968 0.71928549 0.81659532 0.71928549 0.89130962 0.69163954 0.89358366
		 0.66399342 0.87443405 0.66399342 0.81299078 0.66399342 0.89522076 0.43858284 0.86135161
		 0.41869482 0.85873032 0.40876094 0.83688563 0.42038581 0.83688563 0.40240064 0.86269951
		 0.39713603 0.83688563 0.3994846 0.81504089 0.40912211 0.82070434 0.39465714 0.82070434
		 0.3528057 0.81504112 0.36909989 0.81901217 0.359166 0.84085572 0.34754109 0.84085572
		 0.3889879 0.81639016 0.37079087 0.84085572 0.34988967 0.86270118 0.3450622 0.85703725
		 0.35952717 0.85703725 0.32880473 0.86269951 0.3141019 0.85873032 0.32420886 0.83688563
		 0.33604348 0.83688563 0.29558876 0.86135161 0.31237373 0.83688563 0.33398131 0.81504089
		 0.33939296 0.82070434 0.32350224 0.82070434 0.24611484 0.81639016 0.26462796 0.81901217
		 0.27473491 0.84085572 0.26289982 0.84085572 0.27933082 0.81504112 0.28656957 0.84085572;
	setAttr ".uvst[0].uvsp[1500:1552]" 0.28450739 0.86270118 0.27402833 0.85703725
		 0.28991905 0.85703725 0.03522148 0.82048112 0.048682079 0.8210929 0.047750637 0.82544303
		 0.03522148 0.82487351 0.047439847 0.83815384 0.03522148 0.83759868 0.021761343 0.8210929
		 0.022692785 0.82544303 0.04427202 0.84797043 0.03522148 0.85082287 0.023003574 0.83815384
		 0.026170937 0.84797043 0.067675576 0.82048017 0.081000991 0.82108593 0.079965957
		 0.82544911 0.067675576 0.82488978 0.079620324 0.83816499 0.067675576 0.8376224 0.054352023
		 0.82108593 0.055387061 0.82544911 0.076524504 0.84797275 0.067675576 0.85083443 0.055730835
		 0.83816499 0.058828514 0.84797275 0.0018410478 0.85451007 0.014369278 0.8550787 0.014369278
		 0.86769235 0.0021513733 0.86713678 0.026899368 0.85451007 0.026589042 0.86713678
		 0.014369278 0.87980437 0.0053196666 0.8760879 0.023420747 0.8760879 0.032637369 0.85452211
		 0.04492728 0.85508096 0.04492728 0.86768681 0.03298207 0.86714375 0.057216726 0.85452211
		 0.056872025 0.86714375 0.04492728 0.87981272 0.036078822 0.87610555 0.053775273 0.87610555
		 0.13526939 0.84608483 0.11380398 0.85153222 0.11380398 0.82865363 0.13526939 0.82048112
		 0.1081345 0.82592946 0.1081345 0.85153222 0.086670011 0.84335971 0.086670011 0.82048112;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1074 ".vt";
	setAttr ".vt[0:165]"  -0.5420047 0.46020234 -0.56199169 0.4722997 0.46020234 -0.48472133
		 -0.47123903 -0.48296782 -0.48986638 0.48382583 -0.48296782 -0.46701607 -0.51271755 -0.35053942 -0.60074329
		 0.5739345 -0.35082072 -0.45119616 -0.38266492 -0.45518616 -0.38756043 0.38546523 -0.4551861 -0.38756046
		 -0.34827816 -0.18630211 -0.35273409 0.35052103 -0.18630207 -0.35335875 -0.22723329 -0.24478374 -0.22897422
		 0.22553338 -0.24478377 -0.23334655 -0.20705913 -0.87479997 -0.20834759 0.20470212 -0.87479991 -0.21271995
		 -0.21952079 -1.074962378 -0.22934446 0.2187348 -1.074962378 -0.23005395 0.61588317 0.50922006 -0.0091354623
		 -0.58141744 0.50981057 -0.057488315 -0.61234409 -0.35213098 0.010251521 -0.61505789 -0.4925178 0.030160761
		 -0.52643478 -0.45677775 0.0082888268 -0.48718643 -0.18630211 0.0048100962 -0.34222597 -0.24478365 0.011088
		 -0.31806591 -0.87479997 0.012134316 -0.30999738 -1.065902233 0.012665413 0.28261915 -1.065902233 0.01333135
		 0.28953055 -0.89895684 0.034666065 0.31230789 -0.23639721 0.033996422 0.53748709 -0.18630208 0.0073876977
		 0.58816493 -0.4551861 0.003010452 0.66823024 -0.48296782 0.0020186256 0.63275754 -0.35082072 0.024045913
		 0.51481658 0.50638866 -0.31774315 -0.57954538 0.506473 -0.30982959 -0.52528054 -0.34935966 -0.25383598
		 -0.55962485 -0.48433211 -0.24783689 -0.47867623 -0.45541349 -0.20340291 -0.43963602 -0.18630208 -0.18577158
		 -0.2959244 -0.24478365 -0.12058274 -0.27197245 -0.87479991 -0.10971794 -0.26590297 -1.065902233 -0.12659273
		 0.25814182 -1.065902233 -0.12816375 0.26336887 -0.89895684 -0.1372136 0.28272524 -0.23639722 -0.14416707
		 0.47382054 -0.18630207 -0.18886384 0.51915306 -0.4551861 -0.20445859 0.61244708 -0.48296782 -0.23022367
		 0.63147449 -0.35082072 -0.13117808 -0.0080409795 0.48688945 -0.64044356 0.026385734 -0.35082072 -0.72002816
		 0.00024517527 -0.48296782 -0.68085289 -0.0046680332 -0.4551861 -0.58610713 -0.0042413883 -0.18630211 -0.5385676
		 -0.0027530442 -0.24478365 -0.34385958 -0.0025049867 -0.87480003 -0.31140825 -0.0025049862 -1.039552331 -0.28647363
		 -0.0025049825 -1.049795151 -0.12218948 -0.0025049795 -1.049795151 0.012134315 0.0015264277 0.67470747 -0.013204962
		 -0.013714326 0.60770559 -0.34714615 0.26710218 0.48563787 -0.60804951 0.23846167 -0.35082072 -0.54433817
		 0.23826131 -0.48296782 -0.59752887 0.191783 -0.4551861 -0.51928747 0.17425452 -0.18630208 -0.47620612
		 0.11310713 -0.24478365 -0.3082476 0.1029159 -0.87479991 -0.28025451 0.11394127 -1.065902233 -0.28007743
		 0.11834393 -1.072457671 -0.1321702 0.12108915 -1.072457671 0.011681673 0.2906985 0.59983259 -0.047483522
		 0.39873248 0.58967805 -0.54615206 -0.31275079 0.48563787 -0.54987746 -0.062822834 -0.35082072 -0.6567722
		 -0.22205739 -0.48296782 -0.61618537 -0.2080995 -0.4551861 -0.51928747 -0.18907975 -0.18630208 -0.47620612
		 -0.12273004 -0.24478367 -0.3082476 -0.11167175 -0.87480015 -0.28025451 -0.12282081 -1.065902114 -0.27977049
		 -0.12802182 -1.072457671 -0.13252765 -0.13404363 -1.072457671 0.012665416 -0.26110959 0.60337543 -0.032346111
		 -0.47564638 0.59018433 -0.392012 -0.56074065 0.28587595 -0.6080094 -0.5200178 0.28896195 -0.27896014
		 -0.62662226 0.28947625 0.011923535 0.6201902 0.28947628 0.0014733118 0.54424274 0.28896192 -0.30442232
		 0.56079537 0.28587595 -0.47309333 0.2519176 0.28536162 -0.50117344 0.016860649 0.28536162 -0.69748127
		 -0.29728848 0.28536147 -0.56778342 -0.57403469 0.087771915 -0.60985351 -0.52129138 0.089178957 -0.27373663
		 -0.65792996 0.087771915 -0.064890914 0.71970803 0.087490506 0.0020534941 0.61246896 0.087490506 -0.13540134
		 0.59109598 0.087490506 -0.43883181 0.32696807 0.08749038 -0.47133344 0.148507 0.087490506 -0.69357091
		 -0.39024985 0.087490506 -0.54190922 -0.56206989 -0.12557445 -0.58702767 -0.55689663 -0.11713224 -0.14166366
		 -0.58653909 -0.12557445 0.028494462 0.70006526 -0.12726291 0.031861167 0.56975877 -0.12726291 -0.20953661
		 0.55819321 -0.12726301 -0.46574715 0.14657548 -0.12726291 -0.54996675 0.0048792134 -0.12726291 -0.71356481
		 -0.2616193 -0.12726291 -0.58149505 -0.51271755 -0.35053933 0.7823475 -0.062822789 -0.35082072 0.83837646
		 -0.22205736 -0.48296782 0.79778957 -0.47123897 -0.48296782 0.67147052 -0.54200476 0.46020234 0.74359584
		 -0.31275076 0.48563784 0.73148155 -0.29728845 0.28536162 0.74938756 -0.56074065 0.28587595 0.7896136
		 -0.20809945 -0.4551861 0.70089167 -0.38266495 -0.4551861 0.56916469 -0.18907972 -0.18630211 0.65781033
		 -0.34827819 -0.18630208 0.5343383 -0.12273002 -0.24478368 0.48985183 -0.22723329 -0.24478365 0.41057849
		 -0.11167172 -0.87480015 0.46185875 -0.20705913 -0.87479997 0.38995188 -0.12266216 -1.065902233 0.46150532
		 -0.21957107 -1.074962258 0.41098487 -0.26110959 0.60337543 0.21395034 -0.58141738 0.50981057 0.23909254
		 -0.47564638 0.59018439 0.57361621 -0.5795455 0.506473 0.49143377 -0.52001774 0.28896192 0.46056435
		 -0.62662226 0.28947628 0.16968067 -0.55962485 -0.4843322 0.42944109 -0.61505789 -0.49251783 0.15144344
		 -0.61234409 -0.35213098 0.17135271 -0.52528048 -0.34935978 0.43544024 -0.52643478 -0.45677775 0.17331539
		 -0.47867629 -0.45541349 0.38500708 -0.48718646 -0.18630208 0.17679411 -0.43963605 -0.18630211 0.36737579
		 -0.342226 -0.24478365 0.17051621 -0.2959244 -0.24478365 0.30218694 -0.31806591 -0.87479991 0.16946988
		 -0.27197245 -0.87479997 0.29132211 -0.30999741 -1.065902233 0.16893876 -0.26602545 -1.065902233 0.30802321
		 -0.12788126 -1.072457671 0.31397966 -0.13404362 -1.072457671 0.16893876 0.26336887 -0.89895684 0.32020083
		 0.28953055 -0.89895684 0.14310326 0.28261918 -1.065902233 0.16795838 0.25790471 -1.065902233 0.31017765
		 0.28272519 -0.23639721 0.32715431 0.31230789 -0.23639722 0.14377289 0.47382051 -0.18630208 0.37060469
		 0.53748715 -0.18630207 0.17372516 0.51915312 -0.4551861 0.38606277 0.58816499 -0.4551861 0.17859371
		 0.61244714 -0.48296788 0.41182783 0.66823024 -0.48296782 0.17958556 0.6327576 -0.35082072 0.15755826
		 0.63147449 -0.35082072 0.31278226 0.6201902 0.28947625 0.18013087;
	setAttr ".vt[166:331]" 0.61588323 0.50922006 0.19073966 0.54424268 0.28896195 0.48602664
		 0.51481658 0.50638849 0.49934736 0.20470214 -0.87480003 0.39457139 0.21859348 -1.074962258 0.41162643
		 0.22553341 -0.24478368 0.41519806 0.350521 -0.18630208 0.53499824 0.38546523 -0.4551861 0.56916469
		 0.48382583 -0.48296782 0.64862031 0.57393456 -0.35082072 0.6328004 0.56079537 0.28587595 0.6546976
		 0.4722997 0.46020234 0.66632557 -0.008040946 0.48688945 0.82204771 0.26710218 0.48563784 0.78965378
		 0.25191763 0.28536162 0.6827777 0.016860688 0.28536162 0.87908536 0.026385771 -0.35082072 0.90163231
		 0.00024520975 -0.48296782 0.86245716 0.2384617 -0.35082072 0.72594237 0.23826134 -0.48296782 0.77913308
		 -0.0046680039 -0.4551861 0.76771134 0.19178303 -0.4551861 0.70089167 -0.004241359 -0.18630208 0.72017175
		 0.17425457 -0.18630211 0.65781033 -0.0027530242 -0.24478365 0.52546376 0.11310714 -0.24478365 0.48985183
		 -0.0025049686 -0.87480003 0.49301249 0.10291591 -0.87479997 0.46185878 -0.0025049686 -1.039552331 0.46807787
		 0.11423714 -1.065902233 0.46143919 -0.0025049727 -1.049795151 0.30379367 0.11861046 -1.072457671 0.31405672
		 -0.0025049758 -1.049795151 0.16946988 0.12108915 -1.072457671 0.16992249 0.0015264314 0.67470765 0.1948092
		 -0.013714306 0.60770559 0.52875036 0.29069847 0.59983265 0.22908774 0.3987326 0.58967823 0.72775632
		 -0.57403463 0.087771915 0.79145777 -0.52129138 0.089178957 0.45534083 -0.65792996 0.087771915 0.24649513
		 0.71970803 0.087490506 0.17955069 0.6124689 0.087490506 0.31700554 0.59109598 0.087490506 0.62043601
		 0.32696804 0.087490506 0.65293771 0.14850706 0.087490506 0.87517512 -0.39024979 0.087490506 0.72351342
		 -0.56206977 -0.12557445 0.76863194 -0.55689663 -0.11713224 0.32326788 -0.58653903 -0.12557445 0.15310974
		 0.70006526 -0.12726291 0.14974302 0.56975883 -0.12726291 0.39114085 0.55819315 -0.12726291 0.64735138
		 0.1465755 -0.12726291 0.73157102 0.0048792488 -0.12726291 0.89516902 -0.26161924 -0.12726291 0.76309925
		 -0.28155699 -1.27012432 0.51789933 -0.29992348 -1.27012432 0.46808839 -0.24086925 -1.27012432 0.47661296
		 -0.23370978 -1.27012432 0.53976762 0.2421672 -1.27012432 0.47714224 0.30273429 -1.27012432 0.46876895
		 0.2868543 -1.27012432 0.51785362 0.23601015 -1.27012432 0.53944981 -0.28139856 -1.27012432 -0.33620492
		 -0.23492189 -1.27012432 -0.35753563 -0.24183045 -1.27012432 -0.29605463 -0.29931349 -1.27012432 -0.2878288
		 0.23379374 -1.27012432 -0.35901046 0.24035832 -1.27012432 -0.29359737 0.28735915 -1.27012432 -0.33641666
		 0.30397269 -1.27012432 -0.28466985 -0.27731076 -1.27012432 0.062369388 -0.27731076 -1.27012432 0.11923477
		 -0.34765351 -1.27012432 0.11923478 -0.34765351 -1.27012432 0.062369388 0.33410904 -1.27012432 0.055993348
		 0.33410904 -1.27012432 0.12561078 0.25683281 -1.27012432 0.1256108 0.25683281 -1.27012432 0.055993348
		 0.2690627 -0.76086766 0.2902576 0.26906267 -0.56129342 0.29025763 0.28815433 -0.7608676 0.17763154
		 0.28815436 -0.56129342 0.17763154 0.26908535 -0.56145966 -0.10757556 0.28813168 -0.5614596 0.0013890583
		 0.28813168 -0.76070142 0.0013890581 0.26908538 -0.76070136 -0.10757557 0.24976271 -0.7372092 0.26920724
		 0.24976271 -0.61535472 0.26920724 0.26638255 -0.73720914 0.19115472 0.26638255 -0.61535478 0.19115472
		 0.24992137 -0.6165179 -0.085727654 0.26622394 -0.61651784 -0.010452012 0.26622394 -0.7360459 -0.010452013
		 0.24992138 -0.73604596 -0.085727662 0.14482677 -0.72029454 0.23363194 0.14482678 -0.63226938 0.23363194
		 0.15683262 -0.72029454 0.17942554 0.15683261 -0.63226932 0.17942554 0.1449611 -0.63325399 -0.051108874
		 0.15669838 -0.63325405 0.0016169603 0.15669838 -0.71930987 0.0016169612 0.1449611 -0.71930981 -0.051108874
		 -0.35599726 -0.48296788 0.74497193 -0.1285862 -0.43187103 0.83198303 -0.56372625 0.39310476 0.78847486
		 -0.46455842 0.48188305 0.75377548 -0.4583078 0.28536162 0.77974808 -0.27869618 0.39104745 0.75176281
		 -0.42530271 -0.50000012 0.61176378 -0.30282965 -0.4551861 0.64159894 -0.23198384 -0.50000012 0.74615639
		 -0.36845237 -0.32074407 0.55496496 -0.27515185 -0.18630207 0.6019392 -0.20013802 -0.32074407 0.68580347
		 -0.28775573 -0.14148806 0.47245839 -0.17859864 -0.24478365 0.45451042 -0.15590486 -0.14148806 0.57383102
		 -0.20705912 -0.55467039 0.38995185 -0.16250646 -0.87480003 0.42993894 -0.11167173 -0.55467051 0.46185875
		 -0.2070591 -1.0088238716 0.38995183 -0.17704432 -1.074962378 0.4491536 -0.11167172 -1.0088239908 0.46185875
		 -0.58078766 0.51056778 0.36243007 -0.43713766 0.5659017 0.2360906 -0.56645715 0.56283826 0.54284102
		 -0.38540527 0.60321802 0.39680442 -0.55340356 0.40544868 0.46590722 -0.56489867 0.28947625 0.29600295
		 -0.62442648 0.40750602 0.19813898 -0.54597026 -0.43278053 0.44771269 -0.59104431 -0.48842493 0.27822116
		 -0.56198579 -0.35060459 0.28502035 -0.62442648 -0.43823767 0.16275346 -0.50814092 -0.45609561 0.2765668
		 -0.57169956 -0.50636667 0.15974024 -0.52394098 -0.50090957 0.40530661 -0.4687801 -0.18630207 0.27172419
		 -0.51134652 -0.32074407 0.17784041 -0.463588 -0.32074407 0.37824062 -0.32314453 -0.24478374 0.24010029
		 -0.41470623 -0.14148806 0.17365515 -0.36778024 -0.14148816 0.33478135 -0.29887193 -0.87479997 0.23482968
		 -0.31806594 -0.55467039 0.16946986 -0.27197245 -0.55467045 0.29132214 -0.27568504 -1.039552331 0.23482966
		 -0.31806594 -1.0088238716 0.16946986 -0.27197245 -1.0088238716 0.29132214 -0.20966373 -1.085205197 0.30427626
		 -0.23075813 -1.085205197 0.18470338 -0.12257622 -1.049795151 0.23482968 0.26211044 -1.0088238716 0.30423778
		 0.27860853 -0.95356566 0.23303048 0.25655678 -1.039552331 0.23454653 0.28836033 -1.0088238716 0.1571942
		 0.1267534 -0.67628193 0.23958044 0.13485734 -0.61686498 0.20299111 0.13485734 -0.73569888 0.20299111
		 0.14296128 -0.67628199 0.1664018 0.38308766 -0.14148806 0.34769702 0.51332742 -0.18630207 0.27144107
		 0.31213981 -0.19642083 0.23830114 0.43071851 -0.14148806 0.16137946;
	setAttr ".vt[332:497]" 0.5040648 -0.32074407 0.37824062 0.56194699 -0.4551861 0.28078949
		 0.57307667 -0.32074407 0.17784038 0.56441784 -0.50000012 0.40952927 0.64769328 -0.48296782 0.28944531
		 0.63342971 -0.50000012 0.18085361 0.63264149 -0.35082072 0.21856767 0.65192574 -0.431871 0.16975491
		 0.63582897 -0.431871 0.35614625 0.5662694 0.51023036 0.34325263 0.63356888 0.40750602 0.18121082
		 0.52789569 0.40544868 0.48585069 0.57544857 0.28947625 0.32971811 -0.57749802 0.49216965 0.65672272
		 -0.41491449 0.55150396 0.67863733 -0.54997122 0.28741893 0.65416014 -0.52940226 -0.48296782 0.56340891
		 -0.54945356 -0.34969509 0.62624735 -0.43906569 -0.4551861 0.48308691 -0.40128753 -0.18630207 0.45553216
		 -0.26514792 -0.24478365 0.35940847 -0.24245797 -0.87479997 0.34338787 -0.2533603 -1.074962378 0.36653826
		 -0.30850846 -1.29766548 0.50835884 -0.26672265 -1.29766548 0.55359381 -0.2828314 -1.29766548 0.48230407
		 -0.24104561 -1.29766548 0.52753901 0.20470212 -1.0088238716 0.39259163 0.23862109 -0.87479997 0.36186621
		 0.25090715 -1.074962378 0.36924601 0.20470211 -0.55467045 0.39523131 0.26449314 -0.24478365 0.3778868
		 0.25885984 -0.5698719 0.33958462 0.2880272 -0.14148806 0.47509816 0.41972563 -0.18630217 0.4581719
		 0.37135229 -0.32074416 0.55496496 0.46068597 -0.45518616 0.48308685 0.42780405 -0.50000012 0.61176378
		 0.56147391 -0.48296788 0.53817958 0.62828279 -0.35082072 0.47915393 0.53898764 -0.431871 0.64559203
		 0.49276155 0.49216965 0.61003029 0.5184074 0.39310476 0.66440606 0.56993586 0.28741893 0.59551936
		 -0.008358907 0.39104745 0.87181741 0.13349558 0.48688951 0.82440752 0.13038725 0.28536162 0.79400557
		 0.23736164 0.39104745 0.73843437 0.11554511 -0.48296782 0.83321518 0.018020846 -0.43187103 0.89019412
		 0.25296345 -0.43187103 0.75735712 0.10551471 -0.35082072 0.82278198 0.093843937 -0.4551861 0.74754483
		 -0.0052037686 -0.50000012 0.81297618 0.21379471 -0.50000012 0.74615645 0.085266851 -0.18630207 0.70142704
		 -0.0044894158 -0.32074407 0.75262314 0.18444581 -0.32074407 0.68580335 0.055345986 -0.24478365 0.51525027
		 -0.0034971917 -0.14148806 0.62281781 0.14368087 -0.14148806 0.57383102 0.050359175 -0.87479997 0.48422083
		 -0.0025049683 -0.55467045 0.49301243 0.10291591 -0.55467039 0.46185878 0.050359178 -1.039552331 0.46038517
		 -0.0025049676 -1.0088238716 0.49301246 0.10291591 -1.0088238716 0.46185875 0.050359167 -1.049795151 0.30269468
		 -0.0025049704 -1.049795151 0.39327395 0.10797831 -1.085205197 0.40376598 0.050359167 -1.049795151 0.16946986
		 -0.0025049739 -1.049795151 0.23482968 0.11128747 -1.049795151 0.23482968 0.22073889 0.60381365 0.64314616
		 -0.006850251 0.64827037 0.35112116 0.35741755 0.60119337 0.48823538 0.13593633 0.64746535 0.21401411
		 -0.011968642 0.55651039 0.69670898 0.34475997 0.55150396 0.80716175 0.39395553 0.48188305 0.7277053
		 0.42508808 0.28536162 0.66006273 0.36855495 -0.48296782 0.72326976 0.41929793 -0.35082072 0.68883914
		 0.29241052 -0.4551861 0.64159888 0.26568499 -0.18630207 0.6019392 0.17245385 -0.24478365 0.45451042
		 0.15691532 -0.87479997 0.42993894 0.17306821 -1.074962378 0.44906119 0.28593487 -1.29766548 0.48317426
		 0.2439895 -1.29766548 0.5276069 0.31402689 -1.29766548 0.50876695 0.27208149 -1.29766548 0.55319971
		 0.21111877 -1.085205197 0.1867528 0.20040144 -1.085205197 0.30443671 0.48426032 0.56250083 0.62990296
		 0.47613695 0.5635398 0.2140141 -0.158684 0.48688951 0.77265579 -0.13229842 0.28536162 0.82335645
		 -0.10779938 -0.48296782 0.84380001 0.0070037399 -0.35082072 0.88476771 -0.10701403 -0.4551861 0.74754471
		 -0.097233228 -0.18630207 0.70142704 -0.063113235 -0.24478368 0.51525027 -0.057426579 -0.87480003 0.48422083
		 -0.057426583 -1.039552331 0.46038517 -0.057426583 -1.049795151 0.30269468 -0.11616123 -1.085205197 0.40376601
		 -0.05742659 -1.049795151 0.16946986 -0.26862073 0.60415131 0.53724653 -0.1228552 0.64982766 0.1974889
		 -0.56703645 0.18620937 0.79303014 -0.54448932 0.08861614 0.6457358 -0.51137441 0.18620937 0.46970826
		 -0.58149821 0.08861614 0.34513432 -0.648462 0.18620937 0.21016827 0.58460253 0.18620937 0.39648902
		 0.66263419 0.087490514 0.23606491 0.6667434 0.18620937 0.18220311 0.58591717 0.18620937 0.63388532
		 0.61417001 0.087490514 0.47903314 0.30714938 0.18620937 0.65195805 0.46660545 0.087490387 0.63950276
		 0.097401053 0.18620937 0.87691981 0.25845346 0.087490514 0.77744514 -0.35306525 0.18620937 0.73426306
		 -0.11542566 0.087490514 0.80827731 -0.53287053 0.087490387 0.76764518 -0.57315683 -0.015769513 0.77762985
		 -0.57906735 -0.12050913 0.56175858 -0.54358655 -0.010141364 0.37946397 -0.56693351 -0.12050913 0.20882496
		 -0.62301081 -0.015769513 0.20555459 0.59133559 -0.016895143 0.34734377 0.62805128 -0.12726291 0.25641015
		 0.72556382 -0.016895143 0.16429654 0.57365465 -0.016895143 0.63281631 0.58691847 -0.12726291 0.53427225
		 0.23528472 -0.016895143 0.69267899 0.36224571 -0.12726291 0.69192493 0.085423589 -0.016895143 0.88370663
		 0.058682047 -0.12726291 0.82986742 -0.35306525 -0.016895143 0.73426306 -0.10851897 -0.12726291 0.83583051
		 -0.43452832 -0.12726301 0.78822255 -0.538441 -0.24280243 0.7815491 -0.53985864 -0.23717427 0.3679426
		 -0.59134918 -0.24280243 0.15492362 0.59629476 -0.24392806 0.3520337 0.6589669 -0.24392806 0.14919227
		 0.56931132 -0.24392806 0.64036638 0.17531678 -0.24392806 0.73000288 0.0036026065 -0.24392806 0.90221751
		 -0.13601947 -0.24392806 0.80660945 -0.29328528 -0.35082072 -0.64704257 -0.49534714 -0.431871 -0.55538899
		 -0.12858623 -0.431871 -0.65037876 -0.35599729 -0.48296782 -0.56336772 -0.46455845 0.48188305 -0.57217127
		 -0.56372625 0.39310476 -0.60687059 -0.27869621 0.39104745 -0.57015854 -0.4583078 0.28536162 -0.59814388
		 -0.42530274 -0.50000012 -0.4301596 -0.23198387 -0.50000012 -0.56455219 -0.30282965 -0.4551861 -0.45999476
		 -0.36845237 -0.32074416 -0.37336075 -0.20013805 -0.32074407 -0.50419921;
	setAttr ".vt[498:663]" -0.27515185 -0.18630207 -0.42033502 -0.28775573 -0.14148816 -0.29085419
		 -0.15590489 -0.14148806 -0.39222685 -0.17859866 -0.24478374 -0.27290618 -0.20705913 -0.55467039 -0.20834762
		 -0.11167175 -0.55467045 -0.28025454 -0.16250648 -0.87480003 -0.24833471 -0.20705913 -1.0088238716 -0.20834762
		 -0.11167175 -1.0088239908 -0.28025454 -0.17715722 -1.074962378 -0.2673668 -0.43713769 0.56590188 -0.054486372
		 -0.58078766 0.51056778 -0.18082584 -0.38540527 0.60321802 -0.21520023 -0.56645709 0.56283808 -0.36123684
		 -0.56489867 0.28947625 -0.11439875 -0.55340356 0.40544868 -0.28430298 -0.62442648 0.40750602 -0.016534777
		 -0.59104431 -0.48842493 -0.096616976 -0.54597026 -0.43278053 -0.26610845 -0.62442648 -0.43823767 0.018850759
		 -0.56198579 -0.35060462 -0.10341614 -0.57169962 -0.50636667 0.021863969 -0.50814092 -0.45609561 -0.094962604
		 -0.52394098 -0.50090957 -0.22370237 -0.51134652 -0.32074407 0.00376378 -0.4687801 -0.18630207 -0.090120025
		 -0.463588 -0.32074407 -0.19663639 -0.41470623 -0.14148806 0.0079490477 -0.32314453 -0.24478374 -0.058496118
		 -0.36778024 -0.14148806 -0.15317716 -0.31806594 -0.55467039 0.012134316 -0.29887193 -0.87479997 -0.053225473
		 -0.27197245 -0.55467045 -0.10971793 -0.31806594 -1.0088238716 0.012134323 -0.27568504 -1.039552331 -0.053225473
		 -0.27197245 -1.0088238716 -0.10971794 -0.20966376 -1.085205197 -0.12298907 -0.12257623 -1.049795151 -0.053225487
		 -0.23075813 -1.085205197 -0.0030991733 0.27860853 -0.95356566 -0.052499764 0.26211044 -1.0088238716 -0.12208681
		 0.28836033 -1.0088238716 0.022444796 0.25655678 -1.039552331 -0.053101998 0.13485739 -0.61819434 -0.021286437
		 0.12693474 -0.67628193 -0.056956727 0.14278005 -0.67628199 0.014383846 0.13485739 -0.73436964 -0.021286437
		 0.51332742 -0.18630207 -0.089996539 0.38308766 -0.14148806 -0.16554606 0.43071851 -0.14148806 0.018259522
		 0.31213981 -0.19642083 -0.057770412 0.56194699 -0.4551861 -0.099185325 0.50406486 -0.32074407 -0.19663642
		 0.57307667 -0.32074407 0.0037637558 0.64769328 -0.48296782 -0.10784113 0.56441784 -0.50000012 -0.22792508
		 0.63342971 -0.50000012 0.00075054611 0.65192574 -0.43187103 0.011849284 0.63264155 -0.35082072 -0.036963504
		 0.63582903 -0.43187103 -0.17454205 0.63356888 0.40750602 0.00039337832 0.5662694 0.51023036 -0.16164842
		 0.57544857 0.28947625 -0.14811386 0.52789569 0.40544868 -0.3042464 -0.57749802 0.49216965 -0.47511852
		 -0.41491449 0.55150378 -0.49703312 -0.54997122 0.28741893 -0.47255597 -0.52940226 -0.48296782 -0.38180473
		 -0.54945356 -0.34969509 -0.44464308 -0.43906572 -0.4551861 -0.30148268 -0.4012875 -0.18630217 -0.27392796
		 -0.26514792 -0.24478365 -0.17780428 -0.242458 -0.87479997 -0.16178367 -0.25318035 -1.074962378 -0.18506841
		 -0.2674 -1.29766548 -0.37121102 -0.30772164 -1.29766548 -0.32756102 -0.2426227 -1.29766548 -0.34606919
		 -0.28294432 -1.29766548 -0.30241922 0.23862107 -0.87479997 -0.17927299 0.20470211 -1.0088238716 -0.21084608
		 0.251279 -1.074962378 -0.18725112 0.26449314 -0.24478365 -0.19529361 0.20470211 -0.55467039 -0.21334456
		 0.25885984 -0.56987184 -0.15610699 0.41972566 -0.18630207 -0.27642643 0.2880272 -0.14148806 -0.29335266
		 0.460686 -0.4551861 -0.30148271 0.37135229 -0.32074407 -0.37336078 0.56147391 -0.48296782 -0.3565754
		 0.42780405 -0.50000012 -0.4301596 0.62828279 -0.35082072 -0.29754972 0.53898764 -0.43187103 -0.46398786
		 0.49276155 0.49216965 -0.42842606 0.56993586 0.28741893 -0.41391507 0.5184074 0.39310476 -0.48280185
		 0.13349555 0.48688951 -0.64280325 -0.0083589423 0.39104745 -0.69021308 0.23736161 0.39104745 -0.55683011
		 0.13038722 0.28536162 -0.61240131 0.018020809 -0.431871 -0.70858985 0.11554508 -0.48296782 -0.65161097
		 0.10551468 -0.35082072 -0.64117783 0.25296342 -0.431871 -0.57575291 -0.0052038007 -0.50000012 -0.63137192
		 0.093843907 -0.4551861 -0.56594056 0.21379468 -0.50000012 -0.56455219 -0.0044894451 -0.32074407 -0.57101893
		 0.085266821 -0.18630207 -0.51982284 0.18444578 -0.32074407 -0.50419921 -0.0034972173 -0.14148806 -0.44121358
		 0.055345967 -0.24478365 -0.33364609 0.14368084 -0.14148806 -0.39222687 -0.0025049862 -0.55467039 -0.31140828
		 0.050359152 -0.87479997 -0.30261663 0.1029159 -0.55467039 -0.28025451 -0.0025049862 -1.0088238716 -0.31140828
		 0.050359156 -1.039552331 -0.27878097 0.1029159 -1.0088238716 -0.28025451 -0.0025049839 -1.049795151 -0.21166979
		 0.050359156 -1.049795151 -0.1210905 0.10742307 -1.085205197 -0.22216183 -0.0025049804 -1.049795151 -0.053225491
		 0.050359163 -1.049795151 0.012134308 0.11128747 -1.049795151 -0.053225495 -0.0068502626 0.64827037 -0.16951698
		 0.22073887 0.60381383 -0.46154201 0.13593633 0.64746535 -0.032409891 0.35741755 0.60119337 -0.30663118
		 -0.011968669 0.55651039 -0.51510477 0.34475994 0.55150396 -0.62555754 0.3939555 0.48188305 -0.54610109
		 0.42508808 0.28536162 -0.47845849 0.36855492 -0.48296782 -0.54166561 0.4192979 -0.35082072 -0.50723493
		 0.29241052 -0.4551861 -0.45999476 0.26568499 -0.18630207 -0.42033505 0.17245384 -0.24478365 -0.27290618
		 0.15691531 -0.87479997 -0.24833472 0.17288481 -1.074962378 -0.26779571 0.24102993 -1.29766548 -0.34575334
		 0.28575149 -1.29766548 -0.29837981 0.27098125 -1.29766548 -0.37303999 0.3157028 -1.29766548 -0.32566643
		 0.21111876 -1.085205197 -0.0051486213 0.20040144 -1.085205197 -0.12224437 0.48426032 0.56250083 -0.44829878
		 0.47613695 0.5635398 -0.032409906 -0.15868403 0.48688951 -0.59105152 -0.13229845 0.28536162 -0.64175218
		 -0.10779942 -0.48296782 -0.66219574 0.0070037046 -0.35082072 -0.7031635 -0.10701406 -0.4551861 -0.56594056
		 -0.097233258 -0.18630207 -0.51982284 -0.063113265 -0.24478367 -0.33364612 -0.057426598 -0.87480003 -0.30261666
		 -0.057426602 -1.039552331 -0.27878097 -0.11645408 -1.085205197 -0.22216183 -0.057426598 -1.049795151 -0.12109052
		 -0.057426594 -1.049795151 0.01213431 -0.26862073 0.60415131 -0.35564229 -0.12285521 0.64982766 -0.015884681
		 -0.54448932 0.08861614 -0.46413156 -0.56703645 0.18620937 -0.61142594 -0.51137441 0.18620923 -0.28810403
		 -0.58149821 0.08861614 -0.16353008 -0.648462 0.18620937 -0.028564055;
	setAttr ".vt[664:829]" 0.58460253 0.18620937 -0.2148848 0.6667434 0.18620937 -0.00059896143
		 0.66263419 0.087490514 -0.05446076 0.58591717 0.18620937 -0.45228112 0.61417001 0.087490387 -0.29742888
		 0.30714938 0.18620923 -0.47035378 0.46660548 0.087490514 -0.45789856 0.097401015 0.18620937 -0.69531554
		 0.25845343 0.087490514 -0.59584099 -0.35306528 0.18620923 -0.55265886 -0.11542568 0.087490514 -0.6266731
		 -0.53287047 0.087490514 -0.58604109 -0.57906729 -0.12050923 -0.38015434 -0.57315677 -0.015769513 -0.59602565
		 -0.54358655 -0.010141483 -0.19785973 -0.56693351 -0.12050913 -0.027220752 -0.62301081 -0.015769513 -0.023950391
		 0.59133559 -0.016895143 -0.1657396 0.72556382 -0.016895143 0.017307617 0.62805128 -0.12726291 -0.074805968
		 0.57365465 -0.016895143 -0.45121211 0.58691847 -0.12726291 -0.35266808 0.23528469 -0.016895143 -0.51107472
		 0.36224568 -0.12726291 -0.51032072 0.085423551 -0.016895143 -0.70210236 0.05868201 -0.12726291 -0.64826316
		 -0.35306528 -0.016895143 -0.55265886 -0.108519 -0.12726291 -0.6542263 -0.43452838 -0.12726291 -0.6066184
		 -0.53844094 -0.24280252 -0.59994483 -0.53985864 -0.23717427 -0.18633839 -0.59134918 -0.24280243 0.026680592
		 0.59629476 -0.24392806 -0.17042953 0.6589669 -0.24392806 0.032411899 0.56931132 -0.24392806 -0.4587622
		 0.17531675 -0.24392806 -0.54839867 0.0036025702 -0.24392806 -0.72061324 -0.1360195 -0.24392806 -0.62500525
		 -0.58162731 0.5095582 0.090802103 -0.21967769 0.60342818 0.090802111 -0.64719683 0.28947625 0.090802111
		 -0.62306237 -0.49388209 0.090802103 -0.62913018 -0.35263976 0.090802118 -0.53253275 -0.45700511 0.090802103
		 -0.4933219 -0.18630207 0.090802096 -0.3485865 -0.24478365 0.090802096 -0.32446393 -0.87479997 0.090802096
		 -0.33195868 -1.074962378 0.090802096 -0.28272957 -1.29766548 0.090802073 -0.32417735 -1.29766548 0.057295501
		 -0.32417735 -1.29766548 0.12430865 -0.36562517 -1.29766548 0.090802073 0.29161093 -0.87479997 0.088695608
		 0.30295947 -1.074962378 0.090501159 0.32788655 -0.24478365 0.088695608 0.29161093 -0.56987184 0.054129023
		 0.29161093 -0.56987184 0.12285295 0.54554039 -0.18630207 0.090501152 0.59690428 -0.4551861 0.090802073
		 0.67507589 -0.48296782 0.090802088 0.63279623 -0.35082072 0.090802088 0.63242114 0.50888312 0.090802096
		 0.63510412 0.28947625 0.090802081 0.10956982 -1.085205197 0.090802088 -0.0025049772 -1.049795151 0.090802088
		 0.0043186578 0.68352002 0.090802103 0.26845881 0.59937894 0.090802096 0.35635915 -1.29766548 0.090802073
		 0.30779192 -1.29766548 0.047048297 0.30779192 -1.29766548 0.13455585 0.25922471 -1.29766548 0.090802073
		 -0.12196802 -1.085205197 0.090802081 -0.68340731 0.087490514 0.090802096 0.73873276 0.087490514 0.090802073
		 -0.5930742 -0.12726291 0.090802103 0.72406989 -0.12726291 0.090802081 -0.2571069 -1.19143534 0.47408378
		 -0.2886267 -1.19143534 0.40540066 -0.19681674 -1.19143534 0.41290653 -0.19051282 -1.19143534 0.51161319
		 0.19372457 -1.19143534 0.41338784 0.2876133 -1.19143534 0.40594998 0.26026744 -1.19143534 0.47401059
		 0.18825538 -1.19143534 0.51119989 -0.25690576 -1.19143534 -0.29233494 -0.19150421 -1.19143534 -0.32919243
		 -0.19769527 -1.19143534 -0.23225333 -0.28786108 -1.19143534 -0.22488184 0.19205888 -1.19143534 -0.23001917
		 0.18640633 -1.19143534 -0.33111078 0.26083288 -1.19143534 -0.29267451 0.28909564 -1.19143534 -0.22233188
		 -0.22253552 -1.19143534 0.045101613 -0.22253554 -1.19143534 0.13650255 -0.33559898 -1.19143534 0.13650256
		 -0.33559898 -1.19143534 0.045101609 0.31782076 -1.19143534 0.038953278 0.31782076 -1.19143534 0.14265087
		 0.20271522 -1.19143534 0.14265087 0.20271522 -1.19143534 0.038953282 0.26885673 -0.42478332 0.30004096
		 0.2688567 -0.80616891 0.30004093 0.26588073 -0.66108048 0.30902863 0.28836033 -0.80616897 0.16655067
		 0.27860853 -0.79412991 0.23394458 0.28836033 -0.42478341 0.16655065 0.29133627 -0.66108048 0.15886052
		 0.27860853 -0.52803105 0.23394458 0.2688567 -0.42478341 -0.11733018 0.28836033 -0.42478341 0.011744947
		 0.27860853 -0.5282526 -0.053093258 0.28836033 -0.80616891 0.011744947 0.29130608 -0.66108054 0.019549828
		 0.2688567 -0.80616897 -0.11733018 0.27860853 -0.79390836 -0.053093258 0.26591095 -0.66108048 -0.12573633
		 0.26968065 -0.61082405 0.2807655 0.26968065 -0.74173987 0.2807655 0.24699274 -0.67628199 0.28221601
		 0.28753641 -0.74173987 0.18809122 0.25807264 -0.75751823 0.23018099 0.28753641 -0.61082405 0.18809123
		 0.26915255 -0.67628193 0.17814596 0.25807264 -0.59504575 0.23018098 0.26977131 -0.6114887 -0.097630508
		 0.28744575 -0.6114887 -0.0081393225 0.25807264 -0.59659654 -0.04808984 0.28744575 -0.74107516 -0.0081393225
		 0.26894107 -0.67628193 0.0020939286 0.26977131 -0.74107528 -0.097630493 0.25807264 -0.75596732 -0.04808984
		 0.24720429 -0.67628193 -0.098273605 0.18836105 -0.61686498 0.25322551 0.18836103 -0.73569894 0.25322551
		 0.20456892 -0.73569894 0.18004692 0.20456894 -0.61686498 0.18004689 0.18854238 -0.61819428 -0.070099711
		 0.20438768 -0.61819428 0.00083914032 0.20438768 -0.73436958 0.00083914032 0.18854238 -0.73436958 -0.070099711
		 -0.49534711 -0.43187103 0.73699331 -0.29328525 -0.35082072 0.82864678 -0.31854436 -0.43187103 0.79859078
		 -0.44339526 0.39104745 0.78216869 -0.33758652 -0.50000012 0.68686372 -0.29124403 -0.32074407 0.62651068
		 -0.22687523 -0.14148806 0.52822477 -0.16250646 -0.55467039 0.42993894 -0.16250646 -1.0088239908 0.42993894
		 -0.51237899 0.56893063 0.39272138 -0.5832541 0.40750602 0.3187696 -0.5832541 -0.43550909 0.29046118
		 -0.5534057 -0.50363815 0.27528265 -0.49305269 -0.32074407 0.27699485 -0.39596233 -0.14148806 0.25591224
		 -0.29887193 -0.55467039 0.23482968 -0.29887193 -1.0088238716 0.23482968 -0.20612444 -1.049795151 0.23482968
		 0.27860853 -1.0088238716 0.23369709 0.11432147 -0.67628193 0.19844274 0.41273361 -0.14148816 0.2547797
		 0.54685873 -0.32074407 0.27699485 0.60721177 -0.50000012 0.29217339 0.64843178 -0.431871 0.25090411
		 0.57629675 0.40750602 0.33036581 -0.52804804 0.53648454 0.66859597;
	setAttr ".vt[830:995]" -0.57364494 0.39927673 0.65276498 -0.54391187 -0.43187106 0.60829532
		 -0.48433045 -0.50000012 0.51768917 -0.42397746 -0.32074407 0.47155279 -0.33321771 -0.14148806 0.40747032
		 -0.24245799 -0.55467039 0.34338787 -0.24245799 -1.0088238716 0.34338787 -0.28861412 -1.33307552 0.5402649
		 0.23862109 -1.0088238716 0.35394692 0.23862109 -0.55467039 0.36450595 0.34210938 -0.14148806 0.41802937
		 0.44559768 -0.32074416 0.47155276 0.50595069 -0.50000012 0.51768917 0.60733765 -0.431871 0.5073778
		 0.53541803 0.39927673 0.595249 0.10921272 0.39104745 0.82111108 0.11961393 -0.43187103 0.83372623
		 0.10461476 -0.50000012 0.79280955 0.090253659 -0.32074407 0.73245651 0.07030642 -0.14148816 0.60833865
		 0.050359175 -0.55467039 0.48422083 0.050359175 -1.0088238716 0.48422083 0.050359175 -1.049795151 0.38887817
		 0.050359167 -1.049795151 0.23482968 0.18681788 0.63270348 0.42794088 0.18681788 0.55651039 0.77019382
		 0.39640763 0.39104745 0.69916689 0.40680882 -0.43187103 0.7117821 0.32597163 -0.50000012 0.68686366
		 0.28122351 -0.32074407 0.62651068 0.21906942 -0.14148806 0.52822477 0.15691532 -0.55467045 0.42993891
		 0.15691532 -1.0088238716 0.42993894 0.29452252 -1.33307552 0.54053694 0.19040155 -1.049795151 0.23482968
		 0.48860553 0.56758088 0.42794088 0.43797505 0.53648454 0.7172209 -0.13567297 0.39104745 0.81517345
		 -0.040555168 -0.43187103 0.87606531 -0.11929644 -0.50000012 0.79280949 -0.10291989 -0.32074407 0.73245651
		 -0.080173232 -0.14148806 0.60833865 -0.057426583 -0.55467051 0.48422083 -0.057426579 -1.0088239908 0.48422083
		 -0.057426583 -1.049795151 0.38887814 -0.057426583 -1.049795151 0.23482968 -0.20724347 0.63405323 0.36184004
		 -0.22771707 0.55651039 0.67709929 -0.53995937 0.18620937 0.65834564 -0.57084185 0.18620937 0.32839304
		 0.62048572 0.18620937 0.28174716 0.60030657 0.18620937 0.53348345 0.45975378 0.18620937 0.63884962
		 0.21343714 0.18620937 0.77679211 -0.12217477 0.18620937 0.81590873 -0.50304544 0.18620923 0.77248633
		 -0.56444091 -0.012392624 0.5967446 -0.57728249 -0.012392624 0.27542123 0.65311998 -0.016895143 0.2422832
		 0.59916621 -0.016895143 0.50206006 0.41184399 -0.016895143 0.66599691 0.16552733 -0.016895143 0.8039394
		 -0.12217477 -0.016895143 0.81590873 -0.50304544 -0.016895143 0.77248639 -0.56762183 -0.23942554 0.59116393
		 -0.55919009 -0.23942554 0.23491649 0.62353659 -0.24392806 0.23445401 0.60905015 -0.24392806 0.5073778
		 0.3845869 -0.24392815 0.69087952 0.061940964 -0.24392806 0.82882202 -0.040555168 -0.24392806 0.86506981
		 -0.34827745 -0.24392806 0.81606674 -0.31854439 -0.431871 -0.61698651 -0.44339529 0.39104745 -0.60056442
		 -0.33758655 -0.50000012 -0.50525945 -0.29124403 -0.32074407 -0.44490653 -0.22687528 -0.14148806 -0.34662059
		 -0.16250648 -0.55467039 -0.24833472 -0.16250648 -1.0088239908 -0.24833472 -0.51237899 0.56893045 -0.21111715
		 -0.5832541 0.40750602 -0.1371654 -0.5832541 -0.43550912 -0.10885697 -0.55340576 -0.50363815 -0.093678452
		 -0.49305269 -0.32074407 -0.09539067 -0.39596233 -0.14148806 -0.074308075 -0.29887193 -0.55467039 -0.053225484
		 -0.29887193 -1.0088238716 -0.053225484 -0.20612444 -1.049795151 -0.053225487 0.27860853 -1.0088238716 -0.052731488
		 0.11432151 -0.67628193 -0.016838495 0.41273364 -0.14148806 -0.073814079 0.54685873 -0.32074407 -0.095390692
		 0.60721177 -0.50000012 -0.1105692 0.64843184 -0.43187103 -0.069299921 0.57629681 0.40750602 -0.14876157
		 -0.52804798 0.53648454 -0.48699179 -0.57364494 0.39927673 -0.47116074 -0.54391187 -0.43187103 -0.42669109
		 -0.48433048 -0.50000012 -0.33608499 -0.42397746 -0.32074407 -0.28994858 -0.33321774 -0.14148806 -0.22586612
		 -0.242458 -0.55467039 -0.16178367 -0.242458 -1.0088238716 -0.16178367 -0.28906569 -1.33307552 -0.35919827
		 0.23862106 -1.0088238716 -0.17177758 0.23862107 -0.55467039 -0.18177147 0.34210941 -0.14148806 -0.23586005
		 0.44559774 -0.32074407 -0.28994858 0.50595069 -0.50000012 -0.33608499 0.60733765 -0.43187103 -0.32577363
		 0.53541803 0.39927673 -0.41364479 0.10921269 0.39104745 -0.63950682 0.11961389 -0.431871 -0.65212202
		 0.10461473 -0.50000012 -0.61120528 0.090253629 -0.32074407 -0.5508523 0.070306398 -0.14148806 -0.42673448
		 0.050359156 -0.55467039 -0.30261663 0.050359156 -1.0088238716 -0.30261663 0.050359156 -1.049795151 -0.20727396
		 0.050359163 -1.049795151 -0.053225491 0.18681787 0.6327033 -0.24633667 0.18681785 0.55651039 -0.58858961
		 0.3964076 0.39104745 -0.51756269 0.40680882 -0.431871 -0.53017789 0.32597157 -0.50000012 -0.50525945
		 0.28122351 -0.32074407 -0.44490653 0.21906939 -0.14148806 -0.34662062 0.15691531 -0.55467045 -0.24833471
		 0.15691531 -1.0088238716 -0.24833471 0.29378903 -1.33307552 -0.35793516 0.19040155 -1.049795151 -0.053225495
		 0.48860553 0.56758088 -0.2463367 0.43797502 0.53648454 -0.53561664 -0.135673 0.39104745 -0.63356924
		 -0.040555201 -0.431871 -0.69446099 -0.11929647 -0.50000012 -0.61120528 -0.10291992 -0.32074407 -0.5508523
		 -0.080173261 -0.14148816 -0.42673445 -0.057426598 -0.55467051 -0.30261666 -0.057426598 -1.0088239908 -0.30261666
		 -0.057426598 -1.049795151 -0.20727398 -0.057426594 -1.049795151 -0.053225491 -0.20724349 0.63405323 -0.18023583
		 -0.22771709 0.55651021 -0.49549502 -0.53995937 0.18620937 -0.47674146 -0.57084185 0.18620937 -0.14678881
		 0.62048572 0.18620937 -0.10014299 0.60030657 0.18620937 -0.35187921 0.45975375 0.18620923 -0.45724544
		 0.21343711 0.18620937 -0.59518784 -0.12217479 0.18620937 -0.63430458 -0.50304538 0.18620937 -0.59088218
		 -0.56444091 -0.012392624 -0.41514042 -0.57728249 -0.012392624 -0.093817048 0.65311992 -0.016895143 -0.060679022
		 0.59916615 -0.016895143 -0.32045582 0.41184399 -0.016895143 -0.48439273 0.16552728 -0.016895143 -0.62233514
		 -0.12217479 -0.016895143 -0.63430458 -0.50304538 -0.016895143 -0.59088218 -0.56762177 -0.23942554 -0.40955973
		 -0.55919009 -0.23942554 -0.053312268 0.62353659 -0.24392806 -0.052849825 0.60905015 -0.24392815 -0.32577363
		 0.3845869 -0.24392806 -0.50927532 0.061940931 -0.24392806 -0.64721781;
	setAttr ".vt[996:1073]" -0.040555201 -0.24392806 -0.6834656 -0.34827748 -0.24392815 -0.63446248
		 -0.41205725 0.56489229 0.090802103 -0.63815063 0.40750602 0.090802103 -0.63815063 -0.4391472 0.090802111
		 -0.57779753 -0.50727624 0.090802103 -0.51744443 -0.32074407 0.090802103 -0.4209542 -0.14148806 0.090802096
		 -0.32446393 -0.55467039 0.090802096 -0.32446393 -1.0088238716 0.090802096 -0.33921406 -1.33307552 0.090802073
		 0.29161093 -1.0088238716 0.08959838 0.29161093 -0.55467039 0.088394687 0.43671349 -0.14148806 0.08959838
		 0.58181602 -0.32074407 0.090802073 0.64216906 -0.50000012 0.090802081 0.65309036 -0.431871 0.090802088
		 0.6526596 0.40750602 0.090802088 0.050359167 -1.049795151 0.090802088 0.11897583 0.65238625 0.090802103
		 0.32363322 -1.33307552 0.090802066 0.47198072 0.5621928 0.090802096 -0.05742659 -1.049795151 0.090802088
		 -0.094725788 0.65508574 0.090802103 -0.67433536 0.18620937 0.090802103 0.68216264 0.18620937 0.090802081
		 -0.63825363 -0.016895143 0.090802096 0.74971181 -0.016895143 0.090802081 -0.6020689 -0.24392806 0.090802111
		 0.67077702 -0.24392806 0.090802081 -0.28606713 -1.19143534 0.43598929 -0.2458737 -1.19143534 0.39520445
		 -0.18046443 -1.19143534 0.46601284 -0.22065791 -1.19143534 0.50679761 0.24340354 -1.19143534 0.39584616
		 0.28776544 -1.19143534 0.43626136 0.22152685 -1.19143534 0.50642794 0.17716491 -1.19143534 0.46601281
		 -0.22110946 -1.19143534 -0.32446304 -0.1816358 -1.19143534 -0.2844086 -0.2458737 -1.19143534 -0.21486823
		 -0.28534737 -1.19143534 -0.25492263 0.17494398 -1.19143534 -0.2844086 0.22079332 -1.19143534 -0.32617882
		 0.28925285 -1.19143534 -0.25365958 0.24340354 -1.19143534 -0.21188934 -0.20369162 -1.19143534 0.090802088
		 -0.27906725 -1.19143534 0.15173605 -0.35444286 -1.19143534 0.090802088 -0.27906725 -1.19143534 0.029868115
		 0.33700505 -1.19143534 0.090802073 0.260268 -1.19143534 0.15993381 0.18353096 -1.19143534 0.090802081
		 0.260268 -1.19143534 0.021670358 0.26560611 -0.61547625 0.32228932 0.27860853 -0.86973321 0.2332958
		 0.29161093 -0.61547619 0.14430228 0.27860853 -0.36121914 0.2332958 0.27860853 -0.36121914 -0.052792616
		 0.29161093 -0.61547619 0.033257466 0.27860853 -0.86973321 -0.052792616 0.26560611 -0.61547625 -0.13884267
		 0.26670468 -0.67628193 0.29621121 0.27860853 -0.76355916 0.23442838 0.29051235 -0.67628193 0.17264552
		 0.27860853 -0.58900476 0.23442838 0.27860853 -0.58989096 -0.052884918 0.2903915 -0.67628193 0.0067758751
		 0.27860853 -0.76267302 -0.052884907 0.26682556 -0.67628193 -0.11254571 0.18565974 -0.67628193 0.26542196
		 0.196465 -0.75550455 0.21663621 0.20727025 -0.67628193 0.16785045 0.196465 -0.59705931 0.21663621
		 0.19646502 -0.59883177 -0.034630276 0.20702858 -0.67628193 0.012662282 0.19646503 -0.75373214 -0.034630284
		 0.18590149 -0.67628193 -0.081922859;
	setAttr -s 2144 ".ed";
	setAttr ".ed[0:165]"  111 804 1 804 806 1 806 805 1 805 111 1 804 114 1 114 270 1
		 270 806 1 270 113 1 113 271 1 271 806 1 271 112 1 112 805 1 115 272 1 272 807 1 807 273 1
		 273 115 1 272 118 1 118 274 1 274 807 1 274 117 1 117 275 1 275 807 1 275 116 1 116 273 1
		 114 276 1 276 808 1 808 270 1 276 120 1 120 277 1 277 808 1 277 119 1 119 278 1 278 808 1
		 278 113 1 120 279 1 279 809 1 809 277 1 279 122 1 122 280 1 280 809 1 280 121 1 121 281 1
		 281 809 1 281 119 1 122 282 1 282 810 1 810 280 1 282 124 1 124 283 1 283 810 1 283 123 1
		 123 284 1 284 810 1 284 121 1 124 285 1 285 811 1 811 283 1 285 126 1 126 286 1 286 811 1
		 286 125 1 125 287 1 287 811 1 287 123 1 126 288 1 288 812 1 812 286 1 288 128 1 128 289 1
		 289 812 1 289 127 1 127 290 1 290 812 1 290 125 1 130 291 1 291 813 1 813 292 1 292 130 1
		 291 132 1 132 293 1 293 813 1 293 131 1 131 294 1 294 813 1 294 129 1 129 292 1 133 295 1
		 295 814 1 814 296 1 296 133 1 295 132 1 291 814 1 130 297 1 297 814 1 297 134 1 134 296 1
		 135 298 1 298 815 1 815 299 1 299 135 1 298 138 1 138 300 1 300 815 1 300 137 1 137 301 1
		 301 815 1 301 136 1 136 299 1 139 302 1 302 816 1 816 303 1 303 139 1 302 140 1 140 304 1
		 304 816 1 304 135 1 299 816 1 136 303 1 141 305 1 305 817 1 817 306 1 306 141 1 305 142 1
		 142 307 1 307 817 1 307 140 1 302 817 1 139 306 1 143 308 1 308 818 1 818 309 1 309 143 1
		 308 144 1 144 310 1 310 818 1 310 142 1 305 818 1 141 309 1 145 311 1 311 819 1 819 312 1
		 312 145 1 311 146 1 146 313 1 313 819 1 313 144 1 308 819 1 143 312 1 147 314 1 314 820 1
		 820 315 1 315 147 1 314 148 1 148 316 1 316 820 1 316 146 1 311 820 1 145 315 1 314 821 1
		 821 317 1 317 148 1 147 318 1 318 821 1 318 150 1 150 319 1 319 821 1;
	setAttr ".ed[166:331]" 319 149 1 149 317 1 151 320 1 320 822 1 822 321 1 321 151 1
		 320 154 1 154 322 1 322 822 1 322 153 1 153 323 1 323 822 1 323 152 1 152 321 1 263 324 1
		 324 823 1 823 325 1 325 263 1 324 262 1 262 326 1 326 823 1 326 264 1 264 327 1 327 823 1
		 327 265 1 265 325 1 157 328 1 328 824 1 824 329 1 329 157 1 328 155 1 155 330 1 330 824 1
		 330 156 1 156 331 1 331 824 1 331 158 1 158 329 1 159 332 1 332 825 1 825 333 1 333 159 1
		 332 157 1 329 825 1 158 334 1 334 825 1 334 160 1 160 333 1 161 335 1 335 826 1 826 336 1
		 336 161 1 335 159 1 333 826 1 160 337 1 337 826 1 337 162 1 162 336 1 163 338 1 338 827 1
		 827 339 1 339 163 1 338 164 1 164 340 1 340 827 1 340 161 1 336 827 1 162 339 1 166 341 1
		 341 828 1 828 342 1 342 166 1 341 168 1 168 343 1 343 828 1 343 167 1 167 344 1 344 828 1
		 344 165 1 165 342 1 132 345 1 345 829 1 829 293 1 345 115 1 273 829 1 116 346 1 346 829 1
		 346 131 1 272 830 1 830 347 1 347 118 1 345 830 1 295 830 1 133 347 1 804 831 1 831 348 1
		 348 114 1 111 349 1 349 831 1 349 138 1 298 831 1 135 348 1 140 350 1 350 832 1 832 304 1
		 350 120 1 276 832 1 348 832 1 142 351 1 351 833 1 833 307 1 351 122 1 279 833 1 350 833 1
		 144 352 1 352 834 1 834 310 1 352 124 1 282 834 1 351 834 1 146 353 1 353 835 1 835 313 1
		 353 126 1 285 835 1 352 835 1 148 354 1 354 836 1 836 316 1 354 128 1 288 836 1 353 836 1
		 222 355 1 355 837 1 837 356 1 356 222 1 355 223 1 223 357 1 357 837 1 357 224 1 224 358 1
		 358 837 1 358 225 1 225 356 1 169 359 1 359 838 1 838 360 1 360 169 1 359 170 1 170 361 1
		 361 838 1 361 154 1 320 838 1 151 360 1 171 362 1 362 839 1 839 363 1 363 171 1 362 169 1
		 360 839 1 151 364 1 364 839 1 364 155 1 155 363 1 172 365 1 365 840 1;
	setAttr ".ed[332:497]" 840 366 1 366 172 1 365 171 1 363 840 1 328 840 1 157 366 1
		 173 367 1 367 841 1 841 368 1 368 173 1 367 172 1 366 841 1 332 841 1 159 368 1 174 369 1
		 369 842 1 842 370 1 370 174 1 369 173 1 368 842 1 335 842 1 161 370 1 164 371 1 371 843 1
		 843 340 1 371 175 1 175 372 1 372 843 1 372 174 1 370 843 1 168 373 1 373 844 1 844 343 1
		 373 177 1 177 374 1 374 844 1 374 176 1 176 375 1 375 844 1 375 167 1 178 376 1 376 845 1
		 845 377 1 377 178 1 376 181 1 181 378 1 378 845 1 378 180 1 180 379 1 379 845 1 379 179 1
		 179 377 1 183 380 1 380 846 1 846 381 1 381 183 1 380 185 1 185 382 1 382 846 1 382 184 1
		 184 383 1 383 846 1 383 182 1 182 381 1 186 384 1 384 847 1 847 385 1 385 186 1 384 187 1
		 187 386 1 386 847 1 386 185 1 380 847 1 183 385 1 188 387 1 387 848 1 848 388 1 388 188 1
		 387 189 1 189 389 1 389 848 1 389 187 1 384 848 1 186 388 1 190 390 1 390 849 1 849 391 1
		 391 190 1 390 191 1 191 392 1 392 849 1 392 189 1 387 849 1 188 391 1 192 393 1 393 850 1
		 850 394 1 394 192 1 393 193 1 193 395 1 395 850 1 395 191 1 390 850 1 190 394 1 194 396 1
		 396 851 1 851 397 1 397 194 1 396 195 1 195 398 1 398 851 1 398 193 1 393 851 1 192 397 1
		 196 399 1 399 852 1 852 400 1 400 196 1 399 197 1 197 401 1 401 852 1 401 195 1 396 852 1
		 194 400 1 198 402 1 402 853 1 853 403 1 403 198 1 402 199 1 199 404 1 404 853 1 404 197 1
		 399 853 1 196 403 1 201 405 1 405 854 1 854 406 1 406 201 1 405 203 1 203 407 1 407 854 1
		 407 202 1 202 408 1 408 854 1 408 200 1 200 406 1 377 855 1 855 409 1 409 178 1 179 410 1
		 410 855 1 410 203 1 405 855 1 201 409 1 379 856 1 856 411 1 411 179 1 180 412 1 412 856 1
		 412 176 1 374 856 1 177 411 1 185 413 1 413 857 1 857 382 1 413 174 1;
	setAttr ".ed[498:663]" 372 857 1 175 414 1 414 857 1 414 184 1 187 415 1 415 858 1
		 858 386 1 415 173 1 369 858 1 413 858 1 189 416 1 416 859 1 859 389 1 416 172 1 367 859 1
		 415 859 1 191 417 1 417 860 1 860 392 1 417 171 1 365 860 1 416 860 1 193 418 1 418 861 1
		 861 395 1 418 169 1 362 861 1 417 861 1 195 419 1 419 862 1 862 398 1 419 170 1 359 862 1
		 418 862 1 226 420 1 420 863 1 863 421 1 421 226 1 420 227 1 227 422 1 422 863 1 422 228 1
		 228 423 1 423 863 1 423 229 1 229 421 1 199 424 1 424 864 1 864 404 1 424 153 1 322 864 1
		 154 425 1 425 864 1 425 197 1 203 426 1 426 865 1 865 407 1 426 168 1 341 865 1 166 427 1
		 427 865 1 427 202 1 411 866 1 866 410 1 373 866 1 426 866 1 275 867 1 867 428 1 428 116 1
		 117 429 1 429 867 1 429 181 1 376 867 1 178 428 1 113 430 1 430 868 1 868 271 1 430 183 1
		 381 868 1 182 431 1 431 868 1 431 112 1 119 432 1 432 869 1 869 278 1 432 186 1 385 869 1
		 430 869 1 121 433 1 433 870 1 870 281 1 433 188 1 388 870 1 432 870 1 123 434 1 434 871 1
		 871 284 1 434 190 1 391 871 1 433 871 1 125 435 1 435 872 1 872 287 1 435 192 1 394 872 1
		 434 872 1 127 436 1 436 873 1 873 290 1 436 194 1 397 873 1 435 873 1 149 437 1 437 874 1
		 874 438 1 438 149 1 437 196 1 400 874 1 436 874 1 127 438 1 150 439 1 439 875 1 875 319 1
		 439 198 1 403 875 1 437 875 1 131 440 1 440 876 1 876 294 1 440 201 1 406 876 1 200 441 1
		 441 876 1 441 129 1 428 877 1 877 346 1 409 877 1 440 877 1 204 442 1 442 878 1 878 443 1
		 443 204 1 442 118 1 347 878 1 133 444 1 444 878 1 444 205 1 205 443 1 444 879 1 879 445 1
		 445 205 1 296 879 1 134 446 1 446 879 1 446 206 1 206 445 1 167 447 1 447 880 1 880 344 1
		 447 208 1 208 448 1 448 880 1 448 207 1 207 449 1 449 880 1 449 165 1;
	setAttr ".ed[664:829]" 176 450 1 450 881 1 881 375 1 450 209 1 209 451 1 451 881 1
		 451 208 1 447 881 1 180 452 1 452 882 1 882 412 1 452 210 1 210 453 1 453 882 1 453 209 1
		 450 882 1 181 454 1 454 883 1 883 378 1 454 211 1 211 455 1 455 883 1 455 210 1 452 883 1
		 117 456 1 456 884 1 884 429 1 456 212 1 212 457 1 457 884 1 457 211 1 454 884 1 442 885 1
		 885 274 1 204 458 1 458 885 1 458 212 1 456 885 1 213 459 1 459 886 1 886 460 1 460 213 1
		 459 204 1 443 886 1 205 461 1 461 886 1 461 214 1 214 460 1 461 887 1 887 462 1 462 214 1
		 445 887 1 206 463 1 463 887 1 463 215 1 215 462 1 208 464 1 464 888 1 888 448 1 464 217 1
		 217 465 1 465 888 1 465 216 1 216 466 1 466 888 1 466 207 1 209 467 1 467 889 1 889 451 1
		 467 218 1 218 468 1 468 889 1 468 217 1 464 889 1 210 469 1 469 890 1 890 453 1 469 219 1
		 219 470 1 470 890 1 470 218 1 467 890 1 211 471 1 471 891 1 891 455 1 471 220 1 220 472 1
		 472 891 1 472 219 1 469 891 1 212 473 1 473 892 1 892 457 1 473 221 1 221 474 1 474 892 1
		 474 220 1 471 892 1 459 893 1 893 458 1 213 475 1 475 893 1 475 221 1 473 893 1 111 476 1
		 476 894 1 894 349 1 476 213 1 460 894 1 214 477 1 477 894 1 477 138 1 477 895 1 895 300 1
		 462 895 1 215 478 1 478 895 1 478 137 1 217 479 1 479 896 1 896 465 1 479 164 1 338 896 1
		 163 480 1 480 896 1 480 216 1 218 481 1 481 897 1 897 468 1 481 175 1 371 897 1 479 897 1
		 219 482 1 482 898 1 898 470 1 482 184 1 414 898 1 481 898 1 220 483 1 483 899 1 899 472 1
		 483 182 1 383 899 1 482 899 1 221 484 1 484 900 1 900 474 1 484 112 1 431 900 1 483 900 1
		 476 901 1 901 475 1 805 901 1 484 901 1 4 485 1 485 902 1 902 486 1 486 4 1 485 73 1
		 73 487 1 487 902 1 487 74 1 74 488 1 488 902 1 488 2 1 2 486 1;
	setAttr ".ed[830:995]" 0 489 1 489 903 1 903 490 1 490 0 1 489 72 1 72 491 1
		 491 903 1 491 92 1 92 492 1 492 903 1 492 84 1 84 490 1 488 904 1 904 493 1 493 2 1
		 74 494 1 494 904 1 494 75 1 75 495 1 495 904 1 495 6 1 6 493 1 495 905 1 905 496 1
		 496 6 1 75 497 1 497 905 1 497 76 1 76 498 1 498 905 1 498 8 1 8 496 1 498 906 1
		 906 499 1 499 8 1 76 500 1 500 906 1 500 77 1 77 501 1 501 906 1 501 10 1 10 499 1
		 501 907 1 907 502 1 502 10 1 77 503 1 503 907 1 503 78 1 78 504 1 504 907 1 504 12 1
		 12 502 1 504 908 1 908 505 1 505 12 1 78 506 1 506 908 1 506 79 1 79 507 1 507 908 1
		 507 14 1 14 505 1 17 508 1 508 909 1 909 509 1 509 17 1 508 82 1 82 510 1 510 909 1
		 510 83 1 83 511 1 511 909 1 511 33 1 33 509 1 85 512 1 512 910 1 910 513 1 513 85 1
		 512 86 1 86 514 1 514 910 1 514 17 1 509 910 1 33 513 1 35 515 1 515 911 1 911 516 1
		 516 35 1 515 19 1 19 517 1 517 911 1 517 18 1 18 518 1 518 911 1 518 34 1 34 516 1
		 20 519 1 519 912 1 912 520 1 520 20 1 519 19 1 515 912 1 35 521 1 521 912 1 521 36 1
		 36 520 1 21 522 1 522 913 1 913 523 1 523 21 1 522 20 1 520 913 1 36 524 1 524 913 1
		 524 37 1 37 523 1 22 525 1 525 914 1 914 526 1 526 22 1 525 21 1 523 914 1 37 527 1
		 527 914 1 527 38 1 38 526 1 23 528 1 528 915 1 915 529 1 529 23 1 528 22 1 526 915 1
		 38 530 1 530 915 1 530 39 1 39 529 1 24 531 1 531 916 1 916 532 1 532 24 1 531 23 1
		 529 916 1 39 533 1 533 916 1 533 40 1 40 532 1 40 534 1 534 917 1 917 532 1 534 80 1
		 80 535 1 535 917 1 535 81 1 81 536 1 536 917 1 536 24 1 42 537 1 537 918 1 918 538 1
		 538 42 1 537 26 1 26 539 1 539 918 1 539 25 1 25 540 1 540 918 1;
	setAttr ".ed[996:1161]" 540 41 1 41 538 1 266 541 1 541 919 1 919 542 1 542 266 1
		 541 267 1 267 543 1 543 919 1 543 268 1 268 544 1 544 919 1 544 269 1 269 542 1 44 545 1
		 545 920 1 920 546 1 546 44 1 545 28 1 28 547 1 547 920 1 547 27 1 27 548 1 548 920 1
		 548 43 1 43 546 1 45 549 1 549 921 1 921 550 1 550 45 1 549 29 1 29 551 1 551 921 1
		 551 28 1 545 921 1 44 550 1 46 552 1 552 922 1 922 553 1 553 46 1 552 30 1 30 554 1
		 554 922 1 554 29 1 549 922 1 45 553 1 31 555 1 555 923 1 923 556 1 556 31 1 555 30 1
		 552 923 1 46 557 1 557 923 1 557 47 1 47 556 1 16 558 1 558 924 1 924 559 1 559 16 1
		 558 87 1 87 560 1 560 924 1 560 88 1 88 561 1 561 924 1 561 32 1 32 559 1 511 925 1
		 925 562 1 562 33 1 83 563 1 563 925 1 563 72 1 489 925 1 0 562 1 84 564 1 564 926 1
		 926 490 1 564 85 1 513 926 1 562 926 1 2 565 1 565 927 1 927 486 1 565 35 1 516 927 1
		 34 566 1 566 927 1 566 4 1 521 928 1 928 567 1 567 36 1 565 928 1 493 928 1 6 567 1
		 524 929 1 929 568 1 568 37 1 567 929 1 496 929 1 8 568 1 527 930 1 930 569 1 569 38 1
		 568 930 1 499 930 1 10 569 1 530 931 1 931 570 1 570 39 1 569 931 1 502 931 1 12 570 1
		 533 932 1 932 571 1 571 40 1 570 932 1 505 932 1 14 571 1 230 572 1 572 933 1 933 573 1
		 573 230 1 572 231 1 231 574 1 574 933 1 574 232 1 232 575 1 575 933 1 575 233 1 233 573 1
		 13 576 1 576 934 1 934 577 1 577 13 1 576 42 1 538 934 1 41 578 1 578 934 1 578 15 1
		 15 577 1 11 579 1 579 935 1 935 580 1 580 11 1 579 43 1 43 581 1 581 935 1 581 42 1
		 576 935 1 13 580 1 9 582 1 582 936 1 936 583 1 583 9 1 582 44 1 546 936 1 579 936 1
		 11 583 1 7 584 1 584 937 1 937 585 1 585 7 1 584 45 1 550 937 1;
	setAttr ".ed[1162:1327]" 582 937 1 9 585 1 3 586 1 586 938 1 938 587 1 587 3 1
		 586 46 1 553 938 1 584 938 1 7 587 1 557 939 1 939 588 1 588 47 1 586 939 1 3 589 1
		 589 939 1 589 5 1 5 588 1 561 940 1 940 590 1 590 32 1 88 591 1 591 940 1 591 89 1
		 89 592 1 592 940 1 592 1 1 1 590 1 48 593 1 593 941 1 941 594 1 594 48 1 593 60 1
		 60 595 1 595 941 1 595 90 1 90 596 1 596 941 1 596 91 1 91 594 1 50 597 1 597 942 1
		 942 598 1 598 50 1 597 49 1 49 599 1 599 942 1 599 61 1 61 600 1 600 942 1 600 62 1
		 62 598 1 51 601 1 601 943 1 943 602 1 602 51 1 601 50 1 598 943 1 62 603 1 603 943 1
		 603 63 1 63 602 1 52 604 1 604 944 1 944 605 1 605 52 1 604 51 1 602 944 1 63 606 1
		 606 944 1 606 64 1 64 605 1 53 607 1 607 945 1 945 608 1 608 53 1 607 52 1 605 945 1
		 64 609 1 609 945 1 609 65 1 65 608 1 54 610 1 610 946 1 946 611 1 611 54 1 610 53 1
		 608 946 1 65 612 1 612 946 1 612 66 1 66 611 1 55 613 1 613 947 1 947 614 1 614 55 1
		 613 54 1 611 947 1 66 615 1 615 947 1 615 67 1 67 614 1 56 616 1 616 948 1 948 617 1
		 617 56 1 616 55 1 614 948 1 67 618 1 618 948 1 618 68 1 68 617 1 57 619 1 619 949 1
		 949 620 1 620 57 1 619 56 1 617 949 1 68 621 1 621 949 1 621 69 1 69 620 1 59 622 1
		 622 950 1 950 623 1 623 59 1 622 58 1 58 624 1 624 950 1 624 70 1 70 625 1 625 950 1
		 625 71 1 71 623 1 48 626 1 626 951 1 951 593 1 626 59 1 623 951 1 71 627 1 627 951 1
		 627 60 1 60 628 1 628 952 1 952 595 1 628 1 1 592 952 1 89 629 1 629 952 1 629 90 1
		 600 953 1 953 630 1 630 62 1 61 631 1 631 953 1 631 5 1 589 953 1 3 630 1 603 954 1
		 954 632 1 632 63 1 630 954 1 587 954 1 7 632 1 606 955 1 955 633 1;
	setAttr ".ed[1328:1493]" 633 64 1 632 955 1 585 955 1 9 633 1 609 956 1 956 634 1
		 634 65 1 633 956 1 583 956 1 11 634 1 612 957 1 957 635 1 635 66 1 634 957 1 580 957 1
		 13 635 1 615 958 1 958 636 1 636 67 1 635 958 1 577 958 1 15 636 1 235 637 1 637 959 1
		 959 638 1 638 235 1 637 234 1 234 639 1 639 959 1 639 236 1 236 640 1 640 959 1 640 237 1
		 237 638 1 621 960 1 960 641 1 641 69 1 68 642 1 642 960 1 642 41 1 540 960 1 25 641 1
		 625 961 1 961 643 1 643 71 1 70 644 1 644 961 1 644 16 1 559 961 1 32 643 1 627 962 1
		 962 628 1 643 962 1 590 962 1 72 645 1 645 963 1 963 491 1 645 48 1 594 963 1 91 646 1
		 646 963 1 646 92 1 487 964 1 964 647 1 647 74 1 73 648 1 648 964 1 648 49 1 597 964 1
		 50 647 1 494 965 1 965 649 1 649 75 1 647 965 1 601 965 1 51 649 1 497 966 1 966 650 1
		 650 76 1 649 966 1 604 966 1 52 650 1 500 967 1 967 651 1 651 77 1 650 967 1 607 967 1
		 53 651 1 503 968 1 968 652 1 652 78 1 651 968 1 610 968 1 54 652 1 506 969 1 969 653 1
		 653 79 1 652 969 1 613 969 1 55 653 1 80 654 1 654 970 1 970 655 1 655 80 1 654 79 1
		 653 970 1 616 970 1 56 655 1 535 971 1 971 656 1 656 81 1 655 971 1 619 971 1 57 656 1
		 510 972 1 972 657 1 657 83 1 82 658 1 658 972 1 658 58 1 622 972 1 59 657 1 563 973 1
		 973 645 1 657 973 1 626 973 1 93 659 1 659 974 1 974 660 1 660 93 1 659 94 1 94 661 1
		 661 974 1 661 85 1 564 974 1 84 660 1 94 662 1 662 975 1 975 661 1 662 95 1 95 663 1
		 663 975 1 663 86 1 512 975 1 560 976 1 976 664 1 664 88 1 87 665 1 665 976 1 665 96 1
		 96 666 1 666 976 1 666 97 1 97 664 1 591 977 1 977 667 1 667 89 1 664 977 1 97 668 1
		 668 977 1 668 98 1 98 667 1 629 978 1 978 669 1 669 90 1 667 978 1;
	setAttr ".ed[1494:1659]" 98 670 1 670 978 1 670 99 1 99 669 1 596 979 1 979 671 1
		 671 91 1 669 979 1 99 672 1 672 979 1 672 100 1 100 671 1 646 980 1 980 673 1 673 92 1
		 671 980 1 100 674 1 674 980 1 674 101 1 101 673 1 492 981 1 981 660 1 673 981 1 101 675 1
		 675 981 1 675 93 1 102 676 1 676 982 1 982 677 1 677 102 1 676 103 1 103 678 1 678 982 1
		 678 94 1 659 982 1 93 677 1 103 679 1 679 983 1 983 678 1 679 104 1 104 680 1 680 983 1
		 680 95 1 662 983 1 666 984 1 984 681 1 681 97 1 96 682 1 682 984 1 682 105 1 105 683 1
		 683 984 1 683 106 1 106 681 1 668 985 1 985 684 1 684 98 1 681 985 1 106 685 1 685 985 1
		 685 107 1 107 684 1 670 986 1 986 686 1 686 99 1 684 986 1 107 687 1 687 986 1 687 108 1
		 108 686 1 672 987 1 987 688 1 688 100 1 686 987 1 108 689 1 689 987 1 689 109 1 109 688 1
		 674 988 1 988 690 1 690 101 1 688 988 1 109 691 1 691 988 1 691 110 1 110 690 1 675 989 1
		 989 677 1 690 989 1 110 692 1 692 989 1 692 102 1 566 990 1 990 693 1 693 4 1 34 694 1
		 694 990 1 694 103 1 676 990 1 102 693 1 518 991 1 991 694 1 18 695 1 695 991 1 695 104 1
		 679 991 1 683 992 1 992 696 1 696 106 1 105 697 1 697 992 1 697 31 1 556 992 1 47 696 1
		 685 993 1 993 698 1 698 107 1 696 993 1 588 993 1 5 698 1 687 994 1 994 699 1 699 108 1
		 698 994 1 631 994 1 61 699 1 689 995 1 995 700 1 700 109 1 699 995 1 599 995 1 49 700 1
		 691 996 1 996 701 1 701 110 1 700 996 1 648 996 1 73 701 1 692 997 1 997 693 1 701 997 1
		 485 997 1 17 702 1 702 998 1 998 508 1 702 130 1 292 998 1 129 703 1 703 998 1 703 82 1
		 86 704 1 704 999 1 999 514 1 704 134 1 297 999 1 702 999 1 19 705 1 705 1000 1 1000 517 1
		 705 136 1 301 1000 1 137 706 1 706 1000 1 706 18 1 20 707 1 707 1001 1;
	setAttr ".ed[1660:1825]" 1001 519 1 707 139 1 303 1001 1 705 1001 1 21 708 1
		 708 1002 1 1002 522 1 708 141 1 306 1002 1 707 1002 1 22 709 1 709 1003 1 1003 525 1
		 709 143 1 309 1003 1 708 1003 1 23 710 1 710 1004 1 1004 528 1 710 145 1 312 1004 1
		 709 1004 1 24 711 1 711 1005 1 1005 531 1 711 147 1 315 1005 1 710 1005 1 238 712 1
		 712 1006 1 1006 713 1 713 238 1 712 239 1 239 714 1 714 1006 1 714 240 1 240 715 1
		 715 1006 1 715 241 1 241 713 1 26 716 1 716 1007 1 1007 539 1 716 152 1 323 1007 1
		 153 717 1 717 1007 1 717 25 1 27 718 1 718 1008 1 1008 719 1 719 27 1 718 156 1 156 720 1
		 720 1008 1 720 152 1 716 1008 1 26 719 1 28 721 1 721 1009 1 1009 547 1 721 158 1
		 331 1009 1 718 1009 1 29 722 1 722 1010 1 1010 551 1 722 160 1 334 1010 1 721 1010 1
		 30 723 1 723 1011 1 1011 554 1 723 162 1 337 1011 1 722 1011 1 31 724 1 724 1012 1
		 1012 555 1 724 163 1 339 1012 1 723 1012 1 16 725 1 725 1013 1 1013 558 1 725 166 1
		 342 1013 1 165 726 1 726 1013 1 726 87 1 69 727 1 727 1014 1 1014 620 1 727 199 1
		 402 1014 1 198 728 1 728 1014 1 728 57 1 58 729 1 729 1015 1 1015 624 1 729 200 1
		 408 1015 1 202 730 1 730 1015 1 730 70 1 242 731 1 731 1016 1 1016 732 1 732 242 1
		 731 243 1 243 733 1 733 1016 1 733 244 1 244 734 1 734 1016 1 734 245 1 245 732 1
		 730 1017 1 1017 644 1 427 1017 1 725 1017 1 728 1018 1 1018 656 1 439 1018 1 150 735 1
		 735 1018 1 735 81 1 703 1019 1 1019 658 1 441 1019 1 729 1019 1 95 736 1 736 1020 1
		 1020 663 1 736 206 1 446 1020 1 704 1020 1 726 1021 1 1021 665 1 449 1021 1 207 737 1
		 737 1021 1 737 96 1 104 738 1 738 1022 1 1022 680 1 738 215 1 463 1022 1 736 1022 1
		 737 1023 1 1023 682 1 466 1023 1 216 739 1 739 1023 1 739 105 1 706 1024 1 1024 695 1
		 478 1024 1 738 1024 1 739 1025 1 1025 697 1 480 1025 1 724 1025 1 354 1026 1 1026 740 1;
	setAttr ".ed[1826:1991]" 740 128 1 148 741 1 741 1026 1 741 223 1 355 1026 1
		 222 740 1 317 1027 1 1027 741 1 149 742 1 742 1027 1 742 224 1 357 1027 1 438 1028 1
		 1028 742 1 127 743 1 743 1028 1 743 225 1 358 1028 1 289 1029 1 1029 743 1 740 1029 1
		 356 1029 1 425 1030 1 1030 744 1 744 197 1 154 745 1 745 1030 1 745 227 1 420 1030 1
		 226 744 1 361 1031 1 1031 745 1 170 746 1 746 1031 1 746 228 1 422 1031 1 419 1032 1
		 1032 746 1 195 747 1 747 1032 1 747 229 1 423 1032 1 401 1033 1 1033 747 1 744 1033 1
		 421 1033 1 507 1034 1 1034 748 1 748 14 1 79 749 1 749 1034 1 749 231 1 572 1034 1
		 230 748 1 654 1035 1 1035 749 1 80 750 1 750 1035 1 750 232 1 574 1035 1 534 1036 1
		 1036 750 1 40 751 1 751 1036 1 751 233 1 575 1036 1 571 1037 1 1037 751 1 748 1037 1
		 573 1037 1 618 1038 1 1038 752 1 752 68 1 67 753 1 753 1038 1 753 234 1 637 1038 1
		 235 752 1 636 1039 1 1039 753 1 15 754 1 754 1039 1 754 236 1 639 1039 1 578 1040 1
		 1040 754 1 41 755 1 755 1040 1 755 237 1 640 1040 1 642 1041 1 1041 755 1 752 1041 1
		 638 1041 1 735 1042 1 1042 756 1 756 81 1 150 757 1 757 1042 1 757 239 1 712 1042 1
		 238 756 1 318 1043 1 1043 757 1 147 758 1 758 1043 1 758 240 1 714 1043 1 711 1044 1
		 1044 758 1 24 759 1 759 1044 1 759 241 1 715 1044 1 536 1045 1 1045 759 1 756 1045 1
		 713 1045 1 717 1046 1 1046 760 1 760 25 1 153 761 1 761 1046 1 761 243 1 731 1046 1
		 242 760 1 424 1047 1 1047 761 1 199 762 1 762 1047 1 762 244 1 733 1047 1 727 1048 1
		 1048 762 1 69 763 1 763 1048 1 763 245 1 734 1048 1 641 1049 1 1049 763 1 760 1049 1
		 732 1049 1 364 1050 1 1050 764 1 764 155 1 151 765 1 765 1050 1 765 246 1 246 766 1
		 766 1050 1 766 247 1 247 764 1 321 1051 1 1051 765 1 152 767 1 767 1051 1 767 248 1
		 248 768 1 768 1051 1 768 246 1 720 1052 1 1052 767 1 156 769 1 769 1052 1 769 249 1
		 249 770 1;
	setAttr ".ed[1992:2143]" 770 1052 1 770 248 1 330 1053 1 1053 769 1 764 1053 1
		 247 771 1 771 1053 1 771 249 1 548 1054 1 1054 772 1 772 43 1 27 773 1 773 1054 1
		 773 251 1 251 774 1 774 1054 1 774 250 1 250 772 1 719 1055 1 1055 773 1 26 775 1
		 775 1055 1 775 252 1 252 776 1 776 1055 1 776 251 1 537 1056 1 1056 775 1 42 777 1
		 777 1056 1 777 253 1 253 778 1 778 1056 1 778 252 1 581 1057 1 1057 777 1 772 1057 1
		 250 779 1 779 1057 1 779 253 1 766 1058 1 1058 780 1 780 247 1 246 781 1 781 1058 1
		 781 254 1 254 782 1 782 1058 1 782 255 1 255 780 1 768 1059 1 1059 781 1 248 783 1
		 783 1059 1 783 256 1 256 784 1 784 1059 1 784 254 1 770 1060 1 1060 783 1 249 785 1
		 785 1060 1 785 257 1 257 786 1 786 1060 1 786 256 1 771 1061 1 1061 785 1 780 1061 1
		 255 787 1 787 1061 1 787 257 1 774 1062 1 1062 788 1 788 250 1 251 789 1 789 1062 1
		 789 259 1 259 790 1 790 1062 1 790 258 1 258 788 1 776 1063 1 1063 789 1 252 791 1
		 791 1063 1 791 260 1 260 792 1 792 1063 1 792 259 1 778 1064 1 1064 791 1 253 793 1
		 793 1064 1 793 261 1 261 794 1 794 1064 1 794 260 1 779 1065 1 1065 793 1 788 1065 1
		 258 795 1 795 1065 1 795 261 1 782 1066 1 1066 796 1 796 255 1 254 797 1 797 1066 1
		 797 262 1 324 1066 1 263 796 1 784 1067 1 1067 797 1 256 798 1 798 1067 1 798 264 1
		 326 1067 1 786 1068 1 1068 798 1 257 799 1 799 1068 1 799 265 1 327 1068 1 787 1069 1
		 1069 799 1 796 1069 1 325 1069 1 790 1070 1 1070 800 1 800 258 1 259 801 1 801 1070 1
		 801 267 1 541 1070 1 266 800 1 792 1071 1 1071 801 1 260 802 1 802 1071 1 802 268 1
		 543 1071 1 794 1072 1 1072 802 1 261 803 1 803 1072 1 803 269 1 544 1072 1 795 1073 1
		 1073 803 1 800 1073 1 542 1073 1;
	setAttr -s 1074 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.70616782 -0.079012424 0.7035737 -0.70168155
		 -0.20258187 0.6830653 -0.2463454 -0.15659048 0.95641959 -0.13864559 -0.030884732
		 0.98983735 -0.63774532 -0.4857631 0.59770501 -0.34116641 -0.41770685 0.84206671 -0.34018981
		 -0.27466658 0.89931941 -0.3205359 -0.026062807 0.94686729 -0.2928251 0.016663106
		 0.95599228 -0.63884395 0.17456588 0.74922943 -0.6742149 0.050630208 0.73677784 0.090792567
		 0.054383986 0.99435407 -0.11743522 0.21198156 0.97018343 -0.68623918 -0.027893918
		 0.72682881 0.16248055 -0.027527696 0.98629719 -0.09976501 -0.019684438 0.99481183
		 -0.10452589 0.042664878 0.99359113 -0.087038785 0.1843318 0.97897273 0.4133732 -0.84313488
		 -0.34379101 0.34128848 -0.85161901 -0.39777824 0.74694049 -0.18588825 -0.63835567
		 0.59025848 -0.18057802 -0.78670615 0.46458328 -0.16876736 -0.8692587 0.25830865 -0.86242259
		 -0.43528551 0.75939208 -0.057374798 -0.64806056 0.61070591 -0.057222206 -0.78975797
		 0.73754084 -0.23764764 -0.63206887 0.59581286 -0.24048585 -0.7662282 0.4728843 -0.24347667
		 -0.84679711 0.48509172 -0.055909909 -0.87264627 -0.38718832 -0.84881133 0.3599048
		 -0.31681263 -0.84978789 0.42124698 -0.73558766 -0.13205358 0.66441846 -0.59993285
		 -0.13440351 0.78865933 -0.4621723 -0.13702811 0.87609488 -0.2394177 -0.8514359 0.46656698
		 -0.73656422 -0.014801477 0.67616808 -0.60264903 -0.015137181 0.79784536 -0.73528242
		 0 0.67772454 -0.60203862 0 0.79845577 -0.45808282 0 0.8888821 -0.45979187 -0.015533921
		 0.88787502 -0.73427534 0.055146948 0.67659533 -0.57173377 0.046205021 0.81911677
		 -0.72728658 0.15018159 0.66966766 -0.50337231 0.13946959 0.8527177 0.1911069 -0.081453905
		 0.97817928 -0.36536759 -0.0026245918 0.93084508 -0.96063113 0.27719963 0.017792292
		 -0.98858607 0.15042573 0.0057069613 -0.82140571 0.52595598 -0.22052675 -0.69878232
		 0.68434703 -0.20819727 -0.99722284 0.068086796 0.030060731 -0.90719318 0.39207128
		 0.15247047 -0.41016877 0.78539383 0.46354565 -0.55833614 0.81496626 -0.15509507 -0.62947476
		 0.73995179 -0.23706779 -0.99667346 -0.04342784 0.068697162 -0.99731439 -0.063356429
		 0.036225472 -0.97396773 -0.031434067 0.22434156 -0.93298137 -0.0039368877 0.35981321
		 -0.97872859 0.037995543 0.20151372 -0.9454329 0.03518784 0.32383192 -0.95883054 -0.21164586
		 0.18921477 -0.99185157 0.033692434 0.12274545 -0.96420181 0.040650655 0.26190984
		 -0.94994962 -0.20728171 0.23358867 -0.99810785 0.016541032 0.059053317 -0.9549852
		 0.056703389 0.29108554 -0.95809811 0.058870204 0.28028199 -0.97039706 -0.0014648885
		 0.24143192 -0.944731 -0.25898007 0.20096439 0.98281807 -0.14166692 -0.11828974 0.96728414
		 -0.14703818 -0.20667134 0.56883448 -0.81963563 -0.067842647 0.62987149 -0.7762993
		 -0.024231697 0.93835258 -0.16119877 -0.30570391 0.50282294 -0.85100865 -0.15137181
		 0.96819973 -0.21414839 -0.12906277 0.94662315 -0.21765801 -0.23767816 0.9721061 -0.047303692
		 -0.22965178 0.99087495 -0.046205021 -0.12640767 0.91369367 -0.22425 -0.33890805 0.9414655
		 -0.050599687 -0.33320108 -0.97894222 -0.11505478 0.16843165 -0.93859679 -0.11743522
		 0.32438123 -0.49925229 -0.84157842 0.20599994 -0.52751243 -0.84289074 0.10599078
		 -0.89556569 -0.12240974 0.42768639 -0.47148046 -0.84319592 0.25824761 -0.9832148
		 0 0.18234809 -0.93411052 0 0.3569445 -0.93627733 -0.012817774 0.35096285 -0.98358107
		 -0.012512589 0.17987609 -0.88695943 0 0.46180609 -0.89007235 -0.013489181 0.45561084
		 -0.80269784 -0.092623673 0.58912933 -0.90139472 -0.29593799 0.31598866 -0.93853575
		 -0.047700431 0.34180731 -0.96963406 -0.025635548 0.243202 -0.98492384 -0.12289803
		 -0.12167729 -0.92455822 -0.009582812 0.380871 -0.20880765 -0.95916623 0.19064912
		 -0.057527389 -0.40812403 -0.91109955 -0.051057465 -0.25308999 0.96606344 0.58964813
		 -0.44816431 0.67186499 0.37995544 -0.92336804 0.054811243 0.63032931 -0.51341289
		 -0.58226264 0.93737602 -0.0073244423 0.34821621 0.96581924 -0.020569475 0.25830865
		 0.9846797 -0.046021912 0.16806543 0.98776209 -0.0035096286 0.15582751 0.96758932
		 -0.12179937 -0.2211066 0.94009215 -0.28565323 0.18591876 0.83654284 -0.069643237
		 0.54341257 0.9881283 -0.015778068 0.15271463 0.99755853 -0.0011291848 0.069551684
		 0.70659506 -0.1826838 -0.68361461 0.72969759 0 -0.68373668 0.97631764 0 0.21622364
		 0.92541277 -0.31870478 0.20496231 0.70659506 0.1826838 -0.68361461 0.92541277 0.31870478
		 0.20496231 0.35184789 0.1826838 0.91802728 0.37275308 0 0.92791528 0.35184789 -0.1826838
		 0.91802728 -0.86568803 -0.24820703 -0.43464461 0.41477707 -0.90737635 -0.067598499
		 0.29419842 -0.95565659 0.012756737 -0.91973633 -0.26010925 -0.29392377 0.96414077
		 -0.13129063 0.23056734 0.96584976 -0.19339579 0.17236854 0.96429336 -0.14108707 0.22403638
		 0.33487961 -0.91592151 0.22107609 -0.94952238 -0.26868495 -0.16180913 -0.88354135
		 -0.16849269 -0.43693349 -0.88894314 -0.056917019 -0.4544206 -0.94695884 -0.058290355
		 -0.31595814 -0.93868834 -0.15842158 -0.30610064 -0.98278755 -0.059938353 -0.17462692
		 -0.97311318 -0.15430158 -0.17093417 0.92568743 -0.27323222 0.26157415 -0.43772697
		 -0.86397898 -0.24872585 -0.45118564 -0.87566757 -0.1719718 0.96362191 -0.18964201
		 0.18829921 -0.4456923 -0.89019442 -0.094088562 0.98443556 -0.14127018 0.10434278
		 0.9956969 0.0070497757 0.092226937 0.99246192 0.037049472 0.11664174 0.99331647 0.043671988
		 0.10681479 0.99511701 0.084078491 0.051545762 0.9967345 0.042390209 0.068453014 0.98660237
		 -0.027253028 0.16080202 0.95199436 0.23465683 0.19644764 0.95776236 0.15070041 0.24481948
		 0.95290995 0.013122959 0.3028962 0.96621603 0.0061037019 0.25760674 0.9708243 0.07415998
		 0.22800379 0.99029511 0.050416578 0.12924589 0.99554431 0.079073459 0.051301613 0.95641959
		 0.045991395 0.28830835 0.96560562 0.04544206 0.2558977 -0.95583969 0.10477004 0.27448347
		 -0.62498856 0.34025085 0.70253611 -0.16391492 0.43882564 0.88344979 -0.99957275 -0.027771844
		 0.0067445906;
	setAttr ".n[166:331]" -type "float3"  -0.99334699 -0.039155249 -0.10824915
		 -0.9818415 -0.072847679 0.17499313 -0.90304267 -0.33845028 0.26444289 -0.99658191
		 -0.042176582 0.070772424 0.87456894 -0.17743461 -0.45124668 0.46186712 -0.84899443
		 -0.25659963 0.85268718 -0.23160496 -0.46821496 0.87972653 -0.054689169 -0.47230446
		 -0.83999145 -0.12790307 0.52726829 -0.44096196 -0.84661394 0.29792169 -0.83486432
		 0 0.55040133 -0.83727533 -0.014252144 0.54658651 -0.88729513 0.11517686 0.44651631
		 -0.85326701 0.039277323 0.51994383 -0.72588277 0.15933713 0.66908783 -0.9764092 0.03173925
		 0.21347697 -0.23978393 -0.84490496 0.47810298 -0.24091311 0.077883236 0.96740621
		 -0.78359324 -0.16025269 -0.60020751 0.0075380718 -0.34211248 -0.93960387 0.7003693
		 -0.30991545 -0.64296395 0.96365243 -0.26343578 0.043977171 0.63975954 -0.073580123
		 0.76503801 0.65285194 -0.0028687399 0.75746942 0.68453014 0.050965913 0.72716451
		 0.84920806 0.027802363 0.52726829 0.78408152 -0.0075685903 0.62056339 0.70616782
		 0.15155491 0.69161046 0.90588093 0.11023286 0.40891752 0.64198738 -0.13171789 0.75527209
		 0.63811153 -0.015076144 0.76976836 0.77813041 -0.014343699 0.6279183 0.8036744 -0.13724174
		 0.57899714 0.93359172 -0.011322367 0.35813472 -0.66341138 -0.23770867 -0.70946378
		 0.33576465 -0.84707177 0.41193885 0.4293344 -0.87066257 0.23987548 -0.7765435 -0.23953979
		 -0.5827204 -0.67476422 -0.18515579 -0.7144078 -0.68495744 -0.057374798 -0.72631001
		 -0.80074465 -0.056886502 -0.59627062 -0.79702139 -0.18018128 -0.57637256 0.63942379
		 -0.37028107 0.67375714 -0.35200047 -0.85821098 -0.37348551 -0.40351573 -0.85659355
		 -0.32148197 0.84347057 -0.37055573 0.38883632 0.98062074 0.0029908139 0.1957152 0.94448686
		 -0.10623493 0.31083101 0.7041536 -0.0054017762 0.71001315 0.69484544 -0.090578936
		 0.71340066 0.92440563 0.052919097 0.37766656 0.98434401 0.10422071 0.14200263 0.72591329
		 0.034272287 0.68688011 0.68788719 0.049317911 0.72411269 0.67076629 0.016113773 0.74147773
		 0.99496442 0.09854427 0.017334513 -0.12540056 0.23108615 0.96481216 -0.0057374798
		 0.056245614 0.99838251 0.43504134 -0.026276436 0.89999086 0.12591937 0.08676412 0.98821986
		 0.11761834 0.025025178 0.99273658 0.6227302 0.047486801 0.78096867 0.43104342 -0.039521471
		 0.90145576 0.39002654 -0.11572619 0.91348004 0.31562242 -0.089907527 0.94457841 0.072084717
		 -0.31852168 0.94515824 0.37385175 -0.24216437 0.89529097 0.49507126 0.0084841456
		 0.86877042 0.11276589 -0.060731836 0.99176002 0.39338359 -0.18872645 0.89977723 0.39616078
		 0.070131533 0.91546375 0.40546891 0.079165012 0.91064179 0.62910855 0.065095983 0.7745598
		 0.099917598 0.0093997009 0.9949339 -0.0036927396 -0.15726188 -0.98751795 -0.30991545
		 -0.15833002 -0.93746758 -0.14923552 -0.85476243 -0.49702445 0.0095522935 -0.83190405
		 -0.55479598 -0.45854062 -0.16675314 -0.8728599 -0.23657948 -0.87603384 -0.42014831
		 -0.0037537767 -0.25629443 -0.96658224 -0.31510362 -0.24881741 -0.91582996 -0.32447278
		 -0.055330057 -0.94424266 -0.0037537767 -0.056703389 -0.99838251 -0.46671957 -0.24149297
		 -0.85076451 -0.4786523 -0.05511643 -0.87624747 0.0032654805 -0.14514603 0.98937958
		 0.2900174 -0.14087343 0.94656211 0.14416943 -0.85427409 0.49940488 0.001495407 -0.85717338
		 0.51496935 0.45548874 -0.13562426 0.87981808 0.23633534 -0.85052031 0.46977141 0.0030213324
		 0 0.99996948 0.27973264 0 0.9600513 0.28238776 -0.016052736 0.95913571 0.0030518509
		 -0.016602069 0.99984741 0.45115513 0 0.89242226 0.45289469 -0.015320292 0.89141512
		 0.0024109622 -0.49058503 0.87136447 -0.091463976 -0.3823359 0.91946167 0.21274453
		 -0.07437361 0.97424239 0.0029297769 -0.11154515 0.99374372 -0.19815668 -0.082918793
		 0.97662282 0.35670033 -0.0024719993 0.93420208 0 -1 0 -0.40385145 -0.89928889 -0.16782129
		 -0.56691182 -0.80428481 0.17798394 0.00042725913 -0.97723317 0.21207312 -0.6319468
		 -0.51878417 -0.57570118 -0.93813896 -0.34116641 0.058809169 0 -1 0 -0.41126743 -0.89230019
		 0.1859798 -0.2496414 -0.96826077 0.010711997 0 -1 0 -0.61607713 -0.42860195 0.66081727
		 -0.40089113 -0.91344953 0.069612719 -0.12656026 0.77932066 0.61366618 -0.085451826
		 0.80434585 0.58793908 0.3003937 0.92571795 0.22971281 -0.056947537 0.91253394 0.40498063
		 0.56675923 0.59288311 0.57200843 0.55137789 0.83422345 0.0038758507 0.60377818 0.79247415
		 -0.085940123 0.57777643 0.8145085 0.051881466 -0.01678518 0.97744679 0.21048616 -0.13608204
		 0.38975188 0.91079438 -0.17572558 0.53434861 0.82677692 0.37986389 0.12247078 0.91686755
		 0.27594838 -0.084414199 0.95742667 0.52772605 -0.090365306 0.84456921 0.12100589
		 -0.078463085 0.98953217 0.42048404 -0.25205237 0.87154758 0.36738181 0.018127995
		 0.92986846 0.28189948 0.038453322 0.95864743 -0.5498215 -0.17865536 -0.81594288 -0.29361859
		 -0.86989957 -0.39625233 -0.55464339 -0.23889889 -0.79702139 -0.56898707 -0.056581318
		 -0.82036805 0.55046237 -0.13318278 0.82415235 0.28971222 -0.84859765 0.44260994 0.55442977
		 -0.00051881466 0.83220923 0.55110323 -0.015015107 0.83425397 0.4723655 0.14133121
		 0.86999112 0.53239542 0.046021912 0.84521013 -0.69032866 -0.32270271 -0.64751124
		 -0.011993774 -0.34128848 -0.93987852 0.25321206 -0.8312937 0.49473557 -0.95788443
		 -0.27869502 0.068849757 0.75103003 -0.15970336 -0.64064455 0.98385572 0.032807399
		 0.17581713 0.71935177 0.16531877 0.67464215 0.23523667 0.079683825 0.96865749 -0.61494797
		 -0.076906644 0.78475296 0.061983094 -0.23917356 0.96899319 0.230018 -0.95556504 0.18430127
		 0.063905761 -0.40470594 -0.91219825 0.9135716 0.20282601 0.35242775 0.85561693 0.51280254
		 0.06994842 0.70238352 0.71163058 -0.013855403 0.78402048 -0.014007996 0.62053287
		 -0.36829737 0.053834651 0.9281289 -0.26303902 0.20542009 0.94262522 -0.36338389 -0.010620441
		 0.93154699 -0.28891873 -0.26285592 0.92052978 -0.37141025 -0.0056459242 0.92843407
		 -0.51576281 0.0022278512 0.85671562;
	setAttr ".n[332:497]" -type "float3"  0.30069888 -0.15955077 -0.94024473 0.1614124
		 -0.84557635 -0.50880456 0.30573443 -0.25009918 -0.91866815 0.31504259 -0.055848874
		 -0.9474166 -0.2812891 -0.14172795 0.94906461 -0.13989684 -0.85454881 0.50010681 -0.27140111
		 0 0.96243173 -0.27396467 -0.01617481 0.96157718 0.091982789 -0.38251901 0.9193396
		 -0.20618305 -0.074404128 0.97564626 0.39316997 -0.9032563 -0.17181921 0.5591296 -0.80965608
		 0.1782281 0.94088566 -0.33454391 0.052369762 0.3854793 -0.90356153 0.18698691 0.23490097
		 -0.97198403 0.0073549608 -0.10245064 0.80147707 0.58912933 -0.36173588 0.91348004
		 0.18622394 -0.60917997 0.79192477 -0.041566208 -0.10278634 0.48915067 0.86608475
		 -0.64403212 0.014343699 0.76482439 -0.66780603 -0.018127995 0.74407178 -0.98773158
		 0.003234962 -0.15594958 -0.98931855 0.045167394 -0.13855404 -0.99258399 0.01208533
		 0.12079226 -0.98770106 0.02130192 0.15475936 -0.88766134 0.054689169 0.45716727 -0.86468095
		 -0.025269326 0.50163275 -0.92370373 0.075716421 0.37549973 -0.92226934 -0.03909421
		 0.38450271 0.9899289 0.082613602 0.11478011 0.91927856 0.073427536 0.386639 0.97592092
		 0.0083010346 0.21790215 0.83803827 0.020294808 0.54518265 0.89556569 0.064333022
		 0.44016847 0.93911558 0.12775049 0.31891844 0.6769616 -0.00036622211 0.73598439 0.99676502
		 0.0765099 0.02438429 0.69768363 -0.0018005921 0.71636099 0.99807733 -0.0011902219
		 0.061525315 0.47740105 0.037385173 0.8778649 0.083773308 -0.035676137 0.99581897
		 0.51582384 -0.00048829615 0.85665458 0.12274545 0.024506364 0.99212623 0.19208349
		 0.03830073 0.98062074 0.718009 0.11133152 0.68706322 0.21823786 -0.0014343699 0.97585988
		 0.76589251 -0.026764732 0.64238411 -0.052888576 -0.037385173 0.99789423 -0.30924407
		 -0.029328287 0.950499 -0.023651846 -0.00091555528 0.99969482 -0.28907132 0.003357036
		 0.95727408 0.26435134 -0.044465467 0.96337777 0.29602954 -0.0093386639 0.95510727
		 -0.72511977 -0.0018005921 0.68858916 -0.69405192 0.017029328 0.71971798 -0.99627674
		 0.04644917 -0.072206795 -0.99981689 -0.008026368 -0.016510513 -0.99444562 0.010528886
		 0.10446486 -0.99945068 -0.012359996 0.030030213 -0.90295112 -0.098025456 0.41834772
		 -0.95648062 -0.045594655 0.28809473 -0.92883086 -0.14130069 0.34241769 -0.95922726
		 -0.058565021 0.27646717 0.97399825 -0.039002657 0.22302927 0.81997132 -0.02661214
		 0.57176429 0.9881283 -0.0012512589 0.15347758 0.88146609 -0.037324138 0.47071749
		 0.89431441 -0.082461014 0.43971068 0.8720969 -0.032837916 0.48817408 0.70729697 0.0036011841
		 0.70686972 0.99642932 -0.045319986 0.071016572 0.70131534 0.013061922 0.71269876
		 0.99691761 0.0059511093 0.078066349 0.51164281 -0.0552385 0.85741752 0.17117833 0.051911984
		 0.98385572 0.48008668 -0.015045625 0.87707144 0.20105594 0.026459549 0.97921687 0.2064272
		 -0.041383099 0.97756886 0.76226079 -0.16095462 0.62691122 0.18167669 -0.022217475
		 0.98309273 0.75142676 -0.069093905 0.65617847 -0.062410351 0.046174504 0.99697864
		 -0.33210242 0.037812434 0.94247264 -0.15369122 0.051515244 0.98675495 -0.43409526
		 0.011078219 0.90078431 0.1612598 0.039185766 0.98611408 0.0068971831 0.064821318
		 0.99786371 -0.71584213 -0.020844143 0.69792777 -0.99847406 -0.05261391 0.016083255
		 -0.99932861 -0.030060731 0.020569475 -0.96411026 0.018219549 0.26477858 -0.96288949
		 0.042939544 0.26636556 0.9949339 0.054475538 0.084109008 0.95483261 -0.010162664
		 0.2969451 0.95660269 -0.078951381 0.28043458 0.69939268 0.015137181 0.71452987 0.99176002
		 0.052674949 0.1167333 0.4376049 0.036988433 0.89837337 0.22925505 0.008209479 0.9733268
		 0.11700796 0.0074465163 0.99307227 0.71254617 0.047303692 0.70000303 -0.24420911
		 0.030274361 0.96923733 -0.54441971 -0.029908139 0.83825189 -0.071291238 0.053163245
		 0.9960326 -0.70616782 -0.079012424 -0.7035737 -0.13864559 -0.030884732 -0.98983735
		 -0.2463454 -0.15659048 -0.95641959 -0.70168155 -0.20258187 -0.6830653 -0.2928251
		 0.016663106 -0.95599228 -0.3205359 -0.026062807 -0.94686729 -0.34018981 -0.27466658
		 -0.89931941 -0.34116641 -0.41770685 -0.84206671 -0.63774532 -0.4857631 -0.59770501
		 -0.63884395 0.17456588 -0.74922943 -0.11743522 0.21198156 -0.97018343 0.090792567
		 0.054383986 -0.99435407 -0.6742149 0.050630208 -0.73677784 -0.087038785 0.1843318
		 -0.97897273 -0.10452589 0.042664878 -0.99359113 -0.09976501 -0.019684438 -0.99481183
		 0.16248055 -0.027527696 -0.98629719 -0.68623918 -0.027893918 -0.72682881 0.34128848
		 -0.85161901 0.39777824 0.4133732 -0.84313488 0.34379101 0.25830865 -0.86242259 0.43528551
		 0.46458328 -0.16876736 0.8692587 0.59025848 -0.18057802 0.78670615 0.74694049 -0.18588825
		 0.63835567 0.61070591 -0.057222206 0.78975797 0.75939208 -0.057374798 0.64806056
		 0.48509172 -0.055909909 0.87264627 0.4728843 -0.24347667 0.84679711 0.59581286 -0.24048585
		 0.7662282 0.73754084 -0.23764764 0.63206887 -0.31681263 -0.84978789 -0.42124698 -0.38718832
		 -0.84881133 -0.3599048 -0.2394177 -0.8514359 -0.46656698 -0.4621723 -0.13702811 -0.87609488
		 -0.59993285 -0.13440351 -0.78865933 -0.73558766 -0.13205358 -0.66441846 -0.60264903
		 -0.015137181 -0.79784536 -0.73656422 -0.014801477 -0.67616808 -0.45979187 -0.015533921
		 -0.88787502 -0.45808282 0 -0.8888821 -0.60203862 0 -0.79845577 -0.73528242 0 -0.67772454
		 -0.57182533 0.046021912 -0.81905574 -0.73427534 0.054994352 -0.67659533 -0.36564225
		 -0.0028077029 -0.93072301 0.1891232 -0.082583085 -0.97845393 -0.50367749 0.13892025
		 -0.85262614 -0.72731709 0.14981537 -0.66969818 -0.96063113 0.27719963 -0.017792292
		 -0.69878232 0.68434703 0.20819727 -0.82140571 0.52595598 0.22052675 -0.98858607 0.15042573
		 -0.0057069613 -0.62947476 0.73995179 0.23706779 -0.55833614 0.81496626 0.15509507
		 -0.41016877 0.78539383 -0.46354565 -0.90719318 0.39207128 -0.15247047 -0.99722284
		 0.068086796 -0.030060731 -0.99667346 -0.04342784 -0.068697162 -0.93298137 -0.0039368877
		 -0.35981321 -0.97396773 -0.031434067 -0.22434156 -0.99731439 -0.063356429 -0.036225472
		 -0.9454329 0.03518784 -0.32383192;
	setAttr ".n[498:663]" -type "float3"  -0.97872859 0.037995543 -0.20151372 -0.95883054
		 -0.21164586 -0.18921477 -0.94994962 -0.20728171 -0.23358867 -0.96420181 0.040650655
		 -0.26190984 -0.99185157 0.033692434 -0.12274545 -0.944731 -0.25898007 -0.20096439
		 -0.97039706 -0.0014648885 -0.24143192 -0.95809811 0.058870204 -0.28028199 -0.9549852
		 0.056703389 -0.29108554 -0.99810785 0.016541032 -0.059053317 0.98281807 -0.14166692
		 0.11828974 0.62987149 -0.7762993 0.024231697 0.56883448 -0.81963563 0.067842647 0.96728414
		 -0.14703818 0.20667134 0.50282294 -0.85100865 0.15137181 0.93835258 -0.16119877 0.30570391
		 0.96819973 -0.21414839 0.12906277 0.99087495 -0.046205021 0.12640767 0.9721061 -0.047303692
		 0.22965178 0.94662315 -0.21765801 0.23767816 0.9414655 -0.050599687 0.33320108 0.91369367
		 -0.22425 0.33890805 -0.97894222 -0.11505478 -0.16843165 -0.52751243 -0.84289074 -0.10599078
		 -0.49925229 -0.84157842 -0.20599994 -0.93859679 -0.11743522 -0.32438123 -0.47148046
		 -0.84319592 -0.25824761 -0.89556569 -0.12240974 -0.42768639 -0.9832148 0 -0.18234809
		 -0.98358107 -0.012512589 -0.17987609 -0.93627733 -0.012817774 -0.35096285 -0.93411052
		 0 -0.3569445 -0.89007235 -0.013489181 -0.45561084 -0.88695943 0 -0.46180609 -0.80269784
		 -0.092623673 -0.58912933 -0.96963406 -0.025635548 -0.243202 -0.93850517 -0.047761466
		 -0.34189886 -0.90115052 -0.29606006 -0.31659901 -0.92446667 -0.0097354045 -0.38108462
		 -0.98504591 -0.12381359 0.11966307 -0.058168277 -0.41032135 0.91006196 -0.20883816
		 -0.95880002 -0.19244972 0.62944424 -0.51548815 0.58137763 0.37949768 -0.92349011
		 -0.055787835 0.58964813 -0.44816431 -0.67186499 -0.051057465 -0.25308999 -0.96606344
		 0.93722343 -0.0070192572 -0.34861293 0.98712116 -0.0036317026 -0.15982543 0.98422194
		 -0.046418652 -0.17065951 0.9657582 -0.019714957 -0.25858334 0.99746698 -0.0013122959
		 -0.071077608 0.98782313 -0.01678518 -0.15460677 0.83541369 -0.070741907 -0.54503006
		 0.93987852 -0.28626361 -0.18613239 0.96704 -0.11963256 0.22470778 0.69682914 -0.18362987
		 0.69328898 0.92385632 -0.32374036 -0.20404676 0.97650075 0 -0.21549119 0.7205115
		 0 0.69341105 0.34400463 -0.18283638 -0.92095709 0.36524552 0 -0.9308756 0.34400463
		 0.18283638 -0.92095709 0.92385632 0.32374036 -0.20401624 0.69682914 0.18362987 0.69328898
		 -0.86544389 -0.24832912 0.4351024 -0.91949219 -0.25992614 0.2948088 0.29444259 -0.95553452
		 -0.015472884 0.41486862 -0.90725422 0.06881924 -0.94952238 -0.2684103 0.16226691
		 0.33552051 -0.91473126 -0.22504349 0.96337777 -0.14072084 -0.22818689 0.96508682
		 -0.19315165 -0.17673269 0.96417129 -0.1314127 -0.23035371 -0.88354135 -0.16849269
		 0.43693349 -0.93868834 -0.15842158 0.30610064 -0.9468978 -0.058229316 0.31617177
		 -0.8888821 -0.056947537 0.45454267 -0.97311318 -0.15430158 0.17093417 -0.98278755
		 -0.059846796 0.17474899 0.92568743 -0.27323222 -0.26157415 0.96362191 -0.18964201
		 -0.18829921 -0.45118564 -0.87566757 0.1719718 -0.43772697 -0.86397898 0.24872585
		 0.98443556 -0.14127018 -0.10434278 -0.4456923 -0.89019442 0.094088562 0.9956969 0.0070497757
		 -0.092226937 0.99511701 0.084078491 -0.051545762 0.99331647 0.043671988 -0.10681479
		 0.99246192 0.037049472 -0.11664174 0.98660237 -0.027253028 -0.16080202 0.9967345
		 0.042390209 -0.068453014 0.95199436 0.23465683 -0.19644764 0.96621603 0.0061037019
		 -0.25760674 0.95290995 0.013122959 -0.3028962 0.95776236 0.15070041 -0.24481948 0.96560562
		 0.04544206 -0.2558977 0.95641959 0.045991395 -0.28830835 0.99554431 0.079073459 -0.051301613
		 0.99029511 0.050416578 -0.12924589 0.9708243 0.07415998 -0.22800379 -0.62498856 0.34025085
		 -0.70253611 -0.95583969 0.10477004 -0.27448347 -0.16391492 0.43882564 -0.88344979
		 -0.99334699 -0.039155249 0.10824915 -0.99957275 -0.027771844 -0.0067445906 -0.90304267
		 -0.33845028 -0.26444289 -0.9818415 -0.072847679 -0.17499313 -0.99658191 -0.042176582
		 -0.070772424 0.46186712 -0.84899443 0.25659963 0.87456894 -0.17743461 0.45124668
		 0.87972653 -0.054689169 0.47230446 0.85268718 -0.23160496 0.46821496 -0.44096196
		 -0.84661394 -0.29792169 -0.83999145 -0.12790307 -0.52726829 -0.83724481 -0.014252144
		 -0.54658651 -0.83486432 0 -0.55040133 -0.85320598 0.039124727 -0.52003539 -0.88717306
		 0.11462753 -0.44691306 -0.72566915 0.16113773 -0.66887414 -0.23859371 0.080935091
		 -0.96771139 -0.23566394 -0.84444714 -0.48097169 -0.97677541 0.034211248 -0.21146275
		 0.63963741 -0.071657464 -0.76531267 0.96414077 -0.26142156 -0.045197912 0.70043033
		 -0.30973235 0.64296395 0.0061952574 -0.3404645 0.94021422 -0.78411204 -0.15875728
		 0.59993285 0.657857 -0.0026856288 -0.75310528 0.78890347 -0.0071413312 -0.61442918
		 0.85110021 0.028901029 -0.52415538 0.68727684 0.051667836 -0.72450942 0.90639973
		 0.11194189 -0.40726951 0.70705283 0.15271463 -0.69042021 0.64647359 -0.13193151 -0.75139624
		 0.8074587 -0.13754693 -0.57362592 0.78408152 -0.014343699 -0.62047184 0.64403212
		 -0.015076144 -0.76482439 0.93447673 -0.01126133 -0.35578477 -0.66377759 -0.23789178
		 0.70903653 -0.77669609 -0.23984496 0.58235419 0.43137914 -0.87057102 -0.23651844
		 0.33878598 -0.84740746 -0.40876493 -0.67476422 -0.18515579 0.7144078 -0.79702139
		 -0.18018128 0.57637256 -0.80077517 -0.056978058 0.59620959 -0.68501848 -0.057435833
		 0.72621846 0.63942379 -0.37028107 -0.67375714 0.84347057 -0.37055573 -0.38883632
		 -0.40351573 -0.85659355 0.32148197 -0.35200047 -0.85821098 0.37351602 0.94448686
		 -0.10623493 -0.31083101 0.98062074 0.0029908139 -0.1957152 0.69484544 -0.090578936
		 -0.71340066 0.7041536 -0.0054017762 -0.71001315 0.98434401 0.10422071 -0.14200263
		 0.92440563 0.052919097 -0.37766656 0.99496442 0.09854427 -0.017334513 0.67076629
		 0.016113773 -0.74147773 0.68788719 0.049317911 -0.72411269 0.72591329 0.034272287
		 -0.68688011 -0.12540056 0.23108615 -0.96481216 0.12591937 0.08676412 -0.98821986
		 0.43504134 -0.026276436 -0.89999086 -0.0057374798 0.056245614 -0.99838251 0.31562242
		 -0.089907527 -0.94457841 0.39002654 -0.11572619 -0.91348004;
	setAttr ".n[664:829]" -type "float3"  0.43104342 -0.039521471 -0.90145576 0.6227302
		 0.047486801 -0.78096867 0.11761834 0.025025178 -0.99273658 0.072084717 -0.31852168
		 -0.94515824 0.11276589 -0.060731836 -0.99176002 0.49507126 0.0084841456 -0.86877042
		 0.37385175 -0.24216437 -0.89529097 0.099917598 0.0093997009 -0.9949339 0.62910855
		 0.065095983 -0.7745598 0.40546891 0.079165012 -0.91064179 0.39616078 0.070131533
		 -0.91546375 0.39338359 -0.18872645 -0.89977723 -0.0036927396 -0.15726188 0.98751795
		 0.0095522935 -0.83190405 0.55479598 -0.14923552 -0.85476243 0.49702445 -0.30991545
		 -0.15833002 0.93746758 -0.23657948 -0.87603384 0.42014831 -0.45854062 -0.16675314
		 0.8728599 -0.0037537767 -0.25629443 0.96658224 -0.0037537767 -0.056703389 0.99838251
		 -0.32447278 -0.055330057 0.94424266 -0.31510362 -0.24881741 0.91582996 -0.4786523
		 -0.05511643 0.87624747 -0.46671957 -0.24149297 0.85076451 0.0032654805 -0.14514603
		 -0.98937958 0.001495407 -0.85717338 -0.51496935 0.14416943 -0.85427409 -0.49940488
		 0.2900174 -0.14087343 -0.94656211 0.23633534 -0.85052031 -0.46977141 0.45548874 -0.13562426
		 -0.87981808 0.0030213324 0 -0.99996948 0.0030518509 -0.016602069 -0.99984741 0.28238776
		 -0.016052736 -0.95913571 0.27973264 0 -0.9600513 0.45289469 -0.015320292 -0.89141512
		 0.45115513 0 -0.89242226 0.0024109622 -0.49058503 -0.87136447 0.0029297769 -0.11154515
		 -0.99374372 0.21243934 -0.074190497 -0.97433394 -0.09320353 -0.381695 -0.91955322
		 0.35618153 -0.0021057772 -0.93438518 -0.20184942 -0.080813013 -0.97604299 0 -1 0
		 0.00042725913 -0.97723317 -0.21207312 -0.56953645 -0.80254525 -0.17755669 -0.40556046
		 -0.89837337 0.16849269 -0.93963438 -0.337199 -0.057832576 -0.63359475 -0.51490831
		 0.5773797 0 -1 0 0 -1 0 -0.25006866 -0.96816921 -0.010345775 -0.41126743 -0.89230019
		 -0.1859798 -0.40174565 -0.91320539 -0.06781213 -0.61607713 -0.42860195 -0.66081727
		 -0.12656026 0.77932066 -0.61366618 -0.056947537 0.91253394 -0.40498063 0.3003937
		 0.92571795 -0.22971281 -0.085451826 0.80434585 -0.58793908 -0.01678518 0.97744679
		 -0.21048616 0.57777643 0.8145085 -0.051881466 0.60377818 0.79247415 0.085940123 0.55137789
		 0.83422345 -0.0038758507 0.56675923 0.59288311 -0.57200843 -0.17572558 0.53434861
		 -0.82677692 -0.13608204 0.38975188 -0.91079438 0.37986389 0.12247078 -0.91686755
		 0.52772605 -0.090365306 -0.84456921 0.27594838 -0.084414199 -0.95742667 0.12100589
		 -0.078463085 -0.98953217 0.36738181 0.018127995 -0.92986846 0.42048404 -0.25205237
		 -0.87154758 0.28189948 0.038453322 -0.95864743 -0.29361859 -0.86989957 0.39625233
		 -0.5498215 -0.17865536 0.81594288 -0.56901759 -0.056581318 0.82036805 -0.55476546
		 -0.23895992 0.79692984 0.29053622 -0.84865868 -0.44196907 0.55162203 -0.1332133 -0.82335889
		 0.55256814 -0.015015107 -0.83330792 0.55571157 -0.00048829615 -0.83135474 0.53300577
		 0.046479691 -0.84481341 0.47209081 0.14258248 -0.86989957 -0.69020659 -0.32309946
		 0.64741963 -0.95690787 -0.28260139 -0.066438794 0.26078066 -0.83254492 -0.48869288
		 -0.014160588 -0.34424877 0.93874937 -0.6151616 -0.08050783 -0.78426468 0.23966186
		 0.07406842 -0.96801662 0.7197485 0.16187018 -0.67506945 0.98324531 0.02822962 -0.17993712
		 0.75008392 -0.16220587 0.64110231 0.22879727 -0.95654166 -0.18066958 0.060731836
		 -0.23938718 -0.96899319 0.062501907 -0.40058595 0.91409039 0.85561693 0.51280254
		 -0.06994842 0.9135716 0.20282601 -0.35242775 0.70238352 0.71163058 0.013855403 0.78402048
		 -0.014007996 -0.62053287 -0.26303902 0.20542009 -0.94262522 -0.36829737 0.053834651
		 -0.9281289 -0.36338389 -0.010620441 -0.93154699 -0.37141025 -0.0056459242 -0.92843407
		 -0.28891873 -0.26285592 -0.92052978 -0.51576281 0.0022278512 -0.85671562 0.1614124
		 -0.84557635 0.50880456 0.30069888 -0.15955077 0.94024473 0.31504259 -0.055848874
		 0.9474166 0.30573443 -0.25009918 0.91866815 -0.13989684 -0.85454881 -0.50010681 -0.2812891
		 -0.14172795 -0.94906461 -0.27396467 -0.01617481 -0.96157718 -0.27140111 0 -0.96243173
		 -0.20636617 -0.074495681 -0.97561574 0.091067232 -0.3828547 -0.91927856 0.94012266
		 -0.3366802 -0.052919097 0.55778682 -0.81054109 -0.17847225 0.39228493 -0.9036836
		 0.17145298 0.23468734 -0.97201455 -0.0075685903 0.3854793 -0.90356153 -0.18698691
		 -0.36173588 0.91348004 -0.18622394 -0.10245064 0.80147707 -0.58912933 -0.60917997
		 0.79192477 0.041566208 -0.10278634 0.48915067 -0.86608475 -0.64403212 0.014343699
		 -0.76482439 -0.98931855 0.045167394 0.13855404 -0.98773158 0.003234962 0.15594958
		 -0.66783655 -0.018127995 -0.74407178 -0.98770106 0.02130192 -0.15475936 -0.99258399
		 0.01208533 -0.12079226 -0.86468095 -0.025269326 -0.50163275 -0.88766134 0.054689169
		 -0.45716727 -0.92226934 -0.03909421 -0.38450271 -0.92370373 0.075716421 -0.37549973
		 0.91927856 0.073427536 -0.386639 0.9899289 0.082613602 -0.11478011 0.93911558 0.12775049
		 -0.31891844 0.89556569 0.064333022 -0.44016847 0.83803827 0.020294808 -0.54518265
		 0.97592092 0.0083010346 -0.21790215 0.99676502 0.0765099 -0.02438429 0.6769616 -0.00036622211
		 -0.73598439 0.99807733 -0.0011902219 -0.061525315 0.69768363 -0.0018005921 -0.71636099
		 0.083773308 -0.035676137 -0.99581897 0.47740105 0.037385173 -0.8778649 0.12274545
		 0.024506364 -0.99212623 0.51582384 -0.00048829615 -0.85665458 0.718009 0.11133152
		 -0.68706322 0.19208349 0.03830073 -0.98062074 0.76589251 -0.026764732 -0.64238411
		 0.21823786 -0.0014343699 -0.97585988 -0.30924407 -0.029328287 -0.950499 -0.052888576
		 -0.037385173 -0.99789423 -0.28907132 0.003357036 -0.95727408 -0.023651846 -0.00091555528
		 -0.99969482 0.26432082 -0.044465467 -0.96337777 0.29602954 -0.0093386639 -0.95510727
		 -0.72511977 -0.0018005921 -0.68858916 -0.99981689 -0.008026368 0.016510513 -0.99627674
		 0.04644917 0.072206795 -0.69405192 0.017029328 -0.71971798 -0.99945068 -0.012359996
		 -0.030030213 -0.99444562 0.010528886 -0.10446486 -0.95648062 -0.045594655 -0.28809473
		 -0.90295112 -0.098025456 -0.41834772 -0.95922726 -0.058565021 -0.27646717;
	setAttr ".n[830:995]" -type "float3"  -0.92883086 -0.14130069 -0.34241769 0.81997132
		 -0.02661214 -0.57176429 0.97399825 -0.039002657 -0.22302927 0.8720969 -0.032837916
		 -0.48817408 0.89431441 -0.082461014 -0.43971068 0.88146609 -0.037324138 -0.47071749
		 0.9881283 -0.0012512589 -0.15347758 0.99642932 -0.045319986 -0.071016572 0.70729697
		 0.0036011841 -0.70686972 0.99691761 0.0059511093 -0.078066349 0.70131534 0.013061922
		 -0.71269876 0.17117833 0.051911984 -0.98385572 0.51164281 -0.0552385 -0.85741752
		 0.20105594 0.026459549 -0.97921687 0.48008668 -0.015045625 -0.87707144 0.76226079
		 -0.16095462 -0.62691122 0.2064272 -0.041383099 -0.97756886 0.75142676 -0.069093905
		 -0.65617847 0.18167669 -0.022217475 -0.98309273 -0.33210242 0.037812434 -0.94247264
		 -0.062410351 0.046174504 -0.99697864 -0.43409526 0.011078219 -0.90078431 -0.15369122
		 0.051515244 -0.98675495 0.1612598 0.039185766 -0.98611408 0.0068971831 0.064821318
		 -0.99786371 -0.99847406 -0.05261391 -0.016083255 -0.71584213 -0.020844143 -0.69792777
		 -0.99932861 -0.030060731 -0.020569475 -0.96411026 0.018219549 -0.26477858 -0.96288949
		 0.042939544 -0.26636556 0.95483261 -0.010162664 -0.2969451 0.9949339 0.054475538
		 -0.084109008 0.95660269 -0.078951381 -0.28043458 0.99176002 0.052674949 -0.1167333
		 0.69939268 0.015137181 -0.71452987 0.22925505 0.008209479 -0.9733268 0.4376049 0.036988433
		 -0.89837337 0.71254617 0.047303692 -0.70000303 0.11700796 0.0074465163 -0.99307227
		 -0.54441971 -0.029908139 -0.83825189 -0.24420911 0.030274361 -0.96923733 -0.071291238
		 0.053163245 -0.9960326 -0.94207585 0.33533737 0 -0.6588946 0.75222021 0 -0.6729942
		 0.73964661 0 -0.99880975 0.048493911 0 -0.99700916 0.077150792 0 -0.95709097 -0.2896817
		 0 -0.99978638 -0.020294808 0 -0.99844354 0.055391096 0 0.98986787 -0.14194159 0 0.65086824
		 -0.75917846 0 0.97689748 -0.21359904 0 0.99890131 -0.046327099 0 -0.99337751 -0.11465804
		 0 -0.53779715 -0.84304333 0 -1 0 0 -0.99990845 -0.01248207 0 -0.99969482 0.023590807
		 0 -0.99996948 -0.00085451826 0 0.61696219 -0.21988586 -0.75560778 0.9467147 -0.3220008
		 0 -0.33497116 -0.94219792 0 -0.044953763 -0.16248055 -0.98565632 0.61696219 -0.21988586
		 0.75560778 -0.044953763 -0.16248055 0.98565632 -0.64656514 -0.054536577 0.7608875
		 -0.9974975 -0.070284128 0 -0.64656514 -0.054536577 -0.7608875 0.99996948 -0.00079348125
		 -6.1037019e-005 0.99993896 0.0088808862 -0.00030518509 0.99874872 0.049470503 -0.00045777764
		 0.98641926 -0.16409802 -0.00067140721 0.99987793 -0.015320292 -0.00027466659 0.99273658
		 -0.012451552 -0.11947996 0.99301124 -0.01248207 0.11725211 -0.96237069 -0.27170628
		 6.1037019e-005 0.43601793 -0.89992982 -0.00082399976 -0.98803675 -0.15408796 0 -0.99813837
		 -0.060701314 0 0.99227881 -0.12384411 0 -0.43910033 -0.89840388 0 0.99996948 -0.0076601459
		 0 0.99505597 0.099093601 0 0.96456802 0.26380199 0 0.99996948 0.0072328867 0 0.99884027
		 0.048036136 0 -0.9288919 -0.37028107 0 -0.55269021 -0.83336896 0 0 -1 0 -0.011108737
		 0.99990845 0 0.65861994 0.75243384 0 0.62779623 0.77834404 0 0.67638171 -0.050508134
		 -0.73479414 0.99761957 -0.068910792 0 0.35578477 -0.93453777 0 0.055970944 -0.17844172
		 -0.98232979 0.67638171 -0.050508134 0.73479414 0.055970944 -0.17844172 0.98232979
		 -0.64671773 -0.23065889 0.7269814 -0.94418162 -0.32932523 0 -0.64671773 -0.23065889
		 -0.7269814 0.64629048 0.76305431 0 0.52290416 -0.85235143 0 0.91781366 -0.39698476
		 0 -0.69103062 0.72280037 0 -0.99905396 -0.043153174 0 -0.99783319 0.065401167 0 0.98721272
		 0.15924558 0 0.99557483 0.093661308 0 -0.99862665 -0.052095097 0 -0.99151587 -0.12994781
		 0 0.99954224 -0.029816583 0 0.99444562 -0.10516679 0 -0.99890131 0.046754356 0 0.99377424
		 -0.11133152 0 -0.9288919 0.13754693 0.34382153 -0.72231209 0.19013031 0.66487622
		 -0.85647142 -0.0765099 -0.51045257 0.022675253 -0.26572466 -0.96374398 0.70601517
		 -0.28870511 -0.64662617 0.9814142 -0.19144261 -0.010925626 0.56578267 0.009582812
		 0.82445753 -0.41090122 0.18182927 0.89333779 -0.019196142 -0.26569414 -0.96383554
		 -0.6985687 -0.30066836 -0.64925075 0.82845545 -0.075624868 -0.55488753 0.94631791
		 0.13846248 0.29206213 0.71382791 0.19727165 0.67192602 0.38847011 0.18491165 0.90270698
		 -0.55574208 0.0029297769 0.83132422 -0.978576 -0.20572527 0.0015259255 -0.41181678
		 0.18164617 -0.89294106 -0.72231209 0.19003876 -0.66490674 0.56413466 0.0085451826
		 -0.82561725 0.98110902 -0.19302957 0.010559404 0.70567948 -0.29047516 0.64622945
		 0.022217475 -0.2674337 0.96328622 -0.85763115 -0.07739494 0.50837731 -0.92855614
		 0.13739432 -0.34473708 -0.97921687 -0.20273446 -0.00094607379 -0.69924009 -0.29740289
		 0.65004426 -0.55864131 0.004852443 -0.82937104 0.38697469 0.18536943 -0.9032563 0.71395004
		 0.19766839 -0.67168188 0.94677573 0.13910337 -0.29023102 0.82613605 -0.073732719
		 0.55858028 -0.020233773 -0.26255074 0.96469009 0.96963406 -0.24448378 0 0.62709433
		 -0.19574572 -0.75389874 0.62709433 -0.19574572 0.75389874 -0.012817774 -0.093813896
		 0.99548328 -0.67232275 -0.0098574786 0.74016541 -0.99923706 0.038422804 0 -0.67232275
		 -0.0098574786 -0.74016541 -0.012817774 -0.093813896 -0.99548328 0.99783319 0.065675832
		 -0.00018311106 0.69264811 0.014648885 -0.72109133 0.69304484 0.014923551 0.7206946
		 0.017609179 -0.081789605 0.99649036 -0.6533708 -0.1866512 0.73363447 -0.97329628
		 -0.22946867 0 -0.6533708 -0.1866512 -0.73363447 0.017090365 -0.081942201 -0.99645984
		 0.99218726 -0.0036622211 0.124485 0.99267554 -0.016388439 0.119541;
	setAttr ".n[996:1073]" -type "float3"  0.98712116 0.00057985168 0.15994751 0.99481183
		 0.0055848872 0.10129093 0.99737543 0.0014648885 0.072176278 0.99136329 -0.0028992584
		 0.13107699 0.98922694 -0.0019531846 0.14633626 0.9967345 -0.0039674062 0.08041627
		 0.99514759 -0.006408887 0.098117009 0.98770106 -0.00070192572 0.1563158 0.99523914
		 -0.0056154057 0.096987821 0.98678547 -0.015198218 0.16119877 0.99176002 0.0033875545
		 0.12793359 0.9976806 -0.0014343699 0.06781213 0.98788416 -0.0237434 0.1531724 0.98681599
		 0.00030518509 0.16168706 0.98715168 -0.023804437 -0.15796381 0.99227881 -0.016449478
		 -0.12286752 0.98586994 -0.015228736 -0.16672261 0.99084443 0.0029602954 -0.13486129
		 0.98599201 -3.0518509e-005 -0.16663106 0.99084443 -0.0030213324 -0.13476974 0.99484235
		 -0.0055848872 -0.10113834 0.99645984 -0.0038453322 -0.083864868 0.99438459 -0.0056764428
		 -0.10541093 0.99710071 -0.0013733329 -0.075991087 0.98852503 -0.0018311106 -0.15097506
		 0.98651081 0.00067140721 -0.16360973 0.99444562 0.0057679983 -0.10498367 0.98687702
		 6.1037019e-005 -0.16144292 0.99188209 -0.0036622211 -0.12689596 0.99713129 0.0014038514
		 -0.075563833 0.90539265 0.00076296274 -0.42451248 0.94985807 -0.11539049 -0.29050568
		 0.94576859 0.11658071 -0.30317086 0.44029054 0.23624378 -0.86620682 0.41532639 0
		 -0.90963471 0.44029054 -0.23624378 -0.86620682 0.96316415 0.20902127 0.16913357 0.81939149
		 0.11139256 0.56227303 0.064516127 0.23679312 0.96938992 0.48918119 0.86654258 0.098818935
		 0.75923949 -0.00079348125 0.65077668 0.81163979 -0.11276589 0.57313758 0.064516127
		 -0.23679312 0.96938992 0.026032288 0 0.99963379 0.96230966 -0.20932646 0.1734672
		 0.48918119 -0.86654258 0.098818935 0.96215707 -0.20502335 -0.17944884 0.95287943
		 -0.11267434 0.28159428 0.80324715 -0.11255226 -0.58485669 0.054841761 -0.23407696
		 -0.9706412 0.51332134 -0.85140538 -0.10763878 0.45139927 -0.23316142 0.86129338 0.74416333
		 -0.00076296274 -0.66798913 0.81063265 0.11151464 -0.57478559 0.054841761 0.23407696
		 -0.9706412 0.0073854793 0 -0.99996948 0.96285897 0.20517594 -0.17538987 0.94897306
		 0.11398663 0.29395428 0.45139927 0.23316142 0.86129338 0.51332134 0.85140538 -0.10763878
		 0.90911585 0.00070192572 0.4165166 0.41935483 0 0.9078036 0.34946746 0 -0.93691826
		 0.40083009 -0.22638631 -0.88772237 0.40083009 0.22638631 -0.88772237 0.51451153 0.84987944
		 0.11374249 -0.009765923 0.22635579 0.97396773 -0.076967679 0 0.99700916 -0.009765923
		 -0.22635579 0.97396773 0.51451153 -0.84987944 0.11374249 0.50935394 -0.85311443 -0.1126133
		 0.39265114 -0.22553179 0.89159822 -0.013641774 -0.22516556 -0.97421187 -0.080965608
		 0 -0.99670398 -0.013641774 0.22516556 -0.97421187 0.50935394 0.85311443 -0.1126133
		 0.39265114 0.22553179 0.89159822 0.34061709 0 0.9401837;
	setAttr -s 1072 -ch 4288 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 1163 1164 1165 1166
		f 4 4 5 6 -2
		mu 0 4 725 715 718 726
		f 4 -7 7 8 9
		mu 0 4 1165 1171 1172 1167
		f 4 -3 -10 10 11
		mu 0 4 1166 1165 1167 1168
		f 4 12 13 14 15
		mu 0 4 1231 1221 1222 1232
		f 4 16 17 18 -14
		mu 0 4 1221 1210 1211 1222
		f 4 -19 19 20 21
		mu 0 4 1222 1211 1220 1230
		f 4 -15 -22 22 23
		mu 0 4 1232 1222 1230 1238
		f 4 24 25 26 -6
		mu 0 4 715 716 717 718
		f 4 27 28 29 -26
		mu 0 4 716 721 722 717
		f 4 -30 30 31 32
		mu 0 4 717 722 729 723
		f 4 -27 -33 33 -8
		mu 0 4 718 717 723 724
		f 4 34 35 36 -29
		mu 0 4 160 150 159 168
		f 4 37 38 39 -36
		mu 0 4 150 149 158 159
		f 4 -40 40 41 42
		mu 0 4 159 158 166 167
		f 4 -37 -43 43 -31
		mu 0 4 168 159 167 174
		f 4 44 45 46 -39
		mu 0 4 811 812 813 814
		f 4 47 48 49 -46
		mu 0 4 250 232 249 266
		f 4 -50 50 51 52
		mu 0 4 813 821 822 817
		f 4 -47 -53 53 -41
		mu 0 4 814 813 817 818
		f 4 54 55 56 -49
		mu 0 4 232 217 231 249
		f 4 57 58 59 -56
		mu 0 4 217 216 230 231
		f 4 -60 60 61 62
		mu 0 4 231 230 247 248
		f 4 -57 -63 63 -51
		mu 0 4 249 231 248 265
		f 4 64 65 66 -59
		mu 0 4 216 228 245 230
		f 4 67 68 69 -66
		mu 0 4 228 240 258 245
		f 4 -70 70 71 72
		mu 0 4 1264 1265 1266 1267
		f 4 -67 -73 73 -61
		mu 0 4 230 245 263 247
		f 4 74 75 76 77
		mu 0 4 893 894 895 896
		f 4 78 79 80 -76
		mu 0 4 7 6 16 17
		f 4 -81 81 82 83
		mu 0 4 895 901 902 897
		f 4 -77 -84 84 85
		mu 0 4 896 895 897 898
		f 4 86 87 88 89
		mu 0 4 0 1 2 3
		f 4 90 -79 91 -88
		mu 0 4 1 6 7 2
		f 4 -92 -75 92 93
		mu 0 4 2 7 18 8
		f 4 -89 -94 94 95
		mu 0 4 3 2 8 9
		f 4 96 97 98 99
		mu 0 4 94 81 82 95
		f 4 100 101 102 -98
		mu 0 4 81 66 67 82
		f 4 -103 103 104 105
		mu 0 4 82 67 80 93
		f 4 -99 -106 106 107
		mu 0 4 95 82 93 104
		f 4 108 109 110 111
		mu 0 4 136 135 143 144
		f 4 112 113 114 -110
		mu 0 4 135 142 152 143
		f 4 -115 115 -100 116
		mu 0 4 732 727 728 733
		f 4 -111 -117 -108 117
		mu 0 4 737 732 733 738
		f 4 118 119 120 121
		mu 0 4 127 128 129 130
		f 4 122 123 124 -120
		mu 0 4 128 133 134 129
		f 4 -125 125 -113 126
		mu 0 4 129 134 142 135
		f 4 -121 -127 -109 127
		mu 0 4 130 129 135 136
		f 4 128 129 130 131
		mu 0 4 197 196 207 208
		f 4 132 133 134 -130
		mu 0 4 196 206 219 207
		f 4 -135 135 -123 136
		mu 0 4 825 819 820 826
		f 4 -131 -137 -119 137
		mu 0 4 131 132 128 127
		f 4 138 139 140 141
		mu 0 4 188 189 190 191
		f 4 142 143 144 -140
		mu 0 4 189 194 195 190
		f 4 -145 145 -133 146
		mu 0 4 190 195 206 196
		f 4 -141 -147 -129 147
		mu 0 4 191 190 196 197
		f 4 148 149 150 151
		mu 0 4 200 201 193 192
		f 4 152 153 154 -150
		mu 0 4 201 212 202 193
		f 4 -155 155 -143 156
		mu 0 4 193 202 194 189
		f 4 -151 -157 -139 157
		mu 0 4 192 193 189 188
		f 4 -153 158 159 160
		mu 0 4 978 979 980 981
		f 4 -149 161 162 -159
		mu 0 4 979 982 983 980
		f 4 -163 163 164 165
		mu 0 4 980 983 988 984
		f 4 -160 -166 166 167
		mu 0 4 981 980 984 985
		f 4 168 169 170 171
		mu 0 4 303 304 305 306
		f 4 172 173 174 -170
		mu 0 4 304 309 310 305
		f 4 -175 175 176 177
		mu 0 4 305 310 320 311
		f 4 -171 -178 178 179
		mu 0 4 306 305 311 312
		f 4 180 181 182 183
		mu 0 4 466 467 468 469
		f 4 184 185 186 -182
		mu 0 4 467 470 471 468
		f 4 -187 187 188 189
		mu 0 4 468 471 474 472
		f 4 -183 -190 190 191
		mu 0 4 469 468 472 473
		f 4 192 193 194 195
		mu 0 4 846 845 847 848
		f 4 196 197 198 -194
		mu 0 4 355 334 369 376
		f 4 -199 199 200 201
		mu 0 4 376 369 360 382
		f 4 -195 -202 202 203
		mu 0 4 848 847 849 850
		f 4 204 205 206 207
		mu 0 4 475 476 477 478
		f 4 208 -196 209 -206
		mu 0 4 476 481 482 477
		f 4 -210 -204 210 211
		mu 0 4 477 482 491 483
		f 4 -207 -212 212 213
		mu 0 4 478 477 483 484
		f 4 214 215 216 217
		mu 0 4 766 765 769 770
		f 4 218 -208 219 -216
		mu 0 4 485 475 478 486
		f 4 -220 -214 220 221
		mu 0 4 486 478 484 494
		f 4 -217 -222 222 223
		mu 0 4 770 769 773 774
		f 4 224 225 226 227
		mu 0 4 529 530 531 532
		f 4 228 229 230 -226
		mu 0 4 530 535 536 531
		f 4 -231 231 -218 232
		mu 0 4 531 536 547 537
		f 4 -227 -233 -224 233
		mu 0 4 532 531 537 538
		f 4 234 235 236 237
		mu 0 4 621 622 610 609
		f 4 238 239 240 -236
		mu 0 4 622 625 614 610
		f 4 -241 241 242 243
		mu 0 4 610 614 602 595
		f 4 -237 -244 244 245
		mu 0 4 609 610 595 596
		f 4 246 247 248 -80
		mu 0 4 6 14 26 16
		f 4 249 -16 250 -248
		mu 0 4 926 927 917 908
		f 4 -251 -24 251 252
		mu 0 4 908 917 918 909
		f 4 -249 -253 253 -82
		mu 0 4 901 908 909 902
		f 4 -17 254 255 256
		mu 0 4 12 13 5 4
		f 4 -13 -250 257 -255
		mu 0 4 13 24 14 5
		f 4 -258 -247 -91 258
		mu 0 4 5 14 6 1
		f 4 -256 -259 -87 259
		mu 0 4 4 5 1 0
		f 4 -5 260 261 262
		mu 0 4 105 96 84 97
		f 4 -1 263 264 -261
		mu 0 4 96 83 69 84
		f 4 -265 265 -101 266
		mu 0 4 84 69 66 81
		f 4 -262 -267 -97 267
		mu 0 4 97 84 81 94
		f 4 268 269 270 -114
		mu 0 4 142 151 161 152
		f 4 271 -28 272 -270
		mu 0 4 151 160 169 161
		f 4 -273 -25 -263 273
		mu 0 4 719 716 715 720
		f 4 -271 -274 -268 -116
		mu 0 4 727 719 720 728
		f 4 274 275 276 -124
		mu 0 4 133 140 141 134
		f 4 277 -38 278 -276
		mu 0 4 140 149 150 141
		f 4 -279 -35 -272 279
		mu 0 4 141 150 160 151
		f 4 -277 -280 -269 -126
		mu 0 4 134 141 151 142
		f 4 280 281 282 -134
		mu 0 4 206 218 233 219
		f 4 283 -48 284 -282
		mu 0 4 218 232 250 233
		f 4 -285 -45 -278 285
		mu 0 4 815 812 811 816
		f 4 -283 -286 -275 -136
		mu 0 4 819 815 816 820
		f 4 286 287 288 -144
		mu 0 4 194 204 205 195
		f 4 289 -58 290 -288
		mu 0 4 204 216 217 205
		f 4 -291 -55 -284 291
		mu 0 4 205 217 232 218
		f 4 -289 -292 -281 -146
		mu 0 4 195 205 218 206
		f 4 292 293 294 -154
		mu 0 4 212 224 214 202
		f 4 295 -68 296 -294
		mu 0 4 224 240 228 214
		f 4 -297 -65 -290 297
		mu 0 4 214 228 216 204
		f 4 -295 -298 -287 -156
		mu 0 4 202 214 204 194
		f 4 298 299 300 301
		mu 0 4 273 256 272 282
		f 4 302 303 304 -300
		mu 0 4 256 255 271 272
		f 4 -305 305 306 307
		mu 0 4 1008 992 999 1009
		f 4 -301 -308 308 309
		mu 0 4 679 680 676 675
		f 4 310 311 312 313
		mu 0 4 315 316 308 307
		f 4 314 315 316 -312
		mu 0 4 316 329 317 308
		f 4 -317 317 -173 318
		mu 0 4 308 317 309 304
		f 4 -313 -319 -169 319
		mu 0 4 307 308 304 303
		f 4 320 321 322 323
		mu 0 4 351 330 318 333
		f 4 324 -314 325 -322
		mu 0 4 330 315 307 318
		f 4 -326 -320 326 327
		mu 0 4 318 307 303 319
		f 4 -323 -328 328 329
		mu 0 4 333 318 319 334
		f 4 330 331 332 333
		mu 0 4 841 840 843 844
		f 4 334 -324 335 -332
		mu 0 4 375 351 333 354
		f 4 -336 -330 -197 336
		mu 0 4 354 333 334 355
		f 4 -333 -337 -193 337
		mu 0 4 844 843 845 846
		f 4 338 339 340 341
		mu 0 4 487 488 480 479
		f 4 342 -334 343 -340
		mu 0 4 488 497 489 480
		f 4 -344 -338 -209 344
		mu 0 4 480 489 481 476
		f 4 -341 -345 -205 345
		mu 0 4 479 480 476 475
		f 4 346 347 348 349
		mu 0 4 756 755 760 761
		f 4 350 -342 351 -348
		mu 0 4 755 759 764 760
		f 4 -352 -346 -219 352
		mu 0 4 490 479 475 485
		f 4 -349 -353 -215 353
		mu 0 4 761 760 765 766
		f 4 354 355 356 -230
		mu 0 4 535 545 546 536
		f 4 357 358 359 -356
		mu 0 4 545 557 558 546
		f 4 -360 360 -350 361
		mu 0 4 546 558 571 559
		f 4 -357 -362 -354 -232
		mu 0 4 536 546 559 547
		f 4 362 363 364 -240
		mu 0 4 625 633 624 614
		f 4 365 366 367 -364
		mu 0 4 633 641 632 624
		f 4 -368 368 369 370
		mu 0 4 624 632 623 613
		f 4 -365 -371 371 -242
		mu 0 4 614 624 613 602
		f 4 372 373 374 375
		mu 0 4 1250 1244 1249 1254
		f 4 376 377 378 -374
		mu 0 4 1244 1236 1243 1249
		f 4 -379 379 380 381
		mu 0 4 1249 1243 1248 1253
		f 4 -375 -382 382 383
		mu 0 4 1254 1249 1253 1257
		f 4 384 385 386 387
		mu 0 4 1185 1193 1186 1179
		f 4 388 389 390 -386
		mu 0 4 1193 1202 1194 1186
		f 4 -391 391 392 393
		mu 0 4 1186 1194 1195 1187
		f 4 -387 -394 394 395
		mu 0 4 1179 1186 1187 1180
		f 4 396 397 398 399
		mu 0 4 739 744 740 735
		f 4 400 401 402 -398
		mu 0 4 744 749 745 740
		f 4 -403 403 -389 404
		mu 0 4 740 745 746 741
		f 4 -399 -405 -385 405
		mu 0 4 735 740 741 736
		f 4 406 407 408 409
		mu 0 4 1300 1301 1302 1303
		f 4 410 411 412 -408
		mu 0 4 1301 1304 1305 1302
		f 4 -413 413 -401 414
		mu 0 4 1302 1305 1310 1306
		f 4 -409 -415 -397 415
		mu 0 4 1303 1302 1306 1307
		f 4 416 417 418 419
		mu 0 4 830 833 831 828
		f 4 420 421 422 -418
		mu 0 4 833 836 834 831
		f 4 -423 423 -411 424
		mu 0 4 831 834 835 832
		f 4 -419 -425 -407 425
		mu 0 4 828 831 832 829
		f 4 426 427 428 429
		mu 0 4 1277 1281 1287 1282
		f 4 430 431 432 -428
		mu 0 4 1281 1286 1291 1287
		f 4 -433 433 -421 434
		mu 0 4 1287 1291 1295 1292
		f 4 -429 -435 -417 435
		mu 0 4 1282 1287 1292 1288
		f 4 436 437 438 439
		mu 0 4 1019 1031 1050 1032
		f 4 440 441 442 -438
		mu 0 4 1289 1290 1285 1280
		f 4 -443 443 -431 444
		mu 0 4 1280 1285 1286 1281
		f 4 -439 -445 -427 445
		mu 0 4 1276 1280 1281 1277
		f 4 446 447 448 449
		mu 0 4 996 1004 1018 1005
		f 4 450 451 452 -448
		mu 0 4 1004 1017 1030 1018
		f 4 -453 453 -441 454
		mu 0 4 1018 1030 1049 1031
		f 4 -449 -455 -437 455
		mu 0 4 1005 1018 1031 1019
		f 4 456 457 458 459
		mu 0 4 1002 1015 1003 995
		f 4 460 461 462 -458
		mu 0 4 1015 1027 1016 1003
		f 4 -463 463 -451 464
		mu 0 4 1003 1016 1017 1004
		f 4 -459 -465 -447 465
		mu 0 4 995 1003 1004 996
		f 4 466 467 468 469
		mu 0 4 920 930 921 911
		f 4 470 471 472 -468
		mu 0 4 930 940 931 921
		f 4 -473 473 474 475
		mu 0 4 921 931 932 922
		f 4 -469 -476 476 477
		mu 0 4 911 921 922 912
		f 4 -376 478 479 480
		mu 0 4 938 949 939 929
		f 4 -384 481 482 -479
		mu 0 4 1254 1257 1260 1261
		f 4 -483 483 -471 484
		mu 0 4 939 950 940 930
		f 4 -480 -485 -467 485
		mu 0 4 929 939 930 920
		f 4 -383 486 487 488
		mu 0 4 1257 1253 1256 1259
		f 4 -381 489 490 -487
		mu 0 4 1253 1248 1252 1256
		f 4 -491 491 -369 492
		mu 0 4 1256 1252 1255 1258
		f 4 -488 -493 -367 493
		mu 0 4 1259 1256 1258 1262
		f 4 494 495 496 -390
		mu 0 4 1202 1212 1203 1194
		f 4 497 -361 498 -496
		mu 0 4 1212 1223 1213 1203
		f 4 -499 -359 499 500
		mu 0 4 1203 1213 1214 1204
		f 4 -497 -501 501 -392
		mu 0 4 1194 1203 1204 1195
		f 4 502 503 504 -402
		mu 0 4 749 754 750 745
		f 4 505 -351 506 -504
		mu 0 4 754 759 755 750
		f 4 -507 -347 -498 507
		mu 0 4 750 755 756 751
		f 4 -505 -508 -495 -404
		mu 0 4 745 750 751 746
		f 4 508 509 510 -412
		mu 0 4 509 502 495 503
		f 4 511 -343 512 -510
		mu 0 4 502 497 488 495
		f 4 -513 -339 -506 513
		mu 0 4 495 488 487 496
		f 4 -511 -514 -503 -414
		mu 0 4 503 495 496 504
		f 4 514 515 516 -422
		mu 0 4 836 839 837 834
		f 4 517 -335 518 -516
		mu 0 4 839 842 840 837
		f 4 -519 -331 -512 519
		mu 0 4 837 840 841 838
		f 4 -517 -520 -509 -424
		mu 0 4 834 837 838 835
		f 4 520 521 522 -432
		mu 0 4 349 328 347 373
		f 4 523 -325 524 -522
		mu 0 4 328 315 330 347
		f 4 -525 -321 -518 525
		mu 0 4 347 330 351 372
		f 4 -523 -526 -515 -434
		mu 0 4 373 347 372 396
		f 4 526 527 528 -442
		mu 0 4 1290 1293 1294 1285
		f 4 529 -315 530 -528
		mu 0 4 346 329 316 327
		f 4 -531 -311 -524 531
		mu 0 4 327 316 315 328
		f 4 -529 -532 -521 -444
		mu 0 4 348 327 328 349
		f 4 532 533 534 535
		mu 0 4 1065 1064 1078 1079
		f 4 536 537 538 -534
		mu 0 4 1064 1077 1091 1078
		f 4 -539 539 540 541
		mu 0 4 397 352 374 395
		f 4 -535 -542 542 543
		mu 0 4 688 691 692 689
		f 4 544 545 546 -462
		mu 0 4 1027 1044 1028 1016
		f 4 547 -176 548 -546
		mu 0 4 1044 1062 1045 1028
		f 4 -549 -174 549 550
		mu 0 4 1028 1045 1046 1029
		f 4 -547 -551 551 -464
		mu 0 4 1016 1028 1029 1017
		f 4 552 553 554 -472
		mu 0 4 940 951 941 931
		f 4 555 -239 556 -554
		mu 0 4 634 625 622 635
		f 4 -557 -235 557 558
		mu 0 4 941 952 953 942
		f 4 -555 -559 559 -474
		mu 0 4 931 941 942 932
		f 4 -489 560 561 -482
		mu 0 4 1257 1259 1263 1260
		f 4 -494 -366 562 -561
		mu 0 4 647 641 633 642
		f 4 -563 -363 -556 563
		mu 0 4 642 633 625 634
		f 4 -562 -564 -553 -484
		mu 0 4 648 642 634 649
		f 4 -23 564 565 566
		mu 0 4 1238 1230 1237 1245
		f 4 -21 567 568 -565
		mu 0 4 1230 1220 1229 1237
		f 4 -569 569 -377 570
		mu 0 4 1237 1229 1236 1244
		f 4 -566 -571 -373 571
		mu 0 4 1245 1237 1244 1250
		f 4 572 573 574 -9
		mu 0 4 1172 1178 1173 1167
		f 4 575 -388 576 -574
		mu 0 4 1178 1185 1179 1173
		f 4 -577 -396 577 578
		mu 0 4 1173 1179 1180 1174
		f 4 -575 -579 579 -11
		mu 0 4 1167 1173 1174 1168
		f 4 580 581 582 -32
		mu 0 4 729 734 730 723
		f 4 583 -400 584 -582
		mu 0 4 734 739 735 730
		f 4 -585 -406 -576 585
		mu 0 4 730 735 736 731
		f 4 -583 -586 -573 -34
		mu 0 4 723 730 731 724
		f 4 586 587 588 -42
		mu 0 4 1312 1308 1309 1313
		f 4 589 -410 590 -588
		mu 0 4 1308 1300 1303 1309
		f 4 -591 -416 -584 591
		mu 0 4 1309 1303 1307 1311
		f 4 -589 -592 -581 -44
		mu 0 4 1313 1309 1311 1314
		f 4 592 593 594 -52
		mu 0 4 822 827 823 817
		f 4 595 -420 596 -594
		mu 0 4 827 830 828 823
		f 4 -597 -426 -590 597
		mu 0 4 823 828 829 824
		f 4 -595 -598 -587 -54
		mu 0 4 817 823 824 818
		f 4 598 599 600 -62
		mu 0 4 1275 1274 1278 1279
		f 4 601 -430 602 -600
		mu 0 4 1274 1277 1282 1278
		f 4 -603 -436 -596 603
		mu 0 4 1278 1282 1288 1283
		f 4 -601 -604 -593 -64
		mu 0 4 1279 1278 1283 1284
		f 4 604 605 606 -72
		mu 0 4 1266 1270 1271 1267
		f 4 607 -440 608 -606
		mu 0 4 1006 1019 1032 1033
		f 4 -609 -446 -602 609
		mu 0 4 1271 1276 1277 1274
		f 4 -607 -610 -599 -74
		mu 0 4 1267 1271 1274 1275
		f 4 610 611 612 613
		mu 0 4 985 990 997 998
		f 4 614 -450 615 -612
		mu 0 4 990 996 1005 997
		f 4 -616 -456 -608 616
		mu 0 4 997 1005 1019 1006
		f 4 -613 -617 -605 617
		mu 0 4 998 997 1006 1007
		f 4 618 619 620 -165
		mu 0 4 988 994 989 984
		f 4 621 -460 622 -620
		mu 0 4 994 1002 995 989
		f 4 -623 -466 -615 623
		mu 0 4 989 995 996 990
		f 4 -621 -624 -611 -167
		mu 0 4 984 989 990 985
		f 4 624 625 626 -83
		mu 0 4 902 910 903 897
		f 4 627 -470 628 -626
		mu 0 4 910 920 911 903
		f 4 -629 -478 629 630
		mu 0 4 903 911 912 904
		f 4 -627 -631 631 -85
		mu 0 4 897 903 904 898
		f 4 -567 632 633 -252
		mu 0 4 918 928 919 909
		f 4 -572 -481 634 -633
		mu 0 4 928 938 929 919
		f 4 -635 -486 -628 635
		mu 0 4 919 929 920 910
		f 4 -634 -636 -625 -254
		mu 0 4 909 919 910 902
		f 4 636 637 638 639
		mu 0 4 35 25 15 27
		f 4 640 -257 641 -638
		mu 0 4 25 12 4 15
		f 4 -642 -260 642 643
		mu 0 4 15 4 0 10
		f 4 -639 -644 644 645
		mu 0 4 27 15 10 22
		f 4 -645 646 647 648
		mu 0 4 22 10 11 23
		f 4 -643 -90 649 -647
		mu 0 4 10 0 3 11
		f 4 -650 -96 650 651
		mu 0 4 11 3 9 21
		f 4 -648 -652 652 653
		mu 0 4 23 11 21 32
		f 4 654 655 656 -243
		mu 0 4 602 589 582 595
		f 4 657 658 659 -656
		mu 0 4 589 577 569 582
		f 4 -660 660 661 662
		mu 0 4 582 569 570 583
		f 4 -657 -663 663 -245
		mu 0 4 595 582 583 596
		f 4 664 665 666 -370
		mu 0 4 623 612 601 613
		f 4 667 668 669 -666
		mu 0 4 612 600 588 601
		f 4 -670 670 -658 671
		mu 0 4 601 588 577 589
		f 4 -667 -672 -655 -372
		mu 0 4 613 601 589 602
		f 4 672 673 674 -490
		mu 0 4 1248 1242 1247 1252
		f 4 675 676 677 -674
		mu 0 4 1242 1240 1241 1247
		f 4 -678 678 -668 679
		mu 0 4 1247 1241 1246 1251
		f 4 -675 -680 -665 -492
		mu 0 4 1252 1247 1251 1255
		f 4 680 681 682 -378
		mu 0 4 1236 1228 1235 1243
		f 4 683 684 685 -682
		mu 0 4 1228 1218 1227 1235
		f 4 -686 686 -676 687
		mu 0 4 1235 1227 1240 1242
		f 4 -683 -688 -673 -380
		mu 0 4 1243 1235 1242 1248
		f 4 688 689 690 -568
		mu 0 4 1220 1209 1219 1229
		f 4 691 692 693 -690
		mu 0 4 1209 1199 1208 1219
		f 4 -694 694 -684 695
		mu 0 4 1219 1208 1218 1228
		f 4 -691 -696 -681 -570
		mu 0 4 1229 1219 1228 1236
		f 4 -641 696 697 -18
		mu 0 4 1210 1200 1201 1211
		f 4 -637 698 699 -697
		mu 0 4 1200 1191 1192 1201
		f 4 -700 700 -692 701
		mu 0 4 1201 1192 1199 1209
		f 4 -698 -702 -689 -20
		mu 0 4 1211 1201 1209 1220
		f 4 702 703 704 705
		mu 0 4 56 45 36 46
		f 4 706 -640 707 -704
		mu 0 4 45 35 27 36
		f 4 -708 -646 708 709
		mu 0 4 36 27 22 33
		f 4 -705 -710 710 711
		mu 0 4 46 36 33 43
		f 4 -711 712 713 714
		mu 0 4 43 33 34 44
		f 4 -709 -649 715 -713
		mu 0 4 33 22 23 34
		f 4 -716 -654 716 717
		mu 0 4 34 23 32 42
		f 4 -714 -718 718 719
		mu 0 4 44 34 42 53
		f 4 720 721 722 -659
		mu 0 4 577 565 555 569
		f 4 723 724 725 -722
		mu 0 4 565 552 543 555
		f 4 -726 726 727 728
		mu 0 4 555 543 544 556
		f 4 -723 -729 729 -661
		mu 0 4 569 555 556 570
		f 4 730 731 732 -669
		mu 0 4 600 587 576 588
		f 4 733 734 735 -732
		mu 0 4 587 575 564 576
		f 4 -736 736 -724 737
		mu 0 4 576 564 552 565
		f 4 -733 -738 -721 -671
		mu 0 4 588 576 565 577
		f 4 738 739 740 -677
		mu 0 4 1240 1226 1234 1241
		f 4 741 742 743 -740
		mu 0 4 1226 1216 1225 1234
		f 4 -744 744 -734 745
		mu 0 4 1234 1225 1233 1239
		f 4 -741 -746 -731 -679
		mu 0 4 1241 1234 1239 1246
		f 4 746 747 748 -685
		mu 0 4 1218 1207 1217 1227
		f 4 749 750 751 -748
		mu 0 4 1207 1197 1206 1217
		f 4 -752 752 -742 753
		mu 0 4 1217 1206 1216 1226
		f 4 -749 -754 -739 -687
		mu 0 4 1545 1546 1547 1548
		f 4 754 755 756 -693
		mu 0 4 1199 1190 1198 1208
		f 4 757 758 759 -756
		mu 0 4 1190 1182 1189 1198
		f 4 -760 760 -750 761
		mu 0 4 1198 1189 1197 1207
		f 4 -757 -762 -747 -695
		mu 0 4 1208 1198 1207 1218
		f 4 -707 762 763 -699
		mu 0 4 1191 1183 1184 1192
		f 4 -703 764 765 -763
		mu 0 4 1183 1176 1177 1184
		f 4 -766 766 -758 767
		mu 0 4 1184 1177 1182 1190
		f 4 -764 -768 -755 -701
		mu 0 4 1192 1184 1190 1199
		f 4 768 769 770 -264
		mu 0 4 83 68 57 69
		f 4 771 -706 772 -770
		mu 0 4 68 56 46 57
		f 4 -773 -712 773 774
		mu 0 4 57 46 43 54
		f 4 -771 -775 775 -266
		mu 0 4 69 57 54 66
		f 4 -776 776 777 -102
		mu 0 4 66 54 55 67
		f 4 -774 -715 778 -777
		mu 0 4 54 43 44 55
		f 4 -779 -720 779 780
		mu 0 4 55 44 53 65
		f 4 -778 -781 781 -104
		mu 0 4 67 55 65 80
		f 4 782 783 784 -725
		mu 0 4 552 541 533 543
		f 4 785 -229 786 -784
		mu 0 4 541 535 530 533
		f 4 -787 -225 787 788
		mu 0 4 533 530 529 534
		f 4 -785 -789 789 -727
		mu 0 4 543 533 534 544
		f 4 790 791 792 -735
		mu 0 4 575 563 551 564
		f 4 793 -358 794 -792
		mu 0 4 563 557 545 551
		f 4 -795 -355 -786 795
		mu 0 4 551 545 535 541
		f 4 -793 -796 -783 -737
		mu 0 4 564 551 541 552
		f 4 796 797 798 -743
		mu 0 4 1216 1205 1215 1225
		f 4 799 -502 800 -798
		mu 0 4 1205 1195 1204 1215
		f 4 -801 -500 -794 801
		mu 0 4 1215 1204 1214 1224
		f 4 -799 -802 -791 -745
		mu 0 4 1225 1215 1224 1233
		f 4 802 803 804 -751
		mu 0 4 1197 1188 1196 1206
		f 4 805 -395 806 -804
		mu 0 4 1188 1180 1187 1196
		f 4 -807 -393 -800 807
		mu 0 4 1196 1187 1195 1205
		f 4 -805 -808 -797 -753
		mu 0 4 1206 1196 1205 1216
		f 4 808 809 810 -759
		mu 0 4 1182 1175 1181 1189
		f 4 811 -580 812 -810
		mu 0 4 1175 1168 1174 1181
		f 4 -813 -578 -806 813
		mu 0 4 1181 1174 1180 1188
		f 4 -811 -814 -803 -761
		mu 0 4 1189 1181 1188 1197
		f 4 -772 814 815 -765
		mu 0 4 1176 1169 1170 1177
		f 4 -769 -4 816 -815
		mu 0 4 1169 1163 1166 1170
		f 4 -817 -12 -812 817
		mu 0 4 1170 1166 1168 1175
		f 4 -816 -818 -809 -767
		mu 0 4 1177 1170 1175 1182
		f 4 818 819 820 821
		mu 0 4 1315 1316 1317 1318
		f 4 822 823 824 -820
		mu 0 4 1316 1321 1322 1317
		f 4 -825 825 826 827
		mu 0 4 1317 1322 1328 1329
		f 4 -821 -828 828 829
		mu 0 4 775 776 771 767
		f 4 830 831 832 833
		mu 0 4 1375 1376 1365 1364
		f 4 834 835 836 -832
		mu 0 4 1376 1385 1377 1365
		f 4 -837 837 838 839
		mu 0 4 1365 1377 1366 1355
		f 4 -833 -840 840 841
		mu 0 4 1364 1365 1355 1354
		f 4 -829 842 843 844
		mu 0 4 767 771 772 768
		f 4 -827 845 846 -843
		mu 0 4 771 777 778 772
		f 4 -847 847 848 849
		mu 0 4 772 778 785 779
		f 4 -844 -850 850 851
		mu 0 4 768 772 779 780
		f 4 -851 852 853 854
		mu 0 4 180 184 181 177
		f 4 -849 855 856 -853
		mu 0 4 184 187 185 181
		f 4 -857 857 858 859
		mu 0 4 181 185 186 182
		f 4 -854 -860 860 861
		mu 0 4 177 181 182 178
		f 4 -861 862 863 864
		mu 0 4 885 881 882 886
		f 4 -859 865 866 -863
		mu 0 4 881 879 878 882
		f 4 -867 867 868 869
		mu 0 4 882 878 883 884
		f 4 -864 -870 870 871
		mu 0 4 287 296 288 279
		f 4 -871 872 873 874
		mu 0 4 279 288 280 269
		f 4 -869 875 876 -873
		mu 0 4 288 297 289 280
		f 4 -877 877 878 879
		mu 0 4 280 289 290 281
		f 4 -874 -880 880 881
		mu 0 4 269 280 281 270
		f 4 -881 882 883 884
		mu 0 4 270 281 286 277
		f 4 -879 885 886 -883
		mu 0 4 281 290 295 286
		f 4 -887 887 888 889
		mu 0 4 1416 1417 1418 1419
		f 4 -884 -890 890 891
		mu 0 4 277 286 291 283
		f 4 892 893 894 895
		mu 0 4 906 907 915 916
		f 4 896 897 898 -894
		mu 0 4 907 914 925 915
		f 4 -899 899 900 901
		mu 0 4 915 925 936 937
		f 4 -895 -902 902 903
		mu 0 4 47 70 71 58
		f 4 904 905 906 907
		mu 0 4 51 40 41 52
		f 4 908 909 910 -906
		mu 0 4 40 30 31 41
		f 4 -911 911 -896 912
		mu 0 4 41 31 37 47
		f 4 -907 -913 -904 913
		mu 0 4 52 41 47 58
		f 4 914 915 916 917
		mu 0 4 121 117 113 118
		f 4 918 919 920 -916
		mu 0 4 117 112 107 113
		f 4 -921 921 922 923
		mu 0 4 113 107 99 108
		f 4 -917 -924 924 925
		mu 0 4 118 113 108 114
		f 4 926 927 928 929
		mu 0 4 154 162 170 163
		f 4 930 -919 931 -928
		mu 0 4 747 748 752 753
		f 4 -932 -915 932 933
		mu 0 4 753 752 757 758
		f 4 -929 -934 934 935
		mu 0 4 163 170 175 171
		f 4 936 937 938 939
		mu 0 4 146 147 155 156
		f 4 940 -930 941 -938
		mu 0 4 147 154 163 155
		f 4 -942 -936 942 943
		mu 0 4 155 163 171 164
		f 4 -939 -944 944 945
		mu 0 4 156 155 164 165
		f 4 946 947 948 949
		mu 0 4 221 234 251 235
		f 4 950 -940 951 -948
		mu 0 4 148 146 156 157
		f 4 -952 -946 952 953
		mu 0 4 891 892 890 889
		f 4 -949 -954 954 955
		mu 0 4 235 251 267 252
		f 4 956 957 958 959
		mu 0 4 210 211 222 223
		f 4 960 -950 961 -958
		mu 0 4 211 221 235 222
		f 4 -962 -956 962 963
		mu 0 4 222 235 252 236
		f 4 -959 -964 964 965
		mu 0 4 223 222 236 237
		f 4 966 967 968 969
		mu 0 4 227 215 229 244
		f 4 970 -960 971 -968
		mu 0 4 215 210 223 229
		f 4 -972 -966 972 973
		mu 0 4 229 223 237 246
		f 4 -969 -974 974 975
		mu 0 4 244 229 246 262
		f 4 976 977 978 -976
		mu 0 4 1074 1057 1040 1058
		f 4 979 980 981 -978
		mu 0 4 1057 1042 1025 1040
		f 4 -982 982 983 984
		mu 0 4 1040 1025 1014 1041
		f 4 -979 -985 985 -970
		mu 0 4 1058 1040 1041 1059
		f 4 986 987 988 989
		mu 0 4 387 362 363 388
		f 4 990 991 992 -988
		mu 0 4 362 338 339 363
		f 4 -993 993 994 995
		mu 0 4 363 339 358 380
		f 4 -989 -996 996 997
		mu 0 4 388 363 380 401
		f 4 998 999 1000 1001
		mu 0 4 662 663 664 665
		f 4 1002 1003 1004 -1000
		mu 0 4 663 666 667 664
		f 4 -1005 1005 1006 1007
		mu 0 4 664 667 670 668
		f 4 -1001 -1008 1008 1009
		mu 0 4 665 664 668 669
		f 4 1010 1011 1012 1013
		mu 0 4 857 855 856 858
		f 4 1014 1015 1016 -1012
		mu 0 4 855 853 854 856
		f 4 -1017 1017 1018 1019
		mu 0 4 415 402 383 416
		f 4 -1013 -1020 1020 1021
		mu 0 4 431 415 416 432
		f 4 1022 1023 1024 1025
		mu 0 4 512 507 508 513
		f 4 1026 1027 1028 -1024
		mu 0 4 507 500 501 508
		f 4 -1029 1029 -1015 1030
		mu 0 4 508 501 505 510
		f 4 -1025 -1031 -1011 1031
		mu 0 4 513 508 510 514
		f 4 1032 1033 1034 1035
		mu 0 4 796 791 792 797
		f 4 1036 1037 1038 -1034
		mu 0 4 791 786 787 792
		f 4 -1039 1039 -1027 1040
		mu 0 4 511 506 500 507
		f 4 -1035 -1041 -1023 1041
		mu 0 4 515 511 507 512
		f 4 1042 1043 1044 1045
		mu 0 4 549 550 561 562
		f 4 1046 -1037 1047 -1044
		mu 0 4 550 560 572 561
		f 4 -1048 -1033 1048 1049
		mu 0 4 561 572 584 573
		f 4 -1045 -1050 1050 1051
		mu 0 4 562 561 573 574
		f 4 1052 1053 1054 1055
		mu 0 4 636 627 637 643
		f 4 1056 1057 1058 -1054
		mu 0 4 627 616 628 637
		f 4 -1059 1059 1060 1061
		mu 0 4 637 628 638 644
		f 4 -1055 -1062 1062 1063
		mu 0 4 643 637 644 650
		f 4 -903 1064 1065 1066
		mu 0 4 58 71 85 72
		f 4 -901 1067 1068 -1065
		mu 0 4 937 936 947 948
		f 4 -1069 1069 -835 1070
		mu 0 4 948 947 959 960
		f 4 -1066 -1071 -831 1071
		mu 0 4 967 948 960 968
		f 4 1072 1073 1074 -842
		mu 0 4 78 63 64 79
		f 4 1075 -908 1076 -1074
		mu 0 4 63 51 52 64
		f 4 -1077 -914 -1067 1077
		mu 0 4 64 52 58 72
		f 4 -1075 -1078 -1072 -834
		mu 0 4 79 64 72 86
		f 4 1078 1079 1080 -830
		mu 0 4 126 124 122 125
		f 4 1081 -918 1082 -1080
		mu 0 4 124 121 118 122
		f 4 -1083 -926 1083 1084
		mu 0 4 122 118 114 119
		f 4 -1081 -1085 1085 -822
		mu 0 4 125 122 119 123
		f 4 -935 1086 1087 1088
		mu 0 4 171 175 179 176
		f 4 -933 -1082 1089 -1087
		mu 0 4 758 757 762 763
		f 4 -1090 -1079 -845 1090
		mu 0 4 763 762 767 768
		f 4 -1088 -1091 -852 1091
		mu 0 4 176 179 183 180
		f 4 -945 1092 1093 1094
		mu 0 4 165 164 172 173
		f 4 -943 -1089 1095 -1093
		mu 0 4 164 171 176 172
		f 4 -1096 -1092 -855 1096
		mu 0 4 172 176 180 177
		f 4 -1094 -1097 -862 1097
		mu 0 4 173 172 177 178
		f 4 -955 1098 1099 1100
		mu 0 4 252 267 278 268
		f 4 -953 -1095 1101 -1099
		mu 0 4 889 890 888 887
		f 4 -1102 -1098 -865 1102
		mu 0 4 887 888 885 886
		f 4 -1100 -1103 -872 1103
		mu 0 4 268 278 287 279;
	setAttr ".fc[500:999]"
		f 4 -965 1104 1105 1106
		mu 0 4 237 236 253 254
		f 4 -963 -1101 1107 -1105
		mu 0 4 236 252 268 253
		f 4 -1108 -1104 -875 1108
		mu 0 4 253 268 279 269
		f 4 -1106 -1109 -882 1109
		mu 0 4 254 253 269 270
		f 4 -975 1110 1111 1112
		mu 0 4 262 246 264 276
		f 4 -973 -1107 1113 -1111
		mu 0 4 246 237 254 264
		f 4 -1114 -1110 -885 1114
		mu 0 4 264 254 270 277
		f 4 -1112 -1115 -892 1115
		mu 0 4 276 264 277 283
		f 4 1116 1117 1118 1119
		mu 0 4 299 302 300 293
		f 4 1120 1121 1122 -1118
		mu 0 4 702 700 699 703
		f 4 -1123 1123 1124 1125
		mu 0 4 1101 1102 1090 1089
		f 4 -1119 -1126 1126 1127
		mu 0 4 293 300 301 294
		f 4 1128 1129 1130 1131
		mu 0 4 426 408 409 427
		f 4 1132 -990 1133 -1130
		mu 0 4 408 387 388 409
		f 4 -1134 -998 1134 1135
		mu 0 4 409 388 401 414
		f 4 -1131 -1136 1136 1137
		mu 0 4 427 409 414 430
		f 4 1138 1139 1140 1141
		mu 0 4 450 438 425 439
		f 4 1142 1143 1144 -1140
		mu 0 4 438 432 421 425
		f 4 -1145 1145 -1133 1146
		mu 0 4 425 421 387 408
		f 4 -1141 -1147 -1129 1147
		mu 0 4 439 425 408 426
		f 4 1148 1149 1150 1151
		mu 0 4 861 859 860 862
		f 4 1152 -1014 1153 -1150
		mu 0 4 859 857 858 860
		f 4 -1154 -1022 -1143 1154
		mu 0 4 446 431 432 438
		f 4 -1151 -1155 -1139 1155
		mu 0 4 456 446 438 450
		f 4 1156 1157 1158 1159
		mu 0 4 520 516 517 521
		f 4 1160 -1026 1161 -1158
		mu 0 4 516 512 513 517
		f 4 -1162 -1032 -1153 1162
		mu 0 4 517 513 514 518
		f 4 -1159 -1163 -1149 1163
		mu 0 4 521 517 518 522
		f 4 1164 1165 1166 1167
		mu 0 4 806 801 802 807
		f 4 1168 -1036 1169 -1166
		mu 0 4 801 796 797 802
		f 4 -1170 -1042 -1161 1170
		mu 0 4 519 515 512 516
		f 4 -1167 -1171 -1157 1171
		mu 0 4 807 802 809 810
		f 4 -1051 1172 1173 1174
		mu 0 4 574 573 585 586
		f 4 -1049 -1169 1175 -1173
		mu 0 4 573 584 597 585
		f 4 -1176 -1165 1176 1177
		mu 0 4 585 597 611 598
		f 4 -1174 -1178 1178 1179
		mu 0 4 586 585 598 599
		f 4 -1063 1180 1181 1182
		mu 0 4 650 644 651 653
		f 4 -1061 1183 1184 -1181
		mu 0 4 644 638 645 651
		f 4 -1185 1185 1186 1187
		mu 0 4 651 645 652 656
		f 4 -1182 -1188 1188 1189
		mu 0 4 653 651 656 657
		f 4 1190 1191 1192 1193
		mu 0 4 1398 1403 1399 1392
		f 4 1194 1195 1196 -1192
		mu 0 4 1403 1407 1404 1399
		f 4 -1197 1197 1198 1199
		mu 0 4 1399 1404 1400 1393
		f 4 -1193 -1200 1200 1201
		mu 0 4 1392 1399 1393 1387
		f 4 1202 1203 1204 1205
		mu 0 4 1344 1335 1343 1353
		f 4 1206 1207 1208 -1204
		mu 0 4 1335 1334 1342 1343
		f 4 -1209 1209 1210 1211
		mu 0 4 1343 1342 1351 1352
		f 4 -1205 -1212 1212 1213
		mu 0 4 1353 1343 1352 1363
		f 4 1214 1215 1216 1217
		mu 0 4 795 789 794 800
		f 4 1218 -1206 1219 -1216
		mu 0 4 789 788 793 794
		f 4 -1220 -1214 1220 1221
		mu 0 4 794 793 798 799
		f 4 -1217 -1222 1222 1223
		mu 0 4 800 794 799 805
		f 4 1224 1225 1226 1227
		mu 0 4 1452 1453 1454 1455
		f 4 1228 -1218 1229 -1226
		mu 0 4 1453 1458 1459 1454
		f 4 -1230 -1224 1230 1231
		mu 0 4 1454 1459 1465 1460
		f 4 -1227 -1232 1232 1233
		mu 0 4 1455 1454 1460 1461
		f 4 1234 1235 1236 1237
		mu 0 4 877 872 869 874
		f 4 1238 -1228 1239 -1236
		mu 0 4 872 873 870 869
		f 4 -1240 -1234 1240 1241
		mu 0 4 869 870 866 865
		f 4 -1237 -1242 1242 1243
		mu 0 4 874 869 865 871
		f 4 1244 1245 1246 1247
		mu 0 4 1430 1434 1438 1435
		f 4 1248 -1238 1249 -1246
		mu 0 4 1434 1437 1441 1438
		f 4 -1250 -1244 1250 1251
		mu 0 4 1438 1441 1445 1442
		f 4 -1247 -1252 1252 1253
		mu 0 4 1435 1438 1442 1439
		f 4 1254 1255 1256 1257
		mu 0 4 1087 1099 1107 1097
		f 4 1258 -1248 1259 -1256
		mu 0 4 1431 1430 1435 1436
		f 4 -1260 -1254 1260 1261
		mu 0 4 1436 1435 1439 1440
		f 4 -1257 -1262 1262 1263
		mu 0 4 1443 1436 1440 1444
		f 4 1264 1265 1266 1267
		mu 0 4 1055 1071 1086 1070
		f 4 1268 -1258 1269 -1266
		mu 0 4 1071 1087 1097 1086
		f 4 -1270 -1264 1270 1271
		mu 0 4 1086 1097 1103 1093
		f 4 -1267 -1272 1272 1273
		mu 0 4 1070 1086 1093 1083
		f 4 1274 1275 1276 1277
		mu 0 4 1021 1036 1054 1035
		f 4 1278 -1268 1279 -1276
		mu 0 4 1036 1055 1070 1054
		f 4 -1280 -1274 1280 1281
		mu 0 4 1054 1070 1083 1069
		f 4 -1277 -1282 1282 1283
		mu 0 4 1035 1054 1069 1053
		f 4 1284 1285 1286 1287
		mu 0 4 957 945 956 964
		f 4 1288 1289 1290 -1286
		mu 0 4 945 934 944 956
		f 4 -1291 1291 1292 1293
		mu 0 4 956 944 955 963
		f 4 -1287 -1294 1294 1295
		mu 0 4 964 956 963 971
		f 4 1296 1297 1298 -1191
		mu 0 4 973 965 972 977
		f 4 1299 -1288 1300 -1298
		mu 0 4 965 957 964 972
		f 4 -1301 -1296 1301 1302
		mu 0 4 972 964 971 976
		f 4 -1299 -1303 1303 -1195
		mu 0 4 1403 1410 1411 1407
		f 4 1304 1305 1306 -1196
		mu 0 4 1407 1412 1408 1404
		f 4 1307 -1189 1308 -1306
		mu 0 4 1412 1415 1413 1408
		f 4 -1309 -1187 1309 1310
		mu 0 4 1408 1413 1409 1405
		f 4 -1307 -1311 1311 -1198
		mu 0 4 1404 1408 1405 1400
		f 4 -1213 1312 1313 1314
		mu 0 4 1363 1352 1362 1374
		f 4 -1211 1315 1316 -1313
		mu 0 4 1352 1351 1361 1362
		f 4 -1317 1317 -1179 1318
		mu 0 4 1362 1361 1372 1373
		f 4 -1314 -1319 -1177 1319
		mu 0 4 1374 1362 1373 1384
		f 4 -1223 1320 1321 1322
		mu 0 4 805 799 804 808
		f 4 -1221 -1315 1323 -1321
		mu 0 4 799 798 803 804
		f 4 -1324 -1320 -1168 1324
		mu 0 4 804 803 806 807
		f 4 -1322 -1325 -1172 1325
		mu 0 4 808 804 807 810
		f 4 -1233 1326 1327 1328
		mu 0 4 528 526 523 525
		f 4 -1231 -1323 1329 -1327
		mu 0 4 526 527 524 523
		f 4 -1330 -1326 -1160 1330
		mu 0 4 523 524 520 521
		f 4 -1328 -1331 -1164 1331
		mu 0 4 525 523 521 522
		f 4 -1243 1332 1333 1334
		mu 0 4 871 865 863 867
		f 4 -1241 -1329 1335 -1333
		mu 0 4 865 866 864 863
		f 4 -1336 -1332 -1152 1336
		mu 0 4 863 864 861 862
		f 4 -1334 -1337 -1156 1337
		mu 0 4 867 863 862 868
		f 4 -1253 1338 1339 1340
		mu 0 4 453 461 451 441
		f 4 -1251 -1335 1341 -1339
		mu 0 4 461 465 460 451
		f 4 -1342 -1338 -1142 1342
		mu 0 4 451 460 450 439
		f 4 -1340 -1343 -1148 1343
		mu 0 4 441 451 439 426
		f 4 -1263 1344 1345 1346
		mu 0 4 1444 1440 1446 1447
		f 4 -1261 -1341 1347 -1345
		mu 0 4 452 453 441 440
		f 4 -1348 -1344 -1132 1348
		mu 0 4 440 441 426 427
		f 4 -1346 -1349 -1138 1349
		mu 0 4 445 440 427 430
		f 4 1350 1351 1352 1353
		mu 0 4 1108 1111 1112 1109
		f 4 1354 1355 1356 -1352
		mu 0 4 709 708 712 713
		f 4 -1357 1357 1358 1359
		mu 0 4 462 463 454 443
		f 4 -1353 -1360 1360 1361
		mu 0 4 1109 1112 1114 1113
		f 4 -1283 1362 1363 1364
		mu 0 4 1053 1069 1084 1085
		f 4 -1281 1365 1366 -1363
		mu 0 4 1069 1083 1094 1084
		f 4 -1367 1367 -997 1368
		mu 0 4 1084 1094 1106 1095
		f 4 -1364 -1369 -995 1369
		mu 0 4 1085 1084 1095 1096
		f 4 -1295 1370 1371 1372
		mu 0 4 971 963 970 975
		f 4 -1293 1373 1374 -1371
		mu 0 4 963 955 962 970
		f 4 -1375 1375 -1056 1376
		mu 0 4 970 962 969 974
		f 4 -1372 -1377 -1064 1377
		mu 0 4 654 655 643 650
		f 4 -1304 1378 1379 -1305
		mu 0 4 1407 1411 1414 1412
		f 4 -1302 -1373 1380 -1379
		mu 0 4 660 661 654 658
		f 4 -1381 -1378 -1183 1381
		mu 0 4 658 654 650 653
		f 4 -1380 -1382 -1190 -1308
		mu 0 4 659 658 653 657
		f 4 1382 1383 1384 -836
		mu 0 4 1385 1391 1386 1377
		f 4 1385 -1194 1386 -1384
		mu 0 4 1391 1398 1392 1386
		f 4 -1387 -1202 1387 1388
		mu 0 4 1386 1392 1387 1378
		f 4 -1385 -1389 1389 -838
		mu 0 4 1377 1386 1378 1366
		f 4 -826 1390 1391 1392
		mu 0 4 1328 1322 1327 1336
		f 4 -824 1393 1394 -1391
		mu 0 4 1322 1321 1326 1327
		f 4 -1395 1395 -1207 1396
		mu 0 4 1327 1326 1334 1335
		f 4 -1392 -1397 -1203 1397
		mu 0 4 1336 1327 1335 1344
		f 4 -848 1398 1399 1400
		mu 0 4 785 778 784 790
		f 4 -846 -1393 1401 -1399
		mu 0 4 778 777 783 784
		f 4 -1402 -1398 -1219 1402
		mu 0 4 784 783 788 789
		f 4 -1400 -1403 -1215 1403
		mu 0 4 790 784 789 795
		f 4 -858 1404 1405 1406
		mu 0 4 1462 1463 1457 1456
		f 4 -856 -1401 1407 -1405
		mu 0 4 1463 1466 1464 1457
		f 4 -1408 -1404 -1229 1408
		mu 0 4 1457 1464 1458 1453
		f 4 -1406 -1409 -1225 1409
		mu 0 4 1456 1457 1453 1452
		f 4 -868 1410 1411 1412
		mu 0 4 883 878 875 880
		f 4 -866 -1407 1413 -1411
		mu 0 4 878 879 876 875
		f 4 -1414 -1410 -1239 1414
		mu 0 4 875 876 873 872
		f 4 -1412 -1415 -1235 1415
		mu 0 4 880 875 872 877
		f 4 -878 1416 1417 1418
		mu 0 4 1424 1428 1429 1425
		f 4 -876 -1413 1419 -1417
		mu 0 4 1428 1432 1433 1429
		f 4 -1420 -1416 -1249 1420
		mu 0 4 1429 1433 1437 1434
		f 4 -1418 -1421 -1245 1421
		mu 0 4 1425 1429 1434 1430
		f 4 -888 1422 1423 1424
		mu 0 4 1418 1417 1420 1421
		f 4 -886 -1419 1425 -1423
		mu 0 4 1417 1424 1425 1420
		f 4 -1426 -1422 -1259 1426
		mu 0 4 1420 1425 1430 1431
		f 4 -1424 -1427 -1255 1427
		mu 0 4 1076 1098 1099 1087
		f 4 1428 1429 1430 1431
		mu 0 4 1042 1060 1061 1043
		f 4 1432 -1425 1433 -1430
		mu 0 4 1060 1075 1076 1061
		f 4 -1434 -1428 -1269 1434
		mu 0 4 1061 1076 1087 1071
		f 4 -1431 -1435 -1265 1435
		mu 0 4 1043 1061 1071 1055
		f 4 -983 1436 1437 1438
		mu 0 4 1014 1025 1026 1013
		f 4 -981 -1432 1439 -1437
		mu 0 4 1025 1042 1043 1026
		f 4 -1440 -1436 -1279 1440
		mu 0 4 1026 1043 1055 1036
		f 4 -1438 -1441 -1275 1441
		mu 0 4 1013 1026 1036 1021
		f 4 -900 1442 1443 1444
		mu 0 4 936 925 935 946
		f 4 -898 1445 1446 -1443
		mu 0 4 925 914 924 935
		f 4 -1447 1447 -1289 1448
		mu 0 4 935 924 934 945
		f 4 -1444 -1449 -1285 1449
		mu 0 4 946 935 945 957
		f 4 -1070 1450 1451 -1383
		mu 0 4 959 947 958 966
		f 4 -1068 -1445 1452 -1451
		mu 0 4 947 936 946 958
		f 4 -1453 -1450 -1300 1453
		mu 0 4 958 946 957 965
		f 4 -1452 -1454 -1297 -1386
		mu 0 4 966 958 965 973
		f 4 1454 1455 1456 1457
		mu 0 4 103 91 77 92
		f 4 1458 1459 1460 -1456
		mu 0 4 91 76 62 77
		f 4 -1461 1461 -1076 1462
		mu 0 4 77 62 51 63
		f 4 -1457 -1463 -1073 1463
		mu 0 4 92 77 63 78
		f 4 1464 1465 1466 -1460
		mu 0 4 76 61 50 62
		f 4 1467 1468 1469 -1466
		mu 0 4 61 49 39 50
		f 4 -1470 1470 -909 1471
		mu 0 4 50 39 30 40
		f 4 -1467 -1472 -905 -1462
		mu 0 4 62 50 40 51
		f 4 -1060 1472 1473 1474
		mu 0 4 638 628 617 629
		f 4 -1058 1475 1476 -1473
		mu 0 4 628 616 604 617
		f 4 -1477 1477 1478 1479
		mu 0 4 617 604 591 605
		f 4 -1474 -1480 1480 1481
		mu 0 4 629 617 605 618
		f 4 -1186 1482 1483 1484
		mu 0 4 652 645 639 646
		f 4 -1184 -1475 1485 -1483
		mu 0 4 645 638 629 639
		f 4 -1486 -1482 1486 1487
		mu 0 4 639 629 618 630
		f 4 -1484 -1488 1488 1489
		mu 0 4 646 639 630 640
		f 4 -1312 1490 1491 1492
		mu 0 4 1400 1405 1401 1394
		f 4 -1310 -1485 1493 -1491
		mu 0 4 1405 1409 1406 1401
		f 4 -1494 -1490 1494 1495
		mu 0 4 1401 1406 1402 1396
		f 4 -1492 -1496 1496 1497
		mu 0 4 1394 1401 1396 1395
		f 4 -1201 1498 1499 1500
		mu 0 4 1387 1393 1388 1379
		f 4 -1199 -1493 1501 -1499
		mu 0 4 1393 1400 1394 1388
		f 4 -1502 -1498 1502 1503
		mu 0 4 1388 1394 1395 1380
		f 4 -1500 -1504 1504 1505
		mu 0 4 1379 1388 1380 1368
		f 4 -1390 1506 1507 1508
		mu 0 4 1366 1378 1367 1356
		f 4 -1388 -1501 1509 -1507
		mu 0 4 1378 1387 1379 1367
		f 4 -1510 -1506 1510 1511
		mu 0 4 1367 1379 1368 1357
		f 4 -1508 -1512 1512 1513
		mu 0 4 1356 1367 1357 1347
		f 4 -841 1514 1515 -1464
		mu 0 4 1354 1355 1346 1345
		f 4 -839 -1509 1516 -1515
		mu 0 4 1355 1366 1356 1346
		f 4 -1517 -1514 1517 1518
		mu 0 4 1346 1356 1347 1338
		f 4 -1516 -1519 1519 -1458
		mu 0 4 1345 1346 1338 1337
		f 4 1520 1521 1522 1523
		mu 0 4 116 110 102 111
		f 4 1524 1525 1526 -1522
		mu 0 4 110 101 90 102
		f 4 -1527 1527 -1459 1528
		mu 0 4 102 90 76 91
		f 4 -1523 -1529 -1455 1529
		mu 0 4 111 102 91 103
		f 4 1530 1531 1532 -1526
		mu 0 4 101 89 75 90
		f 4 1533 1534 1535 -1532
		mu 0 4 89 74 60 75
		f 4 -1536 1536 -1468 1537
		mu 0 4 75 60 49 61
		f 4 -1533 -1538 -1465 -1528
		mu 0 4 90 75 61 76
		f 4 -1481 1538 1539 1540
		mu 0 4 618 605 592 606
		f 4 -1479 1541 1542 -1539
		mu 0 4 605 591 579 592
		f 4 -1543 1543 1544 1545
		mu 0 4 592 579 567 580
		f 4 -1540 -1546 1546 1547
		mu 0 4 606 592 580 593
		f 4 -1489 1548 1549 1550
		mu 0 4 640 630 619 631
		f 4 -1487 -1541 1551 -1549
		mu 0 4 630 618 606 619
		f 4 -1552 -1548 1552 1553
		mu 0 4 619 606 593 607
		f 4 -1550 -1554 1554 1555
		mu 0 4 631 619 607 620
		f 4 -1497 1556 1557 1558
		mu 0 4 1395 1396 1389 1381
		f 4 -1495 -1551 1559 -1557
		mu 0 4 1396 1402 1397 1389
		f 4 -1560 -1556 1560 1561
		mu 0 4 1389 1397 1390 1382
		f 4 -1558 -1562 1562 1563
		mu 0 4 1381 1389 1382 1370
		f 4 -1505 1564 1565 1566
		mu 0 4 1368 1380 1369 1358
		f 4 -1503 -1559 1567 -1565
		mu 0 4 1549 1550 1551 1552
		f 4 -1568 -1564 1568 1569
		mu 0 4 1369 1381 1370 1359
		f 4 -1566 -1570 1570 1571
		mu 0 4 1358 1369 1359 1349
		f 4 -1513 1572 1573 1574
		mu 0 4 1347 1357 1348 1339
		f 4 -1511 -1567 1575 -1573
		mu 0 4 1357 1368 1358 1348
		f 4 -1576 -1572 1576 1577
		mu 0 4 1348 1358 1349 1340
		f 4 -1574 -1578 1578 1579
		mu 0 4 1339 1348 1340 1332
		f 4 -1520 1580 1581 -1530
		mu 0 4 1337 1338 1331 1330
		f 4 -1518 -1575 1582 -1581
		mu 0 4 1338 1347 1339 1331
		f 4 -1583 -1580 1583 1584
		mu 0 4 1331 1339 1332 1324
		f 4 -1582 -1585 1585 -1524
		mu 0 4 1330 1331 1324 1323
		f 4 -1086 1586 1587 1588
		mu 0 4 123 119 115 120
		f 4 -1084 1589 1590 -1587
		mu 0 4 119 114 109 115
		f 4 -1591 1591 -1525 1592
		mu 0 4 115 109 101 110
		f 4 -1588 -1593 -1521 1593
		mu 0 4 120 115 110 116
		f 4 -925 1594 1595 -1590
		mu 0 4 114 108 100 109
		f 4 -923 1596 1597 -1595
		mu 0 4 108 99 88 100
		f 4 -1598 1598 -1534 1599
		mu 0 4 100 88 74 89
		f 4 -1596 -1600 -1531 -1592
		mu 0 4 109 100 89 101
		f 4 -1547 1600 1601 1602
		mu 0 4 593 580 568 581
		f 4 -1545 1603 1604 -1601
		mu 0 4 580 567 554 568
		f 4 -1605 1605 -1046 1606
		mu 0 4 568 554 549 562
		f 4 -1602 -1607 -1052 1607
		mu 0 4 581 568 562 574
		f 4 -1555 1608 1609 1610
		mu 0 4 620 607 594 608
		f 4 -1553 -1603 1611 -1609
		mu 0 4 607 593 581 594
		f 4 -1612 -1608 -1175 1612
		mu 0 4 594 581 574 586
		f 4 -1610 -1613 -1180 1613
		mu 0 4 608 594 586 599
		f 4 -1563 1614 1615 1616
		mu 0 4 1370 1382 1371 1360
		f 4 -1561 -1611 1617 -1615
		mu 0 4 1382 1390 1383 1371
		f 4 -1618 -1614 -1318 1618
		mu 0 4 1371 1383 1372 1361
		f 4 -1616 -1619 -1316 1619
		mu 0 4 1360 1371 1361 1351
		f 4 -1571 1620 1621 1622
		mu 0 4 1349 1359 1350 1341
		f 4 -1569 -1617 1623 -1621
		mu 0 4 1359 1370 1360 1350
		f 4 -1624 -1620 -1210 1624
		mu 0 4 1350 1360 1351 1342
		f 4 -1622 -1625 -1208 1625
		mu 0 4 1341 1350 1342 1334
		f 4 -1579 1626 1627 1628
		mu 0 4 1332 1340 1333 1325
		f 4 -1577 -1623 1629 -1627
		mu 0 4 1340 1349 1341 1333
		f 4 -1630 -1626 -1396 1630
		mu 0 4 1333 1341 1334 1326
		f 4 -1628 -1631 -1394 1631
		mu 0 4 1325 1333 1326 1321
		f 4 -1586 1632 1633 -1594
		mu 0 4 1323 1324 1320 1319
		f 4 -1584 -1629 1634 -1633
		mu 0 4 1324 1332 1325 1320
		f 4 -1635 -1632 -823 1635
		mu 0 4 1320 1325 1321 1316
		f 4 -1634 -1636 -819 -1589
		mu 0 4 1319 1320 1316 1315
		f 4 1636 1637 1638 -893
		mu 0 4 906 899 900 907
		f 4 1639 -78 1640 -1638
		mu 0 4 899 893 896 900
		f 4 -1641 -86 1641 1642
		mu 0 4 900 896 898 905
		f 4 -1639 -1643 1643 -897
		mu 0 4 907 900 905 914
		f 4 1644 1645 1646 -910
		mu 0 4 30 19 20 31
		f 4 1647 -95 1648 -1646
		mu 0 4 19 9 8 20
		f 4 -1649 -93 -1640 1649
		mu 0 4 20 8 18 28
		f 4 -1647 -1650 -1637 -912
		mu 0 4 31 20 28 37
		f 4 1650 1651 1652 -920
		mu 0 4 112 106 98 107
		f 4 1653 -107 1654 -1652
		mu 0 4 106 104 93 98
		f 4 -1655 -105 1655 1656
		mu 0 4 98 93 80 87
		f 4 -1653 -1657 1657 -922
		mu 0 4 107 98 87 99
		f 4 1658 1659 1660 -927
		mu 0 4 154 145 153 162
		f 4 1661 -112 1662 -1660
		mu 0 4 145 136 144 153
		f 4 -1663 -118 -1654 1663
		mu 0 4 742 737 738 743
		f 4 -1661 -1664 -1651 -931
		mu 0 4 747 742 743 748
		f 4 1664 1665 1666 -937
		mu 0 4 146 137 138 147
		f 4 1667 -122 1668 -1666
		mu 0 4 137 127 130 138
		f 4 -1669 -128 -1662 1669
		mu 0 4 138 130 136 145
		f 4 -1667 -1670 -1659 -941
		mu 0 4 147 138 145 154
		f 4 1670 1671 1672 -947
		mu 0 4 221 209 220 234
		f 4 1673 -132 1674 -1672
		mu 0 4 209 197 208 220
		f 4 -1675 -138 -1668 1675
		mu 0 4 139 131 127 137
		f 4 -1673 -1676 -1665 -951
		mu 0 4 148 139 137 146
		f 4 1676 1677 1678 -957
		mu 0 4 210 198 199 211
		f 4 1679 -142 1680 -1678
		mu 0 4 198 188 191 199
		f 4 -1681 -148 -1674 1681
		mu 0 4 199 191 197 209
		f 4 -1679 -1682 -1671 -961
		mu 0 4 211 199 209 221
		f 4 1682 1683 1684 -967
		mu 0 4 227 213 203 215
		f 4 1685 -152 1686 -1684
		mu 0 4 213 200 192 203
		f 4 -1687 -158 -1680 1687
		mu 0 4 203 192 188 198
		f 4 -1685 -1688 -1677 -971
		mu 0 4 215 203 198 210
		f 4 1688 1689 1690 1691
		mu 0 4 1039 1023 1038 1056
		f 4 1692 1693 1694 -1690
		mu 0 4 1023 1022 1037 1038
		f 4 -1695 1695 1696 1697
		mu 0 4 260 261 243 242
		f 4 -1691 -1698 1698 1699
		mu 0 4 275 260 242 259
		f 4 1700 1701 1702 -992
		mu 0 4 338 321 322 339
		f 4 1703 -179 1704 -1702
		mu 0 4 321 312 311 322
		f 4 -1705 -177 1705 1706
		mu 0 4 322 311 320 335
		f 4 -1703 -1707 1707 -994
		mu 0 4 339 322 335 358
		f 4 1708 1709 1710 1711
		mu 0 4 383 359 336 361
		f 4 1712 1713 1714 -1710
		mu 0 4 359 360 337 336
		f 4 -1715 1715 -1704 1716
		mu 0 4 336 337 312 321
		f 4 -1711 -1717 -1701 1717
		mu 0 4 361 336 321 338
		f 4 1718 1719 1720 -1016
		mu 0 4 853 851 852 854
		f 4 1721 -203 1722 -1720
		mu 0 4 851 850 849 852
		f 4 -1723 -201 -1713 1723
		mu 0 4 381 382 360 359
		f 4 -1721 -1724 -1709 -1018
		mu 0 4 402 381 359 383
		f 4 1724 1725 1726 -1028
		mu 0 4 500 492 493 501
		f 4 1727 -213 1728 -1726
		mu 0 4 492 484 483 493
		f 4 -1729 -211 -1722 1729
		mu 0 4 493 483 491 498
		f 4 -1727 -1730 -1719 -1030
		mu 0 4 501 493 498 505
		f 4 1730 1731 1732 -1038
		mu 0 4 786 781 782 787
		f 4 1733 -223 1734 -1732
		mu 0 4 781 774 773 782
		f 4 -1735 -221 -1728 1735
		mu 0 4 499 494 484 492
		f 4 -1733 -1736 -1725 -1040
		mu 0 4 506 499 492 500
		f 4 1736 1737 1738 -1043
		mu 0 4 549 539 540 550
		f 4 1739 -228 1740 -1738
		mu 0 4 539 529 532 540
		f 4 -1741 -234 -1734 1741
		mu 0 4 540 532 538 548
		f 4 -1739 -1742 -1731 -1047
		mu 0 4 550 540 548 560
		f 4 1742 1743 1744 -1053
		mu 0 4 636 626 615 627
		f 4 1745 -238 1746 -1744
		mu 0 4 626 621 609 615
		f 4 -1747 -246 1747 1748
		mu 0 4 615 609 596 603
		f 4 -1745 -1749 1749 -1057
		mu 0 4 627 615 603 616
		f 4 1750 1751 1752 -1284
		mu 0 4 1053 1034 1020 1035
		f 4 1753 -461 1754 -1752
		mu 0 4 1034 1027 1015 1020
		f 4 -1755 -457 1755 1756
		mu 0 4 1020 1015 1002 1010
		f 4 -1753 -1757 1757 -1278
		mu 0 4 1035 1020 1010 1021
		f 4 1758 1759 1760 -1290
		mu 0 4 934 923 933 944
		f 4 1761 -477 1762 -1760
		mu 0 4 923 912 922 933
		f 4 -1763 -475 1763 1764
		mu 0 4 933 922 932 943
		f 4 -1761 -1765 1765 -1292
		mu 0 4 944 933 943 955
		f 4 1766 1767 1768 1769
		mu 0 4 400 378 399 413
		f 4 1770 1771 1772 -1768
		mu 0 4 378 377 398 399
		f 4 -1773 1773 1774 1775
		mu 0 4 1081 1082 1068 1067
		f 4 -1769 -1776 1776 1777
		mu 0 4 1092 1081 1067 1080
		f 4 -1766 1778 1779 -1374
		mu 0 4 955 943 954 962
		f 4 -1764 -560 1780 -1779
		mu 0 4 943 932 942 954
		f 4 -1781 -558 -1746 1781
		mu 0 4 954 942 953 961
		f 4 -1780 -1782 -1743 -1376
		mu 0 4 962 954 961 969
		f 4 -1758 1782 1783 -1442
		mu 0 4 1021 1010 1000 1013
		f 4 -1756 -622 1784 -1783
		mu 0 4 1010 1002 994 1000
		f 4 -1785 -619 1785 1786
		mu 0 4 1000 994 988 1001
		f 4 -1784 -1787 1787 -1439
		mu 0 4 1013 1000 1001 1014
		f 4 -1644 1788 1789 -1446
		mu 0 4 914 905 913 924
		f 4 -1642 -632 1790 -1789
		mu 0 4 905 898 904 913
		f 4 -1791 -630 -1762 1791
		mu 0 4 913 904 912 923
		f 4 -1790 -1792 -1759 -1448
		mu 0 4 924 913 923 934
		f 4 1792 1793 1794 -1469
		mu 0 4 49 38 29 39
		f 4 1795 -653 1796 -1794
		mu 0 4 38 32 21 29
		f 4 -1797 -651 -1648 1797
		mu 0 4 29 21 9 19
		f 4 -1795 -1798 -1645 -1471
		mu 0 4 39 29 19 30
		f 4 -1750 1798 1799 -1476
		mu 0 4 616 603 590 604
		f 4 -1748 -664 1800 -1799
		mu 0 4 603 596 583 590
		f 4 -1801 -662 1801 1802
		mu 0 4 590 583 570 578
		f 4 -1800 -1803 1803 -1478
		mu 0 4 604 590 578 591
		f 4 1804 1805 1806 -1535
		mu 0 4 74 59 48 60
		f 4 1807 -719 1808 -1806
		mu 0 4 59 53 42 48
		f 4 -1809 -717 -1796 1809
		mu 0 4 48 42 32 38
		f 4 -1807 -1810 -1793 -1537
		mu 0 4 60 48 38 49
		f 4 -1804 1810 1811 -1542
		mu 0 4 591 578 566 579
		f 4 -1802 -730 1812 -1811
		mu 0 4 578 570 556 566
		f 4 -1813 -728 1813 1814
		mu 0 4 566 556 544 553
		f 4 -1812 -1815 1815 -1544
		mu 0 4 579 566 553 567
		f 4 -1658 1816 1817 -1597
		mu 0 4 99 87 73 88
		f 4 -1656 -782 1818 -1817
		mu 0 4 87 80 65 73
		f 4 -1819 -780 -1808 1819
		mu 0 4 73 65 53 59
		f 4 -1818 -1820 -1805 -1599
		mu 0 4 88 73 59 74
		f 4 -1816 1820 1821 -1604
		mu 0 4 567 553 542 554
		f 4 -1814 -790 1822 -1821
		mu 0 4 553 544 534 542
		f 4 -1823 -788 -1740 1823
		mu 0 4 542 534 529 539
		f 4 -1822 -1824 -1737 -1606
		mu 0 4 554 542 539 549
		f 4 -296 1824 1825 1826
		mu 0 4 240 224 239 257
		f 4 -293 1827 1828 -1825
		mu 0 4 224 212 238 239
		f 4 -1829 1829 -303 1830
		mu 0 4 239 238 255 256
		f 4 -1826 -1831 -299 1831
		mu 0 4 257 239 256 273
		f 4 -161 1832 1833 -1828
		mu 0 4 978 981 986 987
		f 4 -168 1834 1835 -1833
		mu 0 4 981 985 991 986
		f 4 -1836 1836 -306 1837
		mu 0 4 986 991 999 992
		f 4 -1834 -1838 -304 -1830
		mu 0 4 987 986 992 993
		f 4 -614 1838 1839 -1835
		mu 0 4 677 671 674 678
		f 4 -618 1840 1841 -1839
		mu 0 4 671 672 673 674
		f 4 -1842 1842 -309 1843
		mu 0 4 674 673 675 676
		f 4 -1840 -1844 -307 -1837
		mu 0 4 678 674 676 681
		f 4 -71 1844 1845 -1841
		mu 0 4 1266 1265 1268 1269
		f 4 -69 -1827 1846 -1845
		mu 0 4 258 240 257 274
		f 4 -1847 -1832 -302 1847
		mu 0 4 274 257 273 282
		f 4 -1846 -1848 -310 -1843
		mu 0 4 1269 1268 1272 1273
		f 4 -552 1848 1849 1850
		mu 0 4 1017 1029 1047 1048
		f 4 -550 1851 1852 -1849
		mu 0 4 1029 1046 1063 1047
		f 4 -1853 1853 -537 1854
		mu 0 4 1047 1063 1077 1064
		f 4 -1850 -1855 -533 1855
		mu 0 4 1048 1047 1064 1065
		f 4 -318 1856 1857 -1852
		mu 0 4 309 317 331 332
		f 4 -316 1858 1859 -1857
		mu 0 4 317 329 350 331
		f 4 -1860 1860 -540 1861
		mu 0 4 331 350 374 352
		f 4 -1858 -1862 -538 -1854
		mu 0 4 332 331 352 353
		f 4 -530 1862 1863 -1859
		mu 0 4 329 346 371 350
		f 4 -527 1864 1865 -1863
		mu 0 4 1293 1290 1296 1297
		f 4 -1866 1866 -543 1867
		mu 0 4 1297 1296 1298 1299
		f 4 -1864 -1868 -541 -1861
		mu 0 4 350 371 395 374
		f 4 -454 1868 1869 -1865
		mu 0 4 682 683 684 685
		f 4 -452 -1851 1870 -1869
		mu 0 4 683 686 687 684
		f 4 -1871 -1856 -536 1871
		mu 0 4 684 687 690 688
		f 4 -1870 -1872 -544 -1867
		mu 0 4 685 684 688 689
		f 4 -891 1872 1873 1874
		mu 0 4 283 291 298 292
		f 4 -889 1875 1876 -1873
		mu 0 4 1419 1418 1422 1423
		f 4 -1877 1877 -1121 1878
		mu 0 4 1423 1422 1426 1427
		f 4 -1874 -1879 -1117 1879
		mu 0 4 292 298 302 299
		f 4 -1433 1880 1881 -1876
		mu 0 4 693 694 695 696
		f 4 -1429 1882 1883 -1881
		mu 0 4 694 697 698 695
		f 4 -1884 1884 -1124 1885
		mu 0 4 695 698 701 699
		f 4 -1882 -1886 -1122 -1878
		mu 0 4 696 695 699 700
		f 4 -980 1886 1887 -1883
		mu 0 4 1042 1057 1072 1073
		f 4 -977 1888 1889 -1887
		mu 0 4 1057 1074 1088 1072
		f 4 -1890 1890 -1127 1891
		mu 0 4 1072 1088 1100 1089
		f 4 -1888 -1892 -1125 -1885
		mu 0 4 1073 1072 1089 1090
		f 4 -1113 1892 1893 -1889
		mu 0 4 262 276 284 285
		f 4 -1116 -1875 1894 -1893
		mu 0 4 276 283 292 284
		f 4 -1895 -1880 -1120 1895
		mu 0 4 284 292 299 293
		f 4 -1894 -1896 -1128 -1891
		mu 0 4 285 284 293 294
		f 4 -1273 1896 1897 1898
		mu 0 4 710 704 707 711
		f 4 -1271 1899 1900 -1897
		mu 0 4 704 705 706 707
		f 4 -1901 1901 -1355 1902
		mu 0 4 707 706 708 709
		f 4 -1898 -1903 -1351 1903
		mu 0 4 711 707 709 714
		f 4 -1347 1904 1905 -1900
		mu 0 4 1444 1447 1448 1449
		f 4 -1350 1906 1907 -1905
		mu 0 4 445 430 444 455
		f 4 -1908 1908 -1358 1909
		mu 0 4 455 444 454 463
		f 4 -1906 -1910 -1356 -1902
		mu 0 4 1449 1448 1450 1451
		f 4 -1137 1910 1911 -1907
		mu 0 4 430 414 429 444
		f 4 -1135 1912 1913 -1911
		mu 0 4 414 401 428 429
		f 4 -1914 1914 -1361 1915
		mu 0 4 429 428 442 443
		f 4 -1912 -1916 -1359 -1909
		mu 0 4 444 429 443 454
		f 4 -1368 1916 1917 -1913
		mu 0 4 1106 1094 1105 1110
		f 4 -1366 -1899 1918 -1917
		mu 0 4 1094 1083 1104 1105
		f 4 -1919 -1904 -1354 1919
		mu 0 4 1105 1104 1108 1109
		f 4 -1918 -1920 -1362 -1915
		mu 0 4 1110 1105 1109 1113
		f 4 -1788 1920 1921 1922
		mu 0 4 1014 1001 1012 1024
		f 4 -1786 1923 1924 -1921
		mu 0 4 1001 988 1011 1012
		f 4 -1925 1925 -1693 1926
		mu 0 4 1012 1011 1022 1023
		f 4 -1922 -1927 -1689 1927
		mu 0 4 1024 1012 1023 1039
		f 4 -164 1928 1929 -1924
		mu 0 4 1467 1468 1469 1470
		f 4 -162 1930 1931 -1929
		mu 0 4 1468 1471 1472 1469
		f 4 -1932 1932 -1696 1933
		mu 0 4 1469 1472 1475 1473
		f 4 -1930 -1934 -1694 -1926
		mu 0 4 1470 1469 1473 1474
		f 4 -1686 1934 1935 -1931
		mu 0 4 200 213 225 226
		f 4 -1683 1936 1937 -1935
		mu 0 4 213 227 241 225
		f 4 -1938 1938 -1699 1939
		mu 0 4 225 241 259 242
		f 4 -1936 -1940 -1697 -1933
		mu 0 4 226 225 242 243
		f 4 -986 1940 1941 -1937
		mu 0 4 1476 1477 1478 1479
		f 4 -984 -1923 1942 -1941
		mu 0 4 1477 1480 1481 1478
		f 4 -1943 -1928 -1692 1943
		mu 0 4 1478 1481 1484 1482
		f 4 -1942 -1944 -1700 -1939
		mu 0 4 1479 1478 1482 1483
		f 4 -1708 1944 1945 1946
		mu 0 4 358 335 357 379
		f 4 -1706 1947 1948 -1945
		mu 0 4 335 320 356 357
		f 4 -1949 1949 -1771 1950
		mu 0 4 357 356 377 378
		f 4 -1946 -1951 -1767 1951
		mu 0 4 379 357 378 400
		f 4 -548 1952 1953 -1948
		mu 0 4 1485 1486 1487 1488
		f 4 -545 1954 1955 -1953
		mu 0 4 1486 1489 1490 1487
		f 4 -1956 1956 -1774 1957
		mu 0 4 1487 1490 1493 1491
		f 4 -1954 -1958 -1772 -1950
		mu 0 4 1488 1487 1491 1492
		f 4 -1754 1958 1959 -1955
		mu 0 4 1027 1034 1051 1052
		f 4 -1751 1960 1961 -1959
		mu 0 4 1034 1053 1066 1051
		f 4 -1962 1962 -1777 1963
		mu 0 4 1051 1066 1080 1067
		f 4 -1960 -1964 -1775 -1957
		mu 0 4 1052 1051 1067 1068
		f 4 -1365 1964 1965 -1961
		mu 0 4 1494 1495 1496 1497
		f 4 -1370 -1947 1966 -1965
		mu 0 4 1495 1498 1499 1496
		f 4 -1967 -1952 -1770 1967
		mu 0 4 1496 1499 1502 1500
		f 4 -1966 -1968 -1778 -1963
		mu 0 4 1497 1496 1500 1501
		f 4 -329 1968 1969 1970
		mu 0 4 334 319 326 345
		f 4 -327 1971 1972 -1969
		mu 0 4 319 303 314 326
		f 4 -1973 1973 1974 1975
		mu 0 4 326 314 325 344
		f 4 -1970 -1976 1976 1977
		mu 0 4 345 326 344 368
		f 4 -172 1978 1979 -1972
		mu 0 4 303 306 313 314
		f 4 -180 1980 1981 -1979
		mu 0 4 306 312 323 313
		f 4 -1982 1982 1983 1984
		mu 0 4 313 323 341 324
		f 4 -1980 -1985 1985 -1974
		mu 0 4 314 313 324 325
		f 4 -1716 1986 1987 -1981
		mu 0 4 312 337 340 323
		f 4 -1714 1988 1989 -1987
		mu 0 4 337 360 364 340
		f 4 -1990 1990 1991 1992
		mu 0 4 340 364 389 365
		f 4 -1988 -1993 1993 -1983
		mu 0 4 323 340 365 341
		f 4 -200 1994 1995 -1989
		mu 0 4 360 369 370 364
		f 4 -198 -1971 1996 -1995
		mu 0 4 369 334 345 370
		f 4 -1997 -1978 1997 1998
		mu 0 4 370 345 368 394
		f 4 -1996 -1999 1999 -1991
		mu 0 4 364 370 394 389
		f 4 -1021 2000 2001 2002
		mu 0 4 432 416 418 435
		f 4 -1019 2003 2004 -2001
		mu 0 4 416 383 403 418
		f 4 -2005 2005 2006 2007
		mu 0 4 418 403 417 434
		f 4 -2002 -2008 2008 2009
		mu 0 4 435 418 434 448
		f 4 -1712 2010 2011 -2004
		mu 0 4 383 361 385 403
		f 4 -1718 2012 2013 -2011
		mu 0 4 361 338 384 385
		f 4 -2014 2014 2015 2016
		mu 0 4 385 384 404 405
		f 4 -2012 -2017 2017 -2006
		mu 0 4 403 385 405 417;
	setAttr ".fc[1000:1071]"
		f 4 -991 2018 2019 -2013
		mu 0 4 338 362 386 384
		f 4 -987 2020 2021 -2019
		mu 0 4 362 387 406 386
		f 4 -2022 2022 2023 2024
		mu 0 4 386 406 423 407
		f 4 -2020 -2025 2025 -2015
		mu 0 4 384 386 407 404
		f 4 -1146 2026 2027 -2021
		mu 0 4 387 421 422 406
		f 4 -1144 -2003 2028 -2027
		mu 0 4 421 432 435 422
		f 4 -2029 -2010 2029 2030
		mu 0 4 422 435 448 436
		f 4 -2028 -2031 2031 -2023
		mu 0 4 406 422 436 423
		f 4 -1977 2032 2033 2034
		mu 0 4 368 344 367 393
		f 4 -1975 2035 2036 -2033
		mu 0 4 344 325 343 367
		f 4 -2037 2037 2038 2039
		mu 0 4 367 343 391 392
		f 4 -2034 -2040 2040 2041
		mu 0 4 393 367 392 411
		f 4 -1986 2042 2043 -2036
		mu 0 4 325 324 342 343
		f 4 -1984 2044 2045 -2043
		mu 0 4 324 341 366 342
		f 4 -2046 2046 2047 2048
		mu 0 4 1115 1116 1117 1118
		f 4 -2044 -2049 2049 -2038
		mu 0 4 1121 1115 1118 1122
		f 4 -1994 2050 2051 -2045
		mu 0 4 341 365 390 366
		f 4 -1992 2052 2053 -2051
		mu 0 4 365 389 410 390
		f 4 -2054 2054 2055 2056
		mu 0 4 1503 1504 1505 1506
		f 4 -2052 -2057 2057 -2047
		mu 0 4 1509 1503 1506 1510
		f 4 -2000 2058 2059 -2053
		mu 0 4 389 394 412 410
		f 4 -1998 -2035 2060 -2059
		mu 0 4 394 368 393 412
		f 4 -2061 -2042 2061 2062
		mu 0 4 1127 1128 1129 1130
		f 4 -2060 -2063 2063 -2055
		mu 0 4 1133 1127 1130 1134
		f 4 -2009 2064 2065 2066
		mu 0 4 448 434 447 457
		f 4 -2007 2067 2068 -2065
		mu 0 4 434 417 433 447
		f 4 -2069 2069 2070 2071
		mu 0 4 1139 1140 1141 1142
		f 4 -2066 -2072 2072 2073
		mu 0 4 1145 1139 1142 1146
		f 4 -2018 2074 2075 -2068
		mu 0 4 417 405 420 433
		f 4 -2016 2076 2077 -2075
		mu 0 4 405 404 419 420
		f 4 -2078 2078 2079 2080
		mu 0 4 1515 1516 1517 1518
		f 4 -2076 -2081 2081 -2070
		mu 0 4 1521 1515 1518 1522
		f 4 -2026 2082 2083 -2077
		mu 0 4 404 407 424 419
		f 4 -2024 2084 2085 -2083
		mu 0 4 407 423 437 424
		f 4 -2086 2086 2087 2088
		mu 0 4 1151 1152 1153 1154
		f 4 -2084 -2089 2089 -2079
		mu 0 4 1157 1151 1154 1158
		f 4 -2032 2090 2091 -2085
		mu 0 4 423 436 449 437
		f 4 -2030 -2067 2092 -2091
		mu 0 4 436 448 457 449
		f 4 -2093 -2074 2093 2094
		mu 0 4 449 457 464 458
		f 4 -2092 -2095 2095 -2087
		mu 0 4 437 449 458 459
		f 4 -2041 2096 2097 2098
		mu 0 4 1527 1528 1529 1530
		f 4 -2039 2099 2100 -2097
		mu 0 4 1528 1531 1532 1529
		f 4 -2101 2101 -185 2102
		mu 0 4 1529 1532 1535 1533
		f 4 -2098 -2103 -181 2103
		mu 0 4 1530 1529 1533 1534
		f 4 -2050 2104 2105 -2100
		mu 0 4 1122 1118 1120 1125
		f 4 -2048 2106 2107 -2105
		mu 0 4 1118 1117 1119 1120
		f 4 -2108 2108 -188 2109
		mu 0 4 1120 1119 1123 1124
		f 4 -2106 -2110 -186 -2102
		mu 0 4 1125 1120 1124 1126
		f 4 -2058 2110 2111 -2107
		mu 0 4 1510 1506 1508 1513
		f 4 -2056 2112 2113 -2111
		mu 0 4 1506 1505 1507 1508
		f 4 -2114 2114 -191 2115
		mu 0 4 1508 1507 1511 1512
		f 4 -2112 -2116 -189 -2109
		mu 0 4 1513 1508 1512 1514
		f 4 -2064 2116 2117 -2113
		mu 0 4 1134 1130 1132 1137
		f 4 -2062 -2099 2118 -2117
		mu 0 4 1130 1129 1131 1132
		f 4 -2119 -2104 -184 2119
		mu 0 4 1132 1131 1135 1136
		f 4 -2118 -2120 -192 -2115
		mu 0 4 1137 1132 1136 1138
		f 4 -2073 2120 2121 2122
		mu 0 4 1146 1142 1144 1149
		f 4 -2071 2123 2124 -2121
		mu 0 4 1142 1141 1143 1144
		f 4 -2125 2125 -1003 2126
		mu 0 4 1144 1143 1147 1148
		f 4 -2122 -2127 -999 2127
		mu 0 4 1149 1144 1148 1150
		f 4 -2082 2128 2129 -2124
		mu 0 4 1522 1518 1520 1525
		f 4 -2080 2130 2131 -2129
		mu 0 4 1518 1517 1519 1520
		f 4 -2132 2132 -1006 2133
		mu 0 4 1520 1519 1523 1524
		f 4 -2130 -2134 -1004 -2126
		mu 0 4 1525 1520 1524 1526
		f 4 -2090 2134 2135 -2131
		mu 0 4 1158 1154 1156 1161
		f 4 -2088 2136 2137 -2135
		mu 0 4 1154 1153 1155 1156
		f 4 -2138 2138 -1009 2139
		mu 0 4 1156 1155 1159 1160
		f 4 -2136 -2140 -1007 -2133
		mu 0 4 1161 1156 1160 1162
		f 4 -2096 2140 2141 -2137
		mu 0 4 1536 1537 1538 1539
		f 4 -2094 -2123 2142 -2141
		mu 0 4 1537 1540 1541 1538
		f 4 -2143 -2128 -1002 2143
		mu 0 4 1538 1541 1544 1542
		f 4 -2142 -2144 -1010 -2139
		mu 0 4 1539 1538 1542 1543;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "nurbsCircle1";
	rename -uid "488988D2-4E01-A686-EB2D-BAB5C4A1C3BE";
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	rename -uid "65154930-4CCD-57C5-1C53-38895EF1DA1C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode ikHandle -n "ikHandle2" -p "nurbsCircle1";
	rename -uid "C86C59D1-4219-583C-411B-2E9AEFC2C047";
	setAttr ".t" -type "double3" 0.072116116641899472 0.48608718402122886 0.010047389913050875 ;
	setAttr ".pv" -type "double3" 0.025009784714736447 -1.8210475642866117 0.82653510468353941 ;
	setAttr ".roc" yes;
createNode transform -n "nurbsCircle2";
	rename -uid "F9E34590-4025-D02F-D949-57ACCA6BB75C";
createNode nurbsCurve -n "nurbsCircleShape2" -p "nurbsCircle2";
	rename -uid "59C017B5-4E29-F1BE-14F9-80B2D8E2D66C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884694e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode ikHandle -n "ikHandle3" -p "nurbsCircle2";
	rename -uid "DCD6CDA4-4F35-F8E5-B76B-63895FE0A03E";
	setAttr ".t" -type "double3" -0.04434391464841525 0.46703737454323191 -0.0052987896091245545 ;
	setAttr ".pv" -type "double3" 0.23508683972901867 -1.5326265352275024 1.2632458514884568 ;
	setAttr ".roc" yes;
createNode transform -n "nurbsCircle3";
	rename -uid "A3DD516F-41D3-C742-CB16-B78DA45B432B";
createNode nurbsCurve -n "nurbsCircleShape3" -p "nurbsCircle3";
	rename -uid "781C3143-47EF-E4D6-1A63-D9923D01F99D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884694e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode ikHandle -n "ikHandle1" -p "nurbsCircle3";
	rename -uid "9A87F99F-4994-DCB9-EFF2-A09BAB7A7AF9";
	setAttr ".t" -type "double3" 0.020978656219238445 0.5509606926007975 -0.028945074904481949 ;
	setAttr ".pv" -type "double3" -0.13937526324016042 -1.4731600801995439 1.3455013616132927 ;
	setAttr ".roc" yes;
createNode transform -n "nurbsCircle4";
	rename -uid "90E67FEB-412D-4845-F917-39BD00BD5025";
createNode nurbsCurve -n "nurbsCircleShape4" -p "nurbsCircle4";
	rename -uid "8195AEBE-4203-C596-9952-D28440C607AE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884694e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode ikHandle -n "ikHandle6" -p "nurbsCircle4";
	rename -uid "30EC13B2-414C-D7D1-01A8-40A23953EEAE";
	setAttr ".t" -type "double3" 0.0093322274884197753 0.44456565020710714 0.079129331744648645 ;
	setAttr ".pv" -type "double3" 1.2402785911749554 1.5424628454736233 -0.28725839692939181 ;
	setAttr ".roc" yes;
createNode transform -n "nurbsCircle5";
	rename -uid "350C42F1-48D3-E26E-AB73-A0AC8EA10242";
createNode nurbsCurve -n "nurbsCircleShape5" -p "nurbsCircle5";
	rename -uid "84F342D9-46AB-8162-E624-38B831250464";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884694e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode ikHandle -n "ikHandle5" -p "nurbsCircle5";
	rename -uid "EB1E2014-4ABB-EF23-2133-3CA1DFDCCD35";
	setAttr ".t" -type "double3" 0.011414430088792338 0.48608699999999971 0.050759303774064346 ;
	setAttr ".pv" -type "double3" -0.00048745788947305094 1.9767548621369324 0.30403943396003991 ;
	setAttr ".roc" yes;
createNode transform -n "nurbsCircle6";
	rename -uid "42EC3A04-41F5-9F82-C578-A1BEF832C30E";
createNode nurbsCurve -n "nurbsCircleShape6" -p "nurbsCircle6";
	rename -uid "41AD2266-4674-4278-D4FB-AA9685288E3D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884694e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode ikHandle -n "ikHandle4" -p "nurbsCircle6";
	rename -uid "FEF77D2B-4FFB-8121-D936-C8870BD494DC";
	setAttr ".t" -type "double3" -0.098062400509045133 0.5415468342071037 0.099089623178952202 ;
	setAttr ".pv" -type "double3" 1.0722642448784157 -1.6477855422010996 0.36749448440534549 ;
	setAttr ".roc" yes;
createNode transform -n "nurbsCircle7";
	rename -uid "341EDF02-419C-57E0-2F55-E0A24629A812";
createNode nurbsCurve -n "nurbsCircleShape7" -p "nurbsCircle7";
	rename -uid "6C457807-4FC0-75E6-2765-D3AF006C719D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode ikHandle -n "ikHandle7" -p "nurbsCircle7";
	rename -uid "EFCF690E-46D1-3982-852E-EDB662766E2A";
	setAttr ".t" -type "double3" -0.0073656140238123058 -1.3646486670418483 0 ;
	setAttr ".pv" -type "double3" 2 0 0 ;
	setAttr ".roc" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "181A93B7-4FE6-9600-7562-CCA4B3E3B58D";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "1D18ADCA-4021-1593-70F4-2696308D09A5";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "E1ADC928-428E-FD06-945C-24B0D5C8FCBA";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3BA40417-45C6-7627-0818-BE8AD5662735";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "88CAB3A9-4D7D-A109-EDFD-D99972CFC5B4";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F0DACBD1-4087-CC3E-4DDB-669529295728";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 645\n                -height 417\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 417\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 0\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 27 100 -ps 2 73 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 0\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 0\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 417\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 417\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "47A2F8E3-4034-E0C4-D852-79AB6CBA04AC";
	setAttr ".b" -type "string" "playbackOptions -min 38 -max 52 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "skeleton";
	rename -uid "25002FD3-4293-7266-B2C9-F4A5D1F79C87";
	setAttr ".do" 1;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "0F3D3E73-48CD-09ED-A3D9-1DBBA2273BC8";
createNode shadingEngine -n "cmdr_shroom_final:commanderSG";
	rename -uid "C2DA1539-429C-1FC4-911E-9EB9E01AFB1B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "cmdr_shroom_final:materialInfo1";
	rename -uid "E9D1A8B7-40D6-4E57-1981-C39BFE408AFE";
createNode file -n "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse";
	rename -uid "B448DF28-4D2E-DAEE-D158-9AAA9CDCEDB8";
	setAttr ".ftn" -type "string" "C:/Users/zac/Desktop/Capstone/CasterWars//scenes/Mushroom Legion/Textures/Channel_cmdr paint1_Diffuse.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "cmdr_shroom_final:place2dTexture1";
	rename -uid "EBF1119A-4D18-3B6A-3247-85A1B2D680D2";
createNode file -n "cmdr_shroom_final:ReflectionMap";
	rename -uid "B75263FD-4E1A-27FC-4381-D09B238004A6";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2016/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "cmdr_shroom_final:place2dTexture2";
	rename -uid "4475E481-4697-967C-8E6E-4481F4D21A76";
createNode skinCluster -n "skinCluster1";
	rename -uid "A6267488-4C3D-801F-00A2-EAB6181C8FCE";
	setAttr -s 1074 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[14]" 0.27822666846186034;
	setAttr ".wl[0].w[15]" 0.47386915416052289;
	setAttr ".wl[0].w[16]" 0.025643136954581605;
	setAttr ".wl[0].w[18]" 0.10419505046383584;
	setAttr ".wl[0].w[19]" 0.11806598995919951;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[14]" 0.28721835421137942;
	setAttr ".wl[1].w[15]" 0.42554408546080125;
	setAttr ".wl[1].w[16]" 0.016711118470858127;
	setAttr ".wl[1].w[22]" 0.11513425915214727;
	setAttr ".wl[1].w[23]" 0.15539218270481389;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[6]" 0.00016082664214478896;
	setAttr ".wl[2].w[16]" 0.3463027339746349;
	setAttr ".wl[2].w[17]" 0.30602210289177589;
	setAttr ".wl[2].w[20]" 0.18863389232602623;
	setAttr ".wl[2].w[21]" 0.15888044416541816;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[6]" 0.00025739885067250752;
	setAttr ".wl[3].w[7]" 0.00017007397255630448;
	setAttr ".wl[3].w[16]" 0.34962214364111371;
	setAttr ".wl[3].w[17]" 0.3112963967497771;
	setAttr ".wl[3].w[24]" 0.33865398678588038;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[15]" 0.0024884919849569999;
	setAttr ".wl[4].w[16]" 0.63208352001277013;
	setAttr ".wl[4].w[17]" 0.21301209071856658;
	setAttr ".wl[4].w[20]" 0.11122546213146933;
	setAttr ".wl[4].w[21]" 0.041190435152236818;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[6]" 0.0021169539004935833;
	setAttr ".wl[5].w[16]" 0.19649528520233595;
	setAttr ".wl[5].w[17]" 0.107189380936245;
	setAttr ".wl[5].w[23]" 0.0030670186306310937;
	setAttr ".wl[5].w[24]" 0.6911313613302944;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[6]" 0.00071626184486992342;
	setAttr ".wl[6].w[16]" 0.39525024744680576;
	setAttr ".wl[6].w[17]" 0.24235089955485797;
	setAttr ".wl[6].w[20]" 0.19731891164102452;
	setAttr ".wl[6].w[21]" 0.16436367951244199;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[6]" 0.0011317799406190146;
	setAttr ".wl[7].w[7]" 0.00059076991128929868;
	setAttr ".wl[7].w[16]" 0.38540221552479864;
	setAttr ".wl[7].w[17]" 0.30657069567055062;
	setAttr ".wl[7].w[24]" 0.30630453895274234;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[6]" 0.063458020025474432;
	setAttr ".wl[8].w[16]" 0.54153354532830167;
	setAttr ".wl[8].w[17]" 0.030507661548102357;
	setAttr ".wl[8].w[20]" 0.32227447057742709;
	setAttr ".wl[8].w[21]" 0.04222630252069446;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[6]" 0.092270813142568187;
	setAttr ".wl[9].w[7]" 0.026280845117805464;
	setAttr ".wl[9].w[16]" 0.53145375809377238;
	setAttr ".wl[9].w[17]" 0.0561789288004945;
	setAttr ".wl[9].w[24]" 0.29381565484535938;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[4]" 0.077182894171728855;
	setAttr ".wl[10].w[5]" 0.072857102918142777;
	setAttr ".wl[10].w[6]" 0.41415444239890353;
	setAttr ".wl[10].w[16]" 0.18032189542016278;
	setAttr ".wl[10].w[20]" 0.25548366509106202;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[4]" 0.10626991855699858;
	setAttr ".wl[11].w[6]" 0.455434256338757;
	setAttr ".wl[11].w[16]" 0.27429138823648636;
	setAttr ".wl[11].w[24]" 0.059424882879926116;
	setAttr ".wl[11].w[26]" 0.10457955398783193;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[1]" 0.33399210172283567;
	setAttr ".wl[12].w[4]" 0.11916942507776274;
	setAttr ".wl[12].w[5]" 0.10539736823630562;
	setAttr ".wl[12].w[6]" 0.10949333560286874;
	setAttr ".wl[12].w[40]" 0.33194776936022724;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[1]" 0.30990113686021326;
	setAttr ".wl[13].w[4]" 0.14610262866207377;
	setAttr ".wl[13].w[6]" 0.058468057777790954;
	setAttr ".wl[13].w[26]" 0.14592785407332404;
	setAttr ".wl[13].w[32]" 0.33960032262659789;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[1]" 0.15722726846429982;
	setAttr ".wl[14].w[40]" 0.57025813591236396;
	setAttr ".wl[14].w[41]" 0.23042014231558577;
	setAttr ".wl[14].w[42]" 0.036854073670129397;
	setAttr ".wl[14].w[43]" 0.0052403796376212005;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[1]" 0.15711361832129911;
	setAttr ".wl[15].w[32]" 0.5721345853583043;
	setAttr ".wl[15].w[33]" 0.22863721295767195;
	setAttr ".wl[15].w[34]" 0.03748552445259052;
	setAttr ".wl[15].w[35]" 0.0046290589101340993;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[9]" 0.0016473319978038846;
	setAttr ".wl[16].w[14]" 0.0027269916288847613;
	setAttr ".wl[16].w[22]" 0.52851101358907204;
	setAttr ".wl[16].w[23]" 0.46628970710918366;
	setAttr ".wl[16].w[24]" 0.00082495567505579505;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[9]" 0.0046559557361025225;
	setAttr ".wl[17].w[14]" 0.01617006447537751;
	setAttr ".wl[17].w[15]" 0.0035048509183089383;
	setAttr ".wl[17].w[18]" 0.54204491712567848;
	setAttr ".wl[17].w[19]" 0.43362421174453236;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[16]" 8.6329158140800469e-005;
	setAttr ".wl[18].w[17]" 6.3652540567188783e-005;
	setAttr ".wl[18].w[19]" 1.8174654742009083e-005;
	setAttr ".wl[18].w[20]" 0.89377666370311848;
	setAttr ".wl[18].w[21]" 0.10605517994343144;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[16]" 1.1657220227431894e-005;
	setAttr ".wl[19].w[17]" 1.0543202734747815e-005;
	setAttr ".wl[19].w[19]" 1.2083730342955637e-007;
	setAttr ".wl[19].w[20]" 0.59443199160536175;
	setAttr ".wl[19].w[21]" 0.40554568713437256;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[6]" 3.3383763871350179e-007;
	setAttr ".wl[20].w[16]" 1.9676421214170083e-005;
	setAttr ".wl[20].w[17]" 1.776661726943064e-005;
	setAttr ".wl[20].w[20]" 0.70771854179948523;
	setAttr ".wl[20].w[21]" 0.29224368132439238;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[5]" 0.00015054103983014092;
	setAttr ".wl[21].w[6]" 0.014252410490596813;
	setAttr ".wl[21].w[7]" 0.00075260512411053852;
	setAttr ".wl[21].w[20]" 0.96684242339655735;
	setAttr ".wl[21].w[21]" 0.018002019948905226;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[3]" 0.023313703888893575;
	setAttr ".wl[22].w[4]" 0.048731942542537848;
	setAttr ".wl[22].w[5]" 0.069111828414698359;
	setAttr ".wl[22].w[6]" 0.26267376601812958;
	setAttr ".wl[22].w[20]" 0.59616875913574063;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[1]" 0.40868649918982114;
	setAttr ".wl[23].w[2]" 0.097918916249610938;
	setAttr ".wl[23].w[6]" 0.048282259861956472;
	setAttr ".wl[23].w[40]" 0.11130073318557189;
	setAttr ".wl[23].w[44]" 0.33381159151303957;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[1]" 0.21618607167869136;
	setAttr ".wl[24].w[40]" 0.051013552003945285;
	setAttr ".wl[24].w[44]" 0.49193747906812757;
	setAttr ".wl[24].w[45]" 0.19069606057600241;
	setAttr ".wl[24].w[46]" 0.050166836673233198;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[1]" 0.27304571819996215;
	setAttr ".wl[25].w[32]" 0.071448681424842467;
	setAttr ".wl[25].w[36]" 0.46615469963268741;
	setAttr ".wl[25].w[37]" 0.15223201242126144;
	setAttr ".wl[25].w[38]" 0.037118888321246608;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[1]" 0.39931098696272194;
	setAttr ".wl[26].w[2]" 0.14293961120314441;
	setAttr ".wl[26].w[4]" 0.1003667622180518;
	setAttr ".wl[26].w[26]" 0.0825411782486139;
	setAttr ".wl[26].w[36]" 0.27484146136746779;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[4]" 0.0846883990735115;
	setAttr ".wl[27].w[5]" 0.094582070642054983;
	setAttr ".wl[27].w[6]" 0.51603300087772486;
	setAttr ".wl[27].w[24]" 0.25682862871685058;
	setAttr ".wl[27].w[26]" 0.047867900689858175;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[5]" 0.00023347173584052492;
	setAttr ".wl[28].w[6]" 0.033423221798407066;
	setAttr ".wl[28].w[7]" 0.0019914836932265275;
	setAttr ".wl[28].w[23]" 9.2029329690963328e-005;
	setAttr ".wl[28].w[24]" 0.96425979344283497;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[6]" 1.8964848703081393e-006;
	setAttr ".wl[29].w[16]" 9.2082846436903468e-005;
	setAttr ".wl[29].w[17]" 8.7417284520624271e-005;
	setAttr ".wl[29].w[23]" 2.0533703715937306e-006;
	setAttr ".wl[29].w[24]" 0.99981655001380054;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[6]" 9.985738784491072e-007;
	setAttr ".wl[30].w[16]" 2.877913551631476e-005;
	setAttr ".wl[30].w[17]" 2.7381483751915192e-005;
	setAttr ".wl[30].w[23]" 1.4303399386289625e-006;
	setAttr ".wl[30].w[24]" 0.99994141046691476;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[6]" 7.7377800042516828e-008;
	setAttr ".wl[31].w[16]" 1.5521954760518615e-007;
	setAttr ".wl[31].w[17]" 1.2036972357151363e-007;
	setAttr ".wl[31].w[23]" 5.9726549140505598e-007;
	setAttr ".wl[31].w[24]" 0.99999904976743748;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[9]" 0.010453956206076354;
	setAttr ".wl[32].w[14]" 0.15373860823473282;
	setAttr ".wl[32].w[15]" 0.1186490880380419;
	setAttr ".wl[32].w[22]" 0.37069208752682342;
	setAttr ".wl[32].w[23]" 0.34646625999432551;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[9]" 0.010873671779720822;
	setAttr ".wl[33].w[14]" 0.11190682791187391;
	setAttr ".wl[33].w[15]" 0.11200220335207926;
	setAttr ".wl[33].w[18]" 0.39778517524353707;
	setAttr ".wl[33].w[19]" 0.36743212171278899;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[16]" 0.086403706846181857;
	setAttr ".wl[34].w[17]" 0.041122712958415096;
	setAttr ".wl[34].w[19]" 0.0020006411980463255;
	setAttr ".wl[34].w[20]" 0.67905100253369488;
	setAttr ".wl[34].w[21]" 0.19142193646366171;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[6]" 3.7260923611121428e-005;
	setAttr ".wl[35].w[16]" 0.029770846738215808;
	setAttr ".wl[35].w[17]" 0.026180862221647977;
	setAttr ".wl[35].w[20]" 0.51719800088568457;
	setAttr ".wl[35].w[21]" 0.42681302923084052;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[6]" 0.0012879626249656525;
	setAttr ".wl[36].w[16]" 0.035737318060510559;
	setAttr ".wl[36].w[17]" 0.014411692172642852;
	setAttr ".wl[36].w[20]" 0.64812553103638315;
	setAttr ".wl[36].w[21]" 0.30043749610549769;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[6]" 0.055164075823227868;
	setAttr ".wl[37].w[7]" 0.012431489913369844;
	setAttr ".wl[37].w[16]" 0.043665887562619292;
	setAttr ".wl[37].w[20]" 0.85997527620991743;
	setAttr ".wl[37].w[21]" 0.028763270490865564;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[3]" 0.035268614265222306;
	setAttr ".wl[38].w[4]" 0.1063754186485706;
	setAttr ".wl[38].w[5]" 0.11682209317162595;
	setAttr ".wl[38].w[6]" 0.36272629386695604;
	setAttr ".wl[38].w[20]" 0.37880758004762533;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[1]" 0.44378421704156462;
	setAttr ".wl[39].w[4]" 0.080368402619863874;
	setAttr ".wl[39].w[5]" 0.0832815442296371;
	setAttr ".wl[39].w[6]" 0.079149242335205372;
	setAttr ".wl[39].w[40]" 0.31341659377372894;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[1]" 0.33493325374488842;
	setAttr ".wl[40].w[40]" 0.4279138403562236;
	setAttr ".wl[40].w[41]" 0.1513146998816722;
	setAttr ".wl[40].w[42]" 0.027134699920803061;
	setAttr ".wl[40].w[44]" 0.058703506096412693;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[1]" 0.28990317666829901;
	setAttr ".wl[41].w[32]" 0.48045857132236508;
	setAttr ".wl[41].w[33]" 0.16720777765754161;
	setAttr ".wl[41].w[34]" 0.031937198840058356;
	setAttr ".wl[41].w[36]" 0.030493275511735991;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[1]" 0.42592672968248213;
	setAttr ".wl[42].w[2]" 0.057350942288922312;
	setAttr ".wl[42].w[4]" 0.11515662852308338;
	setAttr ".wl[42].w[26]" 0.11438763738423641;
	setAttr ".wl[42].w[32]" 0.28717806212127589;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[4]" 0.10848673484865806;
	setAttr ".wl[43].w[5]" 0.059063105450191604;
	setAttr ".wl[43].w[6]" 0.47118798812419127;
	setAttr ".wl[43].w[24]" 0.26552789055473375;
	setAttr ".wl[43].w[26]" 0.095734281022225462;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[6]" 0.038602002793609487;
	setAttr ".wl[44].w[7]" 0.0094670140642641593;
	setAttr ".wl[44].w[16]" 0.041352837245513016;
	setAttr ".wl[44].w[17]" 0.008044405382087963;
	setAttr ".wl[44].w[24]" 0.90253374051452528;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[6]" 0.00051734088642983538;
	setAttr ".wl[45].w[7]" 0.000276790273872231;
	setAttr ".wl[45].w[16]" 0.031685141691250085;
	setAttr ".wl[45].w[17]" 0.01979035867007068;
	setAttr ".wl[45].w[24]" 0.94773036847837722;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[6]" 9.7676777471507114e-005;
	setAttr ".wl[46].w[16]" 0.024203946298085234;
	setAttr ".wl[46].w[17]" 0.022312189019021753;
	setAttr ".wl[46].w[23]" 7.8913185714346565e-005;
	setAttr ".wl[46].w[24]" 0.95330727471970722;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[6]" 0.00010156787196215985;
	setAttr ".wl[47].w[16]" 0.0024679894657381749;
	setAttr ".wl[47].w[17]" 0.00168847682896453;
	setAttr ".wl[47].w[23]" 0.00014758144631154456;
	setAttr ".wl[47].w[24]" 0.99559438438702352;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[14]" 0.23230113432708377;
	setAttr ".wl[48].w[15]" 0.76743913913467832;
	setAttr ".wl[48].w[16]" 0.00023605446373655019;
	setAttr ".wl[48].w[18]" 1.1954170685541272e-005;
	setAttr ".wl[48].w[22]" 1.17179038158846e-005;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[6]" 4.0673699491693567e-007;
	setAttr ".wl[49].w[15]" 1.2086582293976084e-006;
	setAttr ".wl[49].w[16]" 0.92202108809221273;
	setAttr ".wl[49].w[17]" 0.077976027989623831;
	setAttr ".wl[49].w[24]" 1.2685229391529654e-006;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[16]" 0.57376600076590945;
	setAttr ".wl[50].w[17]" 0.42623312912790123;
	setAttr ".wl[50].w[20]" 1.6346561715070678e-007;
	setAttr ".wl[50].w[21]" 1.5671564303494359e-007;
	setAttr ".wl[50].w[24]" 5.4992492910535833e-007;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[16]" 0.57799548613761276;
	setAttr ".wl[51].w[17]" 0.42199998112010251;
	setAttr ".wl[51].w[20]" 1.887365687701597e-006;
	setAttr ".wl[51].w[21]" 1.7810776447571752e-006;
	setAttr ".wl[51].w[24]" 8.6429895223922861e-007;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[5]" 0.00014978463522227992;
	setAttr ".wl[52].w[6]" 0.0025302625667285973;
	setAttr ".wl[52].w[7]" 0.00029915857544552857;
	setAttr ".wl[52].w[16]" 0.95948922485502497;
	setAttr ".wl[52].w[17]" 0.0375315693675786;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[4]" 0.051558553609549945;
	setAttr ".wl[53].w[6]" 0.14431385187196899;
	setAttr ".wl[53].w[7]" 0.014128794368486755;
	setAttr ".wl[53].w[16]" 0.73982356199771915;
	setAttr ".wl[53].w[26]" 0.050175238152274974;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[1]" 0.36968673946256564;
	setAttr ".wl[54].w[4]" 0.11553246359387317;
	setAttr ".wl[54].w[26]" 0.11518393249221322;
	setAttr ".wl[54].w[32]" 0.2337909240263307;
	setAttr ".wl[54].w[40]" 0.16580594042501723;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[0]" 0.0028057159453952407;
	setAttr ".wl[55].w[1]" 0.47342533501070727;
	setAttr ".wl[55].w[2]" 0.0037281073367049886;
	setAttr ".wl[55].w[32]" 0.26301124529590231;
	setAttr ".wl[55].w[40]" 0.25702959641129025;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.017695318777811525;
	setAttr ".wl[56].w[1]" 0.76082096731976734;
	setAttr ".wl[56].w[32]" 0.11916953193694554;
	setAttr ".wl[56].w[36]" 0.0029834729408263496;
	setAttr ".wl[56].w[40]" 0.099330709024649355;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.24698939865882066;
	setAttr ".wl[57].w[1]" 0.68068648040194757;
	setAttr ".wl[57].w[36]" 0.0377003383512153;
	setAttr ".wl[57].w[40]" 0.0048980727458355919;
	setAttr ".wl[57].w[44]" 0.029725709842180922;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[8]" 0.062893341575241901;
	setAttr ".wl[58].w[9]" 0.34398190865291239;
	setAttr ".wl[58].w[14]" 0.35876744316998144;
	setAttr ".wl[58].w[18]" 0.11262739120832869;
	setAttr ".wl[58].w[22]" 0.12172991539353561;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[9]" 0.028259301467673983;
	setAttr ".wl[59].w[14]" 0.78209091395305863;
	setAttr ".wl[59].w[15]" 0.1276651415849348;
	setAttr ".wl[59].w[18]" 0.039449668727612595;
	setAttr ".wl[59].w[22]" 0.022534974266719975;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[14]" 0.3712474693406041;
	setAttr ".wl[60].w[15]" 0.61936262946400777;
	setAttr ".wl[60].w[16]" 0.0021411185935769112;
	setAttr ".wl[60].w[22]" 0.0039300642645947745;
	setAttr ".wl[60].w[23]" 0.0033187183372164653;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[6]" 0.00092805324056441255;
	setAttr ".wl[61].w[15]" 0.0010454236572429506;
	setAttr ".wl[61].w[16]" 0.71056566301763846;
	setAttr ".wl[61].w[17]" 0.24181055657516054;
	setAttr ".wl[61].w[24]" 0.045650303509393773;
	setAttr -s 5 ".wl[62].w";
	setAttr ".wl[62].w[6]" 1.9183233807304713e-005;
	setAttr ".wl[62].w[7]" 1.2737864971174769e-005;
	setAttr ".wl[62].w[16]" 0.52883012356590298;
	setAttr ".wl[62].w[17]" 0.46479728768808298;
	setAttr ".wl[62].w[24]" 0.0063406676472355849;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[6]" 0.00061465134592354807;
	setAttr ".wl[63].w[7]" 0.00029751319989924056;
	setAttr ".wl[63].w[16]" 0.6756837732909573;
	setAttr ".wl[63].w[17]" 0.31469676949096353;
	setAttr ".wl[63].w[24]" 0.0087072926722564937;
	setAttr -s 5 ".wl[64].w";
	setAttr ".wl[64].w[6]" 0.024403324409582216;
	setAttr ".wl[64].w[7]" 0.0045023999212906642;
	setAttr ".wl[64].w[16]" 0.92501250554676795;
	setAttr ".wl[64].w[17]" 0.037173981568372844;
	setAttr ".wl[64].w[24]" 0.0089077885539863913;
	setAttr -s 5 ".wl[65].w";
	setAttr ".wl[65].w[4]" 0.10385567081662071;
	setAttr ".wl[65].w[6]" 0.30970247837166665;
	setAttr ".wl[65].w[7]" 0.028458704656417779;
	setAttr ".wl[65].w[16]" 0.45574479971860199;
	setAttr ".wl[65].w[26]" 0.10223834643669304;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[1]" 0.37195378720090921;
	setAttr ".wl[66].w[4]" 0.11634013953352679;
	setAttr ".wl[66].w[6]" 0.039933117145184521;
	setAttr ".wl[66].w[26]" 0.11607831117848147;
	setAttr ".wl[66].w[32]" 0.3556946449418979;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[1]" 0.23915505778998974;
	setAttr ".wl[67].w[32]" 0.5683702964990226;
	setAttr ".wl[67].w[33]" 0.14813035583444778;
	setAttr ".wl[67].w[34]" 0.035994181102985252;
	setAttr ".wl[67].w[40]" 0.0083501087735547846;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[1]" 0.56766541437678297;
	setAttr ".wl[68].w[32]" 0.3171983623663302;
	setAttr ".wl[68].w[33]" 0.082221613616961189;
	setAttr ".wl[68].w[34]" 0.0083233737875577727;
	setAttr ".wl[68].w[36]" 0.024591235852367714;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.026511538102295638;
	setAttr ".wl[69].w[1]" 0.51780794829733701;
	setAttr ".wl[69].w[32]" 0.03273816738204436;
	setAttr ".wl[69].w[36]" 0.33171119544252792;
	setAttr ".wl[69].w[37]" 0.091231150775795231;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[9]" 0.060502922151583302;
	setAttr ".wl[70].w[14]" 0.2397460576754824;
	setAttr ".wl[70].w[15]" 0.023211632802165948;
	setAttr ".wl[70].w[22]" 0.61162877063432408;
	setAttr ".wl[70].w[23]" 0.06491061673644416;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[9]" 0.0094807762863025526;
	setAttr ".wl[71].w[14]" 0.52827355311834756;
	setAttr ".wl[71].w[15]" 0.34873249898604453;
	setAttr ".wl[71].w[22]" 0.078103040150580241;
	setAttr ".wl[71].w[23]" 0.035410131458725042;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[14]" 0.38554844372183106;
	setAttr ".wl[72].w[15]" 0.58620393609140797;
	setAttr ".wl[72].w[16]" 0.0083507969709568086;
	setAttr ".wl[72].w[18]" 0.010906490712889736;
	setAttr ".wl[72].w[19]" 0.0089903325029144793;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[15]" 2.7828528239462858e-005;
	setAttr ".wl[73].w[16]" 0.85770744815921773;
	setAttr ".wl[73].w[17]" 0.14170234844533014;
	setAttr ".wl[73].w[20]" 0.00037793152425173417;
	setAttr ".wl[73].w[21]" 0.00018444334296101276;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[6]" 1.8058845500094104e-005;
	setAttr ".wl[74].w[16]" 0.53043410864369067;
	setAttr ".wl[74].w[17]" 0.46387359895931285;
	setAttr ".wl[74].w[20]" 0.003032670676838082;
	setAttr ".wl[74].w[21]" 0.0026415628746583116;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[6]" 8.360522430090349e-005;
	setAttr ".wl[75].w[16]" 0.68460892010798124;
	setAttr ".wl[75].w[17]" 0.30379638271652187;
	setAttr ".wl[75].w[20]" 0.0066983116990268409;
	setAttr ".wl[75].w[21]" 0.0048127802521692135;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[6]" 0.018601332651422602;
	setAttr ".wl[76].w[16]" 0.92784512815448683;
	setAttr ".wl[76].w[17]" 0.039986202248032718;
	setAttr ".wl[76].w[20]" 0.010472738599656894;
	setAttr ".wl[76].w[21]" 0.0030945983464009618;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[4]" 0.085055971008080225;
	setAttr ".wl[77].w[5]" 0.042524426138502776;
	setAttr ".wl[77].w[6]" 0.2718434931910394;
	setAttr ".wl[77].w[16]" 0.51976411391352217;
	setAttr ".wl[77].w[26]" 0.080811995748855406;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[1]" 0.44335457552319929;
	setAttr ".wl[78].w[4]" 0.049703782652283604;
	setAttr ".wl[78].w[26]" 0.046848504475929142;
	setAttr ".wl[78].w[32]" 0.042578449560559069;
	setAttr ".wl[78].w[40]" 0.4175146877880288;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[1]" 0.24068041948639687;
	setAttr ".wl[79].w[32]" 0.007474845564452777;
	setAttr ".wl[79].w[40]" 0.53874702207615133;
	setAttr ".wl[79].w[41]" 0.18167317707077468;
	setAttr ".wl[79].w[42]" 0.03142453580222411;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[1]" 0.57513362213624453;
	setAttr ".wl[80].w[40]" 0.29062069314378719;
	setAttr ".wl[80].w[41]" 0.097389401692425007;
	setAttr ".wl[80].w[42]" 0.0087847446007281206;
	setAttr ".wl[80].w[44]" 0.028071538426815264;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[0]" 0.05081964296860806;
	setAttr ".wl[81].w[1]" 0.46096903860357774;
	setAttr ".wl[81].w[40]" 0.03578866187282357;
	setAttr ".wl[81].w[44]" 0.33847513760714498;
	setAttr ".wl[81].w[45]" 0.11394751894784569;
	setAttr -s 5 ".wl[82].w";
	setAttr ".wl[82].w[8]" 0.0078965466829356984;
	setAttr ".wl[82].w[9]" 0.078546606006530836;
	setAttr ".wl[82].w[14]" 0.2120657521062416;
	setAttr ".wl[82].w[18]" 0.67099750398004132;
	setAttr ".wl[82].w[19]" 0.030493591224250376;
	setAttr -s 5 ".wl[83].w";
	setAttr ".wl[83].w[9]" 0.024052684051982794;
	setAttr ".wl[83].w[14]" 0.41409992730600415;
	setAttr ".wl[83].w[15]" 0.16896775633780875;
	setAttr ".wl[83].w[18]" 0.26828157373299966;
	setAttr ".wl[83].w[19]" 0.12459805857120475;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[14]" 0.05926810620932111;
	setAttr ".wl[84].w[15]" 0.54354371573539739;
	setAttr ".wl[84].w[16]" 0.22423940461927433;
	setAttr ".wl[84].w[19]" 0.11652453945356896;
	setAttr ".wl[84].w[20]" 0.056424233982438239;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[15]" 0.076703265474756574;
	setAttr ".wl[85].w[16]" 0.026650217817337417;
	setAttr ".wl[85].w[18]" 0.13505354674018674;
	setAttr ".wl[85].w[19]" 0.61779253804333045;
	setAttr ".wl[85].w[20]" 0.14380043192438891;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[15]" 0.00011446860248353241;
	setAttr ".wl[86].w[16]" 6.471991275639846e-005;
	setAttr ".wl[86].w[18]" 0.064136370305363982;
	setAttr ".wl[86].w[19]" 0.87984648689063893;
	setAttr ".wl[86].w[20]" 0.055837954288757125;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[14]" 0.00019350321244492031;
	setAttr ".wl[87].w[15]" 0.00024604646699609184;
	setAttr ".wl[87].w[22]" 0.063328156385996898;
	setAttr ".wl[87].w[23]" 0.88159272674425671;
	setAttr ".wl[87].w[24]" 0.054639567190305285;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[14]" 0.021260399898733018;
	setAttr ".wl[88].w[15]" 0.042859181510839832;
	setAttr ".wl[88].w[22]" 0.13777656234135191;
	setAttr ".wl[88].w[23]" 0.69442449347484525;
	setAttr ".wl[88].w[24]" 0.10367936277422984;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[15]" 0.32940098318229094;
	setAttr ".wl[89].w[16]" 0.12657507647750782;
	setAttr ".wl[89].w[22]" 0.098462122046005171;
	setAttr ".wl[89].w[23]" 0.35932839943518124;
	setAttr ".wl[89].w[24]" 0.08623341885901481;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[14]" 0.056427928782226924;
	setAttr ".wl[90].w[15]" 0.76073008920013341;
	setAttr ".wl[90].w[16]" 0.15048546588011374;
	setAttr ".wl[90].w[22]" 0.010023614633015075;
	setAttr ".wl[90].w[23]" 0.022332901504510835;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[8]" 1.1708226797565749e-005;
	setAttr ".wl[91].w[14]" 0.0094078046042449567;
	setAttr ".wl[91].w[15]" 0.89435434345873377;
	setAttr ".wl[91].w[16]" 0.096212894557007267;
	setAttr ".wl[91].w[19]" 1.3249153216549318e-005;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[14]" 0.055786059951449619;
	setAttr ".wl[92].w[15]" 0.79647805693615004;
	setAttr ".wl[92].w[16]" 0.13742078814419495;
	setAttr ".wl[92].w[18]" 0.0036311909063363123;
	setAttr ".wl[92].w[19]" 0.0066839040618690256;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[15]" 0.33569918716527708;
	setAttr ".wl[93].w[16]" 0.3962911187592591;
	setAttr ".wl[93].w[18]" 0.0085250644806563903;
	setAttr ".wl[93].w[19]" 0.1197638910606864;
	setAttr ".wl[93].w[20]" 0.13972073853412104;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[15]" 0.052501286384540068;
	setAttr ".wl[94].w[16]" 0.082454153295891827;
	setAttr ".wl[94].w[18]" 0.0054688160390428614;
	setAttr ".wl[94].w[19]" 0.35491592017389106;
	setAttr ".wl[94].w[20]" 0.50465982410663413;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[15]" 0.00027564313148647861;
	setAttr ".wl[95].w[16]" 0.00022941613117083225;
	setAttr ".wl[95].w[18]" 0.0014007498678907224;
	setAttr ".wl[95].w[19]" 0.40383384001630385;
	setAttr ".wl[95].w[20]" 0.59426035085314821;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[6]" 2.0456929410680238e-006;
	setAttr ".wl[96].w[7]" 2.4398099329835204e-006;
	setAttr ".wl[96].w[22]" 2.4964719581060569e-006;
	setAttr ".wl[96].w[23]" 0.39092889222001981;
	setAttr ".wl[96].w[24]" 0.6090641258051479;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[15]" 0.0017440981065439095;
	setAttr ".wl[97].w[16]" 0.001919243622383964;
	setAttr ".wl[97].w[22]" 0.0020254634769963841;
	setAttr ".wl[97].w[23]" 0.43211465185360853;
	setAttr ".wl[97].w[24]" 0.56219654294046728;
	setAttr -s 5 ".wl[98].w";
	setAttr ".wl[98].w[15]" 0.098387560619158376;
	setAttr ".wl[98].w[16]" 0.13502275366340924;
	setAttr ".wl[98].w[22]" 0.011635689087415102;
	setAttr ".wl[98].w[23]" 0.33803893247431127;
	setAttr ".wl[98].w[24]" 0.41691506415570606;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[15]" 0.33116371414949625;
	setAttr ".wl[99].w[16]" 0.55984380625503694;
	setAttr ".wl[99].w[22]" 0.0044635810850454016;
	setAttr ".wl[99].w[23]" 0.048271916355219484;
	setAttr ".wl[99].w[24]" 0.056256982155202077;
	setAttr -s 5 ".wl[100].w";
	setAttr ".wl[100].w[7]" 4.7950722321871776e-005;
	setAttr ".wl[100].w[14]" 8.6298669271284436e-005;
	setAttr ".wl[100].w[15]" 0.31658905983283031;
	setAttr ".wl[100].w[16]" 0.68321903245234727;
	setAttr ".wl[100].w[23]" 5.7658323229304849e-005;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[14]" 0.0039584631274903973;
	setAttr ".wl[101].w[15]" 0.34714573352991296;
	setAttr ".wl[101].w[16]" 0.60588527863070707;
	setAttr ".wl[101].w[19]" 0.018253111115490401;
	setAttr ".wl[101].w[20]" 0.024757413596399252;
	setAttr -s 5 ".wl[102].w";
	setAttr ".wl[102].w[15]" 0.076379032535147343;
	setAttr ".wl[102].w[16]" 0.53153539646286441;
	setAttr ".wl[102].w[17]" 0.024765176898741959;
	setAttr ".wl[102].w[19]" 0.044423706450406837;
	setAttr ".wl[102].w[20]" 0.32289668765283941;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[15]" 0.0029693154970561212;
	setAttr ".wl[103].w[16]" 0.019961509226721828;
	setAttr ".wl[103].w[19]" 0.040823465696592849;
	setAttr ".wl[103].w[20]" 0.92962862843876659;
	setAttr ".wl[103].w[21]" 0.0066170811408624349;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[6]" 2.5734867129424513e-006;
	setAttr ".wl[104].w[7]" 1.8007995120038664e-006;
	setAttr ".wl[104].w[19]" 0.016969031239584244;
	setAttr ".wl[104].w[20]" 0.98301074530223365;
	setAttr ".wl[104].w[21]" 1.5849171957197613e-005;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[6]" 1.1948179623737139e-005;
	setAttr ".wl[105].w[7]" 9.1480892978312207e-006;
	setAttr ".wl[105].w[16]" 5.8174813474636396e-006;
	setAttr ".wl[105].w[23]" 0.017281717477646719;
	setAttr ".wl[105].w[24]" 0.98269136877208429;
	setAttr -s 5 ".wl[106].w";
	setAttr ".wl[106].w[15]" 0.0040336348048415774;
	setAttr ".wl[106].w[16]" 0.019103435955575079;
	setAttr ".wl[106].w[17]" 0.0030340194506737845;
	setAttr ".wl[106].w[23]" 0.056708032016827982;
	setAttr ".wl[106].w[24]" 0.91712087777208151;
	setAttr -s 5 ".wl[107].w";
	setAttr ".wl[107].w[15]" 0.050009640246321034;
	setAttr ".wl[107].w[16]" 0.44674918868669217;
	setAttr ".wl[107].w[17]" 0.027655868206251138;
	setAttr ".wl[107].w[23]" 0.046314464425695284;
	setAttr ".wl[107].w[24]" 0.42927083843504038;
	setAttr -s 5 ".wl[108].w";
	setAttr ".wl[108].w[15]" 0.027121900551808121;
	setAttr ".wl[108].w[16]" 0.95639132954112105;
	setAttr ".wl[108].w[17]" 0.0053856524329501422;
	setAttr ".wl[108].w[23]" 0.0012864993305555512;
	setAttr ".wl[108].w[24]" 0.0098146181435651986;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[15]" 0.0053156284118093151;
	setAttr ".wl[109].w[16]" 0.99453906318267804;
	setAttr ".wl[109].w[17]" 0.00012203560888075013;
	setAttr ".wl[109].w[19]" 8.4342793426658396e-006;
	setAttr ".wl[109].w[20]" 1.4838517289093223e-005;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[15]" 0.026408081056677982;
	setAttr ".wl[110].w[16]" 0.95105651335254127;
	setAttr ".wl[110].w[17]" 0.014163748739086992;
	setAttr ".wl[110].w[19]" 0.0013157401364333081;
	setAttr ".wl[110].w[20]" 0.0070559167152603386;
	setAttr -s 5 ".wl[111].w";
	setAttr ".wl[111].w[11]" 0.0028161071164003524;
	setAttr ".wl[111].w[12]" 0.59517572130218555;
	setAttr ".wl[111].w[13]" 0.2235383569871664;
	setAttr ".wl[111].w[20]" 0.13131912205835267;
	setAttr ".wl[111].w[21]" 0.047150692535894961;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[11]" 3.875419586302897e-005;
	setAttr ".wl[112].w[12]" 0.8484352313845559;
	setAttr ".wl[112].w[13]" 0.15062703649151132;
	setAttr ".wl[112].w[20]" 0.00061164278171456647;
	setAttr ".wl[112].w[21]" 0.00028733514635523197;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[6]" 2.0751370118546778e-005;
	setAttr ".wl[113].w[12]" 0.52307799716025249;
	setAttr ".wl[113].w[13]" 0.46922065117730577;
	setAttr ".wl[113].w[20]" 0.0040904739769287747;
	setAttr ".wl[113].w[21]" 0.0035901263153943173;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[6]" 0.00017713303394808867;
	setAttr ".wl[114].w[12]" 0.31569382881435193;
	setAttr ".wl[114].w[13]" 0.29621121783652832;
	setAttr ".wl[114].w[20]" 0.20848219244649693;
	setAttr ".wl[114].w[21]" 0.17943562786867479;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[10]" 0.25305697619067563;
	setAttr ".wl[115].w[11]" 0.43223042359545577;
	setAttr ".wl[115].w[12]" 0.02357432968901611;
	setAttr ".wl[115].w[18]" 0.13721183816662758;
	setAttr ".wl[115].w[19]" 0.15392643235822498;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[10]" 0.37986481379031106;
	setAttr ".wl[116].w[11]" 0.57853383541118686;
	setAttr ".wl[116].w[12]" 0.0085770354928554633;
	setAttr ".wl[116].w[18]" 0.017394886285781747;
	setAttr ".wl[116].w[19]" 0.015629429019864704;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[10]" 0.059581705177411189;
	setAttr ".wl[117].w[11]" 0.77587833790765748;
	setAttr ".wl[117].w[12]" 0.14720296857329582;
	setAttr ".wl[117].w[18]" 0.0058846364240228346;
	setAttr ".wl[117].w[19]" 0.01145235191761276;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[10]" 0.061421946912955321;
	setAttr ".wl[118].w[11]" 0.49143241984324942;
	setAttr ".wl[118].w[12]" 0.21573719079187556;
	setAttr ".wl[118].w[19]" 0.16100096623818688;
	setAttr ".wl[118].w[20]" 0.070407476213732889;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[6]" 8.1912740936382016e-005;
	setAttr ".wl[119].w[12]" 0.66521545597846643;
	setAttr ".wl[119].w[13]" 0.3201026666756791;
	setAttr ".wl[119].w[20]" 0.0085935874997340022;
	setAttr ".wl[119].w[21]" 0.0060063771051841941;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[6]" 0.00059020661094932034;
	setAttr ".wl[120].w[12]" 0.36438164600609307;
	setAttr ".wl[120].w[13]" 0.24155121266576338;
	setAttr ".wl[120].w[20]" 0.21338074693379658;
	setAttr ".wl[120].w[21]" 0.18009618778339762;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[6]" 0.017856445826968621;
	setAttr ".wl[121].w[12]" 0.91810638950250578;
	setAttr ".wl[121].w[13]" 0.045988477003974244;
	setAttr ".wl[121].w[20]" 0.014565447311149411;
	setAttr ".wl[121].w[21]" 0.0034832403554019495;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[6]" 0.055333151346125209;
	setAttr ".wl[122].w[12]" 0.49851956543039155;
	setAttr ".wl[122].w[13]" 0.032593632197726499;
	setAttr ".wl[122].w[20]" 0.37143685489571965;
	setAttr ".wl[122].w[21]" 0.042116796130037125;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[4]" 0.090080100142069325;
	setAttr ".wl[123].w[5]" 0.043308259483532029;
	setAttr ".wl[123].w[6]" 0.24150678565468711;
	setAttr ".wl[123].w[12]" 0.54698366699760836;
	setAttr ".wl[123].w[27]" 0.078121187722103164;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[4]" 0.080512799425732279;
	setAttr ".wl[124].w[5]" 0.065038777717758664;
	setAttr ".wl[124].w[6]" 0.39379455737686297;
	setAttr ".wl[124].w[12]" 0.16459740184750282;
	setAttr ".wl[124].w[20]" 0.29605646363214316;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[1]" 0.45288418071774988;
	setAttr ".wl[125].w[4]" 0.050966884204229901;
	setAttr ".wl[125].w[27]" 0.045001671669104966;
	setAttr ".wl[125].w[28]" 0.032766677725808685;
	setAttr ".wl[125].w[48]" 0.41838058568310671;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[1]" 0.3653528639310934;
	setAttr ".wl[126].w[4]" 0.11269484534280967;
	setAttr ".wl[126].w[5]" 0.095230922240776353;
	setAttr ".wl[126].w[6]" 0.12104014253465456;
	setAttr ".wl[126].w[48]" 0.30568122595066605;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[1]" 0.25424703554726347;
	setAttr ".wl[127].w[48]" 0.53804026459636722;
	setAttr ".wl[127].w[49]" 0.16261262406983967;
	setAttr ".wl[127].w[50]" 0.035981290276878679;
	setAttr ".wl[127].w[51]" 0.0091187855096508796;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[1]" 0.17246182055373269;
	setAttr ".wl[128].w[48]" 0.55567259989548612;
	setAttr ".wl[128].w[49]" 0.22681873416270745;
	setAttr ".wl[128].w[50]" 0.041045454118830128;
	setAttr ".wl[128].w[51]" 0.0040013912692435406;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[8]" 0.0063893552845583537;
	setAttr ".wl[129].w[9]" 0.076138550595951301;
	setAttr ".wl[129].w[10]" 0.19062423984377408;
	setAttr ".wl[129].w[18]" 0.69657662389322084;
	setAttr ".wl[129].w[19]" 0.030271230382495493;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[9]" 0.0043250938935839468;
	setAttr ".wl[130].w[10]" 0.012981667680391253;
	setAttr ".wl[130].w[11]" 0.002539574852599234;
	setAttr ".wl[130].w[18]" 0.51998781492151491;
	setAttr ".wl[130].w[19]" 0.46016584865191085;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[9]" 0.02496180836878777;
	setAttr ".wl[131].w[10]" 0.37978429333300334;
	setAttr ".wl[131].w[11]" 0.15191301695216083;
	setAttr ".wl[131].w[18]" 0.29600677894159705;
	setAttr ".wl[131].w[19]" 0.14733410240445111;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[9]" 0.011087623964952586;
	setAttr ".wl[132].w[10]" 0.091599606916626816;
	setAttr ".wl[132].w[11]" 0.092486456429683325;
	setAttr ".wl[132].w[18]" 0.40440218056744281;
	setAttr ".wl[132].w[19]" 0.40042413212129446;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[11]" 0.062667396232355399;
	setAttr ".wl[133].w[12]" 0.021373585790272678;
	setAttr ".wl[133].w[18]" 0.11815340547591459;
	setAttr ".wl[133].w[19]" 0.66494140816504321;
	setAttr ".wl[133].w[20]" 0.13286420433641416;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[7]" 4.8340788114937048e-005;
	setAttr ".wl[134].w[11]" 5.2314256966819792e-005;
	setAttr ".wl[134].w[18]" 0.056930388939613816;
	setAttr ".wl[134].w[19]" 0.89206790637293942;
	setAttr ".wl[134].w[20]" 0.050901049642365061;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[6]" 3.6784415255768213e-005;
	setAttr ".wl[135].w[12]" 0.023447812470153578;
	setAttr ".wl[135].w[13]" 0.022104864523041255;
	setAttr ".wl[135].w[20]" 0.52531810897261799;
	setAttr ".wl[135].w[21]" 0.4290924296189314;
	setAttr -s 5 ".wl[136].w";
	setAttr ".wl[136].w[6]" 1.1658955774355602e-007;
	setAttr ".wl[136].w[12]" 8.6643104909740133e-006;
	setAttr ".wl[136].w[13]" 8.2748204505493968e-006;
	setAttr ".wl[136].w[20]" 0.59794011957909232;
	setAttr ".wl[136].w[21]" 0.40204282470040836;
	setAttr -s 5 ".wl[137].w";
	setAttr ".wl[137].w[12]" 5.2220223536447163e-005;
	setAttr ".wl[137].w[13]" 3.8585123706406031e-005;
	setAttr ".wl[137].w[19]" 1.3761309029818366e-005;
	setAttr ".wl[137].w[20]" 0.90325037204733383;
	setAttr ".wl[137].w[21]" 0.096645061296393567;
	setAttr -s 5 ".wl[138].w";
	setAttr ".wl[138].w[12]" 0.0719021570605516;
	setAttr ".wl[138].w[13]" 0.035866485213115654;
	setAttr ".wl[138].w[19]" 0.0024713202491598212;
	setAttr ".wl[138].w[20]" 0.7042902825648546;
	setAttr ".wl[138].w[21]" 0.18546975491231829;
	setAttr -s 5 ".wl[139].w";
	setAttr ".wl[139].w[6]" 3.3941127452633527e-007;
	setAttr ".wl[139].w[12]" 1.3782496327132374e-005;
	setAttr ".wl[139].w[13]" 1.3137252054185583e-005;
	setAttr ".wl[139].w[20]" 0.70551664822538995;
	setAttr ".wl[139].w[21]" 0.29445609261495437;
	setAttr -s 5 ".wl[140].w";
	setAttr ".wl[140].w[6]" 0.0012687131009283454;
	setAttr ".wl[140].w[12]" 0.031219866102059454;
	setAttr ".wl[140].w[13]" 0.013455204274377314;
	setAttr ".wl[140].w[20]" 0.64434958353256655;
	setAttr ".wl[140].w[21]" 0.3097066329900684;
	setAttr -s 5 ".wl[141].w";
	setAttr ".wl[141].w[5]" 0.00017829969274294827;
	setAttr ".wl[141].w[6]" 0.016924884293792023;
	setAttr ".wl[141].w[7]" 0.00082630448692560989;
	setAttr ".wl[141].w[20]" 0.96349090523458292;
	setAttr ".wl[141].w[21]" 0.018579606291956416;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[6]" 0.056634687600140517;
	setAttr ".wl[142].w[7]" 0.0087479358878499967;
	setAttr ".wl[142].w[12]" 0.035149682410250807;
	setAttr ".wl[142].w[20]" 0.87176886137119869;
	setAttr ".wl[142].w[21]" 0.027698832730560067;
	setAttr -s 5 ".wl[143].w";
	setAttr ".wl[143].w[3]" 0.022104905642264715;
	setAttr ".wl[143].w[4]" 0.048959913859022722;
	setAttr ".wl[143].w[5]" 0.072102902250720413;
	setAttr ".wl[143].w[6]" 0.32806333285349193;
	setAttr ".wl[143].w[20]" 0.52876894539450014;
	setAttr -s 5 ".wl[144].w";
	setAttr ".wl[144].w[3]" 0.035949382424451601;
	setAttr ".wl[144].w[4]" 0.085119784738895157;
	setAttr ".wl[144].w[5]" 0.1197139501587275;
	setAttr ".wl[144].w[6]" 0.45278103448300322;
	setAttr ".wl[144].w[20]" 0.30643584819492248;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[1]" 0.40927798969363322;
	setAttr ".wl[145].w[2]" 0.14746723916705787;
	setAttr ".wl[145].w[6]" 0.11234332898203442;
	setAttr ".wl[145].w[44]" 0.22167546538034189;
	setAttr ".wl[145].w[48]" 0.10923597677693273;
	setAttr -s 5 ".wl[146].w";
	setAttr ".wl[146].w[1]" 0.4405458208024956;
	setAttr ".wl[146].w[2]" 0.080651425042986127;
	setAttr ".wl[146].w[5]" 0.087070719511773212;
	setAttr ".wl[146].w[6]" 0.10220701481481088;
	setAttr ".wl[146].w[48]" 0.28952501982793427;
	setAttr -s 5 ".wl[147].w";
	setAttr ".wl[147].w[1]" 0.21349135276600104;
	setAttr ".wl[147].w[44]" 0.5002169102147932;
	setAttr ".wl[147].w[45]" 0.18468657652596704;
	setAttr ".wl[147].w[46]" 0.053707471293617005;
	setAttr ".wl[147].w[48]" 0.047897689199621715;
	setAttr -s 5 ".wl[148].w";
	setAttr ".wl[148].w[1]" 0.3077952478574596;
	setAttr ".wl[148].w[44]" 0.067623561435598847;
	setAttr ".wl[148].w[48]" 0.44378990785767952;
	setAttr ".wl[148].w[49]" 0.15304576548303095;
	setAttr ".wl[148].w[50]" 0.027745517366230876;
	setAttr -s 5 ".wl[149].w";
	setAttr ".wl[149].w[1]" 0.52619109167134837;
	setAttr ".wl[149].w[44]" 0.034944474884449982;
	setAttr ".wl[149].w[48]" 0.33666051739602926;
	setAttr ".wl[149].w[49]" 0.093018258234816867;
	setAttr ".wl[149].w[50]" 0.009185657813355539;
	setAttr -s 5 ".wl[150].w";
	setAttr ".wl[150].w[0]" 0.036608870933767669;
	setAttr ".wl[150].w[1]" 0.46415596741999399;
	setAttr ".wl[150].w[44]" 0.35070669326859261;
	setAttr ".wl[150].w[45]" 0.10572737805065814;
	setAttr ".wl[150].w[48]" 0.042801090326987527;
	setAttr -s 5 ".wl[151].w";
	setAttr ".wl[151].w[1]" 0.44325446872441326;
	setAttr ".wl[151].w[2]" 0.061037432367516603;
	setAttr ".wl[151].w[4]" 0.11531208733360435;
	setAttr ".wl[151].w[27]" 0.11443711448820787;
	setAttr ".wl[151].w[28]" 0.26595889708625786;
	setAttr -s 5 ".wl[152].w";
	setAttr ".wl[152].w[1]" 0.39516824096780467;
	setAttr ".wl[152].w[2]" 0.12157219569044822;
	setAttr ".wl[152].w[4]" 0.10897126650788164;
	setAttr ".wl[152].w[27]" 0.090308408114279481;
	setAttr ".wl[152].w[36]" 0.28397988871958585;
	setAttr -s 5 ".wl[153].w";
	setAttr ".wl[153].w[1]" 0.26897430315789778;
	setAttr ".wl[153].w[28]" 0.073502639865261843;
	setAttr ".wl[153].w[36]" 0.45058532743912116;
	setAttr ".wl[153].w[37]" 0.15987294170047578;
	setAttr ".wl[153].w[38]" 0.047064787837243424;
	setAttr -s 5 ".wl[154].w";
	setAttr ".wl[154].w[1]" 0.30999458311204681;
	setAttr ".wl[154].w[28]" 0.47374184877592634;
	setAttr ".wl[154].w[29]" 0.15222111434978636;
	setAttr ".wl[154].w[30]" 0.03256605886988282;
	setAttr ".wl[154].w[36]" 0.031476394892357609;
	setAttr -s 5 ".wl[155].w";
	setAttr ".wl[155].w[4]" 0.10630098297697285;
	setAttr ".wl[155].w[5]" 0.059175886393286373;
	setAttr ".wl[155].w[6]" 0.49084151266139359;
	setAttr ".wl[155].w[24]" 0.25171066721283342;
	setAttr ".wl[155].w[27]" 0.091970950755513661;
	setAttr -s 5 ".wl[156].w";
	setAttr ".wl[156].w[4]" 0.090598441379854469;
	setAttr ".wl[156].w[5]" 0.09293323744630648;
	setAttr ".wl[156].w[6]" 0.50424044025597548;
	setAttr ".wl[156].w[24]" 0.26099580180461396;
	setAttr ".wl[156].w[27]" 0.05123207911324968;
	setAttr -s 5 ".wl[157].w";
	setAttr ".wl[157].w[6]" 0.040006055639328589;
	setAttr ".wl[157].w[7]" 0.010058871558277515;
	setAttr ".wl[157].w[12]" 0.04729846727932667;
	setAttr ".wl[157].w[13]" 0.009616664435644082;
	setAttr ".wl[157].w[24]" 0.89301994108742311;
	setAttr -s 5 ".wl[158].w";
	setAttr ".wl[158].w[5]" 0.00024096427897785788;
	setAttr ".wl[158].w[6]" 0.033068680172683607;
	setAttr ".wl[158].w[7]" 0.0020725709839319612;
	setAttr ".wl[158].w[23]" 8.6909752651359657e-005;
	setAttr ".wl[158].w[24]" 0.96453087481175515;
	setAttr -s 5 ".wl[159].w";
	setAttr ".wl[159].w[6]" 0.00057378604540177084;
	setAttr ".wl[159].w[7]" 0.00033984971325603071;
	setAttr ".wl[159].w[12]" 0.037052446873318462;
	setAttr ".wl[159].w[13]" 0.023942194432057345;
	setAttr ".wl[159].w[24]" 0.93809172293596632;
	setAttr -s 5 ".wl[160].w";
	setAttr ".wl[160].w[6]" 2.4675498749361115e-006;
	setAttr ".wl[160].w[12]" 0.000121742176510393;
	setAttr ".wl[160].w[13]" 0.00012171961428787074;
	setAttr ".wl[160].w[23]" 2.5804607501612317e-006;
	setAttr ".wl[160].w[24]" 0.99975149019857668;
	setAttr -s 5 ".wl[161].w";
	setAttr ".wl[161].w[6]" 0.0001166866161510843;
	setAttr ".wl[161].w[12]" 0.029024030046118858;
	setAttr ".wl[161].w[13]" 0.028048512939750879;
	setAttr ".wl[161].w[23]" 9.2988810407793171e-005;
	setAttr ".wl[161].w[24]" 0.94271778158757136;
	setAttr -s 5 ".wl[162].w";
	setAttr ".wl[162].w[6]" 1.2311628606374255e-006;
	setAttr ".wl[162].w[12]" 3.6205173810876319e-005;
	setAttr ".wl[162].w[13]" 3.6054617683103143e-005;
	setAttr ".wl[162].w[23]" 1.7355220970824105e-006;
	setAttr ".wl[162].w[24]" 0.99992477352354847;
	setAttr -s 5 ".wl[163].w";
	setAttr ".wl[163].w[6]" 1.7991031571703357e-007;
	setAttr ".wl[163].w[12]" 5.6033434611568779e-007;
	setAttr ".wl[163].w[13]" 3.9589575273983853e-007;
	setAttr ".wl[163].w[23]" 1.0235038232808997e-006;
	setAttr ".wl[163].w[24]" 0.99999784035576211;
	setAttr -s 5 ".wl[164].w";
	setAttr ".wl[164].w[6]" 0.00013923904455987268;
	setAttr ".wl[164].w[12]" 0.0032220439766947099;
	setAttr ".wl[164].w[13]" 0.0021207633644723641;
	setAttr ".wl[164].w[23]" 0.00018357155930528497;
	setAttr ".wl[164].w[24]" 0.99433438205496771;
	setAttr -s 5 ".wl[165].w";
	setAttr ".wl[165].w[10]" 0.00026305826438934526;
	setAttr ".wl[165].w[11]" 0.00053862594669525858;
	setAttr ".wl[165].w[22]" 0.062034566390285803;
	setAttr ".wl[165].w[23]" 0.87808839881605594;
	setAttr ".wl[165].w[24]" 0.05907535058257353;
	setAttr -s 5 ".wl[166].w";
	setAttr ".wl[166].w[9]" 0.0016847147958992043;
	setAttr ".wl[166].w[10]" 0.0030920754895657526;
	setAttr ".wl[166].w[11]" 0.0012023700663414509;
	setAttr ".wl[166].w[22]" 0.5182535948446636;
	setAttr ".wl[166].w[23]" 0.47576724480353011;
	setAttr -s 5 ".wl[167].w";
	setAttr ".wl[167].w[10]" 0.022815535221270923;
	setAttr ".wl[167].w[11]" 0.058388028296630083;
	setAttr ".wl[167].w[22]" 0.14341899125334417;
	setAttr ".wl[167].w[23]" 0.66822719145331932;
	setAttr ".wl[167].w[24]" 0.10715025377543552;
	setAttr -s 5 ".wl[168].w";
	setAttr ".wl[168].w[9]" 0.010837617162815002;
	setAttr ".wl[168].w[10]" 0.16190070100971177;
	setAttr ".wl[168].w[11]" 0.12511959700847852;
	setAttr ".wl[168].w[22]" 0.36823144785746426;
	setAttr ".wl[168].w[23]" 0.33391063696153045;
	setAttr -s 5 ".wl[169].w";
	setAttr ".wl[169].w[1]" 0.33368243336833187;
	setAttr ".wl[169].w[4]" 0.14786558160524946;
	setAttr ".wl[169].w[6]" 0.054580302241162185;
	setAttr ".wl[169].w[27]" 0.14771245333500355;
	setAttr ".wl[169].w[28]" 0.31615922945025299;
	setAttr -s 5 ".wl[170].w";
	setAttr ".wl[170].w[1]" 0.17483298920056528;
	setAttr ".wl[170].w[2]" 0.0036043879503929194;
	setAttr ".wl[170].w[28]" 0.5552562646553596;
	setAttr ".wl[170].w[29]" 0.22564963075414168;
	setAttr ".wl[170].w[30]" 0.040656727439540546;
	setAttr -s 5 ".wl[171].w";
	setAttr ".wl[171].w[4]" 0.1045621760746054;
	setAttr ".wl[171].w[6]" 0.45444268207276572;
	setAttr ".wl[171].w[12]" 0.2809131770785252;
	setAttr ".wl[171].w[24]" 0.056983327539601794;
	setAttr ".wl[171].w[27]" 0.10309863723450198;
	setAttr -s 5 ".wl[172].w";
	setAttr ".wl[172].w[6]" 0.085189338456498245;
	setAttr ".wl[172].w[7]" 0.023704794934478971;
	setAttr ".wl[172].w[12]" 0.55352092204951153;
	setAttr ".wl[172].w[13]" 0.0575599779471491;
	setAttr ".wl[172].w[24]" 0.28002496661236231;
	setAttr -s 5 ".wl[173].w";
	setAttr ".wl[173].w[6]" 0.00089997500402648901;
	setAttr ".wl[173].w[7]" 0.00052312851175481321;
	setAttr ".wl[173].w[12]" 0.39165700692088207;
	setAttr ".wl[173].w[13]" 0.33039130541419631;
	setAttr ".wl[173].w[24]" 0.27652858414914033;
	setAttr -s 5 ".wl[174].w";
	setAttr ".wl[174].w[6]" 0.00024954638436027138;
	setAttr ".wl[174].w[7]" 0.00017864724538792242;
	setAttr ".wl[174].w[12]" 0.35624837620960159;
	setAttr ".wl[174].w[13]" 0.33571469336073012;
	setAttr ".wl[174].w[24]" 0.30760873679992018;
	setAttr -s 5 ".wl[175].w";
	setAttr ".wl[175].w[6]" 0.0024353270085252241;
	setAttr ".wl[175].w[12]" 0.22058043364982935;
	setAttr ".wl[175].w[13]" 0.11593265308433479;
	setAttr ".wl[175].w[23]" 0.0035602054566758246;
	setAttr ".wl[175].w[24]" 0.65749138080063485;
	setAttr -s 5 ".wl[176].w";
	setAttr ".wl[176].w[11]" 0.38149768315345983;
	setAttr ".wl[176].w[12]" 0.13403119962815344;
	setAttr ".wl[176].w[22]" 0.096730246904529957;
	setAttr ".wl[176].w[23]" 0.30949744549941427;
	setAttr ".wl[176].w[24]" 0.078243424814442561;
	setAttr -s 5 ".wl[177].w";
	setAttr ".wl[177].w[10]" 0.2810125625608878;
	setAttr ".wl[177].w[11]" 0.468155744570385;
	setAttr ".wl[177].w[12]" 0.015780091955113113;
	setAttr ".wl[177].w[22]" 0.10629284016165169;
	setAttr ".wl[177].w[23]" 0.12875876075196235;
	setAttr -s 5 ".wl[178].w";
	setAttr ".wl[178].w[9]" 1.2641867018191044e-005;
	setAttr ".wl[178].w[10]" 0.22989162172365182;
	setAttr ".wl[178].w[11]" 0.76980756430545461;
	setAttr ".wl[178].w[12]" 0.00026411845509973034;
	setAttr ".wl[178].w[18]" 2.4053648775549327e-005;
	setAttr -s 5 ".wl[179].w";
	setAttr ".wl[179].w[10]" 0.34885120307909717;
	setAttr ".wl[179].w[11]" 0.64540418070178174;
	setAttr ".wl[179].w[12]" 0.0013338391595433216;
	setAttr ".wl[179].w[22]" 0.0024805398334371439;
	setAttr ".wl[179].w[23]" 0.0019302372261404926;
	setAttr -s 5 ".wl[180].w";
	setAttr ".wl[180].w[10]" 0.051290103855174407;
	setAttr ".wl[180].w[11]" 0.7742480584707786;
	setAttr ".wl[180].w[12]" 0.15090332821091973;
	setAttr ".wl[180].w[22]" 0.0074176480529472783;
	setAttr ".wl[180].w[23]" 0.016140861410180122;
	setAttr -s 5 ".wl[181].w";
	setAttr ".wl[181].w[10]" 0.0085449533689392239;
	setAttr ".wl[181].w[11]" 0.88792681798864292;
	setAttr ".wl[181].w[12]" 0.10348581544811643;
	setAttr ".wl[181].w[19]" 2.5178816676315856e-005;
	setAttr ".wl[181].w[20]" 1.723437762523739e-005;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[6]" 1.9669433121145676e-007;
	setAttr ".wl[182].w[11]" 5.7894295539353769e-007;
	setAttr ".wl[182].w[12]" 0.92513692377461321;
	setAttr ".wl[182].w[13]" 0.074861706480688475;
	setAttr ".wl[182].w[24]" 5.9410741171347168e-007;
	setAttr -s 5 ".wl[183].w";
	setAttr ".wl[183].w[12]" 0.56929032609119323;
	setAttr ".wl[183].w[13]" 0.43070883858135189;
	setAttr ".wl[183].w[20]" 2.5085570296052899e-007;
	setAttr ".wl[183].w[21]" 2.4639126128682859e-007;
	setAttr ".wl[183].w[24]" 3.3808049051463413e-007;
	setAttr -s 5 ".wl[184].w";
	setAttr ".wl[184].w[11]" 0.0010089230590257633;
	setAttr ".wl[184].w[12]" 0.72159163126225112;
	setAttr ".wl[184].w[13]" 0.23872454563881471;
	setAttr ".wl[184].w[23]" 0.00079275851202317404;
	setAttr ".wl[184].w[24]" 0.037882141527885139;
	setAttr -s 5 ".wl[185].w";
	setAttr ".wl[185].w[6]" 1.5066562374036793e-005;
	setAttr ".wl[185].w[7]" 1.062797895085866e-005;
	setAttr ".wl[185].w[12]" 0.51858436303714506;
	setAttr ".wl[185].w[13]" 0.47665679788571491;
	setAttr ".wl[185].w[24]" 0.0047331445358153139;
	setAttr -s 5 ".wl[186].w";
	setAttr ".wl[186].w[12]" 0.57460135448327398;
	setAttr ".wl[186].w[13]" 0.42539318681784094;
	setAttr ".wl[186].w[20]" 2.5284706680642207e-006;
	setAttr ".wl[186].w[21]" 2.4615813688246751e-006;
	setAttr ".wl[186].w[24]" 4.686468482640207e-007;
	setAttr -s 5 ".wl[187].w";
	setAttr ".wl[187].w[6]" 0.00040636758623192204;
	setAttr ".wl[187].w[7]" 0.00021846353623033115;
	setAttr ".wl[187].w[12]" 0.6703110219932723;
	setAttr ".wl[187].w[13]" 0.32319420454234293;
	setAttr ".wl[187].w[24]" 0.0058699423419222947;
	setAttr -s 5 ".wl[188].w";
	setAttr ".wl[188].w[5]" 0.00013483772270077109;
	setAttr ".wl[188].w[6]" 0.0039968331184153322;
	setAttr ".wl[188].w[7]" 0.00024674100074603781;
	setAttr ".wl[188].w[12]" 0.95672032038409083;
	setAttr ".wl[188].w[13]" 0.03890126777404683;
	setAttr -s 5 ".wl[189].w";
	setAttr ".wl[189].w[6]" 0.027255330064787617;
	setAttr ".wl[189].w[7]" 0.0038143631088476695;
	setAttr ".wl[189].w[12]" 0.92554059824003732;
	setAttr ".wl[189].w[13]" 0.035882804949900919;
	setAttr ".wl[189].w[24]" 0.0075069036364264225;
	setAttr -s 5 ".wl[190].w";
	setAttr ".wl[190].w[4]" 0.049192349136161918;
	setAttr ".wl[190].w[5]" 0.022001534957770314;
	setAttr ".wl[190].w[6]" 0.17769261036882281;
	setAttr ".wl[190].w[12]" 0.7085650380564652;
	setAttr ".wl[190].w[27]" 0.042548467480779811;
	setAttr -s 5 ".wl[191].w";
	setAttr ".wl[191].w[4]" 0.10577876052075559;
	setAttr ".wl[191].w[5]" 0.032497945208485923;
	setAttr ".wl[191].w[6]" 0.31901027094013129;
	setAttr ".wl[191].w[12]" 0.44367243400674816;
	setAttr ".wl[191].w[27]" 0.09904058932387888;
	setAttr -s 5 ".wl[192].w";
	setAttr ".wl[192].w[1]" 0.39112770365608124;
	setAttr ".wl[192].w[4]" 0.11296447141443861;
	setAttr ".wl[192].w[27]" 0.10119366445336674;
	setAttr ".wl[192].w[28]" 0.21799304834861219;
	setAttr ".wl[192].w[48]" 0.17672111212750133;
	setAttr -s 5 ".wl[193].w";
	setAttr ".wl[193].w[1]" 0.38625564400656781;
	setAttr ".wl[193].w[2]" 0.043388663936061077;
	setAttr ".wl[193].w[4]" 0.11881420536287893;
	setAttr ".wl[193].w[27]" 0.11298706233062093;
	setAttr ".wl[193].w[28]" 0.33855442436387123;
	setAttr -s 5 ".wl[194].w";
	setAttr ".wl[194].w[0]" 0.0026485916432548197;
	setAttr ".wl[194].w[1]" 0.4792024156055863;
	setAttr ".wl[194].w[2]" 0.0047847489294925777;
	setAttr ".wl[194].w[28]" 0.23450176097243003;
	setAttr ".wl[194].w[48]" 0.27886248284923626;
	setAttr -s 5 ".wl[195].w";
	setAttr ".wl[195].w[1]" 0.25791250075417149;
	setAttr ".wl[195].w[28]" 0.53808895772195098;
	setAttr ".wl[195].w[29]" 0.15732549907472138;
	setAttr ".wl[195].w[30]" 0.036821545979864166;
	setAttr ".wl[195].w[31]" 0.0098514964692919416;
	setAttr -s 5 ".wl[196].w";
	setAttr ".wl[196].w[0]" 0.026910789090525248;
	setAttr ".wl[196].w[1]" 0.74182739511438356;
	setAttr ".wl[196].w[28]" 0.1178132455686034;
	setAttr ".wl[196].w[36]" 0.0032401767049812301;
	setAttr ".wl[196].w[48]" 0.11020839352150652;
	setAttr -s 5 ".wl[197].w";
	setAttr ".wl[197].w[1]" 0.56291659594167853;
	setAttr ".wl[197].w[28]" 0.33081234455129299;
	setAttr ".wl[197].w[29]" 0.071581099771296425;
	setAttr ".wl[197].w[30]" 0.0098655916007620911;
	setAttr ".wl[197].w[36]" 0.024824368134969983;
	setAttr -s 5 ".wl[198].w";
	setAttr ".wl[198].w[0]" 0.27101686972473821;
	setAttr ".wl[198].w[1]" 0.65251563541154234;
	setAttr ".wl[198].w[36]" 0.02124432780940801;
	setAttr ".wl[198].w[44]" 0.050919516590869185;
	setAttr ".wl[198].w[48]" 0.0043036504634422464;
	setAttr -s 5 ".wl[199].w";
	setAttr ".wl[199].w[0]" 0.034073610515759967;
	setAttr ".wl[199].w[1]" 0.51628874172112182;
	setAttr ".wl[199].w[28]" 0.031277786732145624;
	setAttr ".wl[199].w[36]" 0.3300382329778952;
	setAttr ".wl[199].w[37]" 0.088321628053077236;
	setAttr -s 5 ".wl[200].w";
	setAttr ".wl[200].w[8]" 0.061412672095097612;
	setAttr ".wl[200].w[9]" 0.31773455884515195;
	setAttr ".wl[200].w[10]" 0.37761152965083639;
	setAttr ".wl[200].w[18]" 0.12582161717236803;
	setAttr ".wl[200].w[22]" 0.11741962223654605;
	setAttr -s 5 ".wl[201].w";
	setAttr ".wl[201].w[9]" 0.025914373332072343;
	setAttr ".wl[201].w[10]" 0.77269185644161931;
	setAttr ".wl[201].w[11]" 0.13261970754728497;
	setAttr ".wl[201].w[18]" 0.047444509830742533;
	setAttr ".wl[201].w[22]" 0.021329552848280815;
	setAttr -s 5 ".wl[202].w";
	setAttr ".wl[202].w[9]" 0.05510284016050699;
	setAttr ".wl[202].w[10]" 0.25123638031818268;
	setAttr ".wl[202].w[11]" 0.022942406264208695;
	setAttr ".wl[202].w[22]" 0.60641273362061332;
	setAttr ".wl[202].w[23]" 0.064305639636488207;
	setAttr -s 5 ".wl[203].w";
	setAttr ".wl[203].w[9]" 0.0087210729067185248;
	setAttr ".wl[203].w[10]" 0.53906493525303578;
	setAttr ".wl[203].w[11]" 0.34432728778746979;
	setAttr ".wl[203].w[22]" 0.075657670942844091;
	setAttr ".wl[203].w[23]" 0.032229033109931783;
	setAttr -s 5 ".wl[204].w";
	setAttr ".wl[204].w[11]" 0.29717426264311364;
	setAttr ".wl[204].w[12]" 0.35734508524262704;
	setAttr ".wl[204].w[18]" 0.010611907953566408;
	setAttr ".wl[204].w[19]" 0.15311764342134454;
	setAttr ".wl[204].w[20]" 0.18175110073934841;
	setAttr -s 5 ".wl[205].w";
	setAttr ".wl[205].w[11]" 0.044489362011673861;
	setAttr ".wl[205].w[12]" 0.06540452251130506;
	setAttr ".wl[205].w[18]" 0.0049694194778068194;
	setAttr ".wl[205].w[19]" 0.37473737464570411;
	setAttr ".wl[205].w[20]" 0.51039932135351029;
	setAttr -s 5 ".wl[206].w";
	setAttr ".wl[206].w[7]" 0.00021406282231962979;
	setAttr ".wl[206].w[11]" 0.00021953288322764728;
	setAttr ".wl[206].w[18]" 0.00098251624814853071;
	setAttr ".wl[206].w[19]" 0.41315620369163897;
	setAttr ".wl[206].w[20]" 0.5854276843546653;
	setAttr -s 5 ".wl[207].w";
	setAttr ".wl[207].w[6]" 2.9754304137319009e-006;
	setAttr ".wl[207].w[7]" 3.4722167718887353e-006;
	setAttr ".wl[207].w[22]" 3.1344511123465088e-006;
	setAttr ".wl[207].w[23]" 0.38376054749621014;
	setAttr ".wl[207].w[24]" 0.61622987040549193;
	setAttr -s 5 ".wl[208].w";
	setAttr ".wl[208].w[11]" 0.0023679719047025047;
	setAttr ".wl[208].w[12]" 0.0026173538624248557;
	setAttr ".wl[208].w[22]" 0.0023803492395971905;
	setAttr ".wl[208].w[23]" 0.42012382050093389;
	setAttr ".wl[208].w[24]" 0.57251050449234164;
	setAttr -s 5 ".wl[209].w";
	setAttr ".wl[209].w[11]" 0.11577641736580253;
	setAttr ".wl[209].w[12]" 0.14930469958872036;
	setAttr ".wl[209].w[22]" 0.012241915330832968;
	setAttr ".wl[209].w[23]" 0.31279894636096989;
	setAttr ".wl[209].w[24]" 0.40987802135367418;
	setAttr -s 5 ".wl[210].w";
	setAttr ".wl[210].w[7]" 0.004815323600450761;
	setAttr ".wl[210].w[11]" 0.33658711046373285;
	setAttr ".wl[210].w[12]" 0.56837639998572331;
	setAttr ".wl[210].w[23]" 0.042116881738156163;
	setAttr ".wl[210].w[24]" 0.048104284211936903;
	setAttr -s 5 ".wl[211].w";
	setAttr ".wl[211].w[7]" 7.307855764838692e-005;
	setAttr ".wl[211].w[11]" 0.31337005879054836;
	setAttr ".wl[211].w[12]" 0.68639067991289537;
	setAttr ".wl[211].w[19]" 7.1911564195963355e-005;
	setAttr ".wl[211].w[20]" 9.4271174711867456e-005;
	setAttr -s 5 ".wl[212].w";
	setAttr ".wl[212].w[10]" 0.0046724349778339358;
	setAttr ".wl[212].w[11]" 0.33691944065903273;
	setAttr ".wl[212].w[12]" 0.59148720224690032;
	setAttr ".wl[212].w[19]" 0.028116369880798246;
	setAttr ".wl[212].w[20]" 0.038804552235434782;
	setAttr -s 5 ".wl[213].w";
	setAttr ".wl[213].w[11]" 0.070160516141147794;
	setAttr ".wl[213].w[12]" 0.4947738796391663;
	setAttr ".wl[213].w[13]" 0.027295171765880196;
	setAttr ".wl[213].w[19]" 0.056466663946144885;
	setAttr ".wl[213].w[20]" 0.35130376850766082;
	setAttr -s 5 ".wl[214].w";
	setAttr ".wl[214].w[11]" 0.0021929753542698147;
	setAttr ".wl[214].w[12]" 0.016901645765425171;
	setAttr ".wl[214].w[19]" 0.05022201117276566;
	setAttr ".wl[214].w[20]" 0.92495863293248648;
	setAttr ".wl[214].w[21]" 0.0057247347750529016;
	setAttr -s 5 ".wl[215].w";
	setAttr ".wl[215].w[6]" 2.9538160651593194e-006;
	setAttr ".wl[215].w[7]" 1.9950929766096453e-006;
	setAttr ".wl[215].w[19]" 0.016831589400125024;
	setAttr ".wl[215].w[20]" 0.98315359516362388;
	setAttr ".wl[215].w[21]" 9.8665272094116455e-006;
	setAttr -s 5 ".wl[216].w";
	setAttr ".wl[216].w[6]" 1.8465171710797193e-005;
	setAttr ".wl[216].w[7]" 1.4093555553944857e-005;
	setAttr ".wl[216].w[12]" 1.085387733059721e-005;
	setAttr ".wl[216].w[23]" 0.017937495085714617;
	setAttr ".wl[216].w[24]" 0.9820190923096902;
	setAttr -s 5 ".wl[217].w";
	setAttr ".wl[217].w[11]" 0.0053950191453202862;
	setAttr ".wl[217].w[12]" 0.025709102686352139;
	setAttr ".wl[217].w[13]" 0.0037710003909869178;
	setAttr ".wl[217].w[23]" 0.053994328600130793;
	setAttr ".wl[217].w[24]" 0.91113054917721004;
	setAttr -s 5 ".wl[218].w";
	setAttr ".wl[218].w[11]" 0.059667391370547898;
	setAttr ".wl[218].w[12]" 0.47941938428227154;
	setAttr ".wl[218].w[13]" 0.02804965903113639;
	setAttr ".wl[218].w[23]" 0.043932950486582155;
	setAttr ".wl[218].w[24]" 0.38893061482946217;
	setAttr -s 5 ".wl[219].w";
	setAttr ".wl[219].w[11]" 0.027277875466124778;
	setAttr ".wl[219].w[12]" 0.95963111493962472;
	setAttr ".wl[219].w[13]" 0.0043887487850840052;
	setAttr ".wl[219].w[23]" 0.001135383599679996;
	setAttr ".wl[219].w[24]" 0.0075668772094864053;
	setAttr -s 5 ".wl[220].w";
	setAttr ".wl[220].w[11]" 0.0066522901982858894;
	setAttr ".wl[220].w[12]" 0.99324695038420863;
	setAttr ".wl[220].w[13]" 4.7116511383268218e-005;
	setAttr ".wl[220].w[19]" 1.7355737781325073e-005;
	setAttr ".wl[220].w[20]" 3.6287168341077108e-005;
	setAttr -s 5 ".wl[221].w";
	setAttr ".wl[221].w[11]" 0.029034700155249192;
	setAttr ".wl[221].w[12]" 0.94083841744709007;
	setAttr ".wl[221].w[13]" 0.017065627276201503;
	setAttr ".wl[221].w[19]" 0.0021286438323304927;
	setAttr ".wl[221].w[20]" 0.010932611289128629;
	setAttr -s 5 ".wl[222].w";
	setAttr ".wl[222].w[1]" 0.0011012587638874315;
	setAttr ".wl[222].w[48]" 0.070712531899254721;
	setAttr ".wl[222].w[49]" 0.33580359710215218;
	setAttr ".wl[222].w[50]" 0.43434653743616558;
	setAttr ".wl[222].w[51]" 0.15803607479854015;
	setAttr -s 5 ".wl[223].w";
	setAttr ".wl[223].w[1]" 0.0075049861496399115;
	setAttr ".wl[223].w[48]" 0.092765465528654584;
	setAttr ".wl[223].w[49]" 0.32280223845105421;
	setAttr ".wl[223].w[50]" 0.43507930307053577;
	setAttr ".wl[223].w[51]" 0.14184800680011544;
	setAttr -s 5 ".wl[224].w";
	setAttr ".wl[224].w[1]" 0.017175686563986787;
	setAttr ".wl[224].w[48]" 0.13132190988564477;
	setAttr ".wl[224].w[49]" 0.29857754795703079;
	setAttr ".wl[224].w[50]" 0.40926439172116602;
	setAttr ".wl[224].w[51]" 0.14366046387217171;
	setAttr -s 5 ".wl[225].w";
	setAttr ".wl[225].w[1]" 0.0036027506722978338;
	setAttr ".wl[225].w[48]" 0.065531911851059235;
	setAttr ".wl[225].w[49]" 0.25382682279576785;
	setAttr ".wl[225].w[50]" 0.45274086801669583;
	setAttr ".wl[225].w[51]" 0.22429764666417928;
	setAttr -s 5 ".wl[226].w";
	setAttr ".wl[226].w[1]" 0.019070637669376066;
	setAttr ".wl[226].w[28]" 0.16283412181923701;
	setAttr ".wl[226].w[29]" 0.26301761802458135;
	setAttr ".wl[226].w[30]" 0.41224745668610641;
	setAttr ".wl[226].w[31]" 0.1428301658006991;
	setAttr -s 5 ".wl[227].w";
	setAttr ".wl[227].w[1]" 0.0082059300458559494;
	setAttr ".wl[227].w[28]" 0.11454403036753946;
	setAttr ".wl[227].w[29]" 0.29906914958304148;
	setAttr ".wl[227].w[30]" 0.44644236557106165;
	setAttr ".wl[227].w[31]" 0.13173852443250156;
	setAttr -s 5 ".wl[228].w";
	setAttr ".wl[228].w[1]" 0.00082471227836401436;
	setAttr ".wl[228].w[28]" 0.071862800275131783;
	setAttr ".wl[228].w[29]" 0.3406692513195852;
	setAttr ".wl[228].w[30]" 0.4417891431685077;
	setAttr ".wl[228].w[31]" 0.14485409295841131;
	setAttr -s 5 ".wl[229].w";
	setAttr ".wl[229].w[1]" 0.0036602387265556426;
	setAttr ".wl[229].w[28]" 0.065191182006854989;
	setAttr ".wl[229].w[29]" 0.25594234833489626;
	setAttr ".wl[229].w[30]" 0.45658508435450978;
	setAttr ".wl[229].w[31]" 0.21862114657718323;
	setAttr -s 5 ".wl[230].w";
	setAttr ".wl[230].w[1]" 0.00074235439640331434;
	setAttr ".wl[230].w[40]" 0.068429284959157649;
	setAttr ".wl[230].w[41]" 0.34790496739183641;
	setAttr ".wl[230].w[42]" 0.41643887904557575;
	setAttr ".wl[230].w[43]" 0.16648451420702673;
	setAttr -s 5 ".wl[231].w";
	setAttr ".wl[231].w[1]" 0.0025701648611199247;
	setAttr ".wl[231].w[40]" 0.054386333779009123;
	setAttr ".wl[231].w[41]" 0.28026974206729782;
	setAttr ".wl[231].w[42]" 0.46675815833111378;
	setAttr ".wl[231].w[43]" 0.19601560096145951;
	setAttr -s 5 ".wl[232].w";
	setAttr ".wl[232].w[1]" 0.017783734997923548;
	setAttr ".wl[232].w[40]" 0.11339922957541068;
	setAttr ".wl[232].w[41]" 0.3198504936616115;
	setAttr ".wl[232].w[42]" 0.39843553730815473;
	setAttr ".wl[232].w[43]" 0.15053100445689946;
	setAttr -s 5 ".wl[233].w";
	setAttr ".wl[233].w[1]" 0.0080341803816540176;
	setAttr ".wl[233].w[40]" 0.093508059348541103;
	setAttr ".wl[233].w[41]" 0.32082455207965671;
	setAttr ".wl[233].w[42]" 0.40067834328519153;
	setAttr ".wl[233].w[43]" 0.17695486490495679;
	setAttr -s 5 ".wl[234].w";
	setAttr ".wl[234].w[1]" 0.0030526962535365174;
	setAttr ".wl[234].w[32]" 0.091374027246103162;
	setAttr ".wl[234].w[33]" 0.24085947339768152;
	setAttr ".wl[234].w[34]" 0.48341775583796315;
	setAttr ".wl[234].w[35]" 0.18129604726471549;
	setAttr -s 5 ".wl[235].w";
	setAttr ".wl[235].w[1]" 0.017369513756113907;
	setAttr ".wl[235].w[32]" 0.15498654518579896;
	setAttr ".wl[235].w[33]" 0.28615156432912442;
	setAttr ".wl[235].w[34]" 0.435053609609798;
	setAttr ".wl[235].w[35]" 0.10643876711916481;
	setAttr -s 5 ".wl[236].w";
	setAttr ".wl[236].w[1]" 0.0010069384199704861;
	setAttr ".wl[236].w[32]" 0.07914718955657464;
	setAttr ".wl[236].w[33]" 0.33767896403249648;
	setAttr ".wl[236].w[34]" 0.43265294438688612;
	setAttr ".wl[236].w[35]" 0.14951396360407221;
	setAttr -s 5 ".wl[237].w";
	setAttr ".wl[237].w[1]" 0.0077656397170664387;
	setAttr ".wl[237].w[32]" 0.095095142042753447;
	setAttr ".wl[237].w[33]" 0.32365431240963155;
	setAttr ".wl[237].w[34]" 0.45020139758615574;
	setAttr ".wl[237].w[35]" 0.12328350824439298;
	setAttr -s 5 ".wl[238].w";
	setAttr ".wl[238].w[1]" 0.011797040096061565;
	setAttr ".wl[238].w[44]" 0.1055309688053733;
	setAttr ".wl[238].w[45]" 0.31490097853300031;
	setAttr ".wl[238].w[46]" 0.43012744564645383;
	setAttr ".wl[238].w[47]" 0.13764356691911092;
	setAttr -s 5 ".wl[239].w";
	setAttr ".wl[239].w[1]" 0.012430945528907271;
	setAttr ".wl[239].w[44]" 0.11540901536587608;
	setAttr ".wl[239].w[45]" 0.30269957480539122;
	setAttr ".wl[239].w[46]" 0.43866006409581326;
	setAttr ".wl[239].w[47]" 0.13080040020401212;
	setAttr -s 5 ".wl[240].w";
	setAttr ".wl[240].w[1]" 0.0030547972586383431;
	setAttr ".wl[240].w[44]" 0.04708620280101386;
	setAttr ".wl[240].w[45]" 0.2367695761732912;
	setAttr ".wl[240].w[46]" 0.50861662743299929;
	setAttr ".wl[240].w[47]" 0.20447279633405721;
	setAttr -s 5 ".wl[241].w";
	setAttr ".wl[241].w[1]" 0.003493336281814364;
	setAttr ".wl[241].w[44]" 0.046186725718042422;
	setAttr ".wl[241].w[45]" 0.24070660285609299;
	setAttr ".wl[241].w[46]" 0.49160795005339625;
	setAttr ".wl[241].w[47]" 0.21800538509065387;
	setAttr -s 5 ".wl[242].w";
	setAttr ".wl[242].w[1]" 0.0029840294753605903;
	setAttr ".wl[242].w[36]" 0.05121324623248602;
	setAttr ".wl[242].w[37]" 0.26399094931721129;
	setAttr ".wl[242].w[38]" 0.47052939463498877;
	setAttr ".wl[242].w[39]" 0.21128238033995353;
	setAttr -s 5 ".wl[243].w";
	setAttr ".wl[243].w[1]" 0.0033518623642600906;
	setAttr ".wl[243].w[36]" 0.052911071984555365;
	setAttr ".wl[243].w[37]" 0.2578656853484832;
	setAttr ".wl[243].w[38]" 0.46845571203125508;
	setAttr ".wl[243].w[39]" 0.21741566827144618;
	setAttr -s 5 ".wl[244].w";
	setAttr ".wl[244].w[1]" 0.013601424917586799;
	setAttr ".wl[244].w[36]" 0.15709645811188505;
	setAttr ".wl[244].w[37]" 0.26351170123534129;
	setAttr ".wl[244].w[38]" 0.40820277520373133;
	setAttr ".wl[244].w[39]" 0.1575876405314556;
	setAttr -s 5 ".wl[245].w";
	setAttr ".wl[245].w[1]" 0.01303591197210285;
	setAttr ".wl[245].w[36]" 0.15210502122157862;
	setAttr ".wl[245].w[37]" 0.27441730623750693;
	setAttr ".wl[245].w[38]" 0.40655215954997997;
	setAttr ".wl[245].w[39]" 0.15388960101883151;
	setAttr -s 5 ".wl[246].w";
	setAttr ".wl[246].w[1]" 0.031256251433283484;
	setAttr ".wl[246].w[2]" 0.04244520856099307;
	setAttr ".wl[246].w[3]" 0.030368109108168843;
	setAttr ".wl[246].w[4]" 0.45049860564836602;
	setAttr ".wl[246].w[27]" 0.44543182524918862;
	setAttr -s 5 ".wl[247].w";
	setAttr ".wl[247].w[3]" 0.016910782045074881;
	setAttr ".wl[247].w[4]" 0.40415616215768191;
	setAttr ".wl[247].w[5]" 0.085927970883811683;
	setAttr ".wl[247].w[6]" 0.10858366487018987;
	setAttr ".wl[247].w[27]" 0.38442142004324159;
	setAttr -s 5 ".wl[248].w";
	setAttr ".wl[248].w[2]" 0.072571612382521869;
	setAttr ".wl[248].w[3]" 0.062929198027419711;
	setAttr ".wl[248].w[4]" 0.45350708057314126;
	setAttr ".wl[248].w[26]" 0.039936402076117525;
	setAttr ".wl[248].w[27]" 0.37105570694079953;
	setAttr -s 5 ".wl[249].w";
	setAttr ".wl[249].w[4]" 0.4022508222084793;
	setAttr ".wl[249].w[5]" 0.11136099179007777;
	setAttr ".wl[249].w[6]" 0.12269824406895599;
	setAttr ".wl[249].w[26]" 0.041650352236366837;
	setAttr ".wl[249].w[27]" 0.32203958969612018;
	setAttr -s 5 ".wl[250].w";
	setAttr ".wl[250].w[3]" 0.014791736667034223;
	setAttr ".wl[250].w[4]" 0.41148921658324311;
	setAttr ".wl[250].w[5]" 0.080881614199381807;
	setAttr ".wl[250].w[6]" 0.10039077196131509;
	setAttr ".wl[250].w[26]" 0.39244666058902583;
	setAttr -s 5 ".wl[251].w";
	setAttr ".wl[251].w[4]" 0.40301549587344593;
	setAttr ".wl[251].w[5]" 0.11632390309062432;
	setAttr ".wl[251].w[6]" 0.13187779507856962;
	setAttr ".wl[251].w[26]" 0.31479708530509498;
	setAttr ".wl[251].w[27]" 0.033985720652265218;
	setAttr -s 5 ".wl[252].w";
	setAttr ".wl[252].w[1]" 0.038132309013911563;
	setAttr ".wl[252].w[2]" 0.076911517012217753;
	setAttr ".wl[252].w[3]" 0.064865650515979478;
	setAttr ".wl[252].w[4]" 0.44703098333989139;
	setAttr ".wl[252].w[26]" 0.37305954011799969;
	setAttr -s 5 ".wl[253].w";
	setAttr ".wl[253].w[1]" 0.029813009340250267;
	setAttr ".wl[253].w[2]" 0.042311408246127898;
	setAttr ".wl[253].w[3]" 0.03238912669417162;
	setAttr ".wl[253].w[4]" 0.44945982703310028;
	setAttr ".wl[253].w[26]" 0.44602662868634996;
	setAttr -s 5 ".wl[254].w";
	setAttr ".wl[254].w[1]" 0.0060010399300547612;
	setAttr ".wl[254].w[2]" 0.016960442661174198;
	setAttr ".wl[254].w[3]" 0.017029344456319321;
	setAttr ".wl[254].w[4]" 0.48323129294045369;
	setAttr ".wl[254].w[27]" 0.47677788001199806;
	setAttr -s 5 ".wl[255].w";
	setAttr ".wl[255].w[3]" 0.010744671857472694;
	setAttr ".wl[255].w[4]" 0.48491533557475597;
	setAttr ".wl[255].w[5]" 0.017189077639996421;
	setAttr ".wl[255].w[6]" 0.0079957155530237158;
	setAttr ".wl[255].w[27]" 0.47915519937475121;
	setAttr -s 5 ".wl[256].w";
	setAttr ".wl[256].w[2]" 0.037564838920366626;
	setAttr ".wl[256].w[3]" 0.042755728172443025;
	setAttr ".wl[256].w[4]" 0.49831724989527404;
	setAttr ".wl[256].w[26]" 0.024286756902387036;
	setAttr ".wl[256].w[27]" 0.39707542610952934;
	setAttr -s 5 ".wl[257].w";
	setAttr ".wl[257].w[3]" 0.029794918869448028;
	setAttr ".wl[257].w[4]" 0.50617593976623465;
	setAttr ".wl[257].w[5]" 0.029146085740176644;
	setAttr ".wl[257].w[26]" 0.028452088190099437;
	setAttr ".wl[257].w[27]" 0.40643096743404139;
	setAttr -s 5 ".wl[258].w";
	setAttr ".wl[258].w[3]" 0.008644900509746865;
	setAttr ".wl[258].w[4]" 0.4889473961691691;
	setAttr ".wl[258].w[5]" 0.01608728897440162;
	setAttr ".wl[258].w[6]" 0.0060445480171078952;
	setAttr ".wl[258].w[26]" 0.48027586632957442;
	setAttr -s 5 ".wl[259].w";
	setAttr ".wl[259].w[3]" 0.025231932545245021;
	setAttr ".wl[259].w[4]" 0.52702328275336119;
	setAttr ".wl[259].w[5]" 0.024296996138472506;
	setAttr ".wl[259].w[26]" 0.3981249680112468;
	setAttr ".wl[259].w[27]" 0.025322820551674424;
	setAttr -s 5 ".wl[260].w";
	setAttr ".wl[260].w[2]" 0.032167781965401557;
	setAttr ".wl[260].w[3]" 0.037122048675419794;
	setAttr ".wl[260].w[4]" 0.50756668243287106;
	setAttr ".wl[260].w[26]" 0.40231035384608743;
	setAttr ".wl[260].w[27]" 0.020833133080220164;
	setAttr -s 5 ".wl[261].w";
	setAttr ".wl[261].w[1]" 0.0038870171040164079;
	setAttr ".wl[261].w[2]" 0.016826350210431794;
	setAttr ".wl[261].w[3]" 0.017055389400903412;
	setAttr ".wl[261].w[4]" 0.48507859715763529;
	setAttr ".wl[261].w[26]" 0.47715264612701319;
	setAttr -s 5 ".wl[262].w";
	setAttr ".wl[262].w[1]" 0.0010552630697146087;
	setAttr ".wl[262].w[2]" 0.00689860370443125;
	setAttr ".wl[262].w[3]" 0.0075527772094420523;
	setAttr ".wl[262].w[4]" 0.53261197401788685;
	setAttr ".wl[262].w[27]" 0.45188138199852529;
	setAttr -s 5 ".wl[263].w";
	setAttr ".wl[263].w[3]" 0.0038150794385498291;
	setAttr ".wl[263].w[4]" 0.5371450655891209;
	setAttr ".wl[263].w[5]" 0.0041133611770333292;
	setAttr ".wl[263].w[26]" 0.0010341326696783027;
	setAttr ".wl[263].w[27]" 0.45389236112561754;
	setAttr -s 5 ".wl[264].w";
	setAttr ".wl[264].w[2]" 0.011520664148801346;
	setAttr ".wl[264].w[3]" 0.014893826535996128;
	setAttr ".wl[264].w[4]" 0.58723437821311986;
	setAttr ".wl[264].w[26]" 0.0040118276214230796;
	setAttr ".wl[264].w[27]" 0.38233930348065953;
	setAttr -s 5 ".wl[265].w";
	setAttr ".wl[265].w[3]" 0.010092925678598355;
	setAttr ".wl[265].w[4]" 0.59827737520290258;
	setAttr ".wl[265].w[5]" 0.0065842636174464125;
	setAttr ".wl[265].w[26]" 0.0046465857295341249;
	setAttr ".wl[265].w[27]" 0.38039884977151867;
	setAttr -s 5 ".wl[266].w";
	setAttr ".wl[266].w[3]" 0.0033447385269863156;
	setAttr ".wl[266].w[4]" 0.54263377629228671;
	setAttr ".wl[266].w[5]" 0.004882042590863128;
	setAttr ".wl[266].w[26]" 0.44843451446081006;
	setAttr ".wl[266].w[27]" 0.00070492812905357182;
	setAttr -s 5 ".wl[267].w";
	setAttr ".wl[267].w[3]" 0.0070632749606035425;
	setAttr ".wl[267].w[4]" 0.62605000241784292;
	setAttr ".wl[267].w[5]" 0.0057861244734151111;
	setAttr ".wl[267].w[26]" 0.35814756273281267;
	setAttr ".wl[267].w[27]" 0.0029530354153256525;
	setAttr -s 5 ".wl[268].w";
	setAttr ".wl[268].w[2]" 0.0097405608242020283;
	setAttr ".wl[268].w[3]" 0.011930621201952929;
	setAttr ".wl[268].w[4]" 0.60474866073087152;
	setAttr ".wl[268].w[26]" 0.37087136333643389;
	setAttr ".wl[268].w[27]" 0.0027087939065397692;
	setAttr -s 5 ".wl[269].w";
	setAttr ".wl[269].w[1]" 0.00058047692467620043;
	setAttr ".wl[269].w[2]" 0.0065966662595739163;
	setAttr ".wl[269].w[3]" 0.0071209503937761124;
	setAttr ".wl[269].w[4]" 0.53626619095651107;
	setAttr ".wl[269].w[26]" 0.44943571546546268;
	setAttr -s 5 ".wl[270].w";
	setAttr ".wl[270].w[6]" 0.0001021801613124228;
	setAttr ".wl[270].w[12]" 0.46924932605947139;
	setAttr ".wl[270].w[13]" 0.43415678912225664;
	setAttr ".wl[270].w[20]" 0.051914447314920266;
	setAttr ".wl[270].w[21]" 0.044577257342039288;
	setAttr -s 5 ".wl[271].w";
	setAttr ".wl[271].w[11]" 2.7262100175333056e-005;
	setAttr ".wl[271].w[12]" 0.63941278118239941;
	setAttr ".wl[271].w[13]" 0.35736939478515123;
	setAttr ".wl[271].w[20]" 0.0019431949779560242;
	setAttr ".wl[271].w[21]" 0.0012473669543179367;
	setAttr -s 5 ".wl[272].w";
	setAttr ".wl[272].w[10]" 0.14388016535761156;
	setAttr ".wl[272].w[11]" 0.51437235080023735;
	setAttr ".wl[272].w[12]" 0.084878943347346081;
	setAttr ".wl[272].w[18]" 0.090050203580717747;
	setAttr ".wl[272].w[19]" 0.16681833691408715;
	setAttr -s 5 ".wl[273].w";
	setAttr ".wl[273].w[10]" 0.36248037439422481;
	setAttr ".wl[273].w[11]" 0.49054761993193363;
	setAttr ".wl[273].w[12]" 0.012131810955138642;
	setAttr ".wl[273].w[18]" 0.069259468195292662;
	setAttr ".wl[273].w[19]" 0.065580726523410279;
	setAttr -s 5 ".wl[274].w";
	setAttr ".wl[274].w[10]" 0.077803094918518709;
	setAttr ".wl[274].w[11]" 0.64267009928551699;
	setAttr ".wl[274].w[12]" 0.20030398105336819;
	setAttr ".wl[274].w[18]" 0.023052289229792147;
	setAttr ".wl[274].w[19]" 0.056170535512804112;
	setAttr -s 5 ".wl[275].w";
	setAttr ".wl[275].w[10]" 0.16253794850869649;
	setAttr ".wl[275].w[11]" 0.79915549545945763;
	setAttr ".wl[275].w[12]" 0.027792702411265684;
	setAttr ".wl[275].w[18]" 0.0046713288692670565;
	setAttr ".wl[275].w[19]" 0.0058425247513130612;
	setAttr -s 5 ".wl[276].w";
	setAttr ".wl[276].w[6]" 0.00012868478573645157;
	setAttr ".wl[276].w[12]" 0.26938691612196519;
	setAttr ".wl[276].w[13]" 0.2464095405492491;
	setAttr ".wl[276].w[20]" 0.24605442578512118;
	setAttr ".wl[276].w[21]" 0.23802043275792806;
	setAttr -s 5 ".wl[277].w";
	setAttr ".wl[277].w[6]" 0.00013136027035004125;
	setAttr ".wl[277].w[12]" 0.52415322506690132;
	setAttr ".wl[277].w[13]" 0.37978073506790333;
	setAttr ".wl[277].w[20]" 0.050876994337441854;
	setAttr ".wl[277].w[21]" 0.045057685257403585;
	setAttr -s 5 ".wl[278].w";
	setAttr ".wl[278].w[6]" 2.0660747428318946e-005;
	setAttr ".wl[278].w[12]" 0.52328798382758657;
	setAttr ".wl[278].w[13]" 0.45548541868029235;
	setAttr ".wl[278].w[20]" 0.010779255794875374;
	setAttr ".wl[278].w[21]" 0.010426680949817262;
	setAttr -s 5 ".wl[279].w";
	setAttr ".wl[279].w[6]" 0.0068712929475747706;
	setAttr ".wl[279].w[12]" 0.46293794056015414;
	setAttr ".wl[279].w[13]" 0.11487324831152682;
	setAttr ".wl[279].w[20]" 0.29339877011354643;
	setAttr ".wl[279].w[21]" 0.12191874806719798;
	setAttr -s 5 ".wl[280].w";
	setAttr ".wl[280].w[6]" 0.031596734756315234;
	setAttr ".wl[280].w[12]" 0.78270051463767942;
	setAttr ".wl[280].w[13]" 0.054902924364610479;
	setAttr ".wl[280].w[20]" 0.11156629564342445;
	setAttr ".wl[280].w[21]" 0.019233530597970332;
	setAttr -s 5 ".wl[281].w";
	setAttr ".wl[281].w[6]" 0.00022095074224656079;
	setAttr ".wl[281].w[12]" 0.85697256375334119;
	setAttr ".wl[281].w[13]" 0.13154790317690779;
	setAttr ".wl[281].w[20]" 0.0074470836704819124;
	setAttr ".wl[281].w[21]" 0.0038114986570224755;
	setAttr -s 5 ".wl[282].w";
	setAttr ".wl[282].w[4]" 0.013633885987093378;
	setAttr ".wl[282].w[6]" 0.19971519776365437;
	setAttr ".wl[282].w[7]" 0.030583022269914311;
	setAttr ".wl[282].w[12]" 0.36545809734899648;
	setAttr ".wl[282].w[20]" 0.39060979663034151;
	setAttr -s 5 ".wl[283].w";
	setAttr ".wl[283].w[4]" 0.086520739995088247;
	setAttr ".wl[283].w[6]" 0.33332315453410277;
	setAttr ".wl[283].w[12]" 0.3755344728648537;
	setAttr ".wl[283].w[20]" 0.13553397293745084;
	setAttr ".wl[283].w[27]" 0.069087659668504553;
	setAttr -s 5 ".wl[284].w";
	setAttr ".wl[284].w[4]" 0.01517848978522761;
	setAttr ".wl[284].w[6]" 0.10310240891278617;
	setAttr ".wl[284].w[12]" 0.84369428297683369;
	setAttr ".wl[284].w[20]" 0.025269660191220584;
	setAttr ".wl[284].w[27]" 0.012755158133931965;
	setAttr -s 5 ".wl[285].w";
	setAttr ".wl[285].w[1]" 0.1243046430283576;
	setAttr ".wl[285].w[4]" 0.19726124399208428;
	setAttr ".wl[285].w[5]" 0.17066312499873038;
	setAttr ".wl[285].w[6]" 0.38749000948495277;
	setAttr ".wl[285].w[20]" 0.120280978495875;
	setAttr -s 5 ".wl[286].w";
	setAttr ".wl[286].w[1]" 0.4122385771287056;
	setAttr ".wl[286].w[4]" 0.083230174430313483;
	setAttr ".wl[286].w[6]" 0.048539103501949059;
	setAttr ".wl[286].w[27]" 0.06603089068427638;
	setAttr ".wl[286].w[48]" 0.38996125425475542;
	setAttr -s 5 ".wl[287].w";
	setAttr ".wl[287].w[1]" 0.24312469640513715;
	setAttr ".wl[287].w[4]" 0.19959313839384402;
	setAttr ".wl[287].w[6]" 0.19610625898703568;
	setAttr ".wl[287].w[27]" 0.17113286373669345;
	setAttr ".wl[287].w[48]" 0.1900430424772899;
	setAttr -s 5 ".wl[288].w";
	setAttr ".wl[288].w[1]" 0.3876880728405786;
	setAttr ".wl[288].w[4]" 0.01850274414659648;
	setAttr ".wl[288].w[5]" 0.014781839461755115;
	setAttr ".wl[288].w[48]" 0.53997446844498309;
	setAttr ".wl[288].w[49]" 0.039052875106086779;
	setAttr -s 5 ".wl[289].w";
	setAttr ".wl[289].w[1]" 0.13148224066308545;
	setAttr ".wl[289].w[48]" 0.49930341146990537;
	setAttr ".wl[289].w[49]" 0.28648924807702075;
	setAttr ".wl[289].w[50]" 0.069206695103236293;
	setAttr ".wl[289].w[51]" 0.013518404686752129;
	setAttr -s 5 ".wl[290].w";
	setAttr ".wl[290].w[1]" 0.43357694665796886;
	setAttr ".wl[290].w[2]" 0.0052920686587983471;
	setAttr ".wl[290].w[28]" 0.020703974052105018;
	setAttr ".wl[290].w[48]" 0.52226229546495928;
	setAttr ".wl[290].w[49]" 0.018164715166168421;
	setAttr -s 5 ".wl[291].w";
	setAttr ".wl[291].w[9]" 0.0057340091510552369;
	setAttr ".wl[291].w[10]" 0.024817645324139003;
	setAttr ".wl[291].w[11]" 0.01962915940383354;
	setAttr ".wl[291].w[18]" 0.45259640946608298;
	setAttr ".wl[291].w[19]" 0.49722277665488918;
	setAttr -s 5 ".wl[292].w";
	setAttr ".wl[292].w[9]" 0.017880239640703972;
	setAttr ".wl[292].w[10]" 0.064752408479914786;
	setAttr ".wl[292].w[11]" 0.0050985150087728571;
	setAttr ".wl[292].w[18]" 0.73016709091374332;
	setAttr ".wl[292].w[19]" 0.18210174595686512;
	setAttr -s 5 ".wl[293].w";
	setAttr ".wl[293].w[9]" 0.019402891740180436;
	setAttr ".wl[293].w[10]" 0.21743518347332783;
	setAttr ".wl[293].w[11]" 0.12995927718402375;
	setAttr ".wl[293].w[18]" 0.36060296973302441;
	setAttr ".wl[293].w[19]" 0.27259967786944356;
	setAttr -s 5 ".wl[294].w";
	setAttr ".wl[294].w[9]" 0.038730527492530357;
	setAttr ".wl[294].w[10]" 0.32150684439520422;
	setAttr ".wl[294].w[11]" 0.040052479389460507;
	setAttr ".wl[294].w[18]" 0.50353239915586534;
	setAttr ".wl[294].w[19]" 0.096177749566939752;
	setAttr -s 5 ".wl[295].w";
	setAttr ".wl[295].w[10]" 0.034796288672387522;
	setAttr ".wl[295].w[11]" 0.094746825280287203;
	setAttr ".wl[295].w[18]" 0.28825934492792105;
	setAttr ".wl[295].w[19]" 0.54824317059996563;
	setAttr ".wl[295].w[20]" 0.03395437051943867;
	setAttr -s 5 ".wl[296].w";
	setAttr ".wl[296].w[11]" 0.0048383491006031903;
	setAttr ".wl[296].w[12]" 0.0015091142341278412;
	setAttr ".wl[296].w[18]" 0.088208672374103139;
	setAttr ".wl[296].w[19]" 0.8070170535214054;
	setAttr ".wl[296].w[20]" 0.09842681076976055;
	setAttr -s 5 ".wl[297].w";
	setAttr ".wl[297].w[9]" 0.00022549930468369097;
	setAttr ".wl[297].w[10]" 0.00032316033769161297;
	setAttr ".wl[297].w[18]" 0.26454305022956204;
	setAttr ".wl[297].w[19]" 0.72508520421558842;
	setAttr ".wl[297].w[20]" 0.0098230859124743154;
	setAttr -s 5 ".wl[298].w";
	setAttr ".wl[298].w[6]" 0.00023122183347781177;
	setAttr ".wl[298].w[12]" 0.039676566944789673;
	setAttr ".wl[298].w[13]" 0.03508940869409409;
	setAttr ".wl[298].w[20]" 0.57656730671156076;
	setAttr ".wl[298].w[21]" 0.34843549581607763;
	setAttr -s 5 ".wl[299].w";
	setAttr ".wl[299].w[6]" 4.884229025381122e-006;
	setAttr ".wl[299].w[12]" 0.0010009022589154491;
	setAttr ".wl[299].w[13]" 0.00094694381888822318;
	setAttr ".wl[299].w[20]" 0.57400846105504699;
	setAttr ".wl[299].w[21]" 0.42403880863812388;
	setAttr -s 5 ".wl[300].w";
	setAttr ".wl[300].w[12]" 0.0062633717877636046;
	setAttr ".wl[300].w[13]" 0.0030238661395475919;
	setAttr ".wl[300].w[19]" 0.0010416334722659145;
	setAttr ".wl[300].w[20]" 0.88466546735418061;
	setAttr ".wl[300].w[21]" 0.10500566124624225;
	setAttr -s 5 ".wl[301].w";
	setAttr ".wl[301].w[6]" 1.3268093144719539e-006;
	setAttr ".wl[301].w[12]" 3.7793369797505709e-005;
	setAttr ".wl[301].w[13]" 3.2443210266790213e-005;
	setAttr ".wl[301].w[20]" 0.74152044192844169;
	setAttr ".wl[301].w[21]" 0.25840799468217979;
	setAttr -s 5 ".wl[302].w";
	setAttr ".wl[302].w[6]" 5.1609459932810716e-005;
	setAttr ".wl[302].w[12]" 0.0013849179446935008;
	setAttr ".wl[302].w[13]" 0.0010162361259808028;
	setAttr ".wl[302].w[20]" 0.66454102344955068;
	setAttr ".wl[302].w[21]" 0.33300621301984218;
	setAttr -s 5 ".wl[303].w";
	setAttr ".wl[303].w[6]" 1.8643506756890528e-007;
	setAttr ".wl[303].w[12]" 1.3383319336869916e-005;
	setAttr ".wl[303].w[13]" 1.2782265845815933e-005;
	setAttr ".wl[303].w[20]" 0.59050327565635019;
	setAttr ".wl[303].w[21]" 0.40947037232339956;
	setAttr -s 5 ".wl[304].w";
	setAttr ".wl[304].w[6]" 6.1698602071677661e-005;
	setAttr ".wl[304].w[12]" 0.020205745321525533;
	setAttr ".wl[304].w[13]" 0.015848910375662221;
	setAttr ".wl[304].w[20]" 0.52053384509903866;
	setAttr ".wl[304].w[21]" 0.44334980060170182;
	setAttr -s 5 ".wl[305].w";
	setAttr ".wl[305].w[6]" 0.054259310642404988;
	setAttr ".wl[305].w[7]" 0.0040885188521704923;
	setAttr ".wl[305].w[12]" 0.0024542982748218321;
	setAttr ".wl[305].w[20]" 0.92793839384027921;
	setAttr ".wl[305].w[21]" 0.011259478390323553;
	setAttr -s 5 ".wl[306].w";
	setAttr ".wl[306].w[6]" 4.0233278530067851e-005;
	setAttr ".wl[306].w[12]" 3.1520403107915439e-005;
	setAttr ".wl[306].w[13]" 1.5484650732498983e-005;
	setAttr ".wl[306].w[20]" 0.87969322946533646;
	setAttr ".wl[306].w[21]" 0.12021953220229294;
	setAttr -s 5 ".wl[307].w";
	setAttr ".wl[307].w[6]" 0.0092753698934198662;
	setAttr ".wl[307].w[12]" 0.046844332021425399;
	setAttr ".wl[307].w[13]" 0.0073915733469477225;
	setAttr ".wl[307].w[20]" 0.80913640431238809;
	setAttr ".wl[307].w[21]" 0.12735232042581898;
	setAttr -s 5 ".wl[308].w";
	setAttr ".wl[308].w[3]" 0.025607647311673063;
	setAttr ".wl[308].w[4]" 0.056358418925145697;
	setAttr ".wl[308].w[5]" 0.083927898263931322;
	setAttr ".wl[308].w[6]" 0.39396729220223453;
	setAttr ".wl[308].w[20]" 0.44013874329701552;
	setAttr -s 5 ".wl[309].w";
	setAttr ".wl[309].w[4]" 0.0062850789392749655;
	setAttr ".wl[309].w[5]" 0.0099121479987181495;
	setAttr ".wl[309].w[6]" 0.12611714467696897;
	setAttr ".wl[309].w[7]" 0.0054053190564426435;
	setAttr ".wl[309].w[20]" 0.85228030932859522;
	setAttr -s 5 ".wl[310].w";
	setAttr ".wl[310].w[5]" 0.022340606652051554;
	setAttr ".wl[310].w[6]" 0.24069642274170502;
	setAttr ".wl[310].w[7]" 0.016913595581208713;
	setAttr ".wl[310].w[12]" 0.01618640453849381;
	setAttr ".wl[310].w[20]" 0.7038629704865409;
	setAttr -s 5 ".wl[311].w";
	setAttr ".wl[311].w[1]" 0.44213518823349962;
	setAttr ".wl[311].w[2]" 0.12813119644653975;
	setAttr ".wl[311].w[6]" 0.11256661122980029;
	setAttr ".wl[311].w[44]" 0.11449966100611034;
	setAttr ".wl[311].w[48]" 0.20266734308405002;
	setAttr -s 5 ".wl[312].w";
	setAttr ".wl[312].w[1]" 0.15424281399207052;
	setAttr ".wl[312].w[4]" 0.12995197006135989;
	setAttr ".wl[312].w[5]" 0.18514981938220643;
	setAttr ".wl[312].w[6]" 0.3621954250714895;
	setAttr ".wl[312].w[20]" 0.16845997149287367;
	setAttr -s 5 ".wl[313].w";
	setAttr ".wl[313].w[1]" 0.20871567665847135;
	setAttr ".wl[313].w[4]" 0.14493707703793374;
	setAttr ".wl[313].w[5]" 0.20064253858129941;
	setAttr ".wl[313].w[6]" 0.33443148575306192;
	setAttr ".wl[313].w[48]" 0.11127322196923363;
	setAttr -s 5 ".wl[314].w";
	setAttr ".wl[314].w[1]" 0.40217956676138444;
	setAttr ".wl[314].w[2]" 0.013784294919706596;
	setAttr ".wl[314].w[44]" 0.31765129661042651;
	setAttr ".wl[314].w[45]" 0.03420817470631602;
	setAttr ".wl[314].w[48]" 0.23217666700216635;
	setAttr -s 5 ".wl[315].w";
	setAttr ".wl[315].w[1]" 0.38822915107959727;
	setAttr ".wl[315].w[2]" 0.060748029174228786;
	setAttr ".wl[315].w[44]" 0.42105039608002487;
	setAttr ".wl[315].w[45]" 0.025551121888345497;
	setAttr ".wl[315].w[48]" 0.10442130177780354;
	setAttr -s 5 ".wl[316].w";
	setAttr ".wl[316].w[1]" 0.45657631773357343;
	setAttr ".wl[316].w[2]" 0.045125827182190548;
	setAttr ".wl[316].w[44]" 0.11442718984234954;
	setAttr ".wl[316].w[48]" 0.36697156664188557;
	setAttr ".wl[316].w[49]" 0.016899098600000856;
	setAttr -s 5 ".wl[317].w";
	setAttr ".wl[317].w[1]" 0.31142141802657869;
	setAttr ".wl[317].w[44]" 0.039768697490204126;
	setAttr ".wl[317].w[48]" 0.41168629095566733;
	setAttr ".wl[317].w[49]" 0.19703156328630289;
	setAttr ".wl[317].w[50]" 0.040092030241247009;
	setAttr -s 5 ".wl[318].w";
	setAttr ".wl[318].w[1]" 0.28106019442279223;
	setAttr ".wl[318].w[44]" 0.42688146876267941;
	setAttr ".wl[318].w[45]" 0.18061870606755207;
	setAttr ".wl[318].w[46]" 0.037918264287131888;
	setAttr ".wl[318].w[48]" 0.073521366459844473;
	setAttr -s 5 ".wl[319].w";
	setAttr ".wl[319].w[0]" 0.042773861089505455;
	setAttr ".wl[319].w[1]" 0.7134322031946202;
	setAttr ".wl[319].w[44]" 0.13057324180593477;
	setAttr ".wl[319].w[45]" 0.0078706988542521766;
	setAttr ".wl[319].w[48]" 0.1053499950556874;
	setAttr -s 5 ".wl[320].w";
	setAttr ".wl[320].w[1]" 0.51503878406843151;
	setAttr ".wl[320].w[2]" 0.013142203189592193;
	setAttr ".wl[320].w[28]" 0.36247684850021128;
	setAttr ".wl[320].w[29]" 0.015621857380026496;
	setAttr ".wl[320].w[36]" 0.093720306861738434;
	setAttr -s 5 ".wl[321].w";
	setAttr ".wl[321].w[1]" 0.51386673020884832;
	setAttr ".wl[321].w[2]" 0.058210841078929855;
	setAttr ".wl[321].w[4]" 0.032449105053843394;
	setAttr ".wl[321].w[28]" 0.19684436438236719;
	setAttr ".wl[321].w[36]" 0.19862895927601121;
	setAttr -s 5 ".wl[322].w";
	setAttr ".wl[322].w[1]" 0.44402659551271889;
	setAttr ".wl[322].w[28]" 0.28129009791836818;
	setAttr ".wl[322].w[29]" 0.024361653401675253;
	setAttr ".wl[322].w[36]" 0.22393900582796317;
	setAttr ".wl[322].w[37]" 0.026382647339274437;
	setAttr -s 5 ".wl[323].w";
	setAttr ".wl[323].w[1]" 0.39423812634261934;
	setAttr ".wl[323].w[2]" 0.029243644018390535;
	setAttr ".wl[323].w[28]" 0.076708711893420281;
	setAttr ".wl[323].w[36]" 0.45565733583851464;
	setAttr ".wl[323].w[37]" 0.044152181907055089;
	setAttr -s 5 ".wl[324].w";
	setAttr ".wl[324].w[2]" 0.0011119921699434025;
	setAttr ".wl[324].w[3]" 0.0019286312685141511;
	setAttr ".wl[324].w[4]" 0.55283807818887076;
	setAttr ".wl[324].w[5]" 0.00050732072211219926;
	setAttr ".wl[324].w[27]" 0.44361397765055938;
	setAttr -s 5 ".wl[325].w";
	setAttr ".wl[325].w[3]" 0.0061147120812758008;
	setAttr ".wl[325].w[4]" 0.56658061570927287;
	setAttr ".wl[325].w[5]" 0.0054767052714999806;
	setAttr ".wl[325].w[26]" 0.0016843058989710318;
	setAttr ".wl[325].w[27]" 0.42014366103898032;
	setAttr -s 5 ".wl[326].w";
	setAttr ".wl[326].w[2]" 0.0098907252514871414;
	setAttr ".wl[326].w[3]" 0.011358714037517785;
	setAttr ".wl[326].w[4]" 0.5563707894267842;
	setAttr ".wl[326].w[26]" 0.0015278676897708889;
	setAttr ".wl[326].w[27]" 0.42085190359444008;
	setAttr -s 5 ".wl[327].w";
	setAttr ".wl[327].w[2]" 0.0033361802189223384;
	setAttr ".wl[327].w[3]" 0.0083918658399493896;
	setAttr ".wl[327].w[4]" 0.64218058309848436;
	setAttr ".wl[327].w[26]" 0.0031406872446420584;
	setAttr ".wl[327].w[27]" 0.34295068359800185;
	setAttr -s 5 ".wl[328].w";
	setAttr ".wl[328].w[4]" 0.0090438228075275032;
	setAttr ".wl[328].w[6]" 0.22299550666419754;
	setAttr ".wl[328].w[7]" 0.030844620605205313;
	setAttr ".wl[328].w[12]" 0.062022825623386471;
	setAttr ".wl[328].w[24]" 0.67509322429968321;
	setAttr -s 5 ".wl[329].w";
	setAttr ".wl[329].w[6]" 0.034778311383901951;
	setAttr ".wl[329].w[7]" 0.0043187658754390134;
	setAttr ".wl[329].w[12]" 0.0036240470767414214;
	setAttr ".wl[329].w[13]" 0.00094625659629705853;
	setAttr ".wl[329].w[24]" 0.95633261906762057;
	setAttr -s 5 ".wl[330].w";
	setAttr ".wl[330].w[4]" 0.025581876175001239;
	setAttr ".wl[330].w[5]" 0.037470070078933167;
	setAttr ".wl[330].w[6]" 0.42607351068309446;
	setAttr ".wl[330].w[7]" 0.032187893340542915;
	setAttr ".wl[330].w[24]" 0.4786866497224283;
	setAttr -s 5 ".wl[331].w";
	setAttr ".wl[331].w[4]" 0.008291720514397357;
	setAttr ".wl[331].w[5]" 0.011921273849744942;
	setAttr ".wl[331].w[6]" 0.23100135549797851;
	setAttr ".wl[331].w[7]" 0.014727453024517024;
	setAttr ".wl[331].w[24]" 0.73405819711336207;
	setAttr -s 5 ".wl[332].w";
	setAttr ".wl[332].w[6]" 0.0023139690140292482;
	setAttr ".wl[332].w[7]" 0.0012100119532335695;
	setAttr ".wl[332].w[12]" 0.025812415925168818;
	setAttr ".wl[332].w[13]" 0.010178917217567704;
	setAttr ".wl[332].w[24]" 0.9604846858900008;
	setAttr -s 5 ".wl[333].w";
	setAttr ".wl[333].w[6]" 3.6848857771083346e-005;
	setAttr ".wl[333].w[7]" 2.41736951749373e-005;
	setAttr ".wl[333].w[12]" 0.0024628664884963993;
	setAttr ".wl[333].w[13]" 0.0019141461376909607;
	setAttr ".wl[333].w[24]" 0.99556196482086656;
	setAttr -s 5 ".wl[334].w";
	setAttr ".wl[334].w[6]" 1.8121482337635386e-005;
	setAttr ".wl[334].w[7]" 9.2133227401021787e-006;
	setAttr ".wl[334].w[12]" 6.1572485113707057e-005;
	setAttr ".wl[334].w[13]" 5.6256532370086991e-005;
	setAttr ".wl[334].w[24]" 0.99985483617743864;
	setAttr -s 5 ".wl[335].w";
	setAttr ".wl[335].w[6]" 0.00017921730763362183;
	setAttr ".wl[335].w[7]" 0.00012445023149527436;
	setAttr ".wl[335].w[12]" 0.067385699950215067;
	setAttr ".wl[335].w[13]" 0.062093797021019193;
	setAttr ".wl[335].w[24]" 0.8702168354896368;
	setAttr -s 5 ".wl[336].w";
	setAttr ".wl[336].w[6]" 1.6755321605985205e-005;
	setAttr ".wl[336].w[12]" 0.0016735640828104894;
	setAttr ".wl[336].w[13]" 0.0016658444648002752;
	setAttr ".wl[336].w[23]" 1.64938847713206e-005;
	setAttr ".wl[336].w[24]" 0.9966273422460119;
	setAttr -s 5 ".wl[337].w";
	setAttr ".wl[337].w[6]" 2.5398422707326391e-006;
	setAttr ".wl[337].w[12]" 0.00011799143338175028;
	setAttr ".wl[337].w[13]" 0.0001179652939050227;
	setAttr ".wl[337].w[23]" 3.0051388839627799e-006;
	setAttr ".wl[337].w[24]" 0.9997584982915585;
	setAttr -s 5 ".wl[338].w";
	setAttr ".wl[338].w[6]" 5.3804794442461291e-006;
	setAttr ".wl[338].w[12]" 3.727305535734001e-005;
	setAttr ".wl[338].w[13]" 2.6222656529141857e-005;
	setAttr ".wl[338].w[23]" 7.5698993475574023e-006;
	setAttr ".wl[338].w[24]" 0.99992355390932175;
	setAttr -s 5 ".wl[339].w";
	setAttr ".wl[339].w[6]" 4.3127833726338821e-007;
	setAttr ".wl[339].w[12]" 3.839003665960527e-006;
	setAttr ".wl[339].w[13]" 3.5890544458135098e-006;
	setAttr ".wl[339].w[23]" 6.7202597186310684e-007;
	setAttr ".wl[339].w[24]" 0.99999146863757904;
	setAttr -s 5 ".wl[340].w";
	setAttr ".wl[340].w[6]" 0.00013663905629536372;
	setAttr ".wl[340].w[12]" 0.01194698641534319;
	setAttr ".wl[340].w[13]" 0.010192043819732332;
	setAttr ".wl[340].w[23]" 0.00011484151543677083;
	setAttr ".wl[340].w[24]" 0.97760948919319246;
	setAttr -s 5 ".wl[341].w";
	setAttr ".wl[341].w[9]" 0.0063463322714981439;
	setAttr ".wl[341].w[10]" 0.042925230380410254;
	setAttr ".wl[341].w[11]" 0.022350111053195301;
	setAttr ".wl[341].w[22]" 0.49557325618800885;
	setAttr ".wl[341].w[23]" 0.43280507010688757;
	setAttr -s 5 ".wl[342].w";
	setAttr ".wl[342].w[10]" 0.00021893287685769011;
	setAttr ".wl[342].w[11]" 0.00031980228104464751;
	setAttr ".wl[342].w[22]" 0.21253950496480306;
	setAttr ".wl[342].w[23]" 0.78340656090939165;
	setAttr ".wl[342].w[24]" 0.0035151989679029477;
	setAttr -s 5 ".wl[343].w";
	setAttr ".wl[343].w[10]" 0.04758281446304282;
	setAttr ".wl[343].w[11]" 0.061775358909245168;
	setAttr ".wl[343].w[22]" 0.32003402964570804;
	setAttr ".wl[343].w[23]" 0.54964716646104361;
	setAttr ".wl[343].w[24]" 0.020960630520960387;
	setAttr -s 5 ".wl[344].w";
	setAttr ".wl[344].w[10]" 0.0025749742307773901;
	setAttr ".wl[344].w[11]" 0.0071116224425783088;
	setAttr ".wl[344].w[22]" 0.071921628548116248;
	setAttr ".wl[344].w[23]" 0.81693607926337342;
	setAttr ".wl[344].w[24]" 0.10145569551515472;
	setAttr -s 5 ".wl[345].w";
	setAttr ".wl[345].w[9]" 0.012940594340688257;
	setAttr ".wl[345].w[10]" 0.21157647545408687;
	setAttr ".wl[345].w[11]" 0.23397438768038245;
	setAttr ".wl[345].w[18]" 0.27305263387465545;
	setAttr ".wl[345].w[19]" 0.26845590865018698;
	setAttr -s 5 ".wl[346].w";
	setAttr ".wl[346].w[9]" 0.011623424808976606;
	setAttr ".wl[346].w[10]" 0.50039314853798766;
	setAttr ".wl[346].w[11]" 0.3457892900699423;
	setAttr ".wl[346].w[18]" 0.087679827777177768;
	setAttr ".wl[346].w[19]" 0.054514308805915526;
	setAttr -s 5 ".wl[347].w";
	setAttr ".wl[347].w[11]" 0.28280256260569175;
	setAttr ".wl[347].w[12]" 0.089786833645889463;
	setAttr ".wl[347].w[18]" 0.11531173740826503;
	setAttr ".wl[347].w[19]" 0.40584290243305321;
	setAttr ".wl[347].w[20]" 0.1062559639071007;
	setAttr -s 5 ".wl[348].w";
	setAttr ".wl[348].w[6]" 0.00012350794886574847;
	setAttr ".wl[348].w[12]" 0.12636281186181678;
	setAttr ".wl[348].w[13]" 0.11898919109608966;
	setAttr ".wl[348].w[20]" 0.40410913856238379;
	setAttr ".wl[348].w[21]" 0.35041535053084422;
	setAttr -s 5 ".wl[349].w";
	setAttr ".wl[349].w[12]" 0.31504899457302499;
	setAttr ".wl[349].w[13]" 0.14207554344310219;
	setAttr ".wl[349].w[19]" 0.0031696321627745377;
	setAttr ".wl[349].w[20]" 0.41006623364307038;
	setAttr ".wl[349].w[21]" 0.12963959617802784;
	setAttr -s 5 ".wl[350].w";
	setAttr ".wl[350].w[6]" 0.0013140287689965774;
	setAttr ".wl[350].w[12]" 0.14876164431878228;
	setAttr ".wl[350].w[13]" 0.079255841250872913;
	setAttr ".wl[350].w[20]" 0.44919663755064693;
	setAttr ".wl[350].w[21]" 0.32147184811070129;
	setAttr -s 5 ".wl[351].w";
	setAttr ".wl[351].w[6]" 0.063618499038288853;
	setAttr ".wl[351].w[7]" 0.01449386903697459;
	setAttr ".wl[351].w[12]" 0.18934764072491089;
	setAttr ".wl[351].w[20]" 0.68999694639580722;
	setAttr ".wl[351].w[21]" 0.042543044804018292;
	setAttr -s 5 ".wl[352].w";
	setAttr ".wl[352].w[4]" 0.070725162644142719;
	setAttr ".wl[352].w[5]" 0.079063411010030824;
	setAttr ".wl[352].w[6]" 0.42081882184320379;
	setAttr ".wl[352].w[12]" 0.040970254571543879;
	setAttr ".wl[352].w[20]" 0.38842234993107883;
	setAttr -s 5 ".wl[353].w";
	setAttr ".wl[353].w[1]" 0.41707501184928436;
	setAttr ".wl[353].w[4]" 0.067292456416667798;
	setAttr ".wl[353].w[5]" 0.082447347057513803;
	setAttr ".wl[353].w[6]" 0.095709690982424239;
	setAttr ".wl[353].w[48]" 0.33747549369410962;
	setAttr -s 5 ".wl[354].w";
	setAttr ".wl[354].w[1]" 0.20401438073543449;
	setAttr ".wl[354].w[44]" 0.0066806154435908819;
	setAttr ".wl[354].w[48]" 0.54273867191456837;
	setAttr ".wl[354].w[49]" 0.20894267544119607;
	setAttr ".wl[354].w[50]" 0.037623656465210126;
	setAttr -s 5 ".wl[355].w";
	setAttr ".wl[355].w[1]" 0.0001449280467264667;
	setAttr ".wl[355].w[48]" 0.023092861886163874;
	setAttr ".wl[355].w[49]" 0.15957059632121931;
	setAttr ".wl[355].w[50]" 0.55032335039439073;
	setAttr ".wl[355].w[51]" 0.2668682633514996;
	setAttr -s 5 ".wl[356].w";
	setAttr ".wl[356].w[1]" 0.00026280203791405923;
	setAttr ".wl[356].w[48]" 0.018674703450498216;
	setAttr ".wl[356].w[49]" 0.15351245121506177;
	setAttr ".wl[356].w[50]" 0.5338642777096253;
	setAttr ".wl[356].w[51]" 0.29368576558690074;
	setAttr -s 5 ".wl[357].w";
	setAttr ".wl[357].w[1]" 0.0026088647347722906;
	setAttr ".wl[357].w[48]" 0.037712425966905966;
	setAttr ".wl[357].w[49]" 0.15500701792676613;
	setAttr ".wl[357].w[50]" 0.54612606564398081;
	setAttr ".wl[357].w[51]" 0.25854562572757472;
	setAttr -s 5 ".wl[358].w";
	setAttr ".wl[358].w[1]" 0.0042891740498102338;
	setAttr ".wl[358].w[48]" 0.062439142796341114;
	setAttr ".wl[358].w[49]" 0.18308064912284588;
	setAttr ".wl[358].w[50]" 0.48803420875292042;
	setAttr ".wl[358].w[51]" 0.26215682527808248;
	setAttr -s 5 ".wl[359].w";
	setAttr ".wl[359].w[1]" 0.37579621083512454;
	setAttr ".wl[359].w[4]" 0.024347300763538977;
	setAttr ".wl[359].w[27]" 0.024347300763538977;
	setAttr ".wl[359].w[28]" 0.53384945530028494;
	setAttr ".wl[359].w[29]" 0.041659732337512655;
	setAttr -s 5 ".wl[360].w";
	setAttr ".wl[360].w[1]" 0.39516524344658072;
	setAttr ".wl[360].w[4]" 0.1191584406656894;
	setAttr ".wl[360].w[6]" 0.040861977616757396;
	setAttr ".wl[360].w[27]" 0.11791483543929182;
	setAttr ".wl[360].w[28]" 0.32689950283168068;
	setAttr -s 5 ".wl[361].w";
	setAttr ".wl[361].w[1]" 0.22058074558179697;
	setAttr ".wl[361].w[28]" 0.53840309613052473;
	setAttr ".wl[361].w[29]" 0.19787336895492633;
	setAttr ".wl[361].w[30]" 0.039256094329157505;
	setAttr ".wl[361].w[31]" 0.0038866950035944749;
	setAttr -s 5 ".wl[362].w";
	setAttr ".wl[362].w[1]" 0.098716646111381048;
	setAttr ".wl[362].w[4]" 0.26760238567027667;
	setAttr ".wl[362].w[6]" 0.28214147832729292;
	setAttr ".wl[362].w[27]" 0.26665118640377317;
	setAttr ".wl[362].w[28]" 0.084888303487275968;
	setAttr -s 5 ".wl[363].w";
	setAttr ".wl[363].w[4]" 0.062658018863307158;
	setAttr ".wl[363].w[6]" 0.51136888574288997;
	setAttr ".wl[363].w[12]" 0.18856123184390214;
	setAttr ".wl[363].w[24]" 0.1780823824476874;
	setAttr ".wl[363].w[27]" 0.059329481102213158;
	setAttr -s 5 ".wl[364].w";
	setAttr ".wl[364].w[1]" 0.14372110458943071;
	setAttr ".wl[364].w[4]" 0.29179314504081072;
	setAttr ".wl[364].w[6]" 0.19328931760378243;
	setAttr ".wl[364].w[27]" 0.27895647581915201;
	setAttr ".wl[364].w[28]" 0.092239956946824075;
	setAttr -s 5 ".wl[365].w";
	setAttr ".wl[365].w[4]" 0.012393355888631807;
	setAttr ".wl[365].w[6]" 0.28024194600994434;
	setAttr ".wl[365].w[7]" 0.038232248826097499;
	setAttr ".wl[365].w[12]" 0.50259145110075831;
	setAttr ".wl[365].w[24]" 0.16654099817456813;
	setAttr -s 5 ".wl[366].w";
	setAttr ".wl[366].w[6]" 0.072532401810749617;
	setAttr ".wl[366].w[7]" 0.020146867041397693;
	setAttr ".wl[366].w[12]" 0.23267901341270178;
	setAttr ".wl[366].w[13]" 0.038704840215020062;
	setAttr ".wl[366].w[24]" 0.63593687752013073;
	setAttr -s 5 ".wl[367].w";
	setAttr ".wl[367].w[6]" 0.011357586649524527;
	setAttr ".wl[367].w[7]" 0.0058323102052412869;
	setAttr ".wl[367].w[12]" 0.43663280034095692;
	setAttr ".wl[367].w[13]" 0.17687198513753727;
	setAttr ".wl[367].w[24]" 0.36930531766674002;
	setAttr -s 5 ".wl[368].w";
	setAttr ".wl[368].w[6]" 0.0013613164486543554;
	setAttr ".wl[368].w[7]" 0.00078899389304331821;
	setAttr ".wl[368].w[12]" 0.19310707919971323;
	setAttr ".wl[368].w[13]" 0.13558210902414219;
	setAttr ".wl[368].w[24]" 0.66916050143444683;
	setAttr -s 5 ".wl[369].w";
	setAttr ".wl[369].w[6]" 0.00018254414678222351;
	setAttr ".wl[369].w[7]" 0.00012868158632090625;
	setAttr ".wl[369].w[12]" 0.40328285478573239;
	setAttr ".wl[369].w[13]" 0.3963656799410244;
	setAttr ".wl[369].w[24]" 0.20004023954014019;
	setAttr -s 5 ".wl[370].w";
	setAttr ".wl[370].w[6]" 0.00027104716181907096;
	setAttr ".wl[370].w[7]" 0.00019380865178323368;
	setAttr ".wl[370].w[12]" 0.15315850584596644;
	setAttr ".wl[370].w[13]" 0.14621272269088453;
	setAttr ".wl[370].w[24]" 0.70016391564954672;
	setAttr -s 5 ".wl[371].w";
	setAttr ".wl[371].w[6]" 0.00099223281872059524;
	setAttr ".wl[371].w[12]" 0.046043193468504905;
	setAttr ".wl[371].w[13]" 0.028144779356184306;
	setAttr ".wl[371].w[23]" 0.0015040560112594304;
	setAttr ".wl[371].w[24]" 0.92331573834533065;
	setAttr -s 5 ".wl[372].w";
	setAttr ".wl[372].w[6]" 0.00075140986270407547;
	setAttr ".wl[372].w[12]" 0.30931903711371056;
	setAttr ".wl[372].w[13]" 0.23506013030179432;
	setAttr ".wl[372].w[23]" 0.00056327777072548402;
	setAttr ".wl[372].w[24]" 0.45430614495106564;
	setAttr -s 5 ".wl[373].w";
	setAttr ".wl[373].w[9]" 0.0091890509876924858;
	setAttr ".wl[373].w[10]" 0.29668345540071034;
	setAttr ".wl[373].w[11]" 0.29540658295772726;
	setAttr ".wl[373].w[22]" 0.20235568688521874;
	setAttr ".wl[373].w[23]" 0.19636522376865112;
	setAttr -s 5 ".wl[374].w";
	setAttr ".wl[374].w[10]" 0.15704679851005371;
	setAttr ".wl[374].w[11]" 0.48821099310322613;
	setAttr ".wl[374].w[12]" 0.060136622258016602;
	setAttr ".wl[374].w[22]" 0.10799312080244525;
	setAttr ".wl[374].w[23]" 0.18661246532625833;
	setAttr -s 5 ".wl[375].w";
	setAttr ".wl[375].w[11]" 0.17668328832628191;
	setAttr ".wl[375].w[12]" 0.06805837440840197;
	setAttr ".wl[375].w[22]" 0.11147428538194894;
	setAttr ".wl[375].w[23]" 0.51134005919695968;
	setAttr ".wl[375].w[24]" 0.13244399268640741;
	setAttr -s 5 ".wl[376].w";
	setAttr ".wl[376].w[10]" 0.050230865561214443;
	setAttr ".wl[376].w[11]" 0.93642877901398291;
	setAttr ".wl[376].w[12]" 0.013320573059530386;
	setAttr ".wl[376].w[18]" 8.887607665560909e-006;
	setAttr ".wl[376].w[19]" 1.0894757606819105e-005;
	setAttr -s 5 ".wl[377].w";
	setAttr ".wl[377].w[10]" 0.30339513643705796;
	setAttr ".wl[377].w[11]" 0.6954708357456294;
	setAttr ".wl[377].w[12]" 0.00072885519849039127;
	setAttr ".wl[377].w[22]" 0.00022708895693507815;
	setAttr ".wl[377].w[23]" 0.00017808366188704639;
	setAttr -s 5 ".wl[378].w";
	setAttr ".wl[378].w[10]" 0.022992610523055457;
	setAttr ".wl[378].w[11]" 0.85022293499752666;
	setAttr ".wl[378].w[12]" 0.12572537900521077;
	setAttr ".wl[378].w[22]" 0.00036266595754421132;
	setAttr ".wl[378].w[23]" 0.00069640951666287486;
	setAttr -s 5 ".wl[379].w";
	setAttr ".wl[379].w[10]" 0.15752525972926804;
	setAttr ".wl[379].w[11]" 0.80913932470437744;
	setAttr ".wl[379].w[12]" 0.023676214090808476;
	setAttr ".wl[379].w[22]" 0.00448375509785398;
	setAttr ".wl[379].w[23]" 0.005175446377692172;
	setAttr -s 5 ".wl[380].w";
	setAttr ".wl[380].w[6]" 7.8477766895847726e-007;
	setAttr ".wl[380].w[11]" 6.8065475438060037e-007;
	setAttr ".wl[380].w[12]" 0.54272489280067759;
	setAttr ".wl[380].w[13]" 0.45721022285756507;
	setAttr ".wl[380].w[24]" 6.3418909333890991e-005;
	setAttr -s 5 ".wl[381].w";
	setAttr ".wl[381].w[6]" 1.4312248922274127e-007;
	setAttr ".wl[381].w[11]" 1.8380664823839747e-007;
	setAttr ".wl[381].w[12]" 0.72543458947747363;
	setAttr ".wl[381].w[13]" 0.27456376102107471;
	setAttr ".wl[381].w[24]" 1.3225723142087868e-006;
	setAttr -s 5 ".wl[382].w";
	setAttr ".wl[382].w[6]" 6.8824960046147212e-005;
	setAttr ".wl[382].w[7]" 4.4877569197150375e-005;
	setAttr ".wl[382].w[12]" 0.57024298748966928;
	setAttr ".wl[382].w[13]" 0.41792709665066713;
	setAttr ".wl[382].w[24]" 0.011716213330420293;
	setAttr -s 5 ".wl[383].w";
	setAttr ".wl[383].w[6]" 9.2661777790225237e-005;
	setAttr ".wl[383].w[11]" 0.00019066625407596749;
	setAttr ".wl[383].w[12]" 0.85680615355646461;
	setAttr ".wl[383].w[13]" 0.14231904116488539;
	setAttr ".wl[383].w[24]" 0.00059147724678380138;
	setAttr -s 5 ".wl[384].w";
	setAttr ".wl[384].w[6]" 2.6241407332923816e-006;
	setAttr ".wl[384].w[11]" 1.7671688008718319e-006;
	setAttr ".wl[384].w[12]" 0.62628029508735727;
	setAttr ".wl[384].w[13]" 0.37364480857780275;
	setAttr ".wl[384].w[24]" 7.050502530579029e-005;
	setAttr -s 5 ".wl[385].w";
	setAttr ".wl[385].w[12]" 0.51477290708782564;
	setAttr ".wl[385].w[13]" 0.48522411137620014;
	setAttr ".wl[385].w[20]" 1.2599602045866688e-006;
	setAttr ".wl[385].w[21]" 1.23129215745228e-006;
	setAttr ".wl[385].w[24]" 4.9028361230057085e-007;
	setAttr -s 5 ".wl[386].w";
	setAttr ".wl[386].w[6]" 2.6980652972079028e-005;
	setAttr ".wl[386].w[7]" 1.7405331701755703e-005;
	setAttr ".wl[386].w[12]" 0.52680718601544352;
	setAttr ".wl[386].w[13]" 0.46909965910456047;
	setAttr ".wl[386].w[24]" 0.0040487688953221995;
	setAttr -s 5 ".wl[387].w";
	setAttr ".wl[387].w[5]" 0.00044626305247197058;
	setAttr ".wl[387].w[6]" 0.013708315783239907;
	setAttr ".wl[387].w[7]" 0.00091680381605140744;
	setAttr ".wl[387].w[12]" 0.96121839369594197;
	setAttr ".wl[387].w[13]" 0.023710223652294672;
	setAttr -s 5 ".wl[388].w";
	setAttr ".wl[388].w[11]" 1.458852843844533e-006;
	setAttr ".wl[388].w[12]" 0.79244031088036226;
	setAttr ".wl[388].w[13]" 0.2075533268252833;
	setAttr ".wl[388].w[20]" 2.7532482632156953e-006;
	setAttr ".wl[388].w[21]" 2.1501932474664805e-006;
	setAttr -s 5 ".wl[389].w";
	setAttr ".wl[389].w[6]" 0.00068826630572293545;
	setAttr ".wl[389].w[7]" 0.0003586161554650779;
	setAttr ".wl[389].w[12]" 0.87183612970501678;
	setAttr ".wl[389].w[13]" 0.12273812924950459;
	setAttr ".wl[389].w[24]" 0.0043788585842906508;
	setAttr -s 5 ".wl[390].w";
	setAttr ".wl[390].w[4]" 0.086279392303300853;
	setAttr ".wl[390].w[5]" 0.034418545287397698;
	setAttr ".wl[390].w[6]" 0.24127922806727284;
	setAttr ".wl[390].w[12]" 0.56142681994585975;
	setAttr ".wl[390].w[27]" 0.076596014396168977;
	setAttr -s 5 ".wl[391].w";
	setAttr ".wl[391].w[4]" 0.0035301845117544652;
	setAttr ".wl[391].w[5]" 0.0027649151120272761;
	setAttr ".wl[391].w[6]" 0.051451870771344291;
	setAttr ".wl[391].w[7]" 0.0033906310140994636;
	setAttr ".wl[391].w[12]" 0.93886239859077458;
	setAttr -s 5 ".wl[392].w";
	setAttr ".wl[392].w[4]" 0.015963321862446676;
	setAttr ".wl[392].w[6]" 0.15650725683800562;
	setAttr ".wl[392].w[7]" 0.014883651823767231;
	setAttr ".wl[392].w[12]" 0.7987872866868343;
	setAttr ".wl[392].w[27]" 0.013858482788946013;
	setAttr -s 5 ".wl[393].w";
	setAttr ".wl[393].w[1]" 0.39915025670994941;
	setAttr ".wl[393].w[4]" 0.11630936738415969;
	setAttr ".wl[393].w[27]" 0.10556599838251117;
	setAttr ".wl[393].w[28]" 0.3026488752526188;
	setAttr ".wl[393].w[48]" 0.076325502270760806;
	setAttr -s 5 ".wl[394].w";
	setAttr ".wl[394].w[1]" 0.13622948223304826;
	setAttr ".wl[394].w[4]" 0.20646826623525927;
	setAttr ".wl[394].w[6]" 0.18117129675586385;
	setAttr ".wl[394].w[12]" 0.29205871152002516;
	setAttr ".wl[394].w[27]" 0.18407224325580357;
	setAttr -s 5 ".wl[395].w";
	setAttr ".wl[395].w[1]" 0.16389227979378637;
	setAttr ".wl[395].w[4]" 0.25426870220700082;
	setAttr ".wl[395].w[6]" 0.21492479021003158;
	setAttr ".wl[395].w[27]" 0.24640583774540295;
	setAttr ".wl[395].w[28]" 0.12050839004377838;
	setAttr -s 5 ".wl[396].w";
	setAttr ".wl[396].w[1]" 0.44788653217653251;
	setAttr ".wl[396].w[2]" 0.0037180567106661886;
	setAttr ".wl[396].w[28]" 0.4358406265694697;
	setAttr ".wl[396].w[29]" 0.024569025366310629;
	setAttr ".wl[396].w[48]" 0.087985759177021006;
	setAttr -s 5 ".wl[397].w";
	setAttr ".wl[397].w[1]" 0.45802614541718989;
	setAttr ".wl[397].w[2]" 0.020563902611990686;
	setAttr ".wl[397].w[4]" 0.021243458979217884;
	setAttr ".wl[397].w[28]" 0.21929552213670295;
	setAttr ".wl[397].w[48]" 0.28087097085489865;
	setAttr -s 5 ".wl[398].w";
	setAttr ".wl[398].w[1]" 0.43207960279798197;
	setAttr ".wl[398].w[2]" 0.022074440658710007;
	setAttr ".wl[398].w[4]" 0.020964122431722389;
	setAttr ".wl[398].w[28]" 0.48703316441064587;
	setAttr ".wl[398].w[48]" 0.037848669700939863;
	setAttr -s 5 ".wl[399].w";
	setAttr ".wl[399].w[0]" 0.028933634406009386;
	setAttr ".wl[399].w[1]" 0.79886687985225391;
	setAttr ".wl[399].w[28]" 0.14133462220119608;
	setAttr ".wl[399].w[36]" 0.011055968900573528;
	setAttr ".wl[399].w[48]" 0.019808894639967198;
	setAttr -s 5 ".wl[400].w";
	setAttr ".wl[400].w[0]" 0.0051152964325231537;
	setAttr ".wl[400].w[1]" 0.56323558456867773;
	setAttr ".wl[400].w[28]" 0.20614068542975933;
	setAttr ".wl[400].w[36]" 0.00098454196198943344;
	setAttr ".wl[400].w[48]" 0.22452389160705052;
	setAttr -s 5 ".wl[401].w";
	setAttr ".wl[401].w[1]" 0.32713385349853435;
	setAttr ".wl[401].w[28]" 0.48473540858026631;
	setAttr ".wl[401].w[29]" 0.14381846769278495;
	setAttr ".wl[401].w[30]" 0.031558581359660401;
	setAttr ".wl[401].w[48]" 0.012753688868753981;
	setAttr -s 5 ".wl[402].w";
	setAttr ".wl[402].w[0]" 0.17358021860591821;
	setAttr ".wl[402].w[1]" 0.66579365385571077;
	setAttr ".wl[402].w[28]" 0.0092173588513364754;
	setAttr ".wl[402].w[36]" 0.13374215067206674;
	setAttr ".wl[402].w[37]" 0.017666618014967779;
	setAttr -s 5 ".wl[403].w";
	setAttr ".wl[403].w[0]" 0.11090488129852222;
	setAttr ".wl[403].w[1]" 0.81191074153944431;
	setAttr ".wl[403].w[28]" 0.032942027693478475;
	setAttr ".wl[403].w[36]" 0.018854588491399957;
	setAttr ".wl[403].w[48]" 0.025387760977155196;
	setAttr -s 5 ".wl[404].w";
	setAttr ".wl[404].w[0]" 0.035288784080838673;
	setAttr ".wl[404].w[1]" 0.76469459125394768;
	setAttr ".wl[404].w[28]" 0.090953419402356975;
	setAttr ".wl[404].w[36]" 0.1024562946460176;
	setAttr ".wl[404].w[37]" 0.0066069106168391541;
	setAttr -s 5 ".wl[405].w";
	setAttr ".wl[405].w[9]" 0.0092711298166288092;
	setAttr ".wl[405].w[10]" 0.66506265009062637;
	setAttr ".wl[405].w[11]" 0.27200312635121765;
	setAttr ".wl[405].w[22]" 0.046749013094465164;
	setAttr ".wl[405].w[23]" 0.0069140806470619183;
	setAttr -s 5 ".wl[406].w";
	setAttr ".wl[406].w[8]" 0.015064160883457812;
	setAttr ".wl[406].w[9]" 0.12921508336908846;
	setAttr ".wl[406].w[10]" 0.66285442013110296;
	setAttr ".wl[406].w[18]" 0.11172674586305754;
	setAttr ".wl[406].w[22]" 0.081139589753293301;
	setAttr -s 5 ".wl[407].w";
	setAttr ".wl[407].w[9]" 0.021661684827853783;
	setAttr ".wl[407].w[10]" 0.50028611827202096;
	setAttr ".wl[407].w[11]" 0.15252948412333725;
	setAttr ".wl[407].w[22]" 0.26579327480915665;
	setAttr ".wl[407].w[23]" 0.059729437967631215;
	setAttr -s 5 ".wl[408].w";
	setAttr ".wl[408].w[8]" 0.023335290721436738;
	setAttr ".wl[408].w[9]" 0.18426601098067555;
	setAttr ".wl[408].w[10]" 0.40883535675788379;
	setAttr ".wl[408].w[18]" 0.017586922469610747;
	setAttr ".wl[408].w[22]" 0.36597641907039313;
	setAttr -s 5 ".wl[409].w";
	setAttr ".wl[409].w[9]" 0.0014943575206919513;
	setAttr ".wl[409].w[10]" 0.56257260022685762;
	setAttr ".wl[409].w[11]" 0.43265908307762008;
	setAttr ".wl[409].w[18]" 0.0016267848023435506;
	setAttr ".wl[409].w[22]" 0.001647174372486694;
	setAttr -s 5 ".wl[410].w";
	setAttr ".wl[410].w[9]" 0.0023868643083733432;
	setAttr ".wl[410].w[10]" 0.49221936482094092;
	setAttr ".wl[410].w[11]" 0.48364293855050167;
	setAttr ".wl[410].w[22]" 0.013941946676488575;
	setAttr ".wl[410].w[23]" 0.0078088856436954648;
	setAttr -s 5 ".wl[411].w";
	setAttr ".wl[411].w[10]" 0.33221431923703737;
	setAttr ".wl[411].w[11]" 0.61155482405910555;
	setAttr ".wl[411].w[12]" 0.0065697490556812579;
	setAttr ".wl[411].w[22]" 0.025267026236345726;
	setAttr ".wl[411].w[23]" 0.024394081411830214;
	setAttr -s 5 ".wl[412].w";
	setAttr ".wl[412].w[10]" 0.07307093956286595;
	setAttr ".wl[412].w[11]" 0.6140837913557361;
	setAttr ".wl[412].w[12]" 0.17101944024791099;
	setAttr ".wl[412].w[22]" 0.038976963712382379;
	setAttr ".wl[412].w[23]" 0.1028488651211045;
	setAttr -s 5 ".wl[413].w";
	setAttr ".wl[413].w[6]" 9.384880180476432e-005;
	setAttr ".wl[413].w[7]" 6.6897819401878116e-005;
	setAttr ".wl[413].w[12]" 0.48269622110994459;
	setAttr ".wl[413].w[13]" 0.45548725427221021;
	setAttr ".wl[413].w[24]" 0.061655777996638676;
	setAttr -s 5 ".wl[414].w";
	setAttr ".wl[414].w[6]" 0.0023189957569092045;
	setAttr ".wl[414].w[12]" 0.51215328416146477;
	setAttr ".wl[414].w[13]" 0.21392478005395255;
	setAttr ".wl[414].w[23]" 0.0030794361012197301;
	setAttr ".wl[414].w[24]" 0.26852350392645374;
	setAttr -s 5 ".wl[415].w";
	setAttr ".wl[415].w[6]" 0.0011451288081900256;
	setAttr ".wl[415].w[7]" 0.00063225902203908825;
	setAttr ".wl[415].w[12]" 0.54613041383980121;
	setAttr ".wl[415].w[13]" 0.38162272035585376;
	setAttr ".wl[415].w[24]" 0.070469477974115846;
	setAttr -s 5 ".wl[416].w";
	setAttr ".wl[416].w[6]" 0.08682795856237796;
	setAttr ".wl[416].w[7]" 0.017284825919712629;
	setAttr ".wl[416].w[12]" 0.79961417935678758;
	setAttr ".wl[416].w[13]" 0.031452374525835547;
	setAttr ".wl[416].w[24]" 0.064820661635286075;
	setAttr -s 5 ".wl[417].w";
	setAttr ".wl[417].w[4]" 0.16169460329141458;
	setAttr ".wl[417].w[5]" 0.033432638800932335;
	setAttr ".wl[417].w[6]" 0.38367828673520471;
	setAttr ".wl[417].w[12]" 0.2622716773814317;
	setAttr ".wl[417].w[27]" 0.15892279379101656;
	setAttr -s 5 ".wl[418].w";
	setAttr ".wl[418].w[1]" 0.35583625479381448;
	setAttr ".wl[418].w[2]" 0.03894882097390711;
	setAttr ".wl[418].w[4]" 0.14484337427400271;
	setAttr ".wl[418].w[27]" 0.14333557862312848;
	setAttr ".wl[418].w[28]" 0.31703597133514727;
	setAttr -s 5 ".wl[419].w";
	setAttr ".wl[419].w[1]" 0.13088663902700104;
	setAttr ".wl[419].w[28]" 0.49799846761016348;
	setAttr ".wl[419].w[29]" 0.29129380431508206;
	setAttr ".wl[419].w[30]" 0.066964053371460289;
	setAttr ".wl[419].w[31]" 0.012857035676293154;
	setAttr -s 5 ".wl[420].w";
	setAttr ".wl[420].w[1]" 0.0027118186956121442;
	setAttr ".wl[420].w[28]" 0.050601783482448939;
	setAttr ".wl[420].w[29]" 0.14165377287400557;
	setAttr ".wl[420].w[30]" 0.55821389341495298;
	setAttr ".wl[420].w[31]" 0.24681873153298045;
	setAttr -s 5 ".wl[421].w";
	setAttr ".wl[421].w[1]" 0.0046596554446009728;
	setAttr ".wl[421].w[28]" 0.068831908341587672;
	setAttr ".wl[421].w[29]" 0.17488976832134168;
	setAttr ".wl[421].w[30]" 0.4928699379510087;
	setAttr ".wl[421].w[31]" 0.25874872994146098;
	setAttr -s 5 ".wl[422].w";
	setAttr ".wl[422].w[1]" 0.00020923743521443939;
	setAttr ".wl[422].w[28]" 0.028116618336856625;
	setAttr ".wl[422].w[29]" 0.15574904561764605;
	setAttr ".wl[422].w[30]" 0.56721927151576323;
	setAttr ".wl[422].w[31]" 0.24870582709451972;
	setAttr -s 5 ".wl[423].w";
	setAttr ".wl[423].w[1]" 0.00015582053592381014;
	setAttr ".wl[423].w[28]" 0.018011137097091168;
	setAttr ".wl[423].w[29]" 0.15709886241565596;
	setAttr ".wl[423].w[30]" 0.5439417562642388;
	setAttr ".wl[423].w[31]" 0.28079242368709018;
	setAttr -s 5 ".wl[424].w";
	setAttr ".wl[424].w[1]" 0.32974082956261741;
	setAttr ".wl[424].w[28]" 0.072412386222597727;
	setAttr ".wl[424].w[36]" 0.41017924532741262;
	setAttr ".wl[424].w[37]" 0.14933473106828338;
	setAttr ".wl[424].w[38]" 0.038332807819088786;
	setAttr -s 5 ".wl[425].w";
	setAttr ".wl[425].w[1]" 0.36395422395974314;
	setAttr ".wl[425].w[28]" 0.40834046283000991;
	setAttr ".wl[425].w[29]" 0.14183059167219325;
	setAttr ".wl[425].w[30]" 0.036252188207956844;
	setAttr ".wl[425].w[36]" 0.049622533330096863;
	setAttr -s 5 ".wl[426].w";
	setAttr ".wl[426].w[9]" 0.013486571332063619;
	setAttr ".wl[426].w[10]" 0.38284213274860951;
	setAttr ".wl[426].w[11]" 0.24135233042358595;
	setAttr ".wl[426].w[22]" 0.22775899903151772;
	setAttr ".wl[426].w[23]" 0.13455996646422308;
	setAttr -s 5 ".wl[427].w";
	setAttr ".wl[427].w[9]" 0.010899632844959125;
	setAttr ".wl[427].w[10]" 0.051835999997014486;
	setAttr ".wl[427].w[11]" 0.0081080072592761548;
	setAttr ".wl[427].w[22]" 0.69926835769158013;
	setAttr ".wl[427].w[23]" 0.22988800220717018;
	setAttr -s 5 ".wl[428].w";
	setAttr ".wl[428].w[10]" 0.34978950606785408;
	setAttr ".wl[428].w[11]" 0.64530282663301375;
	setAttr ".wl[428].w[12]" 0.0022484290396362584;
	setAttr ".wl[428].w[18]" 0.0014905701416797576;
	setAttr ".wl[428].w[19]" 0.0011686681178162482;
	setAttr -s 5 ".wl[429].w";
	setAttr ".wl[429].w[10]" 0.032013023478573731;
	setAttr ".wl[429].w[11]" 0.89996109402483537;
	setAttr ".wl[429].w[12]" 0.066737911339812425;
	setAttr ".wl[429].w[18]" 0.00040672941757709203;
	setAttr ".wl[429].w[19]" 0.00088124173920148686;
	setAttr -s 5 ".wl[430].w";
	setAttr ".wl[430].w[11]" 5.5239835307954577e-007;
	setAttr ".wl[430].w[12]" 0.54163282849941796;
	setAttr ".wl[430].w[13]" 0.45829394139848817;
	setAttr ".wl[430].w[20]" 3.6737619733903156e-005;
	setAttr ".wl[430].w[21]" 3.5940084006823387e-005;
	setAttr -s 5 ".wl[431].w";
	setAttr ".wl[431].w[11]" 2.9288877162129587e-007;
	setAttr ".wl[431].w[12]" 0.89020852928514504;
	setAttr ".wl[431].w[13]" 0.10978933101250123;
	setAttr ".wl[431].w[20]" 1.1197066943712081e-006;
	setAttr ".wl[431].w[21]" 7.2710688771045406e-007;
	setAttr -s 5 ".wl[432].w";
	setAttr ".wl[432].w[6]" 3.7761819149675143e-006;
	setAttr ".wl[432].w[12]" 0.63397872646091114;
	setAttr ".wl[432].w[13]" 0.36544362925635365;
	setAttr ".wl[432].w[20]" 0.00032057916783701006;
	setAttr ".wl[432].w[21]" 0.00025328893298312858;
	setAttr -s 5 ".wl[433].w";
	setAttr ".wl[433].w[6]" 0.011569089354978081;
	setAttr ".wl[433].w[7]" 0.00089254207882601166;
	setAttr ".wl[433].w[12]" 0.96049210232599436;
	setAttr ".wl[433].w[13]" 0.026523823106150389;
	setAttr ".wl[433].w[20]" 0.0005224431340512041;
	setAttr -s 5 ".wl[434].w";
	setAttr ".wl[434].w[4]" 0.084693843090858603;
	setAttr ".wl[434].w[5]" 0.035142952674396419;
	setAttr ".wl[434].w[6]" 0.18623498874685426;
	setAttr ".wl[434].w[12]" 0.61975351539607049;
	setAttr ".wl[434].w[27]" 0.074174700091820187;
	setAttr -s 5 ".wl[435].w";
	setAttr ".wl[435].w[1]" 0.40884067511952288;
	setAttr ".wl[435].w[4]" 0.096448186797893368;
	setAttr ".wl[435].w[27]" 0.086101802611095637;
	setAttr ".wl[435].w[28]" 0.10987261491349173;
	setAttr ".wl[435].w[48]" 0.29873672055799649;
	setAttr -s 5 ".wl[436].w";
	setAttr ".wl[436].w[0]" 0.0016389354016012065;
	setAttr ".wl[436].w[1]" 0.44910608308908773;
	setAttr ".wl[436].w[28]" 0.066213702113269018;
	setAttr ".wl[436].w[48]" 0.45653060082424352;
	setAttr ".wl[436].w[49]" 0.026510678571798521;
	setAttr -s 5 ".wl[437].w";
	setAttr ".wl[437].w[0]" 0.037216258110474458;
	setAttr ".wl[437].w[1]" 0.78409517344029955;
	setAttr ".wl[437].w[28]" 0.025086268482938216;
	setAttr ".wl[437].w[44]" 0.016983072093868797;
	setAttr ".wl[437].w[48]" 0.13661922787241892;
	setAttr -s 5 ".wl[438].w";
	setAttr ".wl[438].w[1]" 0.31700650675574332;
	setAttr ".wl[438].w[28]" 0.0091845332566584861;
	setAttr ".wl[438].w[48]" 0.47653515256568074;
	setAttr ".wl[438].w[49]" 0.16654141476511089;
	setAttr ".wl[438].w[50]" 0.030732392656806624;
	setAttr -s 5 ".wl[439].w";
	setAttr ".wl[439].w[0]" 0.15353371402402058;
	setAttr ".wl[439].w[1]" 0.61461819560394393;
	setAttr ".wl[439].w[44]" 0.19396709409165261;
	setAttr ".wl[439].w[45]" 0.026833628285646244;
	setAttr ".wl[439].w[48]" 0.011047367994736519;
	setAttr -s 5 ".wl[440].w";
	setAttr ".wl[440].w[9]" 0.026852034480555433;
	setAttr ".wl[440].w[10]" 0.62050236535435432;
	setAttr ".wl[440].w[11]" 0.14715731287698527;
	setAttr ".wl[440].w[18]" 0.16867444301877041;
	setAttr ".wl[440].w[19]" 0.036813844269334484;
	setAttr -s 5 ".wl[441].w";
	setAttr ".wl[441].w[8]" 0.021376048071572305;
	setAttr ".wl[441].w[9]" 0.20398710320321142;
	setAttr ".wl[441].w[10]" 0.35232450080803407;
	setAttr ".wl[441].w[14]" 0.018321615679916404;
	setAttr ".wl[441].w[18]" 0.40399073223726562;
	setAttr -s 5 ".wl[442].w";
	setAttr ".wl[442].w[10]" 0.023460887800532224;
	setAttr ".wl[442].w[11]" 0.40952101433232885;
	setAttr ".wl[442].w[12]" 0.33669190066315274;
	setAttr ".wl[442].w[19]" 0.12513077487414853;
	setAttr ".wl[442].w[20]" 0.10519542232983764;
	setAttr -s 5 ".wl[443].w";
	setAttr ".wl[443].w[11]" 0.16505192758668069;
	setAttr ".wl[443].w[12]" 0.22343567793539504;
	setAttr ".wl[443].w[18]" 0.0095951834795524119;
	setAttr ".wl[443].w[19]" 0.26660757430331838;
	setAttr ".wl[443].w[20]" 0.33530963669505348;
	setAttr -s 5 ".wl[444].w";
	setAttr ".wl[444].w[11]" 0.11780611859968727;
	setAttr ".wl[444].w[12]" 0.082062557221565677;
	setAttr ".wl[444].w[18]" 0.0346772164887846;
	setAttr ".wl[444].w[19]" 0.47936393828842272;
	setAttr ".wl[444].w[20]" 0.28609016940153986;
	setAttr -s 5 ".wl[445].w";
	setAttr ".wl[445].w[7]" 0.0013823439231886842;
	setAttr ".wl[445].w[11]" 0.004874162770520927;
	setAttr ".wl[445].w[12]" 0.0071924031988939447;
	setAttr ".wl[445].w[19]" 0.36288926008733458;
	setAttr ".wl[445].w[20]" 0.62366183002006192;
	setAttr -s 5 ".wl[446].w";
	setAttr ".wl[446].w[7]" 0.00016530354107634649;
	setAttr ".wl[446].w[11]" 0.00021291486510674433;
	setAttr ".wl[446].w[18]" 0.0098156028560557902;
	setAttr ".wl[446].w[19]" 0.73220927682006354;
	setAttr ".wl[446].w[20]" 0.25759690191769752;
	setAttr -s 5 ".wl[447].w";
	setAttr ".wl[447].w[11]" 0.013985524611877005;
	setAttr ".wl[447].w[12]" 0.0088599080533643612;
	setAttr ".wl[447].w[22]" 0.029422794212110987;
	setAttr ".wl[447].w[23]" 0.65708392957110884;
	setAttr ".wl[447].w[24]" 0.29064784355153878;
	setAttr -s 5 ".wl[448].w";
	setAttr ".wl[448].w[11]" 5.4380103360254083e-005;
	setAttr ".wl[448].w[12]" 5.9612013378312995e-005;
	setAttr ".wl[448].w[22]" 0.0002531978156747506;
	setAttr ".wl[448].w[23]" 0.46325091253784495;
	setAttr ".wl[448].w[24]" 0.53638189752974175;
	setAttr -s 5 ".wl[449].w";
	setAttr ".wl[449].w[7]" 1.2144475153254435e-005;
	setAttr ".wl[449].w[8]" 1.1607480942382539e-005;
	setAttr ".wl[449].w[22]" 0.0055889714049697304;
	setAttr ".wl[449].w[23]" 0.74630540365642395;
	setAttr ".wl[449].w[24]" 0.24808187298251072;
	setAttr -s 5 ".wl[450].w";
	setAttr ".wl[450].w[11]" 0.23120756500373574;
	setAttr ".wl[450].w[12]" 0.17766945916204499;
	setAttr ".wl[450].w[22]" 0.042149635995675387;
	setAttr ".wl[450].w[23]" 0.35586708861777305;
	setAttr ".wl[450].w[24]" 0.19310625122077091;
	setAttr -s 5 ".wl[451].w";
	setAttr ".wl[451].w[11]" 0.026529575099000214;
	setAttr ".wl[451].w[12]" 0.031183000067089697;
	setAttr ".wl[451].w[22]" 0.0079372910507554337;
	setAttr ".wl[451].w[23]" 0.39872217357638146;
	setAttr ".wl[451].w[24]" 0.53562796020677317;
	setAttr -s 5 ".wl[452].w";
	setAttr ".wl[452].w[10]" 0.014428369769190265;
	setAttr ".wl[452].w[11]" 0.56375443120272617;
	setAttr ".wl[452].w[12]" 0.37692818079675711;
	setAttr ".wl[452].w[23]" 0.031138874727922854;
	setAttr ".wl[452].w[24]" 0.013750143503403709;
	setAttr -s 5 ".wl[453].w";
	setAttr ".wl[453].w[11]" 0.25540244879835505;
	setAttr ".wl[453].w[12]" 0.37234148101037651;
	setAttr ".wl[453].w[22]" 0.0097072974370971087;
	setAttr ".wl[453].w[23]" 0.16034518564597477;
	setAttr ".wl[453].w[24]" 0.2022035871081965;
	setAttr -s 5 ".wl[454].w";
	setAttr ".wl[454].w[10]" 0.0006256060880059;
	setAttr ".wl[454].w[11]" 0.63512922247201153;
	setAttr ".wl[454].w[12]" 0.36404775790052252;
	setAttr ".wl[454].w[19]" 8.9595493122720797e-005;
	setAttr ".wl[454].w[20]" 0.00010781804633724723;
	setAttr -s 5 ".wl[455].w";
	setAttr ".wl[455].w[7]" 0.0010082260726146243;
	setAttr ".wl[455].w[11]" 0.33550177686277205;
	setAttr ".wl[455].w[12]" 0.65577916063352004;
	setAttr ".wl[455].w[23]" 0.0041580648441666319;
	setAttr ".wl[455].w[24]" 0.0035527715869265748;
	setAttr -s 5 ".wl[456].w";
	setAttr ".wl[456].w[10]" 0.017532844722895586;
	setAttr ".wl[456].w[11]" 0.56534587729068841;
	setAttr ".wl[456].w[12]" 0.38762102512776975;
	setAttr ".wl[456].w[19]" 0.017417012404935813;
	setAttr ".wl[456].w[20]" 0.012083240453710226;
	setAttr -s 5 ".wl[457].w";
	setAttr ".wl[457].w[10]" 0.00096152020989870865;
	setAttr ".wl[457].w[11]" 0.32270396972754889;
	setAttr ".wl[457].w[12]" 0.66838793443158229;
	setAttr ".wl[457].w[19]" 0.003394602356119943;
	setAttr ".wl[457].w[20]" 0.0045519732748502918;
	setAttr -s 5 ".wl[458].w";
	setAttr ".wl[458].w[10]" 0.0078787335963243464;
	setAttr ".wl[458].w[11]" 0.33339856244213201;
	setAttr ".wl[458].w[12]" 0.47341061896870101;
	setAttr ".wl[458].w[19]" 0.078194440338057336;
	setAttr ".wl[458].w[20]" 0.10711764465478525;
	setAttr -s 5 ".wl[459].w";
	setAttr ".wl[459].w[7]" 0.0082013351488502903;
	setAttr ".wl[459].w[11]" 0.18817860558037292;
	setAttr ".wl[459].w[12]" 0.43886492624573392;
	setAttr ".wl[459].w[19]" 0.1171042554093408;
	setAttr ".wl[459].w[20]" 0.24765087761570215;
	setAttr -s 5 ".wl[460].w";
	setAttr ".wl[460].w[11]" 0.019616823671049523;
	setAttr ".wl[460].w[12]" 0.15170103154609157;
	setAttr ".wl[460].w[19]" 0.074077225277388026;
	setAttr ".wl[460].w[20]" 0.73699216596393602;
	setAttr ".wl[460].w[21]" 0.017612753541534826;
	setAttr -s 5 ".wl[461].w";
	setAttr ".wl[461].w[6]" 0.0034276142476898077;
	setAttr ".wl[461].w[11]" 0.012668666969828178;
	setAttr ".wl[461].w[12]" 0.042468268762156321;
	setAttr ".wl[461].w[19]" 0.18975564424998156;
	setAttr ".wl[461].w[20]" 0.75167980577034421;
	setAttr -s 5 ".wl[462].w";
	setAttr ".wl[462].w[6]" 0.00021844469430243706;
	setAttr ".wl[462].w[12]" 0.00056722577325051557;
	setAttr ".wl[462].w[19]" 0.026464474462382946;
	setAttr ".wl[462].w[20]" 0.97212000323762182;
	setAttr ".wl[462].w[21]" 0.00062985183244228986;
	setAttr -s 5 ".wl[463].w";
	setAttr ".wl[463].w[6]" 2.3304754701927033e-005;
	setAttr ".wl[463].w[7]" 2.9145014576911719e-005;
	setAttr ".wl[463].w[12]" 1.0016634318014381e-005;
	setAttr ".wl[463].w[19]" 0.14264881797322279;
	setAttr ".wl[463].w[20]" 0.85728871562318043;
	setAttr -s 5 ".wl[464].w";
	setAttr ".wl[464].w[7]" 0.0014664136897894822;
	setAttr ".wl[464].w[11]" 0.0047493932959386592;
	setAttr ".wl[464].w[12]" 0.0079437585342323497;
	setAttr ".wl[464].w[23]" 0.17071500653747532;
	setAttr ".wl[464].w[24]" 0.81512542794256415;
	setAttr -s 5 ".wl[465].w";
	setAttr ".wl[465].w[6]" 0.00041113144345773024;
	setAttr ".wl[465].w[7]" 0.00032699036858462374;
	setAttr ".wl[465].w[12]" 0.0010114250178097129;
	setAttr ".wl[465].w[23]" 0.029144851550304517;
	setAttr ".wl[465].w[24]" 0.96910560161984338;
	setAttr -s 5 ".wl[466].w";
	setAttr ".wl[466].w[6]" 2.8820166705742682e-006;
	setAttr ".wl[466].w[7]" 2.9957479560457269e-006;
	setAttr ".wl[466].w[12]" 1.2476345019868972e-006;
	setAttr ".wl[466].w[23]" 0.097729077898057515;
	setAttr ".wl[466].w[24]" 0.90226379670281398;
	setAttr -s 5 ".wl[467].w";
	setAttr ".wl[467].w[7]" 0.010123428077175634;
	setAttr ".wl[467].w[11]" 0.11240025146224947;
	setAttr ".wl[467].w[12]" 0.2810013725855145;
	setAttr ".wl[467].w[23]" 0.1312008522102649;
	setAttr ".wl[467].w[24]" 0.46527409566479555;
	setAttr -s 5 ".wl[468].w";
	setAttr ".wl[468].w[11]" 0.028508419314728292;
	setAttr ".wl[468].w[12]" 0.16417074272165652;
	setAttr ".wl[468].w[13]" 0.01688448523378441;
	setAttr ".wl[468].w[23]" 0.065172626184194976;
	setAttr ".wl[468].w[24]" 0.72526372654563576;
	setAttr -s 5 ".wl[469].w";
	setAttr ".wl[469].w[6]" 0.0026094572649989359;
	setAttr ".wl[469].w[11]" 0.14823213166685315;
	setAttr ".wl[469].w[12]" 0.81596598097616968;
	setAttr ".wl[469].w[23]" 0.0077200061125944812;
	setAttr ".wl[469].w[24]" 0.025472423979383797;
	setAttr -s 5 ".wl[470].w";
	setAttr ".wl[470].w[11]" 0.056269781231465095;
	setAttr ".wl[470].w[12]" 0.81430122511647596;
	setAttr ".wl[470].w[13]" 0.019203164934523648;
	setAttr ".wl[470].w[23]" 0.01268908377216217;
	setAttr ".wl[470].w[24]" 0.097536744945373038;
	setAttr -s 5 ".wl[471].w";
	setAttr ".wl[471].w[7]" 3.8365731682871459e-005;
	setAttr ".wl[471].w[11]" 0.084925144791182905;
	setAttr ".wl[471].w[12]" 0.91481081625758842;
	setAttr ".wl[471].w[19]" 9.1049032874334292e-005;
	setAttr ".wl[471].w[20]" 0.00013462418667149878;
	setAttr -s 5 ".wl[472].w";
	setAttr ".wl[472].w[6]" 5.8806194103426317e-005;
	setAttr ".wl[472].w[11]" 0.0139920906305867;
	setAttr ".wl[472].w[12]" 0.98578079097588955;
	setAttr ".wl[472].w[13]" 9.1499505232119066e-005;
	setAttr ".wl[472].w[24]" 7.6812694188181909e-005;
	setAttr -s 5 ".wl[473].w";
	setAttr ".wl[473].w[11]" 0.14061728572978091;
	setAttr ".wl[473].w[12]" 0.81876103255149169;
	setAttr ".wl[473].w[13]" 0.0056705000895199541;
	setAttr ".wl[473].w[19]" 0.0099744612589889089;
	setAttr ".wl[473].w[20]" 0.024976720370218447;
	setAttr -s 5 ".wl[474].w";
	setAttr ".wl[474].w[11]" 0.0062754347335605611;
	setAttr ".wl[474].w[12]" 0.98922632906620478;
	setAttr ".wl[474].w[13]" 0.0038797233278701484;
	setAttr ".wl[474].w[19]" 0.00012680836881451965;
	setAttr ".wl[474].w[20]" 0.00049170450354999774;
	setAttr -s 5 ".wl[475].w";
	setAttr ".wl[475].w[11]" 0.061836813490667795;
	setAttr ".wl[475].w[12]" 0.79821043610220632;
	setAttr ".wl[475].w[13]" 0.033433814937984571;
	setAttr ".wl[475].w[19]" 0.014516408337178006;
	setAttr ".wl[475].w[20]" 0.092002527131963246;
	setAttr -s 5 ".wl[476].w";
	setAttr ".wl[476].w[11]" 0.018875660211715339;
	setAttr ".wl[476].w[12]" 0.59347208732743428;
	setAttr ".wl[476].w[13]" 0.094479281501460913;
	setAttr ".wl[476].w[20]" 0.25007366436874418;
	setAttr ".wl[476].w[21]" 0.043099306590645307;
	setAttr -s 5 ".wl[477].w";
	setAttr ".wl[477].w[12]" 0.044173635991204996;
	setAttr ".wl[477].w[13]" 0.0081001158481477705;
	setAttr ".wl[477].w[19]" 0.013837808994085864;
	setAttr ".wl[477].w[20]" 0.88461826235941809;
	setAttr ".wl[477].w[21]" 0.049270176807143191;
	setAttr -s 5 ".wl[478].w";
	setAttr ".wl[478].w[6]" 4.749594020095875e-006;
	setAttr ".wl[478].w[7]" 2.2422390709854686e-006;
	setAttr ".wl[478].w[19]" 0.00023203249961099932;
	setAttr ".wl[478].w[20]" 0.98789653979447167;
	setAttr ".wl[478].w[21]" 0.011864435872826358;
	setAttr -s 5 ".wl[479].w";
	setAttr ".wl[479].w[6]" 0.00095652370108652556;
	setAttr ".wl[479].w[12]" 0.010787184717765796;
	setAttr ".wl[479].w[13]" 0.0044234797610725272;
	setAttr ".wl[479].w[23]" 0.0059862165833299103;
	setAttr ".wl[479].w[24]" 0.97784659523674511;
	setAttr -s 5 ".wl[480].w";
	setAttr ".wl[480].w[6]" 1.3855012067492063e-005;
	setAttr ".wl[480].w[7]" 9.7936137871207596e-006;
	setAttr ".wl[480].w[12]" 9.3076555743859207e-006;
	setAttr ".wl[480].w[23]" 0.00092246621186470778;
	setAttr ".wl[480].w[24]" 0.99904457750670617;
	setAttr -s 5 ".wl[481].w";
	setAttr ".wl[481].w[11]" 0.011894163081023739;
	setAttr ".wl[481].w[12]" 0.34936252688277075;
	setAttr ".wl[481].w[13]" 0.080616609306523604;
	setAttr ".wl[481].w[23]" 0.0187241112168696;
	setAttr ".wl[481].w[24]" 0.53940258951281217;
	setAttr -s 5 ".wl[482].w";
	setAttr ".wl[482].w[11]" 0.0064472123810172047;
	setAttr ".wl[482].w[12]" 0.91313914058479806;
	setAttr ".wl[482].w[13]" 0.057255253884725438;
	setAttr ".wl[482].w[23]" 0.0016393422134769516;
	setAttr ".wl[482].w[24]" 0.021519050935982397;
	setAttr -s 5 ".wl[483].w";
	setAttr ".wl[483].w[6]" 1.0518783651586062e-007;
	setAttr ".wl[483].w[7]" 6.0756584869045089e-008;
	setAttr ".wl[483].w[11]" 7.3296641797005793e-006;
	setAttr ".wl[483].w[12]" 0.9867481141072777;
	setAttr ".wl[483].w[13]" 0.013244390284121312;
	setAttr -s 5 ".wl[484].w";
	setAttr ".wl[484].w[11]" 0.0025878334187697995;
	setAttr ".wl[484].w[12]" 0.94246292607197424;
	setAttr ".wl[484].w[13]" 0.050747012284882702;
	setAttr ".wl[484].w[20]" 0.0033189669318850002;
	setAttr ".wl[484].w[21]" 0.00088326129248838604;
	setAttr -s 5 ".wl[485].w";
	setAttr ".wl[485].w[15]" 0.00068836918852949354;
	setAttr ".wl[485].w[16]" 0.78667017128661321;
	setAttr ".wl[485].w[17]" 0.1950765166134128;
	setAttr ".wl[485].w[20]" 0.012423530600518271;
	setAttr ".wl[485].w[21]" 0.0051414123109263651;
	setAttr -s 5 ".wl[486].w";
	setAttr ".wl[486].w[6]" 0.00052258288716243721;
	setAttr ".wl[486].w[16]" 0.43373271337904917;
	setAttr ".wl[486].w[17]" 0.30389893818587271;
	setAttr ".wl[486].w[20]" 0.16466346147859076;
	setAttr ".wl[486].w[21]" 0.097182304069325043;
	setAttr -s 5 ".wl[487].w";
	setAttr ".wl[487].w[15]" 2.1910950904285673e-005;
	setAttr ".wl[487].w[16]" 0.65098601699819036;
	setAttr ".wl[487].w[17]" 0.34683462057764802;
	setAttr ".wl[487].w[20]" 0.0012940741995357964;
	setAttr ".wl[487].w[21]" 0.00086337727372161452;
	setAttr -s 5 ".wl[488].w";
	setAttr ".wl[488].w[6]" 9.0822401375974306e-005;
	setAttr ".wl[488].w[16]" 0.48823077130212761;
	setAttr ".wl[488].w[17]" 0.43204340137258851;
	setAttr ".wl[488].w[20]" 0.043393132936005628;
	setAttr ".wl[488].w[21]" 0.036241871987902241;
	setAttr -s 5 ".wl[489].w";
	setAttr ".wl[489].w[14]" 0.38637376916291372;
	setAttr ".wl[489].w[15]" 0.51200994746386097;
	setAttr ".wl[489].w[16]" 0.012270049111901143;
	setAttr ".wl[489].w[18]" 0.046607775419219157;
	setAttr ".wl[489].w[19]" 0.042738458842105032;
	setAttr -s 5 ".wl[490].w";
	setAttr ".wl[490].w[14]" 0.14964960468147667;
	setAttr ".wl[490].w[15]" 0.55965398476252348;
	setAttr ".wl[490].w[16]" 0.090193365687203458;
	setAttr ".wl[490].w[18]" 0.072141370230724491;
	setAttr ".wl[490].w[19]" 0.12836167463807205;
	setAttr -s 5 ".wl[491].w";
	setAttr ".wl[491].w[14]" 0.15389540949487512;
	setAttr ".wl[491].w[15]" 0.81488105218663376;
	setAttr ".wl[491].w[16]" 0.025084243067680392;
	setAttr ".wl[491].w[18]" 0.00273605203924404;
	setAttr ".wl[491].w[19]" 0.0034032432115665332;
	setAttr -s 5 ".wl[492].w";
	setAttr ".wl[492].w[14]" 0.074878561817218539;
	setAttr ".wl[492].w[15]" 0.67669892137718179;
	setAttr ".wl[492].w[16]" 0.19599291037935845;
	setAttr ".wl[492].w[18]" 0.016190925796016428;
	setAttr ".wl[492].w[19]" 0.036238680630224569;
	setAttr -s 5 ".wl[493].w";
	setAttr ".wl[493].w[6]" 0.00011965925208392361;
	setAttr ".wl[493].w[16]" 0.30199860652225236;
	setAttr ".wl[493].w[17]" 0.25915019099012809;
	setAttr ".wl[493].w[20]" 0.22508585957896377;
	setAttr ".wl[493].w[21]" 0.21364568365657177;
	setAttr -s 5 ".wl[494].w";
	setAttr ".wl[494].w[6]" 1.7004635129618313e-005;
	setAttr ".wl[494].w[16]" 0.53649934137968569;
	setAttr ".wl[494].w[17]" 0.44731893417943352;
	setAttr ".wl[494].w[20]" 0.0083577103190636669;
	setAttr ".wl[494].w[21]" 0.0078070094866874475;
	setAttr -s 5 ".wl[495].w";
	setAttr ".wl[495].w[6]" 0.00013732994476933479;
	setAttr ".wl[495].w[16]" 0.55039084787348092;
	setAttr ".wl[495].w[17]" 0.3683267927023024;
	setAttr ".wl[495].w[20]" 0.043442940118757982;
	setAttr ".wl[495].w[21]" 0.03770208936068941;
	setAttr -s 5 ".wl[496].w";
	setAttr ".wl[496].w[6]" 0.0083256534355998085;
	setAttr ".wl[496].w[16]" 0.49708050655226882;
	setAttr ".wl[496].w[17]" 0.11007202834132335;
	setAttr ".wl[496].w[20]" 0.26753551057609787;
	setAttr ".wl[496].w[21]" 0.11698630109471027;
	setAttr -s 5 ".wl[497].w";
	setAttr ".wl[497].w[6]" 0.00021409342952890506;
	setAttr ".wl[497].w[16]" 0.87191169672406432;
	setAttr ".wl[497].w[17]" 0.11901501014998629;
	setAttr ".wl[497].w[20]" 0.0056693032338358141;
	setAttr ".wl[497].w[21]" 0.003189896462584654;
	setAttr -s 5 ".wl[498].w";
	setAttr ".wl[498].w[6]" 0.03704416351509076;
	setAttr ".wl[498].w[16]" 0.80742306180089041;
	setAttr ".wl[498].w[17]" 0.049303239378994397;
	setAttr ".wl[498].w[20]" 0.087622897301562544;
	setAttr ".wl[498].w[21]" 0.018606638003461875;
	setAttr -s 5 ".wl[499].w";
	setAttr ".wl[499].w[5]" 0.013402420872577751;
	setAttr ".wl[499].w[6]" 0.21833791210901671;
	setAttr ".wl[499].w[7]" 0.040942249090140256;
	setAttr ".wl[499].w[16]" 0.39735150292483962;
	setAttr ".wl[499].w[20]" 0.32996591500342559;
	setAttr -s 5 ".wl[500].w";
	setAttr ".wl[500].w[4]" 0.014988846582922977;
	setAttr ".wl[500].w[6]" 0.11489909431347813;
	setAttr ".wl[500].w[16]" 0.83917920704142823;
	setAttr ".wl[500].w[20]" 0.016899109415099395;
	setAttr ".wl[500].w[26]" 0.014033742647071494;
	setAttr -s 5 ".wl[501].w";
	setAttr ".wl[501].w[4]" 0.080067786843043429;
	setAttr ".wl[501].w[6]" 0.37395335867863949;
	setAttr ".wl[501].w[16]" 0.38013785808394562;
	setAttr ".wl[501].w[20]" 0.10090997536657861;
	setAttr ".wl[501].w[26]" 0.064931021027792829;
	setAttr -s 5 ".wl[502].w";
	setAttr ".wl[502].w[1]" 0.11491197897156838;
	setAttr ".wl[502].w[4]" 0.20575028086205882;
	setAttr ".wl[502].w[5]" 0.19203023686814299;
	setAttr ".wl[502].w[6]" 0.37546840656438463;
	setAttr ".wl[502].w[20]" 0.11183909673384509;
	setAttr -s 5 ".wl[503].w";
	setAttr ".wl[503].w[1]" 0.22639868057731544;
	setAttr ".wl[503].w[4]" 0.18690309136226968;
	setAttr ".wl[503].w[6]" 0.22948827463006585;
	setAttr ".wl[503].w[26]" 0.1705327675561244;
	setAttr ".wl[503].w[40]" 0.18667718587422472;
	setAttr -s 5 ".wl[504].w";
	setAttr ".wl[504].w[1]" 0.38690905241012852;
	setAttr ".wl[504].w[4]" 0.08020274401151456;
	setAttr ".wl[504].w[6]" 0.057384847046927027;
	setAttr ".wl[504].w[26]" 0.063106503499286537;
	setAttr ".wl[504].w[40]" 0.41239685303214324;
	setAttr -s 5 ".wl[505].w";
	setAttr ".wl[505].w[1]" 0.36290391112795484;
	setAttr ".wl[505].w[2]" 0.017562562760084645;
	setAttr ".wl[505].w[4]" 0.020113665033045652;
	setAttr ".wl[505].w[40]" 0.56092119260630702;
	setAttr ".wl[505].w[41]" 0.038498668472607869;
	setAttr -s 5 ".wl[506].w";
	setAttr ".wl[506].w[1]" 0.42754731359365333;
	setAttr ".wl[506].w[2]" 0.0091676932123070411;
	setAttr ".wl[506].w[32]" 0.027576359933442228;
	setAttr ".wl[506].w[40]" 0.51431300851902662;
	setAttr ".wl[506].w[41]" 0.021395624741570744;
	setAttr -s 5 ".wl[507].w";
	setAttr ".wl[507].w[1]" 0.11489716226420321;
	setAttr ".wl[507].w[40]" 0.50581730363034239;
	setAttr ".wl[507].w[41]" 0.30894952083302213;
	setAttr ".wl[507].w[42]" 0.060086201103524785;
	setAttr ".wl[507].w[43]" 0.010249812168907572;
	setAttr -s 5 ".wl[508].w";
	setAttr ".wl[508].w[9]" 0.018746238115519284;
	setAttr ".wl[508].w[14]" 0.075326098619528853;
	setAttr ".wl[508].w[15]" 0.0071570459955752072;
	setAttr ".wl[508].w[18]" 0.72323965383942368;
	setAttr ".wl[508].w[19]" 0.17553096342995289;
	setAttr -s 5 ".wl[509].w";
	setAttr ".wl[509].w[9]" 0.0059773804909097443;
	setAttr ".wl[509].w[14]" 0.031023942179665892;
	setAttr ".wl[509].w[15]" 0.024070738885440705;
	setAttr ".wl[509].w[18]" 0.47690538318812686;
	setAttr ".wl[509].w[19]" 0.46202255525585662;
	setAttr -s 5 ".wl[510].w";
	setAttr ".wl[510].w[9]" 0.039362510575533222;
	setAttr ".wl[510].w[14]" 0.34713654764059865;
	setAttr ".wl[510].w[15]" 0.047140638239491293;
	setAttr ".wl[510].w[18]" 0.4772475710255531;
	setAttr ".wl[510].w[19]" 0.089112732518823776;
	setAttr -s 5 ".wl[511].w";
	setAttr ".wl[511].w[9]" 0.018583395783880959;
	setAttr ".wl[511].w[14]" 0.25293244333455261;
	setAttr ".wl[511].w[15]" 0.15685379033793975;
	setAttr ".wl[511].w[18]" 0.33185341795230983;
	setAttr ".wl[511].w[19]" 0.23977695259131696;
	setAttr -s 5 ".wl[512].w";
	setAttr ".wl[512].w[15]" 0.0064417432348063694;
	setAttr ".wl[512].w[16]" 0.0020798155375559325;
	setAttr ".wl[512].w[18]" 0.10562694745858971;
	setAttr ".wl[512].w[19]" 0.77619825183172853;
	setAttr ".wl[512].w[20]" 0.10965324193731948;
	setAttr -s 5 ".wl[513].w";
	setAttr ".wl[513].w[14]" 0.042663357701860131;
	setAttr ".wl[513].w[15]" 0.11236098654213328;
	setAttr ".wl[513].w[18]" 0.30533133838418164;
	setAttr ".wl[513].w[19]" 0.5029626938162669;
	setAttr ".wl[513].w[20]" 0.036681623555558089;
	setAttr -s 5 ".wl[514].w";
	setAttr ".wl[514].w[14]" 0.00049888521436881167;
	setAttr ".wl[514].w[15]" 0.000304831007531665;
	setAttr ".wl[514].w[18]" 0.28609260704969491;
	setAttr ".wl[514].w[19]" 0.70095254048988442;
	setAttr ".wl[514].w[20]" 0.01215113623852025;
	setAttr -s 5 ".wl[515].w";
	setAttr ".wl[515].w[6]" 5.1326993875612334e-006;
	setAttr ".wl[515].w[16]" 0.0014386735501942549;
	setAttr ".wl[515].w[17]" 0.0012793493910683033;
	setAttr ".wl[515].w[20]" 0.56868936661682767;
	setAttr ".wl[515].w[21]" 0.42858747774252226;
	setAttr -s 5 ".wl[516].w";
	setAttr ".wl[516].w[6]" 0.00021200139382490668;
	setAttr ".wl[516].w[16]" 0.05052848791039339;
	setAttr ".wl[516].w[17]" 0.041460408572594011;
	setAttr ".wl[516].w[20]" 0.55977938002076244;
	setAttr ".wl[516].w[21]" 0.34801972210242527;
	setAttr -s 5 ".wl[517].w";
	setAttr ".wl[517].w[6]" 1.4414729482748942e-006;
	setAttr ".wl[517].w[16]" 6.0367043343891247e-005;
	setAttr ".wl[517].w[17]" 4.9982980731224656e-005;
	setAttr ".wl[517].w[20]" 0.73248526630763022;
	setAttr ".wl[517].w[21]" 0.26740294219534638;
	setAttr -s 5 ".wl[518].w";
	setAttr ".wl[518].w[16]" 0.0084155473219903239;
	setAttr ".wl[518].w[17]" 0.003993189894285494;
	setAttr ".wl[518].w[19]" 0.00084461215476461086;
	setAttr ".wl[518].w[20]" 0.86869736577223677;
	setAttr ".wl[518].w[21]" 0.11804928485672297;
	setAttr -s 5 ".wl[519].w";
	setAttr ".wl[519].w[6]" 2.0859833426434307e-007;
	setAttr ".wl[519].w[16]" 1.9382469364452498e-005;
	setAttr ".wl[519].w[17]" 1.754311872301203e-005;
	setAttr ".wl[519].w[20]" 0.58905837377354942;
	setAttr ".wl[519].w[21]" 0.41090449204002888;
	setAttr -s 5 ".wl[520].w";
	setAttr ".wl[520].w[6]" 4.3956373941015336e-005;
	setAttr ".wl[520].w[16]" 0.0017490047719769801;
	setAttr ".wl[520].w[17]" 0.0012833914177766369;
	setAttr ".wl[520].w[20]" 0.67346051947548757;
	setAttr ".wl[520].w[21]" 0.32346312796081772;
	setAttr -s 5 ".wl[521].w";
	setAttr ".wl[521].w[6]" 6.0527349873009245e-005;
	setAttr ".wl[521].w[16]" 0.024182067049577653;
	setAttr ".wl[521].w[17]" 0.018023211448246469;
	setAttr ".wl[521].w[20]" 0.52313593653312118;
	setAttr ".wl[521].w[21]" 0.43459825761918169;
	setAttr -s 5 ".wl[522].w";
	setAttr ".wl[522].w[6]" 3.4837539184556146e-005;
	setAttr ".wl[522].w[16]" 4.7517835700143594e-005;
	setAttr ".wl[522].w[19]" 1.999021959811059e-005;
	setAttr ".wl[522].w[20]" 0.88282347913837478;
	setAttr ".wl[522].w[21]" 0.11707417526714237;
	setAttr -s 5 ".wl[523].w";
	setAttr ".wl[523].w[6]" 0.04229451501306327;
	setAttr ".wl[523].w[7]" 0.0045675221899786605;
	setAttr ".wl[523].w[16]" 0.0035170136400241867;
	setAttr ".wl[523].w[20]" 0.93835561099542264;
	setAttr ".wl[523].w[21]" 0.011265338161511339;
	setAttr -s 5 ".wl[524].w";
	setAttr ".wl[524].w[6]" 0.010031921685392357;
	setAttr ".wl[524].w[16]" 0.055342683537284748;
	setAttr ".wl[524].w[17]" 0.0077434279434623107;
	setAttr ".wl[524].w[20]" 0.79973605921563673;
	setAttr ".wl[524].w[21]" 0.12714590761822378;
	setAttr -s 5 ".wl[525].w";
	setAttr ".wl[525].w[4]" 0.0062173564049723511;
	setAttr ".wl[525].w[5]" 0.0096048409623613711;
	setAttr ".wl[525].w[6]" 0.10304154172356507;
	setAttr ".wl[525].w[7]" 0.0047882156035429797;
	setAttr ".wl[525].w[20]" 0.87634804530555799;
	setAttr -s 5 ".wl[526].w";
	setAttr ".wl[526].w[3]" 0.026822937552586006;
	setAttr ".wl[526].w[4]" 0.061586186417479843;
	setAttr ".wl[526].w[5]" 0.078651361747740178;
	setAttr ".wl[526].w[6]" 0.29891388937923818;
	setAttr ".wl[526].w[20]" 0.53402562490295558;
	setAttr -s 5 ".wl[527].w";
	setAttr ".wl[527].w[5]" 0.021324041311954658;
	setAttr ".wl[527].w[6]" 0.20151464271944181;
	setAttr ".wl[527].w[7]" 0.020233386334453422;
	setAttr ".wl[527].w[16]" 0.020969311801100423;
	setAttr ".wl[527].w[20]" 0.73595861783304972;
	setAttr -s 5 ".wl[528].w";
	setAttr ".wl[528].w[1]" 0.20015208182869129;
	setAttr ".wl[528].w[4]" 0.13154864620920764;
	setAttr ".wl[528].w[5]" 0.17151611759925769;
	setAttr ".wl[528].w[6]" 0.28646787178701627;
	setAttr ".wl[528].w[20]" 0.21031528257582713;
	setAttr -s 5 ".wl[529].w";
	setAttr ".wl[529].w[1]" 0.45522521287086415;
	setAttr ".wl[529].w[2]" 0.082080245866090001;
	setAttr ".wl[529].w[6]" 0.089105095177360358;
	setAttr ".wl[529].w[40]" 0.22062111455641201;
	setAttr ".wl[529].w[44]" 0.15296833152927355;
	setAttr -s 5 ".wl[530].w";
	setAttr ".wl[530].w[1]" 0.20082985694420824;
	setAttr ".wl[530].w[4]" 0.19377300399105274;
	setAttr ".wl[530].w[5]" 0.20265212206442437;
	setAttr ".wl[530].w[6]" 0.26174990570725459;
	setAttr ".wl[530].w[40]" 0.14099511129305992;
	setAttr -s 5 ".wl[531].w";
	setAttr ".wl[531].w[1]" 0.3758068624058627;
	setAttr ".wl[531].w[2]" 0.028878359704635405;
	setAttr ".wl[531].w[40]" 0.11818736287181898;
	setAttr ".wl[531].w[44]" 0.44739244413317997;
	setAttr ".wl[531].w[45]" 0.029734970884502786;
	setAttr -s 5 ".wl[532].w";
	setAttr ".wl[532].w[1]" 0.41862321514826961;
	setAttr ".wl[532].w[40]" 0.22640328741248278;
	setAttr ".wl[532].w[41]" 0.012709981667150302;
	setAttr ".wl[532].w[44]" 0.30590821148618469;
	setAttr ".wl[532].w[45]" 0.036355304285912653;
	setAttr -s 5 ".wl[533].w";
	setAttr ".wl[533].w[1]" 0.48079937783974058;
	setAttr ".wl[533].w[2]" 0.027009418917201808;
	setAttr ".wl[533].w[40]" 0.36173135099097264;
	setAttr ".wl[533].w[41]" 0.016508835553510726;
	setAttr ".wl[533].w[44]" 0.11395101669857424;
	setAttr -s 5 ".wl[534].w";
	setAttr ".wl[534].w[1]" 0.3532457348263523;
	setAttr ".wl[534].w[40]" 0.37324115883272024;
	setAttr ".wl[534].w[41]" 0.20361928658618472;
	setAttr ".wl[534].w[42]" 0.038495691482932984;
	setAttr ".wl[534].w[44]" 0.031398128271809808;
	setAttr -s 5 ".wl[535].w";
	setAttr ".wl[535].w[0]" 0.05332012619052371;
	setAttr ".wl[535].w[1]" 0.73795137757798335;
	setAttr ".wl[535].w[40]" 0.080114431240734391;
	setAttr ".wl[535].w[44]" 0.11954669847801162;
	setAttr ".wl[535].w[45]" 0.0090673665127469268;
	setAttr -s 5 ".wl[536].w";
	setAttr ".wl[536].w[1]" 0.29033680984160376;
	setAttr ".wl[536].w[40]" 0.071217612743636222;
	setAttr ".wl[536].w[44]" 0.40930561858109044;
	setAttr ".wl[536].w[45]" 0.19300581783705317;
	setAttr ".wl[536].w[46]" 0.036134140996616285;
	setAttr -s 5 ".wl[537].w";
	setAttr ".wl[537].w[1]" 0.50329188916991807;
	setAttr ".wl[537].w[2]" 0.064332976310520831;
	setAttr ".wl[537].w[4]" 0.030750909147667829;
	setAttr ".wl[537].w[32]" 0.20518781488312063;
	setAttr ".wl[537].w[36]" 0.19643641048877272;
	setAttr -s 5 ".wl[538].w";
	setAttr ".wl[538].w[1]" 0.48746283494969861;
	setAttr ".wl[538].w[2]" 0.012133096803550538;
	setAttr ".wl[538].w[32]" 0.38461846489548074;
	setAttr ".wl[538].w[33]" 0.016912325807699295;
	setAttr ".wl[538].w[36]" 0.098873277543570712;
	setAttr -s 5 ".wl[539].w";
	setAttr ".wl[539].w[1]" 0.43160913659165845;
	setAttr ".wl[539].w[2]" 0.039674454192213056;
	setAttr ".wl[539].w[32]" 0.091791165228411339;
	setAttr ".wl[539].w[36]" 0.41611634971445749;
	setAttr ".wl[539].w[37]" 0.020808894273259635;
	setAttr -s 5 ".wl[540].w";
	setAttr ".wl[540].w[1]" 0.42509073166125777;
	setAttr ".wl[540].w[32]" 0.29477257454906097;
	setAttr ".wl[540].w[33]" 0.027056169910788623;
	setAttr ".wl[540].w[36]" 0.22613745115417952;
	setAttr ".wl[540].w[37]" 0.026943072724713142;
	setAttr -s 5 ".wl[541].w";
	setAttr ".wl[541].w[3]" 0.0048443425950707589;
	setAttr ".wl[541].w[4]" 0.58134379059898922;
	setAttr ".wl[541].w[5]" 0.0062505497224841959;
	setAttr ".wl[541].w[26]" 0.40656601772467726;
	setAttr ".wl[541].w[27]" 0.00099529935877856897;
	setAttr -s 5 ".wl[542].w";
	setAttr ".wl[542].w[2]" 0.0013389433237957734;
	setAttr ".wl[542].w[3]" 0.0021200392717130186;
	setAttr ".wl[542].w[4]" 0.5534526366071999;
	setAttr ".wl[542].w[5]" 0.00077038446756555999;
	setAttr ".wl[542].w[26]" 0.44231799632972557;
	setAttr -s 5 ".wl[543].w";
	setAttr ".wl[543].w[2]" 0.0028107250171821611;
	setAttr ".wl[543].w[3]" 0.0060436742397952823;
	setAttr ".wl[543].w[4]" 0.67072433529675979;
	setAttr ".wl[543].w[26]" 0.31851440480557391;
	setAttr ".wl[543].w[27]" 0.0019068606406887872;
	setAttr -s 5 ".wl[544].w";
	setAttr ".wl[544].w[2]" 0.0096001055467135419;
	setAttr ".wl[544].w[3]" 0.010620509138763692;
	setAttr ".wl[544].w[4]" 0.5641844453253837;
	setAttr ".wl[544].w[26]" 0.4147217489202692;
	setAttr ".wl[544].w[27]" 0.0008731910688699468;
	setAttr -s 5 ".wl[545].w";
	setAttr ".wl[545].w[6]" 0.034775870420329237;
	setAttr ".wl[545].w[7]" 0.0039981501426999992;
	setAttr ".wl[545].w[16]" 0.0027948424938237055;
	setAttr ".wl[545].w[17]" 0.00068777264748577183;
	setAttr ".wl[545].w[24]" 0.9577433642956612;
	setAttr -s 5 ".wl[546].w";
	setAttr ".wl[546].w[4]" 0.0092396495175237937;
	setAttr ".wl[546].w[6]" 0.2138635083120923;
	setAttr ".wl[546].w[7]" 0.033075717029025481;
	setAttr ".wl[546].w[16]" 0.058440848695502118;
	setAttr ".wl[546].w[24]" 0.68538027644585642;
	setAttr -s 5 ".wl[547].w";
	setAttr ".wl[547].w[4]" 0.0077466732960540441;
	setAttr ".wl[547].w[5]" 0.012050412244787572;
	setAttr ".wl[547].w[6]" 0.23270521429017288;
	setAttr ".wl[547].w[7]" 0.01442818639223009;
	setAttr ".wl[547].w[24]" 0.73306951377675544;
	setAttr -s 5 ".wl[548].w";
	setAttr ".wl[548].w[4]" 0.024729354825211557;
	setAttr ".wl[548].w[5]" 0.038066720086573927;
	setAttr ".wl[548].w[6]" 0.41964870406330623;
	setAttr ".wl[548].w[7]" 0.03453566215223966;
	setAttr ".wl[548].w[24]" 0.48301955887266862;
	setAttr -s 5 ".wl[549].w";
	setAttr ".wl[549].w[6]" 2.813385657591938e-005;
	setAttr ".wl[549].w[7]" 1.7565400595678092e-005;
	setAttr ".wl[549].w[16]" 0.0019701167334233204;
	setAttr ".wl[549].w[17]" 0.0014944646897342201;
	setAttr ".wl[549].w[24]" 0.99648971931967079;
	setAttr -s 5 ".wl[550].w";
	setAttr ".wl[550].w[6]" 0.0021087904892764658;
	setAttr ".wl[550].w[7]" 0.0010016811899632384;
	setAttr ".wl[550].w[16]" 0.021066001310711405;
	setAttr ".wl[550].w[17]" 0.008207178903625446;
	setAttr ".wl[550].w[24]" 0.9676163481064235;
	setAttr -s 5 ".wl[551].w";
	setAttr ".wl[551].w[6]" 2.2764626217001303e-005;
	setAttr ".wl[551].w[7]" 1.0079301218400039e-005;
	setAttr ".wl[551].w[16]" 4.7055249912165902e-005;
	setAttr ".wl[551].w[17]" 3.8825267319329909e-005;
	setAttr ".wl[551].w[24]" 0.99988127555533313;
	setAttr -s 5 ".wl[552].w";
	setAttr ".wl[552].w[6]" 1.2785240851164988e-005;
	setAttr ".wl[552].w[16]" 0.0012496613121234395;
	setAttr ".wl[552].w[17]" 0.0011773711793292019;
	setAttr ".wl[552].w[23]" 1.3558604648577626e-005;
	setAttr ".wl[552].w[24]" 0.99754662366304769;
	setAttr -s 5 ".wl[553].w";
	setAttr ".wl[553].w[6]" 0.0001639082559669079;
	setAttr ".wl[553].w[7]" 0.000106270924736297;
	setAttr ".wl[553].w[16]" 0.059411217431063049;
	setAttr ".wl[553].w[17]" 0.051613297947584354;
	setAttr ".wl[553].w[24]" 0.88870530544064941;
	setAttr -s 5 ".wl[554].w";
	setAttr ".wl[554].w[6]" 2.0248606920695088e-006;
	setAttr ".wl[554].w[16]" 9.2585404101179489e-005;
	setAttr ".wl[554].w[17]" 8.8015673740143174e-005;
	setAttr ".wl[554].w[23]" 2.469569252353897e-006;
	setAttr ".wl[554].w[24]" 0.99981490449221422;
	setAttr -s 5 ".wl[555].w";
	setAttr ".wl[555].w[6]" 2.9156275011372796e-007;
	setAttr ".wl[555].w[16]" 2.9223420616834179e-006;
	setAttr ".wl[555].w[17]" 2.7545192074061777e-006;
	setAttr ".wl[555].w[23]" 4.6726097814781775e-007;
	setAttr ".wl[555].w[24]" 0.99999356431500275;
	setAttr -s 5 ".wl[556].w";
	setAttr ".wl[556].w[6]" 4.5489032292144276e-006;
	setAttr ".wl[556].w[16]" 3.0061599368106249e-005;
	setAttr ".wl[556].w[17]" 2.2296133341872386e-005;
	setAttr ".wl[556].w[23]" 6.4423596810953642e-006;
	setAttr ".wl[556].w[24]" 0.99993665100437967;
	setAttr -s 5 ".wl[557].w";
	setAttr ".wl[557].w[6]" 0.00010804494906353292;
	setAttr ".wl[557].w[16]" 0.009563254749927818;
	setAttr ".wl[557].w[17]" 0.0080470785139399106;
	setAttr ".wl[557].w[23]" 9.6671388349479917e-005;
	setAttr ".wl[557].w[24]" 0.98218495039871923;
	setAttr -s 5 ".wl[558].w";
	setAttr ".wl[558].w[14]" 0.00018534559778678568;
	setAttr ".wl[558].w[15]" 0.00015881487354984017;
	setAttr ".wl[558].w[22]" 0.21552573279551249;
	setAttr ".wl[558].w[23]" 0.78099156217785881;
	setAttr ".wl[558].w[24]" 0.0031385445552921777;
	setAttr -s 5 ".wl[559].w";
	setAttr ".wl[559].w[9]" 0.0060401881463778241;
	setAttr ".wl[559].w[14]" 0.039636337605470605;
	setAttr ".wl[559].w[15]" 0.020184180065253046;
	setAttr ".wl[559].w[22]" 0.50744311997083547;
	setAttr ".wl[559].w[23]" 0.42669617421206313;
	setAttr -s 5 ".wl[560].w";
	setAttr ".wl[560].w[14]" 0.0021114735806531588;
	setAttr ".wl[560].w[15]" 0.0045325533679243064;
	setAttr ".wl[560].w[22]" 0.071750579890441049;
	setAttr ".wl[560].w[23]" 0.82689815152711321;
	setAttr ".wl[560].w[24]" 0.094707241633868303;
	setAttr -s 5 ".wl[561].w";
	setAttr ".wl[561].w[14]" 0.045164825442508355;
	setAttr ".wl[561].w[15]" 0.050177209039062594;
	setAttr ".wl[561].w[22]" 0.31901468191680765;
	setAttr ".wl[561].w[23]" 0.56522768995410178;
	setAttr ".wl[561].w[24]" 0.020415593647519756;
	setAttr -s 5 ".wl[562].w";
	setAttr ".wl[562].w[9]" 0.011640709008628299;
	setAttr ".wl[562].w[14]" 0.24836561955268377;
	setAttr ".wl[562].w[15]" 0.27496218883001244;
	setAttr ".wl[562].w[18]" 0.23648955622186571;
	setAttr ".wl[562].w[19]" 0.2285419263868099;
	setAttr -s 5 ".wl[563].w";
	setAttr ".wl[563].w[9]" 0.010251947780466765;
	setAttr ".wl[563].w[14]" 0.52907316172708374;
	setAttr ".wl[563].w[15]" 0.3533805817256408;
	setAttr ".wl[563].w[18]" 0.069200620037714267;
	setAttr ".wl[563].w[19]" 0.038093688729094473;
	setAttr -s 5 ".wl[564].w";
	setAttr ".wl[564].w[15]" 0.32908887003812071;
	setAttr ".wl[564].w[16]" 0.10333823410905817;
	setAttr ".wl[564].w[18]" 0.11389945318837333;
	setAttr ".wl[564].w[19]" 0.34966203168465027;
	setAttr ".wl[564].w[20]" 0.10401141097979757;
	setAttr -s 5 ".wl[565].w";
	setAttr ".wl[565].w[6]" 0.00011735338627962822;
	setAttr ".wl[565].w[16]" 0.14877814511472637;
	setAttr ".wl[565].w[17]" 0.13102151636480042;
	setAttr ".wl[565].w[20]" 0.38691130147259534;
	setAttr ".wl[565].w[21]" 0.33317168366159822;
	setAttr -s 5 ".wl[566].w";
	setAttr ".wl[566].w[15]" 0.002974480989037776;
	setAttr ".wl[566].w[16]" 0.3515661683618227;
	setAttr ".wl[566].w[17]" 0.14525505785110471;
	setAttr ".wl[566].w[20]" 0.3768502629849112;
	setAttr ".wl[566].w[21]" 0.12335402981312357;
	setAttr -s 5 ".wl[567].w";
	setAttr ".wl[567].w[6]" 0.0015173527856699807;
	setAttr ".wl[567].w[16]" 0.16587607003380417;
	setAttr ".wl[567].w[17]" 0.081839635534289981;
	setAttr ".wl[567].w[20]" 0.4412406636209803;
	setAttr ".wl[567].w[21]" 0.30952627802525551;
	setAttr -s 5 ".wl[568].w";
	setAttr ".wl[568].w[6]" 0.070596286401564359;
	setAttr ".wl[568].w[7]" 0.021361020306022327;
	setAttr ".wl[568].w[16]" 0.21836348067161879;
	setAttr ".wl[568].w[20]" 0.64574263432166368;
	setAttr ".wl[568].w[21]" 0.043936578299130828;
	setAttr -s 5 ".wl[569].w";
	setAttr ".wl[569].w[4]" 0.079130546776978089;
	setAttr ".wl[569].w[5]" 0.082598135940480655;
	setAttr ".wl[569].w[6]" 0.39213253776716739;
	setAttr ".wl[569].w[16]" 0.049135090223644311;
	setAttr ".wl[569].w[20]" 0.39700368929172941;
	setAttr -s 5 ".wl[570].w";
	setAttr ".wl[570].w[1]" 0.39283557761433618;
	setAttr ".wl[570].w[4]" 0.085430372940693111;
	setAttr ".wl[570].w[5]" 0.082645029259951958;
	setAttr ".wl[570].w[6]" 0.070441586522557831;
	setAttr ".wl[570].w[40]" 0.368647433662461;
	setAttr -s 5 ".wl[571].w";
	setAttr ".wl[571].w[1]" 0.20826517000641481;
	setAttr ".wl[571].w[40]" 0.54529364634704303;
	setAttr ".wl[571].w[41]" 0.2036915819935996;
	setAttr ".wl[571].w[42]" 0.036600696658059033;
	setAttr ".wl[571].w[43]" 0.0061489049948835802;
	setAttr -s 5 ".wl[572].w";
	setAttr ".wl[572].w[1]" 0.00013262987742452371;
	setAttr ".wl[572].w[40]" 0.014411761810689866;
	setAttr ".wl[572].w[41]" 0.16480177500480128;
	setAttr ".wl[572].w[42]" 0.53154048375524232;
	setAttr ".wl[572].w[43]" 0.28911334955184204;
	setAttr -s 5 ".wl[573].w";
	setAttr ".wl[573].w[1]" 0.00017333834651594337;
	setAttr ".wl[573].w[40]" 0.022911615900894258;
	setAttr ".wl[573].w[41]" 0.16130528406083458;
	setAttr ".wl[573].w[42]" 0.51877384292852968;
	setAttr ".wl[573].w[43]" 0.29683591876322535;
	setAttr -s 5 ".wl[574].w";
	setAttr ".wl[574].w[1]" 0.0028332230096795646;
	setAttr ".wl[574].w[40]" 0.051210285523582054;
	setAttr ".wl[574].w[41]" 0.20251045687252195;
	setAttr ".wl[574].w[42]" 0.48951870719828561;
	setAttr ".wl[574].w[43]" 0.25392732739593094;
	setAttr -s 5 ".wl[575].w";
	setAttr ".wl[575].w[1]" 0.002694610626310298;
	setAttr ".wl[575].w[40]" 0.03213305102185577;
	setAttr ".wl[575].w[41]" 0.16154137300415555;
	setAttr ".wl[575].w[42]" 0.51712243814855841;
	setAttr ".wl[575].w[43]" 0.28650852719911996;
	setAttr -s 5 ".wl[576].w";
	setAttr ".wl[576].w[1]" 0.36625497020908354;
	setAttr ".wl[576].w[4]" 0.11907327681875675;
	setAttr ".wl[576].w[6]" 0.039276629211742291;
	setAttr ".wl[576].w[26]" 0.11802435621717104;
	setAttr ".wl[576].w[32]" 0.35737076754324637;
	setAttr -s 5 ".wl[577].w";
	setAttr ".wl[577].w[1]" 0.33889886329457647;
	setAttr ".wl[577].w[4]" 0.024404833672046388;
	setAttr ".wl[577].w[26]" 0.024403518272600351;
	setAttr ".wl[577].w[32]" 0.56879523832930046;
	setAttr ".wl[577].w[33]" 0.043497546431476256;
	setAttr -s 5 ".wl[578].w";
	setAttr ".wl[578].w[1]" 0.19752365636414912;
	setAttr ".wl[578].w[32]" 0.54991673267958074;
	setAttr ".wl[578].w[33]" 0.21188319298594724;
	setAttr ".wl[578].w[34]" 0.036071354742302449;
	setAttr ".wl[578].w[35]" 0.0046050632280204406;
	setAttr -s 5 ".wl[579].w";
	setAttr ".wl[579].w[4]" 0.065461411461126329;
	setAttr ".wl[579].w[6]" 0.4979230793446896;
	setAttr ".wl[579].w[16]" 0.1843699916581612;
	setAttr ".wl[579].w[24]" 0.19024614710016666;
	setAttr ".wl[579].w[26]" 0.06199937043585621;
	setAttr -s 5 ".wl[580].w";
	setAttr ".wl[580].w[1]" 0.093782807067247329;
	setAttr ".wl[580].w[4]" 0.26471011893798263;
	setAttr ".wl[580].w[6]" 0.28766809910524355;
	setAttr ".wl[580].w[26]" 0.26368726606162934;
	setAttr ".wl[580].w[32]" 0.090151708827896956;
	setAttr -s 5 ".wl[581].w";
	setAttr ".wl[581].w[1]" 0.14029412354369461;
	setAttr ".wl[581].w[4]" 0.29441779740190449;
	setAttr ".wl[581].w[6]" 0.18125218594738715;
	setAttr ".wl[581].w[26]" 0.28367491557138469;
	setAttr ".wl[581].w[32]" 0.10036097753562893;
	setAttr -s 5 ".wl[582].w";
	setAttr ".wl[582].w[6]" 0.073184398178246249;
	setAttr ".wl[582].w[7]" 0.020492994216000822;
	setAttr ".wl[582].w[16]" 0.21610930499644071;
	setAttr ".wl[582].w[17]" 0.035597116719182219;
	setAttr ".wl[582].w[24]" 0.65461618589012982;
	setAttr -s 5 ".wl[583].w";
	setAttr ".wl[583].w[4]" 0.012879762051372087;
	setAttr ".wl[583].w[6]" 0.28389026291124353;
	setAttr ".wl[583].w[7]" 0.046360118678052481;
	setAttr ".wl[583].w[16]" 0.48625920399198191;
	setAttr ".wl[583].w[24]" 0.17061065236734996;
	setAttr -s 5 ".wl[584].w";
	setAttr ".wl[584].w[6]" 0.0015133534814928127;
	setAttr ".wl[584].w[7]" 0.00078133819777014262;
	setAttr ".wl[584].w[16]" 0.17885776338081524;
	setAttr ".wl[584].w[17]" 0.12017052619331541;
	setAttr ".wl[584].w[24]" 0.69867701874660648;
	setAttr -s 5 ".wl[585].w";
	setAttr ".wl[585].w[6]" 0.013559272714577022;
	setAttr ".wl[585].w[7]" 0.0060321480643190659;
	setAttr ".wl[585].w[16]" 0.41665236957656676;
	setAttr ".wl[585].w[17]" 0.16518423776075353;
	setAttr ".wl[585].w[24]" 0.39857197188378374;
	setAttr -s 5 ".wl[586].w";
	setAttr ".wl[586].w[6]" 0.00025097190591265702;
	setAttr ".wl[586].w[16]" 0.14091647531283227;
	setAttr ".wl[586].w[17]" 0.12769905343777568;
	setAttr ".wl[586].w[23]" 0.00017156174951768081;
	setAttr ".wl[586].w[24]" 0.73096193759396177;
	setAttr -s 5 ".wl[587].w";
	setAttr ".wl[587].w[6]" 0.0002108051141733007;
	setAttr ".wl[587].w[7]" 0.00013774848051147188;
	setAttr ".wl[587].w[16]" 0.40389487558362752;
	setAttr ".wl[587].w[17]" 0.3696444234096522;
	setAttr ".wl[587].w[24]" 0.22611214741203545;
	setAttr -s 5 ".wl[588].w";
	setAttr ".wl[588].w[6]" 0.00078195434726626106;
	setAttr ".wl[588].w[16]" 0.037843326583198375;
	setAttr ".wl[588].w[17]" 0.024052384442183886;
	setAttr ".wl[588].w[23]" 0.0012228506952331976;
	setAttr ".wl[588].w[24]" 0.93609948393211828;
	setAttr -s 5 ".wl[589].w";
	setAttr ".wl[589].w[6]" 0.00072891670740842689;
	setAttr ".wl[589].w[16]" 0.29179543191237584;
	setAttr ".wl[589].w[17]" 0.2182862397351209;
	setAttr ".wl[589].w[23]" 0.00051585918894844231;
	setAttr ".wl[589].w[24]" 0.48867355245614652;
	setAttr -s 5 ".wl[590].w";
	setAttr ".wl[590].w[9]" 0.0094611839201344129;
	setAttr ".wl[590].w[14]" 0.29044421942143683;
	setAttr ".wl[590].w[15]" 0.27738048789908487;
	setAttr ".wl[590].w[22]" 0.2055056898313064;
	setAttr ".wl[590].w[23]" 0.21720841892803755;
	setAttr -s 5 ".wl[591].w";
	setAttr ".wl[591].w[15]" 0.13746494281778671;
	setAttr ".wl[591].w[16]" 0.058974326132658572;
	setAttr ".wl[591].w[22]" 0.10644214454191606;
	setAttr ".wl[591].w[23]" 0.56014196322830645;
	setAttr ".wl[591].w[24]" 0.13697662327933213;
	setAttr -s 5 ".wl[592].w";
	setAttr ".wl[592].w[14]" 0.16326125425418034;
	setAttr ".wl[592].w[15]" 0.43294903217387681;
	setAttr ".wl[592].w[16]" 0.059943560752989303;
	setAttr ".wl[592].w[22]" 0.11617136887356336;
	setAttr ".wl[592].w[23]" 0.22767478394539009;
	setAttr -s 5 ".wl[593].w";
	setAttr ".wl[593].w[14]" 0.32169779472536525;
	setAttr ".wl[593].w[15]" 0.67634748584933979;
	setAttr ".wl[593].w[16]" 0.001261225525295323;
	setAttr ".wl[593].w[22]" 0.00037144365506703491;
	setAttr ".wl[593].w[23]" 0.00032205024493241825;
	setAttr -s 5 ".wl[594].w";
	setAttr ".wl[594].w[8]" 4.7122449472690643e-006;
	setAttr ".wl[594].w[14]" 0.050182502342117095;
	setAttr ".wl[594].w[15]" 0.93827837479941334;
	setAttr ".wl[594].w[16]" 0.011529243728224356;
	setAttr ".wl[594].w[19]" 5.1668852979629959e-006;
	setAttr -s 5 ".wl[595].w";
	setAttr ".wl[595].w[14]" 0.17225993059920161;
	setAttr ".wl[595].w[15]" 0.78701891721487649;
	setAttr ".wl[595].w[16]" 0.026138279728020328;
	setAttr ".wl[595].w[22]" 0.0065485002482609514;
	setAttr ".wl[595].w[23]" 0.0080343722096407281;
	setAttr -s 5 ".wl[596].w";
	setAttr ".wl[596].w[14]" 0.026617541002544286;
	setAttr ".wl[596].w[15]" 0.85094770242131701;
	setAttr ".wl[596].w[16]" 0.1206499848708892;
	setAttr ".wl[596].w[22]" 0.00063189506407264925;
	setAttr ".wl[596].w[23]" 0.0011528766411768167;
	setAttr -s 5 ".wl[597].w";
	setAttr ".wl[597].w[6]" 2.7467546673380374e-007;
	setAttr ".wl[597].w[15]" 3.2983350315848583e-007;
	setAttr ".wl[597].w[16]" 0.72677917035599893;
	setAttr ".wl[597].w[17]" 0.27321779885276731;
	setAttr ".wl[597].w[24]" 2.4262822637901434e-006;
	setAttr -s 5 ".wl[598].w";
	setAttr ".wl[598].w[6]" 1.0285111205568573e-006;
	setAttr ".wl[598].w[15]" 8.6647118713393769e-007;
	setAttr ".wl[598].w[16]" 0.54583636145826753;
	setAttr ".wl[598].w[17]" 0.45407332318324062;
	setAttr ".wl[598].w[24]" 8.8420376184219785e-005;
	setAttr -s 5 ".wl[599].w";
	setAttr ".wl[599].w[6]" 0.00016208086701255257;
	setAttr ".wl[599].w[15]" 0.00025214532672812666;
	setAttr ".wl[599].w[16]" 0.85190417158982246;
	setAttr ".wl[599].w[17]" 0.14663130054991558;
	setAttr ".wl[599].w[24]" 0.0010503016665213236;
	setAttr -s 5 ".wl[600].w";
	setAttr ".wl[600].w[6]" 0.00010217973337678264;
	setAttr ".wl[600].w[7]" 6.1215816880493034e-005;
	setAttr ".wl[600].w[16]" 0.57559037000840019;
	setAttr ".wl[600].w[17]" 0.40912794497540012;
	setAttr ".wl[600].w[24]" 0.015118289465942365;
	setAttr -s 5 ".wl[601].w";
	setAttr ".wl[601].w[16]" 0.51666391588066296;
	setAttr ".wl[601].w[17]" 0.48333354764278752;
	setAttr ".wl[601].w[20]" 8.700692920558464e-007;
	setAttr ".wl[601].w[21]" 8.2506334670244174e-007;
	setAttr ".wl[601].w[24]" 8.4134391071301098e-007;
	setAttr -s 5 ".wl[602].w";
	setAttr ".wl[602].w[6]" 3.3150519954350127e-006;
	setAttr ".wl[602].w[15]" 2.0175822342883085e-006;
	setAttr ".wl[602].w[16]" 0.63092078149921416;
	setAttr ".wl[602].w[17]" 0.36896936895952787;
	setAttr ".wl[602].w[24]" 0.00010451690702823614;
	setAttr -s 5 ".wl[603].w";
	setAttr ".wl[603].w[6]" 4.0751147930416699e-005;
	setAttr ".wl[603].w[7]" 2.4518520558823872e-005;
	setAttr ".wl[603].w[16]" 0.53464132482839666;
	setAttr ".wl[603].w[17]" 0.45932364923907465;
	setAttr ".wl[603].w[24]" 0.0059697562640395226;
	setAttr -s 5 ".wl[604].w";
	setAttr ".wl[604].w[15]" 9.9821779928263214e-007;
	setAttr ".wl[604].w[16]" 0.79658991794757272;
	setAttr ".wl[604].w[17]" 0.20340544253717918;
	setAttr ".wl[604].w[20]" 2.0034882246084644e-006;
	setAttr ".wl[604].w[21]" 1.6378092243508555e-006;
	setAttr -s 5 ".wl[605].w";
	setAttr ".wl[605].w[5]" 0.000490045672708104;
	setAttr ".wl[605].w[6]" 0.0094857262334185153;
	setAttr ".wl[605].w[7]" 0.0011629242339104781;
	setAttr ".wl[605].w[16]" 0.96450401848268674;
	setAttr ".wl[605].w[17]" 0.024357285377276286;
	setAttr -s 5 ".wl[606].w";
	setAttr ".wl[606].w[6]" 0.0010054217656958501;
	setAttr ".wl[606].w[7]" 0.00047272280340967127;
	setAttr ".wl[606].w[16]" 0.87075450899158613;
	setAttr ".wl[606].w[17]" 0.1216391802112588;
	setAttr ".wl[606].w[24]" 0.0061281662280496243;
	setAttr -s 5 ".wl[607].w";
	setAttr ".wl[607].w[4]" 0.0037025245644326165;
	setAttr ".wl[607].w[6]" 0.037589312612850555;
	setAttr ".wl[607].w[7]" 0.0040313215861449182;
	setAttr ".wl[607].w[16]" 0.95137878941965492;
	setAttr ".wl[607].w[26]" 0.0032980518169171526;
	setAttr -s 5 ".wl[608].w";
	setAttr ".wl[608].w[4]" 0.089187686532264734;
	setAttr ".wl[608].w[5]" 0.020312634935032301;
	setAttr ".wl[608].w[6]" 0.20504727878438755;
	setAttr ".wl[608].w[16]" 0.59778596179929733;
	setAttr ".wl[608].w[26]" 0.087666437949017961;
	setAttr -s 5 ".wl[609].w";
	setAttr ".wl[609].w[4]" 0.016019429063507912;
	setAttr ".wl[609].w[6]" 0.14414722777040348;
	setAttr ".wl[609].w[7]" 0.017107531472336832;
	setAttr ".wl[609].w[16]" 0.80755852749425683;
	setAttr ".wl[609].w[26]" 0.015167284199494955;
	setAttr -s 5 ".wl[610].w";
	setAttr ".wl[610].w[1]" 0.12637500781578304;
	setAttr ".wl[610].w[4]" 0.20849500868262519;
	setAttr ".wl[610].w[6]" 0.15582590644907152;
	setAttr ".wl[610].w[16]" 0.30211242625540946;
	setAttr ".wl[610].w[26]" 0.20719165079711072;
	setAttr -s 5 ".wl[611].w";
	setAttr ".wl[611].w[1]" 0.37900269219279381;
	setAttr ".wl[611].w[4]" 0.11753945754830206;
	setAttr ".wl[611].w[26]" 0.11715721624576328;
	setAttr ".wl[611].w[32]" 0.31196815719705501;
	setAttr ".wl[611].w[40]" 0.074332476816086013;
	setAttr -s 5 ".wl[612].w";
	setAttr ".wl[612].w[1]" 0.15716083831234362;
	setAttr ".wl[612].w[4]" 0.24437739367147204;
	setAttr ".wl[612].w[6]" 0.22551040871500794;
	setAttr ".wl[612].w[26]" 0.24339453741466716;
	setAttr ".wl[612].w[32]" 0.12955682188650922;
	setAttr -s 5 ".wl[613].w";
	setAttr ".wl[613].w[1]" 0.45565319230335366;
	setAttr ".wl[613].w[4]" 0.022857572080938231;
	setAttr ".wl[613].w[26]" 0.022760267400880933;
	setAttr ".wl[613].w[32]" 0.2425109416321328;
	setAttr ".wl[613].w[40]" 0.25621802658269444;
	setAttr -s 5 ".wl[614].w";
	setAttr ".wl[614].w[1]" 0.43374475483501934;
	setAttr ".wl[614].w[2]" 0.0022076794802150272;
	setAttr ".wl[614].w[32]" 0.45971691782902518;
	setAttr ".wl[614].w[33]" 0.02405695677257768;
	setAttr ".wl[614].w[40]" 0.080273691083162804;
	setAttr -s 5 ".wl[615].w";
	setAttr ".wl[615].w[1]" 0.41663326584946464;
	setAttr ".wl[615].w[4]" 0.021398952002850292;
	setAttr ".wl[615].w[26]" 0.021307281584022147;
	setAttr ".wl[615].w[32]" 0.5044179796081012;
	setAttr ".wl[615].w[40]" 0.036242520955561672;
	setAttr -s 5 ".wl[616].w";
	setAttr ".wl[616].w[0]" 0.0041734633572892603;
	setAttr ".wl[616].w[1]" 0.55890962929228505;
	setAttr ".wl[616].w[32]" 0.22825054829903091;
	setAttr ".wl[616].w[40]" 0.20762204754084362;
	setAttr ".wl[616].w[41]" 0.0010443115105512445;
	setAttr -s 5 ".wl[617].w";
	setAttr ".wl[617].w[0]" 0.019733229275844793;
	setAttr ".wl[617].w[1]" 0.81966564686414967;
	setAttr ".wl[617].w[32]" 0.13164967267327402;
	setAttr ".wl[617].w[36]" 0.010751664460456146;
	setAttr ".wl[617].w[40]" 0.018199786726275351;
	setAttr -s 5 ".wl[618].w";
	setAttr ".wl[618].w[1]" 0.31786174866368266;
	setAttr ".wl[618].w[32]" 0.49095142205174813;
	setAttr ".wl[618].w[33]" 0.15051345966125998;
	setAttr ".wl[618].w[34]" 0.029433331277247607;
	setAttr ".wl[618].w[40]" 0.011240038346061874;
	setAttr -s 5 ".wl[619].w";
	setAttr ".wl[619].w[0]" 0.083371397235878872;
	setAttr ".wl[619].w[1]" 0.84170743684223881;
	setAttr ".wl[619].w[32]" 0.031117886277462321;
	setAttr ".wl[619].w[36]" 0.02062437677491534;
	setAttr ".wl[619].w[40]" 0.023178902869504591;
	setAttr -s 5 ".wl[620].w";
	setAttr ".wl[620].w[0]" 0.10900892156853373;
	setAttr ".wl[620].w[1]" 0.70980284570559926;
	setAttr ".wl[620].w[32]" 0.010063774107884954;
	setAttr ".wl[620].w[36]" 0.15111043293686532;
	setAttr ".wl[620].w[37]" 0.020014025681116751;
	setAttr -s 5 ".wl[621].w";
	setAttr ".wl[621].w[0]" 0.025385560023659919;
	setAttr ".wl[621].w[1]" 0.77807094028060475;
	setAttr ".wl[621].w[32]" 0.085186413034002401;
	setAttr ".wl[621].w[36]" 0.10460338668622209;
	setAttr ".wl[621].w[37]" 0.0067536999755108632;
	setAttr -s 5 ".wl[622].w";
	setAttr ".wl[622].w[8]" 0.016182107705678593;
	setAttr ".wl[622].w[9]" 0.14688781684454022;
	setAttr ".wl[622].w[14]" 0.65812739215367488;
	setAttr ".wl[622].w[18]" 0.093430436453401974;
	setAttr ".wl[622].w[22]" 0.08537224684270428;
	setAttr -s 5 ".wl[623].w";
	setAttr ".wl[623].w[9]" 0.010173178067096573;
	setAttr ".wl[623].w[14]" 0.66750077116210171;
	setAttr ".wl[623].w[15]" 0.2659990268900998;
	setAttr ".wl[623].w[22]" 0.048719404098426788;
	setAttr ".wl[623].w[23]" 0.0076076197822751912;
	setAttr -s 5 ".wl[624].w";
	setAttr ".wl[624].w[8]" 0.02329019850397351;
	setAttr ".wl[624].w[9]" 0.2030077882072123;
	setAttr ".wl[624].w[10]" 0.020872736006169255;
	setAttr ".wl[624].w[14]" 0.38139815839018409;
	setAttr ".wl[624].w[22]" 0.37143111889246078;
	setAttr -s 5 ".wl[625].w";
	setAttr ".wl[625].w[9]" 0.023344795097430947;
	setAttr ".wl[625].w[14]" 0.48884640667563534;
	setAttr ".wl[625].w[15]" 0.15642875585815369;
	setAttr ".wl[625].w[22]" 0.26899233140810175;
	setAttr ".wl[625].w[23]" 0.062387710960678237;
	setAttr -s 5 ".wl[626].w";
	setAttr ".wl[626].w[9]" 0.0014910715231563668;
	setAttr ".wl[626].w[14]" 0.57164822121265213;
	setAttr ".wl[626].w[15]" 0.42383409823526325;
	setAttr ".wl[626].w[18]" 0.0011863569762765095;
	setAttr ".wl[626].w[22]" 0.0018402520526518073;
	setAttr -s 5 ".wl[627].w";
	setAttr ".wl[627].w[9]" 0.002908396934677255;
	setAttr ".wl[627].w[14]" 0.49894170718471326;
	setAttr ".wl[627].w[15]" 0.47137568989743883;
	setAttr ".wl[627].w[22]" 0.016555034938281147;
	setAttr ".wl[627].w[23]" 0.01021917104488964;
	setAttr -s 5 ".wl[628].w";
	setAttr ".wl[628].w[14]" 0.34437067769133745;
	setAttr ".wl[628].w[15]" 0.58236082107649056;
	setAttr ".wl[628].w[16]" 0.0083981206401138875;
	setAttr ".wl[628].w[22]" 0.031528160064114644;
	setAttr ".wl[628].w[23]" 0.033342220527943341;
	setAttr -s 5 ".wl[629].w";
	setAttr ".wl[629].w[14]" 0.076683707880905991;
	setAttr ".wl[629].w[15]" 0.57849892130967306;
	setAttr ".wl[629].w[16]" 0.17048566424891765;
	setAttr ".wl[629].w[22]" 0.04488889612741967;
	setAttr ".wl[629].w[23]" 0.12944281043308364;
	setAttr -s 5 ".wl[630].w";
	setAttr ".wl[630].w[6]" 0.0001090167646075025;
	setAttr ".wl[630].w[7]" 7.2247960532900547e-005;
	setAttr ".wl[630].w[16]" 0.49032390705606599;
	setAttr ".wl[630].w[17]" 0.43607175149273553;
	setAttr ".wl[630].w[24]" 0.073423076726058065;
	setAttr -s 5 ".wl[631].w";
	setAttr ".wl[631].w[6]" 0.0022967075899140879;
	setAttr ".wl[631].w[16]" 0.48544632872040683;
	setAttr ".wl[631].w[17]" 0.21103269099063202;
	setAttr ".wl[631].w[23]" 0.0028365618566653433;
	setAttr ".wl[631].w[24]" 0.2983877108423818;
	setAttr -s 5 ".wl[632].w";
	setAttr ".wl[632].w[6]" 0.0015603571718564751;
	setAttr ".wl[632].w[7]" 0.0007715401401005525;
	setAttr ".wl[632].w[16]" 0.54733792347079502;
	setAttr ".wl[632].w[17]" 0.36502102851506152;
	setAttr ".wl[632].w[24]" 0.085309150702186184;
	setAttr -s 5 ".wl[633].w";
	setAttr ".wl[633].w[6]" 0.092511238619024272;
	setAttr ".wl[633].w[7]" 0.019730327259920862;
	setAttr ".wl[633].w[16]" 0.78743549474854435;
	setAttr ".wl[633].w[17]" 0.032448057518632223;
	setAttr ".wl[633].w[24]" 0.067874881853878355;
	setAttr -s 5 ".wl[634].w";
	setAttr ".wl[634].w[4]" 0.15797092783024064;
	setAttr ".wl[634].w[6]" 0.3930205881652995;
	setAttr ".wl[634].w[7]" 0.032318488287364548;
	setAttr ".wl[634].w[16]" 0.26032787930513696;
	setAttr ".wl[634].w[26]" 0.15636211641195835;
	setAttr -s 5 ".wl[635].w";
	setAttr ".wl[635].w[1]" 0.33849022508724552;
	setAttr ".wl[635].w[4]" 0.14000021339402366;
	setAttr ".wl[635].w[6]" 0.042643446549060125;
	setAttr ".wl[635].w[26]" 0.1398601553839027;
	setAttr ".wl[635].w[32]" 0.33900595958576785;
	setAttr -s 5 ".wl[636].w";
	setAttr ".wl[636].w[1]" 0.11862457003950422;
	setAttr ".wl[636].w[32]" 0.5286010784916606;
	setAttr ".wl[636].w[33]" 0.27666670200514237;
	setAttr ".wl[636].w[34]" 0.065570093892229286;
	setAttr ".wl[636].w[35]" 0.010537555571463594;
	setAttr -s 5 ".wl[637].w";
	setAttr ".wl[637].w[1]" 0.0034519145230332989;
	setAttr ".wl[637].w[32]" 0.082547609969597022;
	setAttr ".wl[637].w[33]" 0.17300828524084658;
	setAttr ".wl[637].w[34]" 0.5293068761794727;
	setAttr ".wl[637].w[35]" 0.2116853140870503;
	setAttr -s 5 ".wl[638].w";
	setAttr ".wl[638].w[1]" 0.0025506679743859386;
	setAttr ".wl[638].w[32]" 0.044541658557689594;
	setAttr ".wl[638].w[33]" 0.15530229635188691;
	setAttr ".wl[638].w[34]" 0.58503609379653077;
	setAttr ".wl[638].w[35]" 0.21256928331950681;
	setAttr -s 5 ".wl[639].w";
	setAttr ".wl[639].w[1]" 0.00023006308150070798;
	setAttr ".wl[639].w[32]" 0.028983786674290728;
	setAttr ".wl[639].w[33]" 0.1522193791245553;
	setAttr ".wl[639].w[34]" 0.56018348657229899;
	setAttr ".wl[639].w[35]" 0.25838328454735415;
	setAttr -s 5 ".wl[640].w";
	setAttr ".wl[640].w[1]" 0.0001451507171359031;
	setAttr ".wl[640].w[32]" 0.025034727645420408;
	setAttr ".wl[640].w[33]" 0.16261328970845718;
	setAttr ".wl[640].w[34]" 0.56785313178215968;
	setAttr ".wl[640].w[35]" 0.24435370014682672;
	setAttr -s 5 ".wl[641].w";
	setAttr ".wl[641].w[1]" 0.32049940572147739;
	setAttr ".wl[641].w[32]" 0.07933379544473626;
	setAttr ".wl[641].w[36]" 0.40974421498079361;
	setAttr ".wl[641].w[37]" 0.15757158399986118;
	setAttr ".wl[641].w[38]" 0.032850999853131536;
	setAttr -s 5 ".wl[642].w";
	setAttr ".wl[642].w[1]" 0.3554734768510735;
	setAttr ".wl[642].w[32]" 0.40100165999304838;
	setAttr ".wl[642].w[33]" 0.16048903577823356;
	setAttr ".wl[642].w[34]" 0.035066036036922342;
	setAttr ".wl[642].w[36]" 0.047969791340722268;
	setAttr -s 5 ".wl[643].w";
	setAttr ".wl[643].w[9]" 0.013869501990969564;
	setAttr ".wl[643].w[14]" 0.36688317589621317;
	setAttr ".wl[643].w[15]" 0.24737165923367216;
	setAttr ".wl[643].w[22]" 0.22979989986671912;
	setAttr ".wl[643].w[23]" 0.14207576301242597;
	setAttr -s 5 ".wl[644].w";
	setAttr ".wl[644].w[9]" 0.011518334836198784;
	setAttr ".wl[644].w[14]" 0.048556251487379298;
	setAttr ".wl[644].w[15]" 0.0078390656686074846;
	setAttr ".wl[644].w[22]" 0.70909265585928394;
	setAttr ".wl[644].w[23]" 0.2229936921485306;
	setAttr -s 5 ".wl[645].w";
	setAttr ".wl[645].w[14]" 0.34421824440145604;
	setAttr ".wl[645].w[15]" 0.65228968309993995;
	setAttr ".wl[645].w[16]" 0.0019844885472728381;
	setAttr ".wl[645].w[18]" 0.00087226627516114898;
	setAttr ".wl[645].w[19]" 0.00063531767616997899;
	setAttr -s 5 ".wl[646].w";
	setAttr ".wl[646].w[14]" 0.027871860997908341;
	setAttr ".wl[646].w[15]" 0.91135052207125877;
	setAttr ".wl[646].w[16]" 0.060070815886615718;
	setAttr ".wl[646].w[18]" 0.00024891288981313041;
	setAttr ".wl[646].w[19]" 0.00045788815440408781;
	setAttr -s 5 ".wl[647].w";
	setAttr ".wl[647].w[15]" 4.229882777788307e-007;
	setAttr ".wl[647].w[16]" 0.54777450433475461;
	setAttr ".wl[647].w[17]" 0.45217118029457104;
	setAttr ".wl[647].w[20]" 2.7857293933658928e-005;
	setAttr ".wl[647].w[21]" 2.6035088462868274e-005;
	setAttr -s 5 ".wl[648].w";
	setAttr ".wl[648].w[15]" 1.8027923221248747e-007;
	setAttr ".wl[648].w[16]" 0.89331700258006319;
	setAttr ".wl[648].w[17]" 0.10668199271837826;
	setAttr ".wl[648].w[20]" 4.958375942147079e-007;
	setAttr ".wl[648].w[21]" 3.2858473217319866e-007;
	setAttr -s 5 ".wl[649].w";
	setAttr ".wl[649].w[6]" 2.6583935699008955e-006;
	setAttr ".wl[649].w[16]" 0.64365023941670574;
	setAttr ".wl[649].w[17]" 0.35601060459660155;
	setAttr ".wl[649].w[20]" 0.00018105439715236516;
	setAttr ".wl[649].w[21]" 0.00015544319597046054;
	setAttr -s 5 ".wl[650].w";
	setAttr ".wl[650].w[5]" 0.00048832975444876227;
	setAttr ".wl[650].w[6]" 0.0090206406629204285;
	setAttr ".wl[650].w[7]" 0.00096507876014593878;
	setAttr ".wl[650].w[16]" 0.96626039640132644;
	setAttr ".wl[650].w[17]" 0.023265554421158414;
	setAttr -s 5 ".wl[651].w";
	setAttr ".wl[651].w[4]" 0.086003570855978123;
	setAttr ".wl[651].w[5]" 0.025982477657678315;
	setAttr ".wl[651].w[6]" 0.18704522825091055;
	setAttr ".wl[651].w[16]" 0.61663663026539928;
	setAttr ".wl[651].w[26]" 0.08433209297003387;
	setAttr -s 5 ".wl[652].w";
	setAttr ".wl[652].w[1]" 0.39928465333151603;
	setAttr ".wl[652].w[4]" 0.096289440879808355;
	setAttr ".wl[652].w[26]" 0.094660580065451416;
	setAttr ".wl[652].w[32]" 0.12751029076715634;
	setAttr ".wl[652].w[40]" 0.28225503495606769;
	setAttr -s 5 ".wl[653].w";
	setAttr ".wl[653].w[1]" 0.44817552197298494;
	setAttr ".wl[653].w[2]" 0.0018360308153544491;
	setAttr ".wl[653].w[32]" 0.081624283584966151;
	setAttr ".wl[653].w[40]" 0.43860017216607411;
	setAttr ".wl[653].w[41]" 0.029763991460620504;
	setAttr -s 5 ".wl[654].w";
	setAttr ".wl[654].w[1]" 0.32681910325054109;
	setAttr ".wl[654].w[32]" 0.012335829450889563;
	setAttr ".wl[654].w[40]" 0.45250687530628741;
	setAttr ".wl[654].w[41]" 0.17985862990704291;
	setAttr ".wl[654].w[42]" 0.028479562085239257;
	setAttr -s 5 ".wl[655].w";
	setAttr ".wl[655].w[0]" 0.028472955729913468;
	setAttr ".wl[655].w[1]" 0.82092943337710267;
	setAttr ".wl[655].w[32]" 0.025050159641144609;
	setAttr ".wl[655].w[40]" 0.1124695711697762;
	setAttr ".wl[655].w[44]" 0.013077880082063103;
	setAttr -s 5 ".wl[656].w";
	setAttr ".wl[656].w[0]" 0.21217677725715076;
	setAttr ".wl[656].w[1]" 0.58938998787119767;
	setAttr ".wl[656].w[40]" 0.0065269516207408914;
	setAttr ".wl[656].w[44]" 0.16734805650423132;
	setAttr ".wl[656].w[45]" 0.024558226746679245;
	setAttr -s 5 ".wl[657].w";
	setAttr ".wl[657].w[9]" 0.026319691483686954;
	setAttr ".wl[657].w[14]" 0.64531090913462463;
	setAttr ".wl[657].w[15]" 0.14956593685023151;
	setAttr ".wl[657].w[18]" 0.14870828186580534;
	setAttr ".wl[657].w[19]" 0.030095180665651498;
	setAttr -s 5 ".wl[658].w";
	setAttr ".wl[658].w[8]" 0.023688710538367741;
	setAttr ".wl[658].w[9]" 0.21702499853519672;
	setAttr ".wl[658].w[10]" 0.016768006676440874;
	setAttr ".wl[658].w[14]" 0.36694484877633543;
	setAttr ".wl[658].w[18]" 0.37557343547365918;
	setAttr -s 5 ".wl[659].w";
	setAttr ".wl[659].w[15]" 0.190096882011423;
	setAttr ".wl[659].w[16]" 0.26258186449957704;
	setAttr ".wl[659].w[18]" 0.0087238065821989962;
	setAttr ".wl[659].w[19]" 0.23632687257037743;
	setAttr ".wl[659].w[20]" 0.30227057433642357;
	setAttr -s 5 ".wl[660].w";
	setAttr ".wl[660].w[14]" 0.0210979256297106;
	setAttr ".wl[660].w[15]" 0.4595913558994999;
	setAttr ".wl[660].w[16]" 0.3551212758839149;
	setAttr ".wl[660].w[19]" 0.08821456227179425;
	setAttr ".wl[660].w[20]" 0.075974880315080415;
	setAttr -s 5 ".wl[661].w";
	setAttr ".wl[661].w[15]" 0.14101148485297116;
	setAttr ".wl[661].w[16]" 0.10046690053153075;
	setAttr ".wl[661].w[18]" 0.03730148720519353;
	setAttr ".wl[661].w[19]" 0.43814477182823119;
	setAttr ".wl[661].w[20]" 0.28307535558207342;
	setAttr -s 5 ".wl[662].w";
	setAttr ".wl[662].w[15]" 0.0059273338308530764;
	setAttr ".wl[662].w[16]" 0.0099465668092708626;
	setAttr ".wl[662].w[18]" 0.0018147820668147176;
	setAttr ".wl[662].w[19]" 0.34971744813042061;
	setAttr ".wl[662].w[20]" 0.63259386916264082;
	setAttr -s 5 ".wl[663].w";
	setAttr ".wl[663].w[15]" 0.00030991218226273786;
	setAttr ".wl[663].w[16]" 0.00021171244909716922;
	setAttr ".wl[663].w[18]" 0.012806147903905234;
	setAttr ".wl[663].w[19]" 0.71835669390086232;
	setAttr ".wl[663].w[20]" 0.2683155335638725;
	setAttr -s 5 ".wl[664].w";
	setAttr ".wl[664].w[15]" 0.0096181107627422747;
	setAttr ".wl[664].w[16]" 0.0065827475834383982;
	setAttr ".wl[664].w[22]" 0.027075149311302744;
	setAttr ".wl[664].w[23]" 0.67712926360896697;
	setAttr ".wl[664].w[24]" 0.27959472873354951;
	setAttr -s 5 ".wl[665].w";
	setAttr ".wl[665].w[7]" 7.8797574425743264e-006;
	setAttr ".wl[665].w[8]" 7.4600740404912416e-006;
	setAttr ".wl[665].w[22]" 0.00567670339976864;
	setAttr ".wl[665].w[23]" 0.75516855734667032;
	setAttr ".wl[665].w[24]" 0.23913939942207796;
	setAttr -s 5 ".wl[666].w";
	setAttr ".wl[666].w[15]" 3.616300259664657e-005;
	setAttr ".wl[666].w[16]" 4.0955434728039168e-005;
	setAttr ".wl[666].w[22]" 0.00024214582273101323;
	setAttr ".wl[666].w[23]" 0.47478308565931115;
	setAttr ".wl[666].w[24]" 0.52489765008063327;
	setAttr -s 5 ".wl[667].w";
	setAttr ".wl[667].w[15]" 0.19731909458082786;
	setAttr ".wl[667].w[16]" 0.16452287492870549;
	setAttr ".wl[667].w[22]" 0.041413324840578553;
	setAttr ".wl[667].w[23]" 0.39076484816269075;
	setAttr ".wl[667].w[24]" 0.20597985748719758;
	setAttr -s 5 ".wl[668].w";
	setAttr ".wl[668].w[15]" 0.020877911735606273;
	setAttr ".wl[668].w[16]" 0.025369797775575516;
	setAttr ".wl[668].w[22]" 0.0070446136654467887;
	setAttr ".wl[668].w[23]" 0.42025146716305495;
	setAttr ".wl[668].w[24]" 0.52645620966031648;
	setAttr -s 5 ".wl[669].w";
	setAttr ".wl[669].w[14]" 0.015736563337933409;
	setAttr ".wl[669].w[15]" 0.56054613267804065;
	setAttr ".wl[669].w[16]" 0.36848095427281752;
	setAttr ".wl[669].w[23]" 0.038463917953553604;
	setAttr ".wl[669].w[24]" 0.016772431757654947;
	setAttr -s 5 ".wl[670].w";
	setAttr ".wl[670].w[15]" 0.23435032236830722;
	setAttr ".wl[670].w[16]" 0.35891056385766601;
	setAttr ".wl[670].w[22]" 0.010124709402849603;
	setAttr ".wl[670].w[23]" 0.17686907947233388;
	setAttr ".wl[670].w[24]" 0.21974532489884324;
	setAttr -s 5 ".wl[671].w";
	setAttr ".wl[671].w[14]" 0.00083416281724805834;
	setAttr ".wl[671].w[15]" 0.64401611595743136;
	setAttr ".wl[671].w[16]" 0.35505550708807149;
	setAttr ".wl[671].w[19]" 4.5520017914225541e-005;
	setAttr ".wl[671].w[20]" 4.8694119334901829e-005;
	setAttr -s 5 ".wl[672].w";
	setAttr ".wl[672].w[14]" 0.0010832990670205738;
	setAttr ".wl[672].w[15]" 0.34204602560784897;
	setAttr ".wl[672].w[16]" 0.64732566064035213;
	setAttr ".wl[672].w[23]" 0.0051187431489351475;
	setAttr ".wl[672].w[24]" 0.004426271535843046;
	setAttr -s 5 ".wl[673].w";
	setAttr ".wl[673].w[14]" 0.015691545885016336;
	setAttr ".wl[673].w[15]" 0.58484036843769194;
	setAttr ".wl[673].w[16]" 0.38105158247981685;
	setAttr ".wl[673].w[19]" 0.010548450302173938;
	setAttr ".wl[673].w[20]" 0.0078680528953007454;
	setAttr -s 5 ".wl[674].w";
	setAttr ".wl[674].w[14]" 0.00076514611574919796;
	setAttr ".wl[674].w[15]" 0.32097207091091884;
	setAttr ".wl[674].w[16]" 0.6734249006686811;
	setAttr ".wl[674].w[19]" 0.0021078532138822294;
	setAttr ".wl[674].w[20]" 0.0027300290907686913;
	setAttr -s 5 ".wl[675].w";
	setAttr ".wl[675].w[14]" 0.0067877015474595995;
	setAttr ".wl[675].w[15]" 0.3634733868045068;
	setAttr ".wl[675].w[16]" 0.50108682479319377;
	setAttr ".wl[675].w[19]" 0.054718225243049999;
	setAttr ".wl[675].w[20]" 0.073933861611789831;
	setAttr -s 5 ".wl[676].w";
	setAttr ".wl[676].w[15]" 0.02339507423675187;
	setAttr ".wl[676].w[16]" 0.1709256815490782;
	setAttr ".wl[676].w[19]" 0.059576537787289052;
	setAttr ".wl[676].w[20]" 0.72829918689942597;
	setAttr ".wl[676].w[21]" 0.017803519527455017;
	setAttr -s 5 ".wl[677].w";
	setAttr ".wl[677].w[15]" 0.20914520091637928;
	setAttr ".wl[677].w[16]" 0.48268676915004616;
	setAttr ".wl[677].w[17]" 0.0060565490547486401;
	setAttr ".wl[677].w[19]" 0.094584657108372647;
	setAttr ".wl[677].w[20]" 0.20752682377045323;
	setAttr -s 5 ".wl[678].w";
	setAttr ".wl[678].w[6]" 0.0020988598500164928;
	setAttr ".wl[678].w[15]" 0.015840708106041376;
	setAttr ".wl[678].w[16]" 0.051898165075223678;
	setAttr ".wl[678].w[19]" 0.17256126826856577;
	setAttr ".wl[678].w[20]" 0.75760099870015274;
	setAttr -s 5 ".wl[679].w";
	setAttr ".wl[679].w[6]" 0.00013124422428039212;
	setAttr ".wl[679].w[16]" 0.00065642098297263938;
	setAttr ".wl[679].w[19]" 0.024290533175609658;
	setAttr ".wl[679].w[20]" 0.97399558422595656;
	setAttr ".wl[679].w[21]" 0.0009262173911807008;
	setAttr -s 5 ".wl[680].w";
	setAttr ".wl[680].w[6]" 1.3812915164345073e-005;
	setAttr ".wl[680].w[7]" 1.8873358738025404e-005;
	setAttr ".wl[680].w[18]" 1.1759128371822155e-005;
	setAttr ".wl[680].w[19]" 0.1407584104384377;
	setAttr ".wl[680].w[20]" 0.85919714415928816;
	setAttr -s 5 ".wl[681].w";
	setAttr ".wl[681].w[7]" 0.0010830241903150627;
	setAttr ".wl[681].w[15]" 0.0036506127828702831;
	setAttr ".wl[681].w[16]" 0.0060527073098371777;
	setAttr ".wl[681].w[23]" 0.17726775299928424;
	setAttr ".wl[681].w[24]" 0.81194590271769318;
	setAttr -s 5 ".wl[682].w";
	setAttr ".wl[682].w[6]" 1.934994695999003e-006;
	setAttr ".wl[682].w[7]" 2.0538966482483895e-006;
	setAttr ".wl[682].w[16]" 7.4445470649732592e-007;
	setAttr ".wl[682].w[23]" 0.099182499462755841;
	setAttr ".wl[682].w[24]" 0.9008127671911933;
	setAttr -s 5 ".wl[683].w";
	setAttr ".wl[683].w[6]" 0.00029734455812691172;
	setAttr ".wl[683].w[7]" 0.00023519332274186594;
	setAttr ".wl[683].w[16]" 0.00067388030406267767;
	setAttr ".wl[683].w[23]" 0.027931183639502411;
	setAttr ".wl[683].w[24]" 0.97086239817556597;
	setAttr -s 5 ".wl[684].w";
	setAttr ".wl[684].w[6]" 0.007185542219886076;
	setAttr ".wl[684].w[15]" 0.096764638263363123;
	setAttr ".wl[684].w[16]" 0.2609248822834514;
	setAttr ".wl[684].w[23]" 0.14510084606060311;
	setAttr ".wl[684].w[24]" 0.4900240911726963;
	setAttr -s 5 ".wl[685].w";
	setAttr ".wl[685].w[15]" 0.022512592176814252;
	setAttr ".wl[685].w[16]" 0.13930428267584147;
	setAttr ".wl[685].w[17]" 0.015042456554874189;
	setAttr ".wl[685].w[23]" 0.070224334960814372;
	setAttr ".wl[685].w[24]" 0.75291633363165567;
	setAttr -s 5 ".wl[686].w";
	setAttr ".wl[686].w[6]" 0.0021500226559657532;
	setAttr ".wl[686].w[15]" 0.14657628288709543;
	setAttr ".wl[686].w[16]" 0.81156546019996756;
	setAttr ".wl[686].w[23]" 0.0089083034338001254;
	setAttr ".wl[686].w[24]" 0.030799930823171274;
	setAttr -s 5 ".wl[687].w";
	setAttr ".wl[687].w[15]" 0.051103730191609291;
	setAttr ".wl[687].w[16]" 0.79862568304375436;
	setAttr ".wl[687].w[17]" 0.021008544563361386;
	setAttr ".wl[687].w[23]" 0.01342895750659572;
	setAttr ".wl[687].w[24]" 0.11583308469467929;
	setAttr -s 5 ".wl[688].w";
	setAttr ".wl[688].w[7]" 2.5987176829772434e-005;
	setAttr ".wl[688].w[15]" 0.080450434714366262;
	setAttr ".wl[688].w[16]" 0.91942125873492753;
	setAttr ".wl[688].w[19]" 4.4702136056659808e-005;
	setAttr ".wl[688].w[20]" 5.7617237819581628e-005;
	setAttr -s 5 ".wl[689].w";
	setAttr ".wl[689].w[6]" 9.4487644529683997e-005;
	setAttr ".wl[689].w[15]" 0.013365086314951882;
	setAttr ".wl[689].w[16]" 0.9862007284113905;
	setAttr ".wl[689].w[17]" 0.00019640269156916533;
	setAttr ".wl[689].w[24]" 0.00014329493755874646;
	setAttr -s 5 ".wl[690].w";
	setAttr ".wl[690].w[15]" 0.13626558757565374;
	setAttr ".wl[690].w[16]" 0.83670325545701152;
	setAttr ".wl[690].w[17]" 0.0043215054298734405;
	setAttr ".wl[690].w[19]" 0.0065448197699593171;
	setAttr ".wl[690].w[20]" 0.016164831767502077;
	setAttr -s 5 ".wl[691].w";
	setAttr ".wl[691].w[15]" 0.0051147811599524485;
	setAttr ".wl[691].w[16]" 0.99138186351706958;
	setAttr ".wl[691].w[17]" 0.0032133359652326099;
	setAttr ".wl[691].w[19]" 5.9903797139785392e-005;
	setAttr ".wl[691].w[20]" 0.00023011556060559258;
	setAttr -s 5 ".wl[692].w";
	setAttr ".wl[692].w[15]" 0.061347096042812729;
	setAttr ".wl[692].w[16]" 0.82521435060505055;
	setAttr ".wl[692].w[17]" 0.028576295432551777;
	setAttr ".wl[692].w[19]" 0.010199411502768393;
	setAttr ".wl[692].w[20]" 0.074662846416816711;
	setAttr -s 5 ".wl[693].w";
	setAttr ".wl[693].w[15]" 0.0187666894064435;
	setAttr ".wl[693].w[16]" 0.63099315148194834;
	setAttr ".wl[693].w[17]" 0.088718476360837864;
	setAttr ".wl[693].w[20]" 0.2221174148486037;
	setAttr ".wl[693].w[21]" 0.039404267902166785;
	setAttr -s 5 ".wl[694].w";
	setAttr ".wl[694].w[16]" 0.051846771411049063;
	setAttr ".wl[694].w[17]" 0.0093497050052364292;
	setAttr ".wl[694].w[19]" 0.010003118222001615;
	setAttr ".wl[694].w[20]" 0.8737261368135768;
	setAttr ".wl[694].w[21]" 0.055074268548135998;
	setAttr -s 5 ".wl[695].w";
	setAttr ".wl[695].w[6]" 4.0177171214777717e-006;
	setAttr ".wl[695].w[16]" 2.9960035409062155e-006;
	setAttr ".wl[695].w[19]" 0.00024677116612668485;
	setAttr ".wl[695].w[20]" 0.98663039269723207;
	setAttr ".wl[695].w[21]" 0.013115822415978853;
	setAttr -s 5 ".wl[696].w";
	setAttr ".wl[696].w[6]" 0.00069989453212819833;
	setAttr ".wl[696].w[16]" 0.0079746910616530879;
	setAttr ".wl[696].w[17]" 0.0035799895675818318;
	setAttr ".wl[696].w[23]" 0.0054066208852565061;
	setAttr ".wl[696].w[24]" 0.98233880395338025;
	setAttr -s 5 ".wl[697].w";
	setAttr ".wl[697].w[6]" 9.2877514334050466e-006;
	setAttr ".wl[697].w[7]" 6.4394190822812472e-006;
	setAttr ".wl[697].w[16]" 5.1556864175469154e-006;
	setAttr ".wl[697].w[23]" 0.00051167038432783235;
	setAttr ".wl[697].w[24]" 0.999467446758739;
	setAttr -s 5 ".wl[698].w";
	setAttr ".wl[698].w[15]" 0.0094672206087321742;
	setAttr ".wl[698].w[16]" 0.31320757646073211;
	setAttr ".wl[698].w[17]" 0.077852783378356494;
	setAttr ".wl[698].w[23]" 0.018137622948139996;
	setAttr ".wl[698].w[24]" 0.58133479660403942;
	setAttr -s 5 ".wl[699].w";
	setAttr ".wl[699].w[15]" 0.0062093940255437833;
	setAttr ".wl[699].w[16]" 0.90259684031480569;
	setAttr ".wl[699].w[17]" 0.062377594474760635;
	setAttr ".wl[699].w[23]" 0.0017281390863044801;
	setAttr ".wl[699].w[24]" 0.027088032098585416;
	setAttr -s 5 ".wl[700].w";
	setAttr ".wl[700].w[6]" 1.9878241637397843e-007;
	setAttr ".wl[700].w[7]" 1.0776874200238157e-007;
	setAttr ".wl[700].w[15]" 6.7857421916415448e-006;
	setAttr ".wl[700].w[16]" 0.98615040675117849;
	setAttr ".wl[700].w[17]" 0.013842500955471569;
	setAttr -s 5 ".wl[701].w";
	setAttr ".wl[701].w[15]" 0.0022365419008936339;
	setAttr ".wl[701].w[16]" 0.9498007724344486;
	setAttr ".wl[701].w[17]" 0.045276439516926843;
	setAttr ".wl[701].w[20]" 0.0021031715234324055;
	setAttr ".wl[701].w[21]" 0.00058307462429851018;
	setAttr -s 5 ".wl[702].w";
	setAttr ".wl[702].w[9]" 0.0027077061367957764;
	setAttr ".wl[702].w[10]" 0.0021715013244858858;
	setAttr ".wl[702].w[14]" 0.0028668411438592515;
	setAttr ".wl[702].w[18]" 0.57381684451814863;
	setAttr ".wl[702].w[19]" 0.41843710687671032;
	setAttr -s 5 ".wl[703].w";
	setAttr ".wl[703].w[8]" 0.013179232700476424;
	setAttr ".wl[703].w[9]" 0.16111749851295293;
	setAttr ".wl[703].w[10]" 0.072573133990628064;
	setAttr ".wl[703].w[14]" 0.084082953999027571;
	setAttr ".wl[703].w[18]" 0.66904718079691494;
	setAttr -s 5 ".wl[704].w";
	setAttr ".wl[704].w[7]" 3.3201761796904717e-006;
	setAttr ".wl[704].w[8]" 2.5388193526187542e-006;
	setAttr ".wl[704].w[18]" 0.034223257852255537;
	setAttr ".wl[704].w[19]" 0.937159658070705;
	setAttr ".wl[704].w[20]" 0.028611225081507104;
	setAttr -s 5 ".wl[705].w";
	setAttr ".wl[705].w[12]" 1.1377792470929182e-008;
	setAttr ".wl[705].w[16]" 2.4075232860281237e-008;
	setAttr ".wl[705].w[17]" 2.211694935974143e-008;
	setAttr ".wl[705].w[20]" 0.58109324922956607;
	setAttr ".wl[705].w[21]" 0.41890669320045926;
	setAttr -s 5 ".wl[706].w";
	setAttr ".wl[706].w[6]" 9.373886639801249e-008;
	setAttr ".wl[706].w[16]" 9.9553183010102304e-008;
	setAttr ".wl[706].w[19]" 2.5385553146603299e-007;
	setAttr ".wl[706].w[20]" 0.90508146460438621;
	setAttr ".wl[706].w[21]" 0.094918088248033022;
	setAttr -s 5 ".wl[707].w";
	setAttr ".wl[707].w[12]" 5.6842513432435236e-008;
	setAttr ".wl[707].w[16]" 1.0696217730790943e-007;
	setAttr ".wl[707].w[17]" 9.7483987385268152e-008;
	setAttr ".wl[707].w[20]" 0.6874358674001082;
	setAttr ".wl[707].w[21]" 0.31256387131121371;
	setAttr -s 5 ".wl[708].w";
	setAttr ".wl[708].w[5]" 4.9945509716264046e-005;
	setAttr ".wl[708].w[6]" 0.0049048732573696201;
	setAttr ".wl[708].w[7]" 0.00020311050380507649;
	setAttr ".wl[708].w[20]" 0.96983331954192109;
	setAttr ".wl[708].w[21]" 0.025008751187187997;
	setAttr -s 5 ".wl[709].w";
	setAttr ".wl[709].w[3]" 0.012431423791485147;
	setAttr ".wl[709].w[4]" 0.028046219544745246;
	setAttr ".wl[709].w[5]" 0.041372210976197941;
	setAttr ".wl[709].w[6]" 0.23757016447535878;
	setAttr ".wl[709].w[20]" 0.68057998121221297;
	setAttr -s 5 ".wl[710].w";
	setAttr ".wl[710].w[1]" 0.3668618788020328;
	setAttr ".wl[710].w[2]" 0.13156981179245328;
	setAttr ".wl[710].w[5]" 0.081778763503371155;
	setAttr ".wl[710].w[6]" 0.096243355089703872;
	setAttr ".wl[710].w[44]" 0.32354619081243896;
	setAttr -s 5 ".wl[711].w";
	setAttr ".wl[711].w[1]" 0.12030519279058108;
	setAttr ".wl[711].w[44]" 0.47058934230349797;
	setAttr ".wl[711].w[45]" 0.27522507360439152;
	setAttr ".wl[711].w[46]" 0.11484827410837532;
	setAttr ".wl[711].w[47]" 0.019032117193154067;
	setAttr -s 5 ".wl[712].w";
	setAttr ".wl[712].w[1]" 0.0012981686677316468;
	setAttr ".wl[712].w[44]" 0.034582935725918439;
	setAttr ".wl[712].w[45]" 0.16130011819495568;
	setAttr ".wl[712].w[46]" 0.56003432432357536;
	setAttr ".wl[712].w[47]" 0.2427844530878189;
	setAttr -s 5 ".wl[713].w";
	setAttr ".wl[713].w[1]" 0.0030592164399824416;
	setAttr ".wl[713].w[44]" 0.041578649380985273;
	setAttr ".wl[713].w[45]" 0.19266485523502497;
	setAttr ".wl[713].w[46]" 0.50642639195817818;
	setAttr ".wl[713].w[47]" 0.25627088698582895;
	setAttr -s 5 ".wl[714].w";
	setAttr ".wl[714].w[1]" 0.002634271812613291;
	setAttr ".wl[714].w[44]" 0.044636759568640612;
	setAttr ".wl[714].w[45]" 0.18744057752766688;
	setAttr ".wl[714].w[46]" 0.52169224110170276;
	setAttr ".wl[714].w[47]" 0.24359614998937656;
	setAttr -s 5 ".wl[715].w";
	setAttr ".wl[715].w[1]" 0.00051991713350451804;
	setAttr ".wl[715].w[44]" 0.013258983064909219;
	setAttr ".wl[715].w[45]" 0.13652547702025364;
	setAttr ".wl[715].w[46]" 0.55367714002093305;
	setAttr ".wl[715].w[47]" 0.29601848276039949;
	setAttr -s 5 ".wl[716].w";
	setAttr ".wl[716].w[1]" 0.32519737846918534;
	setAttr ".wl[716].w[2]" 0.14841819314934374;
	setAttr ".wl[716].w[4]" 0.14783614857972241;
	setAttr ".wl[716].w[6]" 0.11102028125140165;
	setAttr ".wl[716].w[36]" 0.26752799855034698;
	setAttr -s 5 ".wl[717].w";
	setAttr ".wl[717].w[1]" 0.17449000781431093;
	setAttr ".wl[717].w[36]" 0.48452274428445929;
	setAttr ".wl[717].w[37]" 0.24242970876394523;
	setAttr ".wl[717].w[38]" 0.081866514512340199;
	setAttr ".wl[717].w[39]" 0.016691024624944397;
	setAttr -s 5 ".wl[718].w";
	setAttr ".wl[718].w[4]" 0.0387333629809124;
	setAttr ".wl[718].w[5]" 0.042588489486352285;
	setAttr ".wl[718].w[6]" 0.42310546491385964;
	setAttr ".wl[718].w[24]" 0.4790462150518876;
	setAttr ".wl[718].w[27]" 0.016526467566988105;
	setAttr -s 5 ".wl[719].w";
	setAttr ".wl[719].w[1]" 0.12443521140307663;
	setAttr ".wl[719].w[4]" 0.26206470908793317;
	setAttr ".wl[719].w[5]" 0.14222053047466263;
	setAttr ".wl[719].w[6]" 0.28936066900263624;
	setAttr ".wl[719].w[26]" 0.18191888003169143;
	setAttr -s 5 ".wl[720].w";
	setAttr ".wl[720].w[1]" 0.12313300886957004;
	setAttr ".wl[720].w[4]" 0.27998403143806655;
	setAttr ".wl[720].w[5]" 0.13185934902323362;
	setAttr ".wl[720].w[6]" 0.26851656798658707;
	setAttr ".wl[720].w[27]" 0.19650704268254285;
	setAttr -s 5 ".wl[721].w";
	setAttr ".wl[721].w[5]" 8.6563437398882228e-005;
	setAttr ".wl[721].w[6]" 0.0094179838761844891;
	setAttr ".wl[721].w[7]" 0.00033261415969169152;
	setAttr ".wl[721].w[23]" 2.197414283468739e-005;
	setAttr ".wl[721].w[24]" 0.99014086438389026;
	setAttr -s 5 ".wl[722].w";
	setAttr ".wl[722].w[12]" 3.2488501781903044e-006;
	setAttr ".wl[722].w[13]" 3.2488356119500532e-006;
	setAttr ".wl[722].w[16]" 2.106050145317921e-006;
	setAttr ".wl[722].w[17]" 2.0177927150878177e-006;
	setAttr ".wl[722].w[24]" 0.9999893784713495;
	setAttr -s 5 ".wl[723].w";
	setAttr ".wl[723].w[12]" 9.9950524760815843e-007;
	setAttr ".wl[723].w[13]" 9.9889878279148019e-007;
	setAttr ".wl[723].w[16]" 7.4828707982929568e-007;
	setAttr ".wl[723].w[17]" 7.17909137620769e-007;
	setAttr ".wl[723].w[24]" 0.9999965353997522;
	setAttr -s 5 ".wl[724].w";
	setAttr ".wl[724].w[6]" 6.1079759152765927e-008;
	setAttr ".wl[724].w[7]" 4.2399895615863646e-008;
	setAttr ".wl[724].w[12]" 1.237628684158318e-008;
	setAttr ".wl[724].w[23]" 1.2355530750218928e-006;
	setAttr ".wl[724].w[24]" 0.99999864859098331;
	setAttr -s 5 ".wl[725].w";
	setAttr ".wl[725].w[9]" 0.00041799429688219752;
	setAttr ".wl[725].w[10]" 6.2872738134573202e-005;
	setAttr ".wl[725].w[14]" 7.0025563822679823e-005;
	setAttr ".wl[725].w[22]" 0.4245626048598225;
	setAttr ".wl[725].w[23]" 0.57488650254133811;
	setAttr -s 5 ".wl[726].w";
	setAttr ".wl[726].w[7]" 3.8047556995967558e-006;
	setAttr ".wl[726].w[8]" 4.3797905541456043e-006;
	setAttr ".wl[726].w[22]" 0.049505327133415079;
	setAttr ".wl[726].w[23]" 0.89673325189537323;
	setAttr ".wl[726].w[24]" 0.053753236424958051;
	setAttr -s 5 ".wl[727].w";
	setAttr ".wl[727].w[0]" 0.061423436546065219;
	setAttr ".wl[727].w[1]" 0.40090179206440424;
	setAttr ".wl[727].w[36]" 0.33996826620341691;
	setAttr ".wl[727].w[37]" 0.15612418199590761;
	setAttr ".wl[727].w[38]" 0.041582323190206105;
	setAttr -s 5 ".wl[728].w";
	setAttr ".wl[728].w[0]" 0.35436869241842667;
	setAttr ".wl[728].w[1]" 0.56400907069628381;
	setAttr ".wl[728].w[36]" 0.03503062373254099;
	setAttr ".wl[728].w[40]" 0.00087818473773768752;
	setAttr ".wl[728].w[44]" 0.045713428415010859;
	setAttr -s 5 ".wl[729].w";
	setAttr ".wl[729].w[8]" 0.11542331496272851;
	setAttr ".wl[729].w[9]" 0.44711164802467629;
	setAttr ".wl[729].w[10]" 0.17466595684434888;
	setAttr ".wl[729].w[14]" 0.15555688158465963;
	setAttr ".wl[729].w[22]" 0.10724219858358677;
	setAttr -s 5 ".wl[730].w";
	setAttr ".wl[730].w[9]" 0.14418535900599835;
	setAttr ".wl[730].w[10]" 0.097388230514812962;
	setAttr ".wl[730].w[14]" 0.085953435163111783;
	setAttr ".wl[730].w[22]" 0.65032994655830667;
	setAttr ".wl[730].w[23]" 0.022143028757770387;
	setAttr -s 5 ".wl[731].w";
	setAttr ".wl[731].w[1]" 0.00040292234145737063;
	setAttr ".wl[731].w[36]" 0.016007384205825141;
	setAttr ".wl[731].w[37]" 0.15330645183905939;
	setAttr ".wl[731].w[38]" 0.52792363355476113;
	setAttr ".wl[731].w[39]" 0.30235960805889694;
	setAttr -s 5 ".wl[732].w";
	setAttr ".wl[732].w[1]" 0.0029317254531956573;
	setAttr ".wl[732].w[36]" 0.058881813572440864;
	setAttr ".wl[732].w[37]" 0.18932886829911746;
	setAttr ".wl[732].w[38]" 0.4862807673850954;
	setAttr ".wl[732].w[39]" 0.26257682529015042;
	setAttr -s 5 ".wl[733].w";
	setAttr ".wl[733].w[1]" 0.0034336504946457661;
	setAttr ".wl[733].w[36]" 0.062230513395783622;
	setAttr ".wl[733].w[37]" 0.18005745510558202;
	setAttr ".wl[733].w[38]" 0.48734215444489326;
	setAttr ".wl[733].w[39]" 0.26693622655909532;
	setAttr -s 5 ".wl[734].w";
	setAttr ".wl[734].w[1]" 0.001324791831526324;
	setAttr ".wl[734].w[36]" 0.056922953333096167;
	setAttr ".wl[734].w[37]" 0.14707254882393977;
	setAttr ".wl[734].w[38]" 0.52678611507583617;
	setAttr ".wl[734].w[39]" 0.26789359093560156;
	setAttr -s 5 ".wl[735].w";
	setAttr ".wl[735].w[0]" 0.087098362887208014;
	setAttr ".wl[735].w[1]" 0.34567921740548668;
	setAttr ".wl[735].w[44]" 0.33721374843784002;
	setAttr ".wl[735].w[45]" 0.18600183179437868;
	setAttr ".wl[735].w[46]" 0.044006839475086552;
	setAttr -s 5 ".wl[736].w";
	setAttr ".wl[736].w[7]" 1.1402499724282657e-005;
	setAttr ".wl[736].w[8]" 5.4400574894124712e-006;
	setAttr ".wl[736].w[18]" 0.00021495957337928559;
	setAttr ".wl[736].w[19]" 0.43791210484644927;
	setAttr ".wl[736].w[20]" 0.56185609302295769;
	setAttr -s 5 ".wl[737].w";
	setAttr ".wl[737].w[6]" 1.2591591087880239e-007;
	setAttr ".wl[737].w[7]" 1.3416559143677888e-007;
	setAttr ".wl[737].w[22]" 6.8806570717921016e-008;
	setAttr ".wl[737].w[23]" 0.26551993790753564;
	setAttr ".wl[737].w[24]" 0.73447973320439131;
	setAttr -s 5 ".wl[738].w";
	setAttr ".wl[738].w[6]" 1.5579528104435667e-007;
	setAttr ".wl[738].w[7]" 1.2440603800007146e-007;
	setAttr ".wl[738].w[19]" 0.0048805906937082599;
	setAttr ".wl[738].w[20]" 0.99509724205322947;
	setAttr ".wl[738].w[21]" 2.1887051743274466e-005;
	setAttr -s 5 ".wl[739].w";
	setAttr ".wl[739].w[6]" 1.9407472178506528e-007;
	setAttr ".wl[739].w[7]" 1.7128302451416477e-007;
	setAttr ".wl[739].w[22]" 2.199473334440053e-008;
	setAttr ".wl[739].w[23]" 0.013957484220796837;
	setAttr ".wl[739].w[24]" 0.98604212842672345;
	setAttr -s 5 ".wl[740].w";
	setAttr ".wl[740].w[1]" 0.028581021298874527;
	setAttr ".wl[740].w[48]" 0.27473727190262259;
	setAttr ".wl[740].w[49]" 0.46357003341402903;
	setAttr ".wl[740].w[50]" 0.19857402720043235;
	setAttr ".wl[740].w[51]" 0.034537646184041412;
	setAttr -s 5 ".wl[741].w";
	setAttr ".wl[741].w[1]" 0.06446585511111444;
	setAttr ".wl[741].w[48]" 0.28693741425411085;
	setAttr ".wl[741].w[49]" 0.43438046498882527;
	setAttr ".wl[741].w[50]" 0.18625832996819372;
	setAttr ".wl[741].w[51]" 0.027957935677755685;
	setAttr -s 5 ".wl[742].w";
	setAttr ".wl[742].w[1]" 0.14408518988379859;
	setAttr ".wl[742].w[48]" 0.33352806124753298;
	setAttr ".wl[742].w[49]" 0.35102261061424145;
	setAttr ".wl[742].w[50]" 0.14670897643315928;
	setAttr ".wl[742].w[51]" 0.024655161821267629;
	setAttr -s 5 ".wl[743].w";
	setAttr ".wl[743].w[1]" 0.045585288570271748;
	setAttr ".wl[743].w[48]" 0.26461482622504678;
	setAttr ".wl[743].w[49]" 0.36048260818095967;
	setAttr ".wl[743].w[50]" 0.23587791721241527;
	setAttr ".wl[743].w[51]" 0.0934393598113063;
	setAttr -s 5 ".wl[744].w";
	setAttr ".wl[744].w[1]" 0.16058994385493897;
	setAttr ".wl[744].w[28]" 0.37168501807119519;
	setAttr ".wl[744].w[29]" 0.29415810881375137;
	setAttr ".wl[744].w[30]" 0.14795761763169255;
	setAttr ".wl[744].w[31]" 0.025609311628421862;
	setAttr -s 5 ".wl[745].w";
	setAttr ".wl[745].w[1]" 0.068470426573236806;
	setAttr ".wl[745].w[28]" 0.31417158112337989;
	setAttr ".wl[745].w[29]" 0.40037911528709264;
	setAttr ".wl[745].w[30]" 0.19010577631294995;
	setAttr ".wl[745].w[31]" 0.026873100703340713;
	setAttr -s 5 ".wl[746].w";
	setAttr ".wl[746].w[1]" 0.027360534060403674;
	setAttr ".wl[746].w[28]" 0.2764450874448085;
	setAttr ".wl[746].w[29]" 0.47003916574108129;
	setAttr ".wl[746].w[30]" 0.19577454688497162;
	setAttr ".wl[746].w[31]" 0.03038066586873504;
	setAttr -s 5 ".wl[747].w";
	setAttr ".wl[747].w[1]" 0.04656940229816877;
	setAttr ".wl[747].w[28]" 0.26811376772137546;
	setAttr ".wl[747].w[29]" 0.3558976176078838;
	setAttr ".wl[747].w[30]" 0.23591786842442428;
	setAttr ".wl[747].w[31]" 0.093501343948147686;
	setAttr -s 5 ".wl[748].w";
	setAttr ".wl[748].w[1]" 0.023755432462891007;
	setAttr ".wl[748].w[40]" 0.27514000512541348;
	setAttr ".wl[748].w[41]" 0.48035750084794521;
	setAttr ".wl[748].w[42]" 0.18530151316616514;
	setAttr ".wl[748].w[43]" 0.035445548397585229;
	setAttr -s 5 ".wl[749].w";
	setAttr ".wl[749].w[1]" 0.037723598251699367;
	setAttr ".wl[749].w[40]" 0.25087235620309761;
	setAttr ".wl[749].w[41]" 0.4007683179490687;
	setAttr ".wl[749].w[42]" 0.23328098247279905;
	setAttr ".wl[749].w[43]" 0.077354745123335303;
	setAttr -s 5 ".wl[750].w";
	setAttr ".wl[750].w[1]" 0.16117923106855922;
	setAttr ".wl[750].w[40]" 0.29914477429319047;
	setAttr ".wl[750].w[41]" 0.37152272010093473;
	setAttr ".wl[750].w[42]" 0.14139551769372571;
	setAttr ".wl[750].w[43]" 0.026757756843589945;
	setAttr -s 5 ".wl[751].w";
	setAttr ".wl[751].w[1]" 0.069882702742443556;
	setAttr ".wl[751].w[40]" 0.28739794250922968;
	setAttr ".wl[751].w[41]" 0.42625140437042458;
	setAttr ".wl[751].w[42]" 0.17461667708840214;
	setAttr ".wl[751].w[43]" 0.041851273289499918;
	setAttr -s 5 ".wl[752].w";
	setAttr ".wl[752].w[1]" 0.1576243318396405;
	setAttr ".wl[752].w[32]" 0.3537636310908302;
	setAttr ".wl[752].w[33]" 0.32422088904183055;
	setAttr ".wl[752].w[34]" 0.14710265045748847;
	setAttr ".wl[752].w[35]" 0.017288497570210469;
	setAttr -s 5 ".wl[753].w";
	setAttr ".wl[753].w[1]" 0.039945988676029311;
	setAttr ".wl[753].w[32]" 0.30775829814793826;
	setAttr ".wl[753].w[33]" 0.33243770936555461;
	setAttr ".wl[753].w[34]" 0.24738520119474647;
	setAttr ".wl[753].w[35]" 0.072472802615731302;
	setAttr -s 5 ".wl[754].w";
	setAttr ".wl[754].w[1]" 0.025153205693828999;
	setAttr ".wl[754].w[32]" 0.28864378957418613;
	setAttr ".wl[754].w[33]" 0.46432728282731101;
	setAttr ".wl[754].w[34]" 0.18892132227187261;
	setAttr ".wl[754].w[35]" 0.032954399632801362;
	setAttr -s 5 ".wl[755].w";
	setAttr ".wl[755].w[1]" 0.063431185284884964;
	setAttr ".wl[755].w[32]" 0.29049646232207682;
	setAttr ".wl[755].w[33]" 0.43435133151980615;
	setAttr ".wl[755].w[34]" 0.18752241638951683;
	setAttr ".wl[755].w[35]" 0.024198604483715261;
	setAttr -s 5 ".wl[756].w";
	setAttr ".wl[756].w[1]" 0.1285918201600228;
	setAttr ".wl[756].w[44]" 0.30795930393122944;
	setAttr ".wl[756].w[45]" 0.37658961852240175;
	setAttr ".wl[756].w[46]" 0.16255132380191525;
	setAttr ".wl[756].w[47]" 0.024307933584430581;
	setAttr -s 5 ".wl[757].w";
	setAttr ".wl[757].w[1]" 0.13174743236852759;
	setAttr ".wl[757].w[44]" 0.32320450541088031;
	setAttr ".wl[757].w[45]" 0.35651127324043025;
	setAttr ".wl[757].w[46]" 0.1655076360525779;
	setAttr ".wl[757].w[47]" 0.023029152927584038;
	setAttr -s 5 ".wl[758].w";
	setAttr ".wl[758].w[1]" 0.036020663488325388;
	setAttr ".wl[758].w[44]" 0.23032089510768872;
	setAttr ".wl[758].w[45]" 0.35913087846101172;
	setAttr ".wl[758].w[46]" 0.2914124361744771;
	setAttr ".wl[758].w[47]" 0.08311512676849718;
	setAttr -s 5 ".wl[759].w";
	setAttr ".wl[759].w[1]" 0.038051726830990194;
	setAttr ".wl[759].w[44]" 0.22513435320461367;
	setAttr ".wl[759].w[45]" 0.36710611525101838;
	setAttr ".wl[759].w[46]" 0.27753657239419643;
	setAttr ".wl[759].w[47]" 0.09217123231918127;
	setAttr -s 5 ".wl[760].w";
	setAttr ".wl[760].w[1]" 0.0457260560565413;
	setAttr ".wl[760].w[36]" 0.24512153278221344;
	setAttr ".wl[760].w[37]" 0.36718419457510981;
	setAttr ".wl[760].w[38]" 0.25282543098762056;
	setAttr ".wl[760].w[39]" 0.089142785598514837;
	setAttr -s 5 ".wl[761].w";
	setAttr ".wl[761].w[1]" 0.04682193780491295;
	setAttr ".wl[761].w[36]" 0.24686611004575795;
	setAttr ".wl[761].w[37]" 0.35389654389649233;
	setAttr ".wl[761].w[38]" 0.25956041075450847;
	setAttr ".wl[761].w[39]" 0.092854997498328443;
	setAttr -s 5 ".wl[762].w";
	setAttr ".wl[762].w[1]" 0.14872710392091326;
	setAttr ".wl[762].w[36]" 0.36070325167174649;
	setAttr ".wl[762].w[37]" 0.30170632705431472;
	setAttr ".wl[762].w[38]" 0.15582172837401267;
	setAttr ".wl[762].w[39]" 0.033041588979012992;
	setAttr -s 5 ".wl[763].w";
	setAttr ".wl[763].w[1]" 0.14617029304587364;
	setAttr ".wl[763].w[36]" 0.35663941366747914;
	setAttr ".wl[763].w[37]" 0.31416569165042613;
	setAttr ".wl[763].w[38]" 0.15170796124612088;
	setAttr ".wl[763].w[39]" 0.03131664039010023;
	setAttr -s 5 ".wl[764].w";
	setAttr ".wl[764].w[4]" 0.26275530280809273;
	setAttr ".wl[764].w[5]" 0.128476026718851;
	setAttr ".wl[764].w[6]" 0.34891959936738726;
	setAttr ".wl[764].w[24]" 0.030501813201692516;
	setAttr ".wl[764].w[27]" 0.22934725790397653;
	setAttr -s 5 ".wl[765].w";
	setAttr ".wl[765].w[1]" 0.1460515085197564;
	setAttr ".wl[765].w[2]" 0.072593704062320422;
	setAttr ".wl[765].w[4]" 0.35986393120856375;
	setAttr ".wl[765].w[27]" 0.35632561010542874;
	setAttr ".wl[765].w[28]" 0.065165246103930693;
	setAttr -s 5 ".wl[766].w";
	setAttr ".wl[766].w[2]" 0.017947268203971051;
	setAttr ".wl[766].w[4]" 0.4717928136112805;
	setAttr ".wl[766].w[5]" 0.021429009752534534;
	setAttr ".wl[766].w[6]" 0.020190090176954643;
	setAttr ".wl[766].w[27]" 0.46864081825525938;
	setAttr -s 5 ".wl[767].w";
	setAttr ".wl[767].w[1]" 0.14863579802111127;
	setAttr ".wl[767].w[2]" 0.11735798097203523;
	setAttr ".wl[767].w[3]" 0.070015297594382492;
	setAttr ".wl[767].w[4]" 0.36317898753816874;
	setAttr ".wl[767].w[27]" 0.30081193587430216;
	setAttr -s 5 ".wl[768].w";
	setAttr ".wl[768].w[1]" 0.092802248222706898;
	setAttr ".wl[768].w[2]" 0.097438802343924685;
	setAttr ".wl[768].w[3]" 0.058889113085430676;
	setAttr ".wl[768].w[4]" 0.38725644564088796;
	setAttr ".wl[768].w[27]" 0.36361339070704984;
	setAttr -s 5 ".wl[769].w";
	setAttr ".wl[769].w[4]" 0.24506110169859344;
	setAttr ".wl[769].w[5]" 0.16417931527521495;
	setAttr ".wl[769].w[6]" 0.38030136656386743;
	setAttr ".wl[769].w[24]" 0.034826806182200583;
	setAttr ".wl[769].w[27]" 0.17563141028012372;
	setAttr -s 5 ".wl[770].w";
	setAttr ".wl[770].w[3]" 0.05165023924678859;
	setAttr ".wl[770].w[4]" 0.48402487342024542;
	setAttr ".wl[770].w[5]" 0.042948602733682936;
	setAttr ".wl[770].w[26]" 0.054801061539051017;
	setAttr ".wl[770].w[27]" 0.36657522306023194;
	setAttr -s 5 ".wl[771].w";
	setAttr ".wl[771].w[3]" 0.02007870801566464;
	setAttr ".wl[771].w[4]" 0.30301433324915206;
	setAttr ".wl[771].w[5]" 0.15623868531191756;
	setAttr ".wl[771].w[6]" 0.26441448611261137;
	setAttr ".wl[771].w[27]" 0.25625378731065451;
	setAttr -s 5 ".wl[772].w";
	setAttr ".wl[772].w[4]" 0.26636510451364642;
	setAttr ".wl[772].w[5]" 0.12765698315152485;
	setAttr ".wl[772].w[6]" 0.33452427923979655;
	setAttr ".wl[772].w[24]" 0.034639152964072557;
	setAttr ".wl[772].w[26]" 0.23681448013095951;
	setAttr -s 5 ".wl[773].w";
	setAttr ".wl[773].w[4]" 0.2350065811220112;
	setAttr ".wl[773].w[5]" 0.16836925030536945;
	setAttr ".wl[773].w[6]" 0.39883623492679338;
	setAttr ".wl[773].w[26]" 0.16606209478628456;
	setAttr ".wl[773].w[27]" 0.031725838859541541;
	setAttr -s 5 ".wl[774].w";
	setAttr ".wl[774].w[3]" 0.018734291351249006;
	setAttr ".wl[774].w[4]" 0.30494047275196423;
	setAttr ".wl[774].w[5]" 0.15519299389339222;
	setAttr ".wl[774].w[6]" 0.26429221337915265;
	setAttr ".wl[774].w[26]" 0.25684002862424177;
	setAttr -s 5 ".wl[775].w";
	setAttr ".wl[775].w[1]" 0.14926454057936964;
	setAttr ".wl[775].w[2]" 0.13922262380472469;
	setAttr ".wl[775].w[3]" 0.082355716616850219;
	setAttr ".wl[775].w[4]" 0.34314780258043937;
	setAttr ".wl[775].w[26]" 0.28600931641861616;
	setAttr -s 5 ".wl[776].w";
	setAttr ".wl[776].w[2]" 0.049260058106786062;
	setAttr ".wl[776].w[3]" 0.056690783022392222;
	setAttr ".wl[776].w[4]" 0.48511080262818884;
	setAttr ".wl[776].w[5]" 0.047693779798260283;
	setAttr ".wl[776].w[26]" 0.36124457644437252;
	setAttr -s 5 ".wl[777].w";
	setAttr ".wl[777].w[1]" 0.14353938449187656;
	setAttr ".wl[777].w[2]" 0.072973318145401353;
	setAttr ".wl[777].w[4]" 0.35943304606979387;
	setAttr ".wl[777].w[26]" 0.35669984882795092;
	setAttr ".wl[777].w[32]" 0.067354402464977245;
	setAttr -s 5 ".wl[778].w";
	setAttr ".wl[778].w[1]" 0.091569054561180252;
	setAttr ".wl[778].w[2]" 0.10266851726169868;
	setAttr ".wl[778].w[3]" 0.064571291299527461;
	setAttr ".wl[778].w[4]" 0.37993930642781742;
	setAttr ".wl[778].w[26]" 0.36125183044977616;
	setAttr -s 5 ".wl[779].w";
	setAttr ".wl[779].w[2]" 0.018230655878985338;
	setAttr ".wl[779].w[3]" 0.017131782723316717;
	setAttr ".wl[779].w[4]" 0.47445516503824031;
	setAttr ".wl[779].w[5]" 0.01836883587413907;
	setAttr ".wl[779].w[26]" 0.47181356048531853;
	setAttr -s 5 ".wl[780].w";
	setAttr ".wl[780].w[3]" 0.012621576194400375;
	setAttr ".wl[780].w[4]" 0.47205204998839351;
	setAttr ".wl[780].w[5]" 0.029007622056303282;
	setAttr ".wl[780].w[6]" 0.019887187010936527;
	setAttr ".wl[780].w[27]" 0.46643156474996633;
	setAttr -s 5 ".wl[781].w";
	setAttr ".wl[781].w[1]" 0.009332616727849791;
	setAttr ".wl[781].w[2]" 0.021596214307813246;
	setAttr ".wl[781].w[3]" 0.020019562410824789;
	setAttr ".wl[781].w[4]" 0.47696397775062038;
	setAttr ".wl[781].w[27]" 0.47208762880289179;
	setAttr -s 5 ".wl[782].w";
	setAttr ".wl[782].w[2]" 0.0035721967786491084;
	setAttr ".wl[782].w[3]" 0.0055402288769045901;
	setAttr ".wl[782].w[4]" 0.49421618015900765;
	setAttr ".wl[782].w[5]" 0.0024552140264309389;
	setAttr ".wl[782].w[27]" 0.49421618015900765;
	setAttr -s 5 ".wl[783].w";
	setAttr ".wl[783].w[2]" 0.052379352418100392;
	setAttr ".wl[783].w[3]" 0.054541753724116508;
	setAttr ".wl[783].w[4]" 0.4781183725263019;
	setAttr ".wl[783].w[26]" 0.032885438719489075;
	setAttr ".wl[783].w[27]" 0.38207508261199213;
	setAttr -s 5 ".wl[784].w";
	setAttr ".wl[784].w[2]" 0.030411666785573048;
	setAttr ".wl[784].w[3]" 0.031084046311738615;
	setAttr ".wl[784].w[4]" 0.48439007596230249;
	setAttr ".wl[784].w[26]" 0.010955006933177658;
	setAttr ".wl[784].w[27]" 0.44315920400720821;
	setAttr -s 5 ".wl[785].w";
	setAttr ".wl[785].w[3]" 0.035611292745139099;
	setAttr ".wl[785].w[4]" 0.48817379087041074;
	setAttr ".wl[785].w[5]" 0.048336747322390468;
	setAttr ".wl[785].w[26]" 0.040828792938245623;
	setAttr ".wl[785].w[27]" 0.38704937612381396;
	setAttr -s 5 ".wl[786].w";
	setAttr ".wl[786].w[2]" 0.017222417313106909;
	setAttr ".wl[786].w[3]" 0.031633447258925827;
	setAttr ".wl[786].w[4]" 0.53985277241107388;
	setAttr ".wl[786].w[26]" 0.023739899939538532;
	setAttr ".wl[786].w[27]" 0.38755146307735494;
	setAttr -s 5 ".wl[787].w";
	setAttr ".wl[787].w[3]" 0.018755554902663361;
	setAttr ".wl[787].w[4]" 0.49142473799983066;
	setAttr ".wl[787].w[5]" 0.026021850293660886;
	setAttr ".wl[787].w[26]" 0.013680407939718156;
	setAttr ".wl[787].w[27]" 0.45011744886412702;
	setAttr -s 5 ".wl[788].w";
	setAttr ".wl[788].w[3]" 0.010606770686307885;
	setAttr ".wl[788].w[4]" 0.47705748187509983;
	setAttr ".wl[788].w[5]" 0.025861470511685539;
	setAttr ".wl[788].w[6]" 0.015665998493080622;
	setAttr ".wl[788].w[26]" 0.47080827843382611;
	setAttr -s 5 ".wl[789].w";
	setAttr ".wl[789].w[3]" 0.033702208825872375;
	setAttr ".wl[789].w[4]" 0.49995596465774139;
	setAttr ".wl[789].w[5]" 0.048043293133114451;
	setAttr ".wl[789].w[26]" 0.38350433242257304;
	setAttr ".wl[789].w[27]" 0.03479420096069883;
	setAttr -s 5 ".wl[790].w";
	setAttr ".wl[790].w[3]" 0.014100954477319461;
	setAttr ".wl[790].w[4]" 0.50638923595033569;
	setAttr ".wl[790].w[5]" 0.022523447171235726;
	setAttr ".wl[790].w[26]" 0.44631494199132837;
	setAttr ".wl[790].w[27]" 0.010671420409780825;
	setAttr -s 5 ".wl[791].w";
	setAttr ".wl[791].w[2]" 0.047860984450350579;
	setAttr ".wl[791].w[3]" 0.049810914840168315;
	setAttr ".wl[791].w[4]" 0.48020770618678582;
	setAttr ".wl[791].w[26]" 0.39598896926133703;
	setAttr ".wl[791].w[27]" 0.026131425261358157;
	setAttr -s 5 ".wl[792].w";
	setAttr ".wl[792].w[2]" 0.015497373706841823;
	setAttr ".wl[792].w[3]" 0.026990813962537521;
	setAttr ".wl[792].w[4]" 0.5661579522919794;
	setAttr ".wl[792].w[26]" 0.36933922787311735;
	setAttr ".wl[792].w[27]" 0.022014632165523892;
	setAttr -s 5 ".wl[793].w";
	setAttr ".wl[793].w[1]" 0.007488567146406039;
	setAttr ".wl[793].w[2]" 0.021897608073080423;
	setAttr ".wl[793].w[3]" 0.021078483241146244;
	setAttr ".wl[793].w[4]" 0.47641732606808845;
	setAttr ".wl[793].w[26]" 0.47311801547127874;
	setAttr -s 5 ".wl[794].w";
	setAttr ".wl[794].w[2]" 0.028029910604328401;
	setAttr ".wl[794].w[3]" 0.028830415249874012;
	setAttr ".wl[794].w[4]" 0.49008487315931532;
	setAttr ".wl[794].w[26]" 0.44408140608270369;
	setAttr ".wl[794].w[27]" 0.0089733949037786292;
	setAttr -s 5 ".wl[795].w";
	setAttr ".wl[795].w[2]" 0.0040197598236272553;
	setAttr ".wl[795].w[3]" 0.0056418393917887716;
	setAttr ".wl[795].w[4]" 0.49400448716173062;
	setAttr ".wl[795].w[5]" 0.0027657544683439665;
	setAttr ".wl[795].w[26]" 0.49356815915450936;
	setAttr -s 5 ".wl[796].w";
	setAttr ".wl[796].w[3]" 0.0072996877473100966;
	setAttr ".wl[796].w[4]" 0.49775521400599454;
	setAttr ".wl[796].w[5]" 0.0092471061487770668;
	setAttr ".wl[796].w[26]" 0.0034145222791780762;
	setAttr ".wl[796].w[27]" 0.48228346981874015;
	setAttr -s 5 ".wl[797].w";
	setAttr ".wl[797].w[1]" 0.0030652332147845462;
	setAttr ".wl[797].w[2]" 0.012607105604502521;
	setAttr ".wl[797].w[3]" 0.013013578407463094;
	setAttr ".wl[797].w[4]" 0.49295535298206433;
	setAttr ".wl[797].w[27]" 0.47835872979118538;
	setAttr -s 5 ".wl[798].w";
	setAttr ".wl[798].w[2]" 0.0245993585558484;
	setAttr ".wl[798].w[3]" 0.029419926967803919;
	setAttr ".wl[798].w[4]" 0.53120218915745476;
	setAttr ".wl[798].w[26]" 0.012298849205100956;
	setAttr ".wl[798].w[27]" 0.4024796761137921;
	setAttr -s 5 ".wl[799].w";
	setAttr ".wl[799].w[3]" 0.020464047048188747;
	setAttr ".wl[799].w[4]" 0.54212926699823238;
	setAttr ".wl[799].w[5]" 0.016087122297042199;
	setAttr ".wl[799].w[26]" 0.014607358913889843;
	setAttr ".wl[799].w[27]" 0.40671220474264685;
	setAttr -s 5 ".wl[800].w";
	setAttr ".wl[800].w[3]" 0.0057828787097246384;
	setAttr ".wl[800].w[4]" 0.50294147382903476;
	setAttr ".wl[800].w[5]" 0.0091333177226028024;
	setAttr ".wl[800].w[26]" 0.47976653355998983;
	setAttr ".wl[800].w[27]" 0.00237579617864796;
	setAttr -s 5 ".wl[801].w";
	setAttr ".wl[801].w[3]" 0.015202746072371209;
	setAttr ".wl[801].w[4]" 0.57334264742305718;
	setAttr ".wl[801].w[5]" 0.012244995825610991;
	setAttr ".wl[801].w[26]" 0.38740390836140937;
	setAttr ".wl[801].w[27]" 0.011805702317551407;
	setAttr -s 5 ".wl[802].w";
	setAttr ".wl[802].w[2]" 0.019938735189749954;
	setAttr ".wl[802].w[3]" 0.023615140022130776;
	setAttr ".wl[802].w[4]" 0.5490964735603221;
	setAttr ".wl[802].w[26]" 0.39724352703240295;
	setAttr ".wl[802].w[27]" 0.010106124195394304;
	setAttr -s 5 ".wl[803].w";
	setAttr ".wl[803].w[1]" 0.0011846337192373212;
	setAttr ".wl[803].w[2]" 0.0089863730160285489;
	setAttr ".wl[803].w[3]" 0.009361065835683597;
	setAttr ".wl[803].w[4]" 0.49798632304448232;
	setAttr ".wl[803].w[26]" 0.48248160438456816;
	setAttr -s 5 ".wl[804].w";
	setAttr ".wl[804].w[6]" 0.00056903791636150869;
	setAttr ".wl[804].w[12]" 0.40016580751410852;
	setAttr ".wl[804].w[13]" 0.3034571727490803;
	setAttr ".wl[804].w[20]" 0.1859500252284661;
	setAttr ".wl[804].w[21]" 0.10985795659198348;
	setAttr -s 5 ".wl[805].w";
	setAttr ".wl[805].w[11]" 0.00090352958440623654;
	setAttr ".wl[805].w[12]" 0.76743077607053189;
	setAttr ".wl[805].w[13]" 0.20818216730820124;
	setAttr ".wl[805].w[20]" 0.016812202481890443;
	setAttr ".wl[805].w[21]" 0.0066713245549701481;
	setAttr -s 5 ".wl[806].w";
	setAttr ".wl[806].w[11]" 0.00021461410017299584;
	setAttr ".wl[806].w[12]" 0.5659293338871052;
	setAttr ".wl[806].w[13]" 0.37839560555537199;
	setAttr ".wl[806].w[20]" 0.034643938175589709;
	setAttr ".wl[806].w[21]" 0.020816508281760213;
	setAttr -s 5 ".wl[807].w";
	setAttr ".wl[807].w[10]" 0.20325118070454548;
	setAttr ".wl[807].w[11]" 0.65787588871050284;
	setAttr ".wl[807].w[12]" 0.053960881296011336;
	setAttr ".wl[807].w[18]" 0.037010793985186245;
	setAttr ".wl[807].w[19]" 0.047901255303754123;
	setAttr -s 5 ".wl[808].w";
	setAttr ".wl[808].w[6]" 9.0979810494055873e-005;
	setAttr ".wl[808].w[12]" 0.42747146488236037;
	setAttr ".wl[808].w[13]" 0.3949849002177041;
	setAttr ".wl[808].w[20]" 0.090590576748783944;
	setAttr ".wl[808].w[21]" 0.086862078340657331;
	setAttr -s 5 ".wl[809].w";
	setAttr ".wl[809].w[6]" 0.0016086470276934352;
	setAttr ".wl[809].w[12]" 0.69081550468283248;
	setAttr ".wl[809].w[13]" 0.19631317940208495;
	setAttr ".wl[809].w[20]" 0.072171188087677487;
	setAttr ".wl[809].w[21]" 0.039091480799711774;
	setAttr -s 5 ".wl[810].w";
	setAttr ".wl[810].w[4]" 0.014510221491174142;
	setAttr ".wl[810].w[6]" 0.15274529630484804;
	setAttr ".wl[810].w[7]" 0.023086934881040331;
	setAttr ".wl[810].w[12]" 0.66848236939116168;
	setAttr ".wl[810].w[20]" 0.14117517793177584;
	setAttr -s 5 ".wl[811].w";
	setAttr ".wl[811].w[1]" 0.19146809466388265;
	setAttr ".wl[811].w[4]" 0.20711887489302597;
	setAttr ".wl[811].w[6]" 0.29552732724026654;
	setAttr ".wl[811].w[27]" 0.15132299451946199;
	setAttr ".wl[811].w[48]" 0.15456270868336275;
	setAttr -s 5 ".wl[812].w";
	setAttr ".wl[812].w[1]" 0.35939436830713395;
	setAttr ".wl[812].w[4]" 0.0090651147351944617;
	setAttr ".wl[812].w[27]" 0.0078981552446208553;
	setAttr ".wl[812].w[48]" 0.5656637073747347;
	setAttr ".wl[812].w[49]" 0.057978654338316019;
	setAttr -s 5 ".wl[813].w";
	setAttr ".wl[813].w[9]" 0.018277118931600143;
	setAttr ".wl[813].w[10]" 0.12287445800918084;
	setAttr ".wl[813].w[11]" 0.036838149544152869;
	setAttr ".wl[813].w[18]" 0.52695292736632982;
	setAttr ".wl[813].w[19]" 0.29505734614873647;
	setAttr -s 5 ".wl[814].w";
	setAttr ".wl[814].w[10]" 0.0039278988733042787;
	setAttr ".wl[814].w[11]" 0.01239839317667432;
	setAttr ".wl[814].w[18]" 0.28387520969077962;
	setAttr ".wl[814].w[19]" 0.6758000225604941;
	setAttr ".wl[814].w[20]" 0.023998475698747693;
	setAttr -s 5 ".wl[815].w";
	setAttr ".wl[815].w[6]" 0.00011643412964493703;
	setAttr ".wl[815].w[12]" 0.0047866139549071251;
	setAttr ".wl[815].w[13]" 0.0034729035263192584;
	setAttr ".wl[815].w[20]" 0.71249320592515042;
	setAttr ".wl[815].w[21]" 0.27913084246397829;
	setAttr -s 5 ".wl[816].w";
	setAttr ".wl[816].w[6]" 2.5970841899370571e-006;
	setAttr ".wl[816].w[12]" 0.00057773157038337893;
	setAttr ".wl[816].w[13]" 0.00054811254881214917;
	setAttr ".wl[816].w[20]" 0.56412101203373932;
	setAttr ".wl[816].w[21]" 0.43475054676287533;
	setAttr -s 5 ".wl[817].w";
	setAttr ".wl[817].w[6]" 0.0024352553808552539;
	setAttr ".wl[817].w[12]" 0.0033282674826126124;
	setAttr ".wl[817].w[13]" 0.00082083723084150069;
	setAttr ".wl[817].w[20]" 0.8707532090966138;
	setAttr ".wl[817].w[21]" 0.12266243080907668;
	setAttr -s 5 ".wl[818].w";
	setAttr ".wl[818].w[4]" 0.010039602686576362;
	setAttr ".wl[818].w[5]" 0.016070155400827329;
	setAttr ".wl[818].w[6]" 0.19744580952325769;
	setAttr ".wl[818].w[7]" 0.0098655677162217872;
	setAttr ".wl[818].w[20]" 0.76657886467311676;
	setAttr -s 5 ".wl[819].w";
	setAttr ".wl[819].w[1]" 0.17503591226478526;
	setAttr ".wl[819].w[4]" 0.13537476255563685;
	setAttr ".wl[819].w[5]" 0.19395382248741852;
	setAttr ".wl[819].w[6]" 0.38054147188113169;
	setAttr ".wl[819].w[20]" 0.11509403081102768;
	setAttr -s 5 ".wl[820].w";
	setAttr ".wl[820].w[1]" 0.45999522978837815;
	setAttr ".wl[820].w[2]" 0.067806012427193654;
	setAttr ".wl[820].w[3]" 0.018100067312654698;
	setAttr ".wl[820].w[44]" 0.2357090080665909;
	setAttr ".wl[820].w[48]" 0.21838968240518253;
	setAttr -s 5 ".wl[821].w";
	setAttr ".wl[821].w[1]" 0.4810005573031414;
	setAttr ".wl[821].w[44]" 0.20857768911338984;
	setAttr ".wl[821].w[45]" 0.023910146315750998;
	setAttr ".wl[821].w[48]" 0.25084769902960197;
	setAttr ".wl[821].w[49]" 0.035663908238115889;
	setAttr -s 5 ".wl[822].w";
	setAttr ".wl[822].w[1]" 0.49067035483073468;
	setAttr ".wl[822].w[2]" 0.0084077696736051272;
	setAttr ".wl[822].w[28]" 0.20091769561674785;
	setAttr ".wl[822].w[36]" 0.28237569883706432;
	setAttr ".wl[822].w[37]" 0.017628481041848006;
	setAttr -s 5 ".wl[823].w";
	setAttr ".wl[823].w[2]" 0.0025534890638127358;
	setAttr ".wl[823].w[3]" 0.0051246132429815308;
	setAttr ".wl[823].w[4]" 0.59970771974618042;
	setAttr ".wl[823].w[5]" 0.0011914997742227486;
	setAttr ".wl[823].w[27]" 0.39142267817280257;
	setAttr -s 5 ".wl[824].w";
	setAttr ".wl[824].w[5]" 0.0027584864089031935;
	setAttr ".wl[824].w[6]" 0.14774444062314346;
	setAttr ".wl[824].w[7]" 0.01869475258789606;
	setAttr ".wl[824].w[12]" 0.0068740210997219747;
	setAttr ".wl[824].w[24]" 0.82392829928033529;
	setAttr -s 5 ".wl[825].w";
	setAttr ".wl[825].w[6]" 0.00024574492239602436;
	setAttr ".wl[825].w[7]" 0.00012696241550083317;
	setAttr ".wl[825].w[12]" 0.0031267966345544596;
	setAttr ".wl[825].w[13]" 0.001914775337213154;
	setAttr ".wl[825].w[24]" 0.99458572069033535;
	setAttr -s 5 ".wl[826].w";
	setAttr ".wl[826].w[6]" 4.2240331693871224e-005;
	setAttr ".wl[826].w[7]" 2.9037709352955874e-005;
	setAttr ".wl[826].w[12]" 0.0059327859688736734;
	setAttr ".wl[826].w[13]" 0.0055859673854710594;
	setAttr ".wl[826].w[24]" 0.9884099686046085;
	setAttr -s 5 ".wl[827].w";
	setAttr ".wl[827].w[6]" 9.9183153347956141e-006;
	setAttr ".wl[827].w[12]" 0.00030864494763515043;
	setAttr ".wl[827].w[13]" 0.00029186627431736402;
	setAttr ".wl[827].w[23]" 1.0492531309503885e-005;
	setAttr ".wl[827].w[24]" 0.99937907793140301;
	setAttr -s 5 ".wl[828].w";
	setAttr ".wl[828].w[10]" 0.0061713835535502151;
	setAttr ".wl[828].w[11]" 0.0088286577534259295;
	setAttr ".wl[828].w[22]" 0.25145904908999056;
	setAttr ".wl[828].w[23]" 0.71374072933121802;
	setAttr ".wl[828].w[24]" 0.019800180271815234;
	setAttr -s 5 ".wl[829].w";
	setAttr ".wl[829].w[9]" 0.015025950405000873;
	setAttr ".wl[829].w[10]" 0.34762433401431836;
	setAttr ".wl[829].w[11]" 0.2964978657394573;
	setAttr ".wl[829].w[18]" 0.18700028465972873;
	setAttr ".wl[829].w[19]" 0.15385156518149476;
	setAttr -s 5 ".wl[830].w";
	setAttr ".wl[830].w[10]" 0.13132894886419108;
	setAttr ".wl[830].w[11]" 0.27912784827450587;
	setAttr ".wl[830].w[12]" 0.030948990746637289;
	setAttr ".wl[830].w[18]" 0.22867700062828489;
	setAttr ".wl[830].w[19]" 0.32991721148638092;
	setAttr -s 5 ".wl[831].w";
	setAttr ".wl[831].w[6]" 0.00056350895296481546;
	setAttr ".wl[831].w[12]" 0.17616838700142431;
	setAttr ".wl[831].w[13]" 0.14518125009723123;
	setAttr ".wl[831].w[20]" 0.42667136981318893;
	setAttr ".wl[831].w[21]" 0.25141548413519083;
	setAttr -s 5 ".wl[832].w";
	setAttr ".wl[832].w[6]" 0.00011872801177011501;
	setAttr ".wl[832].w[12]" 0.11975175606548302;
	setAttr ".wl[832].w[13]" 0.10162151022708156;
	setAttr ".wl[832].w[20]" 0.40081278549821953;
	setAttr ".wl[832].w[21]" 0.377695220197446;
	setAttr -s 5 ".wl[833].w";
	setAttr ".wl[833].w[6]" 0.011019289464285103;
	setAttr ".wl[833].w[12]" 0.19293336389711713;
	setAttr ".wl[833].w[13]" 0.03823071006295909;
	setAttr ".wl[833].w[20]" 0.58928455471382224;
	setAttr ".wl[833].w[21]" 0.16853208186181656;
	setAttr -s 5 ".wl[834].w";
	setAttr ".wl[834].w[5]" 0.014035271400615303;
	setAttr ".wl[834].w[6]" 0.21224308133834807;
	setAttr ".wl[834].w[7]" 0.025801906400933515;
	setAttr ".wl[834].w[12]" 0.11447728412958622;
	setAttr ".wl[834].w[20]" 0.63344245673051702;
	setAttr -s 5 ".wl[835].w";
	setAttr ".wl[835].w[1]" 0.17695550099730833;
	setAttr ".wl[835].w[4]" 0.15433407608552133;
	setAttr ".wl[835].w[5]" 0.18074844391013117;
	setAttr ".wl[835].w[6]" 0.36883284573415842;
	setAttr ".wl[835].w[48]" 0.11912913327288066;
	setAttr -s 5 ".wl[836].w";
	setAttr ".wl[836].w[1]" 0.40521269223936102;
	setAttr ".wl[836].w[2]" 0.024867011742676817;
	setAttr ".wl[836].w[44]" 0.027156870832171266;
	setAttr ".wl[836].w[48]" 0.50461150571891156;
	setAttr ".wl[836].w[49]" 0.038151919466879396;
	setAttr -s 5 ".wl[837].w";
	setAttr ".wl[837].w[1]" 2.9532030280005762e-007;
	setAttr ".wl[837].w[48]" 0.0075420135927725517;
	setAttr ".wl[837].w[49]" 0.055237852959264075;
	setAttr ".wl[837].w[50]" 0.56818615823055107;
	setAttr ".wl[837].w[51]" 0.3690336798971095;
	setAttr -s 5 ".wl[838].w";
	setAttr ".wl[838].w[1]" 0.44056911337020949;
	setAttr ".wl[838].w[4]" 0.018528210988051436;
	setAttr ".wl[838].w[27]" 0.018528210988051436;
	setAttr ".wl[838].w[28]" 0.48658922514777403;
	setAttr ".wl[838].w[29]" 0.035785239505913613;
	setAttr -s 5 ".wl[839].w";
	setAttr ".wl[839].w[1]" 0.12947257820306898;
	setAttr ".wl[839].w[4]" 0.22205585387644283;
	setAttr ".wl[839].w[6]" 0.32720964273216036;
	setAttr ".wl[839].w[27]" 0.21842009407900759;
	setAttr ".wl[839].w[28]" 0.1028418311093202;
	setAttr -s 5 ".wl[840].w";
	setAttr ".wl[840].w[4]" 0.012697247666780211;
	setAttr ".wl[840].w[6]" 0.27732619636648442;
	setAttr ".wl[840].w[7]" 0.040262701376250327;
	setAttr ".wl[840].w[12]" 0.24950864206371684;
	setAttr ".wl[840].w[24]" 0.42020521252676829;
	setAttr -s 5 ".wl[841].w";
	setAttr ".wl[841].w[6]" 0.0075244505843820907;
	setAttr ".wl[841].w[7]" 0.0039508458195051483;
	setAttr ".wl[841].w[12]" 0.14498115918086649;
	setAttr ".wl[841].w[13]" 0.056342095342962542;
	setAttr ".wl[841].w[24]" 0.78720144907228384;
	setAttr -s 5 ".wl[842].w";
	setAttr ".wl[842].w[6]" 0.00026256158410857045;
	setAttr ".wl[842].w[7]" 0.00018395732709424798;
	setAttr ".wl[842].w[12]" 0.23507711893575434;
	setAttr ".wl[842].w[13]" 0.2249890376870648;
	setAttr ".wl[842].w[24]" 0.53948732446597814;
	setAttr -s 5 ".wl[843].w";
	setAttr ".wl[843].w[6]" 0.0005501549429054349;
	setAttr ".wl[843].w[12]" 0.097289759932104508;
	setAttr ".wl[843].w[13]" 0.079074702649252399;
	setAttr ".wl[843].w[23]" 0.00044042772778313808;
	setAttr ".wl[843].w[24]" 0.82264495474795452;
	setAttr -s 5 ".wl[844].w";
	setAttr ".wl[844].w[10]" 0.13048315634391047;
	setAttr ".wl[844].w[11]" 0.23905056454082568;
	setAttr ".wl[844].w[22]" 0.21039178513136472;
	setAttr ".wl[844].w[23]" 0.38407475460721724;
	setAttr ".wl[844].w[24]" 0.035999739376681841;
	setAttr -s 5 ".wl[845].w";
	setAttr ".wl[845].w[10]" 0.0862439606035484;
	setAttr ".wl[845].w[11]" 0.89716996048766851;
	setAttr ".wl[845].w[12]" 0.016340654874545904;
	setAttr ".wl[845].w[22]" 0.00012754588151536232;
	setAttr ".wl[845].w[23]" 0.00011787815272190995;
	setAttr -s 5 ".wl[846].w";
	setAttr ".wl[846].w[6]" 2.8541465528321021e-005;
	setAttr ".wl[846].w[11]" 1.8864807582359036e-005;
	setAttr ".wl[846].w[12]" 0.64363680749791752;
	setAttr ".wl[846].w[13]" 0.35577916335603549;
	setAttr ".wl[846].w[24]" 0.00053662287293619907;
	setAttr -s 5 ".wl[847].w";
	setAttr ".wl[847].w[6]" 4.5823205266311904e-007;
	setAttr ".wl[847].w[11]" 3.8562623750129485e-007;
	setAttr ".wl[847].w[12]" 0.52217987149926604;
	setAttr ".wl[847].w[13]" 0.47778563104741101;
	setAttr ".wl[847].w[24]" 3.3653595032702498e-005;
	setAttr -s 5 ".wl[848].w";
	setAttr ".wl[848].w[6]" 1.186806915389572e-005;
	setAttr ".wl[848].w[11]" 9.7225109659854309e-006;
	setAttr ".wl[848].w[12]" 0.85115688169219073;
	setAttr ".wl[848].w[13]" 0.14875050757214658;
	setAttr ".wl[848].w[24]" 7.1020155542771515e-005;
	setAttr -s 5 ".wl[849].w";
	setAttr ".wl[849].w[4]" 0.01104862412919717;
	setAttr ".wl[849].w[6]" 0.10027570034314469;
	setAttr ".wl[849].w[7]" 0.0069156873765503423;
	setAttr ".wl[849].w[12]" 0.87257929149762525;
	setAttr ".wl[849].w[27]" 0.0091806966534823849;
	setAttr -s 5 ".wl[850].w";
	setAttr ".wl[850].w[1]" 0.16341333861745466;
	setAttr ".wl[850].w[4]" 0.2350015245259604;
	setAttr ".wl[850].w[6]" 0.20306219311597107;
	setAttr ".wl[850].w[12]" 0.18207786151288374;
	setAttr ".wl[850].w[27]" 0.21644508222773004;
	setAttr -s 5 ".wl[851].w";
	setAttr ".wl[851].w[1]" 0.45881776917330913;
	setAttr ".wl[851].w[2]" 0.022742306100989373;
	setAttr ".wl[851].w[4]" 0.019778958868063804;
	setAttr ".wl[851].w[28]" 0.35741874729573114;
	setAttr ".wl[851].w[48]" 0.14124221856190655;
	setAttr -s 5 ".wl[852].w";
	setAttr ".wl[852].w[0]" 0.006584828623225931;
	setAttr ".wl[852].w[1]" 0.5883017248071708;
	setAttr ".wl[852].w[28]" 0.32639759926382367;
	setAttr ".wl[852].w[29]" 0.019820492812476043;
	setAttr ".wl[852].w[48]" 0.058895354493303506;
	setAttr -s 5 ".wl[853].w";
	setAttr ".wl[853].w[0]" 0.070866406047026903;
	setAttr ".wl[853].w[1]" 0.85003496413352131;
	setAttr ".wl[853].w[28]" 0.03695871661526693;
	setAttr ".wl[853].w[36]" 0.037976588381382431;
	setAttr ".wl[853].w[48]" 0.0041633248228024255;
	setAttr -s 5 ".wl[854].w";
	setAttr ".wl[854].w[9]" 0.054358716354441047;
	setAttr ".wl[854].w[10]" 0.6604180942969895;
	setAttr ".wl[854].w[11]" 0.066387057648906359;
	setAttr ".wl[854].w[22]" 0.20887282726296563;
	setAttr ".wl[854].w[23]" 0.0099633044366974396;
	setAttr -s 5 ".wl[855].w";
	setAttr ".wl[855].w[9]" 0.00084107904666001656;
	setAttr ".wl[855].w[10]" 0.50457873872778858;
	setAttr ".wl[855].w[11]" 0.49129675186281557;
	setAttr ".wl[855].w[22]" 0.0026659509710628007;
	setAttr ".wl[855].w[23]" 0.00061747939167300023;
	setAttr -s 5 ".wl[856].w";
	setAttr ".wl[856].w[10]" 0.1779415046894644;
	setAttr ".wl[856].w[11]" 0.68180325769915029;
	setAttr ".wl[856].w[12]" 0.04782484654982893;
	setAttr ".wl[856].w[22]" 0.03845638568889178;
	setAttr ".wl[856].w[23]" 0.053974005372664655;
	setAttr -s 5 ".wl[857].w";
	setAttr ".wl[857].w[6]" 0.00038179908490849185;
	setAttr ".wl[857].w[7]" 0.00025611626940573825;
	setAttr ".wl[857].w[12]" 0.5124291128120404;
	setAttr ".wl[857].w[13]" 0.36422453123595611;
	setAttr ".wl[857].w[24]" 0.12270844059768918;
	setAttr -s 5 ".wl[858].w";
	setAttr ".wl[858].w[6]" 9.9624569278211831e-005;
	setAttr ".wl[858].w[7]" 6.7115038946659723e-005;
	setAttr ".wl[858].w[12]" 0.48323109504955242;
	setAttr ".wl[858].w[13]" 0.46518242112743086;
	setAttr ".wl[858].w[24]" 0.051419744214791847;
	setAttr -s 5 ".wl[859].w";
	setAttr ".wl[859].w[6]" 0.0093072969808923843;
	setAttr ".wl[859].w[7]" 0.0045999974946667405;
	setAttr ".wl[859].w[12]" 0.74575903961198053;
	setAttr ".wl[859].w[13]" 0.16919051095009963;
	setAttr ".wl[859].w[24]" 0.071143154962360816;
	setAttr -s 5 ".wl[860].w";
	setAttr ".wl[860].w[4]" 0.031411792380037877;
	setAttr ".wl[860].w[6]" 0.2897468771780643;
	setAttr ".wl[860].w[7]" 0.029949149319977456;
	setAttr ".wl[860].w[12]" 0.61013937800832319;
	setAttr ".wl[860].w[24]" 0.038752803113597169;
	setAttr -s 5 ".wl[861].w";
	setAttr ".wl[861].w[1]" 0.15864111738903014;
	setAttr ".wl[861].w[4]" 0.27206549740159358;
	setAttr ".wl[861].w[6]" 0.16936092120705623;
	setAttr ".wl[861].w[27]" 0.27033980567075333;
	setAttr ".wl[861].w[28]" 0.12959265833156672;
	setAttr -s 5 ".wl[862].w";
	setAttr ".wl[862].w[1]" 0.35539539247088031;
	setAttr ".wl[862].w[4]" 0.029183335246768118;
	setAttr ".wl[862].w[27]" 0.028826183283674298;
	setAttr ".wl[862].w[28]" 0.5339449353420479;
	setAttr ".wl[862].w[29]" 0.052650153656629492;
	setAttr -s 5 ".wl[863].w";
	setAttr ".wl[863].w[1]" 5.2326910290178746e-007;
	setAttr ".wl[863].w[28]" 0.008592358772052484;
	setAttr ".wl[863].w[29]" 0.054450147042723239;
	setAttr ".wl[863].w[30]" 0.58252078339238023;
	setAttr ".wl[863].w[31]" 0.35443618752374118;
	setAttr -s 5 ".wl[864].w";
	setAttr ".wl[864].w[1]" 0.56613451046359964;
	setAttr ".wl[864].w[28]" 0.19815054656795691;
	setAttr ".wl[864].w[29]" 0.019023712154196518;
	setAttr ".wl[864].w[36]" 0.19481789605971375;
	setAttr ".wl[864].w[37]" 0.021873334754533198;
	setAttr -s 5 ".wl[865].w";
	setAttr ".wl[865].w[9]" 0.017411176583031939;
	setAttr ".wl[865].w[10]" 0.2032035676786261;
	setAttr ".wl[865].w[11]" 0.071488773994456717;
	setAttr ".wl[865].w[22]" 0.50049280032682386;
	setAttr ".wl[865].w[23]" 0.20740368141706139;
	setAttr -s 5 ".wl[866].w";
	setAttr ".wl[866].w[9]" 0.0060601234933572307;
	setAttr ".wl[866].w[10]" 0.42784243247476311;
	setAttr ".wl[866].w[11]" 0.42837400551274712;
	setAttr ".wl[866].w[22]" 0.077702355290431929;
	setAttr ".wl[866].w[23]" 0.060021083228700721;
	setAttr -s 5 ".wl[867].w";
	setAttr ".wl[867].w[10]" 0.11831988213844775;
	setAttr ".wl[867].w[11]" 0.87385627666937882;
	setAttr ".wl[867].w[12]" 0.0072964074141638044;
	setAttr ".wl[867].w[18]" 0.0002226624186421949;
	setAttr ".wl[867].w[19]" 0.00030477135936747107;
	setAttr -s 5 ".wl[868].w";
	setAttr ".wl[868].w[11]" 4.4894662528018526e-007;
	setAttr ".wl[868].w[12]" 0.68610340921043245;
	setAttr ".wl[868].w[13]" 0.31388612000190314;
	setAttr ".wl[868].w[20]" 5.4035387085507606e-006;
	setAttr ".wl[868].w[21]" 4.6183023306952142e-006;
	setAttr -s 5 ".wl[869].w";
	setAttr ".wl[869].w[11]" 9.3363232813519345e-007;
	setAttr ".wl[869].w[12]" 0.52288571037135478;
	setAttr ".wl[869].w[13]" 0.4767472588055065;
	setAttr ".wl[869].w[20]" 0.00018407373059161575;
	setAttr ".wl[869].w[21]" 0.00018202346021884859;
	setAttr -s 5 ".wl[870].w";
	setAttr ".wl[870].w[11]" 1.6684122242175016e-005;
	setAttr ".wl[870].w[12]" 0.85249329175921473;
	setAttr ".wl[870].w[13]" 0.14704992597478608;
	setAttr ".wl[870].w[20]" 0.00029777287670687384;
	setAttr ".wl[870].w[21]" 0.00014232526705013803;
	setAttr -s 5 ".wl[871].w";
	setAttr ".wl[871].w[4]" 0.011154009776450664;
	setAttr ".wl[871].w[6]" 0.080389649190440227;
	setAttr ".wl[871].w[7]" 0.0066375473309297729;
	setAttr ".wl[871].w[12]" 0.89254421256042804;
	setAttr ".wl[871].w[27]" 0.0092745811417512987;
	setAttr -s 5 ".wl[872].w";
	setAttr ".wl[872].w[1]" 0.17097839801553563;
	setAttr ".wl[872].w[4]" 0.22550946295415311;
	setAttr ".wl[872].w[6]" 0.16797616794095979;
	setAttr ".wl[872].w[12]" 0.23547344852758478;
	setAttr ".wl[872].w[27]" 0.2000625225617666;
	setAttr -s 5 ".wl[873].w";
	setAttr ".wl[873].w[1]" 0.47020873344787956;
	setAttr ".wl[873].w[2]" 0.010930063891387218;
	setAttr ".wl[873].w[4]" 0.011960340796342608;
	setAttr ".wl[873].w[28]" 0.097289866605318742;
	setAttr ".wl[873].w[48]" 0.40961099525907191;
	setAttr -s 5 ".wl[874].w";
	setAttr ".wl[874].w[0]" 0.0064985366154357172;
	setAttr ".wl[874].w[1]" 0.58731505855111266;
	setAttr ".wl[874].w[28]" 0.054012865209153736;
	setAttr ".wl[874].w[48]" 0.32795209110805068;
	setAttr ".wl[874].w[49]" 0.02422144851624726;
	setAttr -s 5 ".wl[875].w";
	setAttr ".wl[875].w[0]" 0.12345421388325417;
	setAttr ".wl[875].w[1]" 0.78944954319359717;
	setAttr ".wl[875].w[28]" 0.0058374056853620635;
	setAttr ".wl[875].w[44]" 0.051672824772079941;
	setAttr ".wl[875].w[48]" 0.029586012465706576;
	setAttr -s 5 ".wl[876].w";
	setAttr ".wl[876].w[9]" 0.07523646961208022;
	setAttr ".wl[876].w[10]" 0.56601898944423001;
	setAttr ".wl[876].w[11]" 0.027434942533547599;
	setAttr ".wl[876].w[18]" 0.31669702567624203;
	setAttr ".wl[876].w[19]" 0.014612572733900403;
	setAttr -s 5 ".wl[877].w";
	setAttr ".wl[877].w[9]" 0.0052895344459642848;
	setAttr ".wl[877].w[10]" 0.60777302188594906;
	setAttr ".wl[877].w[11]" 0.35691395887375665;
	setAttr ".wl[877].w[18]" 0.02210526809413171;
	setAttr ".wl[877].w[19]" 0.007918216700198313;
	setAttr -s 5 ".wl[878].w";
	setAttr ".wl[878].w[11]" 0.3023107331301596;
	setAttr ".wl[878].w[12]" 0.21776048101091225;
	setAttr ".wl[878].w[18]" 0.031048036440073944;
	setAttr ".wl[878].w[19]" 0.26565119797526515;
	setAttr ".wl[878].w[20]" 0.18322955144358913;
	setAttr -s 5 ".wl[879].w";
	setAttr ".wl[879].w[11]" 0.015359274300018962;
	setAttr ".wl[879].w[12]" 0.010811084676807945;
	setAttr ".wl[879].w[18]" 0.019672265760047963;
	setAttr ".wl[879].w[19]" 0.60965517289058913;
	setAttr ".wl[879].w[20]" 0.34450220237253604;
	setAttr -s 5 ".wl[880].w";
	setAttr ".wl[880].w[11]" 0.0008116144536958116;
	setAttr ".wl[880].w[12]" 0.00050626600288230595;
	setAttr ".wl[880].w[22]" 0.011023046603761695;
	setAttr ".wl[880].w[23]" 0.72431430073225544;
	setAttr ".wl[880].w[24]" 0.26334477220740465;
	setAttr -s 5 ".wl[881].w";
	setAttr ".wl[881].w[11]" 0.078432786956281295;
	setAttr ".wl[881].w[12]" 0.057404189552213984;
	setAttr ".wl[881].w[22]" 0.045313996931059669;
	setAttr ".wl[881].w[23]" 0.5394717069312116;
	setAttr ".wl[881].w[24]" 0.27937731962923346;
	setAttr -s 5 ".wl[882].w";
	setAttr ".wl[882].w[11]" 0.43012895555177227;
	setAttr ".wl[882].w[12]" 0.31893619523999622;
	setAttr ".wl[882].w[22]" 0.025281733381622404;
	setAttr ".wl[882].w[23]" 0.15004924837813635;
	setAttr ".wl[882].w[24]" 0.075603867448472653;
	setAttr -s 5 ".wl[883].w";
	setAttr ".wl[883].w[10]" 0.0045496934625145142;
	setAttr ".wl[883].w[11]" 0.61393216241491899;
	setAttr ".wl[883].w[12]" 0.37826222823883504;
	setAttr ".wl[883].w[23]" 0.0022827547187710628;
	setAttr ".wl[883].w[24]" 0.00097316116496037137;
	setAttr -s 5 ".wl[884].w";
	setAttr ".wl[884].w[10]" 0.0065100620049574412;
	setAttr ".wl[884].w[11]" 0.70756804798099238;
	setAttr ".wl[884].w[12]" 0.28313146105357534;
	setAttr ".wl[884].w[19]" 0.0018008928634059129;
	setAttr ".wl[884].w[20]" 0.00098953609706889096;
	setAttr -s 5 ".wl[885].w";
	setAttr ".wl[885].w[10]" 0.026296570010549282;
	setAttr ".wl[885].w[11]" 0.48900174934843521;
	setAttr ".wl[885].w[12]" 0.37366966326964207;
	setAttr ".wl[885].w[19]" 0.062628273278034219;
	setAttr ".wl[885].w[20]" 0.048403744093339272;
	setAttr -s 5 ".wl[886].w";
	setAttr ".wl[886].w[7]" 0.0075622558248959366;
	setAttr ".wl[886].w[11]" 0.071593425050195364;
	setAttr ".wl[886].w[12]" 0.22098036999697546;
	setAttr ".wl[886].w[19]" 0.18000452456360244;
	setAttr ".wl[886].w[20]" 0.51985942456433099;
	setAttr -s 5 ".wl[887].w";
	setAttr ".wl[887].w[6]" 0.00064283361049649363;
	setAttr ".wl[887].w[11]" 0.0007204057649298802;
	setAttr ".wl[887].w[12]" 0.0023512516493676559;
	setAttr ".wl[887].w[19]" 0.15904490836100993;
	setAttr ".wl[887].w[20]" 0.83724060061419581;
	setAttr -s 5 ".wl[888].w";
	setAttr ".wl[888].w[7]" 0.00011764962627747173;
	setAttr ".wl[888].w[11]" 0.0001297008255962335;
	setAttr ".wl[888].w[12]" 0.00019727208898267349;
	setAttr ".wl[888].w[23]" 0.16432731171411394;
	setAttr ".wl[888].w[24]" 0.83522806574502972;
	setAttr -s 5 ".wl[889].w";
	setAttr ".wl[889].w[7]" 0.0058761050213439331;
	setAttr ".wl[889].w[11]" 0.036306933206588364;
	setAttr ".wl[889].w[12]" 0.072204997156371076;
	setAttr ".wl[889].w[23]" 0.18052425269286465;
	setAttr ".wl[889].w[24]" 0.70508771192283204;
	setAttr -s 5 ".wl[890].w";
	setAttr ".wl[890].w[6]" 0.007974559700727293;
	setAttr ".wl[890].w[11]" 0.17054057640061807;
	setAttr ".wl[890].w[12]" 0.59796541044735685;
	setAttr ".wl[890].w[23]" 0.050316439715252542;
	setAttr ".wl[890].w[24]" 0.17320301373604527;
	setAttr -s 5 ".wl[891].w";
	setAttr ".wl[891].w[6]" 0.0002868873069318804;
	setAttr ".wl[891].w[7]" 0.00027315640324867326;
	setAttr ".wl[891].w[11]" 0.10626210984334443;
	setAttr ".wl[891].w[12]" 0.89252534200520484;
	setAttr ".wl[891].w[24]" 0.00065250444127020141;
	setAttr -s 5 ".wl[892].w";
	setAttr ".wl[892].w[11]" 0.062422606910124863;
	setAttr ".wl[892].w[12]" 0.9334674152600787;
	setAttr ".wl[892].w[13]" 0.0011134099575767313;
	setAttr ".wl[892].w[19]" 0.00084216570333148699;
	setAttr ".wl[892].w[20]" 0.0021544021688881579;
	setAttr -s 5 ".wl[893].w";
	setAttr ".wl[893].w[11]" 0.18341377200932765;
	setAttr ".wl[893].w[12]" 0.65026298395961402;
	setAttr ".wl[893].w[13]" 0.0096867984719081757;
	setAttr ".wl[893].w[19]" 0.042967873507847927;
	setAttr ".wl[893].w[20]" 0.11366857205130219;
	setAttr -s 5 ".wl[894].w";
	setAttr ".wl[894].w[12]" 0.25238337512627723;
	setAttr ".wl[894].w[13]" 0.045281750431452675;
	setAttr ".wl[894].w[19]" 0.019208155574970801;
	setAttr ".wl[894].w[20]" 0.61231045351781876;
	setAttr ".wl[894].w[21]" 0.070816265349480628;
	setAttr -s 5 ".wl[895].w";
	setAttr ".wl[895].w[6]" 0.00048503952684083104;
	setAttr ".wl[895].w[12]" 0.0022458918755037479;
	setAttr ".wl[895].w[19]" 0.0038432430994128183;
	setAttr ".wl[895].w[20]" 0.97301918301928481;
	setAttr ".wl[895].w[21]" 0.020406642478957727;
	setAttr -s 5 ".wl[896].w";
	setAttr ".wl[896].w[6]" 9.4480313486901046e-005;
	setAttr ".wl[896].w[12]" 0.00030182381422901939;
	setAttr ".wl[896].w[13]" 0.0001108870491501209;
	setAttr ".wl[896].w[23]" 0.0012284177522495082;
	setAttr ".wl[896].w[24]" 0.99826439107088438;
	setAttr -s 5 ".wl[897].w";
	setAttr ".wl[897].w[6]" 0.0039676141631885412;
	setAttr ".wl[897].w[12]" 0.095758572983679333;
	setAttr ".wl[897].w[13]" 0.031771842518338762;
	setAttr ".wl[897].w[23]" 0.01527336501579532;
	setAttr ".wl[897].w[24]" 0.85322860531899813;
	setAttr -s 5 ".wl[898].w";
	setAttr ".wl[898].w[11]" 0.014156909201019195;
	setAttr ".wl[898].w[12]" 0.69885805888857722;
	setAttr ".wl[898].w[13]" 0.097266721145848251;
	setAttr ".wl[898].w[23]" 0.0097388287731344208;
	setAttr ".wl[898].w[24]" 0.1799794819914208;
	setAttr -s 5 ".wl[899].w";
	setAttr ".wl[899].w[6]" 9.6181351479733765e-005;
	setAttr ".wl[899].w[11]" 0.00078663861228884049;
	setAttr ".wl[899].w[12]" 0.98297301092834666;
	setAttr ".wl[899].w[13]" 0.015922664014501757;
	setAttr ".wl[899].w[24]" 0.00022150509338299162;
	setAttr -s 5 ".wl[900].w";
	setAttr ".wl[900].w[11]" 5.9476419769385055e-005;
	setAttr ".wl[900].w[12]" 0.97722495962643863;
	setAttr ".wl[900].w[13]" 0.022694881223718915;
	setAttr ".wl[900].w[20]" 1.6296928615575014e-005;
	setAttr ".wl[900].w[21]" 4.3858014576476601e-006;
	setAttr -s 5 ".wl[901].w";
	setAttr ".wl[901].w[11]" 0.011316448675271096;
	setAttr ".wl[901].w[12]" 0.83622145434089523;
	setAttr ".wl[901].w[13]" 0.09282663607015243;
	setAttr ".wl[901].w[20]" 0.048692550672405403;
	setAttr ".wl[901].w[21]" 0.010942910241275774;
	setAttr -s 5 ".wl[902].w";
	setAttr ".wl[902].w[15]" 0.00019761355891448085;
	setAttr ".wl[902].w[16]" 0.5870878477565773;
	setAttr ".wl[902].w[17]" 0.36810661853666982;
	setAttr ".wl[902].w[20]" 0.027778080052920328;
	setAttr ".wl[902].w[21]" 0.016829840094918232;
	setAttr -s 5 ".wl[903].w";
	setAttr ".wl[903].w[14]" 0.20707869835301546;
	setAttr ".wl[903].w[15]" 0.68371157224655976;
	setAttr ".wl[903].w[16]" 0.053189262284489412;
	setAttr ".wl[903].w[18]" 0.024206687858908716;
	setAttr ".wl[903].w[19]" 0.031813779257026539;
	setAttr -s 5 ".wl[904].w";
	setAttr ".wl[904].w[6]" 8.3297834964597624e-005;
	setAttr ".wl[904].w[16]" 0.45412813777984878;
	setAttr ".wl[904].w[17]" 0.39629532966531833;
	setAttr ".wl[904].w[20]" 0.077400786327213658;
	setAttr ".wl[904].w[21]" 0.072092448392654523;
	setAttr -s 5 ".wl[905].w";
	setAttr ".wl[905].w[6]" 0.0019343669579176411;
	setAttr ".wl[905].w[16]" 0.71812628473168294;
	setAttr ".wl[905].w[17]" 0.18314564897936714;
	setAttr ".wl[905].w[20]" 0.061562762412876261;
	setAttr ".wl[905].w[21]" 0.035230936918156097;
	setAttr -s 5 ".wl[906].w";
	setAttr ".wl[906].w[4]" 0.013400962600649892;
	setAttr ".wl[906].w[6]" 0.17322445263788375;
	setAttr ".wl[906].w[7]" 0.028048690145144505;
	setAttr ".wl[906].w[16]" 0.68101018129649815;
	setAttr ".wl[906].w[20]" 0.1043157133198237;
	setAttr -s 5 ".wl[907].w";
	setAttr ".wl[907].w[1]" 0.17547375743609933;
	setAttr ".wl[907].w[4]" 0.193943912996869;
	setAttr ".wl[907].w[5]" 0.1531621486720845;
	setAttr ".wl[907].w[6]" 0.31787490196045048;
	setAttr ".wl[907].w[40]" 0.15954527893449671;
	setAttr -s 5 ".wl[908].w";
	setAttr ".wl[908].w[1]" 0.3333651604272807;
	setAttr ".wl[908].w[2]" 0.011570111558565953;
	setAttr ".wl[908].w[4]" 0.0089186605290156838;
	setAttr ".wl[908].w[40]" 0.58339512729738019;
	setAttr ".wl[908].w[41]" 0.062750940187757565;
	setAttr -s 5 ".wl[909].w";
	setAttr ".wl[909].w[9]" 0.018615376544361791;
	setAttr ".wl[909].w[14]" 0.14125494671407715;
	setAttr ".wl[909].w[15]" 0.046135377044739405;
	setAttr ".wl[909].w[18]" 0.52121066701394836;
	setAttr ".wl[909].w[19]" 0.27278363268287342;
	setAttr -s 5 ".wl[910].w";
	setAttr ".wl[910].w[14]" 0.005454583568304563;
	setAttr ".wl[910].w[15]" 0.015306332074900255;
	setAttr ".wl[910].w[18]" 0.31728351123666232;
	setAttr ".wl[910].w[19]" 0.63342835769583705;
	setAttr ".wl[910].w[20]" 0.028527215424295885;
	setAttr -s 5 ".wl[911].w";
	setAttr ".wl[911].w[6]" 0.0001032167932376338;
	setAttr ".wl[911].w[16]" 0.0067958832547216734;
	setAttr ".wl[911].w[17]" 0.0047190490671601649;
	setAttr ".wl[911].w[20]" 0.69673593541420464;
	setAttr ".wl[911].w[21]" 0.29164591547067592;
	setAttr -s 5 ".wl[912].w";
	setAttr ".wl[912].w[6]" 2.7042297865790103e-006;
	setAttr ".wl[912].w[16]" 0.00081781135031397834;
	setAttr ".wl[912].w[17]" 0.00072863740948149892;
	setAttr ".wl[912].w[20]" 0.56735798257211412;
	setAttr ".wl[912].w[21]" 0.4310928644383038;
	setAttr -s 5 ".wl[913].w";
	setAttr ".wl[913].w[6]" 0.0023527826545130825;
	setAttr ".wl[913].w[7]" 0.0011056163258200398;
	setAttr ".wl[913].w[16]" 0.0041500842079242959;
	setAttr ".wl[913].w[20]" 0.87358771615300856;
	setAttr ".wl[913].w[21]" 0.11880380065873405;
	setAttr -s 5 ".wl[914].w";
	setAttr ".wl[914].w[4]" 0.010174377361462929;
	setAttr ".wl[914].w[5]" 0.01512330933603254;
	setAttr ".wl[914].w[6]" 0.14643458646854349;
	setAttr ".wl[914].w[7]" 0.0094027525922265442;
	setAttr ".wl[914].w[20]" 0.81886497424173454;
	setAttr -s 5 ".wl[915].w";
	setAttr ".wl[915].w[1]" 0.17930551705672371;
	setAttr ".wl[915].w[4]" 0.16013296348652517;
	setAttr ".wl[915].w[5]" 0.18478813630369709;
	setAttr ".wl[915].w[6]" 0.29954795013759361;
	setAttr ".wl[915].w[20]" 0.17622543301546043;
	setAttr -s 5 ".wl[916].w";
	setAttr ".wl[916].w[1]" 0.4670998199294929;
	setAttr ".wl[916].w[2]" 0.040013805368040889;
	setAttr ".wl[916].w[3]" 0.014056746058559;
	setAttr ".wl[916].w[40]" 0.22139804057754797;
	setAttr ".wl[916].w[44]" 0.25743158806635935;
	setAttr -s 5 ".wl[917].w";
	setAttr ".wl[917].w[1]" 0.51749383445372521;
	setAttr ".wl[917].w[40]" 0.22629709258218222;
	setAttr ".wl[917].w[41]" 0.036104074969591955;
	setAttr ".wl[917].w[44]" 0.19384696061643372;
	setAttr ".wl[917].w[45]" 0.026258037378066802;
	setAttr -s 5 ".wl[918].w";
	setAttr ".wl[918].w[1]" 0.47639346927218584;
	setAttr ".wl[918].w[2]" 0.0097904306736882676;
	setAttr ".wl[918].w[32]" 0.21261445873003237;
	setAttr ".wl[918].w[36]" 0.28389917562934841;
	setAttr ".wl[918].w[37]" 0.017302465694744994;
	setAttr -s 5 ".wl[919].w";
	setAttr ".wl[919].w[2]" 0.0026426668062229171;
	setAttr ".wl[919].w[3]" 0.0045451660374006674;
	setAttr ".wl[919].w[4]" 0.61000058416732561;
	setAttr ".wl[919].w[5]" 0.00138472378708801;
	setAttr ".wl[919].w[26]" 0.38142685920196273;
	setAttr -s 5 ".wl[920].w";
	setAttr ".wl[920].w[5]" 0.0029342778208612361;
	setAttr ".wl[920].w[6]" 0.14477603408389322;
	setAttr ".wl[920].w[7]" 0.018412100677998339;
	setAttr ".wl[920].w[16]" 0.0063233049306957671;
	setAttr ".wl[920].w[24]" 0.8275542824865515;
	setAttr -s 5 ".wl[921].w";
	setAttr ".wl[921].w[6]" 0.00022257091134400396;
	setAttr ".wl[921].w[7]" 0.0001062968970044274;
	setAttr ".wl[921].w[16]" 0.0024043404495700548;
	setAttr ".wl[921].w[17]" 0.0014646155307294641;
	setAttr ".wl[921].w[24]" 0.99580217621135203;
	setAttr -s 5 ".wl[922].w";
	setAttr ".wl[922].w[6]" 3.2762996055843405e-005;
	setAttr ".wl[922].w[16]" 0.004660863308974611;
	setAttr ".wl[922].w[17]" 0.0041650361344451317;
	setAttr ".wl[922].w[23]" 2.4222005876379305e-005;
	setAttr ".wl[922].w[24]" 0.9911171155546481;
	setAttr -s 5 ".wl[923].w";
	setAttr ".wl[923].w[6]" 7.6624032773503163e-006;
	setAttr ".wl[923].w[16]" 0.00022175469499472817;
	setAttr ".wl[923].w[17]" 0.00020115264374213611;
	setAttr ".wl[923].w[23]" 8.8626932155287785e-006;
	setAttr ".wl[923].w[24]" 0.9995605675647703;
	setAttr -s 5 ".wl[924].w";
	setAttr ".wl[924].w[14]" 0.0054503036716658793;
	setAttr ".wl[924].w[15]" 0.0060015754679003811;
	setAttr ".wl[924].w[22]" 0.25665508478521426;
	setAttr ".wl[924].w[23]" 0.7134454660002757;
	setAttr ".wl[924].w[24]" 0.018447570074943784;
	setAttr -s 5 ".wl[925].w";
	setAttr ".wl[925].w[9]" 0.013279786643513843;
	setAttr ".wl[925].w[14]" 0.38808886162709355;
	setAttr ".wl[925].w[15]" 0.32870557790864119;
	setAttr ".wl[925].w[18]" 0.1510037114048268;
	setAttr ".wl[925].w[19]" 0.1189220624159246;
	setAttr -s 5 ".wl[926].w";
	setAttr ".wl[926].w[14]" 0.14992565624655321;
	setAttr ".wl[926].w[15]" 0.31888818849460332;
	setAttr ".wl[926].w[16]" 0.035922532984287867;
	setAttr ".wl[926].w[18]" 0.20950298676607645;
	setAttr ".wl[926].w[19]" 0.28576063550847924;
	setAttr -s 5 ".wl[927].w";
	setAttr ".wl[927].w[6]" 0.00051616417728645131;
	setAttr ".wl[927].w[16]" 0.20349923793250088;
	setAttr ".wl[927].w[17]" 0.15555964748063872;
	setAttr ".wl[927].w[20]" 0.40172230292305983;
	setAttr ".wl[927].w[21]" 0.23870264748651407;
	setAttr -s 5 ".wl[928].w";
	setAttr ".wl[928].w[6]" 0.0001203510163931348;
	setAttr ".wl[928].w[16]" 0.13895275679049432;
	setAttr ".wl[928].w[17]" 0.1104059051217835;
	setAttr ".wl[928].w[20]" 0.38939475970867576;
	setAttr ".wl[928].w[21]" 0.36112622736265326;
	setAttr -s 5 ".wl[929].w";
	setAttr ".wl[929].w[6]" 0.012708985992424222;
	setAttr ".wl[929].w[16]" 0.21658322645546893;
	setAttr ".wl[929].w[17]" 0.037750694845442433;
	setAttr ".wl[929].w[20]" 0.56666578326753569;
	setAttr ".wl[929].w[21]" 0.16629130943912857;
	setAttr -s 5 ".wl[930].w";
	setAttr ".wl[930].w[5]" 0.01401556169641468;
	setAttr ".wl[930].w[6]" 0.21731479344758897;
	setAttr ".wl[930].w[7]" 0.035420433227040561;
	setAttr ".wl[930].w[16]" 0.13460690156585448;
	setAttr ".wl[930].w[20]" 0.59864231006310142;
	setAttr -s 5 ".wl[931].w";
	setAttr ".wl[931].w[1]" 0.16419613649542408;
	setAttr ".wl[931].w[4]" 0.19187543558024747;
	setAttr ".wl[931].w[5]" 0.19172125174216353;
	setAttr ".wl[931].w[6]" 0.31059001970113831;
	setAttr ".wl[931].w[40]" 0.14161715648102663;
	setAttr -s 5 ".wl[932].w";
	setAttr ".wl[932].w[1]" 0.41465882440590701;
	setAttr ".wl[932].w[2]" 0.019702074597730396;
	setAttr ".wl[932].w[40]" 0.5039988268908584;
	setAttr ".wl[932].w[41]" 0.036842814697384048;
	setAttr ".wl[932].w[44]" 0.024797459408120174;
	setAttr -s 5 ".wl[933].w";
	setAttr ".wl[933].w[1]" 1.6723669234595335e-007;
	setAttr ".wl[933].w[40]" 0.0049903799763656347;
	setAttr ".wl[933].w[41]" 0.059574154957364421;
	setAttr ".wl[933].w[42]" 0.55095627455819784;
	setAttr ".wl[933].w[43]" 0.38447902327137989;
	setAttr -s 5 ".wl[934].w";
	setAttr ".wl[934].w[1]" 0.40346683668438182;
	setAttr ".wl[934].w[4]" 0.018514043774366298;
	setAttr ".wl[934].w[26]" 0.018504810275648285;
	setAttr ".wl[934].w[32]" 0.52085555852507348;
	setAttr ".wl[934].w[33]" 0.03865875074053024;
	setAttr -s 5 ".wl[935].w";
	setAttr ".wl[935].w[1]" 0.12481069366696085;
	setAttr ".wl[935].w[4]" 0.22542936537578848;
	setAttr ".wl[935].w[6]" 0.31511753823918148;
	setAttr ".wl[935].w[26]" 0.2220629977540739;
	setAttr ".wl[935].w[32]" 0.11257940496399529;
	setAttr -s 5 ".wl[936].w";
	setAttr ".wl[936].w[4]" 0.013161179422152891;
	setAttr ".wl[936].w[6]" 0.27000357365413036;
	setAttr ".wl[936].w[7]" 0.047498870003055603;
	setAttr ".wl[936].w[16]" 0.23787341974531312;
	setAttr ".wl[936].w[24]" 0.43146295717534794;
	setAttr -s 5 ".wl[937].w";
	setAttr ".wl[937].w[6]" 0.0077594796378000035;
	setAttr ".wl[937].w[7]" 0.0035588546177484576;
	setAttr ".wl[937].w[16]" 0.12972572197482504;
	setAttr ".wl[937].w[17]" 0.049605147007213593;
	setAttr ".wl[937].w[24]" 0.80935079676241295;
	setAttr -s 5 ".wl[938].w";
	setAttr ".wl[938].w[6]" 0.00027383762966225834;
	setAttr ".wl[938].w[7]" 0.00017761334664207694;
	setAttr ".wl[938].w[16]" 0.22450705715907432;
	setAttr ".wl[938].w[17]" 0.20115486816702827;
	setAttr ".wl[938].w[24]" 0.57388662369759313;
	setAttr -s 5 ".wl[939].w";
	setAttr ".wl[939].w[6]" 0.00047734308724855677;
	setAttr ".wl[939].w[16]" 0.085373358769169391;
	setAttr ".wl[939].w[17]" 0.068433371494909773;
	setAttr ".wl[939].w[23]" 0.00038417672911946735;
	setAttr ".wl[939].w[24]" 0.84533174991955295;
	setAttr -s 5 ".wl[940].w";
	setAttr ".wl[940].w[14]" 0.12976143626268744;
	setAttr ".wl[940].w[15]" 0.20066462907693006;
	setAttr ".wl[940].w[22]" 0.20865270011125098;
	setAttr ".wl[940].w[23]" 0.42391124960222265;
	setAttr ".wl[940].w[24]" 0.037009984946908853;
	setAttr -s 5 ".wl[941].w";
	setAttr ".wl[941].w[14]" 0.09388877427696278;
	setAttr ".wl[941].w[15]" 0.89010269901123762;
	setAttr ".wl[941].w[16]" 0.015566645943245506;
	setAttr ".wl[941].w[22]" 0.00021855626832374231;
	setAttr ".wl[941].w[23]" 0.00022332450023033567;
	setAttr -s 5 ".wl[942].w";
	setAttr ".wl[942].w[6]" 4.8308888254455082e-005;
	setAttr ".wl[942].w[15]" 2.7510011679006248e-005;
	setAttr ".wl[942].w[16]" 0.64613329020108734;
	setAttr ".wl[942].w[17]" 0.35290668972687117;
	setAttr ".wl[942].w[24]" 0.0008842011721080259;
	setAttr -s 5 ".wl[943].w";
	setAttr ".wl[943].w[6]" 5.577091083137611e-007;
	setAttr ".wl[943].w[15]" 4.5969336474629101e-007;
	setAttr ".wl[943].w[16]" 0.52429427700533615;
	setAttr ".wl[943].w[17]" 0.47565717598615331;
	setAttr ".wl[943].w[24]" 4.7529606037331632e-005;
	setAttr -s 5 ".wl[944].w";
	setAttr ".wl[944].w[6]" 1.1979180936415432e-005;
	setAttr ".wl[944].w[15]" 9.5302929320065071e-006;
	setAttr ".wl[944].w[16]" 0.85360398816597349;
	setAttr ".wl[944].w[17]" 0.14626370783255405;
	setAttr ".wl[944].w[24]" 0.0001107945276040561;
	setAttr -s 5 ".wl[945].w";
	setAttr ".wl[945].w[4]" 0.011553501336109362;
	setAttr ".wl[945].w[6]" 0.077338091227251798;
	setAttr ".wl[945].w[7]" 0.0085143753990700038;
	setAttr ".wl[945].w[16]" 0.89172802930892292;
	setAttr ".wl[945].w[26]" 0.01086600272864586;
	setAttr -s 5 ".wl[946].w";
	setAttr ".wl[946].w[1]" 0.15573448051516475;
	setAttr ".wl[946].w[4]" 0.23216068230255213;
	setAttr ".wl[946].w[6]" 0.18736906395623615;
	setAttr ".wl[946].w[16]" 0.19373399455026249;
	setAttr ".wl[946].w[26]" 0.23100177867578461;
	setAttr -s 5 ".wl[947].w";
	setAttr ".wl[947].w[1]" 0.44849744149425558;
	setAttr ".wl[947].w[4]" 0.021518798272490904;
	setAttr ".wl[947].w[26]" 0.021428783595222881;
	setAttr ".wl[947].w[32]" 0.37782295947055411;
	setAttr ".wl[947].w[40]" 0.13073201716747659;
	setAttr -s 5 ".wl[948].w";
	setAttr ".wl[948].w[0]" 0.0044681195046653542;
	setAttr ".wl[948].w[1]" 0.59159521061461795;
	setAttr ".wl[948].w[32]" 0.32949100716202973;
	setAttr ".wl[948].w[33]" 0.021752248128571895;
	setAttr ".wl[948].w[40]" 0.052693414590115027;
	setAttr -s 5 ".wl[949].w";
	setAttr ".wl[949].w[0]" 0.047054554571507139;
	setAttr ".wl[949].w[1]" 0.87513235161385883;
	setAttr ".wl[949].w[32]" 0.032840452263893323;
	setAttr ".wl[949].w[36]" 0.04023410629515569;
	setAttr ".wl[949].w[40]" 0.0047385352555848288;
	setAttr -s 5 ".wl[950].w";
	setAttr ".wl[950].w[9]" 0.062372459773315465;
	setAttr ".wl[950].w[14]" 0.64934203875409924;
	setAttr ".wl[950].w[15]" 0.064256879333547248;
	setAttr ".wl[950].w[22]" 0.21332053966479281;
	setAttr ".wl[950].w[23]" 0.010708082474245336;
	setAttr -s 5 ".wl[951].w";
	setAttr ".wl[951].w[9]" 0.00097992235823967668;
	setAttr ".wl[951].w[14]" 0.52201435457505874;
	setAttr ".wl[951].w[15]" 0.47287186883061755;
	setAttr ".wl[951].w[22]" 0.0032686085511975525;
	setAttr ".wl[951].w[23]" 0.0008652456848865361;
	setAttr -s 5 ".wl[952].w";
	setAttr ".wl[952].w[14]" 0.18844968942388407;
	setAttr ".wl[952].w[15]" 0.64084082059641057;
	setAttr ".wl[952].w[16]" 0.051876488500850949;
	setAttr ".wl[952].w[22]" 0.046744665755434497;
	setAttr ".wl[952].w[23]" 0.07208833572341998;
	setAttr -s 5 ".wl[953].w";
	setAttr ".wl[953].w[6]" 0.00043178016943354661;
	setAttr ".wl[953].w[7]" 0.00026187913528920439;
	setAttr ".wl[953].w[16]" 0.5056518921994303;
	setAttr ".wl[953].w[17]" 0.35268684158403518;
	setAttr ".wl[953].w[24]" 0.14096760691181176;
	setAttr -s 5 ".wl[954].w";
	setAttr ".wl[954].w[6]" 0.00013710592666905515;
	setAttr ".wl[954].w[7]" 8.5715630497116988e-005;
	setAttr ".wl[954].w[16]" 0.49231443821728055;
	setAttr ".wl[954].w[17]" 0.44495794544917877;
	setAttr ".wl[954].w[24]" 0.062504794776374523;
	setAttr -s 5 ".wl[955].w";
	setAttr ".wl[955].w[6]" 0.012178232095142082;
	setAttr ".wl[955].w[7]" 0.0052610509879106046;
	setAttr ".wl[955].w[16]" 0.73563783457557053;
	setAttr ".wl[955].w[17]" 0.16480401630188277;
	setAttr ".wl[955].w[24]" 0.082118866039494004;
	setAttr -s 5 ".wl[956].w";
	setAttr ".wl[956].w[4]" 0.030828912102838259;
	setAttr ".wl[956].w[6]" 0.29319389249748268;
	setAttr ".wl[956].w[7]" 0.034402434308069642;
	setAttr ".wl[956].w[16]" 0.60325604302216007;
	setAttr ".wl[956].w[24]" 0.038318718069449489;
	setAttr -s 5 ".wl[957].w";
	setAttr ".wl[957].w[1]" 0.15077359275035046;
	setAttr ".wl[957].w[4]" 0.26324215247732646;
	setAttr ".wl[957].w[6]" 0.18500224271663107;
	setAttr ".wl[957].w[26]" 0.26259053484451966;
	setAttr ".wl[957].w[32]" 0.13839147721117237;
	setAttr -s 5 ".wl[958].w";
	setAttr ".wl[958].w[1]" 0.33154899970623186;
	setAttr ".wl[958].w[4]" 0.02867263025583075;
	setAttr ".wl[958].w[26]" 0.028653184585192327;
	setAttr ".wl[958].w[32]" 0.56086188757776623;
	setAttr ".wl[958].w[33]" 0.050263297874978907;
	setAttr -s 5 ".wl[959].w";
	setAttr ".wl[959].w[1]" 7.1199988822570944e-007;
	setAttr ".wl[959].w[32]" 0.011147243840613139;
	setAttr ".wl[959].w[33]" 0.05550832476461421;
	setAttr ".wl[959].w[34]" 0.6103605901390412;
	setAttr ".wl[959].w[35]" 0.32298312925584333;
	setAttr -s 5 ".wl[960].w";
	setAttr ".wl[960].w[1]" 0.55911880270794523;
	setAttr ".wl[960].w[32]" 0.20127704870640717;
	setAttr ".wl[960].w[33]" 0.022308716719377068;
	setAttr ".wl[960].w[36]" 0.19423474840807181;
	setAttr ".wl[960].w[37]" 0.023060683458198551;
	setAttr -s 5 ".wl[961].w";
	setAttr ".wl[961].w[9]" 0.017846538389830923;
	setAttr ".wl[961].w[14]" 0.19299887520587783;
	setAttr ".wl[961].w[15]" 0.074137040692051778;
	setAttr ".wl[961].w[22]" 0.50697938478899385;
	setAttr ".wl[961].w[23]" 0.20803816092324565;
	setAttr -s 5 ".wl[962].w";
	setAttr ".wl[962].w[9]" 0.0068724361033378695;
	setAttr ".wl[962].w[14]" 0.42175996030328144;
	setAttr ".wl[962].w[15]" 0.41863546631916032;
	setAttr ".wl[962].w[22]" 0.082699747100917348;
	setAttr ".wl[962].w[23]" 0.070032390173302969;
	setAttr -s 5 ".wl[963].w";
	setAttr ".wl[963].w[14]" 0.10990878349084023;
	setAttr ".wl[963].w[15]" 0.88364226018618586;
	setAttr ".wl[963].w[16]" 0.0061459962123366317;
	setAttr ".wl[963].w[18]" 0.00013334986374020105;
	setAttr ".wl[963].w[19]" 0.00016961024689702273;
	setAttr -s 5 ".wl[964].w";
	setAttr ".wl[964].w[15]" 2.4799116792818419e-007;
	setAttr ".wl[964].w[16]" 0.69575798052860549;
	setAttr ".wl[964].w[17]" 0.30423643986399129;
	setAttr ".wl[964].w[20]" 2.871264907924377e-006;
	setAttr ".wl[964].w[21]" 2.460351327260457e-006;
	setAttr -s 5 ".wl[965].w";
	setAttr ".wl[965].w[6]" 8.0469519953858987e-007;
	setAttr ".wl[965].w[16]" 0.52740856472672992;
	setAttr ".wl[965].w[17]" 0.47233951517862877;
	setAttr ".wl[965].w[20]" 0.00012906733640812707;
	setAttr ".wl[965].w[21]" 0.00012204806303362011;
	setAttr -s 5 ".wl[966].w";
	setAttr ".wl[966].w[15]" 9.6414173355318279e-006;
	setAttr ".wl[966].w[16]" 0.86129251202658752;
	setAttr ".wl[966].w[17]" 0.13851353090001328;
	setAttr ".wl[966].w[20]" 0.00011466985117848057;
	setAttr ".wl[966].w[21]" 6.9645804885184925e-005;
	setAttr -s 5 ".wl[967].w";
	setAttr ".wl[967].w[4]" 0.011526988880604177;
	setAttr ".wl[967].w[6]" 0.07210251493868218;
	setAttr ".wl[967].w[7]" 0.0070171106282403565;
	setAttr ".wl[967].w[16]" 0.89855280657025161;
	setAttr ".wl[967].w[26]" 0.010800578982221734;
	setAttr -s 5 ".wl[968].w";
	setAttr ".wl[968].w[1]" 0.15679866090637809;
	setAttr ".wl[968].w[4]" 0.22163541680059706;
	setAttr ".wl[968].w[6]" 0.18252889222133595;
	setAttr ".wl[968].w[16]" 0.22059697661498828;
	setAttr ".wl[968].w[26]" 0.21844005345670056;
	setAttr -s 5 ".wl[969].w";
	setAttr ".wl[969].w[1]" 0.47484697392531106;
	setAttr ".wl[969].w[2]" 0.01370845703828406;
	setAttr ".wl[969].w[4]" 0.012473493216752117;
	setAttr ".wl[969].w[32]" 0.11512605241065357;
	setAttr ".wl[969].w[40]" 0.38384502340899906;
	setAttr -s 5 ".wl[970].w";
	setAttr ".wl[970].w[0]" 0.0044589799661994443;
	setAttr ".wl[970].w[1]" 0.60591067044403646;
	setAttr ".wl[970].w[32]" 0.062768669751463071;
	setAttr ".wl[970].w[40]" 0.30110106527982672;
	setAttr ".wl[970].w[41]" 0.025760614558474129;
	setAttr -s 5 ".wl[971].w";
	setAttr ".wl[971].w[0]" 0.12141013860948549;
	setAttr ".wl[971].w[1]" 0.80620395695363534;
	setAttr ".wl[971].w[32]" 0.0065052173796245529;
	setAttr ".wl[971].w[40]" 0.022603542458822908;
	setAttr ".wl[971].w[44]" 0.043277144598431731;
	setAttr -s 5 ".wl[972].w";
	setAttr ".wl[972].w[9]" 0.079379292587348133;
	setAttr ".wl[972].w[14]" 0.59037143323553642;
	setAttr ".wl[972].w[15]" 0.029215141940670063;
	setAttr ".wl[972].w[18]" 0.28713168400997297;
	setAttr ".wl[972].w[19]" 0.013902448226472474;
	setAttr -s 5 ".wl[973].w";
	setAttr ".wl[973].w[9]" 0.0048029024083784209;
	setAttr ".wl[973].w[14]" 0.61966021045764008;
	setAttr ".wl[973].w[15]" 0.35327523926687898;
	setAttr ".wl[973].w[18]" 0.017169769724174038;
	setAttr ".wl[973].w[19]" 0.0050918781429284774;
	setAttr -s 5 ".wl[974].w";
	setAttr ".wl[974].w[15]" 0.35059368867447427;
	setAttr ".wl[974].w[16]" 0.24579838303262902;
	setAttr ".wl[974].w[18]" 0.027821910323849446;
	setAttr ".wl[974].w[19]" 0.21705990158770172;
	setAttr ".wl[974].w[20]" 0.15872611638134551;
	setAttr -s 5 ".wl[975].w";
	setAttr ".wl[975].w[15]" 0.018997325897831416;
	setAttr ".wl[975].w[16]" 0.014222616113687166;
	setAttr ".wl[975].w[18]" 0.024516073634940849;
	setAttr ".wl[975].w[19]" 0.58544748436458849;
	setAttr ".wl[975].w[20]" 0.35681649998895199;
	setAttr -s 5 ".wl[976].w";
	setAttr ".wl[976].w[15]" 0.00043336840460563052;
	setAttr ".wl[976].w[16]" 0.00032351451639945218;
	setAttr ".wl[976].w[22]" 0.010927936841335757;
	setAttr ".wl[976].w[23]" 0.73622213085882426;
	setAttr ".wl[976].w[24]" 0.25209304937883475;
	setAttr -s 5 ".wl[977].w";
	setAttr ".wl[977].w[15]" 0.05995418540031075;
	setAttr ".wl[977].w[16]" 0.04835791214910188;
	setAttr ".wl[977].w[22]" 0.041725210917879126;
	setAttr ".wl[977].w[23]" 0.57125367108418978;
	setAttr ".wl[977].w[24]" 0.27870902044851842;
	setAttr -s 5 ".wl[978].w";
	setAttr ".wl[978].w[15]" 0.40337363939840476;
	setAttr ".wl[978].w[16]" 0.30914270019480816;
	setAttr ".wl[978].w[22]" 0.027553525575219551;
	setAttr ".wl[978].w[23]" 0.17314467773529202;
	setAttr ".wl[978].w[24]" 0.086785457096275637;
	setAttr -s 5 ".wl[979].w";
	setAttr ".wl[979].w[14]" 0.0054064726539942553;
	setAttr ".wl[979].w[15]" 0.62286394815102686;
	setAttr ".wl[979].w[16]" 0.367382877348641;
	setAttr ".wl[979].w[23]" 0.0030965231304601062;
	setAttr ".wl[979].w[24]" 0.0012501787158779182;
	setAttr -s 5 ".wl[980].w";
	setAttr ".wl[980].w[14]" 0.0055395879358322332;
	setAttr ".wl[980].w[15]" 0.71997574860946267;
	setAttr ".wl[980].w[16]" 0.27283636490327379;
	setAttr ".wl[980].w[19]" 0.0010023551836833983;
	setAttr ".wl[980].w[20]" 0.00064594336774796777;
	setAttr -s 5 ".wl[981].w";
	setAttr ".wl[981].w[14]" 0.023543085079947779;
	setAttr ".wl[981].w[15]" 0.5267629157076249;
	setAttr ".wl[981].w[16]" 0.37726047261915602;
	setAttr ".wl[981].w[19]" 0.040097366637839735;
	setAttr ".wl[981].w[20]" 0.032336159955431661;
	setAttr -s 5 ".wl[982].w";
	setAttr ".wl[982].w[15]" 0.08286120864184926;
	setAttr ".wl[982].w[16]" 0.25408194572083054;
	setAttr ".wl[982].w[17]" 0.0056796268903682575;
	setAttr ".wl[982].w[19]" 0.15939155539392966;
	setAttr ".wl[982].w[20]" 0.49798566335302225;
	setAttr -s 5 ".wl[983].w";
	setAttr ".wl[983].w[6]" 0.00037806963353101815;
	setAttr ".wl[983].w[15]" 0.0010592267658198077;
	setAttr ".wl[983].w[16]" 0.0030814007304783612;
	setAttr ".wl[983].w[19]" 0.14977220518541481;
	setAttr ".wl[983].w[20]" 0.84570909768475611;
	setAttr -s 5 ".wl[984].w";
	setAttr ".wl[984].w[7]" 9.3112270259927907e-005;
	setAttr ".wl[984].w[15]" 9.7756256967666591e-005;
	setAttr ".wl[984].w[16]" 0.0001438298610005997;
	setAttr ".wl[984].w[23]" 0.16741053776509568;
	setAttr ".wl[984].w[24]" 0.83225476384667618;
	setAttr -s 5 ".wl[985].w";
	setAttr ".wl[985].w[6]" 0.004113664555744136;
	setAttr ".wl[985].w[15]" 0.02942909601947202;
	setAttr ".wl[985].w[16]" 0.060990154291112104;
	setAttr ".wl[985].w[23]" 0.19724094327588002;
	setAttr ".wl[985].w[24]" 0.70822614185779165;
	setAttr -s 5 ".wl[986].w";
	setAttr ".wl[986].w[6]" 0.0059580708614186901;
	setAttr ".wl[986].w[15]" 0.15724933581238829;
	setAttr ".wl[986].w[16]" 0.58531677644079605;
	setAttr ".wl[986].w[23]" 0.055831194065900779;
	setAttr ".wl[986].w[24]" 0.19564462281949621;
	setAttr -s 5 ".wl[987].w";
	setAttr ".wl[987].w[6]" 0.00027179088580148544;
	setAttr ".wl[987].w[15]" 0.1068860045510823;
	setAttr ".wl[987].w[16]" 0.89161672883680498;
	setAttr ".wl[987].w[23]" 0.00035494576346899854;
	setAttr ".wl[987].w[24]" 0.00087052996284225567;
	setAttr -s 5 ".wl[988].w";
	setAttr ".wl[988].w[15]" 0.056400646564398395;
	setAttr ".wl[988].w[16]" 0.94108273790134034;
	setAttr ".wl[988].w[17]" 0.00082211772761161606;
	setAttr ".wl[988].w[19]" 0.00050396317754774469;
	setAttr ".wl[988].w[20]" 0.0011905346291018746;
	setAttr -s 5 ".wl[989].w";
	setAttr ".wl[989].w[15]" 0.19228023591963386;
	setAttr ".wl[989].w[16]" 0.68233613720216812;
	setAttr ".wl[989].w[17]" 0.0078749317780244781;
	setAttr ".wl[989].w[19]" 0.030676967095841019;
	setAttr ".wl[989].w[20]" 0.086831728004332642;
	setAttr -s 5 ".wl[990].w";
	setAttr ".wl[990].w[16]" 0.28087822718983491;
	setAttr ".wl[990].w[17]" 0.04705687860895684;
	setAttr ".wl[990].w[19]" 0.014491928112903533;
	setAttr ".wl[990].w[20]" 0.58612454918325763;
	setAttr ".wl[990].w[21]" 0.07144841690504701;
	setAttr -s 5 ".wl[991].w";
	setAttr ".wl[991].w[16]" 0.0028080819790868012;
	setAttr ".wl[991].w[17]" 0.0004993450723299362;
	setAttr ".wl[991].w[19]" 0.0026152091958502343;
	setAttr ".wl[991].w[20]" 0.96899891557317575;
	setAttr ".wl[991].w[21]" 0.025078448179557278;
	setAttr -s 5 ".wl[992].w";
	setAttr ".wl[992].w[6]" 6.4411543229684045e-005;
	setAttr ".wl[992].w[16]" 0.00020278464604261132;
	setAttr ".wl[992].w[17]" 8.6148889219617213e-005;
	setAttr ".wl[992].w[23]" 0.00074509659700295878;
	setAttr ".wl[992].w[24]" 0.998901558324505;
	setAttr -s 5 ".wl[993].w";
	setAttr ".wl[993].w[6]" 0.0031275485244597156;
	setAttr ".wl[993].w[16]" 0.078153483136179536;
	setAttr ".wl[993].w[17]" 0.028066821917232396;
	setAttr ".wl[993].w[23]" 0.014801658762775704;
	setAttr ".wl[993].w[24]" 0.87585048765935258;
	setAttr -s 5 ".wl[994].w";
	setAttr ".wl[994].w[15]" 0.012187005946641153;
	setAttr ".wl[994].w[16]" 0.66941700403528159;
	setAttr ".wl[994].w[17]" 0.10134042638229337;
	setAttr ".wl[994].w[23]" 0.0095652779748886842;
	setAttr ".wl[994].w[24]" 0.2074902856608952;
	setAttr -s 5 ".wl[995].w";
	setAttr ".wl[995].w[6]" 0.00016692200152145173;
	setAttr ".wl[995].w[15]" 0.00094979233177905006;
	setAttr ".wl[995].w[16]" 0.98044844309204515;
	setAttr ".wl[995].w[17]" 0.018006588077571901;
	setAttr ".wl[995].w[24]" 0.00042825449708242555;
	setAttr -s 5 ".wl[996].w";
	setAttr ".wl[996].w[6]" 3.6246112794204777e-006;
	setAttr ".wl[996].w[15]" 4.0392663467066492e-005;
	setAttr ".wl[996].w[16]" 0.9790216141083935;
	setAttr ".wl[996].w[17]" 0.02092588918817043;
	setAttr ".wl[996].w[20]" 8.4794286894328896e-006;
	setAttr -s 5 ".wl[997].w";
	setAttr ".wl[997].w[15]" 0.010234033262435842;
	setAttr ".wl[997].w[16]" 0.8596283173223771;
	setAttr ".wl[997].w[17]" 0.083032809663125706;
	setAttr ".wl[997].w[20]" 0.038198145928448862;
	setAttr ".wl[997].w[21]" 0.0089066938236126002;
	setAttr -s 5 ".wl[998].w";
	setAttr ".wl[998].w[9]" 0.03257308236271976;
	setAttr ".wl[998].w[10]" 0.019116769512677594;
	setAttr ".wl[998].w[14]" 0.024274748390882887;
	setAttr ".wl[998].w[18]" 0.83804672787674817;
	setAttr ".wl[998].w[19]" 0.085988671856971649;
	setAttr -s 5 ".wl[999].w";
	setAttr ".wl[999].w[8]" 1.0259310909166843e-005;
	setAttr ".wl[999].w[9]" 2.4300416618646067e-005;
	setAttr ".wl[999].w[18]" 0.18756947619597744;
	setAttr ".wl[999].w[19]" 0.80653525868549847;
	setAttr ".wl[999].w[20]" 0.0058607053909962951;
	setAttr -s 5 ".wl[1000].w";
	setAttr ".wl[1000].w[12]" 3.1631920437645628e-008;
	setAttr ".wl[1000].w[16]" 6.0556507345456395e-008;
	setAttr ".wl[1000].w[17]" 5.5368409366023753e-008;
	setAttr ".wl[1000].w[20]" 0.70365883657689965;
	setAttr ".wl[1000].w[21]" 0.29634101586626327;
	setAttr -s 5 ".wl[1001].w";
	setAttr ".wl[1001].w[12]" 3.1208221449307646e-008;
	setAttr ".wl[1001].w[16]" 6.4939870167757379e-008;
	setAttr ".wl[1001].w[17]" 5.9690071690356356e-008;
	setAttr ".wl[1001].w[20]" 0.5756412767873299;
	setAttr ".wl[1001].w[21]" 0.42435856737450672;
	setAttr -s 5 ".wl[1002].w";
	setAttr ".wl[1002].w[6]" 2.8253371012680246e-007;
	setAttr ".wl[1002].w[16]" 1.4672462752454374e-007;
	setAttr ".wl[1002].w[19]" 2.1373530566616396e-007;
	setAttr ".wl[1002].w[20]" 0.86548862611642186;
	setAttr ".wl[1002].w[21]" 0.13451073088993476;
	setAttr -s 5 ".wl[1003].w";
	setAttr ".wl[1003].w[4]" 0.0019194687035221387;
	setAttr ".wl[1003].w[5]" 0.0031769715648104369;
	setAttr ".wl[1003].w[6]" 0.063394397207851894;
	setAttr ".wl[1003].w[7]" 0.0026688897179664413;
	setAttr ".wl[1003].w[20]" 0.92884027280584913;
	setAttr -s 5 ".wl[1004].w";
	setAttr ".wl[1004].w[1]" 0.12823581781684634;
	setAttr ".wl[1004].w[4]" 0.11692829788528385;
	setAttr ".wl[1004].w[5]" 0.1631406743136862;
	setAttr ".wl[1004].w[6]" 0.32258848601863127;
	setAttr ".wl[1004].w[20]" 0.26910672396555246;
	setAttr -s 5 ".wl[1005].w";
	setAttr ".wl[1005].w[1]" 0.30775334828960399;
	setAttr ".wl[1005].w[2]" 0.044974070643841242;
	setAttr ".wl[1005].w[40]" 0.030190822816104301;
	setAttr ".wl[1005].w[44]" 0.54894202832103545;
	setAttr ".wl[1005].w[45]" 0.068139729929415055;
	setAttr -s 5 ".wl[1006].w";
	setAttr ".wl[1006].w[1]" 4.0446215746905561e-007;
	setAttr ".wl[1006].w[44]" 0.0049913726686080951;
	setAttr ".wl[1006].w[45]" 0.065641296411616465;
	setAttr ".wl[1006].w[46]" 0.57038803245817793;
	setAttr ".wl[1006].w[47]" 0.35897889399944011;
	setAttr -s 5 ".wl[1007].w";
	setAttr ".wl[1007].w[0]" 0.024147676863090654;
	setAttr ".wl[1007].w[1]" 0.36339824377944463;
	setAttr ".wl[1007].w[2]" 0.065286884631011358;
	setAttr ".wl[1007].w[36]" 0.50457238622404399;
	setAttr ".wl[1007].w[37]" 0.042594808502409265;
	setAttr -s 5 ".wl[1008].w";
	setAttr ".wl[1008].w[4]" 0.19200394191998119;
	setAttr ".wl[1008].w[5]" 0.14099029915367803;
	setAttr ".wl[1008].w[6]" 0.44965817050348239;
	setAttr ".wl[1008].w[24]" 0.12293352553702851;
	setAttr ".wl[1008].w[27]" 0.094414062885829694;
	setAttr -s 5 ".wl[1009].w";
	setAttr ".wl[1009].w[4]" 0.002262215134722557;
	setAttr ".wl[1009].w[5]" 0.0030127888838690081;
	setAttr ".wl[1009].w[6]" 0.12772923051138213;
	setAttr ".wl[1009].w[7]" 0.006009491310114177;
	setAttr ".wl[1009].w[24]" 0.86098627415991225;
	setAttr -s 5 ".wl[1010].w";
	setAttr ".wl[1010].w[6]" 3.6807104435567332e-006;
	setAttr ".wl[1010].w[7]" 1.7434222367832438e-006;
	setAttr ".wl[1010].w[12]" 1.5214461648330837e-006;
	setAttr ".wl[1010].w[13]" 1.5006965088405713e-006;
	setAttr ".wl[1010].w[24]" 0.99999155372464588;
	setAttr -s 5 ".wl[1011].w";
	setAttr ".wl[1011].w[12]" 2.6661914626244324e-006;
	setAttr ".wl[1011].w[13]" 2.6659980747206882e-006;
	setAttr ".wl[1011].w[16]" 1.8478990483645021e-006;
	setAttr ".wl[1011].w[17]" 1.772010675848576e-006;
	setAttr ".wl[1011].w[24]" 0.99999104790073845;
	setAttr -s 5 ".wl[1012].w";
	setAttr ".wl[1012].w[12]" 1.4257545787674777e-007;
	setAttr ".wl[1012].w[13]" 1.4184363735696178e-007;
	setAttr ".wl[1012].w[16]" 1.1842479164400827e-007;
	setAttr ".wl[1012].w[23]" 1.1369111128250882e-007;
	setAttr ".wl[1012].w[24]" 0.99999948346500189;
	setAttr -s 5 ".wl[1013].w";
	setAttr ".wl[1013].w[8]" 2.9632380030047309e-006;
	setAttr ".wl[1013].w[9]" 2.9333675422367545e-006;
	setAttr ".wl[1013].w[22]" 0.17445722885562806;
	setAttr ".wl[1013].w[23]" 0.82489113401763881;
	setAttr ".wl[1013].w[24]" 0.00064574052118804108;
	setAttr -s 5 ".wl[1014].w";
	setAttr ".wl[1014].w[0]" 0.23749877127790942;
	setAttr ".wl[1014].w[1]" 0.59384492336873818;
	setAttr ".wl[1014].w[36]" 0.14322255642522438;
	setAttr ".wl[1014].w[37]" 0.020653600590771645;
	setAttr ".wl[1014].w[44]" 0.0047801483373564879;
	setAttr -s 5 ".wl[1015].w";
	setAttr ".wl[1015].w[8]" 0.06072442814203291;
	setAttr ".wl[1015].w[9]" 0.32441500740164392;
	setAttr ".wl[1015].w[10]" 0.16290110525556062;
	setAttr ".wl[1015].w[14]" 0.1421184900993524;
	setAttr ".wl[1015].w[22]" 0.30984096910141012;
	setAttr -s 5 ".wl[1016].w";
	setAttr ".wl[1016].w[1]" 7.4410172145499677e-007;
	setAttr ".wl[1016].w[36]" 0.010078340413849007;
	setAttr ".wl[1016].w[37]" 0.066438111846102682;
	setAttr ".wl[1016].w[38]" 0.54637529095416992;
	setAttr ".wl[1016].w[39]" 0.37710751268415693;
	setAttr -s 5 ".wl[1017].w";
	setAttr ".wl[1017].w[9]" 0.020571559232445712;
	setAttr ".wl[1017].w[10]" 0.020685309072346052;
	setAttr ".wl[1017].w[14]" 0.019075140428139136;
	setAttr ".wl[1017].w[22]" 0.73903945020271555;
	setAttr ".wl[1017].w[23]" 0.20062854106435365;
	setAttr -s 5 ".wl[1018].w";
	setAttr ".wl[1018].w[0]" 0.28563712005806041;
	setAttr ".wl[1018].w[1]" 0.52234044570874205;
	setAttr ".wl[1018].w[36]" 0.0032273131573073341;
	setAttr ".wl[1018].w[44]" 0.16433029904846208;
	setAttr ".wl[1018].w[45]" 0.024464822027428116;
	setAttr -s 5 ".wl[1019].w";
	setAttr ".wl[1019].w[8]" 0.059600559193918601;
	setAttr ".wl[1019].w[9]" 0.3457632447313489;
	setAttr ".wl[1019].w[10]" 0.14561593442099119;
	setAttr ".wl[1019].w[14]" 0.14465513757444109;
	setAttr ".wl[1019].w[18]" 0.30436512407930028;
	setAttr -s 5 ".wl[1020].w";
	setAttr ".wl[1020].w[7]" 7.1514782849256567e-006;
	setAttr ".wl[1020].w[8]" 5.1372485624924238e-006;
	setAttr ".wl[1020].w[18]" 0.0071962865433783593;
	setAttr ".wl[1020].w[19]" 0.83232053666948758;
	setAttr ".wl[1020].w[20]" 0.16047088806028678;
	setAttr -s 5 ".wl[1021].w";
	setAttr ".wl[1021].w[7]" 2.6788187126583213e-007;
	setAttr ".wl[1021].w[8]" 2.1361082279267713e-007;
	setAttr ".wl[1021].w[22]" 0.0017511818499028216;
	setAttr ".wl[1021].w[23]" 0.66115889205160705;
	setAttr ".wl[1021].w[24]" 0.33708944460579626;
	setAttr -s 5 ".wl[1022].w";
	setAttr ".wl[1022].w[6]" 1.0879485896835157e-006;
	setAttr ".wl[1022].w[7]" 1.4815604256495227e-006;
	setAttr ".wl[1022].w[18]" 9.7959047774641219e-007;
	setAttr ".wl[1022].w[19]" 0.086371734030878028;
	setAttr ".wl[1022].w[20]" 0.91362471686962898;
	setAttr -s 5 ".wl[1023].w";
	setAttr ".wl[1023].w[6]" 1.1683033397504137e-007;
	setAttr ".wl[1023].w[7]" 1.1691020603648494e-007;
	setAttr ".wl[1023].w[22]" 2.5227799756944586e-008;
	setAttr ".wl[1023].w[23]" 0.063448428064465892;
	setAttr ".wl[1023].w[24]" 0.9365513129671944;
	setAttr -s 5 ".wl[1024].w";
	setAttr ".wl[1024].w[6]" 9.0258820451575443e-008;
	setAttr ".wl[1024].w[7]" 3.6636690439699091e-008;
	setAttr ".wl[1024].w[19]" 1.9945182013167615e-006;
	setAttr ".wl[1024].w[20]" 0.99234351571543278;
	setAttr ".wl[1024].w[21]" 0.0076543628708549147;
	setAttr -s 5 ".wl[1025].w";
	setAttr ".wl[1025].w[6]" 1.7645088877318858e-007;
	setAttr ".wl[1025].w[7]" 1.3705617184254441e-007;
	setAttr ".wl[1025].w[12]" 1.7662974311414977e-008;
	setAttr ".wl[1025].w[23]" 0.00023429233236149167;
	setAttr ".wl[1025].w[24]" 0.99976537649760355;
	setAttr -s 5 ".wl[1026].w";
	setAttr ".wl[1026].w[1]" 0.028930404876014979;
	setAttr ".wl[1026].w[48]" 0.23719187592683139;
	setAttr ".wl[1026].w[49]" 0.40463623889946015;
	setAttr ".wl[1026].w[50]" 0.26373697116418265;
	setAttr ".wl[1026].w[51]" 0.065504509133510705;
	setAttr -s 5 ".wl[1027].w";
	setAttr ".wl[1027].w[1]" 0.073520043047455977;
	setAttr ".wl[1027].w[48]" 0.24258125993140864;
	setAttr ".wl[1027].w[49]" 0.36151401718701565;
	setAttr ".wl[1027].w[50]" 0.25884661603910347;
	setAttr ".wl[1027].w[51]" 0.063538063795016239;
	setAttr -s 5 ".wl[1028].w";
	setAttr ".wl[1028].w[1]" 0.073356475944497804;
	setAttr ".wl[1028].w[48]" 0.29906390898572327;
	setAttr ".wl[1028].w[49]" 0.3465583098090218;
	setAttr ".wl[1028].w[50]" 0.21115721275054947;
	setAttr ".wl[1028].w[51]" 0.069864092510207684;
	setAttr -s 5 ".wl[1029].w";
	setAttr ".wl[1029].w[1]" 0.014453202633874942;
	setAttr ".wl[1029].w[48]" 0.16748704488090077;
	setAttr ".wl[1029].w[49]" 0.40558032319070009;
	setAttr ".wl[1029].w[50]" 0.30655049742176932;
	setAttr ".wl[1029].w[51]" 0.10592893187275497;
	setAttr -s 5 ".wl[1030].w";
	setAttr ".wl[1030].w[1]" 0.080263858288025042;
	setAttr ".wl[1030].w[28]" 0.28057573110585371;
	setAttr ".wl[1030].w[29]" 0.31551217163070727;
	setAttr ".wl[1030].w[30]" 0.26308568426952417;
	setAttr ".wl[1030].w[31]" 0.060562554705889761;
	setAttr -s 5 ".wl[1031].w";
	setAttr ".wl[1031].w[1]" 0.032053954432567602;
	setAttr ".wl[1031].w[28]" 0.24790016077328095;
	setAttr ".wl[1031].w[29]" 0.39107907651837137;
	setAttr ".wl[1031].w[30]" 0.26917784852248705;
	setAttr ".wl[1031].w[31]" 0.059788959753293069;
	setAttr -s 5 ".wl[1032].w";
	setAttr ".wl[1032].w[1]" 0.013774294477980682;
	setAttr ".wl[1032].w[28]" 0.16569198804106647;
	setAttr ".wl[1032].w[29]" 0.41551288676536735;
	setAttr ".wl[1032].w[30]" 0.30561572579982471;
	setAttr ".wl[1032].w[31]" 0.099405104915760809;
	setAttr -s 5 ".wl[1033].w";
	setAttr ".wl[1033].w[1]" 0.077678344001828922;
	setAttr ".wl[1033].w[28]" 0.32179933732417126;
	setAttr ".wl[1033].w[29]" 0.31609779341492056;
	setAttr ".wl[1033].w[30]" 0.21141257542205755;
	setAttr ".wl[1033].w[31]" 0.073011949837021847;
	setAttr -s 5 ".wl[1034].w";
	setAttr ".wl[1034].w[1]" 0.011133697904383675;
	setAttr ".wl[1034].w[40]" 0.15890341499669783;
	setAttr ".wl[1034].w[41]" 0.43781508376045203;
	setAttr ".wl[1034].w[42]" 0.29877587592805105;
	setAttr ".wl[1034].w[43]" 0.093371927410415528;
	setAttr -s 5 ".wl[1035].w";
	setAttr ".wl[1035].w[1]" 0.068361845616703387;
	setAttr ".wl[1035].w[40]" 0.2791364122209769;
	setAttr ".wl[1035].w[41]" 0.38118103288571142;
	setAttr ".wl[1035].w[42]" 0.20686207393429337;
	setAttr ".wl[1035].w[43]" 0.064458635342314941;
	setAttr -s 5 ".wl[1036].w";
	setAttr ".wl[1036].w[1]" 0.08257552964327626;
	setAttr ".wl[1036].w[40]" 0.22722093277624264;
	setAttr ".wl[1036].w[41]" 0.36802152179577419;
	setAttr ".wl[1036].w[42]" 0.24347538796823767;
	setAttr ".wl[1036].w[43]" 0.078706627816469199;
	setAttr -s 5 ".wl[1037].w";
	setAttr ".wl[1037].w[1]" 0.028407397087875798;
	setAttr ".wl[1037].w[40]" 0.24147543178313891;
	setAttr ".wl[1037].w[41]" 0.40267341541878326;
	setAttr ".wl[1037].w[42]" 0.24673921826026579;
	setAttr ".wl[1037].w[43]" 0.080704537449936234;
	setAttr -s 5 ".wl[1038].w";
	setAttr ".wl[1038].w[1]" 0.069456493642924985;
	setAttr ".wl[1038].w[32]" 0.33970067256545955;
	setAttr ".wl[1038].w[33]" 0.31751211216783481;
	setAttr ".wl[1038].w[34]" 0.21991813373815627;
	setAttr ".wl[1038].w[35]" 0.053412587885624488;
	setAttr -s 5 ".wl[1039].w";
	setAttr ".wl[1039].w[1]" 0.01255761127705139;
	setAttr ".wl[1039].w[32]" 0.19536296160065394;
	setAttr ".wl[1039].w[33]" 0.39395693350177646;
	setAttr ".wl[1039].w[34]" 0.30852871441069496;
	setAttr ".wl[1039].w[35]" 0.089593779209823116;
	setAttr -s 5 ".wl[1040].w";
	setAttr ".wl[1040].w[1]" 0.028594800907593403;
	setAttr ".wl[1040].w[32]" 0.23836808717211513;
	setAttr ".wl[1040].w[33]" 0.40813866316697001;
	setAttr ".wl[1040].w[34]" 0.25961438684029631;
	setAttr ".wl[1040].w[35]" 0.065284061913025201;
	setAttr -s 5 ".wl[1041].w";
	setAttr ".wl[1041].w[1]" 0.076814571835436662;
	setAttr ".wl[1041].w[32]" 0.25661176205960817;
	setAttr ".wl[1041].w[33]" 0.35043840256260034;
	setAttr ".wl[1041].w[34]" 0.27001158557826827;
	setAttr ".wl[1041].w[35]" 0.046123677964086396;
	setAttr -s 5 ".wl[1042].w";
	setAttr ".wl[1042].w[1]" 0.053739082844313203;
	setAttr ".wl[1042].w[44]" 0.20749622169005771;
	setAttr ".wl[1042].w[45]" 0.36748828701244163;
	setAttr ".wl[1042].w[46]" 0.30760576830467151;
	setAttr ".wl[1042].w[47]" 0.063670640148516075;
	setAttr -s 5 ".wl[1043].w";
	setAttr ".wl[1043].w[1]" 0.058985117505366572;
	setAttr ".wl[1043].w[44]" 0.26850741442747522;
	setAttr ".wl[1043].w[45]" 0.36801135589510842;
	setAttr ".wl[1043].w[46]" 0.23964155664154912;
	setAttr ".wl[1043].w[47]" 0.064854555530500541;
	setAttr -s 5 ".wl[1044].w";
	setAttr ".wl[1044].w[1]" 0.01628215696861373;
	setAttr ".wl[1044].w[44]" 0.14443349538591765;
	setAttr ".wl[1044].w[45]" 0.34867437213605551;
	setAttr ".wl[1044].w[46]" 0.37407303889197502;
	setAttr ".wl[1044].w[47]" 0.11653693661743794;
	setAttr -s 5 ".wl[1045].w";
	setAttr ".wl[1045].w[1]" 0.060491273908761481;
	setAttr ".wl[1045].w[44]" 0.25400312201061404;
	setAttr ".wl[1045].w[45]" 0.38464409892463514;
	setAttr ".wl[1045].w[46]" 0.22928387099356487;
	setAttr ".wl[1045].w[47]" 0.071577634162424408;
	setAttr -s 5 ".wl[1046].w";
	setAttr ".wl[1046].w[1]" 0.019126623034669291;
	setAttr ".wl[1046].w[36]" 0.15351605746521971;
	setAttr ".wl[1046].w[37]" 0.37530510251698079;
	setAttr ".wl[1046].w[38]" 0.33596935445765197;
	setAttr ".wl[1046].w[39]" 0.11608286252547829;
	setAttr -s 5 ".wl[1047].w";
	setAttr ".wl[1047].w[1]" 0.072566084725692134;
	setAttr ".wl[1047].w[36]" 0.30250729786972369;
	setAttr ".wl[1047].w[37]" 0.32103707924623914;
	setAttr ".wl[1047].w[38]" 0.22462722727957674;
	setAttr ".wl[1047].w[39]" 0.079262310878768422;
	setAttr -s 5 ".wl[1048].w";
	setAttr ".wl[1048].w[1]" 0.060738767234375254;
	setAttr ".wl[1048].w[36]" 0.25785185996395255;
	setAttr ".wl[1048].w[37]" 0.31388075793819159;
	setAttr ".wl[1048].w[38]" 0.28707015804001967;
	setAttr ".wl[1048].w[39]" 0.08045845682346088;
	setAttr -s 5 ".wl[1049].w";
	setAttr ".wl[1049].w[1]" 0.069958063229927245;
	setAttr ".wl[1049].w[36]" 0.29777158398875353;
	setAttr ".wl[1049].w[37]" 0.34119960510238828;
	setAttr ".wl[1049].w[38]" 0.21469563979718689;
	setAttr ".wl[1049].w[39]" 0.076375107881744092;
	setAttr -s 5 ".wl[1050].w";
	setAttr ".wl[1050].w[1]" 0.03053335405980059;
	setAttr ".wl[1050].w[4]" 0.41077217469118393;
	setAttr ".wl[1050].w[5]" 0.0589408855976132;
	setAttr ".wl[1050].w[6]" 0.10305019321493848;
	setAttr ".wl[1050].w[27]" 0.39670339243646374;
	setAttr -s 5 ".wl[1051].w";
	setAttr ".wl[1051].w[1]" 0.34757062587868864;
	setAttr ".wl[1051].w[2]" 0.1329919024194228;
	setAttr ".wl[1051].w[4]" 0.20306341426168387;
	setAttr ".wl[1051].w[27]" 0.19486881066230788;
	setAttr ".wl[1051].w[28]" 0.12150524677789672;
	setAttr -s 5 ".wl[1052].w";
	setAttr ".wl[1052].w[4]" 0.40060018083036714;
	setAttr ".wl[1052].w[5]" 0.10390806043611722;
	setAttr ".wl[1052].w[6]" 0.13184705947900963;
	setAttr ".wl[1052].w[26]" 0.062071674245209332;
	setAttr ".wl[1052].w[27]" 0.30157302500929678;
	setAttr -s 5 ".wl[1053].w";
	setAttr ".wl[1053].w[4]" 0.12455889989118631;
	setAttr ".wl[1053].w[5]" 0.13658530912188502;
	setAttr ".wl[1053].w[6]" 0.54238624715478689;
	setAttr ".wl[1053].w[24]" 0.11095272933563118;
	setAttr ".wl[1053].w[27]" 0.085516814496510676;
	setAttr -s 5 ".wl[1054].w";
	setAttr ".wl[1054].w[4]" 0.1222627537896623;
	setAttr ".wl[1054].w[5]" 0.13749997164497446;
	setAttr ".wl[1054].w[6]" 0.5411059122827685;
	setAttr ".wl[1054].w[24]" 0.11307820775448098;
	setAttr ".wl[1054].w[26]" 0.086053154528113726;
	setAttr -s 5 ".wl[1055].w";
	setAttr ".wl[1055].w[3]" 0.057402564742981672;
	setAttr ".wl[1055].w[4]" 0.38976486944126493;
	setAttr ".wl[1055].w[5]" 0.11543667311677322;
	setAttr ".wl[1055].w[6]" 0.14907682163096983;
	setAttr ".wl[1055].w[26]" 0.28831907106801041;
	setAttr -s 5 ".wl[1056].w";
	setAttr ".wl[1056].w[1]" 0.343433086520327;
	setAttr ".wl[1056].w[2]" 0.14619113913949802;
	setAttr ".wl[1056].w[4]" 0.19628644310513052;
	setAttr ".wl[1056].w[26]" 0.18936210766243977;
	setAttr ".wl[1056].w[32]" 0.12472722357260471;
	setAttr -s 5 ".wl[1057].w";
	setAttr ".wl[1057].w[1]" 0.030848425988509461;
	setAttr ".wl[1057].w[4]" 0.41570819097300488;
	setAttr ".wl[1057].w[5]" 0.055384456176416734;
	setAttr ".wl[1057].w[6]" 0.094048865304924262;
	setAttr ".wl[1057].w[26]" 0.40401006155714458;
	setAttr -s 5 ".wl[1058].w";
	setAttr ".wl[1058].w[2]" 0.0082834604615205035;
	setAttr ".wl[1058].w[3]" 0.0097899561927353076;
	setAttr ".wl[1058].w[4]" 0.48884933582190704;
	setAttr ".wl[1058].w[5]" 0.0042279117019300627;
	setAttr ".wl[1058].w[27]" 0.48884933582190704;
	setAttr -s 5 ".wl[1059].w";
	setAttr ".wl[1059].w[1]" 0.019736809179846149;
	setAttr ".wl[1059].w[2]" 0.047467365608023455;
	setAttr ".wl[1059].w[3]" 0.042436399238216189;
	setAttr ".wl[1059].w[4]" 0.46424536779829073;
	setAttr ".wl[1059].w[27]" 0.42611405817562337;
	setAttr -s 5 ".wl[1060].w";
	setAttr ".wl[1060].w[2]" 0.030171913127903321;
	setAttr ".wl[1060].w[3]" 0.044628232845740266;
	setAttr ".wl[1060].w[4]" 0.5081822927659394;
	setAttr ".wl[1060].w[26]" 0.038970405355856795;
	setAttr ".wl[1060].w[27]" 0.37804715590456028;
	setAttr -s 5 ".wl[1061].w";
	setAttr ".wl[1061].w[3]" 0.023074943368381617;
	setAttr ".wl[1061].w[4]" 0.45048345779645377;
	setAttr ".wl[1061].w[5]" 0.065023177906369994;
	setAttr ".wl[1061].w[6]" 0.050519029249885009;
	setAttr ".wl[1061].w[27]" 0.4108993916789096;
	setAttr -s 5 ".wl[1062].w";
	setAttr ".wl[1062].w[3]" 0.019507921949077151;
	setAttr ".wl[1062].w[4]" 0.45886896857601933;
	setAttr ".wl[1062].w[5]" 0.062199976641888532;
	setAttr ".wl[1062].w[6]" 0.048371452796307085;
	setAttr ".wl[1062].w[26]" 0.41105168003670778;
	setAttr -s 5 ".wl[1063].w";
	setAttr ".wl[1063].w[2]" 0.030290029798099485;
	setAttr ".wl[1063].w[3]" 0.042639714805410803;
	setAttr ".wl[1063].w[4]" 0.51806761668634982;
	setAttr ".wl[1063].w[26]" 0.37470125064533227;
	setAttr ".wl[1063].w[27]" 0.034301388064807523;
	setAttr -s 5 ".wl[1064].w";
	setAttr ".wl[1064].w[1]" 0.017061550713012772;
	setAttr ".wl[1064].w[2]" 0.044570568679048711;
	setAttr ".wl[1064].w[3]" 0.040467894740152791;
	setAttr ".wl[1064].w[4]" 0.4644060634524203;
	setAttr ".wl[1064].w[26]" 0.43349392241536538;
	setAttr -s 5 ".wl[1065].w";
	setAttr ".wl[1065].w[2]" 0.0091657796795246264;
	setAttr ".wl[1065].w[3]" 0.010387604108079037;
	setAttr ".wl[1065].w[4]" 0.48832653680388727;
	setAttr ".wl[1065].w[5]" 0.003793542604621811;
	setAttr ".wl[1065].w[26]" 0.48832653680388727;
	setAttr -s 5 ".wl[1066].w";
	setAttr ".wl[1066].w[2]" 0.0021486458292034063;
	setAttr ".wl[1066].w[3]" 0.0033255397475103507;
	setAttr ".wl[1066].w[4]" 0.50942932068780322;
	setAttr ".wl[1066].w[5]" 0.0013127211730638404;
	setAttr ".wl[1066].w[27]" 0.48378377256241928;
	setAttr -s 5 ".wl[1067].w";
	setAttr ".wl[1067].w[2]" 0.019274636708270312;
	setAttr ".wl[1067].w[3]" 0.020508426825746988;
	setAttr ".wl[1067].w[4]" 0.5138844833777787;
	setAttr ".wl[1067].w[26]" 0.0045076008502706651;
	setAttr ".wl[1067].w[27]" 0.44182485223793344;
	setAttr -s 5 ".wl[1068].w";
	setAttr ".wl[1068].w[2]" 0.0086357270363743716;
	setAttr ".wl[1068].w[3]" 0.018096087949149048;
	setAttr ".wl[1068].w[4]" 0.59351378792224463;
	setAttr ".wl[1068].w[26]" 0.0097576518686172502;
	setAttr ".wl[1068].w[27]" 0.3699967452236147;
	setAttr -s 5 ".wl[1069].w";
	setAttr ".wl[1069].w[3]" 0.011372323839561674;
	setAttr ".wl[1069].w[4]" 0.52531805225644634;
	setAttr ".wl[1069].w[5]" 0.01270453078416881;
	setAttr ".wl[1069].w[26]" 0.0056062264890784311;
	setAttr ".wl[1069].w[27]" 0.44499886663074467;
	setAttr -s 5 ".wl[1070].w";
	setAttr ".wl[1070].w[3]" 0.0083059854940193117;
	setAttr ".wl[1070].w[4]" 0.54258049879299519;
	setAttr ".wl[1070].w[5]" 0.011898312454338214;
	setAttr ".wl[1070].w[26]" 0.43349076981550888;
	setAttr ".wl[1070].w[27]" 0.0037244334431384041;
	setAttr -s 5 ".wl[1071].w";
	setAttr ".wl[1071].w[2]" 0.0070397562180403188;
	setAttr ".wl[1071].w[3]" 0.013464930422317329;
	setAttr ".wl[1071].w[4]" 0.6291191987613306;
	setAttr ".wl[1071].w[26]" 0.34257014751697668;
	setAttr ".wl[1071].w[27]" 0.0078059670813348603;
	setAttr -s 5 ".wl[1072].w";
	setAttr ".wl[1072].w[2]" 0.016322414487942759;
	setAttr ".wl[1072].w[3]" 0.017077339712974333;
	setAttr ".wl[1072].w[4]" 0.51702997497883874;
	setAttr ".wl[1072].w[26]" 0.44677105568283237;
	setAttr ".wl[1072].w[27]" 0.0027992151374117121;
	setAttr -s 5 ".wl[1073].w";
	setAttr ".wl[1073].w[2]" 0.0021182724632957256;
	setAttr ".wl[1073].w[3]" 0.0031989143241244844;
	setAttr ".wl[1073].w[4]" 0.51022787356005728;
	setAttr ".wl[1073].w[5]" 0.0016609226740724268;
	setAttr ".wl[1073].w[26]" 0.48279401697844998;
	setAttr -s 52 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -5.7663222067832329 -0.0073656140238135843 -0 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -6.4094930180667236 -0.0073656140238137274 -0 1;
	setAttr ".pm[2]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -8.8964201550295474 -0.007365614023814279 -0 1;
	setAttr ".pm[3]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -10.868810642965581 -0.0073656140238147171 -0 1;
	setAttr ".pm[4]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -12.283786427789263 -0.0073656140238150319 -0 1;
	setAttr ".pm[5]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -14.727835510666523 -0.007365614023815574 -0 1;
	setAttr ".pm[6]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -15.79978686280567 -0.0073656140238158125 -0 1;
	setAttr ".pm[7]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -24.335500798126809 -0.0073656140238177077 -0 1;
	setAttr ".pm[8]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -30.675001767052592 -0.0073656140238191154 -0 1;
	setAttr ".pm[9]" -type "matrix" 0.99999999999999956 -0 0 -0 -0 0.99999999999999956 -0 0
		 0 -0 1 -0 0.0073656140238123023 -37.673152187295337 -0 1;
	setAttr ".pm[10]" -type "matrix" 0.93528625745628358 0.35389209741588978 -4.3339282434391269e-017 -0
		 0.35389209741588978 -0.93528625745628358 1.1453953214803447e-016 0 0 -1.2246467991473532e-016 -1 -0
		 -12.640397814002741 35.315030924609914 -4.3248439583613304e-015 1;
	setAttr ".pm[11]" -type "matrix" 0.080200588641744938 0.996778744547413 -4.3339282434391269e-017 -0
		 0.996778744547413 -0.080200588641744938 1.1453953214803449e-016 0 1.1069473509301693e-016 -5.2385813435560759e-017 -1 -0
		 -34.505745296158779 9.6446489623322549 -4.3248471159376217e-015 1;
	setAttr ".pm[12]" -type "matrix" 0.059595380047240826 0.9982226157911992 -4.3339282434391269e-017 -0
		 0.9982226157911992 -0.059595380047240826 1.1453953214803449e-016 0 1.1175313038465898e-016 -5.0088278826966952e-017 -1 -0
		 -27.420697598813121 9.0802259447683031 -3.5191616829318827e-015 1;
	setAttr ".pm[13]" -type "matrix" 0.99999999999999956 -3.3306690738754667e-016 -4.3339282434391269e-017 -0
		 -3.3306690738754667e-016 -0.99999999999999956 1.1453953214803449e-016 0 -4.3339282434391331e-017 -1.1453953214803452e-016 -1 -0
		 8.0970600000000061 16.73879999999998 -2.2681750909477306e-015 1;
	setAttr ".pm[14]" -type "matrix" 0.93528625745628358 0.35389209741588978 -0 -0 -0.35389209741588978 0.93528625745628358 -0 0
		 0 -0 1 -0 12.640390848101266 -35.315013807124828 1.9721522630525295e-031 1;
	setAttr ".pm[15]" -type "matrix" 0.080200588641744938 0.996778744547413 -0 -0 -0.996778744547413 0.080200588641744938 -0 0
		 0 -0 1 -0 34.505697437673064 -9.6446497987948696 1.9721522630525295e-031 1;
	setAttr ".pm[16]" -type "matrix" 0.059595380047235469 0.99822261579119953 -0 -0 -0.99822261579119953 0.059595380047235469 -0 0
		 0 -0 1 -0 27.420691684835134 -9.0802225489111397 1.9721522630525295e-031 1;
	setAttr ".pm[17]" -type "matrix" 0.99999999999999956 -4.1633363423443331e-016 0 -0
		 4.1633363423443331e-016 0.99999999999999956 -0 0 0 -0 1 -0 -8.0970595804274961 -16.738790045955884 1.9721522630525295e-031 1;
	setAttr ".pm[18]" -type "matrix" -2.3165150991497292e-016 7.7434683126507555e-016 0.99999999999999978 -0
		 0.53877568972120859 -0.84244926029134559 7.7434683126507555e-016 -0 0.84244926029134592 0.53877568972120882 -2.3165150991497297e-016 -0
		 -19.188332989366469 31.922388595549833 -2.9069345391661482e-014 1;
	setAttr ".pm[19]" -type "matrix" -7.4099258557907051e-016 3.2280865114335755e-016 0.99999999999999933 -0
		 0.99122790068263433 -0.13216372009101804 7.7434683126507546e-016 -0 0.13216372009101809 0.99122790068263467 -2.3165150991497297e-016 -0
		 -32.796168119569039 10.288928939563352 -2.7545866131983901e-014 1;
	setAttr ".pm[20]" -type "matrix" -7.8811390352244133e-016 -3.0177422291446007e-016 -0.99999999999999933 -0
		 0.99851030783695405 -0.054563404799834056 -7.6766474136120549e-016 0 -0.054563404799834084 -0.99851030783695438 3.5393375515578936e-016 0
		 -27.727182019985573 -4.357811890576758 2.2207354265434994e-014 1;
	setAttr ".pm[21]" -type "matrix" -0.99999999999999956 -5.5980893356962746e-016 2.7163379219298504e-016 0
		 5.6460288818898196e-016 -0.99999999999999978 -6.0368376963992857e-016 0 3.5393375515579054e-016 -7.6327832942979492e-016 1.0000000000000002 -0
		 -9.5859971101358084e-015 16.258700000000008 5.9253469280335755 1;
	setAttr ".pm[22]" -type "matrix" 3.9641772471365144e-016 -2.0772506288150221e-016 -0.99999999999999956 -0
		 -0.53877568972120837 0.8424492602913457 -5.1985644009087903e-016 0 0.84244926029134615 0.53877568972120859 1.9467427359051815e-016 -0
		 19.188333192696433 -31.922381882056076 1.9153620735784965e-014 1;
	setAttr ".pm[23]" -type "matrix" 4.1451565430908419e-016 1.687408858249365e-016 -0.99999999999999978 -0
		 -0.99122790068263433 0.13216372009101895 -5.1985644009087912e-016 0 0.13216372009101912 0.99122790068263478 1.9467427359051824e-016 -0
		 32.812288613353061 -10.167704103848592 1.7146797087508631e-014 1;
	setAttr ".pm[24]" -type "matrix" 3.7588368726800526e-016 -3.6538064864071438e-016 0.99999999999999978 -0
		 -0.99851030783695416 0.054563404799833182 5.2653852999474879e-016 0 -0.054563404799833098 -0.99851030783695471 -3.1695651883133473e-016 -0
		 27.79724822023692 5.6399261781674621 -1.3618516476805636e-014 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 4.8856628133070101e-016 4.4821734551872919e-016 -0
		 -3.0612873847411876e-016 0.99999999999999978 8.1878948066105315e-016 0 -3.1695651883133394e-016 -9.5062846483529048e-016 1.0000000000000002 -0
		 4.3708008284480871e-015 -16.258697085322748 -6.1699280161556507 1;
	setAttr ".pm[26]" -type "matrix" 0.99999999999999956 -0 0 -0 -0 0.99999999999999956 -0 0
		 0 -0 1 -0 -1.4915193306751529 -12.29876072056787 -1.0468774973761006 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 -0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 -0
		 1.4915199999999966 12.298799999999993 1.0468799999999985 1;
	setAttr ".pm[28]" -type "matrix" 0.36244626115494899 0.93200467154129518 -1.1413765377934276e-016 -0
		 0.9320046715412954 -0.36244626115494899 4.4386865358633402e-017 0 1.2325951644078301e-032 -1.224646799147353e-016 -1 -0
		 -4.0138072670648492 4.6860810576427481 1.8854677559850757 1;
	setAttr ".pm[29]" -type "matrix" 0.29408584883752353 0.95577900872194943 -1.1413765377934279e-016 -0
		 0.95577900872194965 -0.29408584883752353 4.4386865358633402e-017 0 8.8577653767278894e-018 -1.2214392256329996e-016 -1 -0
		 -1.7891297807334885 4.4893209696688645 2.5046169615380904 1;
	setAttr ".pm[30]" -type "matrix" 0.35389209741588951 0.93528625745628358 -1.1413765377934276e-016 -0
		 0.9352862574562838 -0.35389209741588956 4.4386865358633402e-017 0 1.122011491391968e-018 -1.224595399176061e-016 -1 -0
		 -0.1599922979378775 4.5873335309731749 2.7836659747638088 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999956 -1.6653345369377338e-016 -1.1413765377934279e-016 -0
		 -5.5511151231257784e-017 -0.99999999999999978 4.4386865358633395e-017 0 -1.1413765377934279e-016 -4.4386865358633395e-017 -1 -0
		 4.696259999999997 0.55096068238248408 3.0029518324769304 1;
	setAttr ".pm[32]" -type "matrix" 0.36244626115494921 0.9320046715412954 0 -0 -0.9320046715412954 0.36244626115494921 -0 0
		 0 -0 1 -0 3.9841300014599539 -4.6745420328495175 -1.8836108291845504 1;
	setAttr ".pm[33]" -type "matrix" 0.29408584883752381 0.95577900872194965 0 -0 -0.95577900872194965 0.29408584883752381 -0 0
		 0 -0 1 -0 1.7308369132948447 -4.4423438146215446 -2.5179272738919369 1;
	setAttr ".pm[34]" -type "matrix" 0.35389209741588973 0.9352862574562838 0 -0 -0.9352862574562838 0.35389209741588973 -0 0
		 0 -0 1 -0 0.11594572455262447 -4.4400380609464642 -2.9447873746815572 1;
	setAttr ".pm[35]" -type "matrix" 0.99999999999999978 -2.7755575615628904e-016 0 -0
		 2.7755575615628904e-016 0.99999999999999978 -0 0 0 -0 1 -0 -4.5547317937135192 -0.46703737454323052 -3.1200433678376314 1;
	setAttr ".pm[36]" -type "matrix" 0.014284256782849836 0.99989797479950981 0 -0 -0.99989797479950981 0.014284256782849836 -0 0
		 0 -0 1 -0 5.4063880329379428 -0.11632461644808351 -1.8854677559850752 1;
	setAttr ".pm[37]" -type "matrix" -1.3877787807814451e-017 0.99999999999999978 -0 0
		 -0.99999999999999978 -1.3877787807814451e-017 -0 0 0 -0 1 -0 3.0954258341623957 -0.072116116641899708 -2.7134101043739958 1;
	setAttr ".pm[38]" -type "matrix" -1.3877787807814451e-017 0.99999999999999978 0 -0
		 -0.99999999999999978 -1.3877787807814451e-017 -0 0 0 -0 1 -0 1.7742417075086414 -0.072116116641899569 -3.1592252150449571 1;
	setAttr ".pm[39]" -type "matrix" 0.99999999999999956 2.3592239273284562e-016 0 -0
		 -2.3592239273284562e-016 0.99999999999999956 -0 0 0 -0 1 -0 -0.072116116641899319 -0.48608718402122864 -3.3502888339039374 1;
	setAttr ".pm[40]" -type "matrix" -0.36244626115494927 -0.9320046715412954 0 -0 0.9320046715412954 -0.36244626115494927 -0 0
		 0 -0 1 -0 -3.9841325343439804 4.6745408838068574 1.8836100000000002 1;
	setAttr ".pm[41]" -type "matrix" -0.29408584883752387 -0.95577900872194965 0 -0 0.95577900872194965 -0.29408584883752387 -0 0
		 0 -0 1 -0 -1.7274913519090562 4.5184534011154982 2.353882561598704 1;
	setAttr ".pm[42]" -type "matrix" -0.35389209741588828 -0.93528625745628435 0 -0 0.93528625745628435 -0.35389209741588828 -0 0
		 0 -0 1 -0 -0.1312958253520235 4.6064358376146473 2.6881977122225078 1;
	setAttr ".pm[43]" -type "matrix" -0.99999999999999956 3.8857805861880444e-016 0 -0
		 -3.8857805861880444e-016 -0.99999999999999956 0 0 0 -0 1 -0 4.6038178854514689 0.5415468342071017 2.9875977908261593 1;
	setAttr ".pm[44]" -type "matrix" -0.014284256782850498 -0.99989797479950981 0 -0
		 0.99989797479950981 -0.014284256782850498 -0 0 0 -0 1 -0 -5.4063899771256061 0.11632463074526511 1.8854700000000002 1;
	setAttr ".pm[45]" -type "matrix" -8.4186130289154417e-015 -0.99999999999999978 0 -0
		 0.99999999999999978 -8.4186130289154417e-015 -0 0 0 -0 1 -0 -3.0954299999999977 0.072116100000026079 2.7134099999999992 1;
	setAttr ".pm[46]" -type "matrix" -8.4186130289154417e-015 -0.99999999999999978 0 -0
		 0.99999999999999978 -8.4186130289154417e-015 -0 0 0 -0 1 -0 -1.774239999999998 0.072116100000014935 3.1592300000000009 1;
	setAttr ".pm[47]" -type "matrix" -0.99999999999999978 -1.3010426069826206e-016 0 -0
		 1.3010426069826206e-016 -0.99999999999999978 -0 0 0 -0 1 -0 0.072116099999999933 0.4860869999999996 3.3502900000000002 1;
	setAttr ".pm[48]" -type "matrix" -0.36244626115494921 -0.9320046715412954 -1.1413765377934279e-016 0
		 -0.93200467154129507 0.36244626115494921 4.438686535863342e-017 0 0 1.2246467991473535e-016 -1 -0
		 4.0138075630858534 -4.6860811727620302 -1.8854700000000004 1;
	setAttr ".pm[49]" -type "matrix" -0.29408584883752376 -0.95577900872194965 -1.1413765377934276e-016 -0
		 -0.95577900872194932 0.29408584883752376 4.4386865358633414e-017 0 -8.8577653767278771e-018 1.2214392256329998e-016 -1 -0
		 1.7864612536042188 -4.2785924715388264 -2.5423114824412352 1;
	setAttr ".pm[50]" -type "matrix" -0.35389209741588978 -0.9352862574562838 -1.1413765377934279e-016 -0
		 -0.93528625745628347 0.35389209741588973 4.4386865358633414e-017 0 -1.1220114913919556e-018 1.224595399176061e-016 -1 -0
		 0.22542137313222019 -4.3009131790909736 -2.8663866314461632 1;
	setAttr ".pm[51]" -type "matrix" -0.99999999999999978 2.7755575615628894e-016 -1.1413765377934279e-016 -0
		 3.3306690738754676e-016 0.99999999999999956 4.4386865358633414e-017 -0 1.1413765377934281e-016 4.4386865358633402e-017 -1 -0
		 -4.4363148384423621 -0.44456565020710564 -3.0912850388243291 1;
	setAttr ".gm" -type "matrix" -0.10203177324528101 -2.7172704738491299e-008 10.790350132494433 0
		 -1.0144603143621637e-005 19.046594619748298 -4.7961775974140558e-008 0 -10.790350132492902 -5.7474165689658033e-006 -0.10203177324528101 0
		 1.00827312469482 25.2099723815918 0 1;
	setAttr -s 51 ".ma";
	setAttr -s 52 ".dpf[0:51]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 51 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 51 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "B63195E4-4463-2E81-2CF5-B59C8D2DB045";
createNode objectSet -n "skinCluster1Set";
	rename -uid "69B23BB0-406C-1F2D-5D72-43B1867AEB5A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "9B09ECF2-4EF4-11BD-9724-569C4CFC9656";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "1C7526D1-45B9-AB9D-7044-81B907CBF5E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "E9A34ACC-4A2A-3D40-C5B9-BC9279844B3B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "122CE632-4434-615D-2BE1-5A820D01E344";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "F61C7F54-4AF3-BAC3-59C0-D3A45CDA0289";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "6B04F458-4F78-9052-DFEA-278F35626E65";
	setAttr -s 51 ".wm";
	setAttr -s 52 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 2.1073424255447014e-008 4.6792401632183028e-024
		 4.9303806576313227e-032 0 -0.0073656140238123058 5.7663222067832347 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.64317081128348963 1.4281260869075427e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4869271369628252 5.5220875360424965e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9723904879360359 4.3795866665164672e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4149757848236801 3.1418773911966012e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4440490828772607 5.4268791302486636e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0719513521391468 2.3802101448458992e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.5357139353211373 1.8953092285214658e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.3395009689257851 1.4076519880669787e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.9981504202427569 1.5539015452687444e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 -0 0 0 -0.66795438597618739
		 -0.17015218729535064 -1.9721500000000004e-031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.98368853237604736 -0.17988015808270247 1.1014482991305073e-017 6.0233550626614191e-017 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -2.612229374175355e-030 8.1097994005264412e-028
		 2.7057473934655791e-015 0 -6.5978419186681947 -2.5783567096482329e-005 3.1575762905640941e-021 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.53490063144289224 0.8449149747057364 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 -5.4096388855160069e-033 5.0796617689762967e-028
		 4.9374981140674878e-017 0 -7.2784460833052265 -4.3537462453002718e-006 -8.0568543300573904e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.010327867463707827 0.9999466661545765 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.194196245572716 2.3838152571897808e-006
		 -1.2509865919841513e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.68571299388036955 0.72787202860366895 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 -0 0 0 0.68268607139303328
		 -0.17017066222139476 -1.9721522630525295e-031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.17988015808270247 0.98368853237604736 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 -5.2282865979016073e-016 0 6.5978561809095062
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.53490063144289224 0.8449149747057364 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 -3.2595581187118462e-016 0 7.2784040673957433
		 1.5543122344752192e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.010327867463710514 0.9999466661545765 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.194200242942035 9.3258734068513149e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.68571299388037155 0.72787202860366707 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 1.7538088352430445e-016 -1.7097349794839153e-016
		 1.8529554434697342e-031 0 0.0073656140238123023 -0.44195218729534957 -1.0338099999999999 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.67868425285462197 0.19846330876805326 0.67868425285462197 0.19846330876805268 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 3.6005378936045696e-028 2.7478239542988641e-027
		 1.239921632824586e-015 0 -5.8812155471901955 0.23057060682364777 -1.5234792596775813e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42107557273652019 0.90702555754764236 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -1.0909519577602629e-028 -1.8144954105066431e-027
		 7.0693165320750138e-018 0 -6.3638813282140152 0.84851781384312008 -5.8721899048570092e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99562542496865192 0.093434539416595283 -5.7212154813170306e-018 6.096447449187914e-017 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.169395374943129 0.67157806495572658
		 1.013241166700316e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.48616781958500876 -0.51345968799892983 0.4861678195850081 0.51345968799893049 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -1.7725628740338579e-016 1.690283996328504e-016
		 -1.2093368202159178e-031 0 0.0073656140238123023 -0.44195773352395662 1.0338062116375877 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.19846330876805307 -0.67868425285462197 -0.19846330876805279 0.67868425285462208 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -5.1288385381771994e-028 6.1372121513202537e-027
		 9.254781441878848e-016 0 5.7782138259324283 -0.2964875965415672 2.0068236482763384e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42107557273651991 0.90702555754764247 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 1.3071485173252634e-028 -4.0105262874328895e-027
		 -3.8139227749529805e-016 0 6.5496984017628161 0.54547148935099887 2.8375888565509769e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99562542496865192 -0.093434539416595283 -5.7212154813170306e-018 6.096447449187914e-017 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.226119308612169 0.36631932600838041
		 -4.4512324143552907e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.48616781958500876 -0.51345968799892971 0.48616781958500838 0.51345968799893016 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.014974292778610732
		 -1.4988849446989656 1.0468774973761006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.015013572210733628
		 1.4841543859761874 1.04688 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654768 0.70710678118654746 -4.3297802811774658e-017 4.3297802811774677e-017 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 2.3941663946451078e-016 -5.0369388786311004e-018
		 5.142658165509071e-017 0 -0.97015333568424023 2.9052943859761871 1.8854677559850765 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.98285417828416843 0.18438455528962325 -1.1290297772382264e-017 6.0182461173215447e-017 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 2.0492912547528455e-015 -1.2802911006127024e-014
		 -6.5578753653724102e-015 0 -2.5540722833298029 0.079112214870301664 -0.61914920555301478 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.036188275313241473 0.99934498984577547 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 2.8955173410557494e-016 -1.5306857850199341e-014
		 -1.7384981217119815e-015 0 -1.3395919262018519 -0.078735748141604125 -0.2790490132257184 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.031609888577206952 0.99950028261333501 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3066556447171478 5.4600495003719142e-006
		 -0.21928585771312115 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.56837835223735889 0.8227673113997328 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 -0 0 0 -1.0019949622602535
		 -2.9200276029712846 1.8836108291845504 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.98285417828416832 0.18438455528962355 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 2.2161869030656506e-017 2.3470642714906061e-016
		 -1.1541437070182091e-016 0 2.5791373881259956 -0.11864357653957283 0.63431644470738613 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.036188275313241473 0.99934498984577547 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 -4.0370531053959868e-017 1.4558871841810628e-015
		 4.2016135315671503e-016 0 1.334564944221923 -0.018504992939368279 0.42686010078962022 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.031609888577206952 0.99950028261333501 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2910156740679914 -0.014779171838285324
		 0.17525599315607421 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.56837835223735889 0.8227673113997328 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 -2.3474524613244374e-016 1.7778616090943136e-018
		 -6.9870594192346992e-017 0 -1.0019949622602562 -0.046452127499368993 1.8854677559850752 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.99997449337458355 0.0071423105676652878 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 1.5771736290492391e-017 5.1573577669909915e-016
		 -6.4617954995906306e-017 0 2.3123081353451749 9.7143098770617739e-017 0.827942348388921 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0071423105676651846 0.99997449337458355 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 4.7315208871477317e-018 7.0972813307216608e-016
		 -3.1900003099244885e-017 0 1.3211841266537541 -1.3534507957559505e-016 0.44581511067096047 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2881545234874128 -1.1949430855638095e-016
		 0.19106361885898115 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 -0 0 0 -1.0019930180667238
		 -2.9200256140238117 -1.88361 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.18438455528962361 0.98285417828416832 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 -7.188698215265142e-016 2.1491644209150073e-014
		 6.218135194919792e-016 0 -2.5879816609441284 0.042974167491780305 -0.47027256159870401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.036188275313241473 0.99934498984577547 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 -5.7038415141150019e-015 -4.6488670113444579e-015
		 2.2315991724701288e-014 0 -1.3053855837016322 -0.070480727880193231 -0.33431515062380379 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.031609888577206119 0.99950028261333501 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2540492811523634 0.10889909251394925
		 -0.29940007860365148 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.56837835223735955 0.82276731139973225 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 2.3474526844402805e-016 -1.7778626104104736e-018
		 6.9870519206272027e-017 0 -1.0019930180667247 -0.046452114023812524 -1.88547 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0071423105676656192 0.99997449337458355 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 -1.3420379314428425e-016 -7.1338866106454322e-016
		 5.0328239058546212e-016 0 -2.3123059138825384 -2.8568512749904684e-008 -0.8279399999999999 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0071423105676612988 0.99997449337458355 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 5.7467434757814184e-020 -6.9151589894379417e-015
		 7.1445350821661363e-018 0 -1.3211899999999992 1.1129985821867194e-014 -0.44582000000000077 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2881529999999992 1.0838552277903091e-014
		 -0.19105999999999934 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654458 0.70710678118655057 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 -1.4478503493968373e-008 1.0851346990208334e-009
		 -3.3526156262379773e-009 0 -0.97015301806672571 2.9052943859761871 -1.88547 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.18438455528962333 0.98285417828416832 6.0182461173215434e-017 1.1290297772382269e-017 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 3.412534226922474e-015 -2.0589256519309648e-015
		 -1.5344366649880717e-014 0 2.5414923053921186 -0.28948190399757845 0.65684148244123475 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.036188275313241473 0.99934498984577547 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 4.4075583584599925e-015 -3.3693227664761289e-014
		 -2.6255116559650543e-014 0 1.2897234576070191 -0.00051807625640209933 0.32407514900492762 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.031609888577206952 0.99950028261333501 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3796019929299976 0.005639393444414261
		 0.22489840737816635 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.56837835223735889 0.8227673113997328 1
		 1 1 yes;
	setAttr -s 51 ".m";
	setAttr -s 51 ".p";
	setAttr ".bp" yes;
createNode geomBind -n "geomBind1";
	rename -uid "35AD30FF-47A3-7961-067A-31BCB19FAAD2";
	setAttr ".mi" 5;
	setAttr ".gvr" 512;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "16FC7D72-4AC9-2488-FA47-C1BD76FA1F97";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "FE854DFB-45BE-877F-4CAE-4D85837280A9";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode blinn -n "blinn1";
	rename -uid "63F1CCD9-4C0E-3D71-9CB1-4DBE29E1ADE5";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.28999999 0.31999999 ;
	setAttr ".rfl" 0;
createNode animCurveTU -n "nurbsCircle2_visibility";
	rename -uid "47B57DD6-49A6-B864-8A8A-24A6A5AAEE5F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "nurbsCircle2_translateX";
	rename -uid "CBBF0E08-4E6D-6CC6-4B69-9AA93C9B09E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 4.5990757083619354 5 4.5990757083619354
		 9 4.5990757083619354 13 4.5990757083619354 17 4.5990757083619354;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle2_translateY";
	rename -uid "717AA1E3-4821-6176-5AC3-3796D096A3F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 1.1094516293941519 9 0.0078892756053805524
		 13 0.9799407180684554 17 0.034058803842105245;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle2_translateZ";
	rename -uid "E05BE5C2-417E-50A2-C8AB-1591CEA11F88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 3.1253421574467555 5 3.1253421574467555
		 9 3.1253421574467555 13 3.1253421574467555 17 3.1253421574467555;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle2_rotateX";
	rename -uid "1C5AF154-4A0A-9F03-E70E-A8A46DAC4B59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle2_rotateY";
	rename -uid "6FF6A5E8-4D01-B1BF-144A-4EAB1507B554";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle2_rotateZ";
	rename -uid "971AA9D6-4315-2277-9D86-F585DBD58CA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_scaleX";
	rename -uid "B6455E99-48DC-9845-110C-BE926F6695FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_scaleY";
	rename -uid "1FEEC58C-43AF-E933-5817-9F857079EE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_scaleZ";
	rename -uid "390693C4-4286-DF2E-E84D-59961C15C176";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "3F729219-4B9A-9FB9-BD11-3B9DC667EB03";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "14822A0E-4ADC-627D-E3F4-C79E0A8E9A68";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "C3B9C856-4BD3-7418-731C-5C8E8A074E6A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 1.2048944631869172 11 -0.17889827729256291
		 15 1.5952879372483719 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "922E5C3D-4924-5432-F226-BB9C03F6E6AF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 3.340241443990887 7 3.340241443990887
		 11 3.340241443990887 15 3.340241443990887 17 3.340241443990887;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "4A9F0A22-4939-EC22-265E-359BB4783A7C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "191D2DB7-4826-EC99-7065-1590DE44C591";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "6FBCE9B6-43DA-C09F-C79A-F69CF794335B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "BDCF1152-40B7-48C8-DBDA-569F02F385B3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "B1405FD6-41A3-3DDC-E7B3-D7B212833156";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "71BEE538-497B-31A3-7D9E-7B81D488E4A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_visibility";
	rename -uid "6A7F97C5-4683-6980-CC37-5594A0A512A6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "nurbsCircle3_translateX";
	rename -uid "B6108D65-4E31-462C-C237-0B8D9370A4E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -4.7172386824948997 5 -4.7172386824948997
		 9 -4.7172386824948997 13 -4.7172386824948997 17 -4.7172386824948997;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle3_translateY";
	rename -uid "205709EB-4436-0A7E-75BA-198A9A2EEF20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 1.1094516293941519 9 0.0078892756053805524
		 13 0.9799407180684554 17 0.034058803842105245;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle3_translateZ";
	rename -uid "68DF563F-4154-DD92-FB28-7BBB13849560";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 3.0318969101427187 5 3.0318969101427187
		 9 3.0318969101427187 13 3.0318969101427187 17 3.0318969101427187;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateX";
	rename -uid "97257B36-4E4C-62E5-BC9B-8988D4B5E65A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateY";
	rename -uid "677802E1-419F-4F41-6E5F-C98770E8A2F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateZ";
	rename -uid "9267CFDA-483D-16A7-D75B-B9BBA04E276C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleX";
	rename -uid "4689A9FE-4678-F6DA-09DA-F296DAC3D392";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleY";
	rename -uid "A554AB5F-425F-7E6C-8D25-42B0E8380311";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleZ";
	rename -uid "A2260067-42D0-7D0D-75A5-89909EB8724D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_visibility";
	rename -uid "0B2FAB96-45DD-55A7-E441-AB915F7D3631";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateX";
	rename -uid "D45BCD30-43B2-391B-31D8-FDAF08552CBF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 -4.4456470659307827 7 -4.4456470659307827
		 11 -4.4456470659307827 15 -4.4456470659307827 17 -4.4456470659307827;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateY";
	rename -uid "ED3EC010-43DA-CCFD-177D-AEA77A65A576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 1.2048944631869172 11 -0.17889827729256291
		 15 1.5952879372483719 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateZ";
	rename -uid "81C325EC-4679-6C11-86D4-85B35BE1FBC1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 -3.1704143705689773 7 -3.1704143705689773
		 11 -3.1704143705689773 15 -3.1704143705689773 17 -3.1704143705689773;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateX";
	rename -uid "C3F64FBF-4A3F-6737-7A00-68B470547881";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateY";
	rename -uid "68BF5088-46DE-BCE6-7479-4E847D348B80";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateZ";
	rename -uid "94D6DA95-427B-775E-EB23-F88BD4AF1282";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleX";
	rename -uid "0E2B04E5-4349-BE32-20B4-7BBADA4498DA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleY";
	rename -uid "C4C8560B-4634-D2EF-ADA4-5EBA23AB55A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleZ";
	rename -uid "C8E990E0-4153-2D53-CE00-01AEE1EE2F01";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_visibility";
	rename -uid "C227F9BF-41C0-9505-FECE-1781D6D89B7B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "nurbsCircle5_translateX";
	rename -uid "BE86C99B-4089-A945-5950-48968B437468";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.060701669911207679 5 0.060701669911207679
		 9 0.060701669911207679 13 0.060701669911207679 17 0.060701669911207679;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle5_translateY";
	rename -uid "E73D5A1F-4139-181C-86E9-E5AC97621649";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 1.1094516293941519 9 0.0078892756053805524
		 13 0.9799407180684554 17 0.034058803842105245;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle5_translateZ";
	rename -uid "49E36173-468A-0292-9116-FF867C1B09DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -3.4010493037740641 5 -3.4010493037740641
		 9 -3.4010493037740641 13 -3.4010493037740641 17 -3.4010493037740641;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle5_rotateX";
	rename -uid "E9FC6057-4225-C417-F434-03A09B8FA51B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle5_rotateY";
	rename -uid "AFE90E59-410D-60B5-880C-40B87FFC0D44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle5_rotateZ";
	rename -uid "6B738481-4732-A260-AFE3-A3B4CF9CB1D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 9 0 13 0 17 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_scaleX";
	rename -uid "945C9376-4FFD-CA32-C322-6C8FA2AA4243";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_scaleY";
	rename -uid "57B2AB78-4F82-F1F1-A128-5696A40F1426";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_scaleZ";
	rename -uid "C9697BAE-4DA8-D486-2B8A-0090DCBAC7E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 9 1 13 1 17 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[1:4]"  1 1 1 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_visibility";
	rename -uid "C19E97F7-4365-FC08-378A-CCB142EF9182";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateX";
	rename -uid "729D44BB-4ED9-7641-6BEA-35AA4253EF6D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 4.7018802859605167 7 4.7018802859605167
		 11 4.7018802859605167 15 4.7018802859605167 17 4.7018802859605167;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateY";
	rename -uid "BCF9A6DC-406F-F199-5D78-289BDFB602BD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 1.2048944631869172 11 -0.17889827729256291
		 15 1.5952879372483719 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateZ";
	rename -uid "D2EF8A63-4F24-2A51-C9DF-9A97DD255147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 -3.0866874140051115 7 -3.0866874140051115
		 11 -3.0866874140051115 15 -3.0866874140051115 17 -3.0866874140051115;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateX";
	rename -uid "8167E044-4799-2893-0FCE-BCA0D827C525";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateY";
	rename -uid "4761785E-4C35-2264-ED10-8D89C6AF1A37";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateZ";
	rename -uid "BA19A35F-4771-B972-A82E-D4871F20F898";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 7 0 11 0 15 0 17 0;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleX";
	rename -uid "1BAA52E1-4C3F-861E-5E7C-DD9A71D8571A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleY";
	rename -uid "0A1B549F-4B91-04BC-0EDC-5587F0C8AE84";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleZ";
	rename -uid "B24B7B9A-4789-309B-7E0C-7B89183E4214";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1 7 1 11 1 15 1 17 1;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_visibility";
	rename -uid "C36F409A-4788-9C7B-9298-9DA0626667D5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 18 1 28 1 34 1 37 1 38 1 44 1 48 1 52 1;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 1 9 9 9 
		1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateX";
	rename -uid "94D9B50D-4237-6CDE-47AD-72B175BE1A2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 18 0 28 -3.8123113241983062 34 0 37 0
		 38 0 44 0 48 0 52 0;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateY";
	rename -uid "1660156A-46A9-2F5E-4FB0-B8A0C25355E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 39.037800854337206 18 39.037800854337206
		 28 39.037800854337206 34 39.037800854337206 37 39.037800854337206 38 39.037800854337206
		 44 39.037800854337206 48 39.037800854337206 52 39.037800854337206;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateZ";
	rename -uid "89DA0E3D-410B-A8B9-AAB3-17BAEE7FBB37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 18 0 28 -13.015855772290529 34 10.586655375211816
		 37 0 38 0 44 -2.3195604791586728 48 -5.8032997466449814 52 0;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 0.071613878011703491 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 -0.9974324107170105 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 0.071613878011703491 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 -0.9974324107170105 0 0;
createNode animCurveTA -n "nurbsCircle7_rotateX";
	rename -uid "365C7323-47DF-447F-1EC6-A5AD50A879B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 18 0 28 0 34 0 37 0 38 0 44 0 48 0 52 0;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle7_rotateY";
	rename -uid "C7A4C445-4CC0-8D84-F14C-F38A4553C69E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 18 0 28 0 34 0 37 0 38 0 44 0 48 0 52 0;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle7_rotateZ";
	rename -uid "0528024A-47D2-374E-BA93-60B242488350";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 18 0 28 0 34 0 37 0 38 0 44 0 48 0 52 0;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleX";
	rename -uid "7730D2A1-4645-821C-6905-E7B496723CC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 18 1 28 1 34 1 37 1 38 1 44 1 48 1 52 1;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleY";
	rename -uid "F72A8EDE-4D40-25CF-FC7E-1E9448B04752";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 18 1 28 1 34 1 37 1 38 1 44 1 48 1 52 1;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleZ";
	rename -uid "8103BCA4-42A1-B417-B3F6-668B0C253DCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 18 1 28 1 34 1 37 1 38 1 44 1 48 1 52 1;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTA -n "root_rotateX";
	rename -uid "11F2C71A-43F9-D60D-EF86-75B8CF66D89F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 1.2074182697257331e-006 44 0 52 1.2074182697257331e-006;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "root_rotateY";
	rename -uid "42A42884-43E7-FCE5-24FB-159D32DF1BFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 2.6810071268051521e-022 44 9.0791650015827408
		 52 2.6810071268051521e-022;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "root_rotateZ";
	rename -uid "55514734-4617-524F-1D26-4B8C66F6261A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 2.8249000307521008e-030 44 0 52 2.8249000307521008e-030;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "root_visibility";
	rename -uid "7AA838FB-4025-DFEA-B2D0-CAAD9376ECA7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 1 44 1 52 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "root_translateX";
	rename -uid "B8FEF7CD-4E75-E0CC-E041-A69DC036E131";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 -0.0073656140238123058 44 -0.0073656140238123058
		 52 -0.0073656140238123058;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "root_translateY";
	rename -uid "2C298789-45B3-BE3A-C9E3-EBAFAA11F415";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 5.7663222067832347 44 7.0312868853593695
		 52 5.7663222067832347;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "root_translateZ";
	rename -uid "3E8F04B8-484D-6F0D-AC09-E6ACAD00FFBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 0 44 -2.4091446872630327 52 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "root_scaleX";
	rename -uid "9961C259-4A08-4D86-9589-E4B98D15C37A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 1 44 1 52 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "root_scaleY";
	rename -uid "F4EECB5E-4DBE-C040-755C-1E93AAF60621";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 1 44 1 52 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "root_scaleZ";
	rename -uid "C9A3958D-48E7-A17B-FBB8-9081BFD4EC2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  38 1 44 1 52 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
select -ne :time1;
	setAttr ".o" 40;
	setAttr ".unw" 40;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "skeleton.di" "root.do";
connectAttr "root_scaleX.o" "root.sx";
connectAttr "root_scaleY.o" "root.sy";
connectAttr "root_scaleZ.o" "root.sz";
connectAttr "root_translateX.o" "root.tx";
connectAttr "root_translateY.o" "root.ty";
connectAttr "root_translateZ.o" "root.tz";
connectAttr "root_visibility.o" "root.v";
connectAttr "root_rotateX.o" "root.rx";
connectAttr "root_rotateY.o" "root.ry";
connectAttr "root_rotateZ.o" "root.rz";
connectAttr "root.s" "hip.is";
connectAttr "hip.s" "spine_a.is";
connectAttr "spine_a.s" "spine_b.is";
connectAttr "spine_b.s" "occular.is";
connectAttr "occular.s" "spine_c.is";
connectAttr "spine_c.s" "cap_start.is";
connectAttr "cap_start.s" "cap_a.is";
connectAttr "cap_a.s" "cap_b.is";
connectAttr "cap_b.s" "cap_end.is";
connectAttr "cap_end.s" "right_cap.is";
connectAttr "right_cap.s" "right_cap_a.is";
connectAttr "right_cap_a.s" "right_cap_b.is";
connectAttr "right_cap_b.s" "right_cab_end.is";
connectAttr "cap_end.s" "left_cap.is";
connectAttr "left_cap.s" "left_cap_a.is";
connectAttr "left_cap_a.s" "left_cap_b.is";
connectAttr "left_cap_b.s" "left_cab_end.is";
connectAttr "cap_end.s" "rear_cap.is";
connectAttr "rear_cap.s" "rear_cap_a.is";
connectAttr "rear_cap_a.s" "rear_cap_b.is";
connectAttr "rear_cap_b.s" "rear_cap_end.is";
connectAttr "cap_end.s" "front_cap.is";
connectAttr "front_cap.s" "front_cap_a.is";
connectAttr "front_cap_a.s" "front_cap_b.is";
connectAttr "front_cap_b.s" "front_cap_end.is";
connectAttr "cap_end.tx" "effector7.tx";
connectAttr "cap_end.ty" "effector7.ty";
connectAttr "cap_end.tz" "effector7.tz";
connectAttr "occular.s" "left_eye.is";
connectAttr "occular.s" "right_eye.is";
connectAttr "skeleton.di" "front_right_leg.do";
connectAttr "hip.s" "front_right_leg.is";
connectAttr "front_right_leg.s" "front_right_a.is";
connectAttr "front_right_a.s" "front_right_b.is";
connectAttr "front_right_b.s" "front_right_end.is";
connectAttr "front_right_end.tx" "effector1.tx";
connectAttr "front_right_end.ty" "effector1.ty";
connectAttr "front_right_end.tz" "effector1.tz";
connectAttr "skeleton.di" "front_left_leg.do";
connectAttr "hip.s" "front_left_leg.is";
connectAttr "front_left_leg.s" "front_left_a.is";
connectAttr "front_left_a.s" "front_left_b.is";
connectAttr "front_left_b.s" "front_left_end.is";
connectAttr "front_left_end.tx" "effector3.tx";
connectAttr "front_left_end.ty" "effector3.ty";
connectAttr "front_left_end.tz" "effector3.tz";
connectAttr "skeleton.di" "front_middle_leg.do";
connectAttr "hip.s" "front_middle_leg.is";
connectAttr "front_middle_leg.s" "front_middle_a.is";
connectAttr "front_middle_a.s" "front_middle_b.is";
connectAttr "front_middle_b.s" "front_middle_end.is";
connectAttr "front_middle_end.tx" "effector2.tx";
connectAttr "front_middle_end.ty" "effector2.ty";
connectAttr "front_middle_end.tz" "effector2.tz";
connectAttr "skeleton.di" "rear_left_leg.do";
connectAttr "hip.s" "rear_left_leg.is";
connectAttr "rear_left_leg.s" "rear_left_a.is";
connectAttr "rear_left_a.s" "rear_left_b.is";
connectAttr "rear_left_b.s" "rear_left_end.is";
connectAttr "rear_left_end.tx" "effector4.tx";
connectAttr "rear_left_end.ty" "effector4.ty";
connectAttr "rear_left_end.tz" "effector4.tz";
connectAttr "skeleton.di" "rear_middle_leg.do";
connectAttr "hip.s" "rear_middle_leg.is";
connectAttr "rear_middle_leg.s" "rear_middle_a.is";
connectAttr "rear_middle_a.s" "rear_middle_b.is";
connectAttr "rear_middle_b.s" "rear_middle_end.is";
connectAttr "rear_middle_end.tx" "effector5.tx";
connectAttr "rear_middle_end.ty" "effector5.ty";
connectAttr "rear_middle_end.tz" "effector5.tz";
connectAttr "skeleton.di" "rear_right_leg.do";
connectAttr "hip.s" "rear_right_leg.is";
connectAttr "rear_right_leg.s" "rear_right_a.is";
connectAttr "rear_right_a.s" "rear_right_b.is";
connectAttr "rear_right_b.s" "rear_right_end.is";
connectAttr "rear_right_end.tx" "effector6.tx";
connectAttr "rear_right_end.ty" "effector6.ty";
connectAttr "rear_right_end.tz" "effector6.tz";
connectAttr "skinCluster1GroupId.id" "cmdr_shroom_final:commanderShape.iog.og[0].gid"
		;
connectAttr "skinCluster1Set.mwc" "cmdr_shroom_final:commanderShape.iog.og[0].gco"
		;
connectAttr "groupId2.id" "cmdr_shroom_final:commanderShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "cmdr_shroom_final:commanderShape.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "cmdr_shroom_final:commanderShape.i";
connectAttr "tweak1.vl[0].vt[0]" "cmdr_shroom_final:commanderShape.twl";
connectAttr "nurbsCircle1_visibility.o" "nurbsCircle1.v";
connectAttr "nurbsCircle1_translateX.o" "nurbsCircle1.tx";
connectAttr "nurbsCircle1_translateY.o" "nurbsCircle1.ty";
connectAttr "nurbsCircle1_translateZ.o" "nurbsCircle1.tz";
connectAttr "nurbsCircle1_rotateX.o" "nurbsCircle1.rx";
connectAttr "nurbsCircle1_rotateY.o" "nurbsCircle1.ry";
connectAttr "nurbsCircle1_rotateZ.o" "nurbsCircle1.rz";
connectAttr "nurbsCircle1_scaleX.o" "nurbsCircle1.sx";
connectAttr "nurbsCircle1_scaleY.o" "nurbsCircle1.sy";
connectAttr "nurbsCircle1_scaleZ.o" "nurbsCircle1.sz";
connectAttr "makeNurbCircle1.oc" "nurbsCircleShape1.cr";
connectAttr "front_middle_leg.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "nurbsCircle2_visibility.o" "nurbsCircle2.v";
connectAttr "nurbsCircle2_translateX.o" "nurbsCircle2.tx";
connectAttr "nurbsCircle2_translateY.o" "nurbsCircle2.ty";
connectAttr "nurbsCircle2_translateZ.o" "nurbsCircle2.tz";
connectAttr "nurbsCircle2_rotateX.o" "nurbsCircle2.rx";
connectAttr "nurbsCircle2_rotateY.o" "nurbsCircle2.ry";
connectAttr "nurbsCircle2_rotateZ.o" "nurbsCircle2.rz";
connectAttr "nurbsCircle2_scaleX.o" "nurbsCircle2.sx";
connectAttr "nurbsCircle2_scaleY.o" "nurbsCircle2.sy";
connectAttr "nurbsCircle2_scaleZ.o" "nurbsCircle2.sz";
connectAttr "front_left_leg.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "nurbsCircle3_visibility.o" "nurbsCircle3.v";
connectAttr "nurbsCircle3_translateX.o" "nurbsCircle3.tx";
connectAttr "nurbsCircle3_translateY.o" "nurbsCircle3.ty";
connectAttr "nurbsCircle3_translateZ.o" "nurbsCircle3.tz";
connectAttr "nurbsCircle3_rotateX.o" "nurbsCircle3.rx";
connectAttr "nurbsCircle3_rotateY.o" "nurbsCircle3.ry";
connectAttr "nurbsCircle3_rotateZ.o" "nurbsCircle3.rz";
connectAttr "nurbsCircle3_scaleX.o" "nurbsCircle3.sx";
connectAttr "nurbsCircle3_scaleY.o" "nurbsCircle3.sy";
connectAttr "nurbsCircle3_scaleZ.o" "nurbsCircle3.sz";
connectAttr "front_right_leg.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "nurbsCircle4_visibility.o" "nurbsCircle4.v";
connectAttr "nurbsCircle4_translateX.o" "nurbsCircle4.tx";
connectAttr "nurbsCircle4_translateY.o" "nurbsCircle4.ty";
connectAttr "nurbsCircle4_translateZ.o" "nurbsCircle4.tz";
connectAttr "nurbsCircle4_rotateX.o" "nurbsCircle4.rx";
connectAttr "nurbsCircle4_rotateY.o" "nurbsCircle4.ry";
connectAttr "nurbsCircle4_rotateZ.o" "nurbsCircle4.rz";
connectAttr "nurbsCircle4_scaleX.o" "nurbsCircle4.sx";
connectAttr "nurbsCircle4_scaleY.o" "nurbsCircle4.sy";
connectAttr "nurbsCircle4_scaleZ.o" "nurbsCircle4.sz";
connectAttr "rear_right_leg.msg" "ikHandle6.hsj";
connectAttr "effector6.hp" "ikHandle6.hee";
connectAttr "ikRPsolver.msg" "ikHandle6.hsv";
connectAttr "nurbsCircle5_visibility.o" "nurbsCircle5.v";
connectAttr "nurbsCircle5_translateX.o" "nurbsCircle5.tx";
connectAttr "nurbsCircle5_translateY.o" "nurbsCircle5.ty";
connectAttr "nurbsCircle5_translateZ.o" "nurbsCircle5.tz";
connectAttr "nurbsCircle5_rotateX.o" "nurbsCircle5.rx";
connectAttr "nurbsCircle5_rotateY.o" "nurbsCircle5.ry";
connectAttr "nurbsCircle5_rotateZ.o" "nurbsCircle5.rz";
connectAttr "nurbsCircle5_scaleX.o" "nurbsCircle5.sx";
connectAttr "nurbsCircle5_scaleY.o" "nurbsCircle5.sy";
connectAttr "nurbsCircle5_scaleZ.o" "nurbsCircle5.sz";
connectAttr "rear_middle_leg.msg" "ikHandle5.hsj";
connectAttr "effector5.hp" "ikHandle5.hee";
connectAttr "ikRPsolver.msg" "ikHandle5.hsv";
connectAttr "nurbsCircle6_visibility.o" "nurbsCircle6.v";
connectAttr "nurbsCircle6_translateX.o" "nurbsCircle6.tx";
connectAttr "nurbsCircle6_translateY.o" "nurbsCircle6.ty";
connectAttr "nurbsCircle6_translateZ.o" "nurbsCircle6.tz";
connectAttr "nurbsCircle6_rotateX.o" "nurbsCircle6.rx";
connectAttr "nurbsCircle6_rotateY.o" "nurbsCircle6.ry";
connectAttr "nurbsCircle6_rotateZ.o" "nurbsCircle6.rz";
connectAttr "nurbsCircle6_scaleX.o" "nurbsCircle6.sx";
connectAttr "nurbsCircle6_scaleY.o" "nurbsCircle6.sy";
connectAttr "nurbsCircle6_scaleZ.o" "nurbsCircle6.sz";
connectAttr "rear_left_leg.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
connectAttr "nurbsCircle7_visibility.o" "nurbsCircle7.v";
connectAttr "nurbsCircle7_translateX.o" "nurbsCircle7.tx";
connectAttr "nurbsCircle7_translateY.o" "nurbsCircle7.ty";
connectAttr "nurbsCircle7_translateZ.o" "nurbsCircle7.tz";
connectAttr "nurbsCircle7_rotateX.o" "nurbsCircle7.rx";
connectAttr "nurbsCircle7_rotateY.o" "nurbsCircle7.ry";
connectAttr "nurbsCircle7_rotateZ.o" "nurbsCircle7.rz";
connectAttr "nurbsCircle7_scaleX.o" "nurbsCircle7.sx";
connectAttr "nurbsCircle7_scaleY.o" "nurbsCircle7.sy";
connectAttr "nurbsCircle7_scaleZ.o" "nurbsCircle7.sz";
connectAttr "makeNurbCircle2.oc" "nurbsCircleShape7.cr";
connectAttr "cap_start.msg" "ikHandle7.hsj";
connectAttr "effector7.hp" "ikHandle7.hee";
connectAttr "ikRPsolver.msg" "ikHandle7.hsv";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "cmdr_shroom_final:commanderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "cmdr_shroom_final:commanderSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "skeleton.id";
connectAttr "blinn1.oc" "cmdr_shroom_final:commanderSG.ss";
connectAttr "cmdr_shroom_final:commanderShape.iog" "cmdr_shroom_final:commanderSG.dsm"
		 -na;
connectAttr "cmdr_shroom_final:commanderSG.msg" "cmdr_shroom_final:materialInfo1.sg"
		;
connectAttr "blinn1.msg" "cmdr_shroom_final:materialInfo1.m";
connectAttr "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.msg" "cmdr_shroom_final:materialInfo1.t"
		 -na;
connectAttr "cmdr_shroom_final:place2dTexture1.o" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.uv"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.ofu" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.ofu"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.ofv" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.ofv"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.rf" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.rf"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.reu" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.reu"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.rev" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.rev"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.vt1" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.vt1"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.vt2" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.vt2"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.vt3" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.vt3"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.vc1" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.vc1"
		;
connectAttr "cmdr_shroom_final:place2dTexture1.ofs" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.ws"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.o" "cmdr_shroom_final:ReflectionMap.uv"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.ofu" "cmdr_shroom_final:ReflectionMap.ofu"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.ofv" "cmdr_shroom_final:ReflectionMap.ofv"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.rf" "cmdr_shroom_final:ReflectionMap.rf"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.reu" "cmdr_shroom_final:ReflectionMap.reu"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.rev" "cmdr_shroom_final:ReflectionMap.rev"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.vt1" "cmdr_shroom_final:ReflectionMap.vt1"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.vt2" "cmdr_shroom_final:ReflectionMap.vt2"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.vt3" "cmdr_shroom_final:ReflectionMap.vt3"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.vc1" "cmdr_shroom_final:ReflectionMap.vc1"
		;
connectAttr "cmdr_shroom_final:place2dTexture2.ofs" "cmdr_shroom_final:ReflectionMap.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "cmdr_shroom_final:ReflectionMap.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "cmdr_shroom_final:ReflectionMap.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "cmdr_shroom_final:ReflectionMap.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "cmdr_shroom_final:ReflectionMap.ws";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "root.wm" "skinCluster1.ma[0]";
connectAttr "hip.wm" "skinCluster1.ma[1]";
connectAttr "spine_a.wm" "skinCluster1.ma[2]";
connectAttr "spine_b.wm" "skinCluster1.ma[3]";
connectAttr "occular.wm" "skinCluster1.ma[4]";
connectAttr "spine_c.wm" "skinCluster1.ma[5]";
connectAttr "cap_start.wm" "skinCluster1.ma[6]";
connectAttr "cap_a.wm" "skinCluster1.ma[7]";
connectAttr "cap_b.wm" "skinCluster1.ma[8]";
connectAttr "cap_end.wm" "skinCluster1.ma[9]";
connectAttr "right_cap.wm" "skinCluster1.ma[10]";
connectAttr "right_cap_a.wm" "skinCluster1.ma[11]";
connectAttr "right_cap_b.wm" "skinCluster1.ma[12]";
connectAttr "right_cab_end.wm" "skinCluster1.ma[13]";
connectAttr "left_cap.wm" "skinCluster1.ma[14]";
connectAttr "left_cap_a.wm" "skinCluster1.ma[15]";
connectAttr "left_cap_b.wm" "skinCluster1.ma[16]";
connectAttr "left_cab_end.wm" "skinCluster1.ma[17]";
connectAttr "rear_cap.wm" "skinCluster1.ma[18]";
connectAttr "rear_cap_a.wm" "skinCluster1.ma[19]";
connectAttr "rear_cap_b.wm" "skinCluster1.ma[20]";
connectAttr "rear_cap_end.wm" "skinCluster1.ma[21]";
connectAttr "front_cap.wm" "skinCluster1.ma[22]";
connectAttr "front_cap_a.wm" "skinCluster1.ma[23]";
connectAttr "front_cap_b.wm" "skinCluster1.ma[24]";
connectAttr "left_eye.wm" "skinCluster1.ma[26]";
connectAttr "right_eye.wm" "skinCluster1.ma[27]";
connectAttr "front_right_leg.wm" "skinCluster1.ma[28]";
connectAttr "front_right_a.wm" "skinCluster1.ma[29]";
connectAttr "front_right_b.wm" "skinCluster1.ma[30]";
connectAttr "front_right_end.wm" "skinCluster1.ma[31]";
connectAttr "front_left_leg.wm" "skinCluster1.ma[32]";
connectAttr "front_left_a.wm" "skinCluster1.ma[33]";
connectAttr "front_left_b.wm" "skinCluster1.ma[34]";
connectAttr "front_left_end.wm" "skinCluster1.ma[35]";
connectAttr "front_middle_leg.wm" "skinCluster1.ma[36]";
connectAttr "front_middle_a.wm" "skinCluster1.ma[37]";
connectAttr "front_middle_b.wm" "skinCluster1.ma[38]";
connectAttr "front_middle_end.wm" "skinCluster1.ma[39]";
connectAttr "rear_left_leg.wm" "skinCluster1.ma[40]";
connectAttr "rear_left_a.wm" "skinCluster1.ma[41]";
connectAttr "rear_left_b.wm" "skinCluster1.ma[42]";
connectAttr "rear_left_end.wm" "skinCluster1.ma[43]";
connectAttr "rear_middle_leg.wm" "skinCluster1.ma[44]";
connectAttr "rear_middle_a.wm" "skinCluster1.ma[45]";
connectAttr "rear_middle_b.wm" "skinCluster1.ma[46]";
connectAttr "rear_middle_end.wm" "skinCluster1.ma[47]";
connectAttr "rear_right_leg.wm" "skinCluster1.ma[48]";
connectAttr "rear_right_a.wm" "skinCluster1.ma[49]";
connectAttr "rear_right_b.wm" "skinCluster1.ma[50]";
connectAttr "rear_right_end.wm" "skinCluster1.ma[51]";
connectAttr "root.liw" "skinCluster1.lw[0]";
connectAttr "hip.liw" "skinCluster1.lw[1]";
connectAttr "spine_a.liw" "skinCluster1.lw[2]";
connectAttr "spine_b.liw" "skinCluster1.lw[3]";
connectAttr "occular.liw" "skinCluster1.lw[4]";
connectAttr "spine_c.liw" "skinCluster1.lw[5]";
connectAttr "cap_start.liw" "skinCluster1.lw[6]";
connectAttr "cap_a.liw" "skinCluster1.lw[7]";
connectAttr "cap_b.liw" "skinCluster1.lw[8]";
connectAttr "cap_end.liw" "skinCluster1.lw[9]";
connectAttr "right_cap.liw" "skinCluster1.lw[10]";
connectAttr "right_cap_a.liw" "skinCluster1.lw[11]";
connectAttr "right_cap_b.liw" "skinCluster1.lw[12]";
connectAttr "right_cab_end.liw" "skinCluster1.lw[13]";
connectAttr "left_cap.liw" "skinCluster1.lw[14]";
connectAttr "left_cap_a.liw" "skinCluster1.lw[15]";
connectAttr "left_cap_b.liw" "skinCluster1.lw[16]";
connectAttr "left_cab_end.liw" "skinCluster1.lw[17]";
connectAttr "rear_cap.liw" "skinCluster1.lw[18]";
connectAttr "rear_cap_a.liw" "skinCluster1.lw[19]";
connectAttr "rear_cap_b.liw" "skinCluster1.lw[20]";
connectAttr "rear_cap_end.liw" "skinCluster1.lw[21]";
connectAttr "front_cap.liw" "skinCluster1.lw[22]";
connectAttr "front_cap_a.liw" "skinCluster1.lw[23]";
connectAttr "front_cap_b.liw" "skinCluster1.lw[24]";
connectAttr "left_eye.liw" "skinCluster1.lw[26]";
connectAttr "right_eye.liw" "skinCluster1.lw[27]";
connectAttr "front_right_leg.liw" "skinCluster1.lw[28]";
connectAttr "front_right_a.liw" "skinCluster1.lw[29]";
connectAttr "front_right_b.liw" "skinCluster1.lw[30]";
connectAttr "front_right_end.liw" "skinCluster1.lw[31]";
connectAttr "front_left_leg.liw" "skinCluster1.lw[32]";
connectAttr "front_left_a.liw" "skinCluster1.lw[33]";
connectAttr "front_left_b.liw" "skinCluster1.lw[34]";
connectAttr "front_left_end.liw" "skinCluster1.lw[35]";
connectAttr "front_middle_leg.liw" "skinCluster1.lw[36]";
connectAttr "front_middle_a.liw" "skinCluster1.lw[37]";
connectAttr "front_middle_b.liw" "skinCluster1.lw[38]";
connectAttr "front_middle_end.liw" "skinCluster1.lw[39]";
connectAttr "rear_left_leg.liw" "skinCluster1.lw[40]";
connectAttr "rear_left_a.liw" "skinCluster1.lw[41]";
connectAttr "rear_left_b.liw" "skinCluster1.lw[42]";
connectAttr "rear_left_end.liw" "skinCluster1.lw[43]";
connectAttr "rear_middle_leg.liw" "skinCluster1.lw[44]";
connectAttr "rear_middle_a.liw" "skinCluster1.lw[45]";
connectAttr "rear_middle_b.liw" "skinCluster1.lw[46]";
connectAttr "rear_middle_end.liw" "skinCluster1.lw[47]";
connectAttr "rear_right_leg.liw" "skinCluster1.lw[48]";
connectAttr "rear_right_a.liw" "skinCluster1.lw[49]";
connectAttr "rear_right_b.liw" "skinCluster1.lw[50]";
connectAttr "rear_right_end.liw" "skinCluster1.lw[51]";
connectAttr "root.obcc" "skinCluster1.ifcl[0]";
connectAttr "hip.obcc" "skinCluster1.ifcl[1]";
connectAttr "spine_a.obcc" "skinCluster1.ifcl[2]";
connectAttr "spine_b.obcc" "skinCluster1.ifcl[3]";
connectAttr "occular.obcc" "skinCluster1.ifcl[4]";
connectAttr "spine_c.obcc" "skinCluster1.ifcl[5]";
connectAttr "cap_start.obcc" "skinCluster1.ifcl[6]";
connectAttr "cap_a.obcc" "skinCluster1.ifcl[7]";
connectAttr "cap_b.obcc" "skinCluster1.ifcl[8]";
connectAttr "cap_end.obcc" "skinCluster1.ifcl[9]";
connectAttr "right_cap.obcc" "skinCluster1.ifcl[10]";
connectAttr "right_cap_a.obcc" "skinCluster1.ifcl[11]";
connectAttr "right_cap_b.obcc" "skinCluster1.ifcl[12]";
connectAttr "right_cab_end.obcc" "skinCluster1.ifcl[13]";
connectAttr "left_cap.obcc" "skinCluster1.ifcl[14]";
connectAttr "left_cap_a.obcc" "skinCluster1.ifcl[15]";
connectAttr "left_cap_b.obcc" "skinCluster1.ifcl[16]";
connectAttr "left_cab_end.obcc" "skinCluster1.ifcl[17]";
connectAttr "rear_cap.obcc" "skinCluster1.ifcl[18]";
connectAttr "rear_cap_a.obcc" "skinCluster1.ifcl[19]";
connectAttr "rear_cap_b.obcc" "skinCluster1.ifcl[20]";
connectAttr "rear_cap_end.obcc" "skinCluster1.ifcl[21]";
connectAttr "front_cap.obcc" "skinCluster1.ifcl[22]";
connectAttr "front_cap_a.obcc" "skinCluster1.ifcl[23]";
connectAttr "front_cap_b.obcc" "skinCluster1.ifcl[24]";
connectAttr "left_eye.obcc" "skinCluster1.ifcl[26]";
connectAttr "right_eye.obcc" "skinCluster1.ifcl[27]";
connectAttr "front_right_leg.obcc" "skinCluster1.ifcl[28]";
connectAttr "front_right_a.obcc" "skinCluster1.ifcl[29]";
connectAttr "front_right_b.obcc" "skinCluster1.ifcl[30]";
connectAttr "front_right_end.obcc" "skinCluster1.ifcl[31]";
connectAttr "front_left_leg.obcc" "skinCluster1.ifcl[32]";
connectAttr "front_left_a.obcc" "skinCluster1.ifcl[33]";
connectAttr "front_left_b.obcc" "skinCluster1.ifcl[34]";
connectAttr "front_left_end.obcc" "skinCluster1.ifcl[35]";
connectAttr "front_middle_leg.obcc" "skinCluster1.ifcl[36]";
connectAttr "front_middle_a.obcc" "skinCluster1.ifcl[37]";
connectAttr "front_middle_b.obcc" "skinCluster1.ifcl[38]";
connectAttr "front_middle_end.obcc" "skinCluster1.ifcl[39]";
connectAttr "rear_left_leg.obcc" "skinCluster1.ifcl[40]";
connectAttr "rear_left_a.obcc" "skinCluster1.ifcl[41]";
connectAttr "rear_left_b.obcc" "skinCluster1.ifcl[42]";
connectAttr "rear_left_end.obcc" "skinCluster1.ifcl[43]";
connectAttr "rear_middle_leg.obcc" "skinCluster1.ifcl[44]";
connectAttr "rear_middle_a.obcc" "skinCluster1.ifcl[45]";
connectAttr "rear_middle_b.obcc" "skinCluster1.ifcl[46]";
connectAttr "rear_middle_end.obcc" "skinCluster1.ifcl[47]";
connectAttr "rear_right_leg.obcc" "skinCluster1.ifcl[48]";
connectAttr "rear_right_a.obcc" "skinCluster1.ifcl[49]";
connectAttr "rear_right_b.obcc" "skinCluster1.ifcl[50]";
connectAttr "rear_right_end.obcc" "skinCluster1.ifcl[51]";
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "cmdr_shroom_final:commanderShape.iog.og[0]" "skinCluster1Set.dsm" -na
		;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "cmdr_shroom_final:commanderShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "commanderShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "root.msg" "bindPose1.m[0]";
connectAttr "hip.msg" "bindPose1.m[1]";
connectAttr "spine_a.msg" "bindPose1.m[2]";
connectAttr "spine_b.msg" "bindPose1.m[3]";
connectAttr "occular.msg" "bindPose1.m[4]";
connectAttr "spine_c.msg" "bindPose1.m[5]";
connectAttr "cap_start.msg" "bindPose1.m[6]";
connectAttr "cap_a.msg" "bindPose1.m[7]";
connectAttr "cap_b.msg" "bindPose1.m[8]";
connectAttr "cap_end.msg" "bindPose1.m[9]";
connectAttr "right_cap.msg" "bindPose1.m[10]";
connectAttr "right_cap_a.msg" "bindPose1.m[11]";
connectAttr "right_cap_b.msg" "bindPose1.m[12]";
connectAttr "right_cab_end.msg" "bindPose1.m[13]";
connectAttr "left_cap.msg" "bindPose1.m[14]";
connectAttr "left_cap_a.msg" "bindPose1.m[15]";
connectAttr "left_cap_b.msg" "bindPose1.m[16]";
connectAttr "left_cab_end.msg" "bindPose1.m[17]";
connectAttr "rear_cap.msg" "bindPose1.m[18]";
connectAttr "rear_cap_a.msg" "bindPose1.m[19]";
connectAttr "rear_cap_b.msg" "bindPose1.m[20]";
connectAttr "rear_cap_end.msg" "bindPose1.m[21]";
connectAttr "front_cap.msg" "bindPose1.m[22]";
connectAttr "front_cap_a.msg" "bindPose1.m[23]";
connectAttr "front_cap_b.msg" "bindPose1.m[24]";
connectAttr "left_eye.msg" "bindPose1.m[26]";
connectAttr "right_eye.msg" "bindPose1.m[27]";
connectAttr "front_right_leg.msg" "bindPose1.m[28]";
connectAttr "front_right_a.msg" "bindPose1.m[29]";
connectAttr "front_right_b.msg" "bindPose1.m[30]";
connectAttr "front_right_end.msg" "bindPose1.m[31]";
connectAttr "front_left_leg.msg" "bindPose1.m[32]";
connectAttr "front_left_a.msg" "bindPose1.m[33]";
connectAttr "front_left_b.msg" "bindPose1.m[34]";
connectAttr "front_left_end.msg" "bindPose1.m[35]";
connectAttr "front_middle_leg.msg" "bindPose1.m[36]";
connectAttr "front_middle_a.msg" "bindPose1.m[37]";
connectAttr "front_middle_b.msg" "bindPose1.m[38]";
connectAttr "front_middle_end.msg" "bindPose1.m[39]";
connectAttr "rear_left_leg.msg" "bindPose1.m[40]";
connectAttr "rear_left_a.msg" "bindPose1.m[41]";
connectAttr "rear_left_b.msg" "bindPose1.m[42]";
connectAttr "rear_left_end.msg" "bindPose1.m[43]";
connectAttr "rear_middle_leg.msg" "bindPose1.m[44]";
connectAttr "rear_middle_a.msg" "bindPose1.m[45]";
connectAttr "rear_middle_b.msg" "bindPose1.m[46]";
connectAttr "rear_middle_end.msg" "bindPose1.m[47]";
connectAttr "rear_right_leg.msg" "bindPose1.m[48]";
connectAttr "rear_right_a.msg" "bindPose1.m[49]";
connectAttr "rear_right_b.msg" "bindPose1.m[50]";
connectAttr "rear_right_end.msg" "bindPose1.m[51]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[9]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[9]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[9]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[4]" "bindPose1.p[26]";
connectAttr "bindPose1.m[4]" "bindPose1.p[27]";
connectAttr "bindPose1.m[1]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[1]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[1]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[1]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[1]" "bindPose1.p[44]";
connectAttr "bindPose1.m[44]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "bindPose1.m[46]" "bindPose1.p[47]";
connectAttr "bindPose1.m[1]" "bindPose1.p[48]";
connectAttr "bindPose1.m[48]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[50]" "bindPose1.p[51]";
connectAttr "root.bps" "bindPose1.wm[0]";
connectAttr "hip.bps" "bindPose1.wm[1]";
connectAttr "spine_a.bps" "bindPose1.wm[2]";
connectAttr "spine_b.bps" "bindPose1.wm[3]";
connectAttr "occular.bps" "bindPose1.wm[4]";
connectAttr "spine_c.bps" "bindPose1.wm[5]";
connectAttr "cap_start.bps" "bindPose1.wm[6]";
connectAttr "cap_a.bps" "bindPose1.wm[7]";
connectAttr "cap_b.bps" "bindPose1.wm[8]";
connectAttr "cap_end.bps" "bindPose1.wm[9]";
connectAttr "right_cap.bps" "bindPose1.wm[10]";
connectAttr "right_cap_a.bps" "bindPose1.wm[11]";
connectAttr "right_cap_b.bps" "bindPose1.wm[12]";
connectAttr "right_cab_end.bps" "bindPose1.wm[13]";
connectAttr "left_cap.bps" "bindPose1.wm[14]";
connectAttr "left_cap_a.bps" "bindPose1.wm[15]";
connectAttr "left_cap_b.bps" "bindPose1.wm[16]";
connectAttr "left_cab_end.bps" "bindPose1.wm[17]";
connectAttr "rear_cap.bps" "bindPose1.wm[18]";
connectAttr "rear_cap_a.bps" "bindPose1.wm[19]";
connectAttr "rear_cap_b.bps" "bindPose1.wm[20]";
connectAttr "rear_cap_end.bps" "bindPose1.wm[21]";
connectAttr "front_cap.bps" "bindPose1.wm[22]";
connectAttr "front_cap_a.bps" "bindPose1.wm[23]";
connectAttr "front_cap_b.bps" "bindPose1.wm[24]";
connectAttr "left_eye.bps" "bindPose1.wm[26]";
connectAttr "right_eye.bps" "bindPose1.wm[27]";
connectAttr "front_right_leg.bps" "bindPose1.wm[28]";
connectAttr "front_right_a.bps" "bindPose1.wm[29]";
connectAttr "front_right_b.bps" "bindPose1.wm[30]";
connectAttr "front_right_end.bps" "bindPose1.wm[31]";
connectAttr "front_left_leg.bps" "bindPose1.wm[32]";
connectAttr "front_left_a.bps" "bindPose1.wm[33]";
connectAttr "front_left_b.bps" "bindPose1.wm[34]";
connectAttr "front_left_end.bps" "bindPose1.wm[35]";
connectAttr "front_middle_leg.bps" "bindPose1.wm[36]";
connectAttr "front_middle_a.bps" "bindPose1.wm[37]";
connectAttr "front_middle_b.bps" "bindPose1.wm[38]";
connectAttr "front_middle_end.bps" "bindPose1.wm[39]";
connectAttr "rear_left_leg.bps" "bindPose1.wm[40]";
connectAttr "rear_left_a.bps" "bindPose1.wm[41]";
connectAttr "rear_left_b.bps" "bindPose1.wm[42]";
connectAttr "rear_left_end.bps" "bindPose1.wm[43]";
connectAttr "rear_middle_leg.bps" "bindPose1.wm[44]";
connectAttr "rear_middle_a.bps" "bindPose1.wm[45]";
connectAttr "rear_middle_b.bps" "bindPose1.wm[46]";
connectAttr "rear_middle_end.bps" "bindPose1.wm[47]";
connectAttr "rear_right_leg.bps" "bindPose1.wm[48]";
connectAttr "rear_right_a.bps" "bindPose1.wm[49]";
connectAttr "rear_right_b.bps" "bindPose1.wm[50]";
connectAttr "rear_right_end.bps" "bindPose1.wm[51]";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.oc" "blinn1.c"
		;
connectAttr "cmdr_shroom_final:ReflectionMap.oc" "blinn1.rc";
connectAttr "cmdr_shroom_final:commanderSG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "cmdr_shroom_final:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "cmdr_shroom_final:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "cmdr_shroom_final:cmdrFBXASC032paint1_Flattened_Diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "cmdr_shroom_final:ReflectionMap.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of commander_shroom animations.ma
