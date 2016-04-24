//Maya ASCII 2016 scene
//Name: light melee mushroom animations.ma
//Last modified: Thu, Apr 21, 2016 11:25:36 AM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "857B9275-41BE-D427-54DE-139E3D7E0863";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 45.138671090580694 20.60491823137103 34.121090046277764 ;
	setAttr ".r" -type "double3" -10.538352749906911 409.79999999973109 1.2318989849905204e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "719F69EC-4B87-A8E8-81C9-6F93ADA893B3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 54.258465337229936;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "058D0F6E-4031-5DC8-41DF-5287F261FDCA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "02B6325A-4364-4B47-1250-0BA2AF19D006";
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
	rename -uid "BD0134AF-41DC-706A-895A-F7B83AA6B9BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.6632956162396186 2.8960399213175694 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C3A5E61E-47F6-462C-31A8-D7B52B3A8EE5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 16.147716737519517;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "07F55063-4193-7570-CC20-CCA81DF08B2B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 6.7018859460000932 -3.67357372325566 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "76C95ABE-42CB-4BEB-3E33-6CA50CA08AD6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 37.462646592243111;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root";
	rename -uid "4B7C6E9F-408F-97F2-D5A5-AEBD978D05CC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 4.7636416907264021 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0.99654575824487956 -0.0830454798537439 0
		 -1.6653345369377353e-016 0.083045479853743664 0.99654575824487956 0 1.0000000000000002 -2.7755575615628918e-016 0 0
		 0 3.176276457145458 0.0066619400084864024 1;
	setAttr ".radi" 0.5;
createNode joint -n "hip" -p "root";
	rename -uid "C7F2E356-4D8A-C4A4-D9D9-D2B580EC1E86";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.69334029440451495 2.1510571102112408e-016 -1.5395247174965534e-016 ;
	setAttr ".r" -type "double3" -5.852032641388297e-018 -1.2345550637363675e-020 -2.4937733192686583e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.7636416907263737 ;
	setAttr ".bps" -type "matrix" 2.0744775860549943e-016 1.0000000000000002 -5.134781488891349e-016 0
		 -1.8439800764933412e-016 2.7755575615628914e-016 1.0000000000000002 0 1.0000000000000002 -2.7755575615628918e-016 0 0
		 2.4651903288156619e-032 3.8672217865545333 -0.050916837442272392 1;
	setAttr ".radi" 0.53762224087186328;
createNode joint -n "spine_a" -p "hip";
	rename -uid "80BA3693-43B9-E41A-F4A5-93988C2A5E84";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.7273633235226913 1.3405046015179951e-015 -3.5833764976212821e-016 ;
	setAttr ".r" -type "double3" 1.0318433409566545e-017 -5.514242766539742e-021 1.2490423344502067e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 2.3859440303891724 ;
	setAttr ".bps" -type "matrix" 1.9959132705934907e-016 0.99913307309235189 0.041630544712187072 0
		 3.1533899115959097e-016 0.041630544712187308 -0.99913307309235222 0 -1.0000000000000002 2.8265402748914328e-016 -1.2235851198848075e-016 0
		 -7.3955709864469857e-032 5.594585110077225 -0.050916837442271941 1;
	setAttr ".radi" 0.51981498430129636;
createNode joint -n "nasal" -p "spine_a";
	rename -uid "5CD2755C-4B78-B986-3F4A-E8B7F8C002BA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.3830896964917303 5.3915205633359164e-015 2.7605270796489809e-016 ;
	setAttr ".r" -type "double3" -2.0286017401212016e-018 -6.022299847953438e-020 3.0646002511406298e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 0 5.8541732893063418 ;
	setAttr ".bps" -type "matrix" 2.3071400535265783e-016 0.998168496631191 -0.060495060401891308 0
		 -1.4901161609649049e-008 0.060495060401891031 0.99816849663119167 0 1.0000000000000002 9.0144637123460944e-010 1.487386991152086e-008 0
		 2.2186712959340957e-031 6.9764757688953765 0.0066619400084868968 1;
	setAttr ".radi" 0.54673721104449935;
createNode joint -n "occular" -p "nasal";
	rename -uid "605D97B6-4130-CD81-EF4E-679A150385DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.9035860801936537 -9.7144514654701197e-017 -4.3918397029459482e-016 ;
	setAttr ".r" -type "double3" -3.0617563752722349e-018 -2.6774449226150662e-020 2.4152798126211756e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999723315 -2.3141581051921216e-026 4.6139920970923658 ;
	setAttr ".bps" -type "matrix" -1.1986841304038122e-009 0.99980005998000721 0.019996001199601252 0
		 1.4901161717145035e-008 0.019996001199601474 -0.99980005998000787 0 -1.0000000000000002 -9.0048074779532896e-010 -1.4922151083484882e-008 0
		 2.480149843288014e-025 8.876575424770337 -0.10849561489302779 1;
	setAttr ".radi" 0.59721627255577903;
createNode joint -n "cap_start" -p "occular";
	rename -uid "C10CC9ED-4E4E-047E-B1D0-BBBEEF5CDB45";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.8795146027450609 4.1772141301521515e-015 -3.4516284575764611e-009 ;
	setAttr ".r" -type "double3" -5.401518289658095e-022 1.6814874599062676e-020 -5.9984823471143744e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.145762838175143 ;
	setAttr ".bps" -type "matrix" -9.004808179033359e-010 1.0000000000000002 4.0245584642661925e-016 0
		 1.4922151267882886e-008 6.3837823915946501e-016 -1.0000000000000009 0 -1.0000000000000002 -9.0048074779532896e-010 -1.4922151083484882e-008 0
		 -1.7536368185561294e-023 11.755514297308157 -0.050916837442272364 1;
	setAttr ".radi" 0.74907533737205478;
createNode joint -n "cap_end" -p "cap_start";
	rename -uid "B0EC7E30-46F0-58B7-A60F-618F2C953BAA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 5.815456522526393 2.5115171352167584e-015 -5.2367070458858444e-009 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 89.999999145999325 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.580560443864018e-008 1.4922151083484889e-008 0
		 -1.5805604564259328e-008 1 -2.640498718846062e-016 0 -1.4922151267882886e-008 -1.3877787807814447e-016 1.0000000000000009 0
		 8.933411416135592e-024 17.57097081983455 -0.050916837442272454 1;
	setAttr ".radi" 0.74907533737205478;
createNode joint -n "front_cap_start" -p "cap_end";
	rename -uid "90660FD3-42B4-4185-512D-5E901EA56904";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 9.6608628565029437e-008 4.3184083088067347 1.9000996558749583 ;
	setAttr ".r" -type "double3" -1.338891920751486e-014 4.2040076088445498e-015 -3.2916293955313663e-030 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999998813616841 -43.89118787224001 -90.000000083085624 ;
	setAttr ".bps" -type "matrix" -2.5390595768551618e-016 -0.72065774880512778 0.69329099885050194 0
		 -1.5567962710896057e-015 0.69329099885050116 0.72065774880512823 0 -1.0000000000000004 -8.3493775228101421e-016 -1.1233566807539183e-015 0
		 -4.3014783847128508e-024 21.889379128641288 1.8491828184326879 1;
	setAttr ".radi" 0.7747537191438354;
createNode joint -n "front_cap_a" -p "front_cap_start";
	rename -uid "D1EA3CDD-4EDE-B7A5-7571-66875D8CB0ED";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 6.3119052367808184 8.8817841970012523e-016 -7.8886090522101181e-031 ;
	setAttr ".r" -type "double3" -3.2072608255229258e-029 2.404453246670306e-026 1.1834244147214755e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -19.301070706044033 ;
	setAttr ".bps" -type "matrix" 2.7493591525282763e-016 -0.90930789895771236 0.41612395376030886 0
		 -1.5532202379349781e-015 0.41612395376030831 0.90930789895771302 0 -1.0000000000000004 -8.3493775228101421e-016 -1.1233566807539183e-015 0
		 -1.6026303482665374e-015 17.340655710031527 6.2251699046901763 1;
	setAttr ".radi" 0.64151573734162515;
createNode joint -n "front_cap_b" -p "front_cap_a";
	rename -uid "A6D7D70B-49FD-DD94-1B1D-DBA7BE3A1942";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.7359709219380877 8.8817841970012523e-016 8.2258070492816417e-016 ;
	setAttr ".r" -type "double3" -5.5358323003310389e-029 1.3683068956279571e-026 1.2856691736884336e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -20.968632462078684 ;
	setAttr ".bps" -type "matrix" 8.1255910242253041e-016 -0.99800311314771861 0.063164753996690526 0
		 -1.35197284369805e-015 0.063164753996690193 0.99800311314771939 0 -1.0000000000000004 -8.3493775228101421e-016 -1.1233566807539183e-015 0
		 -1.3980584684137048e-015 13.943507840436897 7.779796895860601 1;
	setAttr ".radi" 0.68402542478548278;
createNode joint -n "front_cap_end" -p "front_cap_b";
	rename -uid "7D867116-435E-1F90-754E-1F8B47041D9F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 4.5578248791860014 -2.0539125955565396e-015 1.9625075176274263e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -86.378515295882679 89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -4.7960727398736353e-017 1.2348585538826552e-015 0
		 -6.3666277447727105e-017 1.0000000000000002 4.0245584642662018e-016 0 -1.408970313552052e-015 -6.9388939039072294e-016 1.0000000000000009 0
		 3.4293610678932696e-016 9.3947844218271435 8.0676907831143776 1;
	setAttr ".radi" 0.68402542478548278;
createNode joint -n "rear_cap_start" -p "cap_end";
	rename -uid "6789309D-4E90-F2BA-38F2-13B78D448133";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 4.1421429029305863e-008 4.3184291801654524 -1.7982631625577268 ;
	setAttr ".r" -type "double3" -1.1519660811888865e-006 3.617084818715262e-007 -3.6361841585602333e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000001186383301 -43.891187872240017 89.999998271896786 ;
	setAttr ".bps" -type "matrix" -6.4278026938634561e-016 0.72065774880512756 0.69329099885050194 0
		 1.1579137109059563e-015 -0.69329099885050127 0.72065774880512845 0 1.0000000000000004 1.1124935117460261e-015 -6.5300015864633217e-016 0
		 8.933411416135592e-024 21.889400000000002 -1.8491800000000012 1;
	setAttr ".radi" 0.7747537191438354;
createNode joint -n "rear_cap_a" -p "rear_cap_start";
	rename -uid "62C06CB6-43C7-8C1C-C9E0-998201CD10C4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -6.3118903800496913 -1.8335722469231541e-005 -2.8030200191210925e-015 ;
	setAttr ".r" -type "double3" 2.5646542780274774e-029 -3.1351612889005188e-029 -3.1170225531127475e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -19.301070706044051 ;
	setAttr ".bps" -type "matrix" -9.8938022889586243e-016 0.90930789895771225 0.41612395376030842 0
		 8.8037344308330694e-016 -0.4161239537603082 0.90930789895771336 0 1.0000000000000004 1.1124935117460261e-015 -6.5300015864633217e-016 0
		 1.2541173574532953e-015 17.340699999999998 -6.2251700000000039 1;
	setAttr ".radi" 0.64151573734162515;
createNode joint -n "rear_cap_b" -p "rear_cap_a";
	rename -uid "7642B21D-493D-FB25-E624-AB9C7C9E017B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.7360195765735256 1.8956757894983411e-005 -3.0739777653449112e-015 ;
	setAttr ".r" -type "double3" 3.2900761845995565e-029 -1.8802194223704703e-029 -2.9161112011584676e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -20.968632462078666 ;
	setAttr ".bps" -type "matrix" -1.2389076043681148e-015 0.9980031131477185 0.063164753996690248 0
		 4.6801558142357254e-016 -0.063164753996690415 0.99800311314771961 0 1.0000000000000004 1.1124935117460261e-015 -6.5300015864633217e-016 0
		 1.8765001849643383e-015 13.943499999999998 -7.7797999999999998 1;
	setAttr ".radi" 0.68402542478548278;
createNode joint -n "rear_cap_end" -p "rear_cap_b";
	rename -uid "9A9EC5A0-4632-FAE9-A750-1091854669D7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -4.5578212218653942 3.663555730781809e-006 -5.1423230835824151e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -86.378515295882679 89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" -1.0000000000000004 -2.2959503206627573e-016 7.645020317750689e-016 0
		 4.3332846666013072e-016 -1 6.9388939039072343e-016 0 4.9984801567033888e-016 4.5796699765787717e-016 1.0000000000000011 0
		 2.380898187102495e-015 9.3947800000000008 -8.0676899999999971 1;
	setAttr ".radi" 0.68402542478548278;
createNode joint -n "right_cap_start" -p "cap_end";
	rename -uid "EB54E953-4B73-B4E6-4E5A-8899A2866797";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -1.7132757131416927 4.4144124672500418 0.050916863008032436 ;
	setAttr ".r" -type "double3" -1.3331272082685928e-014 4.3833802228396687e-015 6.531745530036098e-023 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999853920431 0 -134.76614187972118 ;
	setAttr ".bps" -type "matrix" -0.7042147650714834 -0.7099870172442001 -1.0508399099598518e-008 0
		 -0.70998701724420044 0.70421476507148295 1.4901161008521658e-008 0 -3.179460870316711e-009 1.7954444698618123e-008 -1.0000000000000011 0
		 -1.7132757836739401 21.985383260005232 -1.7347234759768071e-016 1;
	setAttr ".radi" 0.79969816706875407;
createNode joint -n "right_cap_a" -p "right_cap_start";
	rename -uid "ECBB2D3A-42A1-F745-F545-B58DC2365DAE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 6.7941645633292449 1.3322676295501878e-015 1.9852334701272664e-023 ;
	setAttr ".r" -type "double3" 2.0718080188592789e-021 -1.6755494494554155e-018 3.3889234917958559e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -21.961600502805599 ;
	setAttr ".bps" -type "matrix" -0.38758863936308596 -0.92183243956625427 -1.5318666419557593e-008 0
		 -0.92183243956625471 0.38758863936308574 9.889869067113457e-009 0 -3.179460870316711e-009 1.7954444698618123e-008 -1.0000000000000011 0
		 -6.4978267854958434 17.16161462702086 -7.1395792953285554e-008 1;
	setAttr ".radi" 0.64192042341539013;
createNode joint -n "right_cap_b" -p "right_cap_a";
	rename -uid "8C50F14A-49F3-D995-F4FA-EA9E405ECB02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.7437948526975418 -3.6151518054885101e-015 -2.0863466741328178e-008 ;
	setAttr ".r" -type "double3" 3.1515541005478986e-021 -9.5452846572634846e-019 3.1413948115559616e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -20.357491828997563 ;
	setAttr ".bps" -type "matrix" -0.042696072944573837 -0.99908810690304561 -1.7802321496499422e-008 0
		 -0.99908810690304617 0.042696072944573837 3.9431459995292618e-009 0 -3.179460870316711e-009 1.7954444698618123e-008 -1.0000000000000011 0
		 -7.9488791385074054 13.710463084723099 -1.0788227070368777e-007 1;
	setAttr ".radi" 0.68582676823890099;
createNode joint -n "right_cap_end" -p "right_cap_b";
	rename -uid "A0CF6496-4A55-50D3-9F84-4CB7D7C4753D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 4.5926508526187533 4.1540416526081097e-016 -4.6075035120420704e-008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999939876 0 -92.447048642323566 ;
	setAttr ".bps" -type "matrix" 1.0000000000000007 -6.2450045135165055e-017 -3.1794610547147153e-009 0
		 1.3304228039608326e-018 1.0000000000000002 7.4608268787078061e-009 0 3.179460870316711e-009 -7.4608270456819336e-009 1.0000000000000013 0
		 -8.1449672943197751 9.1220002387135679 -1.4356708258275825e-007 1;
	setAttr ".radi" 0.68582676823890099;
createNode joint -n "left_cap_start" -p "cap_end";
	rename -uid "20B8CC0B-469D-5B24-583D-04AFD1878231";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.7132800705325097 4.4144291530860293 0.05091681187644756 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 134.76614006853231 ;
	setAttr ".bps" -type "matrix" -0.70421476507148306 0.70998701724420032 -1.050839913963646e-008 0
		 -0.70998701724420032 -0.70421476507148295 -1.0594533518774528e-008 0 -1.4922151267882886e-008 -1.3877787807814447e-016 1.0000000000000009 0
		 1.7132800000000001 21.985400000000006 -1.9498291869979312e-015 1;
	setAttr ".radi" 0.79969816706875407;
createNode joint -n "left_cap_a" -p "left_cap_start";
	rename -uid "8E67A97E-41B4-E95A-48DA-87A5F276EB67";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -6.7941861280053342 2.2800396081379404e-005 1.6315600000000002e-031 ;
	setAttr ".r" -type "double3" 1.2095934504433397e-037 -2.9996644187969167e-037 -1.4637257522344682e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -21.961600502805602 ;
	setAttr ".bps" -type "matrix" -0.38758863936308574 0.92183243956625449 -5.7836562608105238e-009 0
		 -0.92183243956625449 -0.38758863936308563 -1.3755722925936554e-008 0 -1.4922151267882886e-008 -1.3877787807814447e-016 1.0000000000000009 0
		 6.4978300000000004 17.161600000000007 7.1395776152671516e-008 1;
	setAttr ".radi" 0.64192042341539013;
createNode joint -n "left_cap_b" -p "left_cap_a";
	rename -uid "22577CA4-463D-1045-00FD-25A53747F7AE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.743746427334905 -1.7808126665741497e-005 9.9261698368440003e-024 ;
	setAttr ".r" -type "double3" 5.5951020897712917e-037 -1.0311149464394145e-036 -1.2943842324363033e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -20.357491828997535 ;
	setAttr ".bps" -type "matrix" -0.042696072944574226 0.99908810690304584 -6.3711727932096893e-010 0
		 -0.99908810690304584 -0.042696072944574115 -1.490854367571628e-008 0 -1.4922151267882886e-008 -1.3877787807814447e-016 1.0000000000000009 0
		 7.9488799999999982 13.710500000000007 9.3048563579670324e-008 1;
	setAttr ".radi" 0.68582676823890099;
createNode joint -n "left_cap_end" -p "left_cap_b";
	rename -uid "AFDDB01A-49A9-0313-9565-34B294B6FFCB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -4.5926880514683255 -2.5617643828468317e-007 -1.9852339999999999e-023 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999942520782 0 -92.447048642323608 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -3.3306690738754696e-016 1.4922151083484889e-008 0
		 -3.7174386861878447e-016 -1.0000000000000002 1.0032016257381159e-008 0 1.4922151267882883e-008 -1.0032016090407025e-008 -1.0000000000000009 0
		 8.1449699999999972 9.122000000000007 9.5974648315009347e-008 1;
	setAttr ".radi" 0.68582676823890099;
createNode ikEffector -n "effector5" -p "cap_start";
	rename -uid "CE8C0863-4E94-A62D-A747-B5A6A57F490B";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "left_eye" -p "occular";
	rename -uid "051D5FB3-4D85-D4DD-A4EC-26906BC64C3E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.18993263112643355 -0.10471864350822044 -1.0529739385643015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 88.854237161824813 89.999999143468429 0 ;
	setAttr ".bps" -type "matrix" 1 1.5846787809662857e-008 1.5221077169199995e-008 0
		 -1.5846787898779736e-008 1 -6.4977302749129221e-016 0 -1.5221077262950975e-008 2.9463381381248283e-016 1.0000000000000009 0
		 1.052973936776203 9.0643761275896768 -1.6653345369377348e-016 1;
	setAttr ".radi" 0.56430300651809195;
createNode joint -n "right_eye" -p "occular";
	rename -uid "2C332ECC-40D7-19D0-16FC-2FB3F6D44308";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.18993650528686601 -0.1047185974565098 1.052969998211897 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -91.14576283817523 89.99999802426305 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999978 3.5376701223157428e-008 1.5611675492992154e-008 0
		 3.537670136299102e-008 -0.99999999999999978 1.6108046085786863e-015 0 1.5611675705429996e-008 -9.0490475097874772e-016 -1.0000000000000009 0
		 -1.0529699999999997 9.0643799999999981 -1.5265566588595902e-016 1;
	setAttr ".radi" 0.56430300651809195;
createNode joint -n "nose" -p "nasal";
	rename -uid "F69ABC21-42AB-C48E-A186-B6A137943FDE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.24652950145841857 1.8291761705095428 2.7256849786159464e-008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -86.531770741082809 -89.999999146226344 0 ;
	setAttr ".bps" -type "matrix" 1 1.5775316259794496e-008 1.3972423251608123e-008 0
		 -1.5775316354843538e-008 1.0000000000000002 -2.3510979398211125e-016 0 -1.3972423400851444e-008 -1.5878195393773631e-016 1.0000000000000009 0
		 -3.3087222283449811e-024 6.8410539099700642 1.8474017852811733 1;
	setAttr ".radi" 0.5;
createNode joint -n "front_left_leg" -p "hip";
	rename -uid "33BCB5B8-4BD3-10A5-9032-2097F27EAB0B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.69094532940907616 0.92126043921210188 1.0337361818245638 ;
	setAttr ".r" -type "double3" -2.0257418956577808e-006 1.6080413479097043e-007 4.9405323395008566e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.765562519220063e-031 154.79887635452482 ;
	setAttr ".bps" -type "matrix" -2.6621873687815421e-016 -0.90481870220099359 0.42579703632988186 0
		 4.394855475251431e-017 0.4257970363298817 0.90481870220099325 0 -1.0000000000000002 3.2970085391907109e-016 1.1080833274591087e-016 0
		 1.0337361818245638 3.1762764571454571 0.87034360176983006 1;
	setAttr ".radi" 0.5042313971743051;
createNode joint -n "front_left_leg_a" -p "front_left_leg";
	rename -uid "E3C5F4A6-47A8-818E-F8E5-63AC99B69FAA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.081807012036565 3.8282370386813162e-016 -0.5168680909122817 ;
	setAttr ".r" -type "double3" -5.591410717098339e-015 -1.3098660723075052e-013 -4.392171922032946e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.7661748225532747 ;
	setAttr ".bps" -type "matrix" -2.6954250562642935e-016 -0.94868329805051477 0.31622776601683672 0
		 1.2277173553426287e-017 0.3162277660168365 0.94868329805051443 0 -1.0000000000000002 3.2970085391907109e-016 1.1080833274591087e-016 0
		 1.5506042727368454 2.1974372404825977 1.3309738213758846 1;
	setAttr ".radi" 0.51420140886687937;
createNode joint -n "front_left_leg_b" -p "front_left_leg_a";
	rename -uid "D830D21C-4537-408B-77BB-C6AF62970264";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.2745605714263348 4.1795811361879299e-016 -0.23048941645880444 ;
	setAttr ".r" -type "double3" 4.5169993304874056e-015 -9.0058963084326997e-014 -1.85042163581488e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -3.5035316447844709 ;
	setAttr ".bps" -type "matrix" -2.697889985834105e-016 -0.96623493960124729 0.25766265056033089 0
		 -4.2175316472060596e-018 0.25766265056033066 0.96623493960124696 0 -1.0000000000000002 3.2970085391907109e-016 1.1080833274591087e-016 0
		 1.7810936891956497 0.98828291401671398 1.7340252635311777 1;
	setAttr ".radi" 0.5;
createNode joint -n "front_left_leg_end" -p "front_left_leg_b";
	rename -uid "B8D2FE02-419A-4B62-C618-A1A83C723105";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.74819999743299237 0.038843467335900037 -0.0064084585426585211 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -75.068582821862549 89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" 1 -1.1878898756331529e-015 1.1804207304450943e-016 0
		 1.0367489736058908e-015 1.0000000000000002 -8.3266726846886827e-017 0 -5.1767888475348596e-016 -5.5511151231257679e-017 1 0
		 1.787502147738308 0.27535444543811483 1.9643403733342018 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector2" -p "front_left_leg_b";
	rename -uid "96C88814-470F-C038-D0FF-5E8315596416";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "rear_left_leg" -p "hip";
	rename -uid "6EFE66CB-46E9-2373-4D0A-EE9948F2E151";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.6909417865545322 -0.81942716255772774 1.055272352279244 ;
	setAttr ".r" -type "double3" 1.3631941726552042e-014 -1.0140111000481362e-015 -3.1747100298218944e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 25.20112364547526 ;
	setAttr ".bps" -type "matrix" 1.0918648655371132e-016 0.90481870220099303 0.42579703632988219 0
		 -2.5517740677721774e-016 -0.42579703632988236 0.90481870220099314 0 1.0000000000000002 -2.7755575615628918e-016 0 0
		 1.0552723522792442 3.1762800000000002 -0.87034400000000001 1;
	setAttr ".radi" 0.5042313971743051;
createNode joint -n "rear_left_leg_a" -p "rear_left_leg";
	rename -uid "27E75C1A-4E5E-1A96-6D0D-7DBA40379D5D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -1.107567911842209 -0.054740072390908619 0.54515490463903793 ;
	setAttr ".r" -type "double3" -1.7997779194120969e-015 -2.7482876751255937e-014 -1.292860859841632e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.7661748225532738 ;
	setAttr ".bps" -type "matrix" 1.3849045379014745e-016 0.94868329805051432 0.31622776601683711 0
		 -2.4053605131973144e-016 -0.31622776601683728 0.94868329805051432 0 1.0000000000000002 -2.7755575615628918e-016 0 0
		 1.600427256918282 2.1974400000000007 -1.3914729756556192 1;
	setAttr ".radi" 0.51420140886687937;
createNode joint -n "rear_left_leg_b" -p "rear_left_leg_a";
	rename -uid "425A98DA-4FFD-7DAB-B8A4-31A013E2DEAB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -1.2954375903673738 -0.062622602365903876 0.036321697637276537 ;
	setAttr ".r" -type "double3" -2.8677305585325393e-015 -2.6495531627881031e-015 -1.3475413113646305e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182702126428e-006 0 -3.5035316447844744 ;
	setAttr ".bps" -type "matrix" 1.5293079320102455e-016 0.96623493960124684 0.25766265056033122 0
		 2.1073424032321856e-008 -0.25766265056033133 0.96623493960124662 0 1 5.4298340746747626e-009 -2.0361878820864531e-008 0
		 1.6367489545555585 0.9882829999999998 -1.86053532781672 1;
	setAttr ".radi" 0.5;
createNode joint -n "rear_left_leg_end" -p "rear_left_leg_b";
	rename -uid "44EE7D9C-4E2E-43E6-C634-A58C325D2692";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.67398530885330921 0.072297294066508783 0.12921702120451897 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -75.068582821862506 89.999998792581721 0 ;
	setAttr ".bps" -type "matrix" -0.99999999999999978 1.4932044832897485e-008 2.5791713138766114e-008 0
		 -1.4932044815923533e-008 -1.0000000000000002 5.8113956565678596e-016 0 2.5791712885359952e-008 1.4050540148699322e-016 1.0000000000000002 0
		 1.7659659772836289 0.31842653409210542 -1.9643400000000018 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector4" -p "rear_left_leg_b";
	rename -uid "A24F29D1-4F26-62F9-9E74-64B0DF0F79EA";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "front_right_leg" -p "hip";
	rename -uid "DE2E67D0-42FC-1AA5-EC6F-BE9771C2B726";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.69094178655453398 0.92126083744227183 -1.0337399999999994 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 1.7655625192200634e-031 -25.201123645475182 ;
	setAttr ".bps" -type "matrix" 2.6621873687815421e-016 0.90481870220099336 -0.42579703632988192 0
		 -4.3948554752514285e-017 -0.42579703632988175 -0.90481870220099347 0 -1.0000000000000002 3.2970085391907109e-016 1.1080833274591087e-016 0
		 -1.0337399999999999 3.1762799999999998 0.87034400000000001 1;
	setAttr ".radi" 0.5042313971743051;
createNode joint -n "front_right_leg_a" -p "front_right_leg";
	rename -uid "5B0BAB0A-4BBA-3B44-291A-7897E18967E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -1.0818059241189077 4.1515211064435675e-006 0.51685999999999988 ;
	setAttr ".r" -type "double3" 3.3368574591624164e-014 3.900987717061693e-013 1.8157918981518537e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.7661748225532756 ;
	setAttr ".bps" -type "matrix" 2.6954250562642935e-016 0.94868329805051455 -0.31622776601683672 0
		 -1.2277173553426256e-017 -0.31622776601683655 -0.94868329805051466 0 -1.0000000000000002 3.2970085391907109e-016 1.1080833274591087e-016 0
		 -1.5506000000000002 2.1974400000000003 1.3309700000000004 1;
	setAttr ".radi" 0.51420140886687937;
createNode joint -n "front_right_leg_b" -p "front_right_leg_a";
	rename -uid "2B426B63-4800-0779-746C-669C17326ECC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -1.2745658139916114 -7.2732386213285754e-006 0.26106635005445034 ;
	setAttr ".r" -type "double3" -8.602507422199804e-015 1.8765505421619926e-013 1.4359326729943509e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -3.5035316447844713 ;
	setAttr ".bps" -type "matrix" 2.697889985834105e-016 0.96623493960124707 -0.25766265056033089 0
		 4.2175316472060935e-018 -0.25766265056033072 -0.96623493960124718 0 -1.0000000000000002 3.2970085391907109e-016 1.1080833274591087e-016 0
		 -1.811666350054451 0.98828300000000069 1.7340300000000015 1;
	setAttr ".radi" 0.5;
createNode joint -n "front_right_leg_end" -p "front_right_leg_b";
	rename -uid "B531348A-4311-928D-7F1A-6783456480A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.74819919430552706 -0.038838393138236005 0.063519239956332907 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -75.068582821862549 89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 9.7188582901395253e-016 -4.0044712757441113e-016 0
		 1.1281859244131648e-015 -1.0000000000000004 2.7755575615628759e-017 0 -2.5947723248412366e-016 8.3266726846886851e-017 -1.0000000000000004 0
		 -1.8751855900107841 0.27535399999999999 1.9643400000000006 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector1" -p "front_right_leg_b";
	rename -uid "50312294-4D5D-973D-0C1D-6FA5B185A77E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "rear_right_leg" -p "hip";
	rename -uid "B03C4CE2-402E-CA78-5F85-299E9E10F5CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.69094178655453309 -0.81942716255772774 -1.0552699999999997 ;
	setAttr ".r" -type "double3" -1.3631935424509092e-014 1.0140098851638836e-015 3.1747374781841862e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -154.79887635452474 ;
	setAttr ".bps" -type "matrix" -1.0918648655371138e-016 -0.90481870220099336 -0.42579703632988225 0
		 2.5517740677721784e-016 0.42579703632988242 -0.90481870220099347 0 1.0000000000000002 -2.7755575615628918e-016 0 0
		 -1.0552699999999999 3.1762800000000002 -0.87034400000000001 1;
	setAttr ".radi" 0.5042313971743051;
createNode joint -n "rear_right_leg_a" -p "rear_right_leg";
	rename -uid "96A3F80E-46C9-E8BE-050D-579EFE7F7039";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.081805924118908 -4.1515211077758352e-006 -0.4953299999999996 ;
	setAttr ".r" -type "double3" 1.894768958187972e-014 4.5323461647895293e-013 1.7283819676084061e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.7661748225532747 ;
	setAttr ".bps" -type "matrix" -1.3849045379014752e-016 -0.94868329805051466 -0.31622776601683711 0
		 2.4053605131973154e-016 0.31622776601683728 -0.94868329805051477 0 1.0000000000000002 -2.7755575615628918e-016 0 0
		 -1.5505999999999998 2.1974399999999998 -1.3309699999999995 1;
	setAttr ".radi" 0.51420140886687937;
createNode joint -n "rear_right_leg_b" -p "rear_right_leg_a";
	rename -uid "C9EE2FCC-47EF-AB5A-1D97-8FA90D45C9EB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.274565813991611 7.2732386209716671e-006 -0.1592610026306216 ;
	setAttr ".r" -type "double3" -5.903342604364375e-015 6.6961079816147087e-014 -1.3967723794159663e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9090959109523906e-006 0 -3.5035316447844718 ;
	setAttr ".bps" -type "matrix" -1.5293079309762705e-016 -0.96623493960124718 -0.25766265056033122 0
		 3.3320009614103006e-008 0.25766265056033127 -0.96623493960124673 0 0.99999999999999967 -8.5853222117405754e-009 3.2194957253193223e-008 0
		 -1.7098610026306216 0.98828300000000047 -1.7340300000000006 1;
	setAttr ".radi" 0.5;
createNode joint -n "rear_right_leg_end" -p "rear_right_leg_b";
	rename -uid "AB4A79F6-45DF-3CD1-1A69-A284DF739A8E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.70658055675208242 0.049936694616268824 -0.056108999033269498 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -75.068582821862549 89.999998603500629 0 ;
	setAttr ".bps" -type "matrix" -0.99999999999999944 -1.4965216884928816e-008 -3.8475101012305021e-008 0
		 -1.4965216988313634e-008 1.0000000000000007 -3.6963054195946753e-016 0 3.8475101175970931e-008 5.0119445478254344e-016 -1 0
		 -1.76597 0.31842700000000002 -1.96434 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector3" -p "rear_right_leg_b";
	rename -uid "B1E3B54F-44BB-E1F3-5FED-A4972B1485C0";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "melee_shroom_textured:light_melee_shroom";
	rename -uid "54B020EE-4BD8-CF4B-9F31-A5AE54877AB1";
	setAttr ".t" -type "double3" 0 7.1682186126709002 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -179.99998474121099 -271.22619628906301 -179.99998474121099 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 3.7820487022399898 8.3051433563232404 3.7820487022399898 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "melee_shroom_textured:light_melee_shroomShape" -p "melee_shroom_textured:light_melee_shroom";
	rename -uid "3D6CF1D0-48AA-A750-F08F-31BCDC8AC27E";
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
createNode mesh -n "light_melee_shroomShapeOrig" -p "melee_shroom_textured:light_melee_shroom";
	rename -uid "09A9B74F-401D-6A03-5DE3-4D9A65B3444F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 798 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.36798468 0.56154686 0.41646019
		 0.56559432 0.41646019 0.57458431 0.37505269 0.57458431 0.38556626 0.55723673 0.41646019
		 0.56259763 0.46497676 0.56154686 0.45786771 0.57458431 0.41646019 0.5943802 0.37505269
		 0.5943802 0.35850778 0.54115397 0.37072513 0.54115397 0.44744644 0.55723673 0.45786771
		 0.5943802 0.41646019 0.62979454 0.37505269 0.62979454 0.35788912 0.52924085 0.36561406
		 0.52507126 0.46256447 0.54115397 0.47478184 0.54115397 0.45786771 0.62979454 0.41646019
		 0.66346371 0.37505269 0.66346371 0.35339671 0.52507126 0.36391026 0.5197103 0.38294217
		 0.54115397 0.37598902 0.52924085 0.46795246 0.52507126 0.47560549 0.52924085 0.45786771
		 0.66346371 0.41646019 0.67802435 0.37505269 0.67802435 0.45034713 0.54115397 0.45750558
		 0.52924085 0.46974826 0.5197103 0.4801695 0.52507126 0.45786771 0.67802435 0.41646019
		 0.68177891 0.37301609 0.68177891 0.45990428 0.68177891 0.18824595 0.79020208 0.19229344
		 0.74116516 0.20128341 0.74116516 0.20128341 0.78257281 0.18393585 0.7733227 0.18929681
		 0.74116516 0.18824595 0.69259787 0.20128341 0.69975758 0.21113664 0.74076313 0.21873093
		 0.78726095 0.16785307 0.80417126 0.16785307 0.79195404 0.18393585 0.71006447 0.21873093
		 0.69456333 0.21672282 0.73955715 0.2269692 0.78081781 0.15593995 0.80759734 0.15177046
		 0.80085534 0.16785307 0.6946032 0.16785307 0.68238592 0.2269692 0.69834906 0.15177046
		 0.81307256 0.14640933 0.8038224 0.16785307 0.7797367 0.15593995 0.78949773 0.15177046
		 0.6888721 0.15593995 0.68130815 0.16785307 0.70682049 0.15593995 0.69940776 0.14640933
		 0.68696177 0.15177046 0.67665482 0.24644813 0.7409482 0.24284188 0.73089713 0.26903057
		 0.73112649 0.2708376 0.73687768 0.23831815 0.7531597 0.23411222 0.73020929 0.24644813
		 0.72125411 0.2708376 0.72572058 0.29617655 0.73094988 0.29606479 0.74104035 0.27625865
		 0.74142104 0.2572667 0.74631029 0.23831815 0.70785469 0.25093591 0.76097775 0.2572667
		 0.71711624 0.27625865 0.72221375 0.29606479 0.72126722 0.30777803 0.73041999 0.30670756
		 0.7535283 0.29572937 0.74641556 0.25093591 0.70182383 0.26845527 0.74899596 0.264047
		 0.76127905 0.24208044 0.77241516 0.25774536 0.77575064 0.29572937 0.71711624 0.30670756
		 0.70790732 0.303496 0.76139897 0.24208044 0.68753791 0.25774536 0.68653136 0.2640408
		 0.70328867 0.26845047 0.71565449 0.27317134 0.75101799 0.26973271 0.76167947 0.26857489
		 0.77365428 0.27388448 0.78394836 0.27817327 0.78095555 0.303496 0.70182383 0.30441475
		 0.77295417 0.29812267 0.77627701 0.29979113 0.76164764 0.29502398 0.74908811 0.27388448
		 0.67665482 0.27817327 0.68143386 0.26857027 0.6909228 0.26970789 0.70342118 0.2731525
		 0.7140398 0.28167981 0.7449016 0.28348687 0.74746424 0.27317134 0.77239352 0.28215846
		 0.77802521 0.2950286 0.71565449 0.29979748 0.70328867 0.30441475 0.68758845 0.29812267
		 0.68653136 0.29562226 0.77411509 0.29724085 0.76188999 0.29380238 0.75107062 0.28215846
		 0.68680084 0.2731525 0.69280255 0.28167981 0.71977645 0.28348687 0.71757925 0.28348687
		 0.77610534 0.29382107 0.7140398 0.29726586 0.70342118 0.29562706 0.6909228 0.29380238
		 0.77265686 0.28348687 0.68926311 0.29382107 0.69280255 0.790546 0.91698903 0.790546
		 0.92920637 0.77446324 0.92030519 0.77446324 0.90808785 0.790546 0.94142371 0.77446324
		 0.93252224 0.75838047 0.91140378 0.76254994 0.90466177 0.76254994 0.92276132 0.84131587
		 0.90043604 0.84131587 0.70172024 0.86293328 0.70172024 0.86293328 0.9006713 0.82268035
		 0.89972973 0.82268035 0.70172024 0.84131587 0.50300437 0.86293328 0.50276917 0.88653195
		 0.70172024 0.88653195 0.89437973 0.80988103 0.89756072 0.80988103 0.70172024 0.82268035
		 0.50371075 0.88653195 0.50906074 0.91111302 0.70172024 0.91111302 0.87550461 0.80577236
		 0.89293677 0.80577236 0.70172024 0.80988103 0.50587976 0.91111302 0.52793586 0.80577236
		 0.51050365 0.64294535 0.90043592 0.64294535 0.70172024 0.6645624 0.70172024 0.6645624
		 0.9006713 0.62430966 0.89972973 0.62430966 0.70172024 0.64294535 0.50300455 0.6645624
		 0.50276917 0.68816125 0.70172024 0.68816125 0.89437973 0.61151034 0.89756072 0.61151034
		 0.70172024 0.62430966 0.50371075 0.68816125 0.50906074 0.71274215 0.70172024 0.71274215
		 0.87550479 0.60740185 0.89293677 0.60740185 0.70172024 0.61151034 0.50587976 0.71274215
		 0.52793568 0.60740185 0.51050359 0.31909996 0.76938593 0.32628468 0.72289872 0.33029532
		 0.72324818 0.33029532 0.76465583 0.31401929 0.76316398 0.32426569 0.72185063 0.31909996
		 0.67665476 0.33029532 0.68184066 0.33404991 0.72324818 0.33404991 0.7666924 0.31401929
		 0.68048477 0.33404991 0.67980409 0.92014354 0.90466267 0.93393224 0.9354018 0.93177557
		 0.93743223 0.92084181 0.90690196 0.56423515 0.69398576 0.56423515 0.88029253 0.55131745
		 0.88104922 0.55131745 0.69398576 0.57774937 0.69398576 0.57774937 0.86480516 0.54685342
		 0.88520235 0.54685342 0.69398576 0.56423515 0.50767905 0.55131745 0.50692236 0.57774937
		 0.52316642 0.54685342 0.50276917 0.50368673 0.6939857 0.50368673 0.88029248 0.49076891
		 0.88104916 0.49076891 0.6939857 0.51720101 0.6939857 0.51720101 0.86480522 0.48630491
		 0.88520229 0.48630491 0.6939857 0.50368673 0.50767893 0.49076891 0.5069223 0.51720101
		 0.52316618 0.48630491 0.50276917 0.42556649 0.77049792 0.41536471 0.77049792 0.41703856
		 0.75990689 0.42556649 0.75990689 0.41759658 0.72813421 0.42556649 0.72813421 0.43576825
		 0.77049792 0.4340944 0.75990689 0.4196628 0.70459878 0.42556649 0.69636136 0.43353647
		 0.72813421 0.42556649 0.68577027 0.41759658 0.69636136 0.43147019 0.70459878 0.43353647
		 0.69636136 0.39828125 0.77049792 0.38807949 0.77049792 0.38975334 0.75990689 0.39828125
		 0.75990689;
	setAttr ".uvst[0].uvsp[250:499]" 0.39031118 0.72813421 0.39828125 0.72813421
		 0.40848303 0.77049792 0.40680918 0.75990689 0.3923777 0.70459878 0.39828125 0.69636136
		 0.40625134 0.72813421 0.39031118 0.69636136 0.39828125 0.68577027 0.40418479 0.70459878
		 0.40625134 0.69636136 0.051035911 0.79355806 0.056926329 0.74810874 0.073899426 0.74810874
		 0.073899426 0.78951633 0.048301477 0.77788079 0.051268682 0.74810874 0.051785316
		 0.70235395 0.073899426 0.7067011 0.090872526 0.74810874 0.096086711 0.79426831 0.073899426
		 0.80331886 0.041741922 0.80526572 0.035327923 0.80657858 0.039400324 0.79299617 0.044229075
		 0.76769388 0.047196127 0.74810874 0.049472738 0.71785945 0.042913184 0.69047445 0.073899426
		 0.69289863 0.095954426 0.70192748 0.096530333 0.74810874 0.098440655 0.77944678 0.10500021
		 0.80622339 0.025566848 0.80738348 0.026426617 0.79883659 0.035327923 0.77941376 0.03201187
		 0.76429832 0.034978922 0.74810874 0.045400184 0.72804624 0.10479337 0.68996018 0.098233812
		 0.71673679 0.10060257 0.74810874 0.10251305 0.7697162 0.014209258 0.812419 0.011242208
		 0.80078334 0.025566848 0.78726137 0.019794667 0.76769388 0.022761719 0.74810874 0.033182979
		 0.73144174 0.040012352 0.71489424 0.044084754 0.70131171 0.10230637 0.72646743 0.11281993
		 0.74810874 0.11473026 0.76647264 0.10824417 0.78466398 0.10417162 0.79763818 0.014209258
		 0.78525418 0.015722265 0.77788079 0.018689318 0.74810874 0.020965774 0.72804624 0.027795147
		 0.71942168 0.03285389 0.70598567 0.034624521 0.69403923 0.10334489 0.69844359 0.10741744
		 0.71141779 0.11452357 0.72971094 0.12503713 0.74810874 0.12694761 0.7697162 0.12046138
		 0.7803393 0.11565686 0.79448211 0.11397514 0.8063516 0.0019920545 0.79883659 0.0074672527
		 0.78726137 0.016893374 0.71785945 0.015577788 0.71489424 0.022407161 0.70762151 0.020611217
		 0.69161505 0.11252835 0.6896283 0.11437076 0.70152426 0.11963449 0.71574259 0.12674078
		 0.72646743 0.12910955 0.74810874 0.13101986 0.77944678 0.13267858 0.78466398 0.1261925
		 0.79337752 0.12810282 0.80925614 0.014754293 0.70598567 0.022407161 0.6804567 0.03285389
		 0.68586367 0.010189956 0.69403923 0.12644935 0.68668997 0.12474556 0.70260245 0.13185185
		 0.71141779 0.13081333 0.71673679 0.13375646 0.79448211 0.1261925 0.8193258 0.11565686
		 0.813703 0.13840987 0.8063516 0.11437076 0.68230325 0.12474556 0.67665428 0.13696292
		 0.6896283 0.13247035 0.70152426 0.65628982 0.29381281 0.69964361 0.30829427 0.69964361
		 0.31644061 0.65008956 0.29992265 0.65859765 0.29177621 0.69964361 0.30557874 0.74308783
		 0.29381281 0.7491976 0.29992265 0.69964361 0.32458696 0.64397985 0.30603242 0.64207971
		 0.25036862 0.63357162 0.25036862 0.74105126 0.29177621 0.75756913 0.25036862 0.76571548
		 0.25036862 0.75530738 0.30603242 0.69964361 0.32730243 0.64194322 0.30806899 0.62542528
		 0.25036862 0.65674192 0.20692439 0.65008956 0.20081463 0.74317831 0.20692439 0.7491976
		 0.20081463 0.77386183 0.25036862 0.75734395 0.30806899 0.69964361 0.34889373 0.62574977
		 0.32426244 0.62270981 0.25036862 0.64397985 0.19470488 0.70000523 0.19244307 0.69964361
		 0.18429673 0.75530738 0.19470488 0.77657747 0.25036862 0.7735374 0.32426244 0.69964361
		 0.41366771 0.5771693 0.37284291 0.60111851 0.25036862 0.64194322 0.19266829 0.69964361
		 0.17615038 0.7010904 0.19515853 0.66040617 0.20896098 0.74141294 0.20896098 0.75734395
		 0.19266829 0.79816878 0.25036862 0.82211787 0.37284291 0.69964361 0.47812784 0.52882421
		 0.421188 0.53634453 0.25036862 0.62574977 0.17647484 0.69964361 0.17343478 0.7735374
		 0.17647484 0.8629427 0.25036862 0.87046295 0.421188 0.69964361 0.49877763 0.51333684
		 0.4366754 0.4718844 0.25036862 0.5771693 0.12789437 0.69964361 0.15184347 0.82211787
		 0.12789437 0.92740279 0.25036862 0.88595039 0.4366754 0.52882415 0.079549283 0.69964361
		 0.087069556 0.87046295 0.079549283 0.69964361 0.022609444 0.51333684 0.064061873
		 0.69964361 0.0019597169 0.88595039 0.064061873 0.23370479 0.027126703 0.40748936
		 0.085055046 0.3715913 0.12095293 0.23370479 0.074990653 0.23370479 0.0019600254 0.42636427
		 0.066179954 0.46541753 0.25883943 0.41755342 0.25883943 0.31423053 0.17831385 0.23370479
		 0.15147178 0.05992024 0.085055046 0.095818281 0.12095293 0.041045308 0.066179954
		 0.40748936 0.43262383 0.3715913 0.39672595 0.34107244 0.25883943 0.26260337 0.22994073
		 0.23370479 0.22030792 0.15317905 0.17831385 0.0019920545 0.25883943 0.049856085 0.25883943
		 0.23370479 0.49055219 0.23370479 0.44268823 0.31423053 0.33936504 0.27223632 0.25883943
		 0.24390656 0.24863768 0.23370479 0.24523719 0.20480622 0.22994073 0.12633722 0.25883943
		 0.05992024 0.43262383 0.095818281 0.39672595 0.42636427 0.45149893 0.23370479 0.51571888
		 0.23370479 0.36620709 0.26260337 0.28773817 0.24730705 0.25883943 0.22350302 0.24863768
		 0.19517334 0.25883943 0.15317905 0.33936504 0.041045308 0.45149893 0.23370479 0.29737097
		 0.24390656 0.26904121 0.22010247 0.25883943 0.20480622 0.28773817 0.23370479 0.27244169
		 0.22350302 0.26904121 0.38065344 0.72728503 0.38165638 0.76849306 0.37908533 0.77064753
		 0.37534636 0.72826183 0.36001006 0.75033075 0.35689622 0.72797608 0.38012254 0.68602437
		 0.37639821 0.68577027 0.3589175 0.70502573 0.34964615 0.72929311 0.34936884 0.77060646
		 0.34643498 0.77113652 0.34825993 0.72842163 0.34130469 0.75171036 0.34358308 0.72860223
		 0.34945127 0.68792725 0.34919402 0.68577057 0.34421957 0.70608956 0.54292059 0.96807462
		 0.53230196 0.96610516 0.53357047 0.9542231 0.54332083 0.95471543 0.53399324 0.92583495
		 0.54345429 0.92583495 0.55353922 0.9691326 0.55307126 0.9549799 0.53644615 0.90547878
		 0.54345429 0.89835435 0.55291528 0.92583495 0.54345429 0.88919389 0.53399324 0.89835435
		 0.55046237 0.90547878 0.55291528 0.89835435;
	setAttr ".uvst[0].uvsp[500:749]" 0.5721547 0.96442854 0.56153619 0.96635866
		 0.56200421 0.95428669 0.57175463 0.95380414 0.56216007 0.92583531 0.57162094 0.92583531
		 0.58277327 0.96341014 0.58150506 0.95354944 0.56461287 0.90547901 0.57162094 0.89835447
		 0.58108211 0.92583531 0.56216007 0.89835447 0.57162094 0.88919401 0.57862937 0.90547901
		 0.58108211 0.89835447 0.68523681 0.97794527 0.67457539 0.97841698 0.675843 0.96890306
		 0.68557423 0.96878511 0.6762656 0.94130433 0.68568695 0.94130433 0.69595104 0.97844326
		 0.69531852 0.96890956 0.67870814 0.92094803 0.68568695 0.91382325 0.69510794 0.94130433
		 0.68568695 0.90466309 0.6762656 0.91382325 0.6926654 0.92094803 0.69510794 0.91382325
		 0.60153735 0.9818238 0.59077048 0.98140466 0.5916003 0.96964937 0.60135782 0.96975416
		 0.59187675 0.94130355 0.60129797 0.94130355 0.61235672 0.98127306 0.61112851 0.96961665
		 0.59431928 0.92094743 0.60129797 0.91382277 0.61071914 0.94130355 0.59187675 0.91382277
		 0.60129797 0.90466261 0.60827661 0.92094743 0.61071914 0.91382277 0.23253068 0.55618584
		 0.28145567 0.56023335 0.28145567 0.56922334 0.2400481 0.56922334 0.25011766 0.55187577
		 0.28145567 0.55723667 0.33039582 0.55618584 0.32286334 0.56922334 0.28145567 0.58901924
		 0.23544192 0.58667082 0.21895219 0.53579301 0.23192637 0.53579301 0.31282768 0.55187577
		 0.32286334 0.58901924 0.28145567 0.62443358 0.24073491 0.6247372 0.21586142 0.52387989
		 0.22321284 0.5197103 0.25984824 0.55187577 0.24490047 0.53579301 0.33112082 0.53579301
		 0.34409484 0.53579301 0.32286334 0.62443358 0.28145567 0.65810269 0.2358418 0.66146803
		 0.22899289 0.6256482 0.22851291 0.59490913 0.23508236 0.52387989 0.30309701 0.55187577
		 0.31814665 0.53579301 0.33993617 0.5197103 0.34726116 0.52387989 0.32286334 0.65810269
		 0.28145567 0.67266339 0.24040976 0.67266339 0.22920343 0.65638733 0.22892474 0.62788749
		 0.22594187 0.59608346 0.32804015 0.52387989 0.32286334 0.67266339 0.10151128 0.60570252
		 0.14784269 0.60335445 0.14748104 0.62315041 0.10607345 0.62315041 0.10829936 0.56763625
		 0.14892782 0.56794 0.188979 0.60335445 0.1888887 0.62315041 0.14748104 0.63214016
		 0.099049285 0.63618743 0.10497906 0.53090543 0.1496513 0.534271 0.18925035 0.56794
		 0.093004428 0.5974648 0.093940757 0.56672549 0.19612496 0.63618743 0.14748104 0.6351372
		 0.11770904 0.64049768 0.10824364 0.51971024 0.14892782 0.51971024 0.18943126 0.534271
		 0.095146365 0.53598624 0.089280106 0.59629047 0.092469119 0.56448609 0.17773038 0.64049768
		 0.10259363 0.65658045 0.089011215 0.65658045 0.18925035 0.51971024 0.092212498 0.53395551
		 0.20786041 0.65658045 0.19427808 0.65658045 0.12789591 0.64049768 0.11617605 0.65658045
		 0.096753225 0.67266321 0.088206321 0.66849375 0.090501763 0.56019747 0.088391468
		 0.54024774 0.20972613 0.66849375 0.2015506 0.67266321 0.16754359 0.64049768 0.18069558
		 0.65658045 0.10832845 0.66849375 0.18960415 0.66849375 0.91331077 0.92381477 0.91138083
		 0.93932021 0.89529806 0.92277253 0.89529806 0.90919018 0.8792153 0.91549999 0.88338494
		 0.90732449 0.91138083 0.91193527 0.89529806 0.90466273 0.83828735 0.91948378 0.84021682
		 0.90466243 0.85629964 0.92285371 0.85629964 0.93582773 0.8723824 0.93156689 0.86821288
		 0.93891859 0.84021682 0.93143904 0.85629964 0.94015223 0.79928875 0.94025409 0.79735929
		 0.92544508 0.81537151 0.90898693 0.81537151 0.92196095 0.79928875 0.91347748 0.81537151
		 0.90466243 0.82728481 0.90582073 0.83145428 0.9131459 0.95279205 0.90043592 0.95279205
		 0.70172024 0.9744091 0.70172024 0.9744091 0.9006713 0.93415636 0.89972973 0.93415636
		 0.70172024 0.95279205 0.50300455 0.9744091 0.50276917 0.99800801 0.70172024 0.99800801
		 0.89437973 0.9213571 0.89756072 0.9213571 0.70172024 0.93415636 0.50371075 0.99800801
		 0.50906074 0.91724855 0.89293677 0.91724855 0.70172024 0.9213571 0.50587976 0.91724855
		 0.51050365 0.76409352 0.50300449 0.76409352 0.70172 0.74247611 0.70172 0.74247611
		 0.50276923 0.78272873 0.50371021 0.78272873 0.70172 0.76409352 0.90043551 0.74247611
		 0.90067077 0.71887738 0.70172 0.71887738 0.5090608 0.79552865 0.50587982 0.79552865
		 0.70172 0.78272873 0.89972979 0.71887738 0.8943792 0.79963702 0.51050311 0.79963702
		 0.70172 0.79552865 0.89756078 0.79963702 0.89293689 0.9487772 0.90466267 0.94879866
		 0.93519294 0.94158196 0.9289009 0.94307798 0.90895146 0.50646794 0.96857804 0.48747599
		 0.97215158 0.49865979 0.9591921 0.5118891 0.95936078 0.52593869 0.96194392 0.52523792
		 0.96000922 0.51369619 0.95509928 0.52403039 0.95694494 0.51369619 0.9446013 0.52293462
		 0.94506288 0.50336182 0.95424974 0.50445759 0.94438893 0.51369619 0.91667473 0.52256924
		 0.91667473 0.50482297 0.91667473 0.51369619 0.88919395 0.52026886 0.89631844 0.50712335
		 0.89631844 0.46212071 0.76667404 0.44265011 0.7606591 0.4433552 0.75674456 0.45669967
		 0.75644696 0.4445771 0.75322092 0.45489246 0.75177985 0.48111278 0.76893634 0.46992376
		 0.755243 0.44568661 0.74156451 0.45489246 0.7412039 0.44605646 0.71325171 0.45489246
		 0.71325171 0.46520784 0.75036472 0.46409833 0.74085015 0.44834712 0.69289511 0.45489246
		 0.68577057 0.46372786 0.71325171 0.4614372 0.69289511 0.71414417 0.97455162 0.70380968
		 0.97544134 0.70490563 0.96128863 0.71414417 0.96106637 0.70527112 0.93214357 0.71414417
		 0.93214357 0.72447807 0.97266662 0.72338277 0.96059465 0.70757169 0.91178757 0.71414417
		 0.90466243 0.72301728 0.93214357 0.72071671 0.91178757 0.74141061 0.97077578 0.73109508
		 0.96928179 0.73220491 0.95974791 0.74141061 0.96012145 0.73257476 0.93214267 0.74141061
		 0.93214267 0.75172609 0.97224373 0.75061631 0.9604885 0.73486555 0.91178638 0.74141061
		 0.90466177;
	setAttr ".uvst[0].uvsp[750:797]" 0.75024629 0.93214267 0.7479555 0.91178638
		 0.60126656 0.6939857 0.60126656 0.88029248 0.58834887 0.88104916 0.58834887 0.6939857
		 0.58388484 0.88520229 0.58388484 0.6939857 0.60126656 0.50767893 0.58834887 0.5069223
		 0.58388484 0.50276917 0.52333647 0.69398612 0.52333647 0.50767905 0.53625429 0.50692266
		 0.53625429 0.69398612 0.54071832 0.50276923 0.54071832 0.69398612 0.52333647 0.88029319
		 0.53625429 0.88104951 0.54071832 0.88520294 0.63020653 0.90466243 0.64040834 0.90466243
		 0.63873446 0.91525382 0.63020653 0.91525382 0.63817644 0.94702667 0.63020653 0.94702667
		 0.62000477 0.90466243 0.62167865 0.91525382 0.63611025 0.9705618 0.63020653 0.97879952
		 0.62223655 0.94702667 0.62430286 0.9705618 0.65749186 0.97879928 0.64729011 0.97879928
		 0.64896393 0.96820819 0.65749186 0.96820819 0.64952189 0.93643552 0.65749186 0.93643552
		 0.66769361 0.97879928 0.6660198 0.96820819 0.65158814 0.91290009 0.65749186 0.90466267
		 0.66546178 0.93643552 0.66339552 0.91290009 0.9732371 0.90466273 0.97130716 0.91395676
		 0.95522439 0.9325881 0.95522439 0.92037076;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 474 ".vt";
	setAttr ".vt[0:165]"  -0.44307956 -0.50951612 0.43983975 0.44321617 -0.50951612 0.43900779
		 -0.41309309 0.44395089 0.42196417 0.37499967 0.41347334 0.37499967 -0.38491088 0.44395083 -0.41783804
		 0.37991312 0.4134734 -0.3749997 -0.43861267 -0.50951612 -0.44409308 0.4405342 -0.50951606 -0.43937927
		 0.3749997 -0.21216719 0.3749997 -0.4167141 -0.23343512 0.42204043 -0.41631615 -0.23343511 -0.4174566
		 0.37581858 -0.21216716 -0.3749997 -0.41160232 -0.53107208 -0.20705935 0.41436929 -0.53107202 -0.20027149
		 0.41823134 -0.53107202 0.19973657 -0.41803461 -0.53107208 0.20093456 -0.17736912 -0.54855007 -0.48998943
		 0.18169254 -0.54855007 -0.47938332 0.18169257 -0.54854995 -0.25809717 -0.1773691 -0.54855007 -0.26870319
		 -0.19568315 -0.54855001 0.48041946 0.19599046 -0.54855001 0.47854751 -0.19568315 -0.54854995 0.25913325
		 0.19599049 -0.54855013 0.25726137 0.56371063 -0.80208915 -0.53563625 0.56371063 -0.80208915 -0.37172064
		 0.38147882 -0.8020891 -0.37172058 0.38147885 -0.8020891 -0.53563631 -0.53680927 -0.8020891 -0.60162967
		 -0.53680927 -0.8020891 -0.43771392 -0.35457745 -0.8020891 -0.60162967 -0.35457745 -0.8020891 -0.43771392
		 -0.59404141 -0.8020891 0.54208332 -0.59404141 -0.8020891 0.37816745 -0.41997093 -0.8020891 0.37816745
		 -0.41997096 -0.8020891 0.54208326 0.59595358 -0.80208915 0.53043586 0.59595364 -0.8020891 0.36652023
		 0.4218832 -0.8020891 0.53043592 0.4218832 -0.80208915 0.3665202 -1.79962909 0.51350099 1.79962897
		 1.79962885 0.51350093 1.79962885 1.79962909 0.51350099 -1.79962897 -1.79962897 0.51350099 -1.79962897
		 -1.74478161 0.92299104 1.74478161 1.74478149 0.92299098 1.74478149 1.74478149 0.92299086 -1.74478149
		 -1.74478161 0.92299104 -1.74478161 -1.24874139 1.39188814 1.24874139 1.24874139 1.39188814 1.24874139
		 1.24874151 1.39188826 -1.24874151 -1.24874151 1.39188826 -1.24874151 -0.26171431 1.9046011 0.26171434
		 0.26171431 1.9046011 0.26171434 0.26171437 1.90460134 -0.26171434 -0.26171434 1.90460122 -0.26171437
		 0.66920465 0.55071938 -0.66920465 0.66920459 0.55071932 0.66920459 -0.66920453 0.55071926 0.66920453
		 -0.66920465 0.55071938 -0.66920465 -0.39262477 0.57934207 0.39344367 0.39344367 0.57934195 0.39344367
		 0.50410753 0.5858168 0.50410753 -0.50410753 0.58581668 0.50410753 0.39426258 0.57934189 -0.39344367
		 0.50410753 0.5858168 -0.50410753 -0.38853022 0.57934195 -0.39344367 -0.50410753 0.5858168 -0.50410753
		 -0.50274974 -0.14819214 0.40726632 -0.5270853 -0.14819212 -0.36140645 -0.47554141 0.41632682 0.40680858
		 -0.50052845 0.41632682 -0.36628902 -0.78734922 -0.10863711 0.10192268 -0.79388863 -0.10863711 -0.07643339
		 -0.59296674 0.34070665 0.10180347 -0.61989552 0.34070656 -0.077267811 -0.55432838 0.091707617 0.37661168
		 -0.58557844 0.33674181 0.37661171 -0.56061721 0.33132321 0.15263402 -0.55321842 0.0906239 0.15263404
		 -0.54795122 0.33669943 -0.37680197 -0.51336247 0.091749974 -0.37262988 -0.54845607 0.090666272 -0.14931558
		 -0.56205416 0.33128086 -0.15014997 -0.42583132 0.14313056 0.35535052 -0.43211228 0.31046283 0.35535049
		 -0.42525801 0.3104628 0.17874539 -0.41915604 0.14313048 0.1787454 -0.42487511 0.31016642 -0.35608137
		 -0.41816908 0.1434271 -0.35548538 -0.41810945 0.14342703 -0.17910895 -0.42457718 0.31016648 -0.17922817
		 0.016184259 0.16727212 0.3317242 0.016184259 0.28632131 0.3317242 0.016184259 0.28632137 0.20478836
		 0.016184257 0.16727206 0.20478836 0.016184282 0.28607038 -0.33145654 0.016184282 0.16752321 -0.33145651
		 0.01618428 0.16752313 -0.20505601 0.01618428 0.28607035 -0.20505601 -1.54699159 0.47141272 -1.54699147
		 1.54699147 0.47141272 -1.54699147 1.54699159 0.47141272 1.54699147 -1.54699147 0.47141278 1.54699147
		 -1.69410241 0.23203589 -1.69410229 1.69410229 0.23203589 -1.69410229 -1.77359021 0.22881715 -1.77359009
		 1.77359033 0.22881711 -1.77358985 1.69410241 0.23203595 1.69410241 1.77359033 0.22881714 1.77359021
		 -1.69410229 0.23203589 1.69410229 -1.77359045 0.22881714 1.77358997 -0.077231288 1.88467777 0.077231295
		 0.077231288 1.88467765 0.077231288 0.077231295 1.88467777 -0.077231295 -0.077231295 1.88467789 -0.077231295
		 -0.053465508 1.38378954 0.053465508 0.053465508 1.38378954 0.053465508 0.053465508 1.38378954 -0.053465508
		 -0.053465508 1.38378954 -0.053465508 0.37499973 -0.39144477 0.37499973 2.3761988e-014 -0.21216719 0.49999964
		 1.6136307e-013 1.3091892 0.072178438 -0.072178438 1.3091892 3.6455227e-015 0.072178438 1.3091892 3.6455227e-015
		 1.6136307e-013 1.3091892 -0.072178438 0.0032756499 -0.21216725 -0.49999961 -0.37499973 -0.39144477 -0.37499973
		 0.3749997 -0.39144483 -0.3749997 -9.3132835e-010 -0.47286123 -0.49999961 -9.1038288e-015 -0.49999997 -0.15371351
		 -0.37499973 -0.49999997 -2.4704866e-010 0.3749997 -0.5 -6.9849199e-010 4.9639126e-010 -0.5 0.15371349
		 0.49999964 -0.47286117 -1.6268475e-016 0.49999961 -0.21216725 -9.3132152e-010 -0.49999964 -0.47286117 -2.8048619e-010
		 -0.49713674 -0.30221143 0.0036407507 -0.36877948 0.11130521 0.50303775 0.3749997 0.10855516 0.3749997
		 6.8424866e-014 0.4134734 0.49999961 -0.83031726 -0.14129592 0.014592399 -0.73712528 0.11224181 -0.039569676
		 -0.72086185 0.11224181 0.061472971 -0.6126343 0.34171915 0.014115591 0.019653896 0.41347334 -0.49999958
		 -0.35484082 0.11130521 -0.49623308 0.37827539 0.10855516 -0.3749997 0.49999964 0.4134734 1.6767035e-015
		 -8.6263463e-010 -0.50000006 -0.46311864 -0.14661749 -0.54855001 -0.37934631 0.15094094 -0.54854995 -0.36874026
		 -8.8817842e-015 -0.49999997 -0.24183238 0.52195376 -0.54855007 -0.28062138 0.52661103 -0.54854995 0.2797856
		 -1.064915e-009 -0.49999997 0.46311861 0.16661608 -0.54855001 0.36790445 -0.16630876 -0.54855001 0.36977634
		 7.4250661e-010 -0.5 0.24183239 -0.52630371 -0.54854995 0.28165749 -0.51763034 -0.54855001 -0.29122743
		 -0.26962397 -0.54854995 -0.52687043 0.27394742 -0.54854995 -0.51626438 0.61267668 -0.83985013 -0.46632886
		 0.48967019 -0.83985019 -0.57697189 0.48967019 -0.83985019 -0.35568577;
	setAttr ".vt[166:331]" 0.36666378 -0.83985013 -0.46632886 0.27394742 -0.54854995 -0.22121611
		 -0.26962397 -0.54854995 -0.23182216 -0.58241266 -0.83985013 -0.54057133 -0.45940611 -0.83985019 -0.42992815
		 -0.45940611 -0.83985019 -0.65121436 -0.33639964 -0.83985019 -0.54057127 0.28411362 -0.54854995 0.5154286
		 -0.28380626 -0.54855001 0.51730049 -0.64496243 -0.83985013 0.47358161 -0.52746481 -0.83985019 0.5842247
		 -0.52746487 -0.83985013 0.36293849 -0.40996736 -0.83985007 0.47358155 -0.28380629 -0.54854995 0.22225221
		 0.28411362 -0.54854995 0.22038032 0.64711374 -0.83985013 0.46047837 0.52961612 -0.83985019 0.34983528
		 0.52961612 -0.83985019 0.57112139 0.41211864 -0.83985013 0.46047837 0.54681414 -0.6942001 -0.52817762
		 0.54681408 -0.69420016 -0.30689144 0.30080119 -0.69420016 -0.30689144 0.30080119 -0.69420016 -0.52817756
		 -0.52952039 -0.69420016 -0.34931567 -0.52952045 -0.6942001 -0.57060194 -0.28350744 -0.69420016 -0.57060188
		 -0.28350741 -0.69420016 -0.34931567 -0.56605005 -0.69420016 0.53232205 -0.56605005 -0.69420016 0.31103581
		 -0.33105513 -0.69420022 0.31103584 -0.3310551 -0.69420016 0.53232205 0.56727952 -0.6942001 0.30354831
		 0.56727952 -0.6942001 0.52483451 0.33228439 -0.69420016 0.52483445 0.33228442 -0.6942001 0.30354831
		 9.7721709e-010 0.57934201 0.52459162 -0.44877562 0.59067655 0.44877562 0.44877562 0.59067655 0.44877562
		 9.2292256e-014 0.58581674 0.6721434 0.52459162 0.57934201 2.2665894e-015 0.44877559 0.59067649 -0.44877559
		 0.6721434 0.58581674 2.4015447e-015 0.0032756485 0.57934201 -0.52459162 -0.44877559 0.59067649 -0.44877559
		 -1.2518723e-009 0.58581674 -0.6721434 -0.52131593 0.57934195 9.7102915e-010 -0.67214334 0.58581668 1.2519672e-009
		 -4.2857859e-009 0.51350093 2.39950514 -1.80176067 0.70927215 1.80176067 1.80176079 0.70927221 1.80176079
		 -4.2565431e-009 0.92299098 2.32637572 2.39950538 0.51350099 4.7291913e-009 1.80176067 0.70927215 -1.80176067
		 2.32637572 0.92299098 1.2160609e-008 -4.4693413e-009 0.51350093 -2.39950514 -1.80176067 0.70927215 -1.80176067
		 -4.3330877e-009 0.92299092 -2.32637548 -2.39950514 0.51350093 4.4694275e-009 -2.32637572 0.92299098 1.7958337e-015
		 -1.57384455 1.14560294 1.57384455 1.57384443 1.1456027 1.57384443 -3.0237768e-009 1.39188814 1.66498876
		 1.57384455 1.14560294 -1.57384455 1.66498876 1.39188826 7.8100477e-009 -1.57384455 1.14560294 -1.57384455
		 6.2769647e-009 1.39188826 -1.66498876 -1.66498876 1.39188826 6.0281052e-015 -0.72926486 1.67662692 0.72926486
		 0.72926491 1.67662704 0.72926491 -6.3302191e-010 1.90460122 0.34895244 0.7292648 1.67662668 -0.7292648
		 0.34895241 1.9046011 -8.5198604e-010 -0.72926486 1.67662692 -0.72926486 6.6651518e-010 1.90460122 -0.34895244
		 -0.34895244 1.90460134 6.499814e-010 0.89227289 0.55071944 -3.8530894e-009 1.10916376 0.52804464 1.10916376
		 1.10916388 0.5280447 -1.10916388 2.062655449 0.47141284 1.3896759e-009 9.0291171e-014 0.55071932 0.89227271
		 -1.10916376 0.52804464 1.10916376 -7.4586293e-009 0.47141278 2.06265521 -0.89227283 0.55071944 2.1222309e-015
		 -1.10916376 0.52804464 -1.10916376 -2.062655449 0.47141284 -4.1810182e-016 -1.6618974e-009 0.55071938 -0.89227277
		 -3.8419135e-009 0.47141278 -2.06265521 -0.37172407 0.54533821 0.3749997 0.37499973 0.54533827 0.37499973
		 0.52255154 0.57123721 0.52255154 -0.52255154 0.57123721 0.52255154 0.37827539 0.54533827 -0.37499973
		 0.52255148 0.57123715 -0.52255148 -0.35534585 0.54533821 -0.3749997 -0.52255148 0.57123715 -0.52255148
		 -0.47648337 0.50901765 0.0031639438 -0.49335614 -0.15882729 -0.35910586 -0.47946522 -0.15882735 0.38775501
		 -0.53661072 -0.22817053 0.023409022 -0.47321185 0.39793807 0.3872782 -0.47573605 0.1398357 0.50582725
		 -0.47395822 0.39793807 -0.36148986 -0.48400116 0.47511187 0.020548178 -0.49820429 0.1398357 -0.46585521
		 -0.68539536 -0.18226337 -0.18702456 -0.67550147 -0.18226331 0.22327182 0.080707237 0.22679667 0.35393792
		 0.080707245 0.14643851 0.26825628 0.080707245 0.30715492 0.26825628 0.080707237 0.22679667 0.18257459
		 -0.52059144 0.4370909 0.22279501 -0.54698962 0.43709087 -0.19036223 0.080707267 0.22679679 -0.3535766
		 0.080707259 0.30681607 -0.26825625 0.080707259 0.14677736 -0.26825625 0.080707259 0.22679673 -0.18293592
		 -0.54151845 -0.0063257623 0.4163821 -0.54089856 0.35934317 0.41638213 -0.57212597 0.21476659 0.41394129
		 -0.57813936 0.33766896 0.13939612 -0.57631856 0.37451038 0.26462287 -0.67058241 -0.010660614 0.13939609
		 -0.55474526 0.21043174 0.11530443 -0.55055261 0.050687961 0.26462287 -0.53513283 0.35934317 -0.39638162
		 -0.53089917 -0.0063257026 -0.39161351 -0.52655715 0.21476661 -0.41221306 -0.67246491 -0.01066061 -0.12499336
		 -0.52689373 0.050744444 -0.26055554 -0.59750366 0.33766887 -0.12594695 -0.55935496 0.21043174 -0.11223561
		 -0.55901825 0.37445384 -0.26389313 -0.53515887 0.13320664 0.35958812 -0.56028283 0.32038671 0.35958806
		 -0.43009922 0.22679667 0.38478464 -0.53286576 0.32038677 0.16725783 -0.42971706 0.33835164 0.26704794
		 -0.50845808 0.13320659 0.16725786 -0.42107961 0.22679667 0.14931121 -0.42146176 0.11524176 0.26704794
		 -0.53133422 0.32021737 -0.36359584 -0.5045101 0.13337609 -0.36121184 -0.42155191 0.22679672 -0.38521919
		 -0.50427169 0.13337609 -0.16762818 -0.41704145 0.11563714 -0.26723757 -0.53014249 0.32021737 -0.16810498
		 -0.42131355 0.22679669 -0.14973277 -0.42582396 0.33795631 -0.26771438 -0.16816713 0.14643851 0.35393795
		 -0.16816713 0.30715492 0.35393795 -0.16816713 0.30715495 0.1825746 -0.16816711 0.14643845 0.18257459
		 -0.16816711 0.30681607 -0.35357657 -0.16816711 0.14677736 -0.35357657 -0.16816711 0.14677736 -0.18293592
		 -0.16816711 0.30681607 -0.18293592 5.8315962e-014 0.23203595 -2.25880337 1.73171473 0.19160955 -1.73171473
		 -1.73171461 0.19160947 -1.73171461 5.8002926e-014 0.22881721 -2.36478734 2.25880313 0.23203589 -5.074865e-009
		 1.73171473 0.19160955 1.73171473 2.3647871 0.22881715 -3.9733639e-009 -1.2306939e-008 0.23203595 2.25880337
		 -1.73171461 0.19160949 1.73171461 -1.7297522e-008 0.22881721 2.36478734;
	setAttr ".vt[332:473]" -2.25880313 0.23203589 4.2073474e-009 -2.3647871 0.22881715 4.4047579e-009
		 1.68724954 0.3490234 -1.6872493 -1.68724966 0.34902346 -1.68724942 -1.79323387 0.34473187 -1.79323363
		 1.79323375 0.34473181 -1.79323351 1.68724954 0.3490234 1.6872493 1.79323363 0.34473178 1.79323339
		 -1.68724954 0.34902337 1.6872493 -1.79323387 0.34473187 1.79323363 -0.092389874 1.98059249 0.092389874
		 0.092389874 1.98059249 0.092389874 1.9862424e-010 1.88467765 0.10297506 0.092389874 1.98059249 -0.092389874
		 0.10297506 1.88467765 -5.8737282e-010 -0.092389874 1.98059249 -0.092389874 6.7513703e-012 1.88467777 -0.10297506
		 -0.10297506 1.88467777 5.5803492e-015 -0.072178438 1.59693348 0.072178438 0.072178438 1.59693348 0.072178438
		 0.072178431 1.59693336 -0.072178431 -0.072178431 1.59693336 -0.072178431 -1.0372373e-009 -0.47286117 0.49999964
		 -0.37499973 -0.39144477 0.37499973 1.6044471e-010 -0.39144477 0.49999964 1.5229038e-013 1.21327436 3.4445287e-015
		 9.4246984e-016 -0.39144477 -0.49999964 2.7653357e-010 -0.5 2.49923e-010 0.49999964 -0.39144477 -1.1692813e-016
		 -0.49999961 -0.39144483 1.5891727e-010 9.3136765e-010 0.10855516 0.49999961 -0.75695825 0.09587682 0.012516169
		 0.013102604 0.10855517 -0.49999967 0.49999961 0.10855516 -9.3132102e-010 -9.1038288e-015 -0.49999997 -0.35247552
		 0.49999961 -0.5 -9.313223e-010 6.6618822e-011 -0.49999997 0.35247552 -0.49999961 -0.5 -9.3594466e-011
		 -9.313309e-010 -0.50000006 -0.49999967 0.51162434 -0.88840026 -0.4825936 -3.8176057e-010 -0.5 -0.20495135
		 -0.47703686 -0.88840026 -0.56744212 4.0527015e-010 -0.5 0.49999961 -0.55376899 -0.8884002 0.49088249
		 6.1542915e-010 -0.5 0.20495135 0.55622756 -0.88840026 0.4759073 0.58781624 -0.69420016 -0.41753453
		 0.42380765 -0.69420016 -0.27001041 0.25979906 -0.6942001 -0.41753453 0.42380765 -0.69420016 -0.56505859
		 -0.57052261 -0.6942001 -0.45995882 -0.40651393 -0.6942001 -0.60748297 -0.24250528 -0.69420016 -0.45995879
		 -0.40651393 -0.69420016 -0.31243464 -0.60521591 -0.69420016 0.42167893 -0.44855261 -0.69420016 0.27415478
		 -0.29188928 -0.6942001 0.42167896 -0.44855261 -0.6942001 0.5692032 0.60644537 -0.6942001 0.41419142
		 0.44978195 -0.6942001 0.56171554 0.29311857 -0.6942001 0.4141914 0.44978195 -0.6942001 0.26666728
		 1.1146382e-009 0.59067649 0.59836745 0.59836745 0.59067649 -1.114544e-009 9.1438962e-014 0.59067655 -0.59836751
		 -0.59836751 0.59067655 2.3503877e-015 -4.404368e-009 0.70927221 2.4023478 2.40234756 0.70927215 4.5553641e-009
		 1.0541156e-013 0.70927221 -2.4023478 -2.40234756 0.70927215 4.4747228e-009 -7.7412246e-009 1.14560294 2.098459482
		 2.098459482 1.14560294 1.2680928e-008 7.89107e-009 1.14560294 -2.098459482 -2.098459482 1.14560294 4.0966884e-015
		 -1.7684458e-009 1.67662692 0.97235304 0.97235316 1.67662716 1.4601937e-009 3.663432e-009 1.67662704 -0.9723531
		 -0.9723531 1.67662704 7.0581832e-015 1.47888529 0.5280447 -4.4504471e-009 8.7882677e-014 0.5280447 1.47888529
		 -1.47888505 0.52804458 1.7942432e-015 -2.7545501e-009 0.52804464 -1.47888517 9.314044e-010 0.54533827 0.49999964
		 9.1779706e-014 0.57123721 0.69673538 0.49999961 0.54533821 -9.3131997e-010 0.69673538 0.57123721 -1.4082344e-009
		 0.013102595 0.54533821 -0.49999958 9.1526023e-014 0.57123721 -0.69673538 -0.48689702 0.54533821 9.069186e-010
		 -0.69673538 0.57123721 2.2912733e-015 -0.48854828 -0.25162151 0.014563 -0.4751187 0.11955534 0.51215231
		 -0.47144744 0.49073231 0.012655771 -0.48487696 0.11955542 -0.48493358 -0.7037009 -0.2203535 0.020821085
		 0.16366535 0.22679667 0.26825625 -0.52635598 0.44678581 0.018913856 0.16366538 0.22679673 -0.26825625
		 -0.52734977 0.17867617 0.46254644 -0.55176365 0.40800586 0.2778891 -0.63821959 0.16133671 0.093231767
		 -0.61380571 -0.067993052 0.27788907 -0.51602125 0.17867613 -0.43875217 -0.60757595 -0.067993052 -0.25782663
		 -0.65197909 0.16133673 -0.080715604 -0.56042433 0.40800589 -0.26164109 -0.55223066 0.22679667 0.39164314
		 -0.55070192 0.35158345 0.26342294 -0.51615214 0.22679673 0.13520281 -0.51768076 0.10200989 0.26342297
		 -0.51804137 0.22679676 -0.39482671 -0.49999961 0.10223582 -0.26418155 -0.517088 0.22679672 -0.1354437
		 -0.53512967 0.35135764 -0.26608881 -0.16816711 0.22679667 0.38249847 -0.16816711 0.33394095 0.26825625
		 -0.16816711 0.22679667 0.15401402 -0.16816711 0.11965238 0.26825625 -0.16816713 0.22679679 -0.38201669
		 -0.16816711 0.12010425 -0.26825625 -0.16816713 0.22679679 -0.15449582 -0.16816711 0.33348921 -0.26825625
		 -4.3007065e-009 0.19160949 -2.30895281 2.30895305 0.19160955 -4.6899551e-010 -1.6872386e-008 0.19160955 2.30895305
		 -2.30895281 0.19160949 4.3007584e-009 -4.1902606e-009 0.3490234 -2.24966598 -4.4534749e-009 0.34473181 -2.3909781
		 2.24966598 0.3490234 -4.8462834e-009 2.3909781 0.34473181 -3.1915413e-009 -8.1087475e-009 0.3490234 2.24966598
		 -8.6377625e-009 0.34473181 2.3909781 -2.24966598 0.3490234 4.190329e-009 -2.3909781 0.34473181 4.4535429e-009
		 -2.2120017e-010 1.98059261 0.12318651 0.1231865 1.98059249 -7.1158679e-010 8.1226345e-012 1.98059249 -0.1231865
		 -0.12318651 1.98059261 6.2940736e-015 5.6795497e-012 1.59693348 0.096237913 0.096237913 1.59693336 -6.7319472e-010
		 5.637644e-012 1.59693348 -0.096237913 -0.096237913 1.59693336 1.7926167e-010;
	setAttr -s 944 ".ed";
	setAttr ".ed[0:165]"  0 354 1 354 356 1 356 355 1 355 0 1 354 1 1 1 120 1
		 120 356 1 120 8 1 8 121 1 121 356 1 121 9 1 9 355 1 116 122 1 122 357 1 357 123 1
		 123 116 1 122 117 1 117 124 1 124 357 1 124 118 1 118 125 1 125 357 1 125 119 1 119 123 1
		 10 126 1 126 358 1 358 127 1 127 10 1 126 11 1 11 128 1 128 358 1 128 7 1 7 129 1
		 129 358 1 129 6 1 6 127 1 12 130 1 130 359 1 359 131 1 131 12 1 130 13 1 13 132 1
		 132 359 1 132 14 1 14 133 1 133 359 1 133 15 1 15 131 1 1 134 1 134 360 1 360 120 1
		 134 7 1 128 360 1 11 135 1 135 360 1 135 8 1 6 136 1 136 361 1 361 127 1 136 0 1
		 355 361 1 9 137 1 137 361 1 137 10 1 121 362 1 362 138 1 138 9 1 8 139 1 139 362 1
		 139 3 1 3 140 1 140 362 1 140 2 1 2 138 1 73 141 1 141 363 1 363 142 1 142 73 1 141 72 1
		 72 143 1 143 363 1 143 74 1 74 144 1 144 363 1 144 75 1 75 142 1 4 145 1 145 364 1
		 364 146 1 146 4 1 145 5 1 5 147 1 147 364 1 147 11 1 126 364 1 10 146 1 135 365 1
		 365 139 1 147 365 1 5 148 1 148 365 1 148 3 1 16 149 1 149 366 1 366 150 1 150 16 1
		 149 17 1 17 151 1 151 366 1 151 18 1 18 152 1 152 366 1 152 19 1 19 150 1 134 367 1
		 367 153 1 153 7 1 1 154 1 154 367 1 154 14 1 132 367 1 13 153 1 21 155 1 155 368 1
		 368 156 1 156 21 1 155 20 1 20 157 1 157 368 1 157 22 1 22 158 1 158 368 1 158 23 1
		 23 156 1 136 369 1 369 159 1 159 0 1 6 160 1 160 369 1 160 12 1 131 369 1 15 159 1
		 129 370 1 370 161 1 161 6 1 7 162 1 162 370 1 162 17 1 149 370 1 16 161 1 24 163 1
		 163 371 1 371 164 1 164 24 1 163 25 1 25 165 1 165 371 1 165 26 1 26 166 1 166 371 1
		 166 27 1 27 164 1 130 372 1 372 167 1 167 13 1 12 168 1;
	setAttr ".ed[166:331]" 168 372 1 168 19 1 152 372 1 18 167 1 29 169 1 169 373 1
		 373 170 1 170 29 1 169 28 1 28 171 1 171 373 1 171 30 1 30 172 1 172 373 1 172 31 1
		 31 170 1 354 374 1 374 173 1 173 1 1 0 174 1 174 374 1 174 20 1 155 374 1 21 173 1
		 32 175 1 175 375 1 375 176 1 176 32 1 175 33 1 33 177 1 177 375 1 177 34 1 34 178 1
		 178 375 1 178 35 1 35 176 1 133 376 1 376 179 1 179 15 1 14 180 1 180 376 1 180 23 1
		 158 376 1 22 179 1 37 181 1 181 377 1 377 182 1 182 37 1 181 36 1 36 183 1 183 377 1
		 183 38 1 38 184 1 184 377 1 184 39 1 39 182 1 153 378 1 378 185 1 185 7 1 13 186 1
		 186 378 1 186 25 1 163 378 1 24 185 1 167 379 1 379 186 1 18 187 1 187 379 1 187 26 1
		 165 379 1 151 380 1 380 187 1 17 188 1 188 380 1 188 27 1 166 380 1 162 381 1 381 188 1
		 185 381 1 164 381 1 160 382 1 382 189 1 189 12 1 6 190 1 190 382 1 190 28 1 169 382 1
		 29 189 1 161 383 1 383 190 1 16 191 1 191 383 1 191 30 1 171 383 1 150 384 1 384 191 1
		 19 192 1 192 384 1 192 31 1 172 384 1 168 385 1 385 192 1 189 385 1 170 385 1 159 386 1
		 386 193 1 193 0 1 15 194 1 194 386 1 194 33 1 175 386 1 32 193 1 179 387 1 387 194 1
		 22 195 1 195 387 1 195 34 1 177 387 1 157 388 1 388 195 1 20 196 1 196 388 1 196 35 1
		 178 388 1 174 389 1 389 196 1 193 389 1 176 389 1 154 390 1 390 197 1 197 14 1 1 198 1
		 198 390 1 198 36 1 181 390 1 37 197 1 173 391 1 391 198 1 21 199 1 199 391 1 199 38 1
		 183 391 1 156 392 1 392 199 1 23 200 1 200 392 1 200 39 1 184 392 1 180 393 1 393 200 1
		 197 393 1 182 393 1 60 201 1 201 394 1 394 202 1 202 60 1 201 61 1 61 203 1 203 394 1
		 203 62 1 62 204 1 204 394 1 204 63 1 63 202 1 61 205 1 205 395 1;
	setAttr ".ed[332:497]" 395 203 1 205 64 1 64 206 1 206 395 1 206 65 1 65 207 1
		 207 395 1 207 62 1 64 208 1 208 396 1 396 206 1 208 66 1 66 209 1 209 396 1 209 67 1
		 67 210 1 210 396 1 210 65 1 66 211 1 211 397 1 397 209 1 211 60 1 202 397 1 63 212 1
		 212 397 1 212 67 1 40 213 1 213 398 1 398 214 1 214 40 1 213 41 1 41 215 1 215 398 1
		 215 45 1 45 216 1 216 398 1 216 44 1 44 214 1 41 217 1 217 399 1 399 215 1 217 42 1
		 42 218 1 218 399 1 218 46 1 46 219 1 219 399 1 219 45 1 42 220 1 220 400 1 400 218 1
		 220 43 1 43 221 1 221 400 1 221 47 1 47 222 1 222 400 1 222 46 1 43 223 1 223 401 1
		 401 221 1 223 40 1 214 401 1 44 224 1 224 401 1 224 47 1 216 402 1 402 225 1 225 44 1
		 45 226 1 226 402 1 226 49 1 49 227 1 227 402 1 227 48 1 48 225 1 219 403 1 403 226 1
		 46 228 1 228 403 1 228 50 1 50 229 1 229 403 1 229 49 1 222 404 1 404 228 1 47 230 1
		 230 404 1 230 51 1 51 231 1 231 404 1 231 50 1 224 405 1 405 230 1 225 405 1 48 232 1
		 232 405 1 232 51 1 227 406 1 406 233 1 233 48 1 49 234 1 234 406 1 234 53 1 53 235 1
		 235 406 1 235 52 1 52 233 1 229 407 1 407 234 1 50 236 1 236 407 1 236 54 1 54 237 1
		 237 407 1 237 53 1 231 408 1 408 236 1 51 238 1 238 408 1 238 55 1 55 239 1 239 408 1
		 239 54 1 232 409 1 409 238 1 233 409 1 52 240 1 240 409 1 240 55 1 57 241 1 241 410 1
		 410 242 1 242 57 1 241 56 1 56 243 1 243 410 1 243 101 1 101 244 1 244 410 1 244 102 1
		 102 242 1 58 245 1 245 411 1 411 246 1 246 58 1 245 57 1 242 411 1 102 247 1 247 411 1
		 247 103 1 103 246 1 59 248 1 248 412 1 412 249 1 249 59 1 248 58 1 246 412 1 103 250 1
		 250 412 1 250 100 1 100 249 1 56 251 1 251 413 1 413 243 1 251 59 1;
	setAttr ".ed[498:663]" 249 413 1 100 252 1 252 413 1 252 101 1 140 414 1 414 253 1
		 253 2 1 3 254 1 254 414 1 254 61 1 201 414 1 60 253 1 245 415 1 415 255 1 255 57 1
		 58 256 1 256 415 1 256 63 1 204 415 1 62 255 1 148 416 1 416 254 1 5 257 1 257 416 1
		 257 64 1 205 416 1 241 417 1 417 258 1 258 56 1 255 417 1 207 417 1 65 258 1 145 418 1
		 418 257 1 4 259 1 259 418 1 259 66 1 208 418 1 251 419 1 419 260 1 260 59 1 258 419 1
		 210 419 1 67 260 1 4 261 1 261 420 1 420 259 1 261 2 1 253 420 1 211 420 1 248 421 1
		 421 256 1 260 421 1 212 421 1 137 422 1 422 262 1 262 10 1 9 263 1 263 422 1 263 68 1
		 68 264 1 264 422 1 264 69 1 69 262 1 138 423 1 423 263 1 2 265 1 265 423 1 265 70 1
		 70 266 1 266 423 1 266 68 1 261 424 1 424 265 1 4 267 1 267 424 1 267 71 1 71 268 1
		 268 424 1 268 70 1 146 425 1 425 267 1 262 425 1 69 269 1 269 425 1 269 71 1 264 426 1
		 426 270 1 270 69 1 68 271 1 271 426 1 271 72 1 141 426 1 73 270 1 92 272 1 272 427 1
		 427 273 1 273 92 1 272 93 1 93 274 1 274 427 1 274 94 1 94 275 1 275 427 1 275 95 1
		 95 273 1 268 428 1 428 276 1 276 70 1 71 277 1 277 428 1 277 75 1 144 428 1 74 276 1
		 96 278 1 278 429 1 429 279 1 279 96 1 278 97 1 97 280 1 280 429 1 280 98 1 98 281 1
		 281 429 1 281 99 1 99 279 1 266 430 1 430 282 1 282 68 1 70 283 1 283 430 1 283 77 1
		 77 284 1 284 430 1 284 76 1 76 282 1 276 431 1 431 283 1 74 285 1 285 431 1 285 78 1
		 78 286 1 286 431 1 286 77 1 143 432 1 432 285 1 72 287 1 287 432 1 287 79 1 79 288 1
		 288 432 1 288 78 1 271 433 1 433 287 1 282 433 1 76 289 1 289 433 1 289 79 1 269 434 1
		 434 290 1 290 71 1 69 291 1 291 434 1 291 81 1 81 292 1 292 434 1;
	setAttr ".ed[664:829]" 292 80 1 80 290 1 270 435 1 435 291 1 73 293 1 293 435 1
		 293 82 1 82 294 1 294 435 1 294 81 1 142 436 1 436 293 1 75 295 1 295 436 1 295 83 1
		 83 296 1 296 436 1 296 82 1 277 437 1 437 295 1 290 437 1 80 297 1 297 437 1 297 83 1
		 284 438 1 438 298 1 298 76 1 77 299 1 299 438 1 299 85 1 85 300 1 300 438 1 300 84 1
		 84 298 1 286 439 1 439 299 1 78 301 1 301 439 1 301 86 1 86 302 1 302 439 1 302 85 1
		 288 440 1 440 301 1 79 303 1 303 440 1 303 87 1 87 304 1 304 440 1 304 86 1 289 441 1
		 441 303 1 298 441 1 84 305 1 305 441 1 305 87 1 292 442 1 442 306 1 306 80 1 81 307 1
		 307 442 1 307 89 1 89 308 1 308 442 1 308 88 1 88 306 1 294 443 1 443 307 1 82 309 1
		 309 443 1 309 90 1 90 310 1 310 443 1 310 89 1 296 444 1 444 309 1 83 311 1 311 444 1
		 311 91 1 91 312 1 312 444 1 312 90 1 297 445 1 445 311 1 306 445 1 88 313 1 313 445 1
		 313 91 1 300 446 1 446 314 1 314 84 1 85 315 1 315 446 1 315 93 1 272 446 1 92 314 1
		 302 447 1 447 315 1 86 316 1 316 447 1 316 94 1 274 447 1 304 448 1 448 316 1 87 317 1
		 317 448 1 317 95 1 275 448 1 305 449 1 449 317 1 314 449 1 273 449 1 308 450 1 450 318 1
		 318 88 1 89 319 1 319 450 1 319 97 1 278 450 1 96 318 1 310 451 1 451 319 1 90 320 1
		 320 451 1 320 98 1 280 451 1 312 452 1 452 320 1 91 321 1 321 452 1 321 99 1 281 452 1
		 313 453 1 453 321 1 318 453 1 279 453 1 105 322 1 322 454 1 454 323 1 323 105 1 322 104 1
		 104 324 1 324 454 1 324 106 1 106 325 1 325 454 1 325 107 1 107 323 1 108 326 1 326 455 1
		 455 327 1 327 108 1 326 105 1 323 455 1 107 328 1 328 455 1 328 109 1 109 327 1 110 329 1
		 329 456 1 456 330 1 330 110 1 329 108 1 327 456 1 109 331 1 331 456 1;
	setAttr ".ed[830:943]" 331 111 1 111 330 1 104 332 1 332 457 1 457 324 1 332 110 1
		 330 457 1 111 333 1 333 457 1 333 106 1 252 458 1 458 334 1 334 101 1 100 335 1 335 458 1
		 335 104 1 322 458 1 105 334 1 220 459 1 459 336 1 336 43 1 42 337 1 337 459 1 337 107 1
		 325 459 1 106 336 1 244 460 1 460 338 1 338 102 1 334 460 1 326 460 1 108 338 1 217 461 1
		 461 337 1 41 339 1 339 461 1 339 109 1 328 461 1 247 462 1 462 340 1 340 103 1 338 462 1
		 329 462 1 110 340 1 213 463 1 463 339 1 40 341 1 341 463 1 341 111 1 331 463 1 250 464 1
		 464 335 1 340 464 1 332 464 1 223 465 1 465 341 1 336 465 1 333 465 1 235 466 1 466 342 1
		 342 52 1 53 343 1 343 466 1 343 113 1 113 344 1 344 466 1 344 112 1 112 342 1 237 467 1
		 467 343 1 54 345 1 345 467 1 345 114 1 114 346 1 346 467 1 346 113 1 239 468 1 468 345 1
		 55 347 1 347 468 1 347 115 1 115 348 1 348 468 1 348 114 1 240 469 1 469 347 1 342 469 1
		 112 349 1 349 469 1 349 115 1 344 470 1 470 350 1 350 112 1 113 351 1 351 470 1 351 117 1
		 122 470 1 116 350 1 346 471 1 471 351 1 114 352 1 352 471 1 352 118 1 124 471 1 348 472 1
		 472 352 1 115 353 1 353 472 1 353 119 1 125 472 1 349 473 1 473 353 1 350 473 1 123 473 1;
	setAttr -s 474 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.68956572 0.15530869 0.707358 0.00091555528
		 0.12048708 0.99270606 0.020538956 0.031891841 0.99926758 -0.70168155 0.024079103
		 0.71205789 0.68861967 0.15292825 0.70879239 0.70635092 0.045625173 0.70635092 0.70708334
		 0 0.70708334 0.077761158 -0.014893033 0.99685657 -0.59694207 -0.056306649 0.80028689
		 0.70638144 0.044587541 -0.70638144 0 0.065614797 -0.99783319 0 0.99996948 0 0.99783319
		 0.065614797 0 -0.70638144 0.044587541 -0.70638144 -0.99783319 0.065614797 0 -0.70638144
		 0.044587541 0.70638144 0 0.065614797 0.99783319 0.70638144 0.044587541 0.70638144
		 -0.62202823 -0.054078799 -0.78109074 0.074221015 -0.014191107 -0.99713129 0.020508438
		 0.033143103 -0.99923706 -0.70293283 0.025757622 -0.71074557 0.70918912 -0.00088503677
		 -0.70497757 0.70674765 0.044557024 -0.70601517 0.6893521 0.14694662 -0.7093417 0.0050050355
		 0.12384411 -0.99227881 -0.69682914 0.15637684 -0.69994199 -0.32090214 -0.33121738
		 0.88726461 -0.0043946654 -0.67332989 0.73931092 -0.00073244423 -0.99996948 -0.0006408887
		 0.12576678 -0.99203467 -0.0061037019 0.31455427 -0.28659931 0.90490431 -0.12735374
		 -0.99185157 0.00012207404 0.3180334 -0.27756584 -0.9065218 -0.00082399976 -0.66869104
		 -0.74352247 -0.32047486 -0.28418836 -0.90359205 0.99166846 0.12857448 -0.0027466659
		 0.99911499 0.041627247 -0.00057985168 0.99996948 -0.00030518509 0.0014648885 -0.99185157
		 0.12723167 -0.0039674062 -0.99978638 0.019775994 -0.00088503677 -0.99789423 -0.064363539
		 0.0028992584 0.11557359 0.00027466659 0.99328595 -0.1714835 0.0012817774 0.98516798
		 0.70708334 0 0.70708334 0.70708334 0 0.70708334 0.079989016 0.018951993 0.99661243
		 -0.56328011 0.080263682 0.82232124 -0.81005281 0.0061342204 -0.58626056 -0.99667346
		 -0.058992278 0.055726796 -0.9897458 0.089053012 0.11163671 -0.85332805 0.068727687
		 -0.51680046 -0.7828303 0.013489181 0.62205875 -0.77697074 0.067293316 0.62590408
		 -0.93078405 0.10129093 0.35120702 -0.98361158 0.1332133 0.12146367 -0.96066165 0.099154636
		 -0.25934631 -0.56813258 0.076601461 -0.81933039 0.078249454 0.017365031 -0.99676502
		 0.11200293 6.1037019e-005 -0.99368268 -0.24103519 0.0028077029 -0.97048861 0.71413314
		 0.00051881466 -0.69997251 0.71236306 -0.00094607379 -0.70177311 0.99996948 -0.0003357036
		 0.0036927396 0.99996948 0.00015259255 0.00491348 0.72997224 -0.18488114 -0.65794855
		 0.026490066 -0.76903594 -0.63859981 0.01742607 -0.99981689 -0.0033265175 0.96096683
		 -0.27600941 -0.01843318 -0.71321756 -0.2196112 -0.6656087 -0.95547348 -0.29483932
		 -0.011597034 -0.70818204 -0.30936614 0.63460189 -0.001617481 -0.82842493 0.56004518
		 0.71700186 -0.32636493 0.61589402 0.99557483 -0.093691826 -0.0041810358 0.9853816
		 0.023834955 0.16861476 0.98352003 0.038422804 -0.17661062 -0.70979947 -0.24201179
		 0.66148871 0.0029602954 -0.81301308 0.58223212 0.0010376293 -0.99996948 0.0018921476
		 -0.94644004 -0.32264167 0.010345775 0.71150851 -0.23654896 0.66161078 0.94692832
		 -0.32120731 0.011597034 0.70686972 -0.33274332 -0.62416458 -0.0012207404 -0.84899443
		 -0.52836698 -0.70607626 -0.32831812 -0.62736899 -0.99542224 -0.094882049 -0.0091250343
		 -0.983459 0.036133915 -0.17731254 -0.98706013 0.0041199988 0.16028321 0.013824885
		 -0.058992278 -0.99813837 0.080050051 0.04565569 -0.99572742 -0.061891537 0.016022217
		 -0.99792475 0.67580187 -0.019348735 -0.73677784 0.99453717 -0.095706046 -0.041077912
		 0.30759606 -0.90865809 -0.28226569 0.044404432 -0.10306101 -0.99365216 0.68425548
		 -0.10919522 0.72099978 0.053559985 -0.2285226 0.97204506 -0.65392011 -0.22946867
		 0.72087771 -0.96258432 -0.2652669 -0.055146948 -0.65541553 -0.13162634 -0.74367505
		 -0.0075685903 -0.55558944 0.83141577 -0.18659016 -0.23755607 0.95327616 0.18832973
		 -0.27811518 0.94186223 -0.690054 -0.15005951 0.70799887 -0.99157691 -0.10812708 -0.070894495
		 -0.2392346 -0.861507 -0.4477981 -0.042939544 -0.27249977 0.96118045 -0.68031859 -0.0021057772
		 -0.73287147 -0.033295695 -0.067140721 -0.99716181 0.66634113 -0.090853602 -0.74007386
		 0.96594137 -0.24243903 -0.090365306 0.66026795 -0.2487869 0.70860928 0.0020752586
		 -0.066286206 0.99777216 -0.061891537 0.011688589 0.99798578 0.065614797 0.016846217
		 0.9976806 -0.68730736 -0.0036011841 0.72634053 -0.99636829 -0.074922942 0.040223397
		 -0.38755456 -0.8755455 0.2883999 -0.056459241 -0.097720265 0.99359113 -0.69655448
		 -0.096713156 -0.71092868 -0.069490649 -0.23029268 -0.97061068 0.66289252 -0.24250008
		 -0.70830411 0.95937985 -0.27658924 0.05511643 0.66417432 -0.13962218 0.73439741 -0.0015259255
		 -0.56288338 -0.82650226 0.18738365 -0.24805444 -0.95043796 -0.1874752 -0.24063845
		 -0.95233011 0.69524217 -0.090914637 -0.71297342 0.99658191 -0.074251533 0.035828732
		 0.39390239 -0.88198495 0.25867489 0.070101015 -0.22266304 -0.97235024 0.68681908
		 -0.0077517014 0.72676778 0.058076724 -0.10431226 0.99282813 -0.6631062 -0.14584796
		 0.73412275 -0.95913571 -0.27854243 0.04916532 -0.66231269 -0.23786126 -0.71040988
		 0.99313331 0.049531542 0.10589923 0.67918944 0.095980711 -0.72762233 0.59877318 -0.04766991
		 0.79949337 -0.046418652 -0.11865596 0.99182105 -0.67302471 -0.17218544 0.71926022
		 -0.98696858 -0.15939817 -0.021851253 -0.66863 -0.070894495 -0.74016541 -0.022003844
		 0.03457747 -0.99914551 -0.99444562 0.027283547 0.10138249 -0.61006498 -0.092471085
		 0.78688926 -0.68758202 0.11502426 -0.7169103 0.030945769 0.078035831 -0.99645984
		 0.68382823 -0.028138066 -0.72908717 0.98965424 -0.1391644 -0.034150213 0.68501848
		 -0.1915952 0.70284128 0.048005614 -0.16183965 0.9856258 -0.99130225 0.068391979 -0.11218604
		 -0.68453014 0.11236915 0.72023684 -0.60753196 -0.037446212 -0.79338968 0.043702506
		 -0.12408826 -0.99130225 0.67827386 -0.18878751 -0.7101047 0.98376417 -0.17795342
		 0.021942809 0.67204809 -0.081698053 0.73595387 0.02700888 0.037232582 0.99893183
		 0.99130225 0.070711389 -0.11087374 0.60499895 -0.030762658 -0.79561752 0.68367565
		 0.10769982 0.72176278 -0.024231697 0.029847102 0.99923706 -0.67076629 -0.088229008
		 0.73638111;
	setAttr ".n[166:331]" -type "float3"  -0.98355055 -0.17950988 0.019623403 -0.67683953
		 -0.1839961 -0.71272928 -0.044129767 -0.1163976 -0.99221778 -0.651326 -0.36527604
		 0.66505933 9.1555528e-005 -0.32734153 0.94488358 3.0518509e-005 -0.97894222 0.20404676
		 -0.13205358 -0.98208565 0.13428144 0.66408277 -0.34345531 0.66408277 0.13657033 -0.98113954
		 0.13657033 -0.57542652 -0.58113348 -0.57542652 0 -0.55848873 -0.82949311 0.57542652
		 -0.58113348 -0.57542652 0.94677573 -0.3218177 -0.00024414808 0.20538957 -0.97866756
		 -0.00015259255 0.66808069 -0.33252966 -0.6656087 0.13827936 -0.98068178 -0.13827936
		 -0.57542652 -0.58113348 0.57542652 -0.82949311 -0.55848873 0 0.012237922 -0.33231604
		 -0.94308299 0.0016479995 -0.97921687 -0.20279549 -0.63185525 -0.39460433 -0.66707361
		 -0.12643819 -0.98330635 -0.1307413 0.57542652 -0.58113348 0.57542652 0 -0.55848873
		 0.82949311 -0.92388684 -0.38261056 0.0019226661 -0.19089328 -0.98159736 0.00073244423
		 0.82949311 -0.55848873 0 -0.70708334 -0.0071413312 0.70708334 0 -0.0067140721 0.99996948
		 0 0.034272287 0.99938965 -0.70662558 0.036378063 0.70662558 0.70708334 -0.0071413312
		 0.70708334 0.70662558 0.036378063 0.70662558 0.7001251 0.14011048 0.7001251 0 0.1322367
		 0.99121064 -0.7001251 0.14011048 0.7001251 0.99996948 -0.0067140721 0 0.99938965
		 0.034272287 0 0.70708334 -0.0071413312 -0.70708334 0.70662558 0.036378063 -0.70662558
		 0.7001251 0.14011048 -0.7001251 0.99121064 0.1322367 0 0 -0.0067140721 -0.99996948
		 0 0.034272287 -0.99938965 -0.70708334 -0.0071413312 -0.70708334 -0.70662558 0.036378063
		 -0.70662558 -0.7001251 0.14011048 -0.7001251 0 0.1322367 -0.99121064 -0.99996948
		 -0.0067140721 0 -0.99938965 0.034272287 0 -0.99121064 0.1322367 0 0 0.26606035 0.96392715
		 -0.67860955 0.28095341 0.67860955 0.67860955 0.28095341 0.67860955 0.64439833 0.41160312
		 0.64439833 0 0.3917661 0.9200415 -0.64439833 0.41160312 0.64439833 0.96392715 0.26606035
		 0 0.67860955 0.28095341 -0.67860955 0.64439833 0.41160312 -0.64439833 0.9200415 0.3917661
		 0 0 0.26606035 -0.96392715 -0.67860955 0.28095341 -0.67860955 -0.64439833 0.41160312
		 -0.64439833 0 0.3917661 -0.9200415 -0.96392715 0.26606035 0 -0.9200415 0.3917661
		 0 0 0.47117525 0.88201547 -0.61519212 0.49296549 0.61519212 0.61519212 0.49296549
		 0.61519212 0.59920043 0.5309 0.59920043 0 0.50859094 0.8609882 -0.59920043 0.5309
		 0.59920043 0.88201547 0.47117525 0 0.61519212 0.49296549 -0.61519212 0.59920043 0.5309
		 -0.59920043 0.8609882 0.50859094 0 0 0.47117525 -0.88201547 -0.61519212 0.49296549
		 -0.61519212 -0.59920043 0.5309 -0.59920043 0 0.50859094 -0.8609882 -0.88201547 0.47117525
		 0 -0.8609882 0.50859094 0 -0.21915342 -0.95074314 -0.21915342 -0.32676169 -0.94509721
		 0 -0.31061739 -0.95052952 0 -0.20819727 -0.95565659 -0.20819727 -0.21915342 -0.95074314
		 0.21915342 -0.20819727 -0.95565659 0.20819727 -0.59840691 -0.53273112 0.59840691
		 -0.85992002 -0.51036102 0 -0.59840691 -0.53273112 -0.59840691 0.21915342 -0.95074314
		 -0.21915342 0 -0.94509721 -0.32676169 0 -0.95052952 -0.31061739 0.20819727 -0.95565659
		 -0.20819727 0 -0.51036102 -0.85992002 0.59840691 -0.53273112 -0.59840691 0.21915342
		 -0.95074314 0.21915342 0.32676169 -0.94509721 0 0.31061739 -0.95052952 0 0.20819727
		 -0.95565659 0.20819727 0.85992002 -0.51036102 0 0.59840691 -0.53273112 0.59840691
		 0 -0.94509721 0.32676169 0 -0.95052952 0.31061739 0 -0.51036102 0.85992002 0.023468733
		 -0.054322947 0.99822992 -0.70021665 -0.047212135 0.71233255 0.70528275 -0.071687981
		 0.70528275 0 -0.53254801 -0.8463698 -0.58812219 -0.55510116 -0.58812219 0.58812219
		 -0.55510116 -0.58812219 0.99780267 -0.065767385 0.0025635548 0.71004367 -0.066652425
		 -0.70094913 -0.8463698 -0.53254801 0 -0.58812219 -0.55510116 0.58812219 0.029602954
		 -0.057161167 -0.99792475 -0.68846703 -0.063661613 -0.72243416 0 -0.53254801 0.8463698
		 0.58812219 -0.55510116 0.58812219 -0.99356061 0.11044648 -0.024292734 -0.99838251
		 -0.055055391 -0.013611255 0.8463698 -0.53254801 0 -0.97878963 -0.20450453 0.011719108
		 -0.71761221 -0.12604144 -0.68489641 -0.54731894 -0.14566484 0.82412183 -0.53477585
		 -0.15872677 0.82992035 -0.71279031 -0.70097965 0.022431105 -0.71636099 -0.13574633
		 -0.68434703 0.18558306 -0.021851253 0.9823603 0.31315044 0.24738304 0.91689807 0.17215492
		 0.35538805 0.91869867 0.03335673 -0.017151402 0.99926758 -0.82433546 0.56346321 -0.05423139
		 -0.37931454 0.1948912 -0.90447706 -0.31797236 0.25366986 -0.91351056 -0.089144565
		 0.99597156 -0.0064394055 -0.31785026 0.0062562944 -0.94808799 -0.3747673 0.015198218
		 -0.92696923 -0.87740713 -0.47874385 0.03009125 -0.76836449 -0.10809656 -0.63078707
		 -0.76790673 -0.10681479 0.63158053 -0.36942655 0.19806513 -0.90789515 -0.38834804
		 0 -0.92147589 -1 0 0 -0.88903469 0.45780817 0 -0.36942655 -0.19806513 -0.90789515
		 -0.88903469 -0.45780817 0 -0.36942655 -0.19806513 0.90789515 -0.38834804 0 0.92147589
		 -0.36942655 0.19806513 0.90789515 -0.95617545 0.28376111 0.071993165 -0.9580676 0.21918394
		 0.18451491 -0.95986813 0.20520645 -0.19104587 -0.3681753 -0.1981872 0.90835291 -0.38709676
		 0 0.9220252 -1 0 0 -0.88830227 -0.45918149 0 -0.3681753 0.1981872 0.90835291 -0.88830227
		 0.45918149 0 -0.3681753 0.1981872 -0.90835291 -0.38709676 0 -0.9220252 -0.3681753
		 -0.1981872 -0.90835291 -0.67268896 0.0066225166 0.73986024 -0.86120182 -0.006530961
		 0.50816369;
	setAttr ".n[332:473]" -type "float3"  -0.72032839 0.12512589 0.68224126 -0.99969482
		 -0.015320292 -0.019226661 -0.99697864 -0.013336589 -0.076143682 -0.99496442 0.039063692
		 -0.092013307 -0.97875911 0.13895078 0.15051728 -0.84490496 0.03619495 0.53364664
		 -0.74416333 -0.082338937 0.662862 -0.99822992 -0.048005614 0.034760583 -0.4509415
		 0.026581623 0.8921476 -0.64458144 0.087557606 0.75948364 -0.71565902 0.10846278 0.68996245
		 -0.40278327 -0.00027466659 0.91528064 -0.86773276 0.06186102 0.49311808 -0.98223823
		 0.11676382 0.14676352 -0.82271796 0.013000885 -0.56828517 -0.79869992 0.074312568
		 -0.59709466 -0.94091618 0.018158514 -0.33805352 -0.99145484 0.046418652 0.12176885
		 -0.98306221 -0.013489181 0.18271431 -0.99807733 -0.052552871 0.03274636 -0.84966582
		 0.072817162 -0.52220219 -0.63652456 0.079012424 -0.76714379 -0.69905698 0.094393753
		 -0.70876187 -0.96404922 0.11355937 -0.24015015 -0.50483716 0.024872586 -0.86281931
		 -0.78072453 -0.012115848 -0.62474442 -0.66426587 -0.11456648 -0.73863947 -0.44502091
		 -0.0023804437 -0.89550459 -0.95532089 0.042634357 -0.29242834 -0.97161776 -0.11999878
		 -0.20374157 -0.42460403 -0.012604144 -0.90527052 -0.63618886 0.13132115 -0.76024657
		 -0.52931303 -0.17386395 -0.83037812 -0.065126501 -0.20804468 -0.97592092 -0.034821618
		 -0.00051881466 -0.99938965 -0.073885314 0.20618305 -0.97570729 -0.89205605 -0.44618061
		 -0.071565904 -0.46665853 -0.19034395 0.86367381 -0.11218604 -0.21060823 0.97109896
		 -0.28580585 -0.95797598 -0.023438215 -0.32377088 -0.0053102206 0.94610429 -0.56791896
		 0.15854366 0.80764186 -0.12738426 0.20731224 0.96993929 -0.084261604 -0.0012207404
		 0.99642932 -0.95083469 0.30716881 -0.038819544 -0.33628345 0.94137394 -0.02560503
		 -0.53398234 -0.015594958 0.84533221 -0.63438827 -0.17731254 0.7523728 -0.74983978
		 0.12604144 0.64943385 -0.1015656 0.20777002 0.97286904 -0.057527389 0 0.99832147
		 -0.09231849 -0.20883816 0.97357094 -0.95751822 0.27207252 -0.095370345 -0.5668813
		 0.14316233 -0.811243 -0.13373211 0.20551164 -0.96945095 -0.38230535 0.92400891 -0.00054933317
		 -0.33713797 -0.0071413312 -0.94140446 -0.47029024 -0.18204291 -0.8634907 -0.11420026
		 -0.21021149 -0.97094637 -0.085116126 -0.0015259255 -0.99633777 -0.90752894 -0.41627246
		 -0.055177465 -0.31818599 -0.94799644 0.0030518509 -0.07226783 0 -0.99737543 -0.10443434
		 0.20975372 -0.97213662 -0.10425123 -0.20981476 -0.97213662 -0.3281045 -0.94460893
		 -0.00070192572 -0.10898159 -0.20978424 0.97164828 -0.077211827 -3.0518509e-005 0.99700916
		 -0.10922574 0.2097232 0.97161776 -0.32908109 0.94427317 -0.00067140721 -0.073854789
		 0.00012207404 0.99725336 -0.1060213 -0.20975372 0.97195351 -0.10559404 0.21002838
		 0.97195351 -0.32929471 0.94421214 -0.00021362957 -0.10898159 0.2097232 -0.97164828
		 -0.076967679 -6.1037019e-005 -0.99700916 -0.10852382 -0.20993683 -0.97164828 -0.32847071
		 -0.94448686 0.00024414808 -0.70223093 -0.11700796 0.70223093 0 -0.11041597 0.99386579
		 0 -0.97854549 0.20596942 -0.13763848 -0.98086488 0.13763848 0.70223093 -0.11700796
		 0.70223093 0.13763848 -0.98086488 0.13763848 -0.6989044 -0.15170752 -0.6989044 0
		 -0.14322336 -0.98968476 0.6989044 -0.15170752 -0.6989044 -0.70223093 -0.11700796
		 -0.70223093 -0.99386579 -0.11041597 0 -0.20596942 -0.97854549 0 -0.13763848 -0.98086488
		 -0.13763848 0.98968476 -0.14322336 0 0.6989044 -0.15170752 0.6989044 0.70223093 -0.11700796
		 -0.70223093 0 -0.11041597 -0.99386579 0 -0.97854549 -0.20596942 0.13763848 -0.98086488
		 -0.13763848 0 -0.14322336 0.98968476 -0.6989044 -0.15170752 0.6989044 0.99386579
		 -0.11041597 0 0.20596942 -0.97854549 0 -0.98968476 -0.14322336 0 0 -0.12430189 0.99221778
		 -0.70091861 -0.13171789 0.70091861 0.70091861 -0.13171789 0.70091861 0 -0.028443251
		 -0.99957275 -0.70677817 -0.030182805 -0.70677817 0.70677817 -0.030182805 -0.70677817
		 -0.99221778 -0.12430189 0 -0.70091861 -0.13171789 -0.70091861 0.99957275 -0.028443251
		 0 0.70677817 -0.030182805 0.70677817 0 -0.12430189 -0.99221778 0.70091861 -0.13171789
		 -0.70091861 0 -0.028443251 0.99957275 -0.70677817 -0.030182805 0.70677817 0.99221778
		 -0.12430189 0 -0.99957275 -0.028443251 0 0 0.35935545 -0.93316448 0.6545915 0.37812433
		 -0.6545915 -0.6545915 0.37812433 -0.6545915 -0.70686972 0.025513474 -0.70686972 0
		 0.024079103 -0.99969482 0.70686972 0.025513474 -0.70686972 -0.93316448 0.35935545
		 0 -0.6545915 0.37812433 0.6545915 -0.70686972 0.025513474 0.70686972 -0.99969482
		 0.024079103 0 0 0.35935545 0.93316448 0.6545915 0.37812433 0.6545915 0.70686972 0.025513474
		 0.70686972 0 0.024079103 0.99969482 0.93316448 0.35935545 0 0.99969482 0.024079103
		 0 0 0.012726218 -0.99990845 0.70702231 0.013153478 -0.70702231 -0.70702231 0.013153478
		 -0.70702231 -0.99990845 0.012726218 0 -0.70702231 0.013153478 0.70702231 0 0.012726218
		 0.99990845 0.70702231 0.013153478 0.70702231 0.99990845 0.012726218 0;
	setAttr -s 472 -ch 1888 ".fc[0:471]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 545 546 547 548
		f 4 4 5 6 -2
		mu 0 4 546 551 552 547
		f 4 -7 7 8 9
		mu 0 4 547 552 558 553
		f 4 -3 -10 10 11
		mu 0 4 548 547 553 554
		f 4 12 13 14 15
		mu 0 4 254 257 258 255
		f 4 16 17 18 -14
		mu 0 4 245 244 240 242
		f 4 -19 19 20 21
		mu 0 4 242 240 239 243
		f 4 -15 -22 22 23
		mu 0 4 255 258 260 259
		f 4 24 25 26 27
		mu 0 4 585 586 587 588
		f 4 28 29 30 -26
		mu 0 4 586 591 592 587
		f 4 -31 31 32 33
		mu 0 4 587 592 600 593
		f 4 -27 -34 34 35
		mu 0 4 588 587 593 594
		f 4 36 37 38 39
		mu 0 4 261 262 263 264
		f 4 40 41 42 -38
		mu 0 4 262 267 268 263
		f 4 -43 43 44 45
		mu 0 4 263 268 280 269
		f 4 -39 -46 46 47
		mu 0 4 264 263 269 270
		f 4 48 49 50 -6
		mu 0 4 0 1 2 3
		f 4 51 -32 52 -50
		mu 0 4 1 6 7 2
		f 4 -53 -30 53 54
		mu 0 4 2 7 13 8
		f 4 -51 -55 55 -8
		mu 0 4 3 2 8 9
		f 4 56 57 58 -36
		mu 0 4 40 41 42 43
		f 4 59 -4 60 -58
		mu 0 4 41 46 47 42
		f 4 -61 -12 61 62
		mu 0 4 42 47 53 48
		f 4 -59 -63 63 -28
		mu 0 4 43 42 48 49
		f 4 -11 64 65 66
		mu 0 4 554 553 559 560
		f 4 -9 67 68 -65
		mu 0 4 553 558 567 559
		f 4 -69 69 70 71
		mu 0 4 559 567 577 568
		f 4 -66 -72 72 73
		mu 0 4 560 559 568 569
		f 4 74 75 76 77
		mu 0 4 71 72 73 74
		f 4 78 79 80 -76
		mu 0 4 72 77 78 73
		f 4 -81 81 82 83
		mu 0 4 73 78 87 79
		f 4 -77 -84 84 85
		mu 0 4 74 73 79 80
		f 4 86 87 88 89
		mu 0 4 595 596 590 589
		f 4 90 91 92 -88
		mu 0 4 596 605 597 590
		f 4 -93 93 -29 94
		mu 0 4 590 597 591 586
		f 4 -89 -95 -25 95
		mu 0 4 589 590 586 585
		f 4 -56 96 97 -68
		mu 0 4 9 8 14 15
		f 4 -54 -94 98 -97
		mu 0 4 8 13 20 14
		f 4 -99 -92 99 100
		mu 0 4 14 20 29 21
		f 4 -98 -101 101 -70
		mu 0 4 15 14 21 22
		f 4 102 103 104 105
		mu 0 4 297 298 288 287
		f 4 106 107 108 -104
		mu 0 4 298 310 299 288
		f 4 -109 109 110 111
		mu 0 4 288 299 289 276
		f 4 -105 -112 112 113
		mu 0 4 287 288 276 275
		f 4 -52 114 115 116
		mu 0 4 6 1 5 12
		f 4 -49 117 118 -115
		mu 0 4 1 0 4 5
		f 4 -119 119 -44 120
		mu 0 4 279 290 280 268
		f 4 -116 -121 -42 121
		mu 0 4 278 279 268 267
		f 4 122 123 124 125
		mu 0 4 331 317 303 316
		f 4 126 127 128 -124
		mu 0 4 317 318 304 303
		f 4 -129 129 130 131
		mu 0 4 303 304 293 292
		f 4 -125 -132 132 133
		mu 0 4 316 303 292 302
		f 4 -60 134 135 136
		mu 0 4 46 41 45 52
		f 4 -57 137 138 -135
		mu 0 4 41 40 44 45
		f 4 -139 139 -40 140
		mu 0 4 271 272 261 264
		f 4 -136 -141 -48 141
		mu 0 4 283 271 264 270
		f 4 -35 142 143 144
		mu 0 4 594 593 601 602
		f 4 -33 145 146 -143
		mu 0 4 593 600 609 601
		f 4 -147 147 -107 148
		mu 0 4 309 324 310 298
		f 4 -144 -149 -103 149
		mu 0 4 308 309 298 297
		f 4 150 151 152 153
		mu 0 4 28 27 34 35
		f 4 154 155 156 -152
		mu 0 4 338 339 313 327
		f 4 -157 157 158 159
		mu 0 4 327 313 312 326
		f 4 -153 -160 160 161
		mu 0 4 340 327 326 337
		f 4 -41 162 163 164
		mu 0 4 267 262 266 277
		f 4 -37 165 166 -163
		mu 0 4 262 261 265 266
		f 4 -167 167 -113 168
		mu 0 4 266 265 275 276
		f 4 -164 -169 -111 169
		mu 0 4 277 266 276 289
		f 4 170 171 172 173
		mu 0 4 284 294 295 285
		f 4 174 175 176 -172
		mu 0 4 57 56 61 62
		f 4 -177 177 178 179
		mu 0 4 295 322 323 307
		f 4 -173 -180 180 181
		mu 0 4 285 295 307 296
		f 4 -5 182 183 184
		mu 0 4 551 546 550 557
		f 4 -1 185 186 -183
		mu 0 4 546 545 549 550
		f 4 -187 187 -127 188
		mu 0 4 332 333 318 317
		f 4 -184 -189 -123 189
		mu 0 4 344 332 317 331
		f 4 190 191 192 193
		mu 0 4 66 65 69 70
		f 4 194 195 196 -192
		mu 0 4 346 347 321 336
		f 4 -197 197 198 199
		mu 0 4 336 321 320 335
		f 4 -193 -200 200 201
		mu 0 4 348 336 335 345
		f 4 -47 202 203 204
		mu 0 4 270 269 281 282
		f 4 -45 205 206 -203
		mu 0 4 269 280 291 281
		f 4 -207 207 -133 208
		mu 0 4 281 291 302 292
		f 4 -204 -209 -131 209
		mu 0 4 282 281 292 293
		f 4 210 211 212 213
		mu 0 4 349 350 341 328
		f 4 214 215 216 -212
		mu 0 4 17 16 23 24
		f 4 -217 217 218 219
		mu 0 4 341 351 352 342
		f 4 -213 -220 220 221
		mu 0 4 328 341 342 329
		f 4 -117 222 223 224
		mu 0 4 6 12 18 19
		f 4 -122 225 226 -223
		mu 0 4 634 628 631 635
		f 4 -227 227 -155 228
		mu 0 4 18 32 33 27
		f 4 -224 -229 -151 229
		mu 0 4 19 18 27 28
		f 4 -165 230 231 -226
		mu 0 4 628 629 630 631
		f 4 -170 232 233 -231
		mu 0 4 277 289 300 301
		f 4 -234 234 -158 235
		mu 0 4 301 300 312 313
		f 4 -232 -236 -156 -228
		mu 0 4 631 630 632 633
		f 4 -110 236 237 -233
		mu 0 4 289 299 311 300
		f 4 -108 238 239 -237
		mu 0 4 299 310 325 311
		f 4 -240 240 -161 241
		mu 0 4 311 325 337 326
		f 4 -238 -242 -159 -235
		mu 0 4 300 311 326 312
		f 4 -148 242 243 -239
		mu 0 4 624 609 615 625
		f 4 -146 -225 244 -243
		mu 0 4 609 600 614 615
		f 4 -245 -230 -154 245
		mu 0 4 615 614 622 623
		f 4 -244 -246 -162 -241
		mu 0 4 625 615 623 627
		f 4 -140 246 247 248
		mu 0 4 794 795 796 797
		f 4 -138 249 250 -247
		mu 0 4 44 40 50 51
		f 4 -251 251 -175 252
		mu 0 4 51 50 56 57
		f 4 -248 -253 -171 253
		mu 0 4 63 51 57 64
		f 4 -145 254 255 -250
		mu 0 4 594 602 610 611
		f 4 -150 256 257 -255
		mu 0 4 602 616 617 610
		f 4 -258 258 -178 259
		mu 0 4 610 617 626 618
		f 4 -256 -260 -176 -252
		mu 0 4 611 610 618 619
		f 4 -106 260 261 -257
		mu 0 4 140 141 142 143
		f 4 -114 262 263 -261
		mu 0 4 141 144 145 142
		f 4 -264 264 -181 265
		mu 0 4 142 145 148 146
		f 4 -262 -266 -179 -259
		mu 0 4 143 142 146 147
		f 4 -168 266 267 -263
		mu 0 4 275 265 274 286
		f 4 -166 -249 268 -267
		mu 0 4 265 261 273 274
		f 4 -269 -254 -174 269
		mu 0 4 274 273 284 285
		f 4 -268 -270 -182 -265
		mu 0 4 286 274 285 296
		f 4 -137 270 271 272
		mu 0 4 46 52 58 59
		f 4 -142 273 274 -271
		mu 0 4 642 636 639 643
		f 4 -275 275 -195 276
		mu 0 4 58 67 68 65
		f 4 -272 -277 -191 277
		mu 0 4 59 58 65 66
		f 4 -205 278 279 -274
		mu 0 4 636 637 638 639
		f 4 -210 280 281 -279
		mu 0 4 282 293 305 306
		f 4 -282 282 -198 283
		mu 0 4 306 305 320 321
		f 4 -280 -284 -196 -276
		mu 0 4 639 638 640 641
		f 4 -130 284 285 -281
		mu 0 4 293 304 319 305
		f 4 -128 286 287 -285
		mu 0 4 304 318 334 319
		f 4 -288 288 -201 289
		mu 0 4 319 334 345 335
		f 4 -286 -290 -199 -283
		mu 0 4 305 319 335 320
		f 4 -188 290 291 -287
		mu 0 4 563 549 556 564
		f 4 -186 -273 292 -291
		mu 0 4 549 545 555 556
		f 4 -293 -278 -194 293
		mu 0 4 556 555 561 562
		f 4 -292 -294 -202 -289
		mu 0 4 564 556 562 572
		f 4 -120 294 295 296
		mu 0 4 645 648 649 646
		f 4 -118 297 298 -295
		mu 0 4 4 0 10 11
		f 4 -299 299 -215 300
		mu 0 4 11 10 16 17
		f 4 -296 -301 -211 301
		mu 0 4 25 11 17 26
		f 4 -185 302 303 -298
		mu 0 4 551 557 565 566
		f 4 -190 304 305 -303
		mu 0 4 557 573 574 565
		f 4 -306 306 -218 307
		mu 0 4 565 574 583 575
		f 4 -304 -308 -216 -300
		mu 0 4 566 565 575 576
		f 4 -126 308 309 -305
		mu 0 4 331 316 330 343
		f 4 -134 310 311 -309
		mu 0 4 316 302 315 330
		f 4 -312 312 -221 313
		mu 0 4 330 315 329 342
		f 4 -310 -314 -219 -307
		mu 0 4 343 330 342 352
		f 4 -208 314 315 -311
		mu 0 4 302 291 314 315
		f 4 -206 -297 316 -315
		mu 0 4 644 645 646 647
		f 4 -317 -302 -214 317
		mu 0 4 647 646 650 651
		f 4 -316 -318 -222 -313
		mu 0 4 315 314 328 329
		f 4 318 319 320 321
		mu 0 4 353 354 355 356
		f 4 322 323 324 -320
		mu 0 4 354 359 360 355
		f 4 -325 325 326 327
		mu 0 4 355 360 368 361
		f 4 -321 -328 328 329
		mu 0 4 356 355 361 362
		f 4 330 331 332 -324
		mu 0 4 359 366 367 360
		f 4 333 334 335 -332
		mu 0 4 366 374 375 367
		f 4 -336 336 337 338
		mu 0 4 367 375 384 376
		f 4 -333 -339 339 -326
		mu 0 4 360 367 376 368
		f 4 340 341 342 -335
		mu 0 4 374 382 383 375
		f 4 343 344 345 -342
		mu 0 4 382 372 373 383
		f 4 -346 346 347 348
		mu 0 4 383 373 381 391
		f 4 -343 -349 349 -337
		mu 0 4 375 383 391 384
		f 4 350 351 352 -345
		mu 0 4 372 363 364 373
		f 4 353 -322 354 -352
		mu 0 4 363 353 356 364
		f 4 -355 -330 355 356
		mu 0 4 364 356 362 371
		f 4 -353 -357 357 -347
		mu 0 4 373 364 371 381
		f 4 358 359 360 361
		mu 0 4 652 653 654 655
		f 4 362 363 364 -360
		mu 0 4 653 658 659 654
		f 4 -365 365 366 367
		mu 0 4 654 659 665 660
		f 4 -361 -368 368 369
		mu 0 4 655 654 660 661
		f 4 370 371 372 -364
		mu 0 4 149 150 151 152
		f 4 373 374 375 -372
		mu 0 4 150 155 156 151
		f 4 -376 376 377 378
		mu 0 4 151 156 162 157
		f 4 -373 -379 379 -366
		mu 0 4 152 151 157 158
		f 4 380 381 382 -375
		mu 0 4 670 671 672 673
		f 4 383 384 385 -382
		mu 0 4 671 676 677 672
		f 4 -386 386 387 388
		mu 0 4 672 677 683 678
		f 4 -383 -389 389 -377
		mu 0 4 673 672 678 679
		f 4 390 391 392 -385
		mu 0 4 170 171 172 173
		f 4 393 -362 394 -392
		mu 0 4 171 176 177 172
		f 4 -395 -370 395 396
		mu 0 4 172 177 183 178
		f 4 -393 -397 397 -387
		mu 0 4 173 172 178 179
		f 4 -369 398 399 400
		mu 0 4 433 425 421 431
		f 4 -367 401 402 -399
		mu 0 4 425 426 422 421
		f 4 -403 403 404 405
		mu 0 4 421 422 423 424
		f 4 -400 -406 406 407
		mu 0 4 431 421 424 432
		f 4 -380 408 409 -402
		mu 0 4 158 157 163 164
		f 4 -378 410 411 -409
		mu 0 4 157 162 168 163
		f 4 -412 412 413 414
		mu 0 4 427 434 435 428
		f 4 -410 -415 415 -404
		mu 0 4 422 427 428 423
		f 4 -390 416 417 -411
		mu 0 4 452 453 442 434
		f 4 -388 418 419 -417
		mu 0 4 453 460 450 442
		f 4 -420 420 421 422
		mu 0 4 442 450 451 443
		f 4 -418 -423 423 -413
		mu 0 4 434 442 443 435
		f 4 -398 424 425 -419
		mu 0 4 179 178 184 185
		f 4 -396 -401 426 -425
		mu 0 4 178 183 189 184
		f 4 -427 -408 427 428
		mu 0 4 440 431 432 441
		f 4 -426 -429 429 -421
		mu 0 4 450 440 441 451
		f 4 -407 430 431 432
		mu 0 4 432 424 430 439
		f 4 -405 433 434 -431
		mu 0 4 424 423 429 430
		f 4 -435 435 436 437
		mu 0 4 430 429 437 438
		f 4 -432 -438 438 439
		mu 0 4 439 430 438 448
		f 4 -416 440 441 -434
		mu 0 4 423 428 436 429
		f 4 -414 442 443 -441
		mu 0 4 428 435 444 436
		f 4 -444 444 445 446
		mu 0 4 436 444 455 445
		f 4 -442 -447 447 -436
		mu 0 4 429 436 445 437
		f 4 -424 448 449 -443
		mu 0 4 435 443 454 444
		f 4 -422 450 451 -449
		mu 0 4 443 451 459 454
		f 4 -452 452 453 454
		mu 0 4 454 459 464 461
		f 4 -450 -455 455 -445
		mu 0 4 444 454 461 455
		f 4 -430 456 457 -451
		mu 0 4 451 441 449 459
		f 4 -428 -433 458 -457
		mu 0 4 441 432 439 449
		f 4 -459 -440 459 460
		mu 0 4 449 439 448 458
		f 4 -458 -461 461 -453
		mu 0 4 459 449 458 464
		f 4 462 463 464 465
		mu 0 4 386 396 404 397
		f 4 466 467 468 -464
		mu 0 4 396 403 411 404
		f 4 -469 469 470 471
		mu 0 4 404 411 416 412
		f 4 -465 -472 472 473
		mu 0 4 397 404 412 405
		f 4 474 475 476 477
		mu 0 4 379 378 387 388
		f 4 478 -466 479 -476
		mu 0 4 378 386 397 387
		f 4 -480 -474 480 481
		mu 0 4 387 397 405 398
		f 4 -477 -482 482 483
		mu 0 4 388 387 398 399
		f 4 484 485 486 487
		mu 0 4 401 389 400 409
		f 4 488 -478 489 -486
		mu 0 4 389 379 388 400
		f 4 -490 -484 490 491
		mu 0 4 400 388 399 408
		f 4 -487 -492 492 493
		mu 0 4 409 400 408 414
		f 4 494 495 496 -468
		mu 0 4 403 410 415 411
		f 4 497 -488 498 -496
		mu 0 4 410 401 409 415
		f 4 -499 -494 499 500
		mu 0 4 415 409 414 417
		f 4 -497 -501 501 -470
		mu 0 4 411 415 417 416
		f 4 -73 502 503 504
		mu 0 4 569 568 578 579
		f 4 -71 505 506 -503
		mu 0 4 568 577 584 578
		f 4 -507 507 -323 508
		mu 0 4 358 365 359 354
		f 4 -504 -509 -319 509
		mu 0 4 357 358 354 353
		f 4 -479 510 511 512
		mu 0 4 386 378 369 377
		f 4 -475 513 514 -511
		mu 0 4 378 379 370 369
		f 4 -515 515 -329 516
		mu 0 4 369 370 362 361
		f 4 -512 -517 -327 517
		mu 0 4 377 369 361 368
		f 4 -102 518 519 -506
		mu 0 4 22 21 30 31
		f 4 -100 520 521 -519
		mu 0 4 21 29 36 30
		f 4 -522 522 -334 523
		mu 0 4 30 36 39 37
		f 4 -520 -524 -331 -508
		mu 0 4 31 30 37 38
		f 4 -467 524 525 526
		mu 0 4 403 396 385 395
		f 4 -463 -513 527 -525
		mu 0 4 396 386 377 385
		f 4 -528 -518 -340 528
		mu 0 4 385 377 368 376
		f 4 -526 -529 -338 529
		mu 0 4 395 385 376 384
		f 4 -91 530 531 -521
		mu 0 4 605 596 604 612
		f 4 -87 532 533 -531
		mu 0 4 596 595 603 604
		f 4 -534 534 -344 535
		mu 0 4 392 393 372 382
		f 4 -532 -536 -341 -523
		mu 0 4 394 392 382 374
		f 4 -498 536 537 538
		mu 0 4 401 410 402 390
		f 4 -495 -527 539 -537
		mu 0 4 410 403 395 402
		f 4 -540 -530 -350 540
		mu 0 4 402 395 384 391
		f 4 -538 -541 -348 541
		mu 0 4 390 402 391 381
		f 4 542 543 544 -533
		mu 0 4 191 192 193 194
		f 4 545 -505 546 -544
		mu 0 4 192 197 198 193
		f 4 -547 -510 -354 547
		mu 0 4 193 198 202 199
		f 4 -545 -548 -351 -535
		mu 0 4 194 193 199 200
		f 4 -489 548 549 -514
		mu 0 4 379 389 380 370
		f 4 -485 -539 550 -549
		mu 0 4 389 401 390 380
		f 4 -551 -542 -358 551
		mu 0 4 380 390 381 371
		f 4 -550 -552 -356 -516
		mu 0 4 370 380 371 362
		f 4 -64 552 553 554
		mu 0 4 49 48 54 55
		f 4 -62 555 556 -553
		mu 0 4 48 53 60 54
		f 4 -557 557 558 559
		mu 0 4 467 468 469 470
		f 4 -554 -560 560 561
		mu 0 4 473 467 470 474
		f 4 -67 562 563 -556
		mu 0 4 554 560 570 571
		f 4 -74 564 565 -563
		mu 0 4 560 569 580 570
		f 4 -566 566 567 568
		mu 0 4 203 204 205 206
		f 4 -564 -569 569 -558
		mu 0 4 571 570 581 582
		f 4 -546 570 571 -565
		mu 0 4 197 192 196 201
		f 4 -543 572 573 -571
		mu 0 4 192 191 195 196
		f 4 -574 574 575 576
		mu 0 4 476 477 478 479
		f 4 -572 -577 577 -567
		mu 0 4 482 476 479 483
		f 4 -90 578 579 -573
		mu 0 4 595 589 599 606
		f 4 -96 -555 580 -579
		mu 0 4 589 585 598 599
		f 4 -581 -562 581 582
		mu 0 4 599 598 607 608
		f 4 -580 -583 583 -575
		mu 0 4 606 599 608 613
		f 4 -561 584 585 586
		mu 0 4 474 470 472 475
		f 4 -559 587 588 -585
		mu 0 4 470 469 471 472
		f 4 -589 589 -79 590
		mu 0 4 76 83 77 72
		f 4 -586 -591 -75 591
		mu 0 4 75 76 72 71
		f 4 592 593 594 595
		mu 0 4 508 511 512 509
		f 4 596 597 598 -594
		mu 0 4 499 498 494 496
		f 4 -599 599 600 601
		mu 0 4 496 494 493 497
		f 4 -595 -602 602 603
		mu 0 4 509 512 514 513
		f 4 -578 604 605 606
		mu 0 4 483 479 481 484
		f 4 -576 607 608 -605
		mu 0 4 479 478 480 481
		f 4 -609 609 -85 610
		mu 0 4 88 89 80 79
		f 4 -606 -611 -83 611
		mu 0 4 97 88 79 87
		f 4 612 613 614 615
		mu 0 4 538 541 542 539
		f 4 616 617 618 -614
		mu 0 4 529 528 524 526
		f 4 -619 619 620 621
		mu 0 4 526 524 523 527
		f 4 -615 -622 622 623
		mu 0 4 539 542 544 543
		f 4 -570 624 625 626
		mu 0 4 99 113 114 100
		f 4 -568 627 628 -625
		mu 0 4 688 689 690 691
		f 4 -629 629 630 631
		mu 0 4 114 125 136 129
		f 4 -626 -632 632 633
		mu 0 4 100 114 129 115
		f 4 -607 634 635 -628
		mu 0 4 124 97 108 125
		f 4 -612 636 637 -635
		mu 0 4 97 87 96 108
		f 4 -638 638 639 640
		mu 0 4 108 96 122 123
		f 4 -636 -641 641 -630
		mu 0 4 125 108 123 136
		f 4 -82 642 643 -637
		mu 0 4 87 78 86 96
		f 4 -80 644 645 -643
		mu 0 4 78 77 85 86
		f 4 -646 646 647 648
		mu 0 4 692 693 694 695
		f 4 -644 -649 649 -639
		mu 0 4 696 692 695 697
		f 4 -590 650 651 -645
		mu 0 4 77 83 91 85
		f 4 -588 -627 652 -651
		mu 0 4 83 99 100 91
		f 4 -653 -634 653 654
		mu 0 4 91 100 115 101
		f 4 -652 -655 655 -647
		mu 0 4 85 91 101 102
		f 4 -584 656 657 658
		mu 0 4 613 608 620 621
		f 4 -582 659 660 -657
		mu 0 4 106 94 95 107
		f 4 -661 661 662 663
		mu 0 4 107 95 105 121
		f 4 -658 -664 664 665
		mu 0 4 110 107 121 126
		f 4 -587 666 667 -660
		mu 0 4 94 75 84 95
		f 4 -592 668 669 -667
		mu 0 4 75 71 82 84
		f 4 -670 670 671 672
		mu 0 4 84 82 92 93
		f 4 -668 -673 673 -662
		mu 0 4 95 84 93 105
		f 4 -78 674 675 -669
		mu 0 4 71 74 81 82
		f 4 -86 676 677 -675
		mu 0 4 74 80 90 81
		f 4 -678 678 679 680
		mu 0 4 710 711 712 713
		f 4 -676 -681 681 -671
		mu 0 4 716 710 713 717
		f 4 -610 682 683 -677
		mu 0 4 80 89 98 90
		f 4 -608 -659 684 -683
		mu 0 4 89 109 110 98
		f 4 -685 -666 685 686
		mu 0 4 98 110 126 111
		f 4 -684 -687 687 -679
		mu 0 4 90 98 111 112
		f 4 -633 688 689 690
		mu 0 4 115 129 138 130
		f 4 -631 691 692 -689
		mu 0 4 129 136 139 138
		f 4 -693 693 694 695
		mu 0 4 728 729 730 731
		f 4 -690 -696 696 697
		mu 0 4 734 728 731 735
		f 4 -642 698 699 -692
		mu 0 4 136 123 135 139
		f 4 -640 700 701 -699
		mu 0 4 123 122 134 135
		f 4 -702 702 703 704
		mu 0 4 485 486 487 488
		f 4 -700 -705 705 -694
		mu 0 4 491 485 488 492
		f 4 -650 706 707 -701
		mu 0 4 697 695 698 699
		f 4 -648 708 709 -707
		mu 0 4 131 102 117 132
		f 4 -710 710 711 712
		mu 0 4 698 702 703 700
		f 4 -708 -713 713 -703
		mu 0 4 699 698 700 701
		f 4 -656 714 715 -709
		mu 0 4 102 101 116 117
		f 4 -654 -691 716 -715
		mu 0 4 101 115 130 116
		f 4 -717 -698 717 718
		mu 0 4 500 501 502 503
		f 4 -716 -719 719 -711
		mu 0 4 506 500 503 507
		f 4 -665 720 721 722
		mu 0 4 126 121 133 137
		f 4 -663 723 724 -721
		mu 0 4 121 105 120 133
		f 4 -725 725 726 727
		mu 0 4 740 741 742 743
		f 4 -722 -728 728 729
		mu 0 4 746 740 743 747
		f 4 -674 730 731 -724
		mu 0 4 105 93 104 120
		f 4 -672 732 733 -731
		mu 0 4 93 92 103 104
		f 4 -734 734 735 736
		mu 0 4 515 516 517 518
		f 4 -732 -737 737 -726
		mu 0 4 521 515 518 522
		f 4 -682 738 739 -733
		mu 0 4 92 118 119 103
		f 4 -680 740 741 -739
		mu 0 4 713 712 714 715
		f 4 -742 742 743 744
		mu 0 4 715 714 718 719
		f 4 -740 -745 745 -735
		mu 0 4 722 715 719 723
		f 4 -688 746 747 -741
		mu 0 4 112 111 127 128
		f 4 -686 -723 748 -747
		mu 0 4 111 126 137 127
		f 4 -749 -730 749 750
		mu 0 4 530 531 532 533
		f 4 -748 -751 751 -743
		mu 0 4 536 530 533 537
		f 4 -697 752 753 754
		mu 0 4 735 731 733 738
		f 4 -695 755 756 -753
		mu 0 4 731 730 732 733
		f 4 -757 757 -597 758
		mu 0 4 733 732 736 737
		f 4 -754 -759 -593 759
		mu 0 4 738 733 737 739
		f 4 -706 760 761 -756
		mu 0 4 492 488 490 495
		f 4 -704 762 763 -761
		mu 0 4 488 487 489 490
		f 4 -764 764 -600 765
		mu 0 4 490 489 493 494
		f 4 -762 -766 -598 -758
		mu 0 4 495 490 494 498
		f 4 -714 766 767 -763
		mu 0 4 701 700 704 705
		f 4 -712 768 769 -767
		mu 0 4 700 703 706 704
		f 4 -770 770 -603 771
		mu 0 4 704 706 709 707
		f 4 -768 -772 -601 -765
		mu 0 4 705 704 707 708
		f 4 -720 772 773 -769
		mu 0 4 507 503 505 510
		f 4 -718 -755 774 -773
		mu 0 4 503 502 504 505
		f 4 -775 -760 -596 775
		mu 0 4 505 504 508 509
		f 4 -774 -776 -604 -771
		mu 0 4 510 505 509 513
		f 4 -729 776 777 778
		mu 0 4 747 743 745 750
		f 4 -727 779 780 -777
		mu 0 4 743 742 744 745
		f 4 -781 781 -617 782
		mu 0 4 745 744 748 749
		f 4 -778 -783 -613 783
		mu 0 4 750 745 749 751
		f 4 -738 784 785 -780
		mu 0 4 522 518 520 525
		f 4 -736 786 787 -785
		mu 0 4 518 517 519 520
		f 4 -788 788 -620 789
		mu 0 4 520 519 523 524
		f 4 -786 -790 -618 -782
		mu 0 4 525 520 524 528
		f 4 -746 790 791 -787
		mu 0 4 723 719 721 726
		f 4 -744 792 793 -791
		mu 0 4 719 718 720 721
		f 4 -794 794 -623 795
		mu 0 4 721 720 724 725
		f 4 -792 -796 -621 -789
		mu 0 4 726 721 725 727
		f 4 -752 796 797 -793
		mu 0 4 537 533 535 540
		f 4 -750 -779 798 -797
		mu 0 4 533 532 534 535
		f 4 -799 -784 -616 799
		mu 0 4 535 534 538 539
		f 4 -798 -800 -624 -795
		mu 0 4 540 535 539 543
		f 4 800 801 802 803
		mu 0 4 759 755 757 760
		f 4 804 805 806 -802
		mu 0 4 755 754 756 757
		f 4 -807 807 808 809
		mu 0 4 685 687 686 681
		f 4 -803 -810 810 811
		mu 0 4 684 685 681 680
		f 4 812 813 814 815
		mu 0 4 216 210 214 218
		f 4 816 -804 817 -814
		mu 0 4 210 209 213 214
		f 4 -818 -812 818 819
		mu 0 4 166 169 167 160
		f 4 -815 -820 820 821
		mu 0 4 165 166 160 159
		f 4 822 823 824 825
		mu 0 4 768 764 766 769
		f 4 826 -816 827 -824
		mu 0 4 764 763 765 766
		f 4 -828 -822 828 829
		mu 0 4 667 669 668 663
		f 4 -825 -830 830 831
		mu 0 4 666 667 663 662
		f 4 832 833 834 -806
		mu 0 4 228 222 226 230
		f 4 835 -826 836 -834
		mu 0 4 222 221 225 226
		f 4 -837 -832 837 838
		mu 0 4 187 190 188 181
		f 4 -835 -839 839 -808
		mu 0 4 186 187 181 180
		f 4 -502 840 841 842
		mu 0 4 416 417 419 420
		f 4 -500 843 844 -841
		mu 0 4 417 414 418 419
		f 4 -845 845 -805 846
		mu 0 4 752 753 754 755
		f 4 -842 -847 -801 847
		mu 0 4 758 752 755 759
		f 4 -384 848 849 850
		mu 0 4 676 671 675 682
		f 4 -381 851 852 -849
		mu 0 4 671 670 674 675
		f 4 -853 853 -811 854
		mu 0 4 675 674 680 681
		f 4 -850 -855 -809 855
		mu 0 4 682 675 681 686
		f 4 -473 856 857 858
		mu 0 4 217 211 207 215
		f 4 -471 -843 859 -857
		mu 0 4 211 212 208 207
		f 4 -860 -848 -817 860
		mu 0 4 207 208 209 210
		f 4 -858 -861 -813 861
		mu 0 4 215 207 210 216
		f 4 -374 862 863 -852
		mu 0 4 155 150 154 161
		f 4 -371 864 865 -863
		mu 0 4 150 149 153 154
		f 4 -866 866 -821 867
		mu 0 4 154 153 159 160
		f 4 -864 -868 -819 -854
		mu 0 4 161 154 160 167
		f 4 -483 868 869 870
		mu 0 4 399 398 406 407
		f 4 -481 -859 871 -869
		mu 0 4 398 405 413 406
		f 4 -872 -862 -827 872
		mu 0 4 761 762 763 764
		f 4 -870 -873 -823 873
		mu 0 4 767 761 764 768
		f 4 -363 874 875 -865
		mu 0 4 658 653 657 664
		f 4 -359 876 877 -875
		mu 0 4 653 652 656 657
		f 4 -878 878 -831 879
		mu 0 4 657 656 662 663
		f 4 -876 -880 -829 -867
		mu 0 4 664 657 663 668
		f 4 -493 880 881 -844
		mu 0 4 229 223 219 227
		f 4 -491 -871 882 -881
		mu 0 4 223 224 220 219
		f 4 -883 -874 -836 883
		mu 0 4 219 220 221 222
		f 4 -882 -884 -833 -846
		mu 0 4 227 219 222 228
		f 4 -394 884 885 -877
		mu 0 4 176 171 175 182
		f 4 -391 -851 886 -885
		mu 0 4 171 170 174 175
		f 4 -887 -856 -840 887
		mu 0 4 175 174 180 181
		f 4 -886 -888 -838 -879
		mu 0 4 182 175 181 188
		f 4 -439 888 889 890
		mu 0 4 448 438 447 457
		f 4 -437 891 892 -889
		mu 0 4 438 437 446 447
		f 4 -893 893 894 895
		mu 0 4 770 771 772 773
		f 4 -890 -896 896 897
		mu 0 4 776 770 773 777
		f 4 -448 898 899 -892
		mu 0 4 437 445 456 446
		f 4 -446 900 901 -899
		mu 0 4 445 455 462 456
		f 4 -902 902 903 904
		mu 0 4 231 232 233 234
		f 4 -900 -905 905 -894
		mu 0 4 237 231 234 238
		f 4 -456 906 907 -901
		mu 0 4 455 461 465 462
		f 4 -454 908 909 -907
		mu 0 4 461 464 466 465
		f 4 -910 910 911 912
		mu 0 4 782 783 784 785
		f 4 -908 -913 913 -903
		mu 0 4 788 782 785 789
		f 4 -462 914 915 -909
		mu 0 4 464 458 463 466
		f 4 -460 -891 916 -915
		mu 0 4 458 448 457 463
		f 4 -917 -898 917 918
		mu 0 4 246 247 248 249
		f 4 -916 -919 919 -911
		mu 0 4 252 246 249 253
		f 4 -897 920 921 922
		mu 0 4 777 773 775 780
		f 4 -895 923 924 -921
		mu 0 4 773 772 774 775
		f 4 -925 925 -17 926
		mu 0 4 775 774 778 779
		f 4 -922 -927 -13 927
		mu 0 4 780 775 779 781
		f 4 -906 928 929 -924
		mu 0 4 238 234 236 241
		f 4 -904 930 931 -929
		mu 0 4 234 233 235 236
		f 4 -932 932 -20 933
		mu 0 4 236 235 239 240
		f 4 -930 -934 -18 -926
		mu 0 4 241 236 240 244
		f 4 -914 934 935 -931
		mu 0 4 789 785 787 792
		f 4 -912 936 937 -935
		mu 0 4 785 784 786 787
		f 4 -938 938 -23 939
		mu 0 4 787 786 790 791
		f 4 -936 -940 -21 -933
		mu 0 4 792 787 791 793
		f 4 -920 940 941 -937
		mu 0 4 253 249 251 256
		f 4 -918 -923 942 -941
		mu 0 4 249 248 250 251
		f 4 -943 -928 -16 943
		mu 0 4 251 250 254 255
		f 4 -942 -944 -24 -939
		mu 0 4 256 251 255 259;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode ikHandle -n "ikHandle1";
	rename -uid "C32026E7-4024-D130-B95B-CD8CF8720E6E";
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle2";
	rename -uid "75E41761-4898-7C79-31F9-0DAFE434C38A";
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle3";
	rename -uid "16687E77-4B17-409A-D4BD-A69ED8B76AAD";
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle4";
	rename -uid "922DE789-4B59-A8C2-D91B-DC831D64B611";
	setAttr ".roc" yes;
createNode transform -n "group";
	rename -uid "52218D5E-4D1A-F095-AAC1-54B0AB33DC10";
	setAttr ".rp" -type "double3" -3.8819409567282301 2.9121573044258331 2.7755575615628914e-016 ;
	setAttr ".sp" -type "double3" -3.8819409567282301 2.9121573044258331 2.7755575615628914e-016 ;
createNode ikHandle -n "ikHandle5";
	rename -uid "026A8E14-40DF-8157-A668-FD81C446B071";
	setAttr ".roc" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E30F978B-48D3-9B69-E0F0-E5BC97E21D82";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "DDDFA076-4C8A-05D1-93AE-37B21B188C79";
createNode displayLayer -n "defaultLayer";
	rename -uid "3561FFB8-46EF-6EB3-F09B-058ABF35EA85";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CDBD4370-41F7-01AD-17A9-ACA115C96D25";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "640A8E89-4A94-6AF6-A6ED-4C910481312C";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A5E5CFBE-4E76-7CFE-2AB1-239C1AED0798";
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
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 693\n                -height 417\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 693\n            -height 417\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 21 100 -ps 2 79 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 0\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 0\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 693\\n    -height 417\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 693\\n    -height 417\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4B7206B9-4CB7-2D9F-F48A-C69CBBBF69D6";
	setAttr ".b" -type "string" "playbackOptions -min 41 -max 57 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "melee_shroom_textured:light_melee_shroomSG";
	rename -uid "FFA06073-4F72-4C54-7098-9B85A8C3CFBB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "melee_shroom_textured:materialInfo1";
	rename -uid "B01AABF5-495B-12FA-BB71-7EAC3C31A6A0";
createNode file -n "melee_shroom_textured:lambert1_Flattened_Diffuse";
	rename -uid "32E473C5-48C6-303E-8889-F48AA5287E89";
	setAttr ".ftn" -type "string" "C:/Users/zac/Desktop/Capstone/CasterWars//scenes/Mushroom Legion/Textures/Light melee mushroom.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "melee_shroom_textured:place2dTexture1";
	rename -uid "F7E518A2-4ADA-483F-123C-529FD825FEDD";
createNode file -n "melee_shroom_textured:ReflectionMap";
	rename -uid "1B6C35A7-48F6-CC46-EEE7-57B53A809594";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2016/Textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "melee_shroom_textured:place2dTexture2";
	rename -uid "15BF9D8E-4426-73D9-A950-9B8EA0C8FDFB";
createNode skinCluster -n "skinCluster1";
	rename -uid "F7B078AF-4D74-F5D6-0C07-43811F79E9F9";
	setAttr -s 474 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.1491863826136724;
	setAttr ".wl[0].w[26]" 0.37999669794208341;
	setAttr ".wl[0].w[27]" 0.31129303111969431;
	setAttr ".wl[0].w[28]" 0.10384471334722328;
	setAttr ".wl[0].w[30]" 0.055679174977326586;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[1]" 0.15976566784371468;
	setAttr ".wl[1].w[30]" 0.40473684562637352;
	setAttr ".wl[1].w[31]" 0.30130618528637804;
	setAttr ".wl[1].w[32]" 0.08823978481246833;
	setAttr ".wl[1].w[38]" 0.045951516431065383;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[2]" 0.02243564662828627;
	setAttr ".wl[2].w[3]" 0.10361011489409523;
	setAttr ".wl[2].w[4]" 0.53343578872746333;
	setAttr ".wl[2].w[5]" 0.30102516990397193;
	setAttr ".wl[2].w[25]" 0.039493279846183164;
	setAttr -s 5 ".wl[3].w[1:5]"  0.016242806395097467 0.030009367602989719 
		0.13738052051456989 0.60122131708935733 0.21514598839798574;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[2]" 0.015984388185368591;
	setAttr ".wl[4].w[3]" 0.10212375679807302;
	setAttr ".wl[4].w[4]" 0.54215223291605086;
	setAttr ".wl[4].w[5]" 0.2894685128942488;
	setAttr ".wl[4].w[25]" 0.050271109206258692;
	setAttr -s 5 ".wl[5].w[1:5]"  0.016431864384973918 0.031607286869940958 
		0.13720769992433238 0.59948038365638223 0.21527276516437069;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[1]" 0.15542663395961728;
	setAttr ".wl[6].w[26]" 0.05752694014289024;
	setAttr ".wl[6].w[34]" 0.36825153191705529;
	setAttr ".wl[6].w[35]" 0.32350050999399205;
	setAttr ".wl[6].w[36]" 0.095294383986445103;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[1]" 0.16198222831188577;
	setAttr ".wl[7].w[34]" 0.056166176653575713;
	setAttr ".wl[7].w[38]" 0.37919199900833539;
	setAttr ".wl[7].w[39]" 0.28716549969453087;
	setAttr ".wl[7].w[40]" 0.11549409633167226;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[1]" 0.36903979579983243;
	setAttr ".wl[8].w[2]" 0.20453665144868749;
	setAttr ".wl[8].w[3]" 0.12664015022380498;
	setAttr ".wl[8].w[4]" 0.17522934727284939;
	setAttr ".wl[8].w[30]" 0.1245540552548257;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[1]" 0.30679896096447079;
	setAttr ".wl[9].w[2]" 0.15460744690592451;
	setAttr ".wl[9].w[3]" 0.22003449560942129;
	setAttr ".wl[9].w[25]" 0.17351462961824482;
	setAttr ".wl[9].w[26]" 0.14504446690193867;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[1]" 0.30704412289871086;
	setAttr ".wl[10].w[2]" 0.12631342236847881;
	setAttr ".wl[10].w[3]" 0.22377032131119445;
	setAttr ".wl[10].w[25]" 0.20444086054973307;
	setAttr ".wl[10].w[34]" 0.13843127287188287;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[1]" 0.37726543538840884;
	setAttr ".wl[11].w[2]" 0.20328373127516444;
	setAttr ".wl[11].w[3]" 0.12837795801352306;
	setAttr ".wl[11].w[4]" 0.16759138148979422;
	setAttr ".wl[11].w[38]" 0.12348149383310948;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.092639721904882469;
	setAttr ".wl[12].w[1]" 0.17556569241775535;
	setAttr ".wl[12].w[26]" 0.10037615138030155;
	setAttr ".wl[12].w[34]" 0.38725660200041429;
	setAttr ".wl[12].w[35]" 0.24416183229664634;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.091232154094840437;
	setAttr ".wl[13].w[1]" 0.18275025659653435;
	setAttr ".wl[13].w[30]" 0.071828301874003131;
	setAttr ".wl[13].w[38]" 0.39411157451768858;
	setAttr ".wl[13].w[39]" 0.2600777129169336;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.094358012619262965;
	setAttr ".wl[14].w[1]" 0.19316522067569314;
	setAttr ".wl[14].w[30]" 0.3842178488624286;
	setAttr ".wl[14].w[31]" 0.23781186889800443;
	setAttr ".wl[14].w[38]" 0.090447048944610794;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.093889961802495064;
	setAttr ".wl[15].w[1]" 0.1696878813939289;
	setAttr ".wl[15].w[26]" 0.42129205016102983;
	setAttr ".wl[15].w[27]" 0.24628116891327156;
	setAttr ".wl[15].w[34]" 0.068848937729274709;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[1]" 0.11682285749052713;
	setAttr ".wl[16].w[34]" 0.4148964930524095;
	setAttr ".wl[16].w[35]" 0.30633197354657804;
	setAttr ".wl[16].w[36]" 0.036814292089278638;
	setAttr ".wl[16].w[38]" 0.12513438382120656;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[1]" 0.12178297481579653;
	setAttr ".wl[17].w[34]" 0.10957887993274078;
	setAttr ".wl[17].w[38]" 0.4492862902709302;
	setAttr ".wl[17].w[39]" 0.27733838985040055;
	setAttr ".wl[17].w[40]" 0.042013465130132127;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.051058184337425511;
	setAttr ".wl[18].w[1]" 0.24245031870667214;
	setAttr ".wl[18].w[34]" 0.059376049743659357;
	setAttr ".wl[18].w[38]" 0.49520215011430752;
	setAttr ".wl[18].w[39]" 0.15191329709793541;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.044117034917910462;
	setAttr ".wl[19].w[1]" 0.2427739749632159;
	setAttr ".wl[19].w[34]" 0.43646037681210698;
	setAttr ".wl[19].w[35]" 0.1334286159557049;
	setAttr ".wl[19].w[38]" 0.14321999735106172;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[1]" 0.1148802478346171;
	setAttr ".wl[20].w[26]" 0.42972318140597254;
	setAttr ".wl[20].w[27]" 0.28853354854885616;
	setAttr ".wl[20].w[28]" 0.039872278951562701;
	setAttr ".wl[20].w[30]" 0.12699074325899168;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[1]" 0.11778549158613855;
	setAttr ".wl[21].w[26]" 0.11301630533633285;
	setAttr ".wl[21].w[30]" 0.46971381987481514;
	setAttr ".wl[21].w[31]" 0.25914191754477017;
	setAttr ".wl[21].w[32]" 0.040342465657943395;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.049907884112293653;
	setAttr ".wl[22].w[1]" 0.24824804887696506;
	setAttr ".wl[22].w[26]" 0.45826278440889995;
	setAttr ".wl[22].w[27]" 0.15679708649387905;
	setAttr ".wl[22].w[30]" 0.086784196107962189;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.050149726870299303;
	setAttr ".wl[23].w[1]" 0.2681303754554149;
	setAttr ".wl[23].w[26]" 0.062966975794229357;
	setAttr ".wl[23].w[30]" 0.46845540167191713;
	setAttr ".wl[23].w[31]" 0.15029752020813927;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[1]" 0.00063085799794154751;
	setAttr ".wl[24].w[38]" 0.027728790093260038;
	setAttr ".wl[24].w[39]" 0.19703288413204265;
	setAttr ".wl[24].w[40]" 0.48847527943674002;
	setAttr ".wl[24].w[41]" 0.28613218834001569;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[1]" 0.0021577167041714686;
	setAttr ".wl[25].w[38]" 0.034160972414155735;
	setAttr ".wl[25].w[39]" 0.22606033793324293;
	setAttr ".wl[25].w[40]" 0.4635752021448114;
	setAttr ".wl[25].w[41]" 0.27404577080361847;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[1]" 0.006050097199797282;
	setAttr ".wl[26].w[38]" 0.090192311396021227;
	setAttr ".wl[26].w[39]" 0.41571447411227719;
	setAttr ".wl[26].w[40]" 0.33110252219109704;
	setAttr ".wl[26].w[41]" 0.15694059510080721;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[1]" 0.00088938498269082705;
	setAttr ".wl[27].w[38]" 0.041835101605598987;
	setAttr ".wl[27].w[39]" 0.30216726868690746;
	setAttr ".wl[27].w[40]" 0.42571139968746602;
	setAttr ".wl[27].w[41]" 0.22939684503733654;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[1]" 0.00062153155659141178;
	setAttr ".wl[28].w[34]" 0.02638805631027643;
	setAttr ".wl[28].w[35]" 0.24447073022551752;
	setAttr ".wl[28].w[36]" 0.43419464862410406;
	setAttr ".wl[28].w[37]" 0.29432503328351056;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[1]" 0.0027327583293631184;
	setAttr ".wl[29].w[34]" 0.042005101244431881;
	setAttr ".wl[29].w[35]" 0.27337946374205685;
	setAttr ".wl[29].w[36]" 0.49981669213894214;
	setAttr ".wl[29].w[37]" 0.18206598454520595;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[1]" 0.00091372563857991626;
	setAttr ".wl[30].w[34]" 0.03680204569689588;
	setAttr ".wl[30].w[35]" 0.30175627682628653;
	setAttr ".wl[30].w[36]" 0.4057948677828071;
	setAttr ".wl[30].w[37]" 0.2547330840554306;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[1]" 0.005646381842891862;
	setAttr ".wl[31].w[34]" 0.093882084662069695;
	setAttr ".wl[31].w[35]" 0.40410537745684794;
	setAttr ".wl[31].w[36]" 0.36048758838305833;
	setAttr ".wl[31].w[37]" 0.13587856765513209;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[1]" 0.00065726636318459036;
	setAttr ".wl[32].w[26]" 0.025732307206133113;
	setAttr ".wl[32].w[27]" 0.20549182825146739;
	setAttr ".wl[32].w[28]" 0.46622558976293382;
	setAttr ".wl[32].w[29]" 0.30189300841628097;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[1]" 0.0016059710430855053;
	setAttr ".wl[33].w[26]" 0.034624889201981625;
	setAttr ".wl[33].w[27]" 0.20661321413908329;
	setAttr ".wl[33].w[28]" 0.45593221481646495;
	setAttr ".wl[33].w[29]" 0.30122371079938465;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[1]" 0.0047534503400748071;
	setAttr ".wl[34].w[26]" 0.085702776910410408;
	setAttr ".wl[34].w[27]" 0.38514005744487073;
	setAttr ".wl[34].w[28]" 0.34473172670024455;
	setAttr ".wl[34].w[29]" 0.17967198860439954;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[1]" 0.00072041706868677827;
	setAttr ".wl[35].w[26]" 0.045159170188735671;
	setAttr ".wl[35].w[27]" 0.32750604646989118;
	setAttr ".wl[35].w[28]" 0.42665670644911868;
	setAttr ".wl[35].w[29]" 0.19995765982356756;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[1]" 0.00073986536879256076;
	setAttr ".wl[36].w[30]" 0.02677137044556132;
	setAttr ".wl[36].w[31]" 0.2226608434796275;
	setAttr ".wl[36].w[32]" 0.42303392302274351;
	setAttr ".wl[36].w[33]" 0.32679399768327516;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[1]" 0.0025548233396239881;
	setAttr ".wl[37].w[30]" 0.033776881034126051;
	setAttr ".wl[37].w[31]" 0.22092927953481908;
	setAttr ".wl[37].w[32]" 0.45544417760271044;
	setAttr ".wl[37].w[33]" 0.28729483848872062;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[1]" 0.00058525712704331385;
	setAttr ".wl[38].w[30]" 0.05285653222981717;
	setAttr ".wl[38].w[31]" 0.31880930965454168;
	setAttr ".wl[38].w[32]" 0.42221126360031025;
	setAttr ".wl[38].w[33]" 0.20553763738828768;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[1]" 0.0075403709725570542;
	setAttr ".wl[39].w[30]" 0.084574035053728971;
	setAttr ".wl[39].w[31]" 0.37256525171436994;
	setAttr ".wl[39].w[32]" 0.38290099627634661;
	setAttr ".wl[39].w[33]" 0.15241934598299742;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[8]" 0.099328767242003679;
	setAttr ".wl[40].w[9]" 0.38960894776688326;
	setAttr ".wl[40].w[19]" 0.020447145225617164;
	setAttr ".wl[40].w[20]" 0.11383234877568311;
	setAttr ".wl[40].w[21]" 0.37678279098981265;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[11]" 0.019441411530450231;
	setAttr ".wl[41].w[12]" 0.10143255005811458;
	setAttr ".wl[41].w[13]" 0.39104754424539429;
	setAttr ".wl[41].w[20]" 0.11697643909755517;
	setAttr ".wl[41].w[21]" 0.37110205506848576;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[12]" 0.092261226744023164;
	setAttr ".wl[42].w[13]" 0.39177852240344474;
	setAttr ".wl[42].w[15]" 0.021574827758215172;
	setAttr ".wl[42].w[16]" 0.11339934493612353;
	setAttr ".wl[42].w[17]" 0.38098607815819346;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[7]" 0.020469622761285413;
	setAttr ".wl[43].w[8]" 0.10571673228641924;
	setAttr ".wl[43].w[9]" 0.3963097801661557;
	setAttr ".wl[43].w[16]" 0.10802209104703905;
	setAttr ".wl[43].w[17]" 0.36948177373910057;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[8]" 0.20632251039109328;
	setAttr ".wl[44].w[9]" 0.21130006232985191;
	setAttr ".wl[44].w[19]" 0.073101202317951738;
	setAttr ".wl[44].w[20]" 0.2826220234662446;
	setAttr ".wl[44].w[21]" 0.22665420149485849;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[11]" 0.073198055820432206;
	setAttr ".wl[45].w[12]" 0.2594688050254394;
	setAttr ".wl[45].w[13]" 0.2601598517782947;
	setAttr ".wl[45].w[20]" 0.22916933820404708;
	setAttr ".wl[45].w[21]" 0.17800394917178652;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[12]" 0.20992495484582413;
	setAttr ".wl[46].w[13]" 0.20578896761358245;
	setAttr ".wl[46].w[15]" 0.079123843714120748;
	setAttr ".wl[46].w[16]" 0.27446357389519693;
	setAttr ".wl[46].w[17]" 0.2306986599312757;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[7]" 0.076263964146371016;
	setAttr ".wl[47].w[8]" 0.24505389384276829;
	setAttr ".wl[47].w[9]" 0.27101373818110425;
	setAttr ".wl[47].w[16]" 0.22660119026527267;
	setAttr ".wl[47].w[17]" 0.18106721356448371;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[6]" 0.034022121114733461;
	setAttr ".wl[48].w[7]" 0.27501043641358364;
	setAttr ".wl[48].w[8]" 0.17451338774909222;
	setAttr ".wl[48].w[19]" 0.33407602600016223;
	setAttr ".wl[48].w[20]" 0.18237802872242839;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[6]" 0.036355005057458215;
	setAttr ".wl[49].w[11]" 0.32564069071675067;
	setAttr ".wl[49].w[12]" 0.19485215745569712;
	setAttr ".wl[49].w[19]" 0.28139163200980954;
	setAttr ".wl[49].w[20]" 0.1617605147602845;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[6]" 0.029452032617857286;
	setAttr ".wl[50].w[11]" 0.27341086583540031;
	setAttr ".wl[50].w[12]" 0.17096697856316145;
	setAttr ".wl[50].w[15]" 0.34545560141792053;
	setAttr ".wl[50].w[16]" 0.18071452156566031;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[6]" 0.031234930330070992;
	setAttr ".wl[51].w[7]" 0.32921281488398696;
	setAttr ".wl[51].w[8]" 0.18804323795818312;
	setAttr ".wl[51].w[15]" 0.28833150082924247;
	setAttr ".wl[51].w[16]" 0.16317751599851649;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[6]" 0.3160402566982809;
	setAttr ".wl[52].w[7]" 0.27445488688702346;
	setAttr ".wl[52].w[11]" 0.019202519062760898;
	setAttr ".wl[52].w[15]" 0.027343446706564811;
	setAttr ".wl[52].w[19]" 0.36295889064537001;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[6]" 0.30743130194559898;
	setAttr ".wl[53].w[7]" 0.015693391930177669;
	setAttr ".wl[53].w[11]" 0.30718053432686504;
	setAttr ".wl[53].w[15]" 0.030472100647533775;
	setAttr ".wl[53].w[19]" 0.33922267114982463;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[6]" 0.30220373383444982;
	setAttr ".wl[54].w[7]" 0.019206070805116542;
	setAttr ".wl[54].w[11]" 0.27205755511777574;
	setAttr ".wl[54].w[15]" 0.3800778060332522;
	setAttr ".wl[54].w[19]" 0.026454834209405705;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[6]" 0.29881656754255975;
	setAttr ".wl[55].w[7]" 0.30232423854737478;
	setAttr ".wl[55].w[11]" 0.014357473387282282;
	setAttr ".wl[55].w[15]" 0.35562131503471983;
	setAttr ".wl[55].w[19]" 0.028880405488063355;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[4]" 0.30260831508567693;
	setAttr ".wl[56].w[5]" 0.36078996530546464;
	setAttr ".wl[56].w[13]" 0.15340123019273777;
	setAttr ".wl[56].w[16]" 0.021353480674542295;
	setAttr ".wl[56].w[17]" 0.16184700874157829;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[4]" 0.30776815165931626;
	setAttr ".wl[57].w[5]" 0.35650274858496794;
	setAttr ".wl[57].w[12]" 0.018390806355197853;
	setAttr ".wl[57].w[13]" 0.16755533857190447;
	setAttr ".wl[57].w[21]" 0.14978295482861362;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[4]" 0.32963173492697473;
	setAttr ".wl[58].w[5]" 0.33638731919348236;
	setAttr ".wl[58].w[9]" 0.15242630712049882;
	setAttr ".wl[58].w[20]" 0.019838419070417761;
	setAttr ".wl[58].w[21]" 0.16171621968862632;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[4]" 0.30867163356870642;
	setAttr ".wl[59].w[5]" 0.35235504946543772;
	setAttr ".wl[59].w[8]" 0.020794803799026741;
	setAttr ".wl[59].w[9]" 0.16922111542316864;
	setAttr ".wl[59].w[17]" 0.14895739774366049;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[2]" 0.00011129665228036859;
	setAttr ".wl[60].w[3]" 0.0039591210826548581;
	setAttr ".wl[60].w[4]" 0.50675753860967288;
	setAttr ".wl[60].w[5]" 0.48902503253650637;
	setAttr ".wl[60].w[25]" 0.00014701111888557565;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[2]" 0.00010412565823239786;
	setAttr ".wl[61].w[3]" 0.0041687656697847143;
	setAttr ".wl[61].w[4]" 0.4846328298770835;
	setAttr ".wl[61].w[5]" 0.51103739573013329;
	setAttr ".wl[61].w[13]" 5.6883064766085782e-005;
	setAttr -s 5 ".wl[62].w";
	setAttr ".wl[62].w[3]" 0.0044127435404315652;
	setAttr ".wl[62].w[4]" 0.45566003070324668;
	setAttr ".wl[62].w[5]" 0.53723098777051603;
	setAttr ".wl[62].w[13]" 0.0013760935114471376;
	setAttr ".wl[62].w[21]" 0.0013201444743584439;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[3]" 0.0041263921354367326;
	setAttr ".wl[63].w[4]" 0.491878787103537;
	setAttr ".wl[63].w[5]" 0.50090163572867241;
	setAttr ".wl[63].w[9]" 0.0017458706797511489;
	setAttr ".wl[63].w[21]" 0.001347314352602832;
	setAttr -s 5 ".wl[64].w";
	setAttr ".wl[64].w[2]" 9.8951486815701244e-005;
	setAttr ".wl[64].w[3]" 0.0043317747005668632;
	setAttr ".wl[64].w[4]" 0.47003352699192502;
	setAttr ".wl[64].w[5]" 0.52549271300400124;
	setAttr ".wl[64].w[13]" 4.303381669135056e-005;
	setAttr -s 5 ".wl[65].w";
	setAttr ".wl[65].w[3]" 0.0040326267485486173;
	setAttr ".wl[65].w[4]" 0.44453456330244884;
	setAttr ".wl[65].w[5]" 0.54886938184027756;
	setAttr ".wl[65].w[13]" 0.001297208244767936;
	setAttr ".wl[65].w[17]" 0.0012662198639569933;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[2]" 0.00012191062658850026;
	setAttr ".wl[66].w[3]" 0.0041133562616259937;
	setAttr ".wl[66].w[4]" 0.47476368991751333;
	setAttr ".wl[66].w[5]" 0.52084985301928877;
	setAttr ".wl[66].w[25]" 0.00015119017498324178;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[3]" 0.0046256448145680406;
	setAttr ".wl[67].w[4]" 0.45842372694270461;
	setAttr ".wl[67].w[5]" 0.53381693451677936;
	setAttr ".wl[67].w[9]" 0.0018115568839810895;
	setAttr ".wl[67].w[17]" 0.0013221368419668003;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[1]" 0.02393912345687154;
	setAttr ".wl[68].w[2]" 0.039448439056880356;
	setAttr ".wl[68].w[3]" 0.45082657319780006;
	setAttr ".wl[68].w[4]" 0.055022546411139614;
	setAttr ".wl[68].w[25]" 0.43076331787730843;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[1]" 0.019594029741176924;
	setAttr ".wl[69].w[2]" 0.025500603827950979;
	setAttr ".wl[69].w[3]" 0.45900554336329719;
	setAttr ".wl[69].w[4]" 0.051354000671260967;
	setAttr ".wl[69].w[25]" 0.44454582239631391;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[2]" 0.014563926947842365;
	setAttr ".wl[70].w[3]" 0.1537588457787562;
	setAttr ".wl[70].w[4]" 0.53623117051679059;
	setAttr ".wl[70].w[5]" 0.23622893339729034;
	setAttr ".wl[70].w[25]" 0.05921712335932041;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[2]" 0.0091809897785551254;
	setAttr ".wl[71].w[3]" 0.1523864048665996;
	setAttr ".wl[71].w[4]" 0.53659699609670308;
	setAttr ".wl[71].w[5]" 0.2419727923532089;
	setAttr ".wl[71].w[25]" 0.059862816904933294;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[2]" 0.0037302086996178156;
	setAttr ".wl[72].w[3]" 0.48924543142686988;
	setAttr ".wl[72].w[4]" 0.019423566878490811;
	setAttr ".wl[72].w[5]" 0.0032253599548245316;
	setAttr ".wl[72].w[25]" 0.48437543304019698;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[2]" 0.0032354260173011531;
	setAttr ".wl[73].w[3]" 0.48899406645440646;
	setAttr ".wl[73].w[4]" 0.019612330383796586;
	setAttr ".wl[73].w[5]" 0.0032713614265560925;
	setAttr ".wl[73].w[25]" 0.48488681571793973;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[2]" 0.0057483241068168435;
	setAttr ".wl[74].w[3]" 0.23410430837222593;
	setAttr ".wl[74].w[4]" 0.46812420612839628;
	setAttr ".wl[74].w[5]" 0.14537995760088204;
	setAttr ".wl[74].w[25]" 0.14664320379167883;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[2]" 0.0052780717457380126;
	setAttr ".wl[75].w[3]" 0.23045728953812022;
	setAttr ".wl[75].w[4]" 0.47649592856901452;
	setAttr ".wl[75].w[5]" 0.13799955342115683;
	setAttr ".wl[75].w[25]" 0.14976915672597044;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[2]" 0.034648384683974971;
	setAttr ".wl[76].w[3]" 0.4443156040191753;
	setAttr ".wl[76].w[4]" 0.091141474873852199;
	setAttr ".wl[76].w[5]" 0.0077804834438500213;
	setAttr ".wl[76].w[25]" 0.4221140529791475;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[2]" 0.025474410021880479;
	setAttr ".wl[77].w[3]" 0.22999186089320475;
	setAttr ".wl[77].w[4]" 0.50737160671138992;
	setAttr ".wl[77].w[5]" 0.13418015182832457;
	setAttr ".wl[77].w[25]" 0.10298197054520013;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[2]" 0.0088950366078676107;
	setAttr ".wl[78].w[3]" 0.21876076886762807;
	setAttr ".wl[78].w[4]" 0.59403733650991897;
	setAttr ".wl[78].w[5]" 0.10439995574068073;
	setAttr ".wl[78].w[25]" 0.073906902273904548;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[2]" 0.0099051179879117591;
	setAttr ".wl[79].w[3]" 0.4606151943584747;
	setAttr ".wl[79].w[4]" 0.099375348347842785;
	setAttr ".wl[79].w[5]" 0.003908528595683078;
	setAttr ".wl[79].w[25]" 0.42619581071008761;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[2]" 0.021041163714308635;
	setAttr ".wl[80].w[3]" 0.2354186157447539;
	setAttr ".wl[80].w[4]" 0.55147844131744339;
	setAttr ".wl[80].w[5]" 0.092369639299984041;
	setAttr ".wl[80].w[25]" 0.099692139923510184;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[2]" 0.027738496325838257;
	setAttr ".wl[81].w[3]" 0.45175342276622871;
	setAttr ".wl[81].w[4]" 0.093174202603728759;
	setAttr ".wl[81].w[5]" 0.0061942758686959129;
	setAttr ".wl[81].w[25]" 0.42113960243550835;
	setAttr -s 5 ".wl[82].w";
	setAttr ".wl[82].w[2]" 0.0072110396766594843;
	setAttr ".wl[82].w[3]" 0.45622195635608098;
	setAttr ".wl[82].w[4]" 0.098163789943798513;
	setAttr ".wl[82].w[5]" 0.0031033323231082011;
	setAttr ".wl[82].w[25]" 0.43529988170035278;
	setAttr -s 5 ".wl[83].w";
	setAttr ".wl[83].w[2]" 0.0075109138782725104;
	setAttr ".wl[83].w[3]" 0.21409874351073643;
	setAttr ".wl[83].w[4]" 0.60772867486565363;
	setAttr ".wl[83].w[5]" 0.090916408740657262;
	setAttr ".wl[83].w[25]" 0.079745259004680394;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[2]" 0.042181875776720702;
	setAttr ".wl[84].w[3]" 0.40789142296263708;
	setAttr ".wl[84].w[4]" 0.29738256706738886;
	setAttr ".wl[84].w[5]" 0.0069085529627032592;
	setAttr ".wl[84].w[25]" 0.24563558123055015;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[2]" 0.023676605850548198;
	setAttr ".wl[85].w[3]" 0.22341479550049312;
	setAttr ".wl[85].w[4]" 0.61033858442215672;
	setAttr ".wl[85].w[5]" 0.067533588092569041;
	setAttr ".wl[85].w[25]" 0.075036426134232878;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[2]" 0.0057066106476690468;
	setAttr ".wl[86].w[3]" 0.20088228258562552;
	setAttr ".wl[86].w[4]" 0.72408846403679117;
	setAttr ".wl[86].w[5]" 0.025342659814744768;
	setAttr ".wl[86].w[25]" 0.043979982915169566;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[2]" 0.015411126592039559;
	setAttr ".wl[87].w[3]" 0.34976250793163055;
	setAttr ".wl[87].w[4]" 0.45987592315834813;
	setAttr ".wl[87].w[5]" 0.00061710622284572492;
	setAttr ".wl[87].w[25]" 0.17433333609513618;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[2]" 0.024423092629809136;
	setAttr ".wl[88].w[3]" 0.21411991215113438;
	setAttr ".wl[88].w[4]" 0.64229597973169428;
	setAttr ".wl[88].w[5]" 0.039665646538887871;
	setAttr ".wl[88].w[25]" 0.079495368948474143;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[2]" 0.041842253175788685;
	setAttr ".wl[89].w[3]" 0.4165933841850642;
	setAttr ".wl[89].w[4]" 0.28337757005837405;
	setAttr ".wl[89].w[5]" 0.0051132724419973123;
	setAttr ".wl[89].w[25]" 0.25307352013877582;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[2]" 0.015013732798575298;
	setAttr ".wl[90].w[3]" 0.37056460134685926;
	setAttr ".wl[90].w[4]" 0.38151138853088346;
	setAttr ".wl[90].w[5]" 0.00053524748544439072;
	setAttr ".wl[90].w[25]" 0.23237502983823743;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[2]" 0.0048153315242540264;
	setAttr ".wl[91].w[3]" 0.20339717423021425;
	setAttr ".wl[91].w[4]" 0.72626105191954082;
	setAttr ".wl[91].w[5]" 0.024411914176369245;
	setAttr ".wl[91].w[25]" 0.041114528149621771;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[2]" 0.014942223637245249;
	setAttr ".wl[92].w[3]" 0.22858760383118529;
	setAttr ".wl[92].w[4]" 0.73123475722448172;
	setAttr ".wl[92].w[5]" 0.0020337016365655084;
	setAttr ".wl[92].w[25]" 0.023201713670522348;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[2]" 0.0081283101905314705;
	setAttr ".wl[93].w[3]" 0.12134613174573529;
	setAttr ".wl[93].w[4]" 0.85412923366883897;
	setAttr ".wl[93].w[5]" 0.0076681375665206622;
	setAttr ".wl[93].w[25]" 0.0087281868283735943;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[2]" 0.00074196481088516534;
	setAttr ".wl[94].w[3]" 0.072519394847772464;
	setAttr ".wl[94].w[4]" 0.91955731101041938;
	setAttr ".wl[94].w[5]" 0.0022607145042297075;
	setAttr ".wl[94].w[25]" 0.0049206148266931976;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[1]" 6.7079655346938892e-005;
	setAttr ".wl[95].w[2]" 0.0042912893935169458;
	setAttr ".wl[95].w[3]" 0.1584453015906134;
	setAttr ".wl[95].w[4]" 0.81982090634096261;
	setAttr ".wl[95].w[25]" 0.017375423019560104;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[2]" 0.011632963165957111;
	setAttr ".wl[96].w[3]" 0.11590263268031605;
	setAttr ".wl[96].w[4]" 0.85411400134505144;
	setAttr ".wl[96].w[5]" 0.0064919590697503663;
	setAttr ".wl[96].w[25]" 0.011858443738924959;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[2]" 0.023492224001611366;
	setAttr ".wl[97].w[3]" 0.2101630443095682;
	setAttr ".wl[97].w[4]" 0.74151911208403631;
	setAttr ".wl[97].w[5]" 0.0018673933061073241;
	setAttr ".wl[97].w[25]" 0.022958226298676668;
	setAttr -s 5 ".wl[98].w";
	setAttr ".wl[98].w[1]" 7.0251158277953368e-005;
	setAttr ".wl[98].w[2]" 0.008577476401621837;
	setAttr ".wl[98].w[3]" 0.14226273304749112;
	setAttr ".wl[98].w[4]" 0.83113926365633639;
	setAttr ".wl[98].w[25]" 0.017950275736272642;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[2]" 0.00074857632247638049;
	setAttr ".wl[99].w[3]" 0.062152985381070856;
	setAttr ".wl[99].w[4]" 0.92986006389529052;
	setAttr ".wl[99].w[5]" 0.0026184890898898316;
	setAttr ".wl[99].w[25]" 0.0046198853112724711;
	setAttr -s 5 ".wl[100].w";
	setAttr ".wl[100].w[5]" 0.028785744747823618;
	setAttr ".wl[100].w[8]" 0.064619059264314271;
	setAttr ".wl[100].w[9]" 0.46778528437505473;
	setAttr ".wl[100].w[16]" 0.048695110745713407;
	setAttr ".wl[100].w[17]" 0.3901148008670941;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[5]" 0.029634080543539172;
	setAttr ".wl[101].w[12]" 0.044695445873775871;
	setAttr ".wl[101].w[13]" 0.39773651549795447;
	setAttr ".wl[101].w[16]" 0.070092667819221147;
	setAttr ".wl[101].w[17]" 0.4578412902655094;
	setAttr -s 5 ".wl[102].w";
	setAttr ".wl[102].w[5]" 0.030103055754600601;
	setAttr ".wl[102].w[12]" 0.063930245567959954;
	setAttr ".wl[102].w[13]" 0.46850288019043329;
	setAttr ".wl[102].w[20]" 0.050488263690124185;
	setAttr ".wl[102].w[21]" 0.386975554796882;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[5]" 0.03115794929842183;
	setAttr ".wl[103].w[8]" 0.048342163190495127;
	setAttr ".wl[103].w[9]" 0.39989958494971378;
	setAttr ".wl[103].w[20]" 0.068062318278735948;
	setAttr ".wl[103].w[21]" 0.45253798428263342;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[8]" 0.051340751160901185;
	setAttr ".wl[104].w[9]" 0.47921349725448359;
	setAttr ".wl[104].w[16]" 0.040457559969229735;
	setAttr ".wl[104].w[17]" 0.40871073664488866;
	setAttr ".wl[104].w[21]" 0.020277454970496989;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[9]" 0.020052072148779056;
	setAttr ".wl[105].w[12]" 0.037906201130000927;
	setAttr ".wl[105].w[13]" 0.40409538024440572;
	setAttr ".wl[105].w[16]" 0.05678445937663408;
	setAttr ".wl[105].w[17]" 0.48116188710018032;
	setAttr -s 5 ".wl[106].w";
	setAttr ".wl[106].w[8]" 0.053026840088914645;
	setAttr ".wl[106].w[9]" 0.47879426488833721;
	setAttr ".wl[106].w[16]" 0.040306562531117494;
	setAttr ".wl[106].w[17]" 0.40760399568234018;
	setAttr ".wl[106].w[21]" 0.020268336809290452;
	setAttr -s 5 ".wl[107].w";
	setAttr ".wl[107].w[9]" 0.020111548054115386;
	setAttr ".wl[107].w[12]" 0.038376470097517851;
	setAttr ".wl[107].w[13]" 0.40454239956666244;
	setAttr ".wl[107].w[16]" 0.057710234675037934;
	setAttr ".wl[107].w[17]" 0.4792593476066665;
	setAttr -s 5 ".wl[108].w";
	setAttr ".wl[108].w[12]" 0.051579086072727896;
	setAttr ".wl[108].w[13]" 0.48787190277006875;
	setAttr ".wl[108].w[17]" 0.020194027453644913;
	setAttr ".wl[108].w[20]" 0.041240278871378391;
	setAttr ".wl[108].w[21]" 0.39911470483218003;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[12]" 0.051356360887089968;
	setAttr ".wl[109].w[13]" 0.48353427085492012;
	setAttr ".wl[109].w[17]" 0.020147273125642524;
	setAttr ".wl[109].w[20]" 0.042489410616054803;
	setAttr ".wl[109].w[21]" 0.40247268451629264;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[8]" 0.039311780404080551;
	setAttr ".wl[110].w[9]" 0.40261351575607973;
	setAttr ".wl[110].w[13]" 0.020865662681453134;
	setAttr ".wl[110].w[20]" 0.05646456221835159;
	setAttr ".wl[110].w[21]" 0.48074447894003502;
	setAttr -s 5 ".wl[111].w";
	setAttr ".wl[111].w[8]" 0.040014323860724337;
	setAttr ".wl[111].w[9]" 0.40282772325793281;
	setAttr ".wl[111].w[13]" 0.020490839778153851;
	setAttr ".wl[111].w[20]" 0.056702257089997106;
	setAttr ".wl[111].w[21]" 0.47996485601319189;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[6]" 0.51966007475079468;
	setAttr ".wl[112].w[7]" 0.1666072644521342;
	setAttr ".wl[112].w[11]" 0.01844390923464469;
	setAttr ".wl[112].w[15]" 0.045845957043400019;
	setAttr ".wl[112].w[19]" 0.24944279451902659;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[6]" 0.52500654826716642;
	setAttr ".wl[113].w[7]" 0.025704155097262291;
	setAttr ".wl[113].w[11]" 0.1431418197859104;
	setAttr ".wl[113].w[15]" 0.049227148148266731;
	setAttr ".wl[113].w[19]" 0.25692032870139409;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[6]" 0.51463214699478455;
	setAttr ".wl[114].w[7]" 0.026033577023318478;
	setAttr ".wl[114].w[11]" 0.14045991320582452;
	setAttr ".wl[114].w[15]" 0.26629073712122653;
	setAttr ".wl[114].w[19]" 0.052583625654845853;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[6]" 0.50199782322206288;
	setAttr ".wl[115].w[7]" 0.1770832504783692;
	setAttr ".wl[115].w[11]" 0.017261970589494101;
	setAttr ".wl[115].w[15]" 0.25308014622365071;
	setAttr ".wl[115].w[19]" 0.05057680948642309;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[5]" 0.051152884629106839;
	setAttr ".wl[116].w[6]" 0.91722710859342527;
	setAttr ".wl[116].w[7]" 0.012732002776746418;
	setAttr ".wl[116].w[15]" 0.0019301120389336218;
	setAttr ".wl[116].w[19]" 0.016957891961787788;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[5]" 0.16360986688369278;
	setAttr ".wl[117].w[6]" 0.80547977003180016;
	setAttr ".wl[117].w[11]" 0.01084306231584301;
	setAttr ".wl[117].w[15]" 0.0023652101714382316;
	setAttr ".wl[117].w[19]" 0.017702090597225887;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[5]" 0.16350044480727899;
	setAttr ".wl[118].w[6]" 0.80472179847843339;
	setAttr ".wl[118].w[11]" 0.01052269110507561;
	setAttr ".wl[118].w[15]" 0.017612379401855043;
	setAttr ".wl[118].w[19]" 0.0036426862073568895;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[5]" 0.051118368758151532;
	setAttr ".wl[119].w[6]" 0.9161660577715256;
	setAttr ".wl[119].w[7]" 0.012944524933573669;
	setAttr ".wl[119].w[15]" 0.016251080017812194;
	setAttr ".wl[119].w[19]" 0.0035199685189369586;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[1]" 0.42159359136897318;
	setAttr ".wl[120].w[2]" 0.095457035193099823;
	setAttr ".wl[120].w[26]" 0.074225040688917082;
	setAttr ".wl[120].w[30]" 0.32931403634130346;
	setAttr ".wl[120].w[38]" 0.079410296407706304;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[1]" 0.39845374180009485;
	setAttr ".wl[121].w[2]" 0.19297319288582543;
	setAttr ".wl[121].w[3]" 0.13757333162091329;
	setAttr ".wl[121].w[4]" 0.13329052132115082;
	setAttr ".wl[121].w[30]" 0.13770921237201564;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[5]" 0.22204663540103078;
	setAttr ".wl[122].w[6]" 0.77446457801667556;
	setAttr ".wl[122].w[7]" 0.00038946697008341132;
	setAttr ".wl[122].w[11]" 0.0001525460019322052;
	setAttr ".wl[122].w[19]" 0.0029467736102779165;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[5]" 0.1513335329393061;
	setAttr ".wl[123].w[6]" 0.8444337474633139;
	setAttr ".wl[123].w[7]" 0.0027765354004300278;
	setAttr ".wl[123].w[15]" 0.00049065471691070971;
	setAttr ".wl[123].w[19]" 0.00096552948003933133;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[5]" 0.30891967305945356;
	setAttr ".wl[124].w[6]" 0.68665933032046267;
	setAttr ".wl[124].w[11]" 0.0027689880983330821;
	setAttr ".wl[124].w[15]" 0.0006039855855037847;
	setAttr ".wl[124].w[19]" 0.0010480229362467991;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[5]" 0.2220016735517199;
	setAttr ".wl[125].w[6]" 0.77442829607895436;
	setAttr ".wl[125].w[7]" 0.00022501818214901257;
	setAttr ".wl[125].w[11]" 0.00011341217336539626;
	setAttr ".wl[125].w[15]" 0.003231600013811209;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[1]" 0.41542660620244987;
	setAttr ".wl[126].w[2]" 0.17669314925031085;
	setAttr ".wl[126].w[3]" 0.1358476706403908;
	setAttr ".wl[126].w[4]" 0.13887617631726093;
	setAttr ".wl[126].w[34]" 0.13315639758958761;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[1]" 0.42763688360066737;
	setAttr ".wl[127].w[2]" 0.070737063566630468;
	setAttr ".wl[127].w[26]" 0.11205910114509579;
	setAttr ".wl[127].w[34]" 0.31822497359607055;
	setAttr ".wl[127].w[38]" 0.071341978091535946;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[1]" 0.43340453061299505;
	setAttr ".wl[128].w[2]" 0.095079343817798381;
	setAttr ".wl[128].w[30]" 0.061871458671025913;
	setAttr ".wl[128].w[34]" 0.10297533307734805;
	setAttr ".wl[128].w[38]" 0.30666933382083256;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[1]" 0.2810313926983774;
	setAttr ".wl[129].w[34]" 0.30176370760718579;
	setAttr ".wl[129].w[35]" 0.087461236423242605;
	setAttr ".wl[129].w[38]" 0.25902881075442025;
	setAttr ".wl[129].w[39]" 0.070714852516773855;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[0]" 0.25609903905763276;
	setAttr ".wl[130].w[1]" 0.28876748482367764;
	setAttr ".wl[130].w[34]" 0.2036064860439265;
	setAttr ".wl[130].w[38]" 0.20686455633614892;
	setAttr ".wl[130].w[39]" 0.04466243373861415;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[0]" 0.24782618028690837;
	setAttr ".wl[131].w[1]" 0.27831838701016387;
	setAttr ".wl[131].w[26]" 0.23353792065361925;
	setAttr ".wl[131].w[27]" 0.041578213970364639;
	setAttr ".wl[131].w[34]" 0.19873929807894372;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[0]" 0.24591495627796051;
	setAttr ".wl[132].w[1]" 0.29378681272396057;
	setAttr ".wl[132].w[30]" 0.19463409348458299;
	setAttr ".wl[132].w[38]" 0.21911287987736938;
	setAttr ".wl[132].w[39]" 0.046551257636126532;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[0]" 0.26049262858194461;
	setAttr ".wl[133].w[1]" 0.29597374117229108;
	setAttr ".wl[133].w[26]" 0.20491495910381965;
	setAttr ".wl[133].w[27]" 0.041466415035549355;
	setAttr ".wl[133].w[30]" 0.19715225610639522;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[1]" 0.30194970919519776;
	setAttr ".wl[134].w[30]" 0.25922035466013754;
	setAttr ".wl[134].w[31]" 0.078104641463419264;
	setAttr ".wl[134].w[38]" 0.28281301626647321;
	setAttr ".wl[134].w[39]" 0.077912278414772246;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[1]" 0.31208135629216088;
	setAttr ".wl[135].w[2]" 0.20905142569620608;
	setAttr ".wl[135].w[3]" 0.18583267497269554;
	setAttr ".wl[135].w[4]" 0.23430900338170252;
	setAttr ".wl[135].w[38]" 0.058725539657234822;
	setAttr -s 5 ".wl[136].w";
	setAttr ".wl[136].w[1]" 0.27208646603817688;
	setAttr ".wl[136].w[26]" 0.32011319316262593;
	setAttr ".wl[136].w[27]" 0.083710915683198939;
	setAttr ".wl[136].w[34]" 0.24369804512636098;
	setAttr ".wl[136].w[35]" 0.080391379989637399;
	setAttr -s 5 ".wl[137].w";
	setAttr ".wl[137].w[1]" 0.33780805826103832;
	setAttr ".wl[137].w[3]" 0.21025908705801588;
	setAttr ".wl[137].w[25]" 0.20074588392897777;
	setAttr ".wl[137].w[26]" 0.1392245788430421;
	setAttr ".wl[137].w[34]" 0.1119623919089259;
	setAttr -s 5 ".wl[138].w";
	setAttr ".wl[138].w[2]" 0.11352340377982292;
	setAttr ".wl[138].w[3]" 0.26752245729327123;
	setAttr ".wl[138].w[4]" 0.35134304202374628;
	setAttr ".wl[138].w[5]" 0.10709458064055952;
	setAttr ".wl[138].w[25]" 0.1605165162626;
	setAttr -s 5 ".wl[139].w[1:5]"  0.13321246152079669 0.12938866134438257 
		0.21969938571620573 0.44643953682610732 0.071259954592507765;
	setAttr -s 5 ".wl[140].w";
	setAttr ".wl[140].w[2]" 0.044882023397925429;
	setAttr ".wl[140].w[3]" 0.14074232503176051;
	setAttr ".wl[140].w[4]" 0.55921035780690975;
	setAttr ".wl[140].w[5]" 0.2268761740005939;
	setAttr ".wl[140].w[25]" 0.028289119762810358;
	setAttr -s 5 ".wl[141].w";
	setAttr ".wl[141].w[1]" 0.0024992119630596345;
	setAttr ".wl[141].w[2]" 0.0027775974331662292;
	setAttr ".wl[141].w[3]" 0.49487395430246234;
	setAttr ".wl[141].w[4]" 0.0063928584294291602;
	setAttr ".wl[141].w[25]" 0.49345637787188257;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[2]" 0.0034821529816756592;
	setAttr ".wl[142].w[3]" 0.41032620538582287;
	setAttr ".wl[142].w[4]" 0.17404437297116607;
	setAttr ".wl[142].w[5]" 0.034762849179359553;
	setAttr ".wl[142].w[25]" 0.37738441948197582;
	setAttr -s 5 ".wl[143].w";
	setAttr ".wl[143].w[2]" 0.0039118557817106308;
	setAttr ".wl[143].w[3]" 0.41385784469631665;
	setAttr ".wl[143].w[4]" 0.17094557677984959;
	setAttr ".wl[143].w[5]" 0.035337532319913843;
	setAttr ".wl[143].w[25]" 0.37594719042220937;
	setAttr -s 5 ".wl[144].w";
	setAttr ".wl[144].w[2]" 0.0046151742624050201;
	setAttr ".wl[144].w[3]" 0.28520013207946437;
	setAttr ".wl[144].w[4]" 0.38632426336007036;
	setAttr ".wl[144].w[5]" 0.11038824009980601;
	setAttr ".wl[144].w[25]" 0.21347219019825417;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[2]" 0.035722030249042726;
	setAttr ".wl[145].w[3]" 0.12230291466374466;
	setAttr ".wl[145].w[4]" 0.56372833618058926;
	setAttr ".wl[145].w[5]" 0.24698021000528661;
	setAttr ".wl[145].w[25]" 0.031266508901336712;
	setAttr -s 5 ".wl[146].w";
	setAttr ".wl[146].w[1]" 0.10065761035617309;
	setAttr ".wl[146].w[3]" 0.25795052275508734;
	setAttr ".wl[146].w[4]" 0.35843662770724649;
	setAttr ".wl[146].w[5]" 0.094681786409797908;
	setAttr ".wl[146].w[25]" 0.18827345277169513;
	setAttr -s 5 ".wl[147].w[1:5]"  0.13660456028659732 0.13200350496145946 
		0.22532953938412648 0.43641943653390508 0.06964295883391157;
	setAttr -s 5 ".wl[148].w[1:5]"  0.0068049566456226656 0.018367746059111647 
		0.11679395932455192 0.62880731034593029 0.22922602762478367;
	setAttr -s 5 ".wl[149].w";
	setAttr ".wl[149].w[1]" 0.20034474265076757;
	setAttr ".wl[149].w[34]" 0.30464540510832028;
	setAttr ".wl[149].w[35]" 0.071799114448698187;
	setAttr ".wl[149].w[38]" 0.36373503242100108;
	setAttr ".wl[149].w[39]" 0.059475705371212863;
	setAttr -s 5 ".wl[150].w";
	setAttr ".wl[150].w[1]" 0.15178919594597773;
	setAttr ".wl[150].w[34]" 0.44427584322868635;
	setAttr ".wl[150].w[35]" 0.23455568654960507;
	setAttr ".wl[150].w[36]" 0.029160813724420379;
	setAttr ".wl[150].w[38]" 0.1402184605513104;
	setAttr -s 5 ".wl[151].w";
	setAttr ".wl[151].w[1]" 0.19449514822487615;
	setAttr ".wl[151].w[34]" 0.093603967958716019;
	setAttr ".wl[151].w[38]" 0.48392160391385391;
	setAttr ".wl[151].w[39]" 0.20004007972651974;
	setAttr ".wl[151].w[40]" 0.027939200176034219;
	setAttr -s 5 ".wl[152].w";
	setAttr ".wl[152].w[0]" 0.053148365656774374;
	setAttr ".wl[152].w[1]" 0.33864744985484369;
	setAttr ".wl[152].w[34]" 0.20656513424132283;
	setAttr ".wl[152].w[38]" 0.36730226382374648;
	setAttr ".wl[152].w[39]" 0.034336786423312823;
	setAttr -s 5 ".wl[153].w";
	setAttr ".wl[153].w[1]" 0.14092315582049086;
	setAttr ".wl[153].w[30]" 0.086381153805913449;
	setAttr ".wl[153].w[38]" 0.38617052657800177;
	setAttr ".wl[153].w[39]" 0.29358509477326056;
	setAttr ".wl[153].w[40]" 0.092940069022333427;
	setAttr -s 5 ".wl[154].w";
	setAttr ".wl[154].w[1]" 0.14400993822733396;
	setAttr ".wl[154].w[30]" 0.37003222954811205;
	setAttr ".wl[154].w[31]" 0.28480275554661633;
	setAttr ".wl[154].w[32]" 0.096709880940865842;
	setAttr ".wl[154].w[38]" 0.10444519573707173;
	setAttr -s 5 ".wl[155].w";
	setAttr ".wl[155].w[1]" 0.21029714400160088;
	setAttr ".wl[155].w[26]" 0.31731877140965392;
	setAttr ".wl[155].w[27]" 0.06513240935475606;
	setAttr ".wl[155].w[30]" 0.35393260450284419;
	setAttr ".wl[155].w[31]" 0.053319070731145043;
	setAttr -s 5 ".wl[156].w";
	setAttr ".wl[156].w[1]" 0.2136822711172108;
	setAttr ".wl[156].w[26]" 0.10065479988874228;
	setAttr ".wl[156].w[30]" 0.45873362800841594;
	setAttr ".wl[156].w[31]" 0.19760397829870979;
	setAttr ".wl[156].w[32]" 0.02932532268692124;
	setAttr -s 5 ".wl[157].w";
	setAttr ".wl[157].w[1]" 0.20266649943749454;
	setAttr ".wl[157].w[26]" 0.4277973462936745;
	setAttr ".wl[157].w[27]" 0.2094754352026518;
	setAttr ".wl[157].w[28]" 0.025549592126974087;
	setAttr ".wl[157].w[30]" 0.13451112693920514;
	setAttr -s 5 ".wl[158].w";
	setAttr ".wl[158].w[0]" 0.046302049970525193;
	setAttr ".wl[158].w[1]" 0.35820505031689942;
	setAttr ".wl[158].w[26]" 0.25619372174058203;
	setAttr ".wl[158].w[27]" 0.033252046388991215;
	setAttr ".wl[158].w[30]" 0.30604713158300212;
	setAttr -s 5 ".wl[159].w";
	setAttr ".wl[159].w[1]" 0.1257833595215917;
	setAttr ".wl[159].w[26]" 0.40812508498551947;
	setAttr ".wl[159].w[27]" 0.2887623618634762;
	setAttr ".wl[159].w[28]" 0.10073109653129658;
	setAttr ".wl[159].w[34]" 0.076598097098116144;
	setAttr -s 5 ".wl[160].w";
	setAttr ".wl[160].w[1]" 0.13042228511592771;
	setAttr ".wl[160].w[26]" 0.12457784192920704;
	setAttr ".wl[160].w[34]" 0.356560175411268;
	setAttr ".wl[160].w[35]" 0.2952758360368305;
	setAttr ".wl[160].w[36]" 0.093163861506766907;
	setAttr -s 5 ".wl[161].w";
	setAttr ".wl[161].w[1]" 0.11997279338888711;
	setAttr ".wl[161].w[34]" 0.39396839623243662;
	setAttr ".wl[161].w[35]" 0.3450970794491629;
	setAttr ".wl[161].w[36]" 0.052291386446943443;
	setAttr ".wl[161].w[38]" 0.088670344482569774;
	setAttr -s 5 ".wl[162].w";
	setAttr ".wl[162].w[1]" 0.1195310443041859;
	setAttr ".wl[162].w[34]" 0.1168629629985215;
	setAttr ".wl[162].w[38]" 0.39452571376164852;
	setAttr ".wl[162].w[39]" 0.30690182669968702;
	setAttr ".wl[162].w[40]" 0.06217845223595711;
	setAttr -s 5 ".wl[163].w";
	setAttr ".wl[163].w[1]" 0.00038481339466226003;
	setAttr ".wl[163].w[38]" 0.016280961135427371;
	setAttr ".wl[163].w[39]" 0.14218188189860045;
	setAttr ".wl[163].w[40]" 0.5138117894586457;
	setAttr ".wl[163].w[41]" 0.32734055411266422;
	setAttr -s 5 ".wl[164].w";
	setAttr ".wl[164].w[1]" 0.0004939394647440567;
	setAttr ".wl[164].w[38]" 0.029535964413322575;
	setAttr ".wl[164].w[39]" 0.24181911592767988;
	setAttr ".wl[164].w[40]" 0.46585313794655181;
	setAttr ".wl[164].w[41]" 0.26229784224770164;
	setAttr -s 5 ".wl[165].w";
	setAttr ".wl[165].w[1]" 0.0029946146020191568;
	setAttr ".wl[165].w[38]" 0.034298897084786353;
	setAttr ".wl[165].w[39]" 0.27766996238204517;
	setAttr ".wl[165].w[40]" 0.43277966119775801;
	setAttr ".wl[165].w[41]" 0.25225686473339143;
	setAttr -s 5 ".wl[166].w";
	setAttr ".wl[166].w[1]" 0.0013464386316273018;
	setAttr ".wl[166].w[38]" 0.039523370780044434;
	setAttr ".wl[166].w[39]" 0.3039526571989874;
	setAttr ".wl[166].w[40]" 0.42147215668096688;
	setAttr ".wl[166].w[41]" 0.23370537670837396;
	setAttr -s 5 ".wl[167].w";
	setAttr ".wl[167].w[0]" 0.092796294742418614;
	setAttr ".wl[167].w[1]" 0.19012470828676498;
	setAttr ".wl[167].w[34]" 0.048850986072695786;
	setAttr ".wl[167].w[38]" 0.43209456125760692;
	setAttr ".wl[167].w[39]" 0.23613344964051369;
	setAttr -s 5 ".wl[168].w";
	setAttr ".wl[168].w[0]" 0.092718529700646674;
	setAttr ".wl[168].w[1]" 0.18622316547219206;
	setAttr ".wl[168].w[34]" 0.43384099427397754;
	setAttr ".wl[168].w[35]" 0.22544080622020726;
	setAttr ".wl[168].w[38]" 0.061776504332976524;
	setAttr -s 5 ".wl[169].w";
	setAttr ".wl[169].w[1]" 0.00070103663829761652;
	setAttr ".wl[169].w[34]" 0.022654101790956453;
	setAttr ".wl[169].w[35]" 0.21535422465980786;
	setAttr ".wl[169].w[36]" 0.4947919806128469;
	setAttr ".wl[169].w[37]" 0.26649865629809133;
	setAttr -s 5 ".wl[170].w";
	setAttr ".wl[170].w[1]" 0.0025405559795176769;
	setAttr ".wl[170].w[34]" 0.032158563927605417;
	setAttr ".wl[170].w[35]" 0.24793755352039232;
	setAttr ".wl[170].w[36]" 0.49131378525460584;
	setAttr ".wl[170].w[37]" 0.22604954131787858;
	setAttr -s 5 ".wl[171].w";
	setAttr ".wl[171].w[1]" 0.00030106368161600064;
	setAttr ".wl[171].w[34]" 0.016303467378323933;
	setAttr ".wl[171].w[35]" 0.20845345172095264;
	setAttr ".wl[171].w[36]" 0.45342990116069448;
	setAttr ".wl[171].w[37]" 0.32151211605841296;
	setAttr -s 5 ".wl[172].w";
	setAttr ".wl[172].w[1]" 0.0015853850050160392;
	setAttr ".wl[172].w[34]" 0.038372009543663467;
	setAttr ".wl[172].w[35]" 0.30020802386249856;
	setAttr ".wl[172].w[36]" 0.42850010253486309;
	setAttr ".wl[172].w[37]" 0.2313344790539589;
	setAttr -s 5 ".wl[173].w";
	setAttr ".wl[173].w[1]" 0.11221433458076888;
	setAttr ".wl[173].w[26]" 0.093957721711310727;
	setAttr ".wl[173].w[30]" 0.45719133064185441;
	setAttr ".wl[173].w[31]" 0.28481317915339671;
	setAttr ".wl[173].w[32]" 0.051823433912669276;
	setAttr -s 5 ".wl[174].w";
	setAttr ".wl[174].w[1]" 0.11099185160957464;
	setAttr ".wl[174].w[26]" 0.3893972940936985;
	setAttr ".wl[174].w[27]" 0.32290829465790782;
	setAttr ".wl[174].w[28]" 0.05715602254525648;
	setAttr ".wl[174].w[30]" 0.11954653709356251;
	setAttr -s 5 ".wl[175].w";
	setAttr ".wl[175].w[1]" 0.00040011907859756779;
	setAttr ".wl[175].w[26]" 0.015516011884107174;
	setAttr ".wl[175].w[27]" 0.13753411880838193;
	setAttr ".wl[175].w[28]" 0.49775869952516311;
	setAttr ".wl[175].w[29]" 0.34879105070375033;
	setAttr -s 5 ".wl[176].w";
	setAttr ".wl[176].w[1]" 0.00043376101052974159;
	setAttr ".wl[176].w[26]" 0.023321068030019654;
	setAttr ".wl[176].w[27]" 0.23347352898974;
	setAttr ".wl[176].w[28]" 0.46303070523709217;
	setAttr ".wl[176].w[29]" 0.27974093673261852;
	setAttr -s 5 ".wl[177].w";
	setAttr ".wl[177].w[1]" 0.002142788613429804;
	setAttr ".wl[177].w[26]" 0.034619471589807986;
	setAttr ".wl[177].w[27]" 0.24288876997616249;
	setAttr ".wl[177].w[28]" 0.43741469565831775;
	setAttr ".wl[177].w[29]" 0.28293427416228206;
	setAttr -s 5 ".wl[178].w";
	setAttr ".wl[178].w[1]" 0.00089329122740574045;
	setAttr ".wl[178].w[26]" 0.030879386224096136;
	setAttr ".wl[178].w[27]" 0.25820474116299058;
	setAttr ".wl[178].w[28]" 0.44598405031908994;
	setAttr ".wl[178].w[29]" 0.2640385310664175;
	setAttr -s 5 ".wl[179].w";
	setAttr ".wl[179].w[0]" 0.094600347687180619;
	setAttr ".wl[179].w[1]" 0.18840081011136547;
	setAttr ".wl[179].w[26]" 0.43358933624398721;
	setAttr ".wl[179].w[27]" 0.2330542973491814;
	setAttr ".wl[179].w[30]" 0.050355208608285323;
	setAttr -s 5 ".wl[180].w";
	setAttr ".wl[180].w[0]" 0.0950932735443248;
	setAttr ".wl[180].w[1]" 0.20737095351725141;
	setAttr ".wl[180].w[30]" 0.42323562096104828;
	setAttr ".wl[180].w[31]" 0.2223932381412064;
	setAttr ".wl[180].w[32]" 0.051906913836169084;
	setAttr -s 5 ".wl[181].w";
	setAttr ".wl[181].w[1]" 0.00045034033724896435;
	setAttr ".wl[181].w[30]" 0.015860589674716909;
	setAttr ".wl[181].w[31]" 0.15716992505076663;
	setAttr ".wl[181].w[32]" 0.46719722474180569;
	setAttr ".wl[181].w[33]" 0.35932192019546166;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[1]" 0.0036405877239202426;
	setAttr ".wl[182].w[30]" 0.032977601840717879;
	setAttr ".wl[182].w[31]" 0.23876076369464755;
	setAttr ".wl[182].w[32]" 0.47009497993013627;
	setAttr ".wl[182].w[33]" 0.25452606681057816;
	setAttr -s 5 ".wl[183].w";
	setAttr ".wl[183].w[1]" 0.00046456115038442936;
	setAttr ".wl[183].w[30]" 0.026268210391716982;
	setAttr ".wl[183].w[31]" 0.23638445205491054;
	setAttr ".wl[183].w[32]" 0.4441678927106868;
	setAttr ".wl[183].w[33]" 0.2927148836923012;
	setAttr -s 5 ".wl[184].w";
	setAttr ".wl[184].w[1]" 0.0010147806235553519;
	setAttr ".wl[184].w[30]" 0.033839018145293262;
	setAttr ".wl[184].w[31]" 0.25276553874008584;
	setAttr ".wl[184].w[32]" 0.46431237290576266;
	setAttr ".wl[184].w[33]" 0.24806828958530286;
	setAttr -s 5 ".wl[185].w";
	setAttr ".wl[185].w[1]" 0.015653740716700087;
	setAttr ".wl[185].w[38]" 0.13021542820994061;
	setAttr ".wl[185].w[39]" 0.36569313362576483;
	setAttr ".wl[185].w[40]" 0.34929675106926594;
	setAttr ".wl[185].w[41]" 0.13914094637832849;
	setAttr -s 5 ".wl[186].w";
	setAttr ".wl[186].w[1]" 0.035090708406856269;
	setAttr ".wl[186].w[38]" 0.18576795778959351;
	setAttr ".wl[186].w[39]" 0.40608475211122874;
	setAttr ".wl[186].w[40]" 0.25891663444306379;
	setAttr ".wl[186].w[41]" 0.11413994724925769;
	setAttr -s 5 ".wl[187].w";
	setAttr ".wl[187].w[1]" 0.070758477950173662;
	setAttr ".wl[187].w[38]" 0.33763218570898579;
	setAttr ".wl[187].w[39]" 0.42964398553534178;
	setAttr ".wl[187].w[40]" 0.12337666475508662;
	setAttr ".wl[187].w[41]" 0.03858868605041231;
	setAttr -s 5 ".wl[188].w";
	setAttr ".wl[188].w[1]" 0.022974110873453062;
	setAttr ".wl[188].w[38]" 0.21200457704784925;
	setAttr ".wl[188].w[39]" 0.45969548541386412;
	setAttr ".wl[188].w[40]" 0.21676632084788244;
	setAttr ".wl[188].w[41]" 0.088559505816950934;
	setAttr -s 5 ".wl[189].w";
	setAttr ".wl[189].w[1]" 0.034393604105175918;
	setAttr ".wl[189].w[34]" 0.18899976848399591;
	setAttr ".wl[189].w[35]" 0.40387295761512237;
	setAttr ".wl[189].w[36]" 0.29755905636380275;
	setAttr ".wl[189].w[37]" 0.075174613431902973;
	setAttr -s 5 ".wl[190].w";
	setAttr ".wl[190].w[1]" 0.015727946482134995;
	setAttr ".wl[190].w[34]" 0.12231782416651805;
	setAttr ".wl[190].w[35]" 0.4110320259755566;
	setAttr ".wl[190].w[36]" 0.30543922399195533;
	setAttr ".wl[190].w[37]" 0.14548297938383503;
	setAttr -s 5 ".wl[191].w";
	setAttr ".wl[191].w[1]" 0.023515696562133363;
	setAttr ".wl[191].w[34]" 0.19639170337587764;
	setAttr ".wl[191].w[35]" 0.47877640825058509;
	setAttr ".wl[191].w[36]" 0.20131431096071162;
	setAttr ".wl[191].w[37]" 0.10000188085069234;
	setAttr -s 5 ".wl[192].w";
	setAttr ".wl[192].w[1]" 0.06444735065099573;
	setAttr ".wl[192].w[34]" 0.34076115029184706;
	setAttr ".wl[192].w[35]" 0.43336432916164708;
	setAttr ".wl[192].w[36]" 0.13156859054265282;
	setAttr ".wl[192].w[37]" 0.029858579352857292;
	setAttr -s 5 ".wl[193].w";
	setAttr ".wl[193].w[1]" 0.014580528136864166;
	setAttr ".wl[193].w[26]" 0.12290684805332135;
	setAttr ".wl[193].w[27]" 0.39693140298374829;
	setAttr ".wl[193].w[28]" 0.31933126100362796;
	setAttr ".wl[193].w[29]" 0.14624995982243827;
	setAttr -s 5 ".wl[194].w";
	setAttr ".wl[194].w[1]" 0.029441903856560682;
	setAttr ".wl[194].w[26]" 0.19337537785152351;
	setAttr ".wl[194].w[27]" 0.37820754812390278;
	setAttr ".wl[194].w[28]" 0.27026902729947294;
	setAttr ".wl[194].w[29]" 0.12870614286854018;
	setAttr -s 5 ".wl[195].w";
	setAttr ".wl[195].w[1]" 0.06841484024546747;
	setAttr ".wl[195].w[26]" 0.32883209167046923;
	setAttr ".wl[195].w[27]" 0.43021460291763036;
	setAttr ".wl[195].w[28]" 0.12703814888040615;
	setAttr ".wl[195].w[29]" 0.045500316286026576;
	setAttr -s 5 ".wl[196].w";
	setAttr ".wl[196].w[1]" 0.020342777456874121;
	setAttr ".wl[196].w[26]" 0.20525668342877729;
	setAttr ".wl[196].w[27]" 0.46236961830051071;
	setAttr ".wl[196].w[28]" 0.22477600113516016;
	setAttr ".wl[196].w[29]" 0.087254919678677684;
	setAttr -s 5 ".wl[197].w";
	setAttr ".wl[197].w[1]" 0.038004826678007357;
	setAttr ".wl[197].w[30]" 0.18150786510241987;
	setAttr ".wl[197].w[31]" 0.37704004965313093;
	setAttr ".wl[197].w[32]" 0.28621888946034085;
	setAttr ".wl[197].w[33]" 0.11722836910610084;
	setAttr -s 5 ".wl[198].w";
	setAttr ".wl[198].w[1]" 0.015526140805677739;
	setAttr ".wl[198].w[30]" 0.1322127340816357;
	setAttr ".wl[198].w[31]" 0.41013656129987425;
	setAttr ".wl[198].w[32]" 0.27798700566212009;
	setAttr ".wl[198].w[33]" 0.16413755815069231;
	setAttr -s 5 ".wl[199].w";
	setAttr ".wl[199].w[1]" 0.020217937243329178;
	setAttr ".wl[199].w[30]" 0.23174594381672486;
	setAttr ".wl[199].w[31]" 0.43832716984817605;
	setAttr ".wl[199].w[32]" 0.22388923909176395;
	setAttr ".wl[199].w[33]" 0.085819710000005961;
	setAttr -s 5 ".wl[200].w";
	setAttr ".wl[200].w[1]" 0.080951543630701478;
	setAttr ".wl[200].w[30]" 0.32324088083235314;
	setAttr ".wl[200].w[31]" 0.41130549158493757;
	setAttr ".wl[200].w[32]" 0.1484721817746712;
	setAttr ".wl[200].w[33]" 0.036029902177336585;
	setAttr -s 5 ".wl[201].w";
	setAttr ".wl[201].w[2]" 0.00010327311303822095;
	setAttr ".wl[201].w[3]" 0.0066446178632063573;
	setAttr ".wl[201].w[4]" 0.52380043804090648;
	setAttr ".wl[201].w[5]" 0.46937970639501408;
	setAttr ".wl[201].w[25]" 7.1964587835026618e-005;
	setAttr -s 5 ".wl[202].w";
	setAttr ".wl[202].w[3]" 0.0034128814202347133;
	setAttr ".wl[202].w[4]" 0.4941441980086887;
	setAttr ".wl[202].w[5]" 0.50194549432789315;
	setAttr ".wl[202].w[9]" 0.00027566688641935094;
	setAttr ".wl[202].w[21]" 0.00022175935676402924;
	setAttr -s 5 ".wl[203].w";
	setAttr ".wl[203].w[3]" 0.0037239920491676437;
	setAttr ".wl[203].w[4]" 0.45716129812959483;
	setAttr ".wl[203].w[5]" 0.53867814189797869;
	setAttr ".wl[203].w[13]" 0.00022002047638832741;
	setAttr ".wl[203].w[21]" 0.00021654744687047483;
	setAttr -s 5 ".wl[204].w";
	setAttr ".wl[204].w[3]" 0.0039529487058665306;
	setAttr ".wl[204].w[4]" 0.48068056547033278;
	setAttr ".wl[204].w[5]" 0.51383273042750821;
	setAttr ".wl[204].w[20]" 0.00045440641814946565;
	setAttr ".wl[204].w[21]" 0.0010793489781428234;
	setAttr -s 5 ".wl[205].w";
	setAttr ".wl[205].w[2]" 9.0304984849009847e-005;
	setAttr ".wl[205].w[3]" 0.0059813740297917344;
	setAttr ".wl[205].w[4]" 0.50666476175567832;
	setAttr ".wl[205].w[5]" 0.48722561581098234;
	setAttr ".wl[205].w[13]" 3.794341869861833e-005;
	setAttr -s 5 ".wl[206].w";
	setAttr ".wl[206].w[3]" 0.0034405105536562189;
	setAttr ".wl[206].w[4]" 0.44366150854293451;
	setAttr ".wl[206].w[5]" 0.55252413262928723;
	setAttr ".wl[206].w[13]" 0.00019155500759911504;
	setAttr ".wl[206].w[17]" 0.00018229326652310495;
	setAttr -s 5 ".wl[207].w";
	setAttr ".wl[207].w[3]" 0.0038698837273346059;
	setAttr ".wl[207].w[4]" 0.44283259037682426;
	setAttr ".wl[207].w[5]" 0.55170534551409478;
	setAttr ".wl[207].w[12]" 0.00055831108514047174;
	setAttr ".wl[207].w[13]" 0.0010338692966059297;
	setAttr -s 5 ".wl[208].w";
	setAttr ".wl[208].w[2]" 0.0001069809919340293;
	setAttr ".wl[208].w[3]" 0.004826026295043459;
	setAttr ".wl[208].w[4]" 0.46933392615949876;
	setAttr ".wl[208].w[5]" 0.52565742755972467;
	setAttr ".wl[208].w[25]" 7.5638993799302017e-005;
	setAttr -s 5 ".wl[209].w";
	setAttr ".wl[209].w[3]" 0.0039768281837302653;
	setAttr ".wl[209].w[4]" 0.45845380775902522;
	setAttr ".wl[209].w[5]" 0.53704763177459502;
	setAttr ".wl[209].w[9]" 0.0002999018660850865;
	setAttr ".wl[209].w[25]" 0.00022183041656434165;
	setAttr -s 5 ".wl[210].w";
	setAttr ".wl[210].w[3]" 0.0040604310755989678;
	setAttr ".wl[210].w[4]" 0.44545173904864932;
	setAttr ".wl[210].w[5]" 0.54894160617703458;
	setAttr ".wl[210].w[16]" 0.00054924437745323246;
	setAttr ".wl[210].w[17]" 0.00099697932126383481;
	setAttr -s 5 ".wl[211].w";
	setAttr ".wl[211].w[2]" 0.00010168276102787553;
	setAttr ".wl[211].w[3]" 0.0038844830020387383;
	setAttr ".wl[211].w[4]" 0.50374206357281681;
	setAttr ".wl[211].w[5]" 0.49210971673136533;
	setAttr ".wl[211].w[25]" 0.00016205393275113892;
	setAttr -s 5 ".wl[212].w";
	setAttr ".wl[212].w[3]" 0.0040642850977304981;
	setAttr ".wl[212].w[4]" 0.48160624855376166;
	setAttr ".wl[212].w[5]" 0.5122568789091938;
	setAttr ".wl[212].w[8]" 0.00065059704878390621;
	setAttr ".wl[212].w[9]" 0.0014219903905299716;
	setAttr -s 5 ".wl[213].w";
	setAttr ".wl[213].w[8]" 0.04154666615377519;
	setAttr ".wl[213].w[9]" 0.12394650940146175;
	setAttr ".wl[213].w[13]" 0.13452777664589469;
	setAttr ".wl[213].w[20]" 0.12377324449929601;
	setAttr ".wl[213].w[21]" 0.57620580329957227;
	setAttr -s 5 ".wl[214].w";
	setAttr ".wl[214].w[8]" 0.12170290869789864;
	setAttr ".wl[214].w[9]" 0.2490122051046095;
	setAttr ".wl[214].w[19]" 0.038193223802540088;
	setAttr ".wl[214].w[20]" 0.196171909477589;
	setAttr ".wl[214].w[21]" 0.39491975291736292;
	setAttr -s 5 ".wl[215].w";
	setAttr ".wl[215].w[11]" 0.037699664559234652;
	setAttr ".wl[215].w[12]" 0.16998356024438202;
	setAttr ".wl[215].w[13]" 0.42008907907586468;
	setAttr ".wl[215].w[20]" 0.14157651734558852;
	setAttr ".wl[215].w[21]" 0.23065117877493013;
	setAttr -s 5 ".wl[216].w";
	setAttr ".wl[216].w[8]" 0.084186591308073017;
	setAttr ".wl[216].w[12]" 0.11667877385990524;
	setAttr ".wl[216].w[19]" 0.12248292796930144;
	setAttr ".wl[216].w[20]" 0.4574270744814985;
	setAttr ".wl[216].w[21]" 0.21922463238122167;
	setAttr -s 5 ".wl[217].w";
	setAttr ".wl[217].w[12]" 0.1019015207769515;
	setAttr ".wl[217].w[13]" 0.60096666178336333;
	setAttr ".wl[217].w[17]" 0.13076820230354608;
	setAttr ".wl[217].w[20]" 0.046021327574198113;
	setAttr ".wl[217].w[21]" 0.1203422875619409;
	setAttr -s 5 ".wl[218].w";
	setAttr ".wl[218].w[12]" 0.1192046132826744;
	setAttr ".wl[218].w[13]" 0.25085815625332319;
	setAttr ".wl[218].w[15]" 0.041002469212594268;
	setAttr ".wl[218].w[16]" 0.18726987997159805;
	setAttr ".wl[218].w[17]" 0.40166488127981004;
	setAttr -s 5 ".wl[219].w";
	setAttr ".wl[219].w[11]" 0.11499905561642754;
	setAttr ".wl[219].w[12]" 0.42327695960211109;
	setAttr ".wl[219].w[13]" 0.26632929260200006;
	setAttr ".wl[219].w[16]" 0.11498534399192742;
	setAttr ".wl[219].w[20]" 0.080409348187533841;
	setAttr -s 5 ".wl[220].w";
	setAttr ".wl[220].w[9]" 0.13612892820079897;
	setAttr ".wl[220].w[12]" 0.039098136887199007;
	setAttr ".wl[220].w[13]" 0.12468697352253535;
	setAttr ".wl[220].w[16]" 0.11763344321411878;
	setAttr ".wl[220].w[17]" 0.58245251817534793;
	setAttr -s 5 ".wl[221].w";
	setAttr ".wl[221].w[7]" 0.038834468669561875;
	setAttr ".wl[221].w[8]" 0.1683458425740349;
	setAttr ".wl[221].w[9]" 0.4289692980969364;
	setAttr ".wl[221].w[16]" 0.13502124852556832;
	setAttr ".wl[221].w[17]" 0.22882914213389852;
	setAttr -s 5 ".wl[222].w";
	setAttr ".wl[222].w[8]" 0.10836661562916483;
	setAttr ".wl[222].w[12]" 0.083898388607453162;
	setAttr ".wl[222].w[15]" 0.1285272662751043;
	setAttr ".wl[222].w[16]" 0.45453100664190044;
	setAttr ".wl[222].w[17]" 0.22467672284637721;
	setAttr -s 5 ".wl[223].w";
	setAttr ".wl[223].w[8]" 0.10818832902953686;
	setAttr ".wl[223].w[9]" 0.60144399095930268;
	setAttr ".wl[223].w[16]" 0.043588577712744984;
	setAttr ".wl[223].w[17]" 0.11742465771686089;
	setAttr ".wl[223].w[21]" 0.12935444458155468;
	setAttr -s 5 ".wl[224].w";
	setAttr ".wl[224].w[7]" 0.11879786388950986;
	setAttr ".wl[224].w[8]" 0.40522536998745357;
	setAttr ".wl[224].w[9]" 0.27915914333340763;
	setAttr ".wl[224].w[16]" 0.081416322687812903;
	setAttr ".wl[224].w[20]" 0.11540130010181596;
	setAttr -s 5 ".wl[225].w";
	setAttr ".wl[225].w[7]" 0.13354632494627264;
	setAttr ".wl[225].w[8]" 0.27380831058313626;
	setAttr ".wl[225].w[9]" 0.099307066997072091;
	setAttr ".wl[225].w[19]" 0.17402810726235224;
	setAttr ".wl[225].w[20]" 0.31931019021116686;
	setAttr -s 5 ".wl[226].w";
	setAttr ".wl[226].w[11]" 0.16866590035515952;
	setAttr ".wl[226].w[12]" 0.31435157437064482;
	setAttr ".wl[226].w[13]" 0.1050215116034405;
	setAttr ".wl[226].w[19]" 0.13731149058736655;
	setAttr ".wl[226].w[20]" 0.2746495230833888;
	setAttr -s 5 ".wl[227].w";
	setAttr ".wl[227].w[6]" 0.068844334652923708;
	setAttr ".wl[227].w[7]" 0.11307414306321739;
	setAttr ".wl[227].w[11]" 0.15141784268899519;
	setAttr ".wl[227].w[19]" 0.51660272483633141;
	setAttr ".wl[227].w[20]" 0.15006095475853234;
	setAttr -s 5 ".wl[228].w";
	setAttr ".wl[228].w[11]" 0.13044089976546924;
	setAttr ".wl[228].w[12]" 0.27567748966075095;
	setAttr ".wl[228].w[13]" 0.090246571844806098;
	setAttr ".wl[228].w[15]" 0.1847203559708519;
	setAttr ".wl[228].w[16]" 0.31891468275812168;
	setAttr -s 5 ".wl[229].w";
	setAttr ".wl[229].w[6]" 0.063417040647604797;
	setAttr ".wl[229].w[11]" 0.49691055297324394;
	setAttr ".wl[229].w[12]" 0.16377955909737588;
	setAttr ".wl[229].w[15]" 0.1609003396359571;
	setAttr ".wl[229].w[19]" 0.11499250764581825;
	setAttr -s 5 ".wl[230].w";
	setAttr ".wl[230].w[7]" 0.17513152579109786;
	setAttr ".wl[230].w[8]" 0.29729808666505658;
	setAttr ".wl[230].w[9]" 0.11283786602015058;
	setAttr ".wl[230].w[15]" 0.13891238698053646;
	setAttr ".wl[230].w[16]" 0.27582013454315846;
	setAttr -s 5 ".wl[231].w";
	setAttr ".wl[231].w[6]" 0.059438549927045906;
	setAttr ".wl[231].w[7]" 0.14924847652927997;
	setAttr ".wl[231].w[11]" 0.11396887076710489;
	setAttr ".wl[231].w[15]" 0.52772471179369906;
	setAttr ".wl[231].w[16]" 0.14961939098287014;
	setAttr -s 5 ".wl[232].w";
	setAttr ".wl[232].w[6]" 0.063685193977015192;
	setAttr ".wl[232].w[7]" 0.49814498008542457;
	setAttr ".wl[232].w[8]" 0.16161076355580181;
	setAttr ".wl[232].w[15]" 0.12270550251674402;
	setAttr ".wl[232].w[19]" 0.15385355986501431;
	setAttr -s 5 ".wl[233].w";
	setAttr ".wl[233].w[6]" 0.13246172407414042;
	setAttr ".wl[233].w[7]" 0.3549032608478776;
	setAttr ".wl[233].w[8]" 0.04279484012590682;
	setAttr ".wl[233].w[19]" 0.42907960751737856;
	setAttr ".wl[233].w[20]" 0.040760567434696769;
	setAttr -s 5 ".wl[234].w";
	setAttr ".wl[234].w[6]" 0.13042573923910181;
	setAttr ".wl[234].w[11]" 0.40942436952183398;
	setAttr ".wl[234].w[12]" 0.048663366924208598;
	setAttr ".wl[234].w[19]" 0.37628508466116867;
	setAttr ".wl[234].w[20]" 0.035201439653686883;
	setAttr -s 5 ".wl[235].w";
	setAttr ".wl[235].w[6]" 0.3884275638405158;
	setAttr ".wl[235].w[7]" 0.084449714608819795;
	setAttr ".wl[235].w[11]" 0.095631285132414021;
	setAttr ".wl[235].w[15]" 0.012621482445790975;
	setAttr ".wl[235].w[19]" 0.41886995397245946;
	setAttr -s 5 ".wl[236].w";
	setAttr ".wl[236].w[6]" 0.12173915394978443;
	setAttr ".wl[236].w[11]" 0.35481760088943076;
	setAttr ".wl[236].w[12]" 0.041778010775195704;
	setAttr ".wl[236].w[15]" 0.44223958774870825;
	setAttr ".wl[236].w[16]" 0.039425646636880834;
	setAttr -s 5 ".wl[237].w";
	setAttr ".wl[237].w[6]" 0.36781072170853213;
	setAttr ".wl[237].w[7]" 0.0091135251626930144;
	setAttr ".wl[237].w[11]" 0.32998674165750752;
	setAttr ".wl[237].w[15]" 0.1539421597143375;
	setAttr ".wl[237].w[19]" 0.1391468517569299;
	setAttr -s 5 ".wl[238].w";
	setAttr ".wl[238].w[6]" 0.12218021893654453;
	setAttr ".wl[238].w[7]" 0.40234304741142107;
	setAttr ".wl[238].w[8]" 0.046376456757593047;
	setAttr ".wl[238].w[15]" 0.3934678904940877;
	setAttr ".wl[238].w[16]" 0.03563238640035362;
	setAttr -s 5 ".wl[239].w";
	setAttr ".wl[239].w[6]" 0.3707731144077866;
	setAttr ".wl[239].w[7]" 0.097756308002274861;
	setAttr ".wl[239].w[11]" 0.080388841066689226;
	setAttr ".wl[239].w[15]" 0.43783567069002371;
	setAttr ".wl[239].w[19]" 0.013246065833225401;
	setAttr -s 5 ".wl[240].w";
	setAttr ".wl[240].w[6]" 0.36955518594683312;
	setAttr ".wl[240].w[7]" 0.33409079564179783;
	setAttr ".wl[240].w[11]" 0.007105010767485956;
	setAttr ".wl[240].w[15]" 0.14421919580044887;
	setAttr ".wl[240].w[19]" 0.14502981184343422;
	setAttr -s 5 ".wl[241].w";
	setAttr ".wl[241].w[4]" 0.37692964567481718;
	setAttr ".wl[241].w[5]" 0.45502294479783278;
	setAttr ".wl[241].w[13]" 0.13165744054631831;
	setAttr ".wl[241].w[17]" 0.019472361116494655;
	setAttr ".wl[241].w[21]" 0.016917607864537255;
	setAttr -s 5 ".wl[242].w";
	setAttr ".wl[242].w[4]" 0.12159562794748929;
	setAttr ".wl[242].w[5]" 0.13985599262431853;
	setAttr ".wl[242].w[12]" 0.047360567973475334;
	setAttr ".wl[242].w[13]" 0.37140624556213625;
	setAttr ".wl[242].w[21]" 0.31978156589258067;
	setAttr -s 5 ".wl[243].w";
	setAttr ".wl[243].w[4]" 0.12027960271340017;
	setAttr ".wl[243].w[5]" 0.13954045744880564;
	setAttr ".wl[243].w[13]" 0.32728712661741827;
	setAttr ".wl[243].w[16]" 0.053047796588626371;
	setAttr ".wl[243].w[17]" 0.35984501663174956;
	setAttr -s 5 ".wl[244].w";
	setAttr ".wl[244].w[4]" 0.058358464440964319;
	setAttr ".wl[244].w[5]" 0.067203625061215813;
	setAttr ".wl[244].w[13]" 0.6284950959827067;
	setAttr ".wl[244].w[17]" 0.14179373211409388;
	setAttr ".wl[244].w[21]" 0.10414908240101921;
	setAttr -s 5 ".wl[245].w";
	setAttr ".wl[245].w[4]" 0.40323229526345589;
	setAttr ".wl[245].w[5]" 0.43036316740531422;
	setAttr ".wl[245].w[9]" 0.017276114747836035;
	setAttr ".wl[245].w[13]" 0.020630998714380858;
	setAttr ".wl[245].w[21]" 0.12849742386901306;
	setAttr -s 5 ".wl[246].w";
	setAttr ".wl[246].w[4]" 0.13265832511228484;
	setAttr ".wl[246].w[5]" 0.13512019467047234;
	setAttr ".wl[246].w[9]" 0.32441298689115772;
	setAttr ".wl[246].w[20]" 0.050445375643823898;
	setAttr ".wl[246].w[21]" 0.35736311768226126;
	setAttr -s 5 ".wl[247].w";
	setAttr ".wl[247].w[4]" 0.063210471919215916;
	setAttr ".wl[247].w[5]" 0.067280002523949639;
	setAttr ".wl[247].w[9]" 0.10782888201594183;
	setAttr ".wl[247].w[13]" 0.1475130163289112;
	setAttr ".wl[247].w[21]" 0.61416762721198148;
	setAttr -s 5 ".wl[248].w";
	setAttr ".wl[248].w[4]" 0.40295497520886586;
	setAttr ".wl[248].w[5]" 0.42741295237197285;
	setAttr ".wl[248].w[9]" 0.13329977488254136;
	setAttr ".wl[248].w[17]" 0.016739147338625554;
	setAttr ".wl[248].w[21]" 0.019593150197994399;
	setAttr -s 5 ".wl[249].w";
	setAttr ".wl[249].w[4]" 0.12225976388862797;
	setAttr ".wl[249].w[5]" 0.13667035429827931;
	setAttr ".wl[249].w[8]" 0.050551020621834107;
	setAttr ".wl[249].w[9]" 0.37216358089922497;
	setAttr ".wl[249].w[17]" 0.31835528029203353;
	setAttr -s 5 ".wl[250].w";
	setAttr ".wl[250].w[4]" 0.063487804672840487;
	setAttr ".wl[250].w[5]" 0.065862303161576721;
	setAttr ".wl[250].w[9]" 0.6276761239490235;
	setAttr ".wl[250].w[17]" 0.10425045215202998;
	setAttr ".wl[250].w[21]" 0.13872331606452926;
	setAttr -s 5 ".wl[251].w";
	setAttr ".wl[251].w[4]" 0.3793944962568519;
	setAttr ".wl[251].w[5]" 0.4532267496680405;
	setAttr ".wl[251].w[9]" 0.021197918955196654;
	setAttr ".wl[251].w[13]" 0.017452632385253002;
	setAttr ".wl[251].w[17]" 0.12872820273465807;
	setAttr -s 5 ".wl[252].w";
	setAttr ".wl[252].w[5]" 0.065889797230888558;
	setAttr ".wl[252].w[9]" 0.14799641690258469;
	setAttr ".wl[252].w[13]" 0.10868382366322508;
	setAttr ".wl[252].w[16]" 0.061343444301922796;
	setAttr ".wl[252].w[17]" 0.61608651790137881;
	setAttr -s 5 ".wl[253].w";
	setAttr ".wl[253].w[2]" 0.0030112570747496846;
	setAttr ".wl[253].w[3]" 0.026688215893758308;
	setAttr ".wl[253].w[4]" 0.54551077660317882;
	setAttr ".wl[253].w[5]" 0.42077933087141933;
	setAttr ".wl[253].w[25]" 0.0040104195568938655;
	setAttr -s 5 ".wl[254].w[1:5]"  0.00014394227702125862 0.0023954137770471006 
		0.030852348090902544 0.57458232892908889 0.39202596692594011;
	setAttr -s 5 ".wl[255].w";
	setAttr ".wl[255].w[3]" 0.0053358479420007937;
	setAttr ".wl[255].w[4]" 0.4303517997364899;
	setAttr ".wl[255].w[5]" 0.50267932203552756;
	setAttr ".wl[255].w[13]" 0.032149653441743344;
	setAttr ".wl[255].w[21]" 0.029483376844238372;
	setAttr -s 5 ".wl[256].w";
	setAttr ".wl[256].w[3]" 0.0050348305440884675;
	setAttr ".wl[256].w[4]" 0.46200031435070177;
	setAttr ".wl[256].w[5]" 0.47085480161017623;
	setAttr ".wl[256].w[9]" 0.031043089269994571;
	setAttr ".wl[256].w[21]" 0.031066964225038834;
	setAttr -s 5 ".wl[257].w";
	setAttr ".wl[257].w[2]" 0.0038322910572602554;
	setAttr ".wl[257].w[3]" 0.034174863634965677;
	setAttr ".wl[257].w[4]" 0.5595639701804358;
	setAttr ".wl[257].w[5]" 0.39983767758592764;
	setAttr ".wl[257].w[25]" 0.0025911975414106376;
	setAttr -s 5 ".wl[258].w";
	setAttr ".wl[258].w[3]" 0.0049847672808542272;
	setAttr ".wl[258].w[4]" 0.42145495403104516;
	setAttr ".wl[258].w[5]" 0.51229044857822159;
	setAttr ".wl[258].w[13]" 0.030216893820903448;
	setAttr ".wl[258].w[17]" 0.031052936288975565;
	setAttr -s 5 ".wl[259].w";
	setAttr ".wl[259].w[2]" 0.0024763275874244844;
	setAttr ".wl[259].w[3]" 0.026589273283046257;
	setAttr ".wl[259].w[4]" 0.5298317227021454;
	setAttr ".wl[259].w[5]" 0.43553418685110018;
	setAttr ".wl[259].w[25]" 0.0055684895762835593;
	setAttr -s 5 ".wl[260].w";
	setAttr ".wl[260].w[3]" 0.005512091768434463;
	setAttr ".wl[260].w[4]" 0.4325410811905292;
	setAttr ".wl[260].w[5]" 0.49900896999784877;
	setAttr ".wl[260].w[9]" 0.033394019069820612;
	setAttr ".wl[260].w[17]" 0.02954383797336704;
	setAttr -s 5 ".wl[261].w";
	setAttr ".wl[261].w[2]" 0.0051024847432500943;
	setAttr ".wl[261].w[3]" 0.056767798070548332;
	setAttr ".wl[261].w[4]" 0.54822727577747898;
	setAttr ".wl[261].w[5]" 0.37102733007353583;
	setAttr ".wl[261].w[25]" 0.018875111335186684;
	setAttr -s 5 ".wl[262].w";
	setAttr ".wl[262].w[1]" 0.12245480733156015;
	setAttr ".wl[262].w[2]" 0.071884469893385886;
	setAttr ".wl[262].w[3]" 0.37537594733783053;
	setAttr ".wl[262].w[4]" 0.067871635139957892;
	setAttr ".wl[262].w[25]" 0.36241314029726557;
	setAttr -s 5 ".wl[263].w";
	setAttr ".wl[263].w[1]" 0.12871364035767294;
	setAttr ".wl[263].w[2]" 0.092596753751028493;
	setAttr ".wl[263].w[3]" 0.37320229907314589;
	setAttr ".wl[263].w[4]" 0.065803882607667147;
	setAttr ".wl[263].w[25]" 0.33968342421048558;
	setAttr -s 5 ".wl[264].w";
	setAttr ".wl[264].w[0]" 0.010769083699189301;
	setAttr ".wl[264].w[1]" 0.047102762059646877;
	setAttr ".wl[264].w[2]" 0.040216315999118041;
	setAttr ".wl[264].w[3]" 0.45307023003456898;
	setAttr ".wl[264].w[25]" 0.44884160820747693;
	setAttr -s 5 ".wl[265].w";
	setAttr ".wl[265].w[2]" 0.027849763521072355;
	setAttr ".wl[265].w[3]" 0.16148837534809465;
	setAttr ".wl[265].w[4]" 0.4788209594219997;
	setAttr ".wl[265].w[5]" 0.24269774921779563;
	setAttr ".wl[265].w[25]" 0.089143152491037603;
	setAttr -s 5 ".wl[266].w";
	setAttr ".wl[266].w[2]" 0.041721573559012404;
	setAttr ".wl[266].w[3]" 0.332884739984736;
	setAttr ".wl[266].w[4]" 0.27561017807518035;
	setAttr ".wl[266].w[5]" 0.08179517872386384;
	setAttr ".wl[266].w[25]" 0.2679883296572072;
	setAttr -s 5 ".wl[267].w";
	setAttr ".wl[267].w[2]" 0.020064107246610018;
	setAttr ".wl[267].w[3]" 0.18012780652836163;
	setAttr ".wl[267].w[4]" 0.46362085731177416;
	setAttr ".wl[267].w[5]" 0.22007169667585488;
	setAttr ".wl[267].w[25]" 0.1161155322373993;
	setAttr -s 5 ".wl[268].w";
	setAttr ".wl[268].w[2]" 0.0047401704768218599;
	setAttr ".wl[268].w[3]" 0.08897563549839807;
	setAttr ".wl[268].w[4]" 0.57778441428218119;
	setAttr ".wl[268].w[5]" 0.31154836154089532;
	setAttr ".wl[268].w[25]" 0.016951418201703563;
	setAttr -s 5 ".wl[269].w";
	setAttr ".wl[269].w[2]" 0.025477361924106809;
	setAttr ".wl[269].w[3]" 0.34300630923157926;
	setAttr ".wl[269].w[4]" 0.26733914084191324;
	setAttr ".wl[269].w[5]" 0.079096477245285415;
	setAttr ".wl[269].w[25]" 0.28508071075711527;
	setAttr -s 5 ".wl[270].w";
	setAttr ".wl[270].w[1]" 0.0094905659813225313;
	setAttr ".wl[270].w[2]" 0.010874104705988655;
	setAttr ".wl[270].w[3]" 0.48905583489892751;
	setAttr ".wl[270].w[4]" 0.0032323920445020892;
	setAttr ".wl[270].w[25]" 0.48734710236925927;
	setAttr -s 5 ".wl[271].w";
	setAttr ".wl[271].w[1]" 0.011229402435937544;
	setAttr ".wl[271].w[2]" 0.014089655917703295;
	setAttr ".wl[271].w[3]" 0.4863333083217608;
	setAttr ".wl[271].w[4]" 0.0035819773270036764;
	setAttr ".wl[271].w[25]" 0.48476565599759452;
	setAttr -s 5 ".wl[272].w";
	setAttr ".wl[272].w[2]" 0.007284221200034806;
	setAttr ".wl[272].w[3]" 0.1195365312895767;
	setAttr ".wl[272].w[4]" 0.86544839143691576;
	setAttr ".wl[272].w[5]" 0.002208700020041665;
	setAttr ".wl[272].w[25]" 0.0055221560534309093;
	setAttr -s 5 ".wl[273].w";
	setAttr ".wl[273].w[2]" 0.0047256382971005229;
	setAttr ".wl[273].w[3]" 0.12966064309892847;
	setAttr ".wl[273].w[4]" 0.85838732042793364;
	setAttr ".wl[273].w[5]" 0.0003587998719023482;
	setAttr ".wl[273].w[25]" 0.0068675983041350235;
	setAttr -s 5 ".wl[274].w";
	setAttr ".wl[274].w[2]" 0.0013935699099453958;
	setAttr ".wl[274].w[3]" 0.060388485557070978;
	setAttr ".wl[274].w[4]" 0.93549748562140178;
	setAttr ".wl[274].w[5]" 0.0022111282694461253;
	setAttr ".wl[274].w[25]" 0.00050933064213572296;
	setAttr -s 5 ".wl[275].w";
	setAttr ".wl[275].w[2]" 0.00097493401290679434;
	setAttr ".wl[275].w[3]" 0.067794731906527642;
	setAttr ".wl[275].w[4]" 0.92754032554506671;
	setAttr ".wl[275].w[5]" 0.00018804479840599966;
	setAttr ".wl[275].w[25]" 0.0035019637370927404;
	setAttr -s 5 ".wl[276].w";
	setAttr ".wl[276].w[2]" 0.0046233384384423652;
	setAttr ".wl[276].w[3]" 0.12539749270821121;
	setAttr ".wl[276].w[4]" 0.582628558147951;
	setAttr ".wl[276].w[5]" 0.25543648220683252;
	setAttr ".wl[276].w[25]" 0.031914128498562955;
	setAttr -s 5 ".wl[277].w";
	setAttr ".wl[277].w[2]" 0.0042609255071466897;
	setAttr ".wl[277].w[3]" 0.12767019154595907;
	setAttr ".wl[277].w[4]" 0.59083266992881267;
	setAttr ".wl[277].w[5]" 0.24307155681627562;
	setAttr ".wl[277].w[25]" 0.034164656201805949;
	setAttr -s 5 ".wl[278].w";
	setAttr ".wl[278].w[2]" 0.010956004853989261;
	setAttr ".wl[278].w[3]" 0.10777080259787213;
	setAttr ".wl[278].w[4]" 0.87197383969553932;
	setAttr ".wl[278].w[5]" 0.0020091438932411474;
	setAttr ".wl[278].w[25]" 0.0072902089593580898;
	setAttr -s 5 ".wl[279].w";
	setAttr ".wl[279].w[2]" 0.0019586769327063318;
	setAttr ".wl[279].w[3]" 0.053504358478688251;
	setAttr ".wl[279].w[4]" 0.94136489805096013;
	setAttr ".wl[279].w[5]" 0.0024686439174457335;
	setAttr ".wl[279].w[25]" 0.00070342262019951164;
	setAttr -s 5 ".wl[280].w";
	setAttr ".wl[280].w[2]" 0.0089402136331276465;
	setAttr ".wl[280].w[3]" 0.11301976016128956;
	setAttr ".wl[280].w[4]" 0.87300866204945538;
	setAttr ".wl[280].w[5]" 0.00035553052716906508;
	setAttr ".wl[280].w[25]" 0.0046758336289585241;
	setAttr -s 5 ".wl[281].w";
	setAttr ".wl[281].w[2]" 0.0017746126927021032;
	setAttr ".wl[281].w[3]" 0.053908880205292449;
	setAttr ".wl[281].w[4]" 0.94069459808440126;
	setAttr ".wl[281].w[5]" 0.00019596498103098661;
	setAttr ".wl[281].w[25]" 0.0034259440365731176;
	setAttr -s 5 ".wl[282].w";
	setAttr ".wl[282].w[2]" 0.029773083085587123;
	setAttr ".wl[282].w[3]" 0.45381476900199547;
	setAttr ".wl[282].w[4]" 0.070794251916486098;
	setAttr ".wl[282].w[5]" 0.0086889490469011753;
	setAttr ".wl[282].w[25]" 0.43692894694903017;
	setAttr -s 5 ".wl[283].w";
	setAttr ".wl[283].w[2]" 0.030498973984198357;
	setAttr ".wl[283].w[3]" 0.24677886695422024;
	setAttr ".wl[283].w[4]" 0.44360624781317298;
	setAttr ".wl[283].w[5]" 0.13460345074485086;
	setAttr ".wl[283].w[25]" 0.14451246050355759;
	setAttr -s 5 ".wl[284].w";
	setAttr ".wl[284].w[2]" 0.047283900531472266;
	setAttr ".wl[284].w[3]" 0.34200140902073339;
	setAttr ".wl[284].w[4]" 0.27890639491534452;
	setAttr ".wl[284].w[5]" 0.051677988392255972;
	setAttr ".wl[284].w[25]" 0.28013030714019393;
	setAttr -s 5 ".wl[285].w";
	setAttr ".wl[285].w[2]" 0.0078751589524335558;
	setAttr ".wl[285].w[3]" 0.22417034506012448;
	setAttr ".wl[285].w[4]" 0.5200405765006948;
	setAttr ".wl[285].w[5]" 0.13209569678733962;
	setAttr ".wl[285].w[25]" 0.11581822269940757;
	setAttr -s 5 ".wl[286].w";
	setAttr ".wl[286].w[2]" 0.010103167573210288;
	setAttr ".wl[286].w[3]" 0.18993973990070018;
	setAttr ".wl[286].w[4]" 0.60913347211081792;
	setAttr ".wl[286].w[5]" 0.15500541987179589;
	setAttr ".wl[286].w[25]" 0.035818200543475683;
	setAttr -s 5 ".wl[287].w";
	setAttr ".wl[287].w[2]" 0.0048011382040119193;
	setAttr ".wl[287].w[3]" 0.48265115574368217;
	setAttr ".wl[287].w[4]" 0.035676124963427015;
	setAttr ".wl[287].w[5]" 0.0036877389827952843;
	setAttr ".wl[287].w[25]" 0.47318384210608361;
	setAttr -s 5 ".wl[288].w";
	setAttr ".wl[288].w[2]" 0.01139473609077272;
	setAttr ".wl[288].w[3]" 0.34582633251235367;
	setAttr ".wl[288].w[4]" 0.35230969407024754;
	setAttr ".wl[288].w[5]" 0.032986672705470427;
	setAttr ".wl[288].w[25]" 0.25748256462115554;
	setAttr -s 5 ".wl[289].w";
	setAttr ".wl[289].w[1]" 0.0017424185763963756;
	setAttr ".wl[289].w[2]" 0.013083971600757026;
	setAttr ".wl[289].w[3]" 0.48535375718892554;
	setAttr ".wl[289].w[4]" 0.024001009116682983;
	setAttr ".wl[289].w[25]" 0.47581884351723802;
	setAttr -s 5 ".wl[290].w";
	setAttr ".wl[290].w[2]" 0.019893750426548229;
	setAttr ".wl[290].w[3]" 0.24205309638726569;
	setAttr ".wl[290].w[4]" 0.47882601253434209;
	setAttr ".wl[290].w[5]" 0.12667833606314147;
	setAttr ".wl[290].w[25]" 0.1325488045887025;
	setAttr -s 5 ".wl[291].w";
	setAttr ".wl[291].w[2]" 0.019254191211133066;
	setAttr ".wl[291].w[3]" 0.46418582469259889;
	setAttr ".wl[291].w[4]" 0.067613585767983125;
	setAttr ".wl[291].w[5]" 0.0082381066552108199;
	setAttr ".wl[291].w[25]" 0.44070829167307418;
	setAttr -s 5 ".wl[292].w";
	setAttr ".wl[292].w[2]" 0.038168274556676492;
	setAttr ".wl[292].w[3]" 0.34692207398400049;
	setAttr ".wl[292].w[4]" 0.29095968634592867;
	setAttr ".wl[292].w[5]" 0.040760198640359464;
	setAttr ".wl[292].w[25]" 0.28318976647303501;
	setAttr -s 5 ".wl[293].w";
	setAttr ".wl[293].w[2]" 0.0033720103660255366;
	setAttr ".wl[293].w[3]" 0.47828665780505319;
	setAttr ".wl[293].w[4]" 0.042533702784206241;
	setAttr ".wl[293].w[5]" 0.0042237943764284009;
	setAttr ".wl[293].w[25]" 0.47158383466828646;
	setAttr -s 5 ".wl[294].w";
	setAttr ".wl[294].w[1]" 0.0012913457796004826;
	setAttr ".wl[294].w[2]" 0.011687076044951838;
	setAttr ".wl[294].w[3]" 0.48752667200155431;
	setAttr ".wl[294].w[4]" 0.030690015925887441;
	setAttr ".wl[294].w[25]" 0.46880489024800592;
	setAttr -s 5 ".wl[295].w";
	setAttr ".wl[295].w[2]" 0.0067754603296594114;
	setAttr ".wl[295].w[3]" 0.21649811033773653;
	setAttr ".wl[295].w[4]" 0.53909462662834429;
	setAttr ".wl[295].w[5]" 0.11885087199336762;
	setAttr ".wl[295].w[25]" 0.11878093071089214;
	setAttr -s 5 ".wl[296].w";
	setAttr ".wl[296].w[2]" 0.008698645429967183;
	setAttr ".wl[296].w[3]" 0.33102607130905159;
	setAttr ".wl[296].w[4]" 0.37299606843944721;
	setAttr ".wl[296].w[5]" 0.028028126780709123;
	setAttr ".wl[296].w[25]" 0.25925108804082481;
	setAttr -s 5 ".wl[297].w";
	setAttr ".wl[297].w[2]" 0.0088661801844553186;
	setAttr ".wl[297].w[3]" 0.19211416527547723;
	setAttr ".wl[297].w[4]" 0.63262519431077768;
	setAttr ".wl[297].w[5]" 0.12671808751350908;
	setAttr ".wl[297].w[25]" 0.039676372715780756;
	setAttr -s 5 ".wl[298].w";
	setAttr ".wl[298].w[2]" 0.046728409602938989;
	setAttr ".wl[298].w[3]" 0.40323605305042631;
	setAttr ".wl[298].w[4]" 0.19767185638665147;
	setAttr ".wl[298].w[5]" 0.015925529246020198;
	setAttr ".wl[298].w[25]" 0.33643815171396302;
	setAttr -s 5 ".wl[299].w";
	setAttr ".wl[299].w[2]" 0.020095776284003865;
	setAttr ".wl[299].w[3]" 0.22010236251375856;
	setAttr ".wl[299].w[4]" 0.57411764146248501;
	setAttr ".wl[299].w[5]" 0.11575171653056807;
	setAttr ".wl[299].w[25]" 0.069932503209184566;
	setAttr -s 5 ".wl[300].w";
	setAttr ".wl[300].w[2]" 0.04360729401459245;
	setAttr ".wl[300].w[3]" 0.30307983125338284;
	setAttr ".wl[300].w[4]" 0.45637950732539889;
	setAttr ".wl[300].w[5]" 0.028082089466230083;
	setAttr ".wl[300].w[25]" 0.16885127794039567;
	setAttr -s 5 ".wl[301].w";
	setAttr ".wl[301].w[2]" 0.0075821648625152612;
	setAttr ".wl[301].w[3]" 0.2158329979189049;
	setAttr ".wl[301].w[4]" 0.66862478521056423;
	setAttr ".wl[301].w[5]" 0.06281021026928793;
	setAttr ".wl[301].w[25]" 0.045149841738727915;
	setAttr -s 5 ".wl[302].w";
	setAttr ".wl[302].w[2]" 0.0075322032186024507;
	setAttr ".wl[302].w[3]" 0.18387678869858082;
	setAttr ".wl[302].w[4]" 0.73280067963982232;
	setAttr ".wl[302].w[5]" 0.053474944830624024;
	setAttr ".wl[302].w[25]" 0.022315383612370301;
	setAttr -s 5 ".wl[303].w";
	setAttr ".wl[303].w[2]" 0.016136552148494715;
	setAttr ".wl[303].w[3]" 0.41199792697301396;
	setAttr ".wl[303].w[4]" 0.26389255972589543;
	setAttr ".wl[303].w[5]" 0.0037703895089945942;
	setAttr ".wl[303].w[25]" 0.30420257164360115;
	setAttr -s 5 ".wl[304].w";
	setAttr ".wl[304].w[2]" 0.009322789123041646;
	setAttr ".wl[304].w[3]" 0.27328383298691478;
	setAttr ".wl[304].w[4]" 0.5855783808746946;
	setAttr ".wl[304].w[5]" 0.0063690940211168553;
	setAttr ".wl[304].w[25]" 0.12544590299423214;
	setAttr -s 5 ".wl[305].w";
	setAttr ".wl[305].w[2]" 0.027987044003286474;
	setAttr ".wl[305].w[3]" 0.43414816881027257;
	setAttr ".wl[305].w[4]" 0.28212091105791937;
	setAttr ".wl[305].w[5]" 0.00096824742226181881;
	setAttr ".wl[305].w[25]" 0.2547756287062598;
	setAttr -s 5 ".wl[306].w";
	setAttr ".wl[306].w[2]" 0.018218847545014887;
	setAttr ".wl[306].w[3]" 0.21974374597827276;
	setAttr ".wl[306].w[4]" 0.62474582429600012;
	setAttr ".wl[306].w[5]" 0.070494982970458558;
	setAttr ".wl[306].w[25]" 0.066796599210253688;
	setAttr -s 5 ".wl[307].w";
	setAttr ".wl[307].w[2]" 0.042095173142364072;
	setAttr ".wl[307].w[3]" 0.41250435206938252;
	setAttr ".wl[307].w[4]" 0.19023748317547021;
	setAttr ".wl[307].w[5]" 0.011680068736226517;
	setAttr ".wl[307].w[25]" 0.34348292287655657;
	setAttr -s 5 ".wl[308].w";
	setAttr ".wl[308].w[2]" 0.045840410409197244;
	setAttr ".wl[308].w[3]" 0.31145712511321444;
	setAttr ".wl[308].w[4]" 0.43811297944753624;
	setAttr ".wl[308].w[5]" 0.019664334162358337;
	setAttr ".wl[308].w[25]" 0.18492515086769376;
	setAttr -s 5 ".wl[309].w";
	setAttr ".wl[309].w[2]" 0.011218005586877956;
	setAttr ".wl[309].w[3]" 0.39468083101739421;
	setAttr ".wl[309].w[4]" 0.27694057682515216;
	setAttr ".wl[309].w[5]" 0.003496231105807446;
	setAttr ".wl[309].w[25]" 0.31366435546476823;
	setAttr -s 5 ".wl[310].w";
	setAttr ".wl[310].w[1]" 0.00080749882147300488;
	setAttr ".wl[310].w[2]" 0.028108171410271773;
	setAttr ".wl[310].w[3]" 0.42130211699656472;
	setAttr ".wl[310].w[4]" 0.33402361282158938;
	setAttr ".wl[310].w[25]" 0.21575859995010099;
	setAttr -s 5 ".wl[311].w";
	setAttr ".wl[311].w[2]" 0.0062627675782587801;
	setAttr ".wl[311].w[3]" 0.20960067863109541;
	setAttr ".wl[311].w[4]" 0.67689241162384572;
	setAttr ".wl[311].w[5]" 0.067830945988561417;
	setAttr ".wl[311].w[25]" 0.039413196178238824;
	setAttr -s 5 ".wl[312].w";
	setAttr ".wl[312].w[2]" 0.007914714584509314;
	setAttr ".wl[312].w[3]" 0.27005393508760445;
	setAttr ".wl[312].w[4]" 0.58684710376539917;
	setAttr ".wl[312].w[5]" 0.0054195498082137989;
	setAttr ".wl[312].w[25]" 0.12976469675427318;
	setAttr -s 5 ".wl[313].w";
	setAttr ".wl[313].w[2]" 0.0076602041297194265;
	setAttr ".wl[313].w[3]" 0.19063646123781541;
	setAttr ".wl[313].w[4]" 0.72272291100643393;
	setAttr ".wl[313].w[5]" 0.053772971800059598;
	setAttr ".wl[313].w[25]" 0.025207451825971505;
	setAttr -s 5 ".wl[314].w";
	setAttr ".wl[314].w[2]" 0.029106353665026508;
	setAttr ".wl[314].w[3]" 0.35529018838959536;
	setAttr ".wl[314].w[4]" 0.50887795246736267;
	setAttr ".wl[314].w[5]" 0.0026795862710928017;
	setAttr ".wl[314].w[25]" 0.10404591920692254;
	setAttr -s 5 ".wl[315].w";
	setAttr ".wl[315].w[2]" 0.017026906041866106;
	setAttr ".wl[315].w[3]" 0.18234296119241905;
	setAttr ".wl[315].w[4]" 0.73627735892001411;
	setAttr ".wl[315].w[5]" 0.027505906099070804;
	setAttr ".wl[315].w[25]" 0.03684686774662975;
	setAttr -s 5 ".wl[316].w";
	setAttr ".wl[316].w[2]" 0.0027639591959654035;
	setAttr ".wl[316].w[3]" 0.13914018077725104;
	setAttr ".wl[316].w[4]" 0.82845029129262082;
	setAttr ".wl[316].w[5]" 0.0063537822743628307;
	setAttr ".wl[316].w[25]" 0.023291786459799894;
	setAttr -s 5 ".wl[317].w";
	setAttr ".wl[317].w[1]" 0.0001595770533103813;
	setAttr ".wl[317].w[2]" 0.0086237365417103033;
	setAttr ".wl[317].w[3]" 0.25678555650690665;
	setAttr ".wl[317].w[4]" 0.67261541441163442;
	setAttr ".wl[317].w[25]" 0.061815715486438286;
	setAttr -s 5 ".wl[318].w";
	setAttr ".wl[318].w[2]" 0.023660784192148728;
	setAttr ".wl[318].w[3]" 0.18292407879764261;
	setAttr ".wl[318].w[4]" 0.72715834405416002;
	setAttr ".wl[318].w[5]" 0.016957116915728088;
	setAttr ".wl[318].w[25]" 0.049299676040320595;
	setAttr -s 5 ".wl[319].w";
	setAttr ".wl[319].w[2]" 0.036746112581312912;
	setAttr ".wl[319].w[3]" 0.34761797886669993;
	setAttr ".wl[319].w[4]" 0.51170788238071341;
	setAttr ".wl[319].w[5]" 0.002284044527510532;
	setAttr ".wl[319].w[25]" 0.10164398164376341;
	setAttr -s 5 ".wl[320].w";
	setAttr ".wl[320].w[1]" 0.00024269534469159723;
	setAttr ".wl[320].w[2]" 0.01564264342436476;
	setAttr ".wl[320].w[3]" 0.2806434395740478;
	setAttr ".wl[320].w[4]" 0.60877212423094162;
	setAttr ".wl[320].w[25]" 0.09469909742595442;
	setAttr -s 5 ".wl[321].w";
	setAttr ".wl[321].w[2]" 0.0025102756724785804;
	setAttr ".wl[321].w[3]" 0.13338411119493787;
	setAttr ".wl[321].w[4]" 0.83586780463034382;
	setAttr ".wl[321].w[5]" 0.0062650262637743356;
	setAttr ".wl[321].w[25]" 0.021972782238465462;
	setAttr -s 5 ".wl[322].w";
	setAttr ".wl[322].w[8]" 0.027669992023706916;
	setAttr ".wl[322].w[9]" 0.16103515509614832;
	setAttr ".wl[322].w[13]" 0.11343934293236074;
	setAttr ".wl[322].w[16]" 0.051002809429166115;
	setAttr ".wl[322].w[17]" 0.64685270051861798;
	setAttr -s 5 ".wl[323].w";
	setAttr ".wl[323].w[9]" 0.019639588025853638;
	setAttr ".wl[323].w[12]" 0.03752986808904446;
	setAttr ".wl[323].w[13]" 0.40495879723796013;
	setAttr ".wl[323].w[16]" 0.055489941710884498;
	setAttr ".wl[323].w[17]" 0.48238180493625726;
	setAttr -s 5 ".wl[324].w";
	setAttr ".wl[324].w[8]" 0.050154981298625764;
	setAttr ".wl[324].w[9]" 0.47736459770112383;
	setAttr ".wl[324].w[16]" 0.039757236423332828;
	setAttr ".wl[324].w[17]" 0.41235965908332611;
	setAttr ".wl[324].w[21]" 0.020363525493591338;
	setAttr -s 5 ".wl[325].w";
	setAttr ".wl[325].w[8]" 0.025979507712507469;
	setAttr ".wl[325].w[9]" 0.15969619091298046;
	setAttr ".wl[325].w[13]" 0.11545111247328066;
	setAttr ".wl[325].w[16]" 0.047809107566159172;
	setAttr ".wl[325].w[17]" 0.65106408133507221;
	setAttr -s 5 ".wl[326].w";
	setAttr ".wl[326].w[12]" 0.046812879541175606;
	setAttr ".wl[326].w[13]" 0.65177441238976719;
	setAttr ".wl[326].w[16]" 0.030839058723981728;
	setAttr ".wl[326].w[17]" 0.16028295001193038;
	setAttr ".wl[326].w[21]" 0.11029069933314513;
	setAttr -s 5 ".wl[327].w";
	setAttr ".wl[327].w[12]" 0.049897225050062506;
	setAttr ".wl[327].w[13]" 0.48577400475246429;
	setAttr ".wl[327].w[17]" 0.020092707741301633;
	setAttr ".wl[327].w[20]" 0.041194029971999176;
	setAttr ".wl[327].w[21]" 0.40304203248417225;
	setAttr -s 5 ".wl[328].w";
	setAttr ".wl[328].w[12]" 0.043929782307224788;
	setAttr ".wl[328].w[13]" 0.65075295892740914;
	setAttr ".wl[328].w[16]" 0.028791692303344201;
	setAttr ".wl[328].w[17]" 0.16156393807418745;
	setAttr ".wl[328].w[21]" 0.11496162838783439;
	setAttr -s 5 ".wl[329].w";
	setAttr ".wl[329].w[9]" 0.11415849793781453;
	setAttr ".wl[329].w[12]" 0.027996900846808555;
	setAttr ".wl[329].w[13]" 0.16492115348316566;
	setAttr ".wl[329].w[20]" 0.050961425118636584;
	setAttr ".wl[329].w[21]" 0.6419620226135746;
	setAttr -s 5 ".wl[330].w";
	setAttr ".wl[330].w[8]" 0.038078736185996664;
	setAttr ".wl[330].w[9]" 0.40208682503082638;
	setAttr ".wl[330].w[13]" 0.020382293914501196;
	setAttr ".wl[330].w[20]" 0.055357925308335235;
	setAttr ".wl[330].w[21]" 0.48409421956034043;
	setAttr -s 5 ".wl[331].w";
	setAttr ".wl[331].w[9]" 0.11442618565361913;
	setAttr ".wl[331].w[12]" 0.025576790399661178;
	setAttr ".wl[331].w[13]" 0.16308289366446535;
	setAttr ".wl[331].w[20]" 0.048550206342730946;
	setAttr ".wl[331].w[21]" 0.64836392393952325;
	setAttr -s 5 ".wl[332].w";
	setAttr ".wl[332].w[8]" 0.048001849093434003;
	setAttr ".wl[332].w[9]" 0.64805106331732754;
	setAttr ".wl[332].w[17]" 0.11479791902559401;
	setAttr ".wl[332].w[20]" 0.030341669145551229;
	setAttr ".wl[332].w[21]" 0.15880749941809322;
	setAttr -s 5 ".wl[333].w";
	setAttr ".wl[333].w[8]" 0.044676908927753847;
	setAttr ".wl[333].w[9]" 0.64511612107010396;
	setAttr ".wl[333].w[17]" 0.11922150523139684;
	setAttr ".wl[333].w[20]" 0.028425309144590436;
	setAttr ".wl[333].w[21]" 0.16256015562615508;
	setAttr -s 5 ".wl[334].w";
	setAttr ".wl[334].w[9]" 0.020298380863166203;
	setAttr ".wl[334].w[12]" 0.040756538837586745;
	setAttr ".wl[334].w[13]" 0.40091589895816399;
	setAttr ".wl[334].w[16]" 0.06400478130011289;
	setAttr ".wl[334].w[17]" 0.47402440004097024;
	setAttr -s 5 ".wl[335].w";
	setAttr ".wl[335].w[8]" 0.058064343078810615;
	setAttr ".wl[335].w[9]" 0.47919379679789353;
	setAttr ".wl[335].w[16]" 0.044858382617366001;
	setAttr ".wl[335].w[17]" 0.39866849589450032;
	setAttr ".wl[335].w[21]" 0.019214981611429531;
	setAttr -s 5 ".wl[336].w";
	setAttr ".wl[336].w[8]" 0.069547931981517777;
	setAttr ".wl[336].w[9]" 0.46352073204289773;
	setAttr ".wl[336].w[16]" 0.055419406180868838;
	setAttr ".wl[336].w[17]" 0.39293855024613683;
	setAttr ".wl[336].w[21]" 0.018573379548578763;
	setAttr -s 5 ".wl[337].w";
	setAttr ".wl[337].w[9]" 0.019386721052714551;
	setAttr ".wl[337].w[12]" 0.049973789998824264;
	setAttr ".wl[337].w[13]" 0.40064224678459209;
	setAttr ".wl[337].w[16]" 0.07433366305838536;
	setAttr ".wl[337].w[17]" 0.45566357910548372;
	setAttr -s 5 ".wl[338].w";
	setAttr ".wl[338].w[12]" 0.058391899078330388;
	setAttr ".wl[338].w[13]" 0.48389968411419487;
	setAttr ".wl[338].w[17]" 0.01983996045282236;
	setAttr ".wl[338].w[20]" 0.045600947063621861;
	setAttr ".wl[338].w[21]" 0.39226750929103049;
	setAttr -s 5 ".wl[339].w";
	setAttr ".wl[339].w[12]" 0.065142495397175385;
	setAttr ".wl[339].w[13]" 0.46443003245640346;
	setAttr ".wl[339].w[17]" 0.018744360235307778;
	setAttr ".wl[339].w[20]" 0.059520037152147001;
	setAttr ".wl[339].w[21]" 0.39216307475896639;
	setAttr -s 5 ".wl[340].w";
	setAttr ".wl[340].w[8]" 0.044753694498478519;
	setAttr ".wl[340].w[9]" 0.40317923710804299;
	setAttr ".wl[340].w[13]" 0.020748878092176026;
	setAttr ".wl[340].w[20]" 0.062693005263565735;
	setAttr ".wl[340].w[21]" 0.46862518503773665;
	setAttr -s 5 ".wl[341].w";
	setAttr ".wl[341].w[8]" 0.054910872339745259;
	setAttr ".wl[341].w[9]" 0.39985660605390694;
	setAttr ".wl[341].w[13]" 0.019510232950289582;
	setAttr ".wl[341].w[20]" 0.072595737553903084;
	setAttr ".wl[341].w[21]" 0.45312655110215533;
	setAttr -s 5 ".wl[342].w";
	setAttr ".wl[342].w[6]" 0.42477139365094208;
	setAttr ".wl[342].w[7]" 0.20381552538227224;
	setAttr ".wl[342].w[11]" 0.021387331900761548;
	setAttr ".wl[342].w[15]" 0.04622087647112013;
	setAttr ".wl[342].w[19]" 0.30380487259490402;
	setAttr -s 5 ".wl[343].w";
	setAttr ".wl[343].w[6]" 0.42279641152209135;
	setAttr ".wl[343].w[7]" 0.024174962870242608;
	setAttr ".wl[343].w[11]" 0.20269316408758076;
	setAttr ".wl[343].w[15]" 0.047616871045826015;
	setAttr ".wl[343].w[19]" 0.30271859047425925;
	setAttr -s 5 ".wl[344].w";
	setAttr ".wl[344].w[6]" 0.64269035514692274;
	setAttr ".wl[344].w[7]" 0.058359809033048313;
	setAttr ".wl[344].w[11]" 0.042471938576714642;
	setAttr ".wl[344].w[15]" 0.015910755957679823;
	setAttr ".wl[344].w[19]" 0.24056714128563442;
	setAttr -s 5 ".wl[345].w";
	setAttr ".wl[345].w[6]" 0.41255846963419573;
	setAttr ".wl[345].w[7]" 0.025834422235348892;
	setAttr ".wl[345].w[11]" 0.19246844737054089;
	setAttr ".wl[345].w[15]" 0.32162737367980349;
	setAttr ".wl[345].w[19]" 0.047511287080110869;
	setAttr -s 5 ".wl[346].w";
	setAttr ".wl[346].w[6]" 0.61369901650660241;
	setAttr ".wl[346].w[7]" 0.010400297967614497;
	setAttr ".wl[346].w[11]" 0.15384724068744021;
	setAttr ".wl[346].w[15]" 0.10881877245602355;
	setAttr ".wl[346].w[19]" 0.11323467238231932;
	setAttr -s 5 ".wl[347].w";
	setAttr ".wl[347].w[6]" 0.40489468181687494;
	setAttr ".wl[347].w[7]" 0.21881039370172864;
	setAttr ".wl[347].w[11]" 0.019793984683419405;
	setAttr ".wl[347].w[15]" 0.31060120307198152;
	setAttr ".wl[347].w[19]" 0.045899736725995378;
	setAttr -s 5 ".wl[348].w";
	setAttr ".wl[348].w[6]" 0.62841533404195249;
	setAttr ".wl[348].w[7]" 0.062152833596660961;
	setAttr ".wl[348].w[11]" 0.03986808837267939;
	setAttr ".wl[348].w[15]" 0.25141243323552581;
	setAttr ".wl[348].w[19]" 0.018151310753181275;
	setAttr -s 5 ".wl[349].w";
	setAttr ".wl[349].w[6]" 0.60786726578206318;
	setAttr ".wl[349].w[7]" 0.18150570813869096;
	setAttr ".wl[349].w[11]" 0.0074556306720611415;
	setAttr ".wl[349].w[15]" 0.097236512409455134;
	setAttr ".wl[349].w[19]" 0.10593488299772959;
	setAttr -s 5 ".wl[350].w";
	setAttr ".wl[350].w[6]" 0.79992865341048547;
	setAttr ".wl[350].w[7]" 0.073347382612256748;
	setAttr ".wl[350].w[11]" 0.0062607817480592803;
	setAttr ".wl[350].w[15]" 0.016735083552162609;
	setAttr ".wl[350].w[19]" 0.10372809867703596;
	setAttr -s 5 ".wl[351].w";
	setAttr ".wl[351].w[5]" 0.02816019688557406;
	setAttr ".wl[351].w[6]" 0.7827593570526592;
	setAttr ".wl[351].w[11]" 0.060444273470851156;
	setAttr ".wl[351].w[15]" 0.019562180020326229;
	setAttr ".wl[351].w[19]" 0.10907399257058946;
	setAttr -s 5 ".wl[352].w";
	setAttr ".wl[352].w[5]" 0.028125019536043704;
	setAttr ".wl[352].w[6]" 0.77834869450544641;
	setAttr ".wl[352].w[11]" 0.058806353748925073;
	setAttr ".wl[352].w[15]" 0.11108034005128174;
	setAttr ".wl[352].w[19]" 0.023639592158303076;
	setAttr -s 5 ".wl[353].w";
	setAttr ".wl[353].w[6]" 0.79304771592348011;
	setAttr ".wl[353].w[7]" 0.076619817594607412;
	setAttr ".wl[353].w[11]" 0.0054294208984650367;
	setAttr ".wl[353].w[15]" 0.10237754804813577;
	setAttr ".wl[353].w[19]" 0.022525497535311766;
	setAttr -s 5 ".wl[354].w";
	setAttr ".wl[354].w[1]" 0.27082778520412637;
	setAttr ".wl[354].w[26]" 0.26261579772459165;
	setAttr ".wl[354].w[27]" 0.079270074422652992;
	setAttr ".wl[354].w[30]" 0.32561509144421785;
	setAttr ".wl[354].w[31]" 0.0616712512044112;
	setAttr -s 5 ".wl[355].w";
	setAttr ".wl[355].w[1]" 0.41428226751359942;
	setAttr ".wl[355].w[2]" 0.079755039359364413;
	setAttr ".wl[355].w[26]" 0.33349138586060267;
	setAttr ".wl[355].w[30]" 0.10058741494994107;
	setAttr ".wl[355].w[34]" 0.071883892316492351;
	setAttr -s 5 ".wl[356].w";
	setAttr ".wl[356].w[1]" 0.42975378455726876;
	setAttr ".wl[356].w[2]" 0.082407149241626926;
	setAttr ".wl[356].w[3]" 0.02584526249677677;
	setAttr ".wl[356].w[26]" 0.20203083168323938;
	setAttr ".wl[356].w[30]" 0.25996297202108815;
	setAttr -s 5 ".wl[357].w";
	setAttr ".wl[357].w[5]" 0.34970815010866846;
	setAttr ".wl[357].w[6]" 0.65028225414824792;
	setAttr ".wl[357].w[7]" 2.982326219305101e-006;
	setAttr ".wl[357].w[11]" 3.7831832632658163e-006;
	setAttr ".wl[357].w[19]" 2.8302336009728944e-006;
	setAttr -s 5 ".wl[358].w";
	setAttr ".wl[358].w[1]" 0.44671439316982692;
	setAttr ".wl[358].w[2]" 0.07803632287135065;
	setAttr ".wl[358].w[3]" 0.024313904416444727;
	setAttr ".wl[358].w[34]" 0.24768085263836009;
	setAttr ".wl[358].w[38]" 0.2032545269040178;
	setAttr -s 5 ".wl[359].w";
	setAttr ".wl[359].w[0]" 0.42815188675008875;
	setAttr ".wl[359].w[1]" 0.31916212925976251;
	setAttr ".wl[359].w[26]" 0.084295184712391016;
	setAttr ".wl[359].w[34]" 0.082040719021162736;
	setAttr ".wl[359].w[38]" 0.086350080256594949;
	setAttr -s 5 ".wl[360].w";
	setAttr ".wl[360].w[1]" 0.46342571347644218;
	setAttr ".wl[360].w[2]" 0.15025506617866807;
	setAttr ".wl[360].w[3]" 0.047747296001168227;
	setAttr ".wl[360].w[30]" 0.15739167165928597;
	setAttr ".wl[360].w[38]" 0.18118025268443566;
	setAttr -s 5 ".wl[361].w";
	setAttr ".wl[361].w[1]" 0.42818007716429152;
	setAttr ".wl[361].w[3]" 0.046269252653505316;
	setAttr ".wl[361].w[25]" 0.043880799538956086;
	setAttr ".wl[361].w[26]" 0.28024603132587;
	setAttr ".wl[361].w[34]" 0.2014238393173772;
	setAttr -s 5 ".wl[362].w[1:5]"  0.16395746709930253 0.15669445976068111 
		0.21833884670720149 0.40100470572512087 0.060004520707694138;
	setAttr -s 5 ".wl[363].w";
	setAttr ".wl[363].w[2]" 0.0024043244231110841;
	setAttr ".wl[363].w[3]" 0.44991400539763005;
	setAttr ".wl[363].w[4]" 0.09901132202046703;
	setAttr ".wl[363].w[5]" 0.020159619937523306;
	setAttr ".wl[363].w[25]" 0.42851072822126857;
	setAttr -s 5 ".wl[364].w";
	setAttr ".wl[364].w[1]" 0.17232301202321662;
	setAttr ".wl[364].w[2]" 0.14646120423350303;
	setAttr ".wl[364].w[3]" 0.21554249133210546;
	setAttr ".wl[364].w[4]" 0.40515967630509819;
	setAttr ".wl[364].w[25]" 0.060513616106076737;
	setAttr -s 5 ".wl[365].w[1:5]"  0.080048951334707602 0.093614073370278009 
		0.24023721517742774 0.49633429525426015 0.089765464863326677;
	setAttr -s 5 ".wl[366].w";
	setAttr ".wl[366].w[1]" 0.2769471439739708;
	setAttr ".wl[366].w[34]" 0.31654493357803748;
	setAttr ".wl[366].w[35]" 0.04295471756314781;
	setAttr ".wl[366].w[38]" 0.33609266678145261;
	setAttr ".wl[366].w[39]" 0.027460538103391351;
	setAttr -s 5 ".wl[367].w";
	setAttr ".wl[367].w[1]" 0.24060153704285656;
	setAttr ".wl[367].w[30]" 0.27288815705594843;
	setAttr ".wl[367].w[31]" 0.085898498842896895;
	setAttr ".wl[367].w[38]" 0.30692325876806814;
	setAttr ".wl[367].w[39]" 0.093688548290230073;
	setAttr -s 5 ".wl[368].w";
	setAttr ".wl[368].w[1]" 0.31982741014755278;
	setAttr ".wl[368].w[26]" 0.2722294301795774;
	setAttr ".wl[368].w[27]" 0.035069896980064935;
	setAttr ".wl[368].w[30]" 0.34211545668019816;
	setAttr ".wl[368].w[31]" 0.030757806012606602;
	setAttr -s 5 ".wl[369].w";
	setAttr ".wl[369].w[1]" 0.21878370027064875;
	setAttr ".wl[369].w[26]" 0.34412161900588983;
	setAttr ".wl[369].w[27]" 0.090888057829116756;
	setAttr ".wl[369].w[34]" 0.26162124273154497;
	setAttr ".wl[369].w[35]" 0.08458538016279972;
	setAttr -s 5 ".wl[370].w";
	setAttr ".wl[370].w[1]" 0.18645087404635377;
	setAttr ".wl[370].w[34]" 0.31661997924273244;
	setAttr ".wl[370].w[35]" 0.10306624669583624;
	setAttr ".wl[370].w[38]" 0.31055369821228623;
	setAttr ".wl[370].w[39]" 0.083309201802791402;
	setAttr -s 5 ".wl[371].w";
	setAttr ".wl[371].w[1]" 2.3285738925134114e-006;
	setAttr ".wl[371].w[38]" 0.001103712881544138;
	setAttr ".wl[371].w[39]" 0.13451326272723407;
	setAttr ".wl[371].w[40]" 0.52408532804831898;
	setAttr ".wl[371].w[41]" 0.34029536776901026;
	setAttr -s 5 ".wl[372].w";
	setAttr ".wl[372].w[0]" 0.12347243627615266;
	setAttr ".wl[372].w[1]" 0.31778893883595483;
	setAttr ".wl[372].w[34]" 0.24150847821593249;
	setAttr ".wl[372].w[38]" 0.28464848228037409;
	setAttr ".wl[372].w[39]" 0.032581664391585947;
	setAttr -s 5 ".wl[373].w";
	setAttr ".wl[373].w[1]" 2.141628732439173e-006;
	setAttr ".wl[373].w[34]" 0.0013001410256889454;
	setAttr ".wl[373].w[35]" 0.13713383831805284;
	setAttr ".wl[373].w[36]" 0.5159440069967951;
	setAttr ".wl[373].w[37]" 0.34561987203073091;
	setAttr -s 5 ".wl[374].w";
	setAttr ".wl[374].w[1]" 0.17564384548152048;
	setAttr ".wl[374].w[26]" 0.30876342652479555;
	setAttr ".wl[374].w[27]" 0.090673260614197851;
	setAttr ".wl[374].w[30]" 0.35752691026371969;
	setAttr ".wl[374].w[31]" 0.06739255711576643;
	setAttr -s 5 ".wl[375].w";
	setAttr ".wl[375].w[1]" 2.317383163216411e-006;
	setAttr ".wl[375].w[26]" 0.00066741730075410447;
	setAttr ".wl[375].w[27]" 0.10417265488011118;
	setAttr ".wl[375].w[28]" 0.51518554820815066;
	setAttr ".wl[375].w[29]" 0.37997206222782087;
	setAttr -s 5 ".wl[376].w";
	setAttr ".wl[376].w[0]" 0.12495726003069922;
	setAttr ".wl[376].w[1]" 0.33969954767470584;
	setAttr ".wl[376].w[26]" 0.24317636849772284;
	setAttr ".wl[376].w[27]" 0.033080044541831895;
	setAttr ".wl[376].w[30]" 0.25908677925504026;
	setAttr -s 5 ".wl[377].w";
	setAttr ".wl[377].w[1]" 1.6764354148655852e-006;
	setAttr ".wl[377].w[30]" 0.00060525749530647389;
	setAttr ".wl[377].w[31]" 0.11153006388466158;
	setAttr ".wl[377].w[32]" 0.51116872269925095;
	setAttr ".wl[377].w[33]" 0.37669427948536605;
	setAttr -s 5 ".wl[378].w";
	setAttr ".wl[378].w[1]" 0.023738817169413631;
	setAttr ".wl[378].w[38]" 0.15484840775882286;
	setAttr ".wl[378].w[39]" 0.33572835280797575;
	setAttr ".wl[378].w[40]" 0.33777753339538213;
	setAttr ".wl[378].w[41]" 0.14790688886840564;
	setAttr -s 5 ".wl[379].w";
	setAttr ".wl[379].w[1]" 0.044149739665463449;
	setAttr ".wl[379].w[38]" 0.22771737080377485;
	setAttr ".wl[379].w[39]" 0.44388819741931523;
	setAttr ".wl[379].w[40]" 0.19950857490320248;
	setAttr ".wl[379].w[41]" 0.084736117208243977;
	setAttr -s 5 ".wl[380].w";
	setAttr ".wl[380].w[1]" 0.035432734274881757;
	setAttr ".wl[380].w[38]" 0.25129239397033215;
	setAttr ".wl[380].w[39]" 0.45396698423541071;
	setAttr ".wl[380].w[40]" 0.18544815678285473;
	setAttr ".wl[380].w[41]" 0.073859730736520648;
	setAttr -s 5 ".wl[381].w";
	setAttr ".wl[381].w[1]" 0.024198770278039908;
	setAttr ".wl[381].w[38]" 0.1871496998978138;
	setAttr ".wl[381].w[39]" 0.42514317964700415;
	setAttr ".wl[381].w[40]" 0.26344343880441284;
	setAttr ".wl[381].w[41]" 0.1000649113727294;
	setAttr -s 5 ".wl[382].w";
	setAttr ".wl[382].w[1]" 0.026737091535122069;
	setAttr ".wl[382].w[34]" 0.17006070368092643;
	setAttr ".wl[382].w[35]" 0.39526488249437108;
	setAttr ".wl[382].w[36]" 0.31324217997961684;
	setAttr ".wl[382].w[37]" 0.094695142309963648;
	setAttr -s 5 ".wl[383].w";
	setAttr ".wl[383].w[1]" 0.02114640110705665;
	setAttr ".wl[383].w[34]" 0.15428476760817419;
	setAttr ".wl[383].w[35]" 0.42928899495361122;
	setAttr ".wl[383].w[36]" 0.25343376908796544;
	setAttr ".wl[383].w[37]" 0.14184606724319254;
	setAttr -s 5 ".wl[384].w";
	setAttr ".wl[384].w[1]" 0.031023009743167813;
	setAttr ".wl[384].w[34]" 0.24144608734471054;
	setAttr ".wl[384].w[35]" 0.46916111446428421;
	setAttr ".wl[384].w[36]" 0.18657885313733222;
	setAttr ".wl[384].w[37]" 0.07179093531050515;
	setAttr -s 5 ".wl[385].w";
	setAttr ".wl[385].w[1]" 0.041834903546442266;
	setAttr ".wl[385].w[34]" 0.23763533461640174;
	setAttr ".wl[385].w[35]" 0.42776275412902481;
	setAttr ".wl[385].w[36]" 0.2297808789268373;
	setAttr ".wl[385].w[37]" 0.062986128781293907;
	setAttr -s 5 ".wl[386].w";
	setAttr ".wl[386].w[1]" 0.02121683345672435;
	setAttr ".wl[386].w[26]" 0.15303155551595596;
	setAttr ".wl[386].w[27]" 0.3398318673424186;
	setAttr ".wl[386].w[28]" 0.32806516445389572;
	setAttr ".wl[386].w[29]" 0.15785457923100529;
	setAttr -s 5 ".wl[387].w";
	setAttr ".wl[387].w[1]" 0.038586077647987167;
	setAttr ".wl[387].w[26]" 0.23327486499245501;
	setAttr ".wl[387].w[27]" 0.42023146126903793;
	setAttr ".wl[387].w[28]" 0.21092905590300684;
	setAttr ".wl[387].w[29]" 0.096978540187513049;
	setAttr -s 5 ".wl[388].w";
	setAttr ".wl[388].w[1]" 0.033900304885091201;
	setAttr ".wl[388].w[26]" 0.23762199756001831;
	setAttr ".wl[388].w[27]" 0.45258076240755407;
	setAttr ".wl[388].w[28]" 0.19160012177636887;
	setAttr ".wl[388].w[29]" 0.084296813370967449;
	setAttr -s 5 ".wl[389].w";
	setAttr ".wl[389].w[1]" 0.022318240680477833;
	setAttr ".wl[389].w[26]" 0.18010600111204819;
	setAttr ".wl[389].w[27]" 0.44621898994992454;
	setAttr ".wl[389].w[28]" 0.25404795106160455;
	setAttr ".wl[389].w[29]" 0.097308817195944974;
	setAttr -s 5 ".wl[390].w";
	setAttr ".wl[390].w[1]" 0.02447753443658509;
	setAttr ".wl[390].w[30]" 0.1534333272559209;
	setAttr ".wl[390].w[31]" 0.3581682052335583;
	setAttr ".wl[390].w[32]" 0.298447352892868;
	setAttr ".wl[390].w[33]" 0.16547358018106773;
	setAttr -s 5 ".wl[391].w";
	setAttr ".wl[391].w[1]" 0.022775721283551348;
	setAttr ".wl[391].w[30]" 0.20557327279752322;
	setAttr ".wl[391].w[31]" 0.43077428554285369;
	setAttr ".wl[391].w[32]" 0.23405582875338191;
	setAttr ".wl[391].w[33]" 0.10682089162268976;
	setAttr -s 5 ".wl[392].w";
	setAttr ".wl[392].w[1]" 0.037996505072270585;
	setAttr ".wl[392].w[30]" 0.24696605898152929;
	setAttr ".wl[392].w[31]" 0.43681416273438628;
	setAttr ".wl[392].w[32]" 0.20653651872067658;
	setAttr ".wl[392].w[33]" 0.071686754491137317;
	setAttr -s 5 ".wl[393].w";
	setAttr ".wl[393].w[1]" 0.049065312752333091;
	setAttr ".wl[393].w[30]" 0.2218494086463498;
	setAttr ".wl[393].w[31]" 0.40012386216028306;
	setAttr ".wl[393].w[32]" 0.24698721451406291;
	setAttr ".wl[393].w[33]" 0.08197420192697108;
	setAttr -s 5 ".wl[394].w";
	setAttr ".wl[394].w[2]" 0.00012578902900118742;
	setAttr ".wl[394].w[3]" 0.0031719212426786787;
	setAttr ".wl[394].w[4]" 0.48670532684958018;
	setAttr ".wl[394].w[5]" 0.50979281898700801;
	setAttr ".wl[394].w[21]" 0.00020414389173198589;
	setAttr -s 5 ".wl[395].w";
	setAttr ".wl[395].w[3]" 0.0031780779816828072;
	setAttr ".wl[395].w[4]" 0.44906494432021549;
	setAttr ".wl[395].w[5]" 0.54745360288401756;
	setAttr ".wl[395].w[12]" 0.00011626168290040782;
	setAttr ".wl[395].w[13]" 0.00018711313118375481;
	setAttr -s 5 ".wl[396].w";
	setAttr ".wl[396].w[2]" 0.00013222757570024009;
	setAttr ".wl[396].w[3]" 0.0033610922326925644;
	setAttr ".wl[396].w[4]" 0.4460969763509684;
	setAttr ".wl[396].w[5]" 0.55023266061422527;
	setAttr ".wl[396].w[17]" 0.00017704322641343712;
	setAttr -s 5 ".wl[397].w";
	setAttr ".wl[397].w[3]" 0.0033449438946590321;
	setAttr ".wl[397].w[4]" 0.48535161071169486;
	setAttr ".wl[397].w[5]" 0.51080902842978404;
	setAttr ".wl[397].w[9]" 0.00027229433507204988;
	setAttr ".wl[397].w[25]" 0.00022212262879008527;
	setAttr -s 5 ".wl[398].w";
	setAttr ".wl[398].w[9]" 0.061373368769736425;
	setAttr ".wl[398].w[12]" 0.09299707609764106;
	setAttr ".wl[398].w[13]" 0.14888009580279724;
	setAttr ".wl[398].w[20]" 0.27010310875460453;
	setAttr ".wl[398].w[21]" 0.42664635057522066;
	setAttr -s 5 ".wl[399].w";
	setAttr ".wl[399].w[12]" 0.22863393042779484;
	setAttr ".wl[399].w[13]" 0.47340158455337017;
	setAttr ".wl[399].w[16]" 0.098787842345875732;
	setAttr ".wl[399].w[17]" 0.14239748650252021;
	setAttr ".wl[399].w[21]" 0.056779156170439;
	setAttr -s 5 ".wl[400].w";
	setAttr ".wl[400].w[8]" 0.090153009038093271;
	setAttr ".wl[400].w[9]" 0.15564539631298413;
	setAttr ".wl[400].w[13]" 0.061093038939841193;
	setAttr ".wl[400].w[16]" 0.25812253759020953;
	setAttr ".wl[400].w[17]" 0.43498601811887172;
	setAttr -s 5 ".wl[401].w";
	setAttr ".wl[401].w[8]" 0.22599498030968559;
	setAttr ".wl[401].w[9]" 0.47694974825863828;
	setAttr ".wl[401].w[17]" 0.055362454034641337;
	setAttr ".wl[401].w[20]" 0.10118072971266026;
	setAttr ".wl[401].w[21]" 0.14051208768437454;
	setAttr -s 5 ".wl[402].w";
	setAttr ".wl[402].w[7]" 0.080307425827950044;
	setAttr ".wl[402].w[11]" 0.11180982497997527;
	setAttr ".wl[402].w[12]" 0.092868882814813453;
	setAttr ".wl[402].w[19]" 0.31586043451261459;
	setAttr ".wl[402].w[20]" 0.39915343186464669;
	setAttr -s 5 ".wl[403].w";
	setAttr ".wl[403].w[11]" 0.30436140818967844;
	setAttr ".wl[403].w[12]" 0.40563102630415843;
	setAttr ".wl[403].w[15]" 0.12085225338092848;
	setAttr ".wl[403].w[16]" 0.087091058711423891;
	setAttr ".wl[403].w[19]" 0.082064253413810573;
	setAttr -s 5 ".wl[404].w";
	setAttr ".wl[404].w[7]" 0.11479799884666216;
	setAttr ".wl[404].w[8]" 0.087161760928569629;
	setAttr ".wl[404].w[11]" 0.079261207123503777;
	setAttr ".wl[404].w[15]" 0.32099134727869333;
	setAttr ".wl[404].w[16]" 0.39778768582257118;
	setAttr -s 5 ".wl[405].w";
	setAttr ".wl[405].w[7]" 0.31242167269125098;
	setAttr ".wl[405].w[8]" 0.39861374348375317;
	setAttr ".wl[405].w[9]" 0.087732685694432155;
	setAttr ".wl[405].w[19]" 0.11353945201728032;
	setAttr ".wl[405].w[20]" 0.087692446113283473;
	setAttr -s 5 ".wl[406].w";
	setAttr ".wl[406].w[6]" 0.21129908994626115;
	setAttr ".wl[406].w[7]" 0.10501010435217098;
	setAttr ".wl[406].w[11]" 0.13703559574510291;
	setAttr ".wl[406].w[19]" 0.52889761690886816;
	setAttr ".wl[406].w[20]" 0.017757593047596814;
	setAttr -s 5 ".wl[407].w";
	setAttr ".wl[407].w[6]" 0.20026970104078873;
	setAttr ".wl[407].w[11]" 0.48825715438609801;
	setAttr ".wl[407].w[12]" 0.023736502884751418;
	setAttr ".wl[407].w[15]" 0.16153469030992107;
	setAttr ".wl[407].w[19]" 0.12620195137844067;
	setAttr -s 5 ".wl[408].w";
	setAttr ".wl[408].w[6]" 0.1982768813363853;
	setAttr ".wl[408].w[7]" 0.13140669013914044;
	setAttr ".wl[408].w[11]" 0.10415525435405278;
	setAttr ".wl[408].w[15]" 0.5481879692765087;
	setAttr ".wl[408].w[16]" 0.017973204893912732;
	setAttr -s 5 ".wl[409].w";
	setAttr ".wl[409].w[6]" 0.20313387171992056;
	setAttr ".wl[409].w[7]" 0.48442917516597633;
	setAttr ".wl[409].w[8]" 0.022516523880607459;
	setAttr ".wl[409].w[15]" 0.1361173963868417;
	setAttr ".wl[409].w[19]" 0.15380303284665378;
	setAttr -s 5 ".wl[410].w";
	setAttr ".wl[410].w[4]" 0.20602878092744256;
	setAttr ".wl[410].w[5]" 0.24421591345517002;
	setAttr ".wl[410].w[13]" 0.4059635026834601;
	setAttr ".wl[410].w[17]" 0.079725109055681184;
	setAttr ".wl[410].w[21]" 0.064066693878246372;
	setAttr -s 5 ".wl[411].w";
	setAttr ".wl[411].w[4]" 0.21993479200013721;
	setAttr ".wl[411].w[5]" 0.23499173432680878;
	setAttr ".wl[411].w[9]" 0.064679771178295251;
	setAttr ".wl[411].w[13]" 0.083853605941393197;
	setAttr ".wl[411].w[21]" 0.39654009655336553;
	setAttr -s 5 ".wl[412].w";
	setAttr ".wl[412].w[4]" 0.21968193477918815;
	setAttr ".wl[412].w[5]" 0.23225489370229996;
	setAttr ".wl[412].w[9]" 0.40556826244057459;
	setAttr ".wl[412].w[17]" 0.062998416989515665;
	setAttr ".wl[412].w[21]" 0.079496492088421619;
	setAttr -s 5 ".wl[413].w";
	setAttr ".wl[413].w[4]" 0.20774275538579604;
	setAttr ".wl[413].w[5]" 0.24288282919477097;
	setAttr ".wl[413].w[9]" 0.085449883250390532;
	setAttr ".wl[413].w[13]" 0.066404426467822547;
	setAttr ".wl[413].w[17]" 0.39752010570121993;
	setAttr -s 5 ".wl[414].w";
	setAttr ".wl[414].w[2]" 0.0048101764944455862;
	setAttr ".wl[414].w[3]" 0.043445036981952123;
	setAttr ".wl[414].w[4]" 0.58012494900126688;
	setAttr ".wl[414].w[5]" 0.36862920977875097;
	setAttr ".wl[414].w[25]" 0.0029906277435843625;
	setAttr -s 5 ".wl[415].w";
	setAttr ".wl[415].w[3]" 0.0047657753491359258;
	setAttr ".wl[415].w[4]" 0.47205239774405028;
	setAttr ".wl[415].w[5]" 0.50381755009637808;
	setAttr ".wl[415].w[20]" 0.0021839692555534573;
	setAttr ".wl[415].w[21]" 0.017180307554882323;
	setAttr -s 5 ".wl[416].w[1:5]"  0.00017790579789226326 0.0034953154351745502 
		0.038513758334533167 0.59761451574459779 0.36019850468780229;
	setAttr -s 5 ".wl[417].w";
	setAttr ".wl[417].w[3]" 0.0046048312352067909;
	setAttr ".wl[417].w[4]" 0.43786908530822438;
	setAttr ".wl[417].w[5]" 0.53755692244956843;
	setAttr ".wl[417].w[12]" 0.0024637410406311891;
	setAttr ".wl[417].w[13]" 0.017505419966369225;
	setAttr -s 5 ".wl[418].w";
	setAttr ".wl[418].w[2]" 0.0023673031634970886;
	setAttr ".wl[418].w[3]" 0.021920398867569989;
	setAttr ".wl[418].w[4]" 0.52409372912299024;
	setAttr ".wl[418].w[5]" 0.44821090057379875;
	setAttr ".wl[418].w[25]" 0.0034076682721439211;
	setAttr -s 5 ".wl[419].w";
	setAttr ".wl[419].w[3]" 0.0048016326747621421;
	setAttr ".wl[419].w[4]" 0.4404042100951589;
	setAttr ".wl[419].w[5]" 0.53484349303609324;
	setAttr ".wl[419].w[16]" 0.0027682155587727664;
	setAttr ".wl[419].w[17]" 0.017182448635212948;
	setAttr -s 5 ".wl[420].w";
	setAttr ".wl[420].w[2]" 0.00016715768242598082;
	setAttr ".wl[420].w[3]" 0.0095468587600297788;
	setAttr ".wl[420].w[4]" 0.52206083329270669;
	setAttr ".wl[420].w[5]" 0.46793860116043806;
	setAttr ".wl[420].w[25]" 0.00028654910439961578;
	setAttr -s 5 ".wl[421].w";
	setAttr ".wl[421].w[3]" 0.0047924700989176354;
	setAttr ".wl[421].w[4]" 0.47235324704596388;
	setAttr ".wl[421].w[5]" 0.50129479012404343;
	setAttr ".wl[421].w[8]" 0.0027230946482539324;
	setAttr ".wl[421].w[9]" 0.018836398082821091;
	setAttr -s 5 ".wl[422].w";
	setAttr ".wl[422].w[1]" 0.16248285548771668;
	setAttr ".wl[422].w[2]" 0.0800943329922717;
	setAttr ".wl[422].w[3]" 0.35910941621686993;
	setAttr ".wl[422].w[25]" 0.3541980587636705;
	setAttr ".wl[422].w[26]" 0.044115336539471431;
	setAttr -s 5 ".wl[423].w";
	setAttr ".wl[423].w[2]" 0.067015067744686657;
	setAttr ".wl[423].w[3]" 0.35804674536334052;
	setAttr ".wl[423].w[4]" 0.22768654303886379;
	setAttr ".wl[423].w[5]" 0.059786873105770362;
	setAttr ".wl[423].w[25]" 0.28746477074733878;
	setAttr -s 5 ".wl[424].w";
	setAttr ".wl[424].w[2]" 0.0057231297905161729;
	setAttr ".wl[424].w[3]" 0.084072098169086631;
	setAttr ".wl[424].w[4]" 0.55659385782663584;
	setAttr ".wl[424].w[5]" 0.32905375822367033;
	setAttr ".wl[424].w[25]" 0.024557155990090968;
	setAttr -s 5 ".wl[425].w";
	setAttr ".wl[425].w[2]" 0.042358124310029284;
	setAttr ".wl[425].w[3]" 0.36164141907123659;
	setAttr ".wl[425].w[4]" 0.22260012933619361;
	setAttr ".wl[425].w[5]" 0.05409534324746141;
	setAttr ".wl[425].w[25]" 0.31930498403507906;
	setAttr -s 5 ".wl[426].w";
	setAttr ".wl[426].w[0]" 0.0021785054984298879;
	setAttr ".wl[426].w[1]" 0.0098585336177580193;
	setAttr ".wl[426].w[2]" 0.010219902630219439;
	setAttr ".wl[426].w[3]" 0.48887155090404399;
	setAttr ".wl[426].w[25]" 0.48887150734954882;
	setAttr -s 5 ".wl[427].w";
	setAttr ".wl[427].w[2]" 0.0015056964816879497;
	setAttr ".wl[427].w[3]" 0.058704394328988753;
	setAttr ".wl[427].w[4]" 0.93905932216821364;
	setAttr ".wl[427].w[5]" 0.00040668582952252532;
	setAttr ".wl[427].w[25]" 0.00032390119158718592;
	setAttr -s 5 ".wl[428].w";
	setAttr ".wl[428].w[2]" 0.0037691939171407454;
	setAttr ".wl[428].w[3]" 0.13195033559143585;
	setAttr ".wl[428].w[4]" 0.56743877513054475;
	setAttr ".wl[428].w[5]" 0.24638937440622338;
	setAttr ".wl[428].w[25]" 0.050452320954655329;
	setAttr -s 5 ".wl[429].w";
	setAttr ".wl[429].w[2]" 0.0023092881124437891;
	setAttr ".wl[429].w[3]" 0.049983524692926017;
	setAttr ".wl[429].w[4]" 0.9468204613718384;
	setAttr ".wl[429].w[5]" 0.00039869577429927668;
	setAttr ".wl[429].w[25]" 0.00048803004849243124;
	setAttr -s 5 ".wl[430].w";
	setAttr ".wl[430].w[2]" 0.046683763513917113;
	setAttr ".wl[430].w[3]" 0.37674046394700039;
	setAttr ".wl[430].w[4]" 0.20982912825930225;
	setAttr ".wl[430].w[5]" 0.037351969080717619;
	setAttr ".wl[430].w[25]" 0.32939467519906268;
	setAttr -s 5 ".wl[431].w";
	setAttr ".wl[431].w[2]" 0.0098649090871428657;
	setAttr ".wl[431].w[3]" 0.16895010099546917;
	setAttr ".wl[431].w[4]" 0.58331272852194382;
	setAttr ".wl[431].w[5]" 0.19562507873782559;
	setAttr ".wl[431].w[25]" 0.04224718265761853;
	setAttr -s 5 ".wl[432].w";
	setAttr ".wl[432].w[2]" 0.0072563273252606673;
	setAttr ".wl[432].w[3]" 0.38646782559468507;
	setAttr ".wl[432].w[4]" 0.23564507579097241;
	setAttr ".wl[432].w[5]" 0.037098064133776296;
	setAttr ".wl[432].w[25]" 0.33353270715530564;
	setAttr -s 5 ".wl[433].w";
	setAttr ".wl[433].w[1]" 0.0058195312010369512;
	setAttr ".wl[433].w[2]" 0.013200924081486943;
	setAttr ".wl[433].w[3]" 0.48692823385207568;
	setAttr ".wl[433].w[4]" 0.010341851276532569;
	setAttr ".wl[433].w[25]" 0.48370945958886791;
	setAttr -s 5 ".wl[434].w";
	setAttr ".wl[434].w[2]" 0.032822050831002945;
	setAttr ".wl[434].w[3]" 0.38474059290091356;
	setAttr ".wl[434].w[4]" 0.21039428033329174;
	setAttr ".wl[434].w[5]" 0.034402174179927733;
	setAttr ".wl[434].w[25]" 0.33764090175486411;
	setAttr -s 5 ".wl[435].w";
	setAttr ".wl[435].w[1]" 0.003190710096204025;
	setAttr ".wl[435].w[2]" 0.007334768152523998;
	setAttr ".wl[435].w[3]" 0.49158676160068221;
	setAttr ".wl[435].w[4]" 0.01343451177843118;
	setAttr ".wl[435].w[25]" 0.48445324837215864;
	setAttr -s 5 ".wl[436].w";
	setAttr ".wl[436].w[2]" 0.0058259815251566656;
	setAttr ".wl[436].w[3]" 0.37577293331746325;
	setAttr ".wl[436].w[4]" 0.24797814886959543;
	setAttr ".wl[436].w[5]" 0.03428031404986507;
	setAttr ".wl[436].w[25]" 0.33614262223791957;
	setAttr -s 5 ".wl[437].w";
	setAttr ".wl[437].w[2]" 0.0070453245426770799;
	setAttr ".wl[437].w[3]" 0.16420546963895222;
	setAttr ".wl[437].w[4]" 0.60399261643677793;
	setAttr ".wl[437].w[5]" 0.18475440351279399;
	setAttr ".wl[437].w[25]" 0.040002185868798813;
	setAttr -s 5 ".wl[438].w";
	setAttr ".wl[438].w[2]" 0.044179829905900754;
	setAttr ".wl[438].w[3]" 0.29520177229323769;
	setAttr ".wl[438].w[4]" 0.4034672376974634;
	setAttr ".wl[438].w[5]" 0.060884684453275682;
	setAttr ".wl[438].w[25]" 0.19626647565012245;
	setAttr -s 5 ".wl[439].w";
	setAttr ".wl[439].w[2]" 0.0095136060885225547;
	setAttr ".wl[439].w[3]" 0.20084783446167562;
	setAttr ".wl[439].w[4]" 0.65288636074024009;
	setAttr ".wl[439].w[5]" 0.1036664084467948;
	setAttr ".wl[439].w[25]" 0.033085790262766986;
	setAttr -s 5 ".wl[440].w";
	setAttr ".wl[440].w[2]" 0.010908755266361824;
	setAttr ".wl[440].w[3]" 0.28879431283036783;
	setAttr ".wl[440].w[4]" 0.5258910639028942;
	setAttr ".wl[440].w[5]" 0.027275050064348418;
	setAttr ".wl[440].w[25]" 0.14713081793602761;
	setAttr -s 5 ".wl[441].w";
	setAttr ".wl[441].w[2]" 0.025703898520703643;
	setAttr ".wl[441].w[3]" 0.46870826503536039;
	setAttr ".wl[441].w[4]" 0.10148480885270114;
	setAttr ".wl[441].w[5]" 0.0016726940533414131;
	setAttr ".wl[441].w[25]" 0.40243033353789337;
	setAttr -s 5 ".wl[442].w";
	setAttr ".wl[442].w[2]" 0.041074517129293837;
	setAttr ".wl[442].w[3]" 0.29940434759418644;
	setAttr ".wl[442].w[4]" 0.41662495873055094;
	setAttr ".wl[442].w[5]" 0.041337227257514368;
	setAttr ".wl[442].w[25]" 0.2015589492884545;
	setAttr -s 5 ".wl[443].w";
	setAttr ".wl[443].w[1]" 0.0011872326529163057;
	setAttr ".wl[443].w[2]" 0.02155530875338852;
	setAttr ".wl[443].w[3]" 0.46477277387876298;
	setAttr ".wl[443].w[4]" 0.12407571371080255;
	setAttr ".wl[443].w[25]" 0.38840897100412963;
	setAttr -s 5 ".wl[444].w";
	setAttr ".wl[444].w[2]" 0.0085214215945853267;
	setAttr ".wl[444].w[3]" 0.28229373476237107;
	setAttr ".wl[444].w[4]" 0.5409405479788727;
	setAttr ".wl[444].w[5]" 0.024058199888211167;
	setAttr ".wl[444].w[25]" 0.14418609577595976;
	setAttr -s 5 ".wl[445].w";
	setAttr ".wl[445].w[2]" 0.0086218596113105065;
	setAttr ".wl[445].w[3]" 0.19980497577637141;
	setAttr ".wl[445].w[4]" 0.66863124189587053;
	setAttr ".wl[445].w[5]" 0.092554371585669967;
	setAttr ".wl[445].w[25]" 0.030387551130777797;
	setAttr -s 5 ".wl[446].w";
	setAttr ".wl[446].w[2]" 0.026714898278850773;
	setAttr ".wl[446].w[3]" 0.2507548141968603;
	setAttr ".wl[446].w[4]" 0.65025267567441103;
	setAttr ".wl[446].w[5]" 0.0094353568479266445;
	setAttr ".wl[446].w[25]" 0.062842255001951078;
	setAttr -s 5 ".wl[447].w";
	setAttr ".wl[447].w[2]" 0.0031296796163897693;
	setAttr ".wl[447].w[3]" 0.11317413889249517;
	setAttr ".wl[447].w[4]" 0.86234855686695877;
	setAttr ".wl[447].w[5]" 0.014726341558744881;
	setAttr ".wl[447].w[25]" 0.006621283065411457;
	setAttr -s 5 ".wl[448].w";
	setAttr ".wl[448].w[2]" 0.0045827549299365944;
	setAttr ".wl[448].w[3]" 0.17104760647938427;
	setAttr ".wl[448].w[4]" 0.7779666901271387;
	setAttr ".wl[448].w[5]" 0.00084699723550067977;
	setAttr ".wl[448].w[25]" 0.045555951228039758;
	setAttr -s 5 ".wl[449].w";
	setAttr ".wl[449].w[2]" 0.015138089610211019;
	setAttr ".wl[449].w[3]" 0.29792929631655357;
	setAttr ".wl[449].w[4]" 0.60945209307559989;
	setAttr ".wl[449].w[5]" 0.00035016172628553013;
	setAttr ".wl[449].w[25]" 0.077130359271349994;
	setAttr -s 5 ".wl[450].w";
	setAttr ".wl[450].w[2]" 0.033672542989167102;
	setAttr ".wl[450].w[3]" 0.24656994030538659;
	setAttr ".wl[450].w[4]" 0.63906288028181824;
	setAttr ".wl[450].w[5]" 0.0071633518265181041;
	setAttr ".wl[450].w[25]" 0.07353128459710985;
	setAttr -s 5 ".wl[451].w";
	setAttr ".wl[451].w[2]" 0.022718550372313167;
	setAttr ".wl[451].w[3]" 0.27470849842527728;
	setAttr ".wl[451].w[4]" 0.64706488750724078;
	setAttr ".wl[451].w[5]" 0.00037947560775524998;
	setAttr ".wl[451].w[25]" 0.055128588087413548;
	setAttr -s 5 ".wl[452].w";
	setAttr ".wl[452].w[2]" 0.0055193074034695861;
	setAttr ".wl[452].w[3]" 0.15942213261021243;
	setAttr ".wl[452].w[4]" 0.78203054829921115;
	setAttr ".wl[452].w[5]" 0.00078269058420199055;
	setAttr ".wl[452].w[25]" 0.052245321102904828;
	setAttr -s 5 ".wl[453].w";
	setAttr ".wl[453].w[2]" 0.0054595489195488388;
	setAttr ".wl[453].w[3]" 0.12055164278855235;
	setAttr ".wl[453].w[4]" 0.84546146814508005;
	setAttr ".wl[453].w[5]" 0.01660634576571858;
	setAttr ".wl[453].w[25]" 0.011920994381099927;
	setAttr -s 5 ".wl[454].w";
	setAttr ".wl[454].w[8]" 0.025557042910775922;
	setAttr ".wl[454].w[9]" 0.15912484243349984;
	setAttr ".wl[454].w[13]" 0.11467312927809785;
	setAttr ".wl[454].w[16]" 0.047549678056251432;
	setAttr ".wl[454].w[17]" 0.65309530732137511;
	setAttr -s 5 ".wl[455].w";
	setAttr ".wl[455].w[12]" 0.043838634456662494;
	setAttr ".wl[455].w[13]" 0.65306797809963302;
	setAttr ".wl[455].w[16]" 0.028473457728325165;
	setAttr ".wl[455].w[17]" 0.16144820692068504;
	setAttr ".wl[455].w[21]" 0.1131717227946944;
	setAttr -s 5 ".wl[456].w";
	setAttr ".wl[456].w[9]" 0.1136188900695066;
	setAttr ".wl[456].w[12]" 0.025629730701235323;
	setAttr ".wl[456].w[13]" 0.16399567818832092;
	setAttr ".wl[456].w[20]" 0.048063245665423603;
	setAttr ".wl[456].w[21]" 0.64869245537551334;
	setAttr -s 5 ".wl[457].w";
	setAttr ".wl[457].w[8]" 0.044033192920873765;
	setAttr ".wl[457].w[9]" 0.64605136953883968;
	setAttr ".wl[457].w[17]" 0.11907080966314461;
	setAttr ".wl[457].w[20]" 0.028366964028359597;
	setAttr ".wl[457].w[21]" 0.16247766384878237;
	setAttr -s 5 ".wl[458].w";
	setAttr ".wl[458].w[8]" 0.032539578939143193;
	setAttr ".wl[458].w[9]" 0.15871494987497736;
	setAttr ".wl[458].w[13]" 0.11155928618257122;
	setAttr ".wl[458].w[16]" 0.0596336182980583;
	setAttr ".wl[458].w[17]" 0.63755256670525007;
	setAttr -s 5 ".wl[459].w";
	setAttr ".wl[459].w[8]" 0.028934015751692743;
	setAttr ".wl[459].w[9]" 0.16016210742182632;
	setAttr ".wl[459].w[13]" 0.11625159950470625;
	setAttr ".wl[459].w[16]" 0.056964374014573341;
	setAttr ".wl[459].w[17]" 0.63768790330720115;
	setAttr -s 5 ".wl[460].w";
	setAttr ".wl[460].w[12]" 0.054149494130921724;
	setAttr ".wl[460].w[13]" 0.64753390460927607;
	setAttr ".wl[460].w[16]" 0.036078517881464454;
	setAttr ".wl[460].w[17]" 0.15528796075118056;
	setAttr ".wl[460].w[21]" 0.10695012262715722;
	setAttr -s 5 ".wl[461].w";
	setAttr ".wl[461].w[12]" 0.051303356713017445;
	setAttr ".wl[461].w[13]" 0.64364373657574403;
	setAttr ".wl[461].w[16]" 0.031375834169377968;
	setAttr ".wl[461].w[17]" 0.15876925481271101;
	setAttr ".wl[461].w[21]" 0.11490781772914958;
	setAttr -s 5 ".wl[462].w";
	setAttr ".wl[462].w[9]" 0.11321772311886552;
	setAttr ".wl[462].w[12]" 0.033112997987859306;
	setAttr ".wl[462].w[13]" 0.16065249483481334;
	setAttr ".wl[462].w[20]" 0.05950502805632945;
	setAttr ".wl[462].w[21]" 0.63351175600213228;
	setAttr -s 5 ".wl[463].w";
	setAttr ".wl[463].w[9]" 0.11610196078851708;
	setAttr ".wl[463].w[12]" 0.027594809936976036;
	setAttr ".wl[463].w[13]" 0.16191334171005542;
	setAttr ".wl[463].w[20]" 0.058288568705388191;
	setAttr ".wl[463].w[21]" 0.63610131885906329;
	setAttr -s 5 ".wl[464].w";
	setAttr ".wl[464].w[8]" 0.05657224324194008;
	setAttr ".wl[464].w[9]" 0.6479788308668839;
	setAttr ".wl[464].w[17]" 0.1094747773358611;
	setAttr ".wl[464].w[20]" 0.03494900333550436;
	setAttr ".wl[464].w[21]" 0.15102514521981059;
	setAttr -s 5 ".wl[465].w";
	setAttr ".wl[465].w[8]" 0.05455771291285879;
	setAttr ".wl[465].w[9]" 0.64076511081493226;
	setAttr ".wl[465].w[17]" 0.11598022213672249;
	setAttr ".wl[465].w[20]" 0.030241783734259575;
	setAttr ".wl[465].w[21]" 0.15845517040122681;
	setAttr -s 5 ".wl[466].w";
	setAttr ".wl[466].w[6]" 0.47355095555442439;
	setAttr ".wl[466].w[7]" 0.080314056963865732;
	setAttr ".wl[466].w[11]" 0.070574595657650951;
	setAttr ".wl[466].w[15]" 0.022253530306413045;
	setAttr ".wl[466].w[19]" 0.3533068615176459;
	setAttr -s 5 ".wl[467].w";
	setAttr ".wl[467].w[6]" 0.44489814393994254;
	setAttr ".wl[467].w[7]" 0.014824559880871052;
	setAttr ".wl[467].w[11]" 0.23342454179603234;
	setAttr ".wl[467].w[15]" 0.1548863037265315;
	setAttr ".wl[467].w[19]" 0.15196645065662268;
	setAttr -s 5 ".wl[468].w";
	setAttr ".wl[468].w[6]" 0.45250435513010345;
	setAttr ".wl[468].w[7]" 0.088293180574298954;
	setAttr ".wl[468].w[11]" 0.067141298845753178;
	setAttr ".wl[468].w[15]" 0.36847964493062135;
	setAttr ".wl[468].w[19]" 0.023581520519222892;
	setAttr -s 5 ".wl[469].w";
	setAttr ".wl[469].w[6]" 0.43690794869363653;
	setAttr ".wl[469].w[7]" 0.25805401004137785;
	setAttr ".wl[469].w[11]" 0.011343477156159812;
	setAttr ".wl[469].w[15]" 0.14695399961363453;
	setAttr ".wl[469].w[19]" 0.14674056449519124;
	setAttr -s 5 ".wl[470].w";
	setAttr ".wl[470].w[5]" 0.038069252704196539;
	setAttr ".wl[470].w[6]" 0.87142080444493664;
	setAttr ".wl[470].w[7]" 0.015647748581909069;
	setAttr ".wl[470].w[11]" 0.010308347743052297;
	setAttr ".wl[470].w[19]" 0.064553846525905623;
	setAttr -s 5 ".wl[471].w";
	setAttr ".wl[471].w[5]" 0.10750686404493444;
	setAttr ".wl[471].w[6]" 0.79148560026828585;
	setAttr ".wl[471].w[11]" 0.044967774757905969;
	setAttr ".wl[471].w[15]" 0.02609206938856351;
	setAttr ".wl[471].w[19]" 0.02994769154031016;
	setAttr -s 5 ".wl[472].w";
	setAttr ".wl[472].w[5]" 0.038094446379459947;
	setAttr ".wl[472].w[6]" 0.86954340753064352;
	setAttr ".wl[472].w[7]" 0.015324006000780228;
	setAttr ".wl[472].w[11]" 0.009351209458911075;
	setAttr ".wl[472].w[15]" 0.067686930630205075;
	setAttr -s 5 ".wl[473].w";
	setAttr ".wl[473].w[5]" 0.010842546836051859;
	setAttr ".wl[473].w[6]" 0.88626036563482202;
	setAttr ".wl[473].w[7]" 0.052211325171793443;
	setAttr ".wl[473].w[15]" 0.022592995562230215;
	setAttr ".wl[473].w[19]" 0.028092766795102544;
	setAttr -s 42 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.7659701147399991e-016 2.3049750956167754e-017 0.99999999999999978 -0
		 0.99654575824487912 0.083045479853743859 -2.0744775860549923e-016 0 -0.083045479853743623 0.99654575824487912 1.8439800764933412e-016 -0
		 -3.1647515863766169 -0.27041433058893311 6.576829832815971e-016 1;
	setAttr ".pm[1]" -type "matrix" 2.7755575615628904e-016 1.4251881588465539e-031 0.99999999999999978 -0
		 0.99999999999999978 5.134781488891347e-016 -2.0744775860549923e-016 0 -2.7755575615628894e-016 0.99999999999999978 1.8439800764933409e-016 -0
		 -3.8672217865545324 0.0509168374422704 8.1163545503125234e-016 1;
	setAttr ".pm[2]" -type "matrix" 2.7731513560290452e-016 1.3401947723152455e-016 -0.99999999999999978 -0
		 0.99913307309235155 0.041630544712187044 2.125460299383533e-016 0 0.04163054471218728 -0.99913307309235122 -3.0675651963781479e-016 -0
		 -5.5876153180304255 -0.2837783218370466 -1.2047259261438953e-015 1;
	setAttr ".pm[3]" -type "matrix" 2.8953843089113534e-016 -1.4901161421347564e-008 0.99999999999999956 -0
		 0.99816849663119056 0.060495060401891225 9.0144644134260976e-010 0 -0.060495060401890961 0.99816849663118967 1.4873870095918844e-008 -0
		 -6.9632953155590211 -0.42869206167457491 -6.388008085256724e-009 1;
	setAttr ".pm[4]" -type "matrix" -1.1986840566226087e-009 1.4901161534185759e-008 -0.99999999999999956 -0
		 0.99980005998000676 0.019996001199601241 -9.0048081790332928e-010 -0 0.019996001199601432 -0.99980005998000587 -1.4922151267882866e-008 -0
		 -8.8726311636568838 -0.28596993511967539 6.3741979213420596e-009 1;
	setAttr ".pm[5]" -type "matrix" -9.0048074779533786e-010 1.4922151083484862e-008 -0.99999999999999956 -0
		 0.99999999999999978 4.1589295723915234e-016 -9.0048081790332928e-010 -0 6.2494112922704593e-016 -0.99999999999999889 -1.4922151267882866e-008 -0
		 -11.755514297308153 -0.050916837442277207 9.8258263789185219e-009 1;
	setAttr ".pm[6]" -type "matrix" 0.99999999999999933 -1.5805604438640173e-008 -1.4922151083484869e-008 -0
		 1.5805604564259321e-008 0.99999999999999978 2.819625261091018e-017 -0 1.4922151267882866e-008 -9.7075742235565289e-017 0.99999999999999889 -0
		 -2.7696002783804847e-007 -17.570970819834542 0.050916837442271906 1;
	setAttr ".pm[7]" -type "matrix" -1.7710871431401779e-016 -1.3884105249142146e-015 -0.99999999999999956 0
		 -0.72065774880512745 0.69329099885050116 -8.9633354591659392e-016 0 0.69329099885050038 0.72065774880512701 -1.2979480110895353e-015 -0
		 14.49272888234019 -16.508337447373854 2.2020327969311895e-014 1;
	setAttr ".pm[8]" -type "matrix" 2.9175986980874699e-016 -1.3689147017793737e-015 -0.99999999999999956 -0
		 -0.9093078989577118 0.41612395376030831 -8.9633354591659372e-016 0 0.41612395376030775 0.90930789895771114 -1.2979480110895349e-015 -0
		 13.177552896668463 -12.876458381543184 2.2020327969311892e-014 1;
	setAttr ".pm[9]" -type "matrix" 7.6231392767065047e-016 -1.173852102293076e-015 -0.99999999999999956 -0
		 -0.99800311314771806 0.063164753996690443 -8.9633354591659372e-016 0 0.063164753996690109 0.99800311314771728 -1.2979480110895349e-015 -0
		 13.424255275884391 -8.6449997643179479 2.1197747264383734e-014 1;
	setAttr ".pm[10]" -type "matrix" 0.99999999999999956 4.7960727398735465e-017 -1.2348585538826534e-015 -0
		 6.3666277447726501e-017 0.99999999999999978 -4.0245584642661984e-016 0 1.4089703135520502e-015 6.9388939039072225e-016 0.99999999999999911 -0
		 -1.2308203870676603e-014 -9.394784421827147 -8.0676907831143669 1;
	setAttr ".pm[11]" -type "matrix" -3.4900793749775081e-016 1.2418713622725597e-015 0.99999999999999933 -0
		 0.72065774880512745 -0.69329099885050105 1.2659957351289975e-015 -0 0.69329099885050038 0.72065774880512656 -3.8882571320782323e-016 -0
		 -14.492745877440591 16.508349886173626 -2.8430895785815733e-014 1;
	setAttr ".pm[12]" -type "matrix" -7.3987012994784565e-016 1.0567134009181936e-015 0.99999999999999933 -0
		 0.90930789895771214 -0.41612395376030786 1.2659957351289975e-015 -0 0.41612395376030764 0.90930789895771102 -3.8882571320782328e-016 -0
		 -13.177593130225942 12.876476898325945 -2.5627875766694644e-014 1;
	setAttr ".pm[13]" -type "matrix" -1.0690253936984759e-015 7.219665702073441e-016 0.99999999999999956 -0
		 0.99800311314771828 -0.063164753996690165 1.2659957351289977e-015 -0 0.063164753996690332 0.99800311314771717 -3.8882571320782323e-016 -0
		 -13.424247255031757 8.6450023670194582 -2.2553898001349733e-014 1;
	setAttr ".pm[14]" -type "matrix" -0.99999999999999956 2.2959503206627597e-016 7.6450203177506752e-016 -0
		 -4.3332846666013018e-016 -1 6.9388939039072294e-016 0 4.9984801567033829e-016 4.5796699765787658e-016 0.99999999999999889 -0
		 1.0484542636655182e-014 9.3947800000000043 8.0676899999999812 1;
	setAttr ".pm[15]" -type "matrix" -0.70421476507148273 -0.70998701724419988 -3.1794610547147091e-009 -0
		 -0.70998701724419999 0.70421476507148295 1.7954444531643987e-008 0 -1.0508399348003755e-008 1.4901160995187087e-008 -0.99999999999999867 -0
		 14.402822580239077 -16.698835070818479 -4.0018263805234771e-007 1;
	setAttr ".pm[16]" -type "matrix" -0.38758863936308569 -0.92183243956625383 -3.1794610547147074e-009 -0
		 -0.92183243956625405 0.38758863936308569 1.7954444531643984e-008 0 -1.5318666644950301e-008 9.8898689618466524e-009 -0.99999999999999867 -0
		 13.301649235915205 -12.641554380113227 -4.0018263805234766e-007 1;
	setAttr ".pm[17]" -type "matrix" -0.042696072944573879 -0.99908810690304528 -3.1794610547147074e-009 -0
		 -0.9990881069030455 0.042696072944573754 1.7954444531643987e-008 0 -1.780232167119432e-008 3.9431458224285427e-009 -0.99999999999999867 -0
		 13.358574684554776 -8.5270135424616953 -3.7931917131101943e-007 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999933 8.6171454162872899e-017 3.1794610547147087e-009 -0
		 2.2390984317097745e-017 0.99999999999999978 -7.4608268787077945e-009 0 -3.1794608703167048e-009 7.4608270456819221e-009 0.99999999999999867 -0
		 8.1449672943197697 -9.1220002387135644 2.3752135345554592e-007 1;
	setAttr ".pm[19]" -type "matrix" -0.70421476507148273 -0.70998701724419999 -1.4922151083484876e-008 -0
		 0.7099870172442001 -0.70421476507148295 2.8196254432605277e-017 0 -1.0508399150942772e-008 -1.0594533767280348e-008 0.99999999999999911 0
		 -14.402831496218971 16.698849852906726 2.5565824338236213e-008 1;
	setAttr ".pm[20]" -type "matrix" -0.38758863936308546 -0.92183243956625405 -1.4922151083484872e-008 -0
		 0.92183243956625427 -0.38758863936308569 2.8196252778244052e-017 0 -5.7836561783589132e-009 -1.375572316063787e-008 0.99999999999999911 0
		 -13.301634506347598 12.641551674080329 2.5565824338236266e-008 1;
	setAttr ".pm[21]" -type "matrix" -0.04269607294457408 -0.99908810690304517 -1.4922151083484869e-008 -0
		 0.99908810690304539 -0.042696072944574198 2.8196252881641622e-017 0 -6.3711712037216827e-010 -1.4908543867075244e-008 0.99999999999999889 0
		 -13.358611529386545 8.5270159793060643 2.5565824338236239e-008 1;
	setAttr ".pm[22]" -type "matrix" 0.99999999999999956 -4.8276616716055143e-016 1.4922151083484866e-008 -0
		 -2.2204460450428253e-016 -0.99999999999999978 -1.003201625738115e-008 0 1.4922151267882866e-008 1.0032016090407006e-008 -0.99999999999999889 -0
		 -8.1449699999999936 9.1220000000000088 6.5946227704388499e-008 1;
	setAttr ".pm[23]" -type "matrix" 0.99999999999999956 -1.5846787809662847e-008 -1.5221077169199985e-008 -0
		 1.584678789877974e-008 0.99999999999999978 4.0856784600002067e-016 -0 1.5221077262950952e-008 -5.3583899543295017e-016 0.99999999999999889 -0
		 -1.0529740804174486 -9.0643761109034209 1.6027394011947719e-008 1;
	setAttr ".pm[24]" -type "matrix" 0.99999999999999867 3.5376701223157375e-008 1.5611675492992177e-008 -0
		 3.5376701362991007e-008 -0.99999999999999889 -1.0585150268871746e-015 0 1.561167570542993e-008 1.457194338002567e-015 -0.99999999999999889 -0
		 1.0529696793321341 9.0643800372505936 1.6438635385982742e-008 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999956 -1.577531625979449e-008 -1.3972423251608108e-008 -0
		 1.5775316354843531e-008 0.99999999999999956 1.4690396944221488e-017 -0 1.3972423400851429e-008 -6.1637444126448485e-017 0.99999999999999889 -0
		 -1.3373246956575441e-007 -6.8410539099700616 -1.8474017852811713 1;
	setAttr ".pm[26]" -type "matrix" -2.5113763907374872e-016 2.4064709830238253e-016 -0.99999999999999978 0
		 -0.9048187022009927 0.42579703632988158 2.5959285636828109e-016 0 0.42579703632988142 0.90481870220099303 -7.3589674903423273e-017 -0
		 2.503364615563652 -2.1399522702392275 1.0337361818245629 1;
	setAttr ".pm[27]" -type "matrix" -2.7774102194572529e-016 2.0938257904954063e-016 -0.99999999999999978 0
		 -0.94868329805051377 0.3162277660168365 2.5959285636828104e-016 0 0.31622776601683628 0.9486832980505141 -7.358967490342326e-017 -0
		 1.6637811303994632 -1.9575633040017841 1.5506042727368448 1;
	setAttr ".pm[28]" -type "matrix" -2.9001731595349047e-016 1.9201847861085225e-016 -0.99999999999999978 0
		 -0.96623493960124629 0.25766265056033072 2.5959285636828109e-016 0 0.2576626505603305 0.96623493960124662 -7.3589674903423273e-017 -0
		 0.50811993619386486 -1.9301193909041174 1.7810936891956493 1;
	setAttr ".pm[29]" -type "matrix" 1 1.1878898756331527e-015 -1.1804207304450933e-016 -0
		 -1.0367489736058906e-015 0.99999999999999978 8.3266726846886925e-017 0 5.1767888475348586e-016 5.5511151231258283e-017 1 -0
		 -1.7875021477383088 -0.27535444543811699 -1.9643403733342015 1;
	setAttr ".pm[30]" -type "matrix" 2.5113763907374877e-016 -1.1818241838764731e-016 0.99999999999999978 -0
		 0.90481870220099281 -0.42579703632988203 -2.0744775860549923e-016 0 0.42579703632988219 0.9048187022009927 1.8439800764933407e-016 -0
		 -2.5033676516394752 2.1399541391022989 -1.0552723522792433 1;
	setAttr ".pm[31]" -type "matrix" 2.6331251014325253e-016 -8.7770836714417235e-017 0.99999999999999956 -0
		 0.94868329805051366 -0.31622776601683689 -2.074477586054992e-016 0 0.31622776601683705 0.94868329805051366 1.8439800764933404e-016 -0
		 -1.6446522359037445 2.0149587138491736 -1.6004272569182807 1;
	setAttr ".pm[32]" -type "matrix" 2.6818406864976221e-016 2.1073424192429437e-008 0.99999999999999978 -0
		 0.9662349396012464 -0.25766265056033105 5.4298341447827532e-009 0 0.25766265056033127 0.96623493960124618 -2.0361878636466514e-008 -0
		 -0.47552310078754795 2.0523578228907837 -1.6367489978057652 1;
	setAttr ".pm[33]" -type "matrix" -0.99999999999999933 -1.4932044832897468e-008 2.57917131387661e-008 -0
		 1.4932044815923537e-008 -0.99999999999999956 1.960165491892862e-016 0 2.5791712885359925e-008 5.2562841460840719e-016 0.99999999999999911 -0
		 1.7659660231925618 0.31842656046158951 1.964339954452712 1;
	setAttr ".pm[34]" -type "matrix" 2.5113763907374877e-016 -2.4064709830238253e-016 -0.99999999999999978 -0
		 0.90481870220099292 -0.42579703632988164 2.5959285636828114e-016 0 -0.42579703632988147 -0.90481870220099281 -7.3589674903423334e-017 0
		 -2.5033676516394747 2.1399541391022971 -1.0337400000000005 1;
	setAttr ".pm[35]" -type "matrix" 2.7774102194572539e-016 -2.0938257904954063e-016 -0.99999999999999978 -0
		 0.94868329805051399 -0.3162277660168365 2.5959285636828114e-016 0 -0.31622776601683633 -0.94868329805051388 -7.3589674903423322e-017 0
		 -1.6637849567326926 1.9575605513623298 -1.5506000000000006 1;
	setAttr ".pm[36]" -type "matrix" 2.9001731595349042e-016 -1.9201847861085215e-016 -0.99999999999999978 -0
		 0.96623493960124629 -0.25766265056033066 2.5959285636828109e-016 0 -0.2576626505603305 -0.96623493960124618 -7.3589674903423297e-017 0
		 -0.50811879886280853 1.9301239896004656 -1.8116663500544508 1;
	setAttr ".pm[37]" -type "matrix" 0.99999999999999978 9.7188582901395194e-016 -4.0044712757441084e-016 -0
		 1.1281859244131642e-015 -0.99999999999999956 -2.7755575615629185e-017 0 -2.5947723248412337e-016 -8.3266726846887024e-017 -0.99999999999999956 0
		 1.8751855900107841 0.27535400000000182 1.9643399999999991 1;
	setAttr ".pm[38]" -type "matrix" -2.5113763907374862e-016 1.1818241838764726e-016 0.99999999999999978 -0
		 -0.90481870220099248 0.42579703632988181 -2.0744775860549925e-016 0 -0.42579703632988197 -0.90481870220099236 1.8439800764933412e-016 -0
		 2.5033676516394734 -2.1399541391022976 1.0552700000000006 1;
	setAttr ".pm[39]" -type "matrix" -2.6331251014325248e-016 8.7770836714417173e-017 0.99999999999999978 -0
		 -0.94868329805051355 0.31622776601683666 -2.0744775860549925e-016 0 -0.31622776601683683 -0.94868329805051343 1.8439800764933409e-016 -0
		 1.6637849567326903 -1.9575605513623286 1.5506 1;
	setAttr ".pm[40]" -type "matrix" -2.681840678225814e-016 3.3320009453995395e-008 0.99999999999999911 -0
		 -0.96623493960124596 0.25766265056033072 -8.5853221416325633e-009 0 -0.25766265056033105 -0.96623493960124529 3.2194957437591184e-008 -0
		 0.50811879886280709 -1.9301239326278785 1.7098610669423699 1;
	setAttr ".pm[41]" -type "matrix" -0.99999999999999889 -1.4965216884928809e-008 3.8475101012304988e-008 -0
		 -1.496521698831362e-008 0.99999999999999911 2.0615769333696251e-016 0 -3.8475101175970897e-008 -7.4593778985441422e-017 -0.99999999999999845 0
		 -1.765970070812849 -0.31842702642812393 -1.9643399320541228 1;
	setAttr ".gm" -type "matrix" -0.080934060506384256 -2.1554043995102429e-008 -3.7811826276927092 0
		 -5.064921596059332e-010 8.3051433563232404 -4.7331337954956003e-008 0 3.7811826276927092 -2.3064960263106815e-010 -0.080934060506384256 0
		 0 7.1682186126709002 0 1;
	setAttr -s 36 ".ma";
	setAttr -s 42 ".dpf[0:41]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 36 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 36 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "9FC17439-4C0F-2219-C07C-BD98AD36C64D";
createNode objectSet -n "skinCluster1Set";
	rename -uid "25120C79-440E-CCA3-743E-CB8B58D66581";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "59C6F8AE-40D7-D5AC-30BF-F6A1234C7E7E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "EEA54BA6-401B-B96C-9A82-CB812779B44B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "09780F7D-4662-B5A5-DB11-08B609D66FCD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "B5C32CF1-4A6A-7992-32ED-16999F554B30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "7C6CE17F-4D87-2D59-EA64-8CAA1C8F9639";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "E35DED53-419A-0B9D-8D4E-D891AA48D6CC";
	setAttr -s 36 ".wm";
	setAttr -s 42 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -2.4416272241859573e-016 -1.9363788049193115e-017
		 5.3349972312905775e-032 0 0 3.176276457145458 0.0066619400084864024 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.47878871126684269 0.52034735510371899 0.47878871126684264 0.52034735510371921 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -9.9772410201642877e-020 -2.8489458333697987e-022
		 -4.3536687900324831e-014 0 0.69334029440451495 2.1510571102112408e-016 -1.5395247174965534e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.041558643836876207 0.99913606637056185 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.8089268197403277e-019 -3.7493597200302998e-023
		 2.1810343468958054e-014 0 1.7273633235226913 1.3405046015179951e-015 -3.5833764976212821e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99978324478167557 0.02081978515317013 1.2748441623382694e-018 6.1219067528151692e-017 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -3.0020510161803086e-020 -1.106435535700924e-021
		 5.3521674237103477e-014 0 1.3830896964917303 5.3915205633359164e-015 2.7605270796489809e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9986953277116517 0.051065080112700507 3.8046449819488158e-010 7.4408600920393671e-009 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -5.3053311872640736e-020 -4.24251845687416e-022
		 4.220028266956094e-014 0 1.9035860801936537 -9.7144514654701197e-017 -4.3918397029459482e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99918948741008373 0.040253797947201388 9.7194460106990584e-013 2.4125843454767883e-011 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -9.4224991575521948e-024 3.228547534793414e-022
		 -1.0463853275352195e-014 0 2.8795146027450609 4.1772141301521515e-015 -3.4516284575764611e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0099985003873835094 0.99995001374568893 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.815456522526393 2.5115171352167584e-015
		 -5.2367070458858444e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50000000372628084 0.49999999627371916 -0.49999999627371894 0.50000000372628106 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -2.3368072345464422e-016 7.3373774553231284e-017
		 -5.7449770707453065e-032 0 9.6608628565029437e-008 4.3184083088067347 1.9000996558749583 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.27690656600300695 -0.65063257391814255 -0.27690658041868899 0.65063257925030393 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -5.597726137560644e-031 4.1965625864664223e-028
		 2.0654652485376602e-015 0 6.3119052367808184 8.8817841970012523e-016 -7.8886090522101181e-031 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.1676383384227946 0.98584856214879402 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -9.6618500479028198e-031 2.3881460506450254e-028
		 2.2439160172258013e-015 0 3.7359709219380877 8.8817841970012523e-016 8.2258070492816417e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.18196636895178234 0.98330475467705525 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.5578248791860014 -2.0539125955565396e-015
		 1.9625075176274263e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48395124909522391 0.51554940451829878 0.48395124909522352 0.51554940451829923 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -2.0105600988042383e-008 6.3130039410483528e-009
		 -6.3463385775735622e-017 0 4.1421429029305863e-008 4.3184291801654524 -1.7982631625577268 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.65063258362698007 0.27690657013504866 0.65063256954146664 0.27690657628664717 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 4.4761661326937541e-031 -5.4718887072383201e-031
		 -5.4402306410737268e-016 0 -6.3118903800496913 -1.8335722469231541e-005 -2.8030200191210925e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.16763833842279477 0.98584856214879402 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 5.7422662062715017e-031 -3.2816019580310631e-031
		 -5.0895741814501938e-016 0 -3.7360195765735256 1.8956757894983411e-005 -3.0739777653449112e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.18196636895178217 0.98330475467705525 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.5578212218653942 3.663555730781809e-006
		 -5.1423230835824151e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48395124909522391 0.51554940451829878 0.48395124909522352 0.51554940451829923 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -2.3267459132207117e-016 7.650441725535496e-017
		 1.1400046540155209e-024 0 -1.7132757131416927 4.4144124672500418 0.050916863008032436 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.38456808480862203 -0.92309662990752395 -1.1767494865978602e-008 4.902415215250043e-009 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 3.6159871398315191e-023 -2.9243854672975312e-020
		 5.9147873030020722e-015 0 6.7941645633292449 1.3322676295501878e-015 1.9852334701272664e-023 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.19048004255034126 0.98169106820324092 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 5.5004995609289257e-023 -1.6659664530934626e-020
		 5.4827682566718346e-015 0 3.7437948526975418 -3.6151518054885101e-015 -2.0863466741328178e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.17671963707126653 0.98426123050407699 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.5926508526187533 4.1540416526081097e-016
		 -4.6075035120420704e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.69184677749319112 -0.72204434522561489 -3.7884286436311327e-009 3.6299877787147837e-009 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.7132800705325097 4.4144291530860293
		 0.05091681187644756 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.92309662382919289 0.38456809939872239 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 2.1111388320795142e-039 -5.2354020562928279e-039
		 -2.5546833722722217e-015 0 -6.7941861280053342 2.2800396081379404e-005 1.6315600000000002e-031 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.19048004255034129 0.98169106820324092 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 9.7652953451724379e-039 -1.7996350781892763e-038
		 -2.2591266641913074e-015 0 -3.743746427334905 -1.7808126665741497e-005 9.9261698368440003e-024 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.17671963707126628 0.9842612305040771 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.5926880514683255 -2.5617643828468317e-007
		 -1.9852339999999999e-023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.6918467774931909 -0.72204434522561511 -3.6217802947472782e-009 3.470309049960483e-009 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.18993263112643355 -0.10471864350822044
		 -1.0529739385643015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49497576037892205 0.50497425329203161 -0.4949757529793829 0.50497426084104124 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.18993650528686601 -0.1047185974565098
		 1.052969998211897 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.50497426577307925 0.49497574814499928 0.50497424835999383 0.49497576521330527 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.24652950145841857
		 1.8291761705095428 2.7256849786159464e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.48464031858632634 -0.51490170047283856 -0.48464031136462277 0.51490170814547198 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 1.4433971537315652e-008 -1.145773867333576e-009
		 -3.5202660251956537e-009 0 -0.69094532940907616 0.92126043921210188 1.0337361818245638 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.21815281089067673 0.97591462285411867 5.9757535955969646e-017 1.3358007079113255e-017 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -4.8794252520941174e-017 -1.1430735307163039e-015
		 -3.8328922113287492e-016 0 1.081807012036565 3.8282370386813162e-016 -0.5168680909122817 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.059011710206481438 0.9982572905110717 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 3.9418246507046649e-017 -7.8591253779175461e-016
		 -1.6147971439848048e-016 0 1.2745605714263348 4.1795811361879299e-016 -0.23048941645880444 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.030569318235606994 0.99953264918291196 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.74819999743299237 0.038843467335900037
		 -0.0064084585426585211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.4307950061919445 0.56072779727786137 0.43079500619194416 0.56072779727786182 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 2.3792226656833364e-016 -1.7697832347609615e-017
		 -5.5409142816479425e-017 0 -0.6909417865545322 -0.81942716255772774 1.055272352279244 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.2181528108906774 0.97591462285411845 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 -3.1412043417524215e-017 -4.7966657910266844e-016
		 -2.2564673687867508e-016 0 -1.107567911842209 -0.054740072390908619 0.54515490463903793 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.059011710206481431 0.9982572905110717 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -5.005132902386671e-017 -4.6243415973080192e-017
		 -2.3519027388290337e-016 0 -1.2954375903673738 -0.062622602365903876 0.036321697637276537 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.0531787790948296e-008 -3.221001063192515e-010 -0.030569318235607008 0.99953264918291185 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.67398530885330921
		 0.072297294066508783 0.12921702120451897 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.4307950107311071 0.56072779136963435 0.43079500165278106 0.56072780318608917 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 2.3563701605974229e-016 -1.8705114602229425e-017
		 -6.4153773518418261e-017 0 -0.69094178655453398 0.92126083744227183 -1.0337399999999994 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.97591462285411867 0.21815281089067676 -1.3358007079113257e-017 5.9757535955969646e-017 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 5.6971589633184113e-016 6.8339458369208042e-015
		 3.1415056410832402e-015 0 -1.0818059241189077 4.1515211064435675e-006 0.51685999999999988 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.059011710206481445 0.9982572905110717 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 -1.4597287331200627e-016 3.2532827373568791e-015
		 2.8827448667041546e-016 0 -1.2745658139916114 -7.2732386213285754e-006 0.26106635005445034 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.030569318235606997 0.99953264918291196 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.74819919430552706
		 -0.038838393138236005 0.063519239956332907 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.43079500619194461 0.56072779727786126 0.430795006191944 0.56072779727786204 1 1
		 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 -2.3792215657693456e-016 1.7697811143879371e-017
		 5.5409621880775698e-017 0 -0.69094178655453309 -0.81942716255772774 -1.0552699999999997 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.97591462285411845 0.21815281089067737 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 3.3067758543763579e-016 7.9104281434265907e-015
		 3.0166035336116426e-015 0 1.081805924118908 -4.1515211077758352e-006 -0.4953299999999996 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.059011710206481438 0.9982572905110717 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 -1.0302936711204565e-016 1.1686759037002355e-015
		 -2.4375240774953251e-016 0 1.274565813991611 7.2732386209716671e-006 -0.1592610026306216 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.665221862443469e-008 -5.0928498521321594e-010 -0.030569318235606997 0.99953264918291185 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.70658055675208242 0.049936694616268824
		 -0.056108999033269498 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.43079501144193794 0.56072779044440868 0.43079500094195061 0.56072780411131451 1
		 1 1 yes;
	setAttr -s 36 ".m";
	setAttr -s 36 ".p";
	setAttr ".bp" yes;
createNode geomBind -n "geomBind1";
	rename -uid "78206231-4264-2AC2-2638-02999814F72E";
	setAttr ".mi" 5;
	setAttr ".gvr" 512;
createNode blinn -n "blinn1";
	rename -uid "0DAF788C-4310-4431-4BA8-2FBCD2C24D53";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.28999999 0.31999999 ;
	setAttr ".rfl" 0;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "E51B019E-4DD4-BA48-7FDC-E5A732A4C54A";
createNode animCurveTL -n "ikHandle1_translateX";
	rename -uid "5310A6A8-4A52-208B-F28B-129D7EA2493C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.8751855900107841 7 -1.8751855849190258
		 14 -1.8751855900107841;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "ikHandle1_translateY";
	rename -uid "CBC5BC99-4B31-0F9E-1A79-74B7D574C1B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.275354 7 0.86599542000283258 14 0.275354;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "ikHandle1_translateZ";
	rename -uid "12B35DB5-4866-D925-203D-31A2F08B3904";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9643400000000009 7 1.9643399933800103
		 14 1.9643400000000009;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "ikHandle4_translateX";
	rename -uid "89D2C183-4EFE-9BB1-48C1-B69032C338A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.7659659772836289 7 1.7659659608209901
		 14 1.7659659772836289;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "ikHandle4_translateY";
	rename -uid "2FB95BC4-4528-E7EF-97BE-12B0346E8AF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.31842653409210564 7 0.90906799263306548
		 14 0.31842653409210564;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "ikHandle4_translateZ";
	rename -uid "74EB9A31-4715-B8D8-B459-358648C5ED46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9643400000000018 7 -1.9643399746584751
		 14 -1.9643400000000018;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle1_visibility";
	rename -uid "69BD7E30-4BEB-139C-A959-1ABB8267593A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "ikHandle1_rotateX";
	rename -uid "929E1854-459B-EA48-50EA-308D62305594";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "ikHandle1_rotateY";
	rename -uid "9D415BAE-4235-9324-9AC9-5BB7EE942099";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "ikHandle1_rotateZ";
	rename -uid "F9E00E37-420E-92EC-0A35-78B700AF0FA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle1_scaleX";
	rename -uid "7B4F95B0-4FFA-DD03-CB61-62BE767AF68D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle1_scaleY";
	rename -uid "5FCA6B98-47A5-2AF0-33BB-4DB79055DF1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle1_scaleZ";
	rename -uid "7A1251BD-482F-B964-5797-0D9A525744A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle1_poleVectorX";
	rename -uid "96B49EA9-498E-5481-B5C4-9F9A8FC50B93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.7947932976214691 7 -1.7947932976214689
		 14 -1.7947932976214691;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle1_poleVectorY";
	rename -uid "6F314C8B-494A-CD4A-2D93-A88C9C2C006D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.71542347942962337 7 0.71542347942962337
		 14 0.71542347942962337;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle1_poleVectorZ";
	rename -uid "DB119E0B-48A9-0006-E650-50BD9428CFD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.51661035983985415 7 0.51661035983985459
		 14 0.51661035983985415;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle1_offset";
	rename -uid "EA19176D-4600-9CEA-1FD5-29A80E4AE321";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "ikHandle1_roll";
	rename -uid "E6E8DD63-48BE-8AB3-EFAD-B08029CABB42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "ikHandle1_twist";
	rename -uid "BABBF8B0-4C5A-A0F6-4378-C8B159142101";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle1_ikBlend";
	rename -uid "D2580D7C-4109-AA5F-7AD0-57A51132411D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle4_visibility";
	rename -uid "F9A8C287-4A1E-E1B8-DED2-12AA3A64CD8D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "ikHandle4_rotateX";
	rename -uid "E61BB2F4-4936-C3A8-CF27-A5B3ABD20CB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "ikHandle4_rotateY";
	rename -uid "4EA5882C-45A1-7887-1E82-838C7A60E1D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "ikHandle4_rotateZ";
	rename -uid "0C807490-4A89-B70F-FDAA-DA992614D39E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle4_scaleX";
	rename -uid "C4025B33-46A1-7DB0-C72B-49809F6CC11D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle4_scaleY";
	rename -uid "15F67C93-4133-9418-7C55-5C902BDEA4DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle4_scaleZ";
	rename -uid "29F68A1D-4983-B9E1-265B-71AE21551F91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle4_poleVectorX";
	rename -uid "8B5C4F6F-41D3-FF33-1375-42961BC0A690";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.753005081914595 7 1.753005081914595
		 14 1.753005081914595;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle4_poleVectorY";
	rename -uid "C6E39480-4EFD-310B-BFD2-54AE9D3C2C85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.69213696122943991 7 0.69213696122944002
		 14 0.69213696122943991;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle4_poleVectorZ";
	rename -uid "11A8E189-4111-B6B3-4CD8-4A98A4D0C076";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.6692679655277709 7 -0.66926796552777135
		 14 -0.6692679655277709;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle4_offset";
	rename -uid "43BF50EA-4847-6398-C0B2-54886A4A6E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "ikHandle4_roll";
	rename -uid "4AF544AE-4377-CA6A-93B2-2EB977D7F208";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "ikHandle4_twist";
	rename -uid "D15697B9-4530-420B-1500-3C8C6CAE54DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 7 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "ikHandle4_ikBlend";
	rename -uid "6C3FE6A5-4C20-9A59-2CD9-DD9DBA6C4508";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 7 1 14 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "ikHandle2_translateX";
	rename -uid "E5BF4F58-43B1-A594-6154-8B8FBDAFFF44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1.7875021390642669 14 1.7875021388871228
		 21 1.7875021390642669;
createNode animCurveTL -n "ikHandle2_translateY";
	rename -uid "EF09A1D2-4F36-049A-5CF0-09913E4E26CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0.27535443409060423 14 0.99009244539173491
		 21 0.27535443409060423;
createNode animCurveTL -n "ikHandle2_translateZ";
	rename -uid "AEC84FAF-4E6B-0DEE-465C-F5AE0034CD95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1.9643403492207392 14 1.9643403489636362
		 21 1.9643403492207392;
createNode animCurveTL -n "ikHandle3_translateX";
	rename -uid "F86613ED-47AD-1C29-2062-53883E12808B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 -1.76597 14 -1.7659699998582068 21 -1.76597;
createNode animCurveTL -n "ikHandle3_translateY";
	rename -uid "B793A47E-45F5-708D-0DE6-0FA9813D6E6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0.318427 14 1.0331650112149267 21 0.318427;
createNode animCurveTL -n "ikHandle3_translateZ";
	rename -uid "AFA43A56-4F77-33B5-436D-329F43F21932";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 -1.96434 14 -1.9643399997817343 21 -1.96434;
createNode animCurveTU -n "ikHandle3_visibility";
	rename -uid "7267DC43-47BD-E5AD-0988-639DC6C6D08C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "ikHandle3_rotateX";
	rename -uid "5D275F15-4D63-A381-6398-409CF8B33688";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTA -n "ikHandle3_rotateY";
	rename -uid "E9063820-45AE-7D8C-F3EF-A3AB2F7B621C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTA -n "ikHandle3_rotateZ";
	rename -uid "AB796219-4F5F-FD1D-A443-209499EF6B7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTU -n "ikHandle3_scaleX";
	rename -uid "6FD089FB-426C-E157-9C26-AB9AD434F593";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
createNode animCurveTU -n "ikHandle3_scaleY";
	rename -uid "21E6BF3C-4AA0-5223-DEC6-AFA15534E56C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
createNode animCurveTU -n "ikHandle3_scaleZ";
	rename -uid "0B111585-4944-8668-0E8E-809CB6F1B1B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
createNode animCurveTU -n "ikHandle3_poleVectorX";
	rename -uid "14F1816C-42D3-69FB-66BC-C5BE4621E108";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 -1.8463850518474041 14 -1.8463850518474039
		 21 -1.8463850518474041;
createNode animCurveTU -n "ikHandle3_poleVectorY";
	rename -uid "CD2B851B-4CF9-8376-AD08-6CB37279075E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0.62854817515473782 14 0.62854817515473804
		 21 0.62854817515473782;
createNode animCurveTU -n "ikHandle3_poleVectorZ";
	rename -uid "790EB03D-4C80-C132-7BEB-8C93474FA427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 -0.44248099600333951 14 -0.44248099600333957
		 21 -0.44248099600333951;
createNode animCurveTU -n "ikHandle3_offset";
	rename -uid "772F849F-42F1-C3EF-B84E-EF92FC96D7D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTA -n "ikHandle3_roll";
	rename -uid "D568BBEA-48AA-7C20-9B32-F4B219C38B32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTA -n "ikHandle3_twist";
	rename -uid "A407515C-4948-4C7D-4BC7-599DE7ABCA1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTU -n "ikHandle3_ikBlend";
	rename -uid "25173C37-4D4A-D827-76A8-E8B4C0BEC3E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
createNode animCurveTU -n "ikHandle2_visibility";
	rename -uid "306E06DB-4A6B-4775-FA4B-81A06C282FCA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "ikHandle2_rotateX";
	rename -uid "A9249406-4C77-3930-3FE9-64A8D5C1D026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTA -n "ikHandle2_rotateY";
	rename -uid "BCD02320-4EC9-32DB-9E4E-D88A6CBEC483";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTA -n "ikHandle2_rotateZ";
	rename -uid "35787DC9-4644-F811-F97B-52A0961EA77E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTU -n "ikHandle2_scaleX";
	rename -uid "14592A8E-4611-069B-4F7A-509314171B0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
createNode animCurveTU -n "ikHandle2_scaleY";
	rename -uid "DBF73B47-4D8E-A66F-9279-1FA9EE9969C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
createNode animCurveTU -n "ikHandle2_scaleZ";
	rename -uid "2A82A0DD-42E7-59ED-B58E-039178051264";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
createNode animCurveTU -n "ikHandle2_poleVectorX";
	rename -uid "95F8D9A8-42A4-A44C-2367-818C6AC8E08A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1.8366095855351703 14 1.8366095855351705
		 21 1.8366095855351703;
createNode animCurveTU -n "ikHandle2_poleVectorY";
	rename -uid "70FA8C2A-499D-FB52-42DD-4387A5B15EA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0.6485084415711061 14 0.6485084415711061
		 21 0.6485084415711061;
createNode animCurveTU -n "ikHandle2_poleVectorZ";
	rename -uid "063FEEC7-4C42-7A0B-21B0-E48CDD712B17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0.45420483433286951 14 0.45420483433286951
		 21 0.45420483433286951;
createNode animCurveTU -n "ikHandle2_offset";
	rename -uid "B0197EFA-452B-7C4A-C28A-229EED7CF7E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTA -n "ikHandle2_roll";
	rename -uid "265BA7AA-4959-2403-2A1E-0EB26CDA3472";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTA -n "ikHandle2_twist";
	rename -uid "6587F2BA-4F95-DFF4-F481-1F8B83977D97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 0 14 0 21 0;
createNode animCurveTU -n "ikHandle2_ikBlend";
	rename -uid "39CF36F8-462F-A26F-2592-E594944C82B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  7 1 14 1 21 1;
createNode animCurveTL -n "ikHandle5_translateX";
	rename -uid "43D514D7-49A1-BD63-0B6E-65B3567A2965";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 1.0174182334965133e-023 30 -7.3931855910417589e-009
		 34 -1.3051304056425402e-008 40 1.0174182334965133e-023;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "ikHandle5_translateY";
	rename -uid "0C77D716-4ACA-AC37-8329-FAB2ECED6672";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 17.57097081983455 30 16.142910228948018
		 34 16.626102348280092 40 17.57097081983455;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "ikHandle5_translateZ";
	rename -uid "10DA25EC-468C-3176-AD52-849DB4A6818A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 -0.05091683744227251 30 -6.2618394059049169
		 34 4.979409965220591 40 -0.05091683744227251;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "ikHandle5_visibility";
	rename -uid "119A9401-4B43-24FC-6FFB-0B80D6A99895";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 1 30 1 34 1 40 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "ikHandle5_rotateX";
	rename -uid "52081022-46D0-FCBE-85A1-9AB856B83638";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 0 30 0 34 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "ikHandle5_rotateY";
	rename -uid "DEAE6317-4E6A-010F-313B-6DAF39019B35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 0 30 0 34 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "ikHandle5_rotateZ";
	rename -uid "AC71C65A-4B35-E497-9D6C-AAB7EECADA9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 0 30 0 34 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "ikHandle5_scaleX";
	rename -uid "23ADACA2-4F33-A52D-5151-9FA971E81F3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 1 30 1 34 1 40 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "ikHandle5_scaleY";
	rename -uid "DCC87D4B-49EE-8B2D-EFAC-2EA1C664DEAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 1 30 1 34 1 40 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "ikHandle5_scaleZ";
	rename -uid "FDF800AE-42E4-624B-ED64-0D9568407A07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 1 30 1 34 1 40 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "ikHandle5_poleVectorX";
	rename -uid "EA93A097-465E-3681-7528-708953F6BB20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 9.4222382296779694e-016 30 1.2128702697841027e-008
		 34 1.2128702697841032e-008 40 9.4222382296779694e-016;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "ikHandle5_poleVectorY";
	rename -uid "7D72C48E-4709-673A-FB32-B3AD3D5C0F92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 -0.0079999360007682596 30 -0.0079999360007680931
		 34 -0.0079999360007680098 40 -0.0079999360007682596;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "ikHandle5_poleVectorZ";
	rename -uid "BA474F58-4EE9-715D-EAE4-4595C15DD601";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 -1.9999840001919968 30 -1.9999840001919968
		 34 -1.9999840001919968 40 -1.9999840001919968;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "ikHandle5_offset";
	rename -uid "015015C3-4857-9594-CAD7-93A1C737BC13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 0 30 0 34 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "ikHandle5_roll";
	rename -uid "4175DFFE-459B-DFBD-8926-A3840139BA11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 0 30 0 34 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "ikHandle5_twist";
	rename -uid "F33A930E-4EF1-8CDF-496E-6CB914FF0EA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 0 30 0 34 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "ikHandle5_ikBlend";
	rename -uid "3ABDC771-4B11-2061-3A20-1496147C1E5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  22 1 30 1 34 1 40 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "root_translateX";
	rename -uid "902BE297-4CBE-3422-8C1E-5AA13534D175";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 0 47 0 53 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "root_translateY";
	rename -uid "E332F87C-4FBD-678D-E801-4C87A2DB7CFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 3.176276457145458 47 3.176276457145458
		 53 3.176276457145458;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "root_translateZ";
	rename -uid "671AE117-4D4D-674C-891D-75A95D748013";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 0.0066619400084864024 47 -1.3217399437346953
		 53 0.0066619400084864024;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "root_visibility";
	rename -uid "230F485C-487A-2BCB-DC0B-29A87E64A57E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 1 47 1 53 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "root_rotateX";
	rename -uid "DF4A7E7D-4666-F760-ABA6-70A98B01E0BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 -1.3989493509009783e-014 47 1.5528235908679471e-009
		 53 -1.3989493509009783e-014;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "root_rotateY";
	rename -uid "67CC94CE-4385-582E-336E-7CAF2B7F8DB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 -1.1094633306046274e-015 47 -1.8096095906461579e-008
		 53 -1.1094633306046274e-015;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "root_rotateZ";
	rename -uid "65C684F7-45D9-2C38-B998-16BF3A159994";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 3.0567391634657222e-030 47 9.8086117789681957
		 53 3.0567391634657222e-030;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "root_scaleX";
	rename -uid "2A6AA5D9-463E-80A6-9FBE-7ABC0476CC97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 1 47 1 53 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "root_scaleY";
	rename -uid "B373973D-4F4C-73A3-0399-D9AEA519C52D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 1 47 1 53 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "root_scaleZ";
	rename -uid "AA587B6C-4FBD-948A-DDC2-B7A03FA469FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  41 1 47 1 53 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
select -ne :time1;
	setAttr ".o" 57;
	setAttr ".unw" 57;
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
	setAttr -s 4 ".sol";
connectAttr "root_scaleX.o" "root.sx";
connectAttr "root_scaleY.o" "root.sy";
connectAttr "root_scaleZ.o" "root.sz";
connectAttr "root_rotateX.o" "root.rx";
connectAttr "root_rotateY.o" "root.ry";
connectAttr "root_rotateZ.o" "root.rz";
connectAttr "root_translateX.o" "root.tx";
connectAttr "root_translateY.o" "root.ty";
connectAttr "root_translateZ.o" "root.tz";
connectAttr "root_visibility.o" "root.v";
connectAttr "root.s" "hip.is";
connectAttr "hip.s" "spine_a.is";
connectAttr "spine_a.s" "nasal.is";
connectAttr "nasal.s" "occular.is";
connectAttr "occular.s" "cap_start.is";
connectAttr "cap_start.s" "cap_end.is";
connectAttr "cap_end.s" "front_cap_start.is";
connectAttr "front_cap_start.s" "front_cap_a.is";
connectAttr "front_cap_a.s" "front_cap_b.is";
connectAttr "front_cap_b.s" "front_cap_end.is";
connectAttr "cap_end.s" "rear_cap_start.is";
connectAttr "rear_cap_start.s" "rear_cap_a.is";
connectAttr "rear_cap_a.s" "rear_cap_b.is";
connectAttr "rear_cap_b.s" "rear_cap_end.is";
connectAttr "cap_end.s" "right_cap_start.is";
connectAttr "right_cap_start.s" "right_cap_a.is";
connectAttr "right_cap_a.s" "right_cap_b.is";
connectAttr "right_cap_b.s" "right_cap_end.is";
connectAttr "cap_end.s" "left_cap_start.is";
connectAttr "left_cap_start.s" "left_cap_a.is";
connectAttr "left_cap_a.s" "left_cap_b.is";
connectAttr "left_cap_b.s" "left_cap_end.is";
connectAttr "cap_end.tx" "effector5.tx";
connectAttr "cap_end.ty" "effector5.ty";
connectAttr "cap_end.tz" "effector5.tz";
connectAttr "occular.s" "left_eye.is";
connectAttr "occular.s" "right_eye.is";
connectAttr "nasal.s" "nose.is";
connectAttr "hip.s" "front_left_leg.is";
connectAttr "front_left_leg.s" "front_left_leg_a.is";
connectAttr "front_left_leg_a.s" "front_left_leg_b.is";
connectAttr "front_left_leg_b.s" "front_left_leg_end.is";
connectAttr "front_left_leg_end.tx" "effector2.tx";
connectAttr "front_left_leg_end.ty" "effector2.ty";
connectAttr "front_left_leg_end.tz" "effector2.tz";
connectAttr "hip.s" "rear_left_leg.is";
connectAttr "rear_left_leg.s" "rear_left_leg_a.is";
connectAttr "rear_left_leg_a.s" "rear_left_leg_b.is";
connectAttr "rear_left_leg_b.s" "rear_left_leg_end.is";
connectAttr "rear_left_leg_end.tx" "effector4.tx";
connectAttr "rear_left_leg_end.ty" "effector4.ty";
connectAttr "rear_left_leg_end.tz" "effector4.tz";
connectAttr "hip.s" "front_right_leg.is";
connectAttr "front_right_leg.s" "front_right_leg_a.is";
connectAttr "front_right_leg_a.s" "front_right_leg_b.is";
connectAttr "front_right_leg_b.s" "front_right_leg_end.is";
connectAttr "front_right_leg_end.tx" "effector1.tx";
connectAttr "front_right_leg_end.ty" "effector1.ty";
connectAttr "front_right_leg_end.tz" "effector1.tz";
connectAttr "hip.s" "rear_right_leg.is";
connectAttr "rear_right_leg.s" "rear_right_leg_a.is";
connectAttr "rear_right_leg_a.s" "rear_right_leg_b.is";
connectAttr "rear_right_leg_b.s" "rear_right_leg_end.is";
connectAttr "rear_right_leg_end.tx" "effector3.tx";
connectAttr "rear_right_leg_end.ty" "effector3.ty";
connectAttr "rear_right_leg_end.tz" "effector3.tz";
connectAttr "skinCluster1GroupId.id" "melee_shroom_textured:light_melee_shroomShape.iog.og[0].gid"
		;
connectAttr "skinCluster1Set.mwc" "melee_shroom_textured:light_melee_shroomShape.iog.og[0].gco"
		;
connectAttr "groupId2.id" "melee_shroom_textured:light_melee_shroomShape.iog.og[1].gid"
		;
connectAttr "tweakSet1.mwc" "melee_shroom_textured:light_melee_shroomShape.iog.og[1].gco"
		;
connectAttr "skinCluster1.og[0]" "melee_shroom_textured:light_melee_shroomShape.i"
		;
connectAttr "tweak1.vl[0].vt[0]" "melee_shroom_textured:light_melee_shroomShape.twl"
		;
connectAttr "front_right_leg.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_translateX.o" "ikHandle1.tx";
connectAttr "ikHandle1_translateY.o" "ikHandle1.ty";
connectAttr "ikHandle1_translateZ.o" "ikHandle1.tz";
connectAttr "ikHandle1_visibility.o" "ikHandle1.v";
connectAttr "ikHandle1_rotateX.o" "ikHandle1.rx";
connectAttr "ikHandle1_rotateY.o" "ikHandle1.ry";
connectAttr "ikHandle1_rotateZ.o" "ikHandle1.rz";
connectAttr "ikHandle1_scaleX.o" "ikHandle1.sx";
connectAttr "ikHandle1_scaleY.o" "ikHandle1.sy";
connectAttr "ikHandle1_scaleZ.o" "ikHandle1.sz";
connectAttr "ikHandle1_poleVectorX.o" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorY.o" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorZ.o" "ikHandle1.pvz";
connectAttr "ikHandle1_offset.o" "ikHandle1.off";
connectAttr "ikHandle1_roll.o" "ikHandle1.rol";
connectAttr "ikHandle1_twist.o" "ikHandle1.twi";
connectAttr "ikHandle1_ikBlend.o" "ikHandle1.ikb";
connectAttr "front_left_leg.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_translateX.o" "ikHandle2.tx";
connectAttr "ikHandle2_translateY.o" "ikHandle2.ty";
connectAttr "ikHandle2_translateZ.o" "ikHandle2.tz";
connectAttr "ikHandle2_visibility.o" "ikHandle2.v";
connectAttr "ikHandle2_rotateX.o" "ikHandle2.rx";
connectAttr "ikHandle2_rotateY.o" "ikHandle2.ry";
connectAttr "ikHandle2_rotateZ.o" "ikHandle2.rz";
connectAttr "ikHandle2_scaleX.o" "ikHandle2.sx";
connectAttr "ikHandle2_scaleY.o" "ikHandle2.sy";
connectAttr "ikHandle2_scaleZ.o" "ikHandle2.sz";
connectAttr "ikHandle2_poleVectorX.o" "ikHandle2.pvx";
connectAttr "ikHandle2_poleVectorY.o" "ikHandle2.pvy";
connectAttr "ikHandle2_poleVectorZ.o" "ikHandle2.pvz";
connectAttr "ikHandle2_offset.o" "ikHandle2.off";
connectAttr "ikHandle2_roll.o" "ikHandle2.rol";
connectAttr "ikHandle2_twist.o" "ikHandle2.twi";
connectAttr "ikHandle2_ikBlend.o" "ikHandle2.ikb";
connectAttr "rear_right_leg.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_translateX.o" "ikHandle3.tx";
connectAttr "ikHandle3_translateY.o" "ikHandle3.ty";
connectAttr "ikHandle3_translateZ.o" "ikHandle3.tz";
connectAttr "ikHandle3_visibility.o" "ikHandle3.v";
connectAttr "ikHandle3_rotateX.o" "ikHandle3.rx";
connectAttr "ikHandle3_rotateY.o" "ikHandle3.ry";
connectAttr "ikHandle3_rotateZ.o" "ikHandle3.rz";
connectAttr "ikHandle3_scaleX.o" "ikHandle3.sx";
connectAttr "ikHandle3_scaleY.o" "ikHandle3.sy";
connectAttr "ikHandle3_scaleZ.o" "ikHandle3.sz";
connectAttr "ikHandle3_poleVectorX.o" "ikHandle3.pvx";
connectAttr "ikHandle3_poleVectorY.o" "ikHandle3.pvy";
connectAttr "ikHandle3_poleVectorZ.o" "ikHandle3.pvz";
connectAttr "ikHandle3_offset.o" "ikHandle3.off";
connectAttr "ikHandle3_roll.o" "ikHandle3.rol";
connectAttr "ikHandle3_twist.o" "ikHandle3.twi";
connectAttr "ikHandle3_ikBlend.o" "ikHandle3.ikb";
connectAttr "rear_left_leg.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
connectAttr "ikHandle4_translateX.o" "ikHandle4.tx";
connectAttr "ikHandle4_translateY.o" "ikHandle4.ty";
connectAttr "ikHandle4_translateZ.o" "ikHandle4.tz";
connectAttr "ikHandle4_visibility.o" "ikHandle4.v";
connectAttr "ikHandle4_rotateX.o" "ikHandle4.rx";
connectAttr "ikHandle4_rotateY.o" "ikHandle4.ry";
connectAttr "ikHandle4_rotateZ.o" "ikHandle4.rz";
connectAttr "ikHandle4_scaleX.o" "ikHandle4.sx";
connectAttr "ikHandle4_scaleY.o" "ikHandle4.sy";
connectAttr "ikHandle4_scaleZ.o" "ikHandle4.sz";
connectAttr "ikHandle4_poleVectorX.o" "ikHandle4.pvx";
connectAttr "ikHandle4_poleVectorY.o" "ikHandle4.pvy";
connectAttr "ikHandle4_poleVectorZ.o" "ikHandle4.pvz";
connectAttr "ikHandle4_offset.o" "ikHandle4.off";
connectAttr "ikHandle4_roll.o" "ikHandle4.rol";
connectAttr "ikHandle4_twist.o" "ikHandle4.twi";
connectAttr "ikHandle4_ikBlend.o" "ikHandle4.ikb";
connectAttr "root.msg" "ikHandle5.hsj";
connectAttr "effector5.hp" "ikHandle5.hee";
connectAttr "ikRPsolver.msg" "ikHandle5.hsv";
connectAttr "ikHandle5_translateX.o" "ikHandle5.tx";
connectAttr "ikHandle5_translateY.o" "ikHandle5.ty";
connectAttr "ikHandle5_translateZ.o" "ikHandle5.tz";
connectAttr "ikHandle5_visibility.o" "ikHandle5.v";
connectAttr "ikHandle5_rotateX.o" "ikHandle5.rx";
connectAttr "ikHandle5_rotateY.o" "ikHandle5.ry";
connectAttr "ikHandle5_rotateZ.o" "ikHandle5.rz";
connectAttr "ikHandle5_scaleX.o" "ikHandle5.sx";
connectAttr "ikHandle5_scaleY.o" "ikHandle5.sy";
connectAttr "ikHandle5_scaleZ.o" "ikHandle5.sz";
connectAttr "ikHandle5_poleVectorX.o" "ikHandle5.pvx";
connectAttr "ikHandle5_poleVectorY.o" "ikHandle5.pvy";
connectAttr "ikHandle5_poleVectorZ.o" "ikHandle5.pvz";
connectAttr "ikHandle5_offset.o" "ikHandle5.off";
connectAttr "ikHandle5_roll.o" "ikHandle5.rol";
connectAttr "ikHandle5_twist.o" "ikHandle5.twi";
connectAttr "ikHandle5_ikBlend.o" "ikHandle5.ikb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "melee_shroom_textured:light_melee_shroomSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "melee_shroom_textured:light_melee_shroomSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "blinn1.oc" "melee_shroom_textured:light_melee_shroomSG.ss";
connectAttr "melee_shroom_textured:light_melee_shroomShape.iog" "melee_shroom_textured:light_melee_shroomSG.dsm"
		 -na;
connectAttr "melee_shroom_textured:light_melee_shroomSG.msg" "melee_shroom_textured:materialInfo1.sg"
		;
connectAttr "blinn1.msg" "melee_shroom_textured:materialInfo1.m";
connectAttr "melee_shroom_textured:lambert1_Flattened_Diffuse.msg" "melee_shroom_textured:materialInfo1.t"
		 -na;
connectAttr "melee_shroom_textured:place2dTexture1.o" "melee_shroom_textured:lambert1_Flattened_Diffuse.uv"
		;
connectAttr "melee_shroom_textured:place2dTexture1.ofu" "melee_shroom_textured:lambert1_Flattened_Diffuse.ofu"
		;
connectAttr "melee_shroom_textured:place2dTexture1.ofv" "melee_shroom_textured:lambert1_Flattened_Diffuse.ofv"
		;
connectAttr "melee_shroom_textured:place2dTexture1.rf" "melee_shroom_textured:lambert1_Flattened_Diffuse.rf"
		;
connectAttr "melee_shroom_textured:place2dTexture1.reu" "melee_shroom_textured:lambert1_Flattened_Diffuse.reu"
		;
connectAttr "melee_shroom_textured:place2dTexture1.rev" "melee_shroom_textured:lambert1_Flattened_Diffuse.rev"
		;
connectAttr "melee_shroom_textured:place2dTexture1.vt1" "melee_shroom_textured:lambert1_Flattened_Diffuse.vt1"
		;
connectAttr "melee_shroom_textured:place2dTexture1.vt2" "melee_shroom_textured:lambert1_Flattened_Diffuse.vt2"
		;
connectAttr "melee_shroom_textured:place2dTexture1.vt3" "melee_shroom_textured:lambert1_Flattened_Diffuse.vt3"
		;
connectAttr "melee_shroom_textured:place2dTexture1.vc1" "melee_shroom_textured:lambert1_Flattened_Diffuse.vc1"
		;
connectAttr "melee_shroom_textured:place2dTexture1.ofs" "melee_shroom_textured:lambert1_Flattened_Diffuse.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "melee_shroom_textured:lambert1_Flattened_Diffuse.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "melee_shroom_textured:lambert1_Flattened_Diffuse.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "melee_shroom_textured:lambert1_Flattened_Diffuse.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "melee_shroom_textured:lambert1_Flattened_Diffuse.ws"
		;
connectAttr "melee_shroom_textured:place2dTexture2.o" "melee_shroom_textured:ReflectionMap.uv"
		;
connectAttr "melee_shroom_textured:place2dTexture2.ofu" "melee_shroom_textured:ReflectionMap.ofu"
		;
connectAttr "melee_shroom_textured:place2dTexture2.ofv" "melee_shroom_textured:ReflectionMap.ofv"
		;
connectAttr "melee_shroom_textured:place2dTexture2.rf" "melee_shroom_textured:ReflectionMap.rf"
		;
connectAttr "melee_shroom_textured:place2dTexture2.reu" "melee_shroom_textured:ReflectionMap.reu"
		;
connectAttr "melee_shroom_textured:place2dTexture2.rev" "melee_shroom_textured:ReflectionMap.rev"
		;
connectAttr "melee_shroom_textured:place2dTexture2.vt1" "melee_shroom_textured:ReflectionMap.vt1"
		;
connectAttr "melee_shroom_textured:place2dTexture2.vt2" "melee_shroom_textured:ReflectionMap.vt2"
		;
connectAttr "melee_shroom_textured:place2dTexture2.vt3" "melee_shroom_textured:ReflectionMap.vt3"
		;
connectAttr "melee_shroom_textured:place2dTexture2.vc1" "melee_shroom_textured:ReflectionMap.vc1"
		;
connectAttr "melee_shroom_textured:place2dTexture2.ofs" "melee_shroom_textured:ReflectionMap.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "melee_shroom_textured:ReflectionMap.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "melee_shroom_textured:ReflectionMap.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "melee_shroom_textured:ReflectionMap.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "melee_shroom_textured:ReflectionMap.ws"
		;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "root.wm" "skinCluster1.ma[0]";
connectAttr "hip.wm" "skinCluster1.ma[1]";
connectAttr "spine_a.wm" "skinCluster1.ma[2]";
connectAttr "nasal.wm" "skinCluster1.ma[3]";
connectAttr "occular.wm" "skinCluster1.ma[4]";
connectAttr "cap_start.wm" "skinCluster1.ma[5]";
connectAttr "cap_end.wm" "skinCluster1.ma[6]";
connectAttr "front_cap_start.wm" "skinCluster1.ma[7]";
connectAttr "front_cap_a.wm" "skinCluster1.ma[8]";
connectAttr "front_cap_b.wm" "skinCluster1.ma[9]";
connectAttr "rear_cap_start.wm" "skinCluster1.ma[11]";
connectAttr "rear_cap_a.wm" "skinCluster1.ma[12]";
connectAttr "rear_cap_b.wm" "skinCluster1.ma[13]";
connectAttr "right_cap_start.wm" "skinCluster1.ma[15]";
connectAttr "right_cap_a.wm" "skinCluster1.ma[16]";
connectAttr "right_cap_b.wm" "skinCluster1.ma[17]";
connectAttr "left_cap_start.wm" "skinCluster1.ma[19]";
connectAttr "left_cap_a.wm" "skinCluster1.ma[20]";
connectAttr "left_cap_b.wm" "skinCluster1.ma[21]";
connectAttr "nose.wm" "skinCluster1.ma[25]";
connectAttr "front_left_leg.wm" "skinCluster1.ma[26]";
connectAttr "front_left_leg_a.wm" "skinCluster1.ma[27]";
connectAttr "front_left_leg_b.wm" "skinCluster1.ma[28]";
connectAttr "front_left_leg_end.wm" "skinCluster1.ma[29]";
connectAttr "rear_left_leg.wm" "skinCluster1.ma[30]";
connectAttr "rear_left_leg_a.wm" "skinCluster1.ma[31]";
connectAttr "rear_left_leg_b.wm" "skinCluster1.ma[32]";
connectAttr "rear_left_leg_end.wm" "skinCluster1.ma[33]";
connectAttr "front_right_leg.wm" "skinCluster1.ma[34]";
connectAttr "front_right_leg_a.wm" "skinCluster1.ma[35]";
connectAttr "front_right_leg_b.wm" "skinCluster1.ma[36]";
connectAttr "front_right_leg_end.wm" "skinCluster1.ma[37]";
connectAttr "rear_right_leg.wm" "skinCluster1.ma[38]";
connectAttr "rear_right_leg_a.wm" "skinCluster1.ma[39]";
connectAttr "rear_right_leg_b.wm" "skinCluster1.ma[40]";
connectAttr "rear_right_leg_end.wm" "skinCluster1.ma[41]";
connectAttr "root.liw" "skinCluster1.lw[0]";
connectAttr "hip.liw" "skinCluster1.lw[1]";
connectAttr "spine_a.liw" "skinCluster1.lw[2]";
connectAttr "nasal.liw" "skinCluster1.lw[3]";
connectAttr "occular.liw" "skinCluster1.lw[4]";
connectAttr "cap_start.liw" "skinCluster1.lw[5]";
connectAttr "cap_end.liw" "skinCluster1.lw[6]";
connectAttr "front_cap_start.liw" "skinCluster1.lw[7]";
connectAttr "front_cap_a.liw" "skinCluster1.lw[8]";
connectAttr "front_cap_b.liw" "skinCluster1.lw[9]";
connectAttr "rear_cap_start.liw" "skinCluster1.lw[11]";
connectAttr "rear_cap_a.liw" "skinCluster1.lw[12]";
connectAttr "rear_cap_b.liw" "skinCluster1.lw[13]";
connectAttr "right_cap_start.liw" "skinCluster1.lw[15]";
connectAttr "right_cap_a.liw" "skinCluster1.lw[16]";
connectAttr "right_cap_b.liw" "skinCluster1.lw[17]";
connectAttr "left_cap_start.liw" "skinCluster1.lw[19]";
connectAttr "left_cap_a.liw" "skinCluster1.lw[20]";
connectAttr "left_cap_b.liw" "skinCluster1.lw[21]";
connectAttr "nose.liw" "skinCluster1.lw[25]";
connectAttr "front_left_leg.liw" "skinCluster1.lw[26]";
connectAttr "front_left_leg_a.liw" "skinCluster1.lw[27]";
connectAttr "front_left_leg_b.liw" "skinCluster1.lw[28]";
connectAttr "front_left_leg_end.liw" "skinCluster1.lw[29]";
connectAttr "rear_left_leg.liw" "skinCluster1.lw[30]";
connectAttr "rear_left_leg_a.liw" "skinCluster1.lw[31]";
connectAttr "rear_left_leg_b.liw" "skinCluster1.lw[32]";
connectAttr "rear_left_leg_end.liw" "skinCluster1.lw[33]";
connectAttr "front_right_leg.liw" "skinCluster1.lw[34]";
connectAttr "front_right_leg_a.liw" "skinCluster1.lw[35]";
connectAttr "front_right_leg_b.liw" "skinCluster1.lw[36]";
connectAttr "front_right_leg_end.liw" "skinCluster1.lw[37]";
connectAttr "rear_right_leg.liw" "skinCluster1.lw[38]";
connectAttr "rear_right_leg_a.liw" "skinCluster1.lw[39]";
connectAttr "rear_right_leg_b.liw" "skinCluster1.lw[40]";
connectAttr "rear_right_leg_end.liw" "skinCluster1.lw[41]";
connectAttr "root.obcc" "skinCluster1.ifcl[0]";
connectAttr "hip.obcc" "skinCluster1.ifcl[1]";
connectAttr "spine_a.obcc" "skinCluster1.ifcl[2]";
connectAttr "nasal.obcc" "skinCluster1.ifcl[3]";
connectAttr "occular.obcc" "skinCluster1.ifcl[4]";
connectAttr "cap_start.obcc" "skinCluster1.ifcl[5]";
connectAttr "cap_end.obcc" "skinCluster1.ifcl[6]";
connectAttr "front_cap_start.obcc" "skinCluster1.ifcl[7]";
connectAttr "front_cap_a.obcc" "skinCluster1.ifcl[8]";
connectAttr "front_cap_b.obcc" "skinCluster1.ifcl[9]";
connectAttr "rear_cap_start.obcc" "skinCluster1.ifcl[11]";
connectAttr "rear_cap_a.obcc" "skinCluster1.ifcl[12]";
connectAttr "rear_cap_b.obcc" "skinCluster1.ifcl[13]";
connectAttr "right_cap_start.obcc" "skinCluster1.ifcl[15]";
connectAttr "right_cap_a.obcc" "skinCluster1.ifcl[16]";
connectAttr "right_cap_b.obcc" "skinCluster1.ifcl[17]";
connectAttr "left_cap_start.obcc" "skinCluster1.ifcl[19]";
connectAttr "left_cap_a.obcc" "skinCluster1.ifcl[20]";
connectAttr "left_cap_b.obcc" "skinCluster1.ifcl[21]";
connectAttr "nose.obcc" "skinCluster1.ifcl[25]";
connectAttr "front_left_leg.obcc" "skinCluster1.ifcl[26]";
connectAttr "front_left_leg_a.obcc" "skinCluster1.ifcl[27]";
connectAttr "front_left_leg_b.obcc" "skinCluster1.ifcl[28]";
connectAttr "front_left_leg_end.obcc" "skinCluster1.ifcl[29]";
connectAttr "rear_left_leg.obcc" "skinCluster1.ifcl[30]";
connectAttr "rear_left_leg_a.obcc" "skinCluster1.ifcl[31]";
connectAttr "rear_left_leg_b.obcc" "skinCluster1.ifcl[32]";
connectAttr "rear_left_leg_end.obcc" "skinCluster1.ifcl[33]";
connectAttr "front_right_leg.obcc" "skinCluster1.ifcl[34]";
connectAttr "front_right_leg_a.obcc" "skinCluster1.ifcl[35]";
connectAttr "front_right_leg_b.obcc" "skinCluster1.ifcl[36]";
connectAttr "front_right_leg_end.obcc" "skinCluster1.ifcl[37]";
connectAttr "rear_right_leg.obcc" "skinCluster1.ifcl[38]";
connectAttr "rear_right_leg_a.obcc" "skinCluster1.ifcl[39]";
connectAttr "rear_right_leg_b.obcc" "skinCluster1.ifcl[40]";
connectAttr "rear_right_leg_end.obcc" "skinCluster1.ifcl[41]";
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "melee_shroom_textured:light_melee_shroomShape.iog.og[0]" "skinCluster1Set.dsm"
		 -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "melee_shroom_textured:light_melee_shroomShape.iog.og[1]" "tweakSet1.dsm"
		 -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "light_melee_shroomShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "root.msg" "bindPose1.m[0]";
connectAttr "hip.msg" "bindPose1.m[1]";
connectAttr "spine_a.msg" "bindPose1.m[2]";
connectAttr "nasal.msg" "bindPose1.m[3]";
connectAttr "occular.msg" "bindPose1.m[4]";
connectAttr "cap_start.msg" "bindPose1.m[5]";
connectAttr "cap_end.msg" "bindPose1.m[6]";
connectAttr "front_cap_start.msg" "bindPose1.m[7]";
connectAttr "front_cap_a.msg" "bindPose1.m[8]";
connectAttr "front_cap_b.msg" "bindPose1.m[9]";
connectAttr "rear_cap_start.msg" "bindPose1.m[11]";
connectAttr "rear_cap_a.msg" "bindPose1.m[12]";
connectAttr "rear_cap_b.msg" "bindPose1.m[13]";
connectAttr "right_cap_start.msg" "bindPose1.m[15]";
connectAttr "right_cap_a.msg" "bindPose1.m[16]";
connectAttr "right_cap_b.msg" "bindPose1.m[17]";
connectAttr "left_cap_start.msg" "bindPose1.m[19]";
connectAttr "left_cap_a.msg" "bindPose1.m[20]";
connectAttr "left_cap_b.msg" "bindPose1.m[21]";
connectAttr "nose.msg" "bindPose1.m[25]";
connectAttr "front_left_leg.msg" "bindPose1.m[26]";
connectAttr "front_left_leg_a.msg" "bindPose1.m[27]";
connectAttr "front_left_leg_b.msg" "bindPose1.m[28]";
connectAttr "front_left_leg_end.msg" "bindPose1.m[29]";
connectAttr "rear_left_leg.msg" "bindPose1.m[30]";
connectAttr "rear_left_leg_a.msg" "bindPose1.m[31]";
connectAttr "rear_left_leg_b.msg" "bindPose1.m[32]";
connectAttr "rear_left_leg_end.msg" "bindPose1.m[33]";
connectAttr "front_right_leg.msg" "bindPose1.m[34]";
connectAttr "front_right_leg_a.msg" "bindPose1.m[35]";
connectAttr "front_right_leg_b.msg" "bindPose1.m[36]";
connectAttr "front_right_leg_end.msg" "bindPose1.m[37]";
connectAttr "rear_right_leg.msg" "bindPose1.m[38]";
connectAttr "rear_right_leg_a.msg" "bindPose1.m[39]";
connectAttr "rear_right_leg_b.msg" "bindPose1.m[40]";
connectAttr "rear_right_leg_end.msg" "bindPose1.m[41]";
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
connectAttr "bindPose1.m[6]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[6]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[6]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[3]" "bindPose1.p[25]";
connectAttr "bindPose1.m[1]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[1]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[1]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[1]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "root.bps" "bindPose1.wm[0]";
connectAttr "hip.bps" "bindPose1.wm[1]";
connectAttr "spine_a.bps" "bindPose1.wm[2]";
connectAttr "nasal.bps" "bindPose1.wm[3]";
connectAttr "occular.bps" "bindPose1.wm[4]";
connectAttr "cap_start.bps" "bindPose1.wm[5]";
connectAttr "cap_end.bps" "bindPose1.wm[6]";
connectAttr "front_cap_start.bps" "bindPose1.wm[7]";
connectAttr "front_cap_a.bps" "bindPose1.wm[8]";
connectAttr "front_cap_b.bps" "bindPose1.wm[9]";
connectAttr "rear_cap_start.bps" "bindPose1.wm[11]";
connectAttr "rear_cap_a.bps" "bindPose1.wm[12]";
connectAttr "rear_cap_b.bps" "bindPose1.wm[13]";
connectAttr "right_cap_start.bps" "bindPose1.wm[15]";
connectAttr "right_cap_a.bps" "bindPose1.wm[16]";
connectAttr "right_cap_b.bps" "bindPose1.wm[17]";
connectAttr "left_cap_start.bps" "bindPose1.wm[19]";
connectAttr "left_cap_a.bps" "bindPose1.wm[20]";
connectAttr "left_cap_b.bps" "bindPose1.wm[21]";
connectAttr "nose.bps" "bindPose1.wm[25]";
connectAttr "front_left_leg.bps" "bindPose1.wm[26]";
connectAttr "front_left_leg_a.bps" "bindPose1.wm[27]";
connectAttr "front_left_leg_b.bps" "bindPose1.wm[28]";
connectAttr "front_left_leg_end.bps" "bindPose1.wm[29]";
connectAttr "rear_left_leg.bps" "bindPose1.wm[30]";
connectAttr "rear_left_leg_a.bps" "bindPose1.wm[31]";
connectAttr "rear_left_leg_b.bps" "bindPose1.wm[32]";
connectAttr "rear_left_leg_end.bps" "bindPose1.wm[33]";
connectAttr "front_right_leg.bps" "bindPose1.wm[34]";
connectAttr "front_right_leg_a.bps" "bindPose1.wm[35]";
connectAttr "front_right_leg_b.bps" "bindPose1.wm[36]";
connectAttr "front_right_leg_end.bps" "bindPose1.wm[37]";
connectAttr "rear_right_leg.bps" "bindPose1.wm[38]";
connectAttr "rear_right_leg_a.bps" "bindPose1.wm[39]";
connectAttr "rear_right_leg_b.bps" "bindPose1.wm[40]";
connectAttr "rear_right_leg_end.bps" "bindPose1.wm[41]";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "melee_shroom_textured:lambert1_Flattened_Diffuse.oc" "blinn1.c";
connectAttr "melee_shroom_textured:ReflectionMap.oc" "blinn1.rc";
connectAttr "melee_shroom_textured:light_melee_shroomSG.pa" ":renderPartition.st"
		 -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "melee_shroom_textured:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "melee_shroom_textured:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "melee_shroom_textured:lambert1_Flattened_Diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "melee_shroom_textured:ReflectionMap.msg" ":defaultTextureList1.tx" 
		-na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of light melee mushroom animations.ma
