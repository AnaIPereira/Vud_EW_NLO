(* ::Package:: *)

(* ::Section::Closed:: *)
(*running  the  file*)


(*
- chose the process and diagrams you want to generate
- chose the correct diagrams for the process
- see where we set to feynman gauge or general gauge
- choose the correct defoper
- chose the things we want to export
*)


(* ::Section::Closed:: *)
(*Load  feynarts*)


Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynArts/FeynArts.m"];
Get["/home/ana/.Mathematica/Applications/FeynCalc/FeynCalc.m"];
$FAVerbose=0;


(* ::Section::Closed:: *)
(*load  packages*)


(*to run locally*)
direc=SetDirectory["/home/ana/Documents/GitHub/Vud_EW_NLO"];


Get[direc <> "/code/QFTSymbols.m"]


Get[direc <> "/code/MassiveTadpole.m"]


Get[direc <> "/code/notation.m"]


Get[direc <> "/code/fermionline.m"]


Get[direc <> "/code/tensred.m"]


Get[direc <> "/code/integration_2loop.m"]


(* ::Section::Closed:: *)
(*generate  counterterms*)


(*ct = InsertFields[
CreateCTTopologies[2,2 -> 2,ExcludeTopologies->{WFCorrections,WFCorrectionCTs}], 
{F[2,{2}] ,F[1,{1}] } -> {F[1,{2}],F[2,{1}]},
InsertionLevel ->{Particles}, 
Model->"SM", 
Restrictions -> {NoLightFHCoupling}
];

draw = Paint[ct, ColumnsXRows -> {8, 4}, 
SheetHeader->None,ImageSize->{512,256}
];*)


ct = InsertFields[
CreateCTTopologies[2,2 -> 2,ExcludeTopologies->{WFCorrections,WFCorrectionCTs}], 
{F[3,{1,o}] ,F[2,{1}]} -> {F[4,{1,o}],F[1,{1}]},
InsertionLevel ->{Particles}, 
Model->"SM", 
Restrictions -> {NoLightFHCoupling}
];

draw = Paint[ct, ColumnsXRows -> {8, 4}, 
SheetHeader->None,ImageSize->{512,256}
]


(* ::Print:: *)
(*Graphics[{Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {2.911618926975065, 12.718437853950132`}, ImageScaled[{1, 1}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {3.088381073024935, 5.71843785395013}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {16.911618926975066`, 14.281562146049868`}, ImageScaled[{1, 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[{{6., 12.}, {5.853057187006925, 11.899995224282742`}, {5.7622423710199655`, 11.799993461546034`}, {5.76224487098807, 11.699994650374595`}, {5.853064686951257, 11.599997428503688`}, {6.000012500004232, 11.500000000052083`}, {6.1469598130715895`, 11.400001102131098`}, {6.237778129074286, 11.30000059442199}, {6.237778129074286, 11.19999940557801}, {6.1469598130715895`, 11.099998897868902`}, {6.000012500004232, 10.999999999947917`}, {5.853064686951257, 10.900002571496312`}, {5.76224487098807, 10.800005349625405`}, {5.7622423710199655`, 10.700006538453966`}, {5.853057187006925, 10.600004775717258`}, {6., 10.5}}], Inset[$CellContext`\[Gamma], {6.9452, 11.25}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQESDib//gOBvAPDhYpr1nESDrkxh54YGys4MDA8*)
(*KbNeL+GQ3XZvcnoakL9hWva85xIOh5coMM2eCZLfpFP5X8Khz2iWwbkzQP6E*)
(*e48KP0s4sLVoaTMyKDowPKh7ZHFUwuGoriOriTGQn9Dy2btawkHEru1qWhqQ*)
(*P4H9LY+ChIOCr/3GmTOB/AUKOT4HxB3yGDxXnDkD5Be4C9dmijt0FsUc+v8f*)
(*yGcI4bigLu7AVCf8z8hYyYHhQ/zMOhZxB5v6M4FpaQj+kQbjdTNnKsHV/2t8*)
(*w3j2jBLcvPLexbYMDMpw+yb93xZubKwMd8+DTQf80tKU4e59c7BSa+ZMZbh/*)
(*bC7t+3X6jDLcv7+qr175918ZHh7FZ1PPGxqrwMPLNvr+35Q0FXh4TqtUzJkx*)
(*UwUe3pMX20qfOQOSh8THMzCt6gAAJsGdUw==*)
(*"]], Inset[$CellContext`Z, {5.0548, 9.25}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[$CellContext`u, {10., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[QFTSymbols`e, {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDiXmaC/R1HC4+3x1tYqzgwCAh*)
(*fD4rXMehZg93VkYakP9jh59loY7DitZ4gTkzgfwJuyqUK3Ucbu745X7+DJB/*)
(*gM9VN0/HYXnQXFkmBkUHhorjRe1BOg56Zo/WmhgD+QpzGkK1dRzY0kXk09OA*)
(*fIOWOd//azvMWdA3c+ZMIJ/j0Ky7N7QdFq2+bH/mDJD/47jr873aDg8W1Kv/*)
(*/w/kX+jkid6i7ZChZRRiZKwEdO9k0R17tB2uqUhtS00D8i9EV+Re1HaQ335d*)
(*b+ZMIH/CIs/qF9oOqnbz5505A+R/WG3z4Ie2Q2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfEo4qcHmN94ZA81Tg+vtvqqelpanAzec8PnXGzJkqcPuPBFwC*)
(*mqcCd1/7onncDAyqcPffOZiQaGwM5N+A+C/SVONiWhqQfwHi/8XHn3rOmqkK*)
(*D58ZV8+uPntGFR5+CvENNxgY1ODhGxeic8DYWA0e/inxhUD3qcHjp6j19YMZ*)
(*M9Xg8Xf5pGzQ6TNq8PiNWpv06O9/NXj8q7uz7jAwVoenj8iqBe+T04B8AUj6*)
(*+aP/Zer0merw9LWCxWXJ6TPqDrD0l8MMojUcAB3vAz4=*)
(*"]], Polygon[{{14., 10.6}, {13.6, 9.4}, {14.4, 9.4}}], Inset[$CellContext`W, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{5.5, 10.}, {6.5, 11.}}], Line[{{5.5, 11.}, {6.5, 10.}}]}}, Inset[$CellContext`T32 $CellContext`P2 $CellContext`N193, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieifegfhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {0, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {2.911618926975065, 12.718437853950132`}, ImageScaled[{1, 1}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {3.088381073024935, 5.71843785395013}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {16.911618926975066`, 14.281562146049868`}, ImageScaled[{1, 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[{{6., 12.}, {5.853057187006925, 11.899995224282742`}, {5.7622423710199655`, 11.799993461546034`}, {5.76224487098807, 11.699994650374595`}, {5.853064686951257, 11.599997428503688`}, {6.000012500004232, 11.500000000052083`}, {6.1469598130715895`, 11.400001102131098`}, {6.237778129074286, 11.30000059442199}, {6.237778129074286, 11.19999940557801}, {6.1469598130715895`, 11.099998897868902`}, {6.000012500004232, 10.999999999947917`}, {5.853064686951257, 10.900002571496312`}, {5.76224487098807, 10.800005349625405`}, {5.7622423710199655`, 10.700006538453966`}, {5.853057187006925, 10.600004775717258`}, {6., 10.5}}], Inset[$CellContext`Z, {6.9452, 11.25}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQESDib//gOBvAPDhYpr1nESDrkxh54YGys4MDA8*)
(*KbNeL+GQ3XZvcnoakL9hWva85xIOh5coMM2eCZLfpFP5X8Khz2iWwbkzQP6E*)
(*e48KP0s4sLVoaTMyKDowPKh7ZHFUwuGoriOriTGQn9Dy2btawkHEru1qWhqQ*)
(*P4H9LY+ChIOCr/3GmTOB/AUKOT4HxB3yGDxXnDkD5Be4C9dmijt0FsUc+v8f*)
(*yGcI4bigLu7AVCf8z8hYyYHhQ/zMOhZxB5v6M4FpaQj+kQbjdTNnKsHV/2t8*)
(*w3j2jBLcvPLexbYMDMpw+yb93xZubKwMd8+DTQf80tKU4e59c7BSa+ZMZbh/*)
(*bC7t+3X6jDLcv7+qr175918ZHh7FZ1PPGxqrwMPLNvr+35Q0FXh4TqtUzJkx*)
(*UwUe3pMX20qfOQOSh8THMzCt6gAAJsGdUw==*)
(*"]], Inset[$CellContext`\[Gamma], {5.0548, 9.25}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[$CellContext`u, {10., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[QFTSymbols`e, {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDiXmaC/R1HC4+3x1tYqzgwCAh*)
(*fD4rXMehZg93VkYakP9jh59loY7DitZ4gTkzgfwJuyqUK3Ucbu745X7+DJB/*)
(*gM9VN0/HYXnQXFkmBkUHhorjRe1BOg56Zo/WmhgD+QpzGkK1dRzY0kXk09OA*)
(*fIOWOd//azvMWdA3c+ZMIJ/j0Ky7N7QdFq2+bH/mDJD/47jr873aDg8W1Kv/*)
(*/w/kX+jkid6i7ZChZRRiZKwEdO9k0R17tB2uqUhtS00D8i9EV+Re1HaQ335d*)
(*b+ZMIH/CIs/qF9oOqnbz5505A+R/WG3z4Ie2Q2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfEo4qcHmN94ZA81Tg+vtvqqelpanAzec8PnXGzJkqcPuPBFwC*)
(*mqcCd1/7onncDAyqcPffOZiQaGwM5N+A+C/SVONiWhqQfwHi/8XHn3rOmqkK*)
(*D58ZV8+uPntGFR5+CvENNxgY1ODhGxeic8DYWA0e/inxhUD3qcHjp6j19YMZ*)
(*M9Xg8Xf5pGzQ6TNq8PiNWpv06O9/NXj8q7uz7jAwVoenj8iqBe+T04B8AUj6*)
(*+aP/Zer0merw9LWCxWXJ6TPqDrD0l8MMojUcAB3vAz4=*)
(*"]], Polygon[{{14., 10.6}, {13.6, 9.4}, {14.4, 9.4}}], Inset[$CellContext`W, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{5.5, 10.}, {6.5, 11.}}], Line[{{5.5, 11.}, {6.5, 10.}}]}}, Inset[$CellContext`T32 $CellContext`P3 $CellContext`N194, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieifegfhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {22, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {2.911618926975065, 12.718437853950132`}, ImageScaled[{1, 1}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {3.088381073024935, 5.71843785395013}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {16.911618926975066`, 14.281562146049868`}, ImageScaled[{1, 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[{{6., 12.}, {5.853057187006925, 11.899995224282742`}, {5.7622423710199655`, 11.799993461546034`}, {5.76224487098807, 11.699994650374595`}, {5.853064686951257, 11.599997428503688`}, {6.000012500004232, 11.500000000052083`}, {6.1469598130715895`, 11.400001102131098`}, {6.237778129074286, 11.30000059442199}, {6.237778129074286, 11.19999940557801}, {6.1469598130715895`, 11.099998897868902`}, {6.000012500004232, 10.999999999947917`}, {5.853064686951257, 10.900002571496312`}, {5.76224487098807, 10.800005349625405`}, {5.7622423710199655`, 10.700006538453966`}, {5.853057187006925, 10.600004775717258`}, {6., 10.5}}], Inset[$CellContext`Z, {6.9452, 11.25}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQESDib//gOBvAPDhYpr1nESDrkxh54YGys4MDA8*)
(*KbNeL+GQ3XZvcnoakL9hWva85xIOh5coMM2eCZLfpFP5X8Khz2iWwbkzQP6E*)
(*e48KP0s4sLVoaTMyKDowPKh7ZHFUwuGoriOriTGQn9Dy2btawkHEru1qWhqQ*)
(*P4H9LY+ChIOCr/3GmTOB/AUKOT4HxB3yGDxXnDkD5Be4C9dmijt0FsUc+v8f*)
(*yGcI4bigLu7AVCf8z8hYyYHhQ/zMOhZxB5v6M4FpaQj+kQbjdTNnKsHV/2t8*)
(*w3j2jBLcvPLexbYMDMpw+yb93xZubKwMd8+DTQf80tKU4e59c7BSa+ZMZbh/*)
(*bC7t+3X6jDLcv7+qr175918ZHh7FZ1PPGxqrwMPLNvr+35Q0FXh4TqtUzJkx*)
(*UwUe3pMX20qfOQOSh8THMzCt6gAAJsGdUw==*)
(*"]], Inset[$CellContext`Z, {5.0548, 9.25}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[$CellContext`u, {10., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[QFTSymbols`e, {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDiXmaC/R1HC4+3x1tYqzgwCAh*)
(*fD4rXMehZg93VkYakP9jh59loY7DitZ4gTkzgfwJuyqUK3Ucbu745X7+DJB/*)
(*gM9VN0/HYXnQXFkmBkUHhorjRe1BOg56Zo/WmhgD+QpzGkK1dRzY0kXk09OA*)
(*fIOWOd//azvMWdA3c+ZMIJ/j0Ky7N7QdFq2+bH/mDJD/47jr873aDg8W1Kv/*)
(*/w/kX+jkid6i7ZChZRRiZKwEdO9k0R17tB2uqUhtS00D8i9EV+Re1HaQ335d*)
(*b+ZMIH/CIs/qF9oOqnbz5505A+R/WG3z4Ie2Q2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfEo4qcHmN94ZA81Tg+vtvqqelpanAzec8PnXGzJkqcPuPBFwC*)
(*mqcCd1/7onncDAyqcPffOZiQaGwM5N+A+C/SVONiWhqQfwHi/8XHn3rOmqkK*)
(*D58ZV8+uPntGFR5+CvENNxgY1ODhGxeic8DYWA0e/inxhUD3qcHjp6j19YMZ*)
(*M9Xg8Xf5pGzQ6TNq8PiNWpv06O9/NXj8q7uz7jAwVoenj8iqBe+T04B8AUj6*)
(*+aP/Zer0merw9LWCxWXJ6TPqDrD0l8MMojUcAB3vAz4=*)
(*"]], Polygon[{{14., 10.6}, {13.6, 9.4}, {14.4, 9.4}}], Inset[$CellContext`W, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{5.5, 10.}, {6.5, 11.}}], Line[{{5.5, 11.}, {6.5, 10.}}]}}, Inset[$CellContext`T32 $CellContext`P4 $CellContext`N195, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieifegfhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {44, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {2.911618926975065, 12.718437853950132`}, ImageScaled[{1, 1}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {3.088381073024935, 5.71843785395013}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {16.911618926975066`, 14.281562146049868`}, ImageScaled[{1, 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[{{6., 12.}, {5.952194314326334, 11.899998446239382`}, {5.952878626281745, 11.799998704043055`}, {5.976295868935267, 11.699999466522051`}, {5.994285765358654, 11.59999989987256}, {6.000012500004232, 11.500000000052083`}, {6.000214202023926, 11.400000001539015`}, {6.000018014587113, 11.300000000021702`}, {6.000018014587113, 11.199999999978298`}, {6.000214202023926, 11.099999998460985`}, {6.000012500004232, 10.999999999947917`}, {5.994285765358654, 10.90000010012744}, {5.976295868935267, 10.800000533477949`}, {5.952878626281745, 10.700001295956945`}, {5.952194314326334, 10.600001553760618`}, {6., 10.5}}], Polygon[{{6., 11.85}, {6.4, 10.65}, {5.6, 10.65}}], Inset[$CellContext`W, {6.9452, 11.25}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQESDib//gOBvAODwvKHR30lHK5M33fU2FjBgaHg*)
(*5sugNgmHe0l1vulpQP6H0z528yUcNv2rnDhrJpCf8CWkYqqEg1PErzlnz4DU*)
(*y0npFUg4dOjf62RgUHRgmNAyTdVBwuHCvY5yY2Mgf0PZwUwJCYdw2eyatDQg*)
(*3+G1hxazhENM4ufZM2cC+QXVE6r/ijtsuR93+swZID+g+mnyP3GHxa8ige4D*)
(*8hdcD1n1X9xh0lF5Y2NjJaD+ug1fgPxDrGlAgODb/ZoJBEpw9XlWD86cOaME*)
(*Ny9OdBnQ38pw+3wUFpoYGyvD3bNkHk9KWpoy3L0rH01pnjlTGe4fA8XyjjNn*)
(*lOH+rbigWPb/vzI8PPYvZ002MlaBh5cfY1teapoKPDyV5jZumjFTBR7eOhmO*)
(*VmfOAPnQ+HgGplUdAJswoaQ=*)
(*"]], Polygon[{{6., 9.85}, {5.6, 8.65}, {6.4, 8.65}}], Inset[$CellContext`W, {5.0548, 9.25}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[QFTSymbols`d, {10., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDBcW6XwY6DkKKGikmxgoODBLc*)
(*f+qjdByuVVvVZKQB+S+EeOzKdBzO24bozJkJ5Fcwe/yu13Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/tsOcBX0zZ84E8j+4i/0+p+3QVGEkc+YMkH/i0sbipdoOnnYJ1//9B8mf*)
(*vbO5U9thmU7GNUNjJaD+/L9f6rUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof0g4qsDlQzpKeIyNVeD6vxlLaKelqcDN71xRljlzpgrc/iMBl86cOaMC*)
(*d9+z++4BDAyqcPfHM+s9NTZWhftPds/60vQ0Vbj/97XpvZw1UxUePtGXp2ue*)
(*O6MKD7/tB+drMDKowcO3rv3sY2NjNXj4p8QXpqWlqcHj5/mTXydmzFSDx18B*)
(*+wLd02fU4PH7zODErr//1eDx/3W/yhQDY3V4+jA8tPpycpo6PP0sKjjaPH2m*)
(*Ojx9pZ2+Pvv0GXUHWPrLYQbRGg4A3d0Kgw==*)
(*"]], Inset[$CellContext`Z, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{5.5, 10.}, {6.5, 11.}}], Line[{{5.5, 11.}, {6.5, 10.}}]}}, Inset[$CellContext`T32 $CellContext`P5 $CellContext`N196, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieifegfhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {66, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {2.911618926975065, 12.718437853950132`}, ImageScaled[{1, 1}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {3.088381073024935, 5.71843785395013}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {16.911618926975066`, 14.281562146049868`}, ImageScaled[{1, 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[{{10.000000000001556`, 12.}, {6.000000000002885, 12.}}], Polygon[{{8.6, 12.}, {7.4, 12.4}, {7.4, 11.6}}], Inset[$CellContext`u, {8., 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{9.999999999998444, 12.}, {13.999999999997117`, 12.}}], Polygon[{{12.6, 12.}, {11.4, 11.6}, {11.4, 12.4}}], Inset[$CellContext`u, {12., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDAuc/XxIlHIQUNVJMjBUcGAzE*)
(*fvzfIuFwrdqqJiMNyL+gKlHzRsLhvG2IzpyZQP4Htgnf/ks4cDvczj5/BshX*)
(*yH5WDpSXPm/uysSgCNQ/f8p3oP4JP+IvmRgD+Rd4018AzZ/IzmqengbkJ3BY*)
(*vv8v7jBnQd/MmTOB/Af9Ot/mijs0VRjJnDkD5E9YmvzcS9zB0y7h+r//IPnZ*)
(*O9OFxR2W6WRcMzRWAuq/9+vlfzGHXakXxVLTQPzdC1KB8tEGAV0zZgL5Dk8N*)
(*HwP1L/pzUerMGSCf4ePD90DzpRV2rP//H8if0HP1GdB+m/W6xsbGyg4MAdte*)
(*3QW6771z57S0NCD/Qs7/V0D3N+14fmXmTCB/QqxFJtB/a8u7P585A+QLyJ58*)
(*CvQ/JBxV4PIhHSU8xsYqcP3fjCW009JU4OZ3rijLnDlTBW7/kYBLZ86cUYG7*)
(*79l99wAGBlW4++OZ9Z4aG6vC/Se7Z31pepoq3P/72vRezpqpCg+f6MvTNc+d*)
(*UYWH3/aD8zUYGdTg4VvXfvaxsbEaPPxT4gvT0tLU4PHz/MmvEzNmqsHjr4B9*)
(*ge7pM2rw+H1mcGLX3/9q8Pj/ul9lioGxOjx9GB5afTk5TR2efhYVHG2ePlMd*)
(*nr7STl+fffqMugMs/eUwg2gNBwBIrg0q*)
(*"]], Inset[$CellContext`\[Gamma], {5.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[QFTSymbols`e, {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDiXmaC/R1HC4+3x1tYqzgwCAh*)
(*fD4rXMehZg93VkYakP9jh59loY7DitZ4gTkzgfwJuyqUK3Ucbu745X7+DJB/*)
(*gM9VN0/HYXnQXFkmBkUHhorjRe1BOg56Zo/WmhgD+QpzGkK1dRzY0kXk09OA*)
(*fIOWOd//azvMWdA3c+ZMIJ/j0Ky7N7QdFq2+bH/mDJD/47jr873aDg8W1Kv/*)
(*/w/kX+jkid6i7ZChZRRiZKwEdO9k0R17tB2uqUhtS00D8i9EV+Re1HaQ335d*)
(*b+ZMIH/CIs/qF9oOqnbz5505A+R/WG3z4Ie2Q2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfEo4qcHmN94ZA81Tg+vtvqqelpanAzec8PnXGzJkqcPuPBFwC*)
(*mqcCd1/7onncDAyqcPffOZiQaGwM5N+A+C/SVONiWhqQfwHi/8XHn3rOmqkK*)
(*D58ZV8+uPntGFR5+CvENNxgY1ODhGxeic8DYWA0e/inxhUD3qcHjp6j19YMZ*)
(*M9Xg8Xf5pGzQ6TNq8PiNWpv06O9/NXj8q7uz7jAwVoenj8iqBe+T04B8AUj6*)
(*+aP/Zer0merw9LWCxWXJ6TPqDrD0l8MMojUcAB3vAz4=*)
(*"]], Polygon[{{14., 10.6}, {13.6, 9.4}, {14.4, 9.4}}], Inset[$CellContext`W, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{9.5, 11.5}, {10.5, 12.5}}], Line[{{9.5, 12.5}, {10.5, 11.5}}]}}, Inset[$CellContext`T33 $CellContext`P1 $CellContext`N197, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieigeffhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {88, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {2.911618926975065, 12.718437853950132`}, ImageScaled[{1, 1}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {3.088381073024935, 5.71843785395013}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {16.911618926975066`, 14.281562146049868`}, ImageScaled[{1, 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[{{10.000000000001556`, 12.}, {6.000000000002885, 12.}}], Polygon[{{8.6, 12.}, {7.4, 12.4}, {7.4, 11.6}}], Inset[$CellContext`u, {8., 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{9.999999999998444, 12.}, {13.999999999997117`, 12.}}], Polygon[{{12.6, 12.}, {11.4, 11.6}, {11.4, 12.4}}], Inset[$CellContext`u, {12., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDAuc/XxIlHIQUNVJMjBUcGAzE*)
(*fvzfIuFwrdqqJiMNyL+gKlHzRsLhvG2IzpyZQP4Htgnf/ks4cDvczj5/BshX*)
(*yH5WDpSXPm/uysSgCNQ/f8p3oP4JP+IvmRgD+Rd4018AzZ/IzmqengbkJ3BY*)
(*vv8v7jBnQd/MmTOB/Af9Ot/mijs0VRjJnDkD5E9YmvzcS9zB0y7h+r//IPnZ*)
(*O9OFxR2W6WRcMzRWAuq/9+vlfzGHXakXxVLTQPzdC1KB8tEGAV0zZgL5Dk8N*)
(*HwP1L/pzUerMGSCf4ePD90DzpRV2rP//H8if0HP1GdB+m/W6xsbGyg4MAdte*)
(*3QW6771z57S0NCD/Qs7/V0D3N+14fmXmTCB/QqxFJtB/a8u7P585A+QLyJ58*)
(*CvQ/JBxV4PIhHSU8xsYqcP3fjCW009JU4OZ3rijLnDlTBW7/kYBLZ86cUYG7*)
(*79l99wAGBlW4++OZ9Z4aG6vC/Se7Z31pepoq3P/72vRezpqpCg+f6MvTNc+d*)
(*UYWH3/aD8zUYGdTg4VvXfvaxsbEaPPxT4gvT0tLU4PHz/MmvEzNmqsHjr4B9*)
(*ge7pM2rw+H1mcGLX3/9q8Pj/ul9lioGxOjx9GB5afTk5TR2efhYVHG2ePlMd*)
(*nr7STl+fffqMugMs/eUwg2gNBwBIrg0q*)
(*"]], Inset[$CellContext`Z, {5.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[QFTSymbols`e, {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDiXmaC/R1HC4+3x1tYqzgwCAh*)
(*fD4rXMehZg93VkYakP9jh59loY7DitZ4gTkzgfwJuyqUK3Ucbu745X7+DJB/*)
(*gM9VN0/HYXnQXFkmBkUHhorjRe1BOg56Zo/WmhgD+QpzGkK1dRzY0kXk09OA*)
(*fIOWOd//azvMWdA3c+ZMIJ/j0Ky7N7QdFq2+bH/mDJD/47jr873aDg8W1Kv/*)
(*/w/kX+jkid6i7ZChZRRiZKwEdO9k0R17tB2uqUhtS00D8i9EV+Re1HaQ335d*)
(*b+ZMIH/CIs/qF9oOqnbz5505A+R/WG3z4Ie2Q2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfEo4qcHmN94ZA81Tg+vtvqqelpanAzec8PnXGzJkqcPuPBFwC*)
(*mqcCd1/7onncDAyqcPffOZiQaGwM5N+A+C/SVONiWhqQfwHi/8XHn3rOmqkK*)
(*D58ZV8+uPntGFR5+CvENNxgY1ODhGxeic8DYWA0e/inxhUD3qcHjp6j19YMZ*)
(*M9Xg8Xf5pGzQ6TNq8PiNWpv06O9/NXj8q7uz7jAwVoenj8iqBe+T04B8AUj6*)
(*+aP/Zer0merw9LWCxWXJ6TPqDrD0l8MMojUcAB3vAz4=*)
(*"]], Polygon[{{14., 10.6}, {13.6, 9.4}, {14.4, 9.4}}], Inset[$CellContext`W, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{9.5, 11.5}, {10.5, 12.5}}], Line[{{9.5, 12.5}, {10.5, 11.5}}]}}, Inset[$CellContext`T33 $CellContext`P2 $CellContext`N198, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieigeffhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {110, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {2.911618926975065, 12.718437853950132`}, ImageScaled[{1, 1}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {3.088381073024935, 5.71843785395013}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {16.911618926975066`, 14.281562146049868`}, ImageScaled[{1, 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[{{10.000000000001556`, 12.}, {6.000000000002885, 12.}}], Polygon[{{8.6, 12.}, {7.4, 12.4}, {7.4, 11.6}}], Inset[QFTSymbols`d, {8., 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{9.999999999998444, 12.}, {13.999999999997117`, 12.}}], Polygon[{{12.6, 12.}, {11.4, 11.6}, {11.4, 12.4}}], Inset[QFTSymbols`d, {12., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDBNtgh3gJh4vPd0ebGCs4MBio*)
(*zbu6TsKhZg93VkYakP+hcG7RIwmHFa3xAnNmAvkKpR/dPkk43Nzxy/38GSC/*)
(*QbYr6o6Ew/KgubJMDIpA9X1P+ZZKOOiZPVprYgzkO1gwrg6TcGBLF5FPTwPy*)
(*Ezgs3/8Xd5izoG/mzJlAvkCL6e6N4g6LVl+2P3MGpL+/+1y1uMODBfXq//8D*)
(*+QuEJbdliDtkaBmFGBkrAd2rrl1QKe5wTUVqW2oakL9g+4dbi8Qd5Ldf15s5*)
(*E8hXcJ387YK4g6rd/HlnzgD5D8IrD3wUd6iMTfzy/z9If8/VZ0D7bdbrGhsb*)
(*KzswBOgU/GeUcChQzUpPSwPyC0Lr1wLD56XQDaD7QHx3k29A9TcFzp05cwbI*)
(*F5A9+RTIh4SjClxe470h0DwVuP7+m+ppaWkqcPM5j0+dMXOmCtz+IwGXgOap*)
(*wN3XvmgeNwODKtz9dw4mJBobA/kbIP6LNNW4mJYG5C+A+H/x8aees2aqwsNn*)
(*xtWzq8+eUYWHn0J8ww0GBjV4+MaF6BwwNlaDh39KfCHQfWrw+Clqff1gxkw1*)
(*ePxdPikbdPqMGjx+o9YmPfr7Xw0e/+rurDsMjNXh6SOyasH75DQgXwGSfv7o*)
(*f5k6faY6PH2tYHFZcvqMugMs/eUwg2gNBwB2hfyQ*)
(*"]], Polygon[{{6., 10.6}, {5.6, 9.4}, {6.4, 9.4}}], Inset[$CellContext`W, {5.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDBcW6XwY6DkKKGikmxgoODBLc*)
(*f+qjdByuVVvVZKQB+S+EeOzKdBzO24bozJkJ5Fcwe/yu13Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/tsOcBX0zZ84E8j+4i/0+p+3QVGEkc+YMkH/i0sbipdoOnnYJ1//9B8mf*)
(*vbO5U9thmU7GNUNjJaD+/L9f6rUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof0g4qsDlQzpKeIyNVeD6vxlLaKelqcDN71xRljlzpgrc/iMBl86cOaMC*)
(*d9+z++4BDAyqcPfHM+s9NTZWhftPds/60vQ0Vbj/97XpvZw1UxUePtGXp2ue*)
(*O6MKD7/tB+drMDKowcO3rv3sY2NjNXj4p8QXpqWlqcHj5/mTXydmzFSDx18B*)
(*+wLd02fU4PH7zODErr//1eDx/3W/yhQDY3V4+jA8tPpycpo6PP0sKjjaPH2m*)
(*Ojx9pZ2+Pvv0GXUHWPrLYQbRGg4A3d0Kgw==*)
(*"]], Inset[$CellContext`Z, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{9.5, 11.5}, {10.5, 12.5}}], Line[{{9.5, 12.5}, {10.5, 11.5}}]}}, Inset[$CellContext`T33 $CellContext`P3 $CellContext`N199, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieigeffhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {132, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{0., 14.999999999996362`}, {4.999999999998181, 12.999999999996362`}}], Polygon[{{3.057086014531156, 13.777165594187538`}, {1.794357714927203, 13.851443729458358`}, {2.091470256010486, 14.594225082166565`}}], Inset[$CellContext`u, {1.9243444516511394`, 13.165661129127848`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{0., 5.}, {4.5, 7.}}], Polygon[{{2.7982869291721544`, 6.243683079632069}, {1.8641684572492248`, 5.390792300919828}, {1.5392576844064665`, 6.121841539816034}}], Inset[QFTSymbols`e, {2.2747146223828443`, 5.188392099638602}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.99999999999909, 13.}}], Polygon[{{18.057086014531155`, 14.222834405812462`}, {16.794357714927205`, 14.148556270541642`}, {17.091470256010485`, 13.405774917833435`}}], Inset[QFTSymbols`d, {16.924344451651137`, 14.834338870872152`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000091, 5.000000000003638}, {15.00000000000091, 7.000000000003638}}], Polygon[{{18.057086014531155`, 5.7771655941875375`}, {17.091470256010485`, 6.594225082166567}, {16.794357714927205`, 5.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {18.075655548348863`, 6.834338870872152}, ImageScaled[{Rational[1, 2], 0}]], Line[{{9.999999999998545, 13.}, {4.999999999997014, 13.}}], Polygon[{{8.1, 13.}, {6.9, 13.4}, {6.9, 12.6}}], Inset[QFTSymbols`d, {7.5, 13.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{10.000000000001455`, 13.}, {15.000000000002988`, 13.}}], Polygon[{{13.1, 13.}, {11.9, 12.6}, {11.9, 13.4}}], Inset[QFTSymbols`d, {12.5, 12.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJwt1Qs01FkcB/B/VktnZUd5DKm8kjd5tCPJ5BEihmgV8lh1LGKiNLW0ks2U*)
(*HrYkJTVRy0gikqJMojNCqYk8yhlLaEOTxFQe+7179n/O/9zzOffxv/d/7+93*)
(*tcPjfHfIUBS1Fy8pqYk5PKZM6r9Hk0nFzFZn/ANL4tJ5KbBWSYHXC1jAUZ6a*)
(*grNKM15Vwpnnfu0NXop2ldFbM2Gez5xfCcwJnen/BW67X2Arhi2MrA6Zw7Tr*)
(*dTe+wGyPWasJEybF6rNUmoZHlqd3VhCL3HNGYaHNg3ds2EKtjdsBG2TttjKD*)
(*Q62NVwvgoN69B8aMUb8t/HUFnNVWvKISptV9f/Au7NmUPp4Ct3lmD5P+odL4*)
(*B/4w+5HtrOIyJsUV5ERbwpKetYFhMHs8Z0CFOCE4/Amc1pK9btYI626PK3Va*)
(*zqQmBpI/D8M8p509DbAkQ9VOBIu75Vx1tJiUtMXa+x7M/l6tNQjmFpt15MK0*)
(*qxFKJ2EG/5tOIrFViVsFfLH172g3OJN2S6cZloTY9y+COwuOfGqHeVfWl3cY*)
(*Yt279PnEzpfOPjsLF+2oPtkK71HWavaFxXd6Bh7CaSV3Emgwi1MbeAc2Gco4*)
(*/NyASdFVQ36/BeeEGbrnEI9vMCD1nlTJ9p2wNIwuI4TFC9X2rYV5XMOfBsl8*)
(*8tTcNGCtoQQPJW0mpZA0c3p2JdbXdMrYFa6MHfIYgqXb5WPTYMqL3f0clhda*)
(*1jXADf2KMTWkfUha1Hc6GE/B2usKXLb8mcQOrnzs5HKI9PeyPx8Fd35+174V*)
(*Lpo5/v447Nb2cZ8RHDnYLJsPN5xgl3zSR3+aS20xHODz80QVnLKq/gwf5joK*)
(*CxNhrllNAmlPe6pWbgMzL3oxLsBtTT7mUyvQXxqtkg3r2d6UeUCsb9dB6t1q*)
(*EhyPwxLem8nrMMOsPy8cFmgH5j4h86u/3ugA0/jFWROw5krjjVpwTtARAz1d*)
(*JlXikM6f08N+dvJFPnDSUe+r3TCd727CgWufGMmXw1zzjN5smHvBbDCN1I/6*)
(*B5XDwx+6XQLgSN4JuWZYuD9kzBg2sDc3eQuXjd54PIdSunofj5SaaYJCEUqD*)
(*qEBdDbSTJOZVF5J+t99+toYHKL9FSbpk/7vWs+CiqfJRb5invKYmCq68bOSk*)
(*DVfnmlCHYHHC6XljZJ2+HZdOwfKLbAKryH+T0XifDTMU/jyVDFuU3fO6CK91*)
(*5mu5wQLXAc9CmN3DOqgOR26ru3yfzKdrbmoc5yD0i31iH0wtTusVwcKWTSVK*)
(*+G/Wh7M07sHSs22NG2GL1DfN+bAgtnQqHWYMrRQdg3NeKSk2wLI971ziSL3b*)
(*tMlXeM+1puZNMMtKLUaf7PvA1X49mBNb5b4Bzgp1UpjAOS4aLxgLgA3Yza01*)
(*JE7Luu1DYEp6oSAZLrubfTMQ5u1iN9nBnCXnp33g4YEVAx8R51pOYwVkvMiH*)
(*18RxcJH+5NZ1MCe48e4k8gTHyTTenpyzdV3px2Dxudf+rjDdt0poCtP73ejb*)
(*yfdXuSr1IQ+xZCNsUsl8j574lk/yZnB76i24cxV9MxsWty3wH4EDkrYccIbl*)
(*X1wRGSMOWMuY0+owt6Y5PobESUQo4z3yMNf9XCofZjgsVa6AO8vy63vhYVFC*)
(*7i44oGVmSB5xzLBiJ9Nhdu1LWX24zFnTv2IJ5hVk3GgDSz5M3naAeTG2+21h*)
(*ruburwINxMVf+iNWMC3iaLcdLO2yUzCEhyMOvLqtjvOx2C9uKckj8RUnreGA*)
(*H2vqVWBWwbYF9+mIzzJjhiosnJVZthmuzvw6TwfmPJeVStXwfdPcsTWwgZKr*)
(*qBSuPvbSPAxOaeqciIfFjnl+Z2CBwLFvvRo5nyGJT8n4nMEmVVgop5KliLzX*)
(*aTmrO6KKdlo0mjdsIVe1pRbOjPzGzIAZB6noVDjS3EO2jnj8dOEaOGW1HnOI*)
(*5E3ft/P7VWB3obMMyfuVXbt/g+n0rHk0OFJo1zIfZlUulCN5mopouvmHMvZH*)
(*/ZH/D7CE3J+L/78/jZj/AsHsrz4=*)
(*"]], Polygon[{{9.485504244572473, 10.308697453256515`}, {10.308697453256517`, 9.348305376458466}, {10.720294057598537`, 10.034299717028503`}}], Inset[$CellContext`W, {9.807331579087336, 9.275685965145556}, ImageScaled[{1, 1}]], Line[CompressedData["*)
(*1:eJwt1QtUjGkYB/APnYzIFsN0b7pPCVNaJcWnqNnVZbrYcokRqY1IJcV2QSXX*)
(*LnIQKl2YnDZTpBFpahwNcsrR0m2ZVBiUQbWT0P7fPTvndP7n973v93zP+3xz*)
(*JpPQXf5hkymKSsQfSerbBD7zaUpF0pqmeNL9E/Uw9/rafdNtaGpD2euoZJjB*)
(*OHx9Fuz10+UYd1gcYvdGG+ZrhlXOhHkWp13UYUEKb3qvLU2xfQz0hlBvx93Z*)
(*xXUwI2B94ANYGehfmw87KWYsOgfbTnS2pcAcReJqARznOL83HBbvvOhgSqx/*)
(*7xAf1hkUG/ZxaOo418/dkdTjRAdcgSNCP/fqwtmaGY0x8FaO+vnReTSVGX8z*)
(*hQfbZrCCWmDZ/lfxNrC59YdH+bBI9pWjC3PWTU0PhSUarOLZsIPiylNzOHhz*)
(*dB4LprxZwj6ci7142gUTOM+3LvgSrCxfXjwfFm3ZHiKAs6NfrHGEVVd/qJvB*)
(*EXNflzvDFRvope9xDgHvkJcD7CVydq0jTjzOMCX9PrTKzIaLHgSpT4HTHvo2*)
(*RsEJsxL7n1vR1Nu3u5v45L2E55QVw04tGbcdYZm1x55t8Ifcb+FsmLvWYrUV*)
(*zDby82MQR1nEKywxh4JtrEHULZphZFQFOzh63GyBneLqHxyAAzX5jWUwo+jr*)
(*aAjMLp55Yi+sFTrwxAOmXHvd3GBB85JZLnCcammPOsxvLZ9C3K8xTb0Zz00w*)
(*flfrTu4fiP2YBnMGpRt8iX2k09xhOtmrYh18J6JAMgXObgiN3Awz7P+xf0Ay*)
(*X7N3E5Kv1jSchxReiPcOQPJsCuXhSHkKZeeMFC1v/rECKdC3TWIi22r00kyR*)
(*ygq3030WONfoLsVUcj0xz+IqHFwQq6Mk1wtU7duR7R3Dwg4ke2NWpy3yzpnT*)
(*Vg3I1N+YSZ/MaYpZ2xRyCRZWKQvq4eH91blJcOa5FLc8uEI6XO9P1sezF++F*)
(*z86QlbFhlcBPvg0uLRcPvEEmWFUuDEX+ca+5pxzppHPs7n/rUZbpEUjuCwfW*)
(*bqQ8yszZEklljesmIV38RmIGzHDOPd7xGbDDCr99Qph3Jsr6CLlvkeG83XBq*)
(*lcvwAZj/ceQWDbMv5tTthLdel+WwYNlXbqMPzB7N8hwxhT15UlO43/v85Q5Y*)
(*EjvS8wH7+LVjTxvgtl1+3iLyXOZomhAuctVlkecIq8PcsmFO0MDRRbDAQqsq*)
(*jnhnjGwcaWvw6lkA8uzztFWPkS2TxwNtkfKI1RFXyXrhh6zvJqg/qqDzYDXp*)
(*ycZmOFVMRx6FE0rWfz4Gyw6kzzkGM4dY3ath0ap1y0+RPtpWVE8j+1/+wiiE*)
(*aQ3m+2Y2Mj3NktSPu5AzmAlT0tYtIpi7rLvVh6xnOupWwm+fKXT0YWW9b34R*)
(*6bMy0upvY/ig+FAGqfeyc1cusU1f3yYyh5iONYFwamnkkgVkv11xlTGc8Hih*)
(*5zD6CNYqWaU0gk+5SWvgjk/U0kZYsmRAEQ+fZdZdOwHLtttMcoF5MRoefmRd*)
(*EdPNgKMVpaUMuKOGGy5HX8HXNDqrDPH79rE1+B7p0/JWthesEpapbhDrFpp2*)
(*GWDeViV6VXDqQ2l4CCzyaqRvwuKLJeFd+uhnv12/BFbJunrXwLLUoZ4WuM27*)
(*qqldD9cNWrr/gjtqD+euh9lH1RTPYeGOOuWgLua3p6GjFeaU0NYnYdrdQXib*)
(*3D/i/MkFdkoWi/NhAbXAf0wH9b5/6Y2C5W2/3pfAbBvztY4wY33GwSxYK/6I*)
(*fBhz43VNDAjgNk+D3+NhbuzQJC7Z7/55aBxzOGucbKNioe7e7sL/5lb4PaUG*)
(*lqgHrrSHo3uLBGEwm+ObMIS5cG0e1ajD2eOdZvdgdtgUZv5c9Hve0L0a5m98*)
(*W24CS+S2ajWwuF6XujQHc7tl73gfzjSIzjGABZWmai9gLc4Oz3NM1H03+8kX*)
(*OOLPYYU+HN3euWwClmsrc4Wz0b+x3GiM1A9t/9kNFo3N8eiBRY9/8N7NwvfU*)
(*6Kb5ZbLfR5pfBEtWHtQOIvX9TYK2wIKQtuWfyXs7ucd1Icy9cWJzksH//3e1*)
(*8Z5J6tP/AuEXvqg=*)
(*"]], Inset[$CellContext`\[Gamma], {9.914215354453091, 9.259023129707089}, ImageScaled[{0, 1}]], Line[{{4.4999999999978915`, 7.}, {14.99999999999767, 7.}}], Polygon[{{10.35, 7.}, {9.15, 6.6}, {9.15, 7.4}}], Inset[QFTSymbols`e, {9.75, 6.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{5., 13.}], Point[{4.5, 7.}], Point[{15., 13.}], Point[{15., 7.}], {Thickness[0.015], Line[{{9.5, 12.5}, {10.5, 13.5}}], Line[{{9.5, 13.5}, {10.5, 12.5}}]}}, Inset[$CellContext`T34 $CellContext`P1 $CellContext`N200, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieigehfgfh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {154, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{0., 14.999999999996362`}, {4.999999999998181, 12.999999999996362`}}], Polygon[{{3.057086014531156, 13.777165594187538`}, {1.794357714927203, 13.851443729458358`}, {2.091470256010486, 14.594225082166565`}}], Inset[$CellContext`u, {1.9243444516511394`, 13.165661129127848`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{0., 5.}, {4.5, 7.}}], Polygon[{{2.7982869291721544`, 6.243683079632069}, {1.8641684572492248`, 5.390792300919828}, {1.5392576844064665`, 6.121841539816034}}], Inset[QFTSymbols`e, {2.2747146223828443`, 5.188392099638602}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.99999999999909, 13.}}], Polygon[{{18.057086014531155`, 14.222834405812462`}, {16.794357714927205`, 14.148556270541642`}, {17.091470256010485`, 13.405774917833435`}}], Inset[QFTSymbols`d, {16.924344451651137`, 14.834338870872152`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000091, 5.000000000003638}, {15.00000000000091, 7.000000000003638}}], Polygon[{{18.057086014531155`, 5.7771655941875375`}, {17.091470256010485`, 6.594225082166567}, {16.794357714927205`, 5.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {18.075655548348863`, 6.834338870872152}, ImageScaled[{Rational[1, 2], 0}]], Line[{{9.999999999998545, 13.}, {4.999999999997014, 13.}}], Polygon[{{8.1, 13.}, {6.9, 13.4}, {6.9, 12.6}}], Inset[$CellContext`u, {7.5, 13.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{10.000000000001455`, 13.}, {15.000000000002988`, 13.}}], Polygon[{{13.1, 13.}, {11.9, 12.6}, {11.9, 13.4}}], Inset[$CellContext`u, {12.5, 12.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJwt1Qs0VHkcB/BLSNsmxWg88wjjFXlsUypXXqPsGtNrKtrJo1WTTI7Kq92h*)
(*tLNKWVTSa0LRVoxGHqFGaUkKsWhl2cqjUFSs3vv979l7zj2/8zn///39z/93*)
(*7/93TYIjeWHKFEXtwk0i9fYLLjua+u8yoKm2PWWpL2DZ3Pn5YniYU8B7CAs2*)
(*xatMwhyzDd0lsENq3ViQIU01MhIFaTA35+z2y7CUeWwoBKY13vN64SULNkjs*)
(*Sf7S7DvvYJHd+UVvbZFP+vW8j/Ap3/Ndclj0pChnBGa3Rj8Xwdy1XT+3w54B*)
(*Dvbz4Wb+e0sF7GxoEPXShqYURRKFHG5Ol+qWELN71lTA2sV3n4phWiIsI88/*)
(*i08tXAOnKX1zV8OIppivjwQ6wuKFulabYYFGVScDdsi9v7gBrp+k2Z+tsf5C*)
(*/xMec2mqc3r9xCCs8JL31MKZt8VerXDWgTC+qTFNVc3khlyHHZJOvwyEE+ID*)
(*3pyE+cveuR+GD/Fm+OyGNd807ZfDtu85GRw4ZmZI6D2YLpxQ1yLjIdsd22GK*)
(*79LUbkVTvQqdrj/gzIcGPUfhcMtTBffh8pi6OzyY6h/rqoHVRxxXa8Ix4/aW*)
(*ZcRbGr1bWNgvf47eVXg0OunVcXjQsSm9FDbQHhgOg7MGhZ518HA67x9XmONm*)
(*GdwHG7/wbNAl43qyWE0TmspTabT9bIm6bFuQ6A1z/QfmDMB00bo5+2FnNaeJ*)
(*FjiLEzdSC4uvTR+vhMNDn3ynYor6yV2CcmBZ37GSpXC4D2swCS5POrgqAn6c*)
(*lzw1kOQ7XZORBmubfGDYwTGx1ZsvwMNRKcIJC9TnWAC3CBbU3+BVwMzH2Qeu*)
(*wH6Jxr174Jj9IQl58OWhXpkzXODNTs2CxZdqsl6bY/3MQ5GHYWPDFb4lsMCm*)
(*XJoCe3LtP8XDrIiJDrJ+b5S/40p4cED+ay4Zv9MRZwrTqvE1t2H2hdVCJVj9*)
(*uVbJKNzs2JPfPw/zixPNWWY0tb2sQaMZdthhLdkCV5Ud/XAdVrzcEZ0PS10H*)
(*T+TBo5eUnPphul+0LAVuHpsSYIToPFZxfSti1vFqGz9EkdmVc+6IbNd7wRHk*)
(*uY5N0bMQWTNqTBMRy23PFT9CnkE7PTcJWXf27t9Pwmwbb2YyTGdz/l4Pa2ZP*)
(*CYiHE2TCKzowy80hMBI2yPX60kbqoj5rLAxmeuyMPw5zx1z2hMCNpZUeAuJo*)
(*8wQhPKkxv8QBlo7WeYhh6tZ69jSYGeiRmANLvcyXPTch70/JvQWu2lvm0wSz*)
(*ZOlqX5G6rvXXq4CZrbf0fGG/fRyVPPJd7VtJpcCdIaULUuFwZitVD39UdlaN*)
(*gulHQ4rPsErblG1c8p1FD9VbW5C6CRmWsEy9ZcwXFqitKBon5+Rid8FGuHfd*)
(*s8dVxiR/ptJmmG2SZ/sjPLl2JCMQzqp16XOF06b1WPPg0WD9hDGc87R8+ltv*)
(*WL3OTjsS5jDPFC2FjSdVboyjT3Qe2SldQlznJPkFlnU9EZP5lNHsPltYk5e3*)
(*IQiW3H8aRPpgeOXrs4kwd+uXxBxiq3TDq7DiqJq2CGZV/2Q8TPbTmRvpCQsi*)
(*yhtscA4kDTx9PbjepfDQdljhx40eQh/unZVcchEWd2d/L4cVpslKPbBA2e9F*)
(*BCxadslqGs5xzG9n7jDhgnnjtAXcayE8ItfH/u2rx11gSsX5Lze4ebQ6exGL*)
(*fAe+M2v0sF/vfZ+cYLaZUbcrrL4oWMMKrk9qbLimi3mi2lBDMh46vtsZ5ke+*)
(*LWTArDiPoSomLNGfq0PyqTp+5sH1CXEDJrD4VdKfk3Pw/sVT2xfDzW12lYWw*)
(*1PmW/mbSpwZNnkXBfFGxdwbJH3ej0x2WCX0iH8D8zFV3dch8WXaGBvpe+WNX*)
(*62EdvK+a5Qx/WOypFlwFM1N+WHGQ9MXqgNgkuPzmQs2bMKujrnQxzF/zwG+A*)
(*jAdqaT9lYHzXca4y+jC9MXZvPBxOL5+uCYePerepMsh/RjFjNun73Dp5sjbq*)
(*Z66zfjo8Sv6fWv//P63pfwEhjJQl*)
(*"]], Inset[$CellContext`Z, {9.807331579087336, 9.275685965145556}, ImageScaled[{1, 1}]], Line[CompressedData["*)
(*1:eJwt1QdQ01ccB/CgiEEohlV2SZQ9hIJCcP5xgmBJZcgwsg4BBxCZMjRVqzjQ*)
(*nCIyFMMGGQYrGlQ0XlHBpiUoynAFxa0YAW0Q1H7fXXOX+97n3nu/33sv7y6s*)
(*qMS1MVNoNNp2fEnSJr/j40jRlCRtKRrNy0DlKsyccSBdw46ivQu15O2Aa1cO*)
(*NOrAhUXr05fBCv/Rx9rweZHLeS0yfyLBRQ0e6irWHnSgaEm6WjOHUU8sc669*)
(*BIsdz3h3wkme8VeKYcY8K7si2KHTsGcnrHwtXREBM+IHBmNhm70JrrPg4Ish*)
(*v3Hg4MwR1jMbiibULljkDgss07g1sOiuVr8Rma+h070NXpgjOPLZnqJ1HLl+*)
(*zAumd+uvlsJxQeV5dnDG046rxbBg86clRnD2/fTtUTB9n98FXXhL356/LGD+*)
(*6/pyA5g/07bqGc4lyrYtY8HMkuz1ZXBcSkOJI3xl7d9xEbAs6ZOnO6y4Ymk8*)
(*m8wXxuTOh5crAwPf4hxxdU9/mgsHsH3XX4KVMtc7pB7dklUngOkVddIpZP5i*)
(*A/lWcm8NZU291pgfajfAIesHdLLL4UPNX266k3vxXxS5ETbd4hzFhDmV3oHW*)
(*sKo6240OZ7w9VPXaCuvlTUPvUFcm7E1rhiW5c7ZI4dqKMJ9dsMUGXnQVHJfn*)
(*UrIB9jJXmZ1Ozq2WcHAV3D5W2ucJU77m0oXw8grzXWpwX4FfGbHejuWym+jL*)
(*8J/QXw4/3N87tgdmugb5+8Ga55oil8GS5kydULK+5uNOVWvSp9okAqYePIq9*)
(*jRRyitu5ZD9LXcsKkBkGD8I5pP/btNF4pOE3tsANObcp0Yf0YXd6pDOQHeNv*)
(*xBZI5ZFprU8sKVp+4Jrf1WEF72NADVzpbxWpQNq43QjcjCx8vavqviW5r+Rw*)
(*Z2SfT3NVK5Kaq8GcsMB7p7QYJ8j89IDqLtg0xTd8K5nfU1gigjMc7MMWwnR+*)
(*dFQp3HP4et40WDDu4V0ADwXIfaRIRt7zrKPI3Jd6TflIZUlR10FkQ0JXaiSy*)
(*9vojXg7SV7Q6z4XU/SrOjUWyN855MQ2psHVoXEPqUUMn+2ejn2OSoyssrByb*)
(*2gjXjul6GMECGm8BH1Ys/nLiO5IxHrrJH+l8UT7tBVIQ2RxvRfKz+i0pUvNJ*)
(*tNH4LLzPh8d0z8Ne319aSWEbv+HLxfC7wVupZbAzr5+XA7NbV+hlwcLbq04G*)
(*w76mBoYhsGSLrb4DnGJ+/xobDj4+2TSJVCwzHtUn9SbK87uRyjue3Pcs/H5O*)
(*CcUimO7NTWmD2es+8E7ClPjPpL1whmqtOJ/UXdze6w0re/xuFMDi9x++qMPB*)
(*vbr7S8n6vff2djKxn7zuwBr4oZ7HrIOwV1DWvgaYwQ8y/RUWx9jrnoHZaQX2*)
(*ZnBwQeI46aeon8qXm6Pvt+kFu0m9zYn9+bDiY/gtLhmvC+0JhJk1FW8cYObu*)
(*2EgmLJka0jhK9rEgnqP4Ce9oX09rC5y7Y3eXBM64Pr4qHS6UHJ84BPdNuV+6*)
(*EBbfKeVxYPnh8OPkHJy2Ctl0mNYmYQ5iX84aMWbNZjhvhdbXdljkdGrSB7aJ*)
(*9s5sgTtCFrX1m2K8JiK5mZx7XtHPXFj4yS7pAiyb1Fw/YIL79QwalsCU3TVl*)
(*ICwTDXVI4VevjEd6jLGvLJ9z92D5c01ZGGzItfujF5ZsKncZNsJ7Wqx1uov0*)
(*WxsSexiWV/TxLsMZ87mWi2AZR/9gMam/MTVj3BDrS3iSrXDf0RmPJLDsq8cK*)
(*d5h2WP3AEViwJOruGO5NlGUhj4D56dzkNHKvmfUfneAk1maNSdxD7dloXaUB*)
(*5s/068iD+XFXYlpgZojvNhcy/qh8ZQycNNpdNYx7iRMNlarB1KcRn3Y4l0VN*)
(*Kf4R/Tvdo87BnLqUUhYs/GW+YQss0Fw5IdTH+uTqJTdhuvPto6aw6Gy7ymNy*)
(*z26v1hTpYd8/tN4YhZkGzDETYrqG43dYtMD6dK0u+rGy1cdhmjx16VKY0/qv*)
(*00O40PJEwBsdjJvFMarhjs+OlUKY/4+qyjqynxmnuNGw89PUuSOm5Hevp5xg*)
(*ydD7sBzT//93tfHuSJpQ/wH3JLjQ*)
(*"]], Polygon[{{10.270945885274676`, 10.2976833630141}, {9.427509690068058, 9.355019380136117}, {9.03059853938259, 10.049613893835684`}}], Inset[$CellContext`W, {9.914215354453091, 9.259023129707089}, ImageScaled[{0, 1}]], Line[{{4.4999999999978915`, 7.}, {14.99999999999767, 7.}}], Polygon[{{10.35, 7.}, {9.15, 6.6}, {9.15, 7.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {9.75, 6.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{5., 13.}], Point[{4.5, 7.}], Point[{15., 13.}], Point[{15., 7.}], {Thickness[0.015], Line[{{9.5, 12.5}, {10.5, 13.5}}], Line[{{9.5, 13.5}, {10.5, 12.5}}]}}, Inset[$CellContext`T34 $CellContext`P2 $CellContext`N201, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieigehfgfh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {0, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{0., 14.999999999996362`}, {4.999999999998181, 12.999999999996362`}}], Polygon[{{3.057086014531156, 13.777165594187538`}, {1.794357714927203, 13.851443729458358`}, {2.091470256010486, 14.594225082166565`}}], Inset[$CellContext`u, {1.9243444516511394`, 13.165661129127848`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{0., 5.}, {4.5, 7.}}], Polygon[{{2.7982869291721544`, 6.243683079632069}, {1.8641684572492248`, 5.390792300919828}, {1.5392576844064665`, 6.121841539816034}}], Inset[QFTSymbols`e, {2.2747146223828443`, 5.188392099638602}, ImageScaled[{0, 1}]], Line[{{19.99999999999818, 15.}, {14.99999999999909, 13.}}], Polygon[{{18.057086014531155`, 14.222834405812462`}, {16.794357714927205`, 14.148556270541642`}, {17.091470256010485`, 13.405774917833435`}}], Inset[QFTSymbols`d, {16.924344451651137`, 14.834338870872152`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000091, 5.000000000003638}, {15.00000000000091, 7.000000000003638}}], Polygon[{{18.057086014531155`, 5.7771655941875375`}, {17.091470256010485`, 6.594225082166567}, {16.794357714927205`, 5.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {18.075655548348863`, 6.834338870872152}, ImageScaled[{Rational[1, 2], 0}]], Line[{{9.999999999998545, 13.}, {4.999999999997014, 13.}}], Polygon[{{8.1, 13.}, {6.9, 13.4}, {6.9, 12.6}}], Inset[QFTSymbols`d, {7.5, 13.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{10.000000000001455`, 13.}, {15.000000000002988`, 13.}}], Polygon[{{13.1, 13.}, {11.9, 12.6}, {11.9, 13.4}}], Inset[QFTSymbols`d, {12.5, 12.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJwt1Qs01FkcB/B/VktnZUd5DKm8kjd5tCPJ5BEihmgV8lh1LGKiNLW0ks2U*)
(*HrYkJTVRy0gikqJMojNCqYk8yhlLaEOTxFQe+7179n/O/9zzOffxv/d/7+93*)
(*tcPjfHfIUBS1Fy8pqYk5PKZM6r9Hk0nFzFZn/ANL4tJ5KbBWSYHXC1jAUZ6a*)
(*grNKM15Vwpnnfu0NXop2ldFbM2Gez5xfCcwJnen/BW67X2Arhi2MrA6Zw7Tr*)
(*dTe+wGyPWasJEybF6rNUmoZHlqd3VhCL3HNGYaHNg3ds2EKtjdsBG2TttjKD*)
(*Q62NVwvgoN69B8aMUb8t/HUFnNVWvKISptV9f/Au7NmUPp4Ct3lmD5P+odL4*)
(*B/4w+5HtrOIyJsUV5ERbwpKetYFhMHs8Z0CFOCE4/Amc1pK9btYI626PK3Va*)
(*zqQmBpI/D8M8p509DbAkQ9VOBIu75Vx1tJiUtMXa+x7M/l6tNQjmFpt15MK0*)
(*qxFKJ2EG/5tOIrFViVsFfLH172g3OJN2S6cZloTY9y+COwuOfGqHeVfWl3cY*)
(*Yt279PnEzpfOPjsLF+2oPtkK71HWavaFxXd6Bh7CaSV3Emgwi1MbeAc2Gco4*)
(*/NyASdFVQ36/BeeEGbrnEI9vMCD1nlTJ9p2wNIwuI4TFC9X2rYV5XMOfBsl8*)
(*8tTcNGCtoQQPJW0mpZA0c3p2JdbXdMrYFa6MHfIYgqXb5WPTYMqL3f0clhda*)
(*1jXADf2KMTWkfUha1Hc6GE/B2usKXLb8mcQOrnzs5HKI9PeyPx8Fd35+174V*)
(*Lpo5/v447Nb2cZ8RHDnYLJsPN5xgl3zSR3+aS20xHODz80QVnLKq/gwf5joK*)
(*CxNhrllNAmlPe6pWbgMzL3oxLsBtTT7mUyvQXxqtkg3r2d6UeUCsb9dB6t1q*)
(*EhyPwxLem8nrMMOsPy8cFmgH5j4h86u/3ugA0/jFWROw5krjjVpwTtARAz1d*)
(*JlXikM6f08N+dvJFPnDSUe+r3TCd727CgWufGMmXw1zzjN5smHvBbDCN1I/6*)
(*B5XDwx+6XQLgSN4JuWZYuD9kzBg2sDc3eQuXjd54PIdSunofj5SaaYJCEUqD*)
(*qEBdDbSTJOZVF5J+t99+toYHKL9FSbpk/7vWs+CiqfJRb5invKYmCq68bOSk*)
(*DVfnmlCHYHHC6XljZJ2+HZdOwfKLbAKryH+T0XifDTMU/jyVDFuU3fO6CK91*)
(*5mu5wQLXAc9CmN3DOqgOR26ru3yfzKdrbmoc5yD0i31iH0wtTusVwcKWTSVK*)
(*+G/Wh7M07sHSs22NG2GL1DfN+bAgtnQqHWYMrRQdg3NeKSk2wLI971ziSL3b*)
(*tMlXeM+1puZNMMtKLUaf7PvA1X49mBNb5b4Bzgp1UpjAOS4aLxgLgA3Yza01*)
(*JE7Luu1DYEp6oSAZLrubfTMQ5u1iN9nBnCXnp33g4YEVAx8R51pOYwVkvMiH*)
(*18RxcJH+5NZ1MCe48e4k8gTHyTTenpyzdV3px2Dxudf+rjDdt0poCtP73ejb*)
(*yfdXuSr1IQ+xZCNsUsl8j574lk/yZnB76i24cxV9MxsWty3wH4EDkrYccIbl*)
(*X1wRGSMOWMuY0+owt6Y5PobESUQo4z3yMNf9XCofZjgsVa6AO8vy63vhYVFC*)
(*7i44oGVmSB5xzLBiJ9Nhdu1LWX24zFnTv2IJ5hVk3GgDSz5M3naAeTG2+21h*)
(*ruburwINxMVf+iNWMC3iaLcdLO2yUzCEhyMOvLqtjvOx2C9uKckj8RUnreGA*)
(*H2vqVWBWwbYF9+mIzzJjhiosnJVZthmuzvw6TwfmPJeVStXwfdPcsTWwgZKr*)
(*qBSuPvbSPAxOaeqciIfFjnl+Z2CBwLFvvRo5nyGJT8n4nMEmVVgop5KliLzX*)
(*aTmrO6KKdlo0mjdsIVe1pRbOjPzGzIAZB6noVDjS3EO2jnj8dOEaOGW1HnOI*)
(*5E3ft/P7VWB3obMMyfuVXbt/g+n0rHk0OFJo1zIfZlUulCN5mopouvmHMvZH*)
(*/ZH/D7CE3J+L/78/jZj/AsHsrz4=*)
(*"]], Polygon[{{9.485504244572473, 10.308697453256515`}, {10.308697453256517`, 9.348305376458466}, {10.720294057598537`, 10.034299717028503`}}], Inset[$CellContext`W, {9.807331579087336, 9.275685965145556}, ImageScaled[{1, 1}]], Line[CompressedData["*)
(*1:eJwt1QtUjGkYB/APnYzIFsN0b7pPCVNaJcWnqNnVZbrYcokRqY1IJcV2QSXX*)
(*LnIQKl2YnDZTpBFpahwNcsrR0m2ZVBiUQbWT0P7fPTvndP7n973v93zP+3xz*)
(*JpPQXf5hkymKSsQfSerbBD7zaUpF0pqmeNL9E/Uw9/rafdNtaGpD2euoZJjB*)
(*OHx9Fuz10+UYd1gcYvdGG+ZrhlXOhHkWp13UYUEKb3qvLU2xfQz0hlBvx93Z*)
(*xXUwI2B94ANYGehfmw87KWYsOgfbTnS2pcAcReJqARznOL83HBbvvOhgSqx/*)
(*7xAf1hkUG/ZxaOo418/dkdTjRAdcgSNCP/fqwtmaGY0x8FaO+vnReTSVGX8z*)
(*hQfbZrCCWmDZ/lfxNrC59YdH+bBI9pWjC3PWTU0PhSUarOLZsIPiylNzOHhz*)
(*dB4LprxZwj6ci7142gUTOM+3LvgSrCxfXjwfFm3ZHiKAs6NfrHGEVVd/qJvB*)
(*EXNflzvDFRvope9xDgHvkJcD7CVydq0jTjzOMCX9PrTKzIaLHgSpT4HTHvo2*)
(*RsEJsxL7n1vR1Nu3u5v45L2E55QVw04tGbcdYZm1x55t8Ifcb+FsmLvWYrUV*)
(*zDby82MQR1nEKywxh4JtrEHULZphZFQFOzh63GyBneLqHxyAAzX5jWUwo+jr*)
(*aAjMLp55Yi+sFTrwxAOmXHvd3GBB85JZLnCcammPOsxvLZ9C3K8xTb0Zz00w*)
(*flfrTu4fiP2YBnMGpRt8iX2k09xhOtmrYh18J6JAMgXObgiN3Awz7P+xf0Ay*)
(*X7N3E5Kv1jSchxReiPcOQPJsCuXhSHkKZeeMFC1v/rECKdC3TWIi22r00kyR*)
(*ygq3030WONfoLsVUcj0xz+IqHFwQq6Mk1wtU7duR7R3Dwg4ke2NWpy3yzpnT*)
(*Vg3I1N+YSZ/MaYpZ2xRyCRZWKQvq4eH91blJcOa5FLc8uEI6XO9P1sezF++F*)
(*z86QlbFhlcBPvg0uLRcPvEEmWFUuDEX+ca+5pxzppHPs7n/rUZbpEUjuCwfW*)
(*bqQ8yszZEklljesmIV38RmIGzHDOPd7xGbDDCr99Qph3Jsr6CLlvkeG83XBq*)
(*lcvwAZj/ceQWDbMv5tTthLdel+WwYNlXbqMPzB7N8hwxhT15UlO43/v85Q5Y*)
(*EjvS8wH7+LVjTxvgtl1+3iLyXOZomhAuctVlkecIq8PcsmFO0MDRRbDAQqsq*)
(*jnhnjGwcaWvw6lkA8uzztFWPkS2TxwNtkfKI1RFXyXrhh6zvJqg/qqDzYDXp*)
(*ycZmOFVMRx6FE0rWfz4Gyw6kzzkGM4dY3ath0ap1y0+RPtpWVE8j+1/+wiiE*)
(*aQ3m+2Y2Mj3NktSPu5AzmAlT0tYtIpi7rLvVh6xnOupWwm+fKXT0YWW9b34R*)
(*6bMy0upvY/ig+FAGqfeyc1cusU1f3yYyh5iONYFwamnkkgVkv11xlTGc8Hih*)
(*5zD6CNYqWaU0gk+5SWvgjk/U0kZYsmRAEQ+fZdZdOwHLtttMcoF5MRoefmRd*)
(*EdPNgKMVpaUMuKOGGy5HX8HXNDqrDPH79rE1+B7p0/JWthesEpapbhDrFpp2*)
(*GWDeViV6VXDqQ2l4CCzyaqRvwuKLJeFd+uhnv12/BFbJunrXwLLUoZ4WuM27*)
(*qqldD9cNWrr/gjtqD+euh9lH1RTPYeGOOuWgLua3p6GjFeaU0NYnYdrdQXib*)
(*3D/i/MkFdkoWi/NhAbXAf0wH9b5/6Y2C5W2/3pfAbBvztY4wY33GwSxYK/6I*)
(*fBhz43VNDAjgNk+D3+NhbuzQJC7Z7/55aBxzOGucbKNioe7e7sL/5lb4PaUG*)
(*lqgHrrSHo3uLBGEwm+ObMIS5cG0e1ajD2eOdZvdgdtgUZv5c9Hve0L0a5m98*)
(*W24CS+S2ajWwuF6XujQHc7tl73gfzjSIzjGABZWmai9gLc4Oz3NM1H03+8kX*)
(*OOLPYYU+HN3euWwClmsrc4Wz0b+x3GiM1A9t/9kNFo3N8eiBRY9/8N7NwvfU*)
(*6Kb5ZbLfR5pfBEtWHtQOIvX9TYK2wIKQtuWfyXs7ucd1Icy9cWJzksH//3e1*)
(*8Z5J6tP/AuEXvqg=*)
(*"]], Inset[$CellContext`Z, {9.914215354453091, 9.259023129707089}, ImageScaled[{0, 1}]], Line[{{4.4999999999978915`, 7.}, {14.99999999999767, 7.}}], Polygon[{{10.35, 7.}, {9.15, 6.6}, {9.15, 7.4}}], Inset[QFTSymbols`e, {9.75, 6.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{5., 13.}], Point[{4.5, 7.}], Point[{15., 13.}], Point[{15., 7.}], {Thickness[0.015], Line[{{9.5, 12.5}, {10.5, 13.5}}], Line[{{9.5, 13.5}, {10.5, 12.5}}]}}, Inset[$CellContext`T34 $CellContext`P3 $CellContext`N202, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieigehfgfh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {22, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-2.7284841053187847`*^-12, 15.}, {6.9999999999972715`, 12.5}}], Polygon[{{4.065045146956902, 13.548198161801107`}, {2.8004202942438354`, 13.575105073560959`}, {3.06948941184236, 14.328498602836827`}}], Inset[$CellContext`u, {2.978678584652858, 12.895100037028001`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{0., 5.000000000003638}, {6.999999999998181, 8.000000000003638}}], Polygon[{{4.051487018010834, 6.736351579147501}, {3.106080701420832, 5.895990408845276}, {2.790945262557498, 6.631306432859723}}], Inset[QFTSymbols`e, {3.50577491279771, 5.68012520347201}, ImageScaled[{0, 1}]], Line[{{19.499999999992724`, 15.5}, {6.999999999989086, 10.5}}], Polygon[{{13.807086014531155`, 13.222834405812462`}, {12.544357714927203`, 13.148556270541642`}, {12.841470256010487`, 12.405774917833435`}}], Inset[QFTSymbols`d, {12.67434445165114, 13.834338870872152`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJw9lAtQVFUYxw/xiKLBYmcIakteu/ecXYO1A6mF+jVj5QhFqaBGo5vJ8ZXK*)
(*TEiaI5JOTQoNDrmwZ40iRW10c0qEHckRH0wRcwwLVCocHzv4IFphbOLhwHa2*)
(*mb47c++d35x7zv3O//v/T/LyDfOLHiCEvKLv0FvE6AcxA/nvYlDVNO/HNULz*)
(*tbt1jecp0PKKum6lecTo37afgvl6ZsRM/hQQ942HHZ9QmHVgeut+GeLSA6yc*)
(*wjcPPv5HNHkaSHtLo6+SQu/aQwffFZphxuyLRyi0Tby8r1NpLh7ZU95DIb5B*)
(*rXyWT9bjbZ/ujGEQd9tb5ZKab5/znchmMJDwT+1oULNjqNm6gsHvlvpVGTwJ*)
(*SH2z2LSFgdo17fByoXlwx+xAGYPMUzM/rJGaaX5gdB2DcW/PDx1Kc0JzdkEO*)
(*AzH8xEvBYGj+B7LGzMAUM+cM58lALgwXvniHgskWH7VKaHYs/F6eoLB5bcnA*)
(*Xqn5tH9ZjotChtXv7FSak0YWp2+ncGMz03qm6O8rFxbsoPDxC7GxWTwlpMdv*)
(*n7kp9MRe3bpSaG4v+nPLKQrvh9/vlVIzuXzl7wAFz3z/G0ppPt19ZGoKg/WT*)
(*8scmgpq/9jnv5TFIeK/h5lSeCmT33Mu9xQya6k0JRUJzdGLyvm0MHP2w3S01*)
(*u3PP6FrgbHTGJKU0O517K5wM+jwDDcGgZnL312+nMfhq2GPnPA3I66+29kUy*)
(*aA1UVQuh2eGfeKaLwsWCnV1ShrhrTuMhCsfPL7mnlGZ3feTGXbp/D4V8YgFS*)
(*HpNGdb8fyz74COcWHB88VjpFCAvOj3qyeJ2UFlw/La6oWykL/r9hk6mQECvW*)
(*Fx72yyDnVqzfNblV62fF/T26euCWR1px/96awsSflRX1WTR2ODKMGKif3Wc+*)
(*yrmB+r4WFZkqhIH6/zWWpPUzsD/hPUNDHcrA/vmrLnnGgwb2t8Zv/tLBKfY/*)
(*94sK0wpB0R/Hrt4ZrZUU/VMafXKWUhT9tTSuryWUs//91/6WMSOLM/Tn7pyz*)
(*ZasFQ/+OlrXn10mG/u73L6u9oBj6P288IjOc2DAfJ11seha3YX5afIlKCBvm*)
(*y9jTm+6WNszfpQVe70/KhvkMfFRSfT9ow/xafe8kpXM75vs52bf1bWHH/G9c*)
(*8Px3LmnH82H86Jufdyg7nh9xESG/TMHz5V81xcDv*)
(*"]], Inset[$CellContext`\[Gamma], {10.5, 13.4452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxFkm1Ik1EUx68rUShqEmsWhlO3PRvPY81dyxDTi/XBD34QI1ChGLPduUIr*)
(*wl5dFIvACsygbdc0M8gMjQI/9KVBQotydxOWJUTQwl5EQRcRCW57Or1wPXC5*)
(*/OBwXv7nX+Q81ujSIIS2w/vz/wuFyBkVopCgG5GPYVkhax/3u8uxgaD8d+v2*)
(*NSrE6df2tFHg4NDk2w6F+JKJg/0MeKQ9lntBIVbH/KspDrz7xN0c4Oy+aFyD*)
(*ighKjJI45H+Z6bq6EwMbvpqqod6L55W5bRQYJQZC0K/Tft3Tx4Ab9M6fqkya*)
(*lBDnHFirqyidlkm3bbBeVYHPOD+NPZJJuCw/XYaLCXri3bqlVyZV9d/nDlNg*)
(*i2T7fEkm24ZL8oIMeFlis8DRvOH2CAeuu3hAD/nZh64sZVRgh3vxIdTbged9*)
(*dlwC+QWbrdAPTZzSUwqcLN6UhHkeTPQyxoC1ScNTmPdITirDOTBaObcL9tHV*)
(*OvciZAT9wu7XsO/R6TEPxsB1PSztVcjL++vPU7rKlS0/LjO2mn9L3u/n3Cjq*)
(*LYQGnqmqUfQLLK/Jwtgk5mmp7qCUmlbnremeY8wk9olzXVeUm8S+K0NntVnI*)
(*LPQYfd98sxybhV6zzR8W3dQs9AyPb9DfZmahd1XsmybGzeIep6cc4whJ4l4j*)
(*b2oxxpK457XoSb+LSuLee2rCvwJMEn4osPg6J7kk/JJy2UvTqiT8NDOoq7Bh*)
(*i/Cbd2PhvVZqEX6841k6HmAW4ddUQ2swwoH/+3nh728lvwF1QRsU*)
(*"]], Inset[$CellContext`Z, {13.0548, 10.25}, ImageScaled[{1, Rational[1, 2]}]], Line[{{7., 12.499999999998447`}, {7., 10.500000000001554`}}], Polygon[{{7., 10.9}, {6.6, 12.1}, {7.4, 12.1}}], Inset[$CellContext`u, {6.0548, 11.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQEyDhBa1YHhQYSc1SZpB44cR6szZ1QcGCaoia2t*)
(*lHY4uLRx04yZQL6AyeaDCdIO6r9b81LTgPwF3Kvbs6QdopaxJhsZg9Q/fHqx*)
(*X9rh2mXFsv//lR0YEqozb+2XdgjQLO84cwbID+i0m/Zc2oHlzpTmmTOB/AMi*)
(*26/+AZo/hyclLQ3In9CS38Ik46CjvNDE2BjI39AiNYcR6D7ZZUD3gczTWB0K*)
(*dK+X8YMzZ84oAfU3+nMD+Xe/zwQCBF+ZIw0IlODqt52RNzY2VoKbx/g48v//*)
(*/4pw+67ciTt95owi3D32yZ9nz5ypCHfvH+XsmrQ0Rbh/NlzrKDc2VoT7V0vn*)
(*XicDgyI8PJZF/ppz9owCPLxuslRNnDVTAR6e9lF1vulpCvDw/jF531FjYwUH*)
(*1PhQcAAAWzaUJQ==*)
(*"]], Polygon[{{7., 9.85}, {7.4, 8.65}, {6.6, 8.65}}], Inset[$CellContext`W, {7.945200000000001, 9.25}, ImageScaled[{0, Rational[1, 2]}]], Line[{{6.999999999998151, 8.}, {13.99999999999741, 8.}}], Polygon[{{11.1, 8.}, {9.9, 7.6}, {9.9, 8.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {10.5, 7.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{7., 12.5}], Point[{7., 8.}], Point[{7., 10.5}], Point[{14., 8.}], {Thickness[0.015], Line[{{13.5, 12.}, {14.5, 13.}}], Line[{{13.5, 13.}, {14.5, 12.}}]}}, Inset[$CellContext`T35 $CellContext`P1 $CellContext`N203, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieihegfgfh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {44, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-2.7284841053187847`*^-12, 15.}, {6.9999999999972715`, 12.5}}], Polygon[{{4.065045146956902, 13.548198161801107`}, {2.8004202942438354`, 13.575105073560959`}, {3.06948941184236, 14.328498602836827`}}], Inset[$CellContext`u, {2.978678584652858, 12.895100037028001`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{0., 5.000000000003638}, {6.999999999998181, 8.000000000003638}}], Polygon[{{4.051487018010834, 6.736351579147501}, {3.106080701420832, 5.895990408845276}, {2.790945262557498, 6.631306432859723}}], Inset[QFTSymbols`e, {3.50577491279771, 5.68012520347201}, ImageScaled[{0, 1}]], Line[{{19.499999999992724`, 15.5}, {6.999999999989086, 10.5}}], Polygon[{{13.807086014531155`, 13.222834405812462`}, {12.544357714927203`, 13.148556270541642`}, {12.841470256010487`, 12.405774917833435`}}], Inset[QFTSymbols`d, {12.67434445165114, 13.834338870872152`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJw9lAtQVFUYxw/xiKLBYmcIakteu/ecXYO1A6mF+jVj5QhFqaBGo5vJ8ZXK*)
(*TEiaI5JOTQoNDrmwZ40iRW10c0qEHckRH0wRcwwLVCocHzv4IFphbOLhwHa2*)
(*mb47c++d35x7zv3O//v/T/LyDfOLHiCEvKLv0FvE6AcxA/nvYlDVNO/HNULz*)
(*tbt1jecp0PKKum6lecTo37afgvl6ZsRM/hQQ942HHZ9QmHVgeut+GeLSA6yc*)
(*wjcPPv5HNHkaSHtLo6+SQu/aQwffFZphxuyLRyi0Tby8r1NpLh7ZU95DIb5B*)
(*rXyWT9bjbZ/ujGEQd9tb5ZKab5/znchmMJDwT+1oULNjqNm6gsHvlvpVGTwJ*)
(*SH2z2LSFgdo17fByoXlwx+xAGYPMUzM/rJGaaX5gdB2DcW/PDx1Kc0JzdkEO*)
(*AzH8xEvBYGj+B7LGzMAUM+cM58lALgwXvniHgskWH7VKaHYs/F6eoLB5bcnA*)
(*Xqn5tH9ZjotChtXv7FSak0YWp2+ncGMz03qm6O8rFxbsoPDxC7GxWTwlpMdv*)
(*n7kp9MRe3bpSaG4v+nPLKQrvh9/vlVIzuXzl7wAFz3z/G0ppPt19ZGoKg/WT*)
(*8scmgpq/9jnv5TFIeK/h5lSeCmT33Mu9xQya6k0JRUJzdGLyvm0MHP2w3S01*)
(*u3PP6FrgbHTGJKU0O517K5wM+jwDDcGgZnL312+nMfhq2GPnPA3I66+29kUy*)
(*aA1UVQuh2eGfeKaLwsWCnV1ShrhrTuMhCsfPL7mnlGZ3feTGXbp/D4V8YgFS*)
(*HpNGdb8fyz74COcWHB88VjpFCAvOj3qyeJ2UFlw/La6oWykL/r9hk6mQECvW*)
(*Fx72yyDnVqzfNblV62fF/T26euCWR1px/96awsSflRX1WTR2ODKMGKif3Wc+*)
(*yrmB+r4WFZkqhIH6/zWWpPUzsD/hPUNDHcrA/vmrLnnGgwb2t8Zv/tLBKfY/*)
(*94sK0wpB0R/Hrt4ZrZUU/VMafXKWUhT9tTSuryWUs//91/6WMSOLM/Tn7pyz*)
(*ZasFQ/+OlrXn10mG/u73L6u9oBj6P288IjOc2DAfJ11seha3YX5afIlKCBvm*)
(*y9jTm+6WNszfpQVe70/KhvkMfFRSfT9ow/xafe8kpXM75vs52bf1bWHH/G9c*)
(*8Px3LmnH82H86Jufdyg7nh9xESG/TMHz5V81xcDv*)
(*"]], Inset[$CellContext`Z, {10.5, 13.4452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxFkm1Ik1EUx68rUShqEmsWhlO3PRvPY81dyxDTi/XBD34QI1ChGLPduUIr*)
(*wl5dFIvACsygbdc0M8gMjQI/9KVBQotydxOWJUTQwl5EQRcRCW57Or1wPXC5*)
(*/OBwXv7nX+Q81ujSIIS2w/vz/wuFyBkVopCgG5GPYVkhax/3u8uxgaD8d+v2*)
(*NSrE6df2tFHg4NDk2w6F+JKJg/0MeKQ9lntBIVbH/KspDrz7xN0c4Oy+aFyD*)
(*ighKjJI45H+Z6bq6EwMbvpqqod6L55W5bRQYJQZC0K/Tft3Tx4Ab9M6fqkya*)
(*lBDnHFirqyidlkm3bbBeVYHPOD+NPZJJuCw/XYaLCXri3bqlVyZV9d/nDlNg*)
(*i2T7fEkm24ZL8oIMeFlis8DRvOH2CAeuu3hAD/nZh64sZVRgh3vxIdTbged9*)
(*dlwC+QWbrdAPTZzSUwqcLN6UhHkeTPQyxoC1ScNTmPdITirDOTBaObcL9tHV*)
(*OvciZAT9wu7XsO/R6TEPxsB1PSztVcjL++vPU7rKlS0/LjO2mn9L3u/n3Cjq*)
(*LYQGnqmqUfQLLK/Jwtgk5mmp7qCUmlbnremeY8wk9olzXVeUm8S+K0NntVnI*)
(*LPQYfd98sxybhV6zzR8W3dQs9AyPb9DfZmahd1XsmybGzeIep6cc4whJ4l4j*)
(*b2oxxpK457XoSb+LSuLee2rCvwJMEn4osPg6J7kk/JJy2UvTqiT8NDOoq7Bh*)
(*i/Cbd2PhvVZqEX6841k6HmAW4ddUQ2swwoH/+3nh728lvwF1QRsU*)
(*"]], Inset[$CellContext`Z, {13.0548, 10.25}, ImageScaled[{1, Rational[1, 2]}]], Line[{{7., 12.499999999998447`}, {7., 10.500000000001554`}}], Polygon[{{7., 10.9}, {6.6, 12.1}, {7.4, 12.1}}], Inset[$CellContext`u, {6.0548, 11.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQEyDhBa1YHhQYSc1SZpB44cR6szZ1QcGCaoia2t*)
(*lHY4uLRx04yZQL6AyeaDCdIO6r9b81LTgPwF3Kvbs6QdopaxJhsZg9Q/fHqx*)
(*X9rh2mXFsv//lR0YEqozb+2XdgjQLO84cwbID+i0m/Zc2oHlzpTmmTOB/AMi*)
(*26/+AZo/hyclLQ3In9CS38Ik46CjvNDE2BjI39AiNYcR6D7ZZUD3gczTWB0K*)
(*dK+X8YMzZ84oAfU3+nMD+Xe/zwQCBF+ZIw0IlODqt52RNzY2VoKbx/g48v//*)
(*/4pw+67ciTt95owi3D32yZ9nz5ypCHfvH+XsmrQ0Rbh/NlzrKDc2VoT7V0vn*)
(*XicDgyI8PJZF/ppz9owCPLxuslRNnDVTAR6e9lF1vulpCvDw/jF531FjYwUH*)
(*1PhQcAAAWzaUJQ==*)
(*"]], Polygon[{{7., 9.85}, {7.4, 8.65}, {6.6, 8.65}}], Inset[$CellContext`W, {7.945200000000001, 9.25}, ImageScaled[{0, Rational[1, 2]}]], Line[{{6.999999999998151, 8.}, {13.99999999999741, 8.}}], Polygon[{{11.1, 8.}, {9.9, 7.6}, {9.9, 8.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {10.5, 7.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{7., 12.5}], Point[{7., 8.}], Point[{7., 10.5}], Point[{14., 8.}], {Thickness[0.015], Line[{{13.5, 12.}, {14.5, 13.}}], Line[{{13.5, 13.}, {14.5, 12.}}]}}, Inset[$CellContext`T35 $CellContext`P2 $CellContext`N204, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieihegfgfh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {66, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-2.7284841053187847`*^-12, 15.}, {6.9999999999972715`, 12.5}}], Polygon[{{4.065045146956902, 13.548198161801107`}, {2.8004202942438354`, 13.575105073560959`}, {3.06948941184236, 14.328498602836827`}}], Inset[$CellContext`u, {2.978678584652858, 12.895100037028001`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{0., 5.000000000003638}, {6.999999999998181, 8.000000000003638}}], Polygon[{{4.051487018010834, 6.736351579147501}, {3.106080701420832, 5.895990408845276}, {2.790945262557498, 6.631306432859723}}], Inset[QFTSymbols`e, {3.50577491279771, 5.68012520347201}, ImageScaled[{0, 1}]], Line[{{19.499999999992724`, 15.5}, {6.999999999989086, 10.5}}], Polygon[{{13.807086014531155`, 13.222834405812462`}, {12.544357714927203`, 13.148556270541642`}, {12.841470256010487`, 12.405774917833435`}}], Inset[QFTSymbols`d, {12.67434445165114, 13.834338870872152`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJw9lA1M1GUcxx+JtlNqc71NPYgQ7u55/sfrPaBMEX9TzDvKzDPGdIPA4EGc*)
(*C2fL3QrarWnp5JaugHs40QE1G2ITxw5fMN9O1sGDnsnMlqvmmmQpEzUxqf37*)
(*XZvPf/v/n332vPx/L9/vk7ahwVubQAhZiW98FEn4IclA/n8YPJzlimwSyHt+*)
(*yv1hlMLgsTVtYwo591Yo2k3Bd7Jiuoin4Pq8v0I7KVR++2N/t0SeXbm210/h*)
(*rfahmIW8DMRXSooDFFIXevdvFsiP0ptW9FJ498RExyWF/OZLrlPXKAQy8utd*)
(*PBX3f1n0fhKD7IuP21ok8t2sB0VFDKqz1x/824zPz1+84B0Gq2aUvZfDX0Ge*)
(*d8P6AYNfVh8NbxDIlh3rXm1i8Hz6nkCrRKb+ipLNDJqs22PDCjl2zj/hYdDo*)
(*W+sxTWSf+8SklUHXVNkpztOA/Fr44MYtCisG/pyqE8hHlu8lgxQMP78Sksjf*)
(*3b99RVKoKWxdckkhu5fN+APzf3ukcnECmQ9kY/P01d0Urie/8Vs+R5490Hu4*)
(*k0LVrGhFnUAGMBKHKIwXn/5eSuQz3dbPJin8XvL1JqXivL3Ri/FsufMYTBN5*)
(*y7qEmkUMxiK7Kl08HevRU1jgZvBM4bFwrUAOnj+YspzBpw0HnFIi7+y7m5TL*)
(*wNMeCCmFHEsrt89lcCFw4Z5pIlvCNMvC4NrSr1ycZ2B/Xxz4BPsdHXytTgjk*)
(*jX3uPJOC/WxMSok8x9U8hNyTMqKUQq7yPkrF9ZGZcZ3YgPiTMiiy9XY+59ym*)
(*5w+4c4QQNr3/n9f7g1La9Pl3outHlbLp/0d2LHqWELuOr7Fhaw3ndh3/kvaq*)
(*MSHsOr/jl1d62qVd5z9Zsq1zVNl1fcqSnz5NiEPX73qkvIVzh67vz8OQJYRD*)
(*17/WXNAVlA7dn8MP+6wjyqH7J4o7I/+aDt3f6sv153I51f0P7VKZNYJqffi9*)
(*L1iCOD7Rz7i1Z5lSVOurdG9vOO6zJ/pzT3yYU8CZ1ufRmw1b6wXT+r15fJWn*)
(*QzKtb5/lUHNMMa3/L+55M58ihvbHN10J+QXc0P75aKp2RAhD+8sbtuQFpaH9*)
(*VzBx9UhUGdqfocF9bdOmof3banxuy+ZO7e+ZmWs+rhZO7X/nwvL+FunU90Np*)
(*4njHsHLq++O5xLheMvX98h9faKYH*)
(*"]], Polygon[{{9.9, 12.5}, {11.1, 12.9}, {11.1, 12.1}}], Inset[$CellContext`W, {10.5, 13.4452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxFkl1Ik1EYx09mGQg2C6q7bbqPN85LrB2DKJhPFm5S1jIIbRWy2nFRKVGQ*)
(*hn1DXfSpEe5dBUbD1IupBGVoaVA37WwidbFSsi4ioWATas1C3x4rjgcOhx+c*)
(*85zn+f//Zn9DVSCHELIG99z5b6lAZ3VcRiCm2SV5VIVlbK+/hJmAhMY7b3lV*)
(*4AX9F4Mc+Zz7eOERFcwjzm13NeRV3VvVUyr0TJ3vGxHI8CHgalKhosP3JIeY*)
(*gXhp89VDKljyfh9dx5AnjaOeShVSL/NTdRy5Nxr1KSok3jbVhLW5+yv9P3QK*)
(*1eozIQRycrQv/Y7Cx+ENB3UdORv7kj9IQUmXMicrAlJ79tp0N4XbkelNAY7c*)
(*Ts3uLgrlx4auhDTk5GSl4zGF4L6dekwgG77ljgkKfRP8gq4jO3oz9DOF9nrL*)
(*LycrBrK+Ilv2k8JM49PdnCOni5ansZ+HL1o0TUMmxScjC1T4tH8gIQRydaY1*)
(*hvolhnpQRwsQT6NrBXL05mbGGLLpfSaF75W2AOd8npPBMNabv7+rYRDntch6*)
(*TvCiHxb5n/H+lrWMWWU/e1z1WM8q+114ubxL06xyntqWsUVxYZXz7jBppwmx*)
(*ST0MN6KkhNmkXgPX4UQdt0k9D/sWPw9rNql3cumwiAub9MNU+uoOIXbpV+eb*)
(*MpzXLv100ksdAW6Xfhdu/G4IaXaZh/FsbutrYZd56a+JeGZ0u8xTVcGZ7Q6m*)
(*yLxNOOKPDnBF5jE85W5u0xSZ15R4cC8mkP/n+evfczX8AdT/HsQ=*)
(*"]], Polygon[{{14., 10.85}, {13.6, 9.65}, {14.4, 9.65}}], Inset[$CellContext`W, {13.0548, 10.25}, ImageScaled[{1, Rational[1, 2]}]], Line[{{7., 12.499999999998447`}, {7., 10.500000000001554`}}], Polygon[{{7., 10.9}, {6.6, 12.1}, {7.4, 12.1}}], Inset[QFTSymbols`d, {6.0548, 11.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQEyDhBa1YHBoF3zyEJph/zlttJnzqgAxWU6jwRI*)
(*O5g0KebMmAnkB2ROSZSQdhALvf83JQ0k73e5jUHage9M6nlDYyC/QFG2j0fa*)
(*IaL+6pV//5UdGBQaZY9bSTvE3Nr36/QZIH9BNc+WFmkH992VWjNnAvkFP4Q+*)
(*35d2+LvhgF9aGpCfcH/yZnsZhyKm7eHGxkD+hB1vmqbJOEhOXWzLwADkM6z5*)
(*rn9DxuFW1RvGs2eUHBgEFqQ1/pZxSK4zXjdzJoI/t/FMYFqaEly9WqvwPyNj*)
(*Jbh5z7NiDv3/rwi3r++vx4ozZxTh7mH2t984c6Yi3L07XdqupqUpwv2zRNWR*)
(*1cRYEe7fFQ1a2owMivDw+GQ8y+DcGQV4eL1apcA0e6YCPDzP1N6bnJ6mAA/v*)
(*iRGHnhgbKzigxoeCAwCgGpOb*)
(*"]], Inset[$CellContext`\[Gamma], {7.945200000000001, 9.25}, ImageScaled[{0, Rational[1, 2]}]], Line[{{6.999999999998151, 8.}, {13.99999999999741, 8.}}], Polygon[{{11.1, 8.}, {9.9, 7.6}, {9.9, 8.4}}], Inset[QFTSymbols`e, {10.5, 7.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{7., 12.5}], Point[{7., 8.}], Point[{7., 10.5}], Point[{14., 8.}], {Thickness[0.015], Line[{{13.5, 12.}, {14.5, 13.}}], Line[{{13.5, 13.}, {14.5, 12.}}]}}, Inset[$CellContext`T35 $CellContext`P3 $CellContext`N205, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieihegfgfh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {88, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-2.7284841053187847`*^-12, 15.}, {6.9999999999972715`, 12.5}}], Polygon[{{4.065045146956902, 13.548198161801107`}, {2.8004202942438354`, 13.575105073560959`}, {3.06948941184236, 14.328498602836827`}}], Inset[$CellContext`u, {2.978678584652858, 12.895100037028001`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{0., 5.000000000003638}, {6.999999999998181, 8.000000000003638}}], Polygon[{{4.051487018010834, 6.736351579147501}, {3.106080701420832, 5.895990408845276}, {2.790945262557498, 6.631306432859723}}], Inset[QFTSymbols`e, {3.50577491279771, 5.68012520347201}, ImageScaled[{0, 1}]], Line[{{19.499999999992724`, 15.5}, {6.999999999989086, 10.5}}], Polygon[{{13.807086014531155`, 13.222834405812462`}, {12.544357714927203`, 13.148556270541642`}, {12.841470256010487`, 12.405774917833435`}}], Inset[QFTSymbols`d, {12.67434445165114, 13.834338870872152`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {17.088381073024934`, 7.28156214604987}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJw9lA1M1GUcxx+JtlNqc71NPYgQ7u55/sfrPaBMEX9TzDvKzDPGdIPA4EGc*)
(*C2fL3QrarWnp5JaugHs40QE1G2ITxw5fMN9O1sGDnsnMlqvmmmQpEzUxqf37*)
(*XZvPf/v/n332vPx/L9/vk7ahwVubQAhZiW98FEn4IclA/n8YPJzlimwSyHt+*)
(*yv1hlMLgsTVtYwo591Yo2k3Bd7Jiuoin4Pq8v0I7KVR++2N/t0SeXbm210/h*)
(*rfahmIW8DMRXSooDFFIXevdvFsiP0ptW9FJ498RExyWF/OZLrlPXKAQy8utd*)
(*PBX3f1n0fhKD7IuP21ok8t2sB0VFDKqz1x/824zPz1+84B0Gq2aUvZfDX0Ge*)
(*d8P6AYNfVh8NbxDIlh3rXm1i8Hz6nkCrRKb+ipLNDJqs22PDCjl2zj/hYdDo*)
(*W+sxTWSf+8SklUHXVNkpztOA/Fr44MYtCisG/pyqE8hHlu8lgxQMP78Sksjf*)
(*3b99RVKoKWxdckkhu5fN+APzf3ukcnECmQ9kY/P01d0Urie/8Vs+R5490Hu4*)
(*k0LVrGhFnUAGMBKHKIwXn/5eSuQz3dbPJin8XvL1JqXivL3Ri/FsufMYTBN5*)
(*y7qEmkUMxiK7Kl08HevRU1jgZvBM4bFwrUAOnj+YspzBpw0HnFIi7+y7m5TL*)
(*wNMeCCmFHEsrt89lcCFw4Z5pIlvCNMvC4NrSr1ycZ2B/Xxz4BPsdHXytTgjk*)
(*jX3uPJOC/WxMSok8x9U8hNyTMqKUQq7yPkrF9ZGZcZ3YgPiTMiiy9XY+59ym*)
(*5w+4c4QQNr3/n9f7g1La9Pl3outHlbLp/0d2LHqWELuOr7Fhaw3ndh3/kvaq*)
(*MSHsOr/jl1d62qVd5z9Zsq1zVNl1fcqSnz5NiEPX73qkvIVzh67vz8OQJYRD*)
(*17/WXNAVlA7dn8MP+6wjyqH7J4o7I/+aDt3f6sv153I51f0P7VKZNYJqffi9*)
(*L1iCOD7Rz7i1Z5lSVOurdG9vOO6zJ/pzT3yYU8CZ1ufRmw1b6wXT+r15fJWn*)
(*QzKtb5/lUHNMMa3/L+55M58ihvbHN10J+QXc0P75aKp2RAhD+8sbtuQFpaH9*)
(*VzBx9UhUGdqfocF9bdOmof3banxuy+ZO7e+ZmWs+rhZO7X/nwvL+FunU90Np*)
(*4njHsHLq++O5xLheMvX98h9faKYH*)
(*"]], Polygon[{{9.9, 12.5}, {11.1, 12.9}, {11.1, 12.1}}], Inset[$CellContext`W, {10.5, 13.4452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxFkl1Ik1EYx09mGQg2C6q7bbqPN85LrB2DKJhPFm5S1jIIbRWy2nFRKVGQ*)
(*hn1DXfSpEe5dBUbD1IupBGVoaVA37WwidbFSsi4ioWATas1C3x4rjgcOhx+c*)
(*85zn+f//Zn9DVSCHELIG99z5b6lAZ3VcRiCm2SV5VIVlbK+/hJmAhMY7b3lV*)
(*4AX9F4Mc+Zz7eOERFcwjzm13NeRV3VvVUyr0TJ3vGxHI8CHgalKhosP3JIeY*)
(*gXhp89VDKljyfh9dx5AnjaOeShVSL/NTdRy5Nxr1KSok3jbVhLW5+yv9P3QK*)
(*1eozIQRycrQv/Y7Cx+ENB3UdORv7kj9IQUmXMicrAlJ79tp0N4XbkelNAY7c*)
(*Ts3uLgrlx4auhDTk5GSl4zGF4L6dekwgG77ljgkKfRP8gq4jO3oz9DOF9nrL*)
(*LycrBrK+Ilv2k8JM49PdnCOni5ansZ+HL1o0TUMmxScjC1T4tH8gIQRydaY1*)
(*hvolhnpQRwsQT6NrBXL05mbGGLLpfSaF75W2AOd8npPBMNabv7+rYRDntch6*)
(*TvCiHxb5n/H+lrWMWWU/e1z1WM8q+114ubxL06xyntqWsUVxYZXz7jBppwmx*)
(*ST0MN6KkhNmkXgPX4UQdt0k9D/sWPw9rNql3cumwiAub9MNU+uoOIXbpV+eb*)
(*MpzXLv100ksdAW6Xfhdu/G4IaXaZh/FsbutrYZd56a+JeGZ0u8xTVcGZ7Q6m*)
(*yLxNOOKPDnBF5jE85W5u0xSZ15R4cC8mkP/n+evfczX8AdT/HsQ=*)
(*"]], Polygon[{{14., 10.85}, {13.6, 9.65}, {14.4, 9.65}}], Inset[$CellContext`W, {13.0548, 10.25}, ImageScaled[{1, Rational[1, 2]}]], Line[{{7., 12.499999999998447`}, {7., 10.500000000001554`}}], Polygon[{{7., 10.9}, {6.6, 12.1}, {7.4, 12.1}}], Inset[QFTSymbols`d, {6.0548, 11.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQEyDhBa1YHBoF3zyEJph/zlttJnzqgAxWU6jwRI*)
(*O5g0KebMmAnkB2ROSZSQdhALvf83JQ0k73e5jUHage9M6nlDYyC/QFG2j0fa*)
(*IaL+6pV//5UdGBQaZY9bSTvE3Nr36/QZIH9BNc+WFmkH992VWjNnAvkFP4Q+*)
(*35d2+LvhgF9aGpCfcH/yZnsZhyKm7eHGxkD+hB1vmqbJOEhOXWzLwADkM6z5*)
(*rn9DxuFW1RvGs2eUHBgEFqQ1/pZxSK4zXjdzJoI/t/FMYFqaEly9WqvwPyNj*)
(*Jbh5z7NiDv3/rwi3r++vx4ozZxTh7mH2t984c6Yi3L07XdqupqUpwv2zRNWR*)
(*1cRYEe7fFQ1a2owMivDw+GQ8y+DcGQV4eL1apcA0e6YCPDzP1N6bnJ6mAA/v*)
(*iRGHnhgbKzigxoeCAwCgGpOb*)
(*"]], Inset[$CellContext`Z, {7.945200000000001, 9.25}, ImageScaled[{0, Rational[1, 2]}]], Line[{{6.999999999998151, 8.}, {13.99999999999741, 8.}}], Polygon[{{11.1, 8.}, {9.9, 7.6}, {9.9, 8.4}}], Inset[QFTSymbols`e, {10.5, 7.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{7., 12.5}], Point[{7., 8.}], Point[{7., 10.5}], Point[{14., 8.}], {Thickness[0.015], Line[{{13.5, 12.}, {14.5, 13.}}], Line[{{13.5, 13.}, {14.5, 12.}}]}}, Inset[$CellContext`T35 $CellContext`P4 $CellContext`N206, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cgdh/ieihegfgfh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {110, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{9.094947017729282*^-13, 15.000000000003638`}, {6.9999999999990905`, 12.000000000003638`}}], Polygon[{{4.051487018010834, 13.2636484208525}, {2.790945262557498, 13.368693567140278`}, {3.106080701420832, 14.104009591154723`}}], Inset[$CellContext`u, {3.505774912797709, 14.31987479652799}, ImageScaled[{0, 0}]], Line[{{-9.094947017729282*^-13, 5.}, {6.999999999998181, 7.5}}], Polygon[{{4.065045146956902, 6.451801838198894}, {3.06948941184236, 5.671501397163171}, {2.8004202942438354`, 6.424894926439041}}], Inset[QFTSymbols`e, {2.9786785846528576`, 7.104899962971999}, ImageScaled[{Rational[1, 2], 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{19.50000000000182, 4.5}, {7.0000000000027285`, 9.5}}], Polygon[{{13.807086014531155`, 6.7771655941875375`}, {12.841470256010487`, 7.594225082166567}, {12.544357714927203`, 6.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {12.67434445165114, 6.165661129127848}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJw9lH9MlVUYxw+BSKMhcUsgOa/44973/jC5csA00z05smY/IJmxwtVV46Ap*)
(*3RZKsSURWz/MPyAXF881kwop2Y0NlmOZC3CphMe0IsbyFuodlgztOpYM3PXt*)
(*uf3xvNv7vvvsvOd5z/k+3+9ZsMW/oeIuxtjjeMffMhUfLAfY/5cBjcfWn3lF*)
(*IveNrqo8yMFZv+/QkEaOFg9Z6zjkXC5IWi04MO+p+33pHNYcWdH7hYrz9fWl*)
(*jMPXszMvpmAd1rS70p/NIbzjy/adErn+9bqOMg4/3Fn3+XmNfCnqSujiMLdN*)
(*V+aL+Tj+wTxbpgEZf4camxXyhff91bUGTGTdapm2kH1Xqp4eMOB3e+u2PJEL*)
(*DKrORW8ZoD98qGOLRL40++1wzICC71e/E1DIJR3hyYsGxEIjpwc1sndnbShg*)
(*gJx64DHLis//N//BlQbYUov6hVgArPWfnoZfONjcc5O3SWTfVzWimkPtjl0T*)
(*BxVy/ZnegJtDniPiO6+RIdq1KYnDlVoX6rkQv886Gkrm8N6qtLRCsTCuR7e5*)
(*jMNI2uieSoncdHZ46i0ObyTeDiuFzDq/u/YHh+CGyLNaI9cfLdtaZMCrczbO*)
(*3LGQS/z9Vw8bkFXddnWZWAQs96POby8bcKzVllUhkdPz1xZZBnjHoeGAQvaq*)
(*hlOTBpxMyZujNXJf3/LMfgPGghNtloXM/jyy2W/AZ1NBjxCLcb/BurOpBvTe*)
(*aNwvJbLvdKy8ncNvz+39Vak4t++VxRy+Off8pNbI3kdTx+/D/t0d94kd62U+*)
(*UYL9vveR9nuEsNN4tLtmiZR2mp8877UqpexUf3FGxZDWdvp/25u2csYctL7E*)
(*hJ+jQjho/c3ze1E/B+0vffvEX0HloP2HAuXZP2kH6VM20zErgZmkn6cnp1MI*)
(*k/R9JnnWIilN0v/6TC7qZ1J/Ekdu3hzUJvUv0jgcjFkm9TcQyTnsFU7q/1Of*)
(*7rO9LJ3kj+7Ra9Mtykn+qUk5sUZrJ/nrxYyx44y5yH8Dm8yVhcJF/mx68mTd*)
(*duki/07XDWw8pFzk7/HISy0XtIv8XxxLKkhkbsrHiWbXikLhpvwc78nWUrop*)
(*X+bH4aUHlJvyN1waCv2o3ZTPG+/u2n/bclN+HT1bc5cKD+V7uRrbs1l6KP+7*)
(*Sx/ualYeOh9inS98Mqg9dH5kJMX9soTOl/8AQQSx/g==*)
(*"]], Inset[$CellContext`\[Gamma], {10.5, 6.5548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQA2IQDQE6DhBaw4GhwETB6oq2wyKf5Bmnz6g7MLzQ/LJ7*)
(*rbbDtcT3BdNnAvkZcaZaE7UdzovLL0pOA/IjJhl+b9R22LVE1NzAGMg/0Rf/*)
(*A8gvSDfS/ftfzYFBIWS/LlC9klpz6akzQP4DyVsHgeZdtTz6ffpMIJ9BIckJ*)
(*aN/WI8XTUtOA/A0v5nIB3fPmlpOxsTGQ/+HViUvaOg7elxM2MzAA+R1z5YKD*)
(*dBwWnXvOdO6MqgNDQNPTZ3k6Dns28InPngnk37hxXrpOxyEn+M679DQgn+NG*)
(*mgyQ7/ckcpKJMZC/o37VC6B6gxWVAowMQP6CGYJhQPOmnxetOXtGBaj+8ctr*)
(*QPvC7TpfzJwJ5AvcfcMPdI+TVV5aWhqQ/4H/vgfQvYIfmRmNjYF8BtbWk0D/*)
(*1B+bu+f/f2Vg+FnNMAP6d7dB8LQzZ4D8HQVpTE3aDh+jP7fMnIng8y/hqU5L*)
(*Q6h3Pb8m09hYGW5eo2WSMwODMty+93x//p05owR3z76jE2fOnKkEd+/Kg2Xi*)
(*aWlKcP9kGrxqNjJWgvv3Qnjb+3//FeHhsUl6We7pM4rw8JqyRllwxkxFeHi6*)
(*+H98kZKmCA/vOEOJv4bGivD42KIz3+f/fwV4fImo7j1z5owCPD69rXsyZ81U*)
(*gMe39jErjow0BXh6uHezpsvUWAGeXibMOHuJiUEBnp56tl2ZOH+mPDy9JV04*)
(*uNvCWB6eHoNtFOUunpGDp9ddaZbnM9LkHFDTs5wDAAonF0o=*)
(*"]], Inset[$CellContext`\[Gamma], {13.0548, 9.75}, ImageScaled[{1, Rational[1, 2]}]], Line[{{6.999999999998151, 12.}, {13.99999999999741, 12.}}], Polygon[{{11.1, 12.}, {9.9, 11.6}, {9.9, 12.4}}], Inset[QFTSymbols`d, {10.5, 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQEyDlL/QUDJgUFh+cOjvjIOV6bvO2psrOzAUHDz*)
(*ZVCbjMO9pDrf9DQg/8NpH7v5Mg6b/lVOnDUTyE/4ElIxVcbBKeLXnLNnQOrl*)
(*pPQKZBw69O91MjCoODBMaJmm6iDjcOFeR7mxMZC/oexgpoSMQ7hsdk1aGpDv*)
(*8NpDi1nGISbx8+yZM4H8guoJ1X+lHbbcjzt95gyQH1D9NPmftMPiV5FA9wH5*)
(*C66HrPov7TDpqLyxsbEqUH/dhi9A/iHWNCBA8O1+zQQCVbj6PKsHZ86cUYWb*)
(*Fye6DOhvNbh9PgoLTYyN1eDuWTKPJyUtTQ3u3pWPpjTPnKkG94+BYnnHmTNq*)
(*cP9WXFAs+/9fDR4e+5ezJhsZq8PDy4+xLS81TR0enkpzGzfNmKkOD2+dDEer*)
(*M2eAfGh8PAPTGg4ABkKiQQ==*)
(*"]], Polygon[{{7., 11.35}, {6.6, 10.15}, {7.4, 10.15}}], Inset[$CellContext`W, {7.945200000000001, 10.75}, ImageScaled[{0, Rational[1, 2]}]], Line[{{7., 7.5}, {7., 9.5}}], Polygon[{{7., 9.1}, {7.4, 7.9}, {6.6, 7.9}}], Inset[QFTSymbols`e, {6.0548, 8.5}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{7., 12.}], Point[{7., 7.5}], Point[{14., 12.}], Point[{7., 9.5}], {Thickness[0.015], Line[{{13.5, 7.}, {14.5, 8.}}], Line[{{13.5, 8.}, {14.5, 7.}}]}}, Inset[$CellContext`T36 $CellContext`P1 $CellContext`N207, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieihegfgfh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {132, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{9.094947017729282*^-13, 15.000000000003638`}, {6.9999999999990905`, 12.000000000003638`}}], Polygon[{{4.051487018010834, 13.2636484208525}, {2.790945262557498, 13.368693567140278`}, {3.106080701420832, 14.104009591154723`}}], Inset[$CellContext`u, {3.505774912797709, 14.31987479652799}, ImageScaled[{0, 0}]], Line[{{-9.094947017729282*^-13, 5.}, {6.999999999998181, 7.5}}], Polygon[{{4.065045146956902, 6.451801838198894}, {3.06948941184236, 5.671501397163171}, {2.8004202942438354`, 6.424894926439041}}], Inset[QFTSymbols`e, {2.9786785846528576`, 7.104899962971999}, ImageScaled[{Rational[1, 2], 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{19.50000000000182, 4.5}, {7.0000000000027285`, 9.5}}], Polygon[{{13.807086014531155`, 6.7771655941875375`}, {12.841470256010487`, 7.594225082166567}, {12.544357714927203`, 6.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {12.67434445165114, 6.165661129127848}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJw9lH9MlVUYxw+BSKMhcUsgOa/44973/jC5csA00z05smY/IJmxwtVV46Ap*)
(*3RZKsSURWz/MPyAXF881kwop2Y0NlmOZC3CphMe0IsbyFuodlgztOpYM3PXt*)
(*uf3xvNv7vvvsvOd5z/k+3+9ZsMW/oeIuxtjjeMffMhUfLAfY/5cBjcfWn3lF*)
(*IveNrqo8yMFZv+/QkEaOFg9Z6zjkXC5IWi04MO+p+33pHNYcWdH7hYrz9fWl*)
(*jMPXszMvpmAd1rS70p/NIbzjy/adErn+9bqOMg4/3Fn3+XmNfCnqSujiMLdN*)
(*V+aL+Tj+wTxbpgEZf4camxXyhff91bUGTGTdapm2kH1Xqp4eMOB3e+u2PJEL*)
(*DKrORW8ZoD98qGOLRL40++1wzICC71e/E1DIJR3hyYsGxEIjpwc1sndnbShg*)
(*gJx64DHLis//N//BlQbYUov6hVgArPWfnoZfONjcc5O3SWTfVzWimkPtjl0T*)
(*BxVy/ZnegJtDniPiO6+RIdq1KYnDlVoX6rkQv886Gkrm8N6qtLRCsTCuR7e5*)
(*jMNI2uieSoncdHZ46i0ObyTeDiuFzDq/u/YHh+CGyLNaI9cfLdtaZMCrczbO*)
(*3LGQS/z9Vw8bkFXddnWZWAQs96POby8bcKzVllUhkdPz1xZZBnjHoeGAQvaq*)
(*hlOTBpxMyZujNXJf3/LMfgPGghNtloXM/jyy2W/AZ1NBjxCLcb/BurOpBvTe*)
(*aNwvJbLvdKy8ncNvz+39Vak4t++VxRy+Off8pNbI3kdTx+/D/t0d94kd62U+*)
(*UYL9vveR9nuEsNN4tLtmiZR2mp8877UqpexUf3FGxZDWdvp/25u2csYctL7E*)
(*hJ+jQjho/c3ze1E/B+0vffvEX0HloP2HAuXZP2kH6VM20zErgZmkn6cnp1MI*)
(*k/R9JnnWIilN0v/6TC7qZ1J/Ekdu3hzUJvUv0jgcjFkm9TcQyTnsFU7q/1Of*)
(*7rO9LJ3kj+7Ra9Mtykn+qUk5sUZrJ/nrxYyx44y5yH8Dm8yVhcJF/mx68mTd*)
(*duki/07XDWw8pFzk7/HISy0XtIv8XxxLKkhkbsrHiWbXikLhpvwc78nWUrop*)
(*X+bH4aUHlJvyN1waCv2o3ZTPG+/u2n/bclN+HT1bc5cKD+V7uRrbs1l6KP+7*)
(*Sx/ualYeOh9inS98Mqg9dH5kJMX9soTOl/8AQQSx/g==*)
(*"]], Inset[$CellContext`\[Gamma], {10.5, 6.5548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQA2IQDQE6DhBaw4GhwETB6oq2wyKf5Bmnz6g7MLzQ/LJ7*)
(*rbbDtcT3BdNnAvkZcaZaE7UdzovLL0pOA/IjJhl+b9R22LVE1NzAGMg/0Rf/*)
(*A8gvSDfS/ftfzYFBIWS/LlC9klpz6akzQP4DyVsHgeZdtTz6ffpMIJ9BIckJ*)
(*aN/WI8XTUtOA/A0v5nIB3fPmlpOxsTGQ/+HViUvaOg7elxM2MzAA+R1z5YKD*)
(*dBwWnXvOdO6MqgNDQNPTZ3k6Dns28InPngnk37hxXrpOxyEn+M679DQgn+NG*)
(*mgyQ7/ckcpKJMZC/o37VC6B6gxWVAowMQP6CGYJhQPOmnxetOXtGBaj+8ctr*)
(*QPvC7TpfzJwJ5AvcfcMPdI+TVV5aWhqQ/4H/vgfQvYIfmRmNjYF8BtbWk0D/*)
(*1B+bu+f/f2Vg+FnNMAP6d7dB8LQzZ4D8HQVpTE3aDh+jP7fMnIng8y/hqU5L*)
(*Q6h3Pb8m09hYGW5eo2WSMwODMty+93x//p05owR3z76jE2fOnKkEd+/Kg2Xi*)
(*aWlKcP9kGrxqNjJWgvv3Qnjb+3//FeHhsUl6We7pM4rw8JqyRllwxkxFeHi6*)
(*+H98kZKmCA/vOEOJv4bGivD42KIz3+f/fwV4fImo7j1z5owCPD69rXsyZ81U*)
(*gMe39jErjow0BXh6uHezpsvUWAGeXibMOHuJiUEBnp56tl2ZOH+mPDy9JV04*)
(*uNvCWB6eHoNtFOUunpGDp9ddaZbnM9LkHFDTs5wDAAonF0o=*)
(*"]], Inset[$CellContext`Z, {13.0548, 9.75}, ImageScaled[{1, Rational[1, 2]}]], Line[{{6.999999999998151, 12.}, {13.99999999999741, 12.}}], Polygon[{{11.1, 12.}, {9.9, 11.6}, {9.9, 12.4}}], Inset[QFTSymbols`d, {10.5, 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQEyDlL/QUDJgUFh+cOjvjIOV6bvO2psrOzAUHDz*)
(*ZVCbjMO9pDrf9DQg/8NpH7v5Mg6b/lVOnDUTyE/4ElIxVcbBKeLXnLNnQOrl*)
(*pPQKZBw69O91MjCoODBMaJmm6iDjcOFeR7mxMZC/oexgpoSMQ7hsdk1aGpDv*)
(*8NpDi1nGISbx8+yZM4H8guoJ1X+lHbbcjzt95gyQH1D9NPmftMPiV5FA9wH5*)
(*C66HrPov7TDpqLyxsbEqUH/dhi9A/iHWNCBA8O1+zQQCVbj6PKsHZ86cUYWb*)
(*Fye6DOhvNbh9PgoLTYyN1eDuWTKPJyUtTQ3u3pWPpjTPnKkG94+BYnnHmTNq*)
(*cP9WXFAs+/9fDR4e+5ezJhsZq8PDy4+xLS81TR0enkpzGzfNmKkOD2+dDEer*)
(*M2eAfGh8PAPTGg4ABkKiQQ==*)
(*"]], Polygon[{{7., 11.35}, {6.6, 10.15}, {7.4, 10.15}}], Inset[$CellContext`W, {7.945200000000001, 10.75}, ImageScaled[{0, Rational[1, 2]}]], Line[{{7., 7.5}, {7., 9.5}}], Polygon[{{7., 9.1}, {7.4, 7.9}, {6.6, 7.9}}], Inset[QFTSymbols`e, {6.0548, 8.5}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{7., 12.}], Point[{7., 7.5}], Point[{14., 12.}], Point[{7., 9.5}], {Thickness[0.015], Line[{{13.5, 7.}, {14.5, 8.}}], Line[{{13.5, 8.}, {14.5, 7.}}]}}, Inset[$CellContext`T36 $CellContext`P2 $CellContext`N208, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieihegfgfh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {152.96093750000006`, 45.02343750000006}, {0, 0}, {14.265625000000002`, 17.015625000000007`}, {{1., 0.}, {0., 1.}}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{9.094947017729282*^-13, 15.000000000003638`}, {6.9999999999990905`, 12.000000000003638`}}], Polygon[{{4.051487018010834, 13.2636484208525}, {2.790945262557498, 13.368693567140278`}, {3.106080701420832, 14.104009591154723`}}], Inset[$CellContext`u, {3.505774912797709, 14.31987479652799}, ImageScaled[{0, 0}]], Line[{{-9.094947017729282*^-13, 5.}, {6.999999999998181, 7.5}}], Polygon[{{4.065045146956902, 6.451801838198894}, {3.06948941184236, 5.671501397163171}, {2.8004202942438354`, 6.424894926439041}}], Inset[QFTSymbols`e, {2.9786785846528576`, 7.104899962971999}, ImageScaled[{Rational[1, 2], 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{19.50000000000182, 4.5}, {7.0000000000027285`, 9.5}}], Polygon[{{13.807086014531155`, 6.7771655941875375`}, {12.841470256010487`, 7.594225082166567}, {12.544357714927203`, 6.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {12.67434445165114, 6.165661129127848}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJw9lH9MlVUYxw+BSKMhcUsgOa/44973/jC5csA00z05smY/IJmxwtVV46Ap*)
(*3RZKsSURWz/MPyAXF881kwop2Y0NlmOZC3CphMe0IsbyFuodlgztOpYM3PXt*)
(*uf3xvNv7vvvsvOd5z/k+3+9ZsMW/oeIuxtjjeMffMhUfLAfY/5cBjcfWn3lF*)
(*IveNrqo8yMFZv+/QkEaOFg9Z6zjkXC5IWi04MO+p+33pHNYcWdH7hYrz9fWl*)
(*jMPXszMvpmAd1rS70p/NIbzjy/adErn+9bqOMg4/3Fn3+XmNfCnqSujiMLdN*)
(*V+aL+Tj+wTxbpgEZf4camxXyhff91bUGTGTdapm2kH1Xqp4eMOB3e+u2PJEL*)
(*DKrORW8ZoD98qGOLRL40++1wzICC71e/E1DIJR3hyYsGxEIjpwc1sndnbShg*)
(*gJx64DHLis//N//BlQbYUov6hVgArPWfnoZfONjcc5O3SWTfVzWimkPtjl0T*)
(*BxVy/ZnegJtDniPiO6+RIdq1KYnDlVoX6rkQv886Gkrm8N6qtLRCsTCuR7e5*)
(*jMNI2uieSoncdHZ46i0ObyTeDiuFzDq/u/YHh+CGyLNaI9cfLdtaZMCrczbO*)
(*3LGQS/z9Vw8bkFXddnWZWAQs96POby8bcKzVllUhkdPz1xZZBnjHoeGAQvaq*)
(*hlOTBpxMyZujNXJf3/LMfgPGghNtloXM/jyy2W/AZ1NBjxCLcb/BurOpBvTe*)
(*aNwvJbLvdKy8ncNvz+39Vak4t++VxRy+Off8pNbI3kdTx+/D/t0d94kd62U+*)
(*UYL9vveR9nuEsNN4tLtmiZR2mp8877UqpexUf3FGxZDWdvp/25u2csYctL7E*)
(*hJ+jQjho/c3ze1E/B+0vffvEX0HloP2HAuXZP2kH6VM20zErgZmkn6cnp1MI*)
(*k/R9JnnWIilN0v/6TC7qZ1J/Ekdu3hzUJvUv0jgcjFkm9TcQyTnsFU7q/1Of*)
(*7rO9LJ3kj+7Ra9Mtykn+qUk5sUZrJ/nrxYyx44y5yH8Dm8yVhcJF/mx68mTd*)
(*duki/07XDWw8pFzk7/HISy0XtIv8XxxLKkhkbsrHiWbXikLhpvwc78nWUrop*)
(*X+bH4aUHlJvyN1waCv2o3ZTPG+/u2n/bclN+HT1bc5cKD+V7uRrbs1l6KP+7*)
(*Sx/ualYeOh9inS98Mqg9dH5kJMX9soTOl/8AQQSx/g==*)
(*"]], Inset[$CellContext`Z, {10.5, 6.5548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQA2IQDQE6DhBaw4GhwETB6oq2wyKf5Bmnz6g7MLzQ/LJ7*)
(*rbbDtcT3BdNnAvkZcaZaE7UdzovLL0pOA/IjJhl+b9R22LVE1NzAGMg/0Rf/*)
(*A8gvSDfS/ftfzYFBIWS/LlC9klpz6akzQP4DyVsHgeZdtTz6ffpMIJ9BIckJ*)
(*aN/WI8XTUtOA/A0v5nIB3fPmlpOxsTGQ/+HViUvaOg7elxM2MzAA+R1z5YKD*)
(*dBwWnXvOdO6MqgNDQNPTZ3k6Dns28InPngnk37hxXrpOxyEn+M679DQgn+NG*)
(*mgyQ7/ckcpKJMZC/o37VC6B6gxWVAowMQP6CGYJhQPOmnxetOXtGBaj+8ctr*)
(*QPvC7TpfzJwJ5AvcfcMPdI+TVV5aWhqQ/4H/vgfQvYIfmRmNjYF8BtbWk0D/*)
(*1B+bu+f/f2Vg+FnNMAP6d7dB8LQzZ4D8HQVpTE3aDh+jP7fMnIng8y/hqU5L*)
(*Q6h3Pb8m09hYGW5eo2WSMwODMty+93x//p05owR3z76jE2fOnKkEd+/Kg2Xi*)
(*aWlKcP9kGrxqNjJWgvv3Qnjb+3//FeHhsUl6We7pM4rw8JqyRllwxkxFeHi6*)
(*+H98kZKmCA/vOEOJv4bGivD42KIz3+f/fwV4fImo7j1z5owCPD69rXsyZ81U*)
(*gMe39jErjow0BXh6uHezpsvUWAGeXibMOHuJiUEBnp56tl2ZOH+mPDy9JV04*)
(*uNvCWB6eHoNtFOUunpGDp9ddaZbnM9LkHFDTs5wDAAonF0o=*)
(*"]], Inset[$CellContext`\[Gamma], {13.0548, 9.75}, ImageScaled[{1, Rational[1, 2]}]], Line[{{6.999999999998151, 12.}, {13.99999999999741, 12.}}], Polygon[{{11.1, 12.}, {9.9, 11.6}, {9.9, 12.4}}], Inset[QFTSymbols`d, {10.5, 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQEyDlL/QUDJgUFh+cOjvjIOV6bvO2psrOzAUHDz*)
(*ZVCbjMO9pDrf9DQg/8NpH7v5Mg6b/lVOnDUTyE/4ElIxVcbBKeLXnLNnQOrl*)
(*pPQKZBw69O91MjCoODBMaJmm6iDjcOFeR7mxMZC/oexgpoSMQ7hsdk1aGpDv*)
(*8NpDi1nGISbx8+yZM4H8guoJ1X+lHbbcjzt95gyQH1D9NPmftMPiV5FA9wH5*)
(*C66HrPov7TDpqLyxsbEqUH/dhi9A/iHWNCBA8O1+zQQCVbj6PKsHZ86cUYWb*)
(*Fye6DOhvNbh9PgoLTYyN1eDuWTKPJyUtTQ3u3pWPpjTPnKkG94+BYnnHmTNq*)
(*cP9WXFAs+/9fDR4e+5ezJhsZq8PDy4+xLS81TR0enkpzGzfNmKkOD2+dDEer*)
(*M2eAfGh8PAPTGg4ABkKiQQ==*)
(*"]], Polygon[{{7., 11.35}, {6.6, 10.15}, {7.4, 10.15}}], Inset[$CellContext`W, {7.945200000000001, 10.75}, ImageScaled[{0, Rational[1, 2]}]], Line[{{7., 7.5}, {7., 9.5}}], Polygon[{{7., 9.1}, {7.4, 7.9}, {6.6, 7.9}}], Inset[QFTSymbols`e, {6.0548, 8.5}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{7., 12.}], Point[{7., 7.5}], Point[{14., 12.}], Point[{7., 9.5}], {Thickness[0.015], Line[{{13.5, 7.}, {14.5, 8.}}], Line[{{13.5, 8.}, {14.5, 7.}}]}}, Inset[$CellContext`T36 $CellContext`P3 $CellContext`N209, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieihegfgfh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{9.094947017729282*^-13, 15.000000000003638`}, {6.9999999999990905`, 12.000000000003638`}}], Polygon[{{4.051487018010834, 13.2636484208525}, {2.790945262557498, 13.368693567140278`}, {3.106080701420832, 14.104009591154723`}}], Inset[$CellContext`u, {3.505774912797709, 14.31987479652799}, ImageScaled[{0, 0}]], Line[{{-9.094947017729282*^-13, 5.}, {6.999999999998181, 7.5}}], Polygon[{{4.065045146956902, 6.451801838198894}, {3.06948941184236, 5.671501397163171}, {2.8004202942438354`, 6.424894926439041}}], Inset[QFTSymbols`e, {2.9786785846528576`, 7.104899962971999}, ImageScaled[{Rational[1, 2], 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{19.50000000000182, 4.5}, {7.0000000000027285`, 9.5}}], Polygon[{{13.807086014531155`, 6.7771655941875375`}, {12.841470256010487`, 7.594225082166567}, {12.544357714927203`, 6.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {12.67434445165114, 6.165661129127848}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJw9lH9MlVUYxw+BSKMhcUsgOa/44973/jC5csA00z05smY/IJmxwtVV46Ap*)
(*3RZKsSURWz/MPyAXF881kwop2Y0NlmOZC3CphMe0IsbyFuodlgztOpYM3PXt*)
(*uf3xvNv7vvvsvOd5z/k+3+9ZsMW/oeIuxtjjeMffMhUfLAfY/5cBjcfWn3lF*)
(*IveNrqo8yMFZv+/QkEaOFg9Z6zjkXC5IWi04MO+p+33pHNYcWdH7hYrz9fWl*)
(*jMPXszMvpmAd1rS70p/NIbzjy/adErn+9bqOMg4/3Fn3+XmNfCnqSujiMLdN*)
(*V+aL+Tj+wTxbpgEZf4camxXyhff91bUGTGTdapm2kH1Xqp4eMOB3e+u2PJEL*)
(*DKrORW8ZoD98qGOLRL40++1wzICC71e/E1DIJR3hyYsGxEIjpwc1sndnbShg*)
(*gJx64DHLis//N//BlQbYUov6hVgArPWfnoZfONjcc5O3SWTfVzWimkPtjl0T*)
(*BxVy/ZnegJtDniPiO6+RIdq1KYnDlVoX6rkQv886Gkrm8N6qtLRCsTCuR7e5*)
(*jMNI2uieSoncdHZ46i0ObyTeDiuFzDq/u/YHh+CGyLNaI9cfLdtaZMCrczbO*)
(*3LGQS/z9Vw8bkFXddnWZWAQs96POby8bcKzVllUhkdPz1xZZBnjHoeGAQvaq*)
(*hlOTBpxMyZujNXJf3/LMfgPGghNtloXM/jyy2W/AZ1NBjxCLcb/BurOpBvTe*)
(*aNwvJbLvdKy8ncNvz+39Vak4t++VxRy+Off8pNbI3kdTx+/D/t0d94kd62U+*)
(*UYL9vveR9nuEsNN4tLtmiZR2mp8877UqpexUf3FGxZDWdvp/25u2csYctL7E*)
(*hJ+jQjho/c3ze1E/B+0vffvEX0HloP2HAuXZP2kH6VM20zErgZmkn6cnp1MI*)
(*k/R9JnnWIilN0v/6TC7qZ1J/Ekdu3hzUJvUv0jgcjFkm9TcQyTnsFU7q/1Of*)
(*7rO9LJ3kj+7Ra9Mtykn+qUk5sUZrJ/nrxYyx44y5yH8Dm8yVhcJF/mx68mTd*)
(*duki/07XDWw8pFzk7/HISy0XtIv8XxxLKkhkbsrHiWbXikLhpvwc78nWUrop*)
(*X+bH4aUHlJvyN1waCv2o3ZTPG+/u2n/bclN+HT1bc5cKD+V7uRrbs1l6KP+7*)
(*Sx/ualYeOh9inS98Mqg9dH5kJMX9soTOl/8AQQSx/g==*)
(*"]], Inset[$CellContext`Z, {10.5, 6.5548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQA2IQDQE6DhBaw4GhwETB6oq2wyKf5Bmnz6g7MLzQ/LJ7*)
(*rbbDtcT3BdNnAvkZcaZaE7UdzovLL0pOA/IjJhl+b9R22LVE1NzAGMg/0Rf/*)
(*A8gvSDfS/ftfzYFBIWS/LlC9klpz6akzQP4DyVsHgeZdtTz6ffpMIJ9BIckJ*)
(*aN/WI8XTUtOA/A0v5nIB3fPmlpOxsTGQ/+HViUvaOg7elxM2MzAA+R1z5YKD*)
(*dBwWnXvOdO6MqgNDQNPTZ3k6Dns28InPngnk37hxXrpOxyEn+M679DQgn+NG*)
(*mgyQ7/ckcpKJMZC/o37VC6B6gxWVAowMQP6CGYJhQPOmnxetOXtGBaj+8ctr*)
(*QPvC7TpfzJwJ5AvcfcMPdI+TVV5aWhqQ/4H/vgfQvYIfmRmNjYF8BtbWk0D/*)
(*1B+bu+f/f2Vg+FnNMAP6d7dB8LQzZ4D8HQVpTE3aDh+jP7fMnIng8y/hqU5L*)
(*Q6h3Pb8m09hYGW5eo2WSMwODMty+93x//p05owR3z76jE2fOnKkEd+/Kg2Xi*)
(*aWlKcP9kGrxqNjJWgvv3Qnjb+3//FeHhsUl6We7pM4rw8JqyRllwxkxFeHi6*)
(*+H98kZKmCA/vOEOJv4bGivD42KIz3+f/fwV4fImo7j1z5owCPD69rXsyZ81U*)
(*gMe39jErjow0BXh6uHezpsvUWAGeXibMOHuJiUEBnp56tl2ZOH+mPDy9JV04*)
(*uNvCWB6eHoNtFOUunpGDp9ddaZbnM9LkHFDTs5wDAAonF0o=*)
(*"]], Inset[$CellContext`Z, {13.0548, 9.75}, ImageScaled[{1, Rational[1, 2]}]], Line[{{6.999999999998151, 12.}, {13.99999999999741, 12.}}], Polygon[{{11.1, 12.}, {9.9, 11.6}, {9.9, 12.4}}], Inset[QFTSymbols`d, {10.5, 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQEyDlL/QUDJgUFh+cOjvjIOV6bvO2psrOzAUHDz*)
(*ZVCbjMO9pDrf9DQg/8NpH7v5Mg6b/lVOnDUTyE/4ElIxVcbBKeLXnLNnQOrl*)
(*pPQKZBw69O91MjCoODBMaJmm6iDjcOFeR7mxMZC/oexgpoSMQ7hsdk1aGpDv*)
(*8NpDi1nGISbx8+yZM4H8guoJ1X+lHbbcjzt95gyQH1D9NPmftMPiV5FA9wH5*)
(*C66HrPov7TDpqLyxsbEqUH/dhi9A/iHWNCBA8O1+zQQCVbj6PKsHZ86cUYWb*)
(*Fye6DOhvNbh9PgoLTYyN1eDuWTKPJyUtTQ3u3pWPpjTPnKkG94+BYnnHmTNq*)
(*cP9WXFAs+/9fDR4e+5ezJhsZq8PDy4+xLS81TR0enkpzGzfNmKkOD2+dDEer*)
(*M2eAfGh8PAPTGg4ABkKiQQ==*)
(*"]], Polygon[{{7., 11.35}, {6.6, 10.15}, {7.4, 10.15}}], Inset[$CellContext`W, {7.945200000000001, 10.75}, ImageScaled[{0, Rational[1, 2]}]], Line[{{7., 7.5}, {7., 9.5}}], Polygon[{{7., 9.1}, {7.4, 7.9}, {6.6, 7.9}}], Inset[QFTSymbols`e, {6.0548, 8.5}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{7., 12.}], Point[{7., 7.5}], Point[{14., 12.}], Point[{7., 9.5}], {Thickness[0.015], Line[{{13.5, 7.}, {14.5, 8.}}], Line[{{13.5, 8.}, {14.5, 7.}}]}}, Inset[$CellContext`T36 $CellContext`P4 $CellContext`N210, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieihegfgfh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{9.094947017729282*^-13, 15.000000000003638`}, {6.9999999999990905`, 12.000000000003638`}}], Polygon[{{4.051487018010834, 13.2636484208525}, {2.790945262557498, 13.368693567140278`}, {3.106080701420832, 14.104009591154723`}}], Inset[$CellContext`u, {3.505774912797709, 14.31987479652799}, ImageScaled[{0, 0}]], Line[{{-9.094947017729282*^-13, 5.}, {6.999999999998181, 7.5}}], Polygon[{{4.065045146956902, 6.451801838198894}, {3.06948941184236, 5.671501397163171}, {2.8004202942438354`, 6.424894926439041}}], Inset[QFTSymbols`e, {2.9786785846528576`, 7.104899962971999}, ImageScaled[{Rational[1, 2], 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{19.50000000000182, 4.5}, {7.0000000000027285`, 9.5}}], Polygon[{{13.807086014531155`, 6.7771655941875375`}, {12.841470256010487`, 7.594225082166567}, {12.544357714927203`, 6.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {12.67434445165114, 6.165661129127848}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJw9lH9MlVUYx88l2i6UG5ULF5wj/rj3cn8EdM/F6zL1WdIumKbcZBpOutwu*)
(*h8EYpDl3LWqsaWTjbjjkx+FGImk2S5bEUJPS2sUFHPOqrOlmZbMJs2Tkmkys*)
(*3s7bH8+7ve+7z573nPf58f2eReGGYFUKISSgb/MtHtEPkg3k/4vBvXRvolZo*)
(*zjlZ2R+nMHyqtHNCaQ5d9rcFKETPbHvwHKf6+/Bt/2MUKr65Nvix1Jwz/MkW*)
(*C4VN3eeTVr0PmTlAGp+isNAf/KhOmByY+2ALhfqvpnsuKs29nsibJyjElvpq*)
(*vHyhXl+8+/aTDPJ+mOtsl5pvbJ3aHWVQmVd+9L5hxot21Z1nsN5S9kY+z9Hs*)
(*S/j/YvDLhoGhsNCckf5lyxyDJ5a0xjqk5o3kzPtXGbydtSc5pjT37rX81Mag*)
(*MfpyiWFonmndedPPoG+27GvOFwE5t31q5AqFF07+PlstNIeaF1uiFFxN/Epc*)
(*am6dvHZU1x1Z3rHyojJ5T8qErv/V8YoVKWQxkOSC2eOZFK5nv/Sbj2vOqX9l*)
(*6xoKofTRbdVCc1PTJmsLhclVZy9LaXLAz25SmCr6tFYpk9PuH17G4PU7c2AY*)
(*mm8MpH6/k8FEYl+Fly/RXLa9tpXBo8tPDVUJzQXNG1a8x6C54aBbSs0Zr/2a*)
(*GWJQ0h2LK6W5d03/Oi+DkdjIXcMw43Wl5RkMrq4+4uV8qc7PXT/PwmB0+MVq*)
(*ITQnw/vD/1Kwf5uUUmouiCyIGRSO0XGllOZzh2dW67km0kyd2PT8M4s3as76*)
(*w8c5t2H8YHG+EMKG6/9eN9glpQ33vzNafkEpG/4/sffZeYTYMb/Ghh0Rzu2Y*)
(*/8ru0IQQdqzv9KVASbe0Y/1/Fu06dEHZsT9l2Q+fJcSB/bue2NzOuQP7+/MY*)
(*PC2EA/tfZSzr65IOnM/xeyeyxpUD5ydWHUr8YzhwvpWXar4r4Lk4//g+5YmI*)
(*XNRHU3C+tUvmon4ms449r1Qu6mvt/s+HCHGi/oqn38ov5E7U58Cthh01won6*)
(*vXV6fUmPdKK+o9bPWpLKifo/cDfoeYi40B/9fSm+Qu5C/7wzWzUuhAv9FRyy*)
(*PtMlXei/wukfvxhVLvRnfPjDzgeGC/3b4Wqz5XE3+jvNU/pupXCj/93+zYPt*)
(*0o3nw9rUyZ4x5cbz4/FUUy8ePF/+A/ahojI=*)
(*"]], Polygon[{{11.1, 7.5}, {9.9, 7.9}, {9.9, 7.1}}], Inset[$CellContext`W, {10.5, 6.5548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxVkl9I01EUx29W6vLBgUESpL/fNpfw+yHpdVB7qJNK2UPmArVYD9HanVSa*)
(*lFCChSTZwCL6t3YXltAqfMlQaYucaWSIXvvnIjQWg14UJHuwv1K/jghXunA5*)
(*fODcc88536966PhebwohpADvYlw6OizFfCDJFT9+xjUIjNztGBMbgdRaa451*)
(*a/BuZmfzTY7cEr345ZoGhVvGez0Mebqqb+K8Bo6ssxWbKPKgGhpq00B3h8v/*)
(*GHYgj+KtJwMafP6+6uqoQM5OFkR6NOhyzJuDHLnS5Qp/0OCApe2+ly3mT3es*)
(*wX5mp0oopcj5BRWZdh2+lQzfIgQ5vTh7vlSHreZBMS7ygHS2nEit0sGzL3Ug*)
(*xJEPxj9Fq3Uo80OjjyHnr+t5vUuH3uBDUkyRv2Yt2KgOrXZ+hhDkN3tM8fU6*)
(*2K9/XD0ubEBGHqfF0nVwt+3o4hzZnJjNxH5KnPWMMWSS8Lv/ahDiZYWUInea*)
(*6ooNDV6WVxqGYQUSvTA0g3y6sV8IgZzMM5nx/eUjIc75Mjfc8GK95Xx/eynO*)
(*a5X1nJFu1MMq/2Ps6SshLLKfgeErWM8i+73X9KSaMYucZ+qo7XcRtch5myfZ*)
(*OcNQ5T52+1zGmFDlvvpPPWsPclXus+PBr+1epsp9P5/bRouoKvXIiDkPG4Yi*)
(*9VqbF8N5FalnONG0P8QVqXfNaMacjynSDxtMC3UOqki/TITdkRSiSD8FJld6*)
(*7vBc6bfbl7zBzTRX+tGtN6S9FTnSr+/roy9qWQ787+cc+AdfRBU9*)
(*"]], Polygon[{{14., 10.35}, {14.4, 9.15}, {13.6, 9.15}}], Inset[$CellContext`W, {13.0548, 9.75}, ImageScaled[{1, Rational[1, 2]}]], Line[{{6.999999999998151, 12.}, {13.99999999999741, 12.}}], Polygon[{{11.1, 12.}, {9.9, 11.6}, {9.9, 12.4}}], Inset[$CellContext`u, {10.5, 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQEyDlL/QUDJgeFCxTXrOBmH3JhDT4yNlR0YGJ6U*)
(*Wa+Xcchuuzc5PQ3I3zAte95zGYfDSxSYZs8EyW/Sqfwv49BnNMvg3Bkgf8K9*)
(*R4WfZRzYWrS0GRlUHBge1D2yOCrjcFTXkdXEGMhPaPnsXS3jIGLXdjUtDcif*)
(*wP6WR0HGQcHXfuPMmUD+AoUcnwPSDnkMnivOnAHyC9yFazOlHTqLYg79/w/k*)
(*M4RwXFCXdmCqE/5nZKzqwPAhfmYdi7SDTf2ZwLQ0BP9Ig/G6mTNV4er/Nb5h*)
(*PHtGFW5eee9iWwYGNbh9k/5vCzc2VoO758GmA35paWpw9745WKk1c6Ya3D82*)
(*l/b9On1GDe7fX9VXr/z7rwYPj+KzqecNjdXh4WUbff9vSpo6PDynVSrmzJip*)
(*Dg/vyYttpc+cAclD4uMZmNZwAACRxJ3w*)
(*"]], Inset[$CellContext`Z, {7.945200000000001, 10.75}, ImageScaled[{0, Rational[1, 2]}]], Line[{{7., 7.5}, {7., 9.5}}], Polygon[{{7., 9.1}, {7.4, 7.9}, {6.6, 7.9}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {6.0548, 8.5}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{7., 12.}], Point[{7., 7.5}], Point[{14., 12.}], Point[{7., 9.5}], {Thickness[0.015], Line[{{13.5, 7.}, {14.5, 8.}}], Line[{{13.5, 8.}, {14.5, 7.}}]}}, Inset[$CellContext`T36 $CellContext`P5 $CellContext`N211, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieihegfgfh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {3.088381073024935, 14.281562146049868`}, ImageScaled[{0, 0}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {2.911618926975065, 7.28156214604987}, ImageScaled[{1, 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.911618926975066`, 5.71843785395013}, ImageScaled[{1, 1}]], Line[{{10.000000000001556`, 8.}, {6.000000000002885, 8.}}], Polygon[{{8.6, 8.}, {7.4, 8.4}, {7.4, 7.6}}], Inset[QFTSymbols`e, {8., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{9.999999999998444, 8.}, {13.999999999997117`, 8.}}], Polygon[{{12.6, 8.}, {11.4, 7.6}, {11.4, 8.4}}], Inset[QFTSymbols`e, {12., 8.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDAuc/XxIlHIQUNVJMjBUcGAzE*)
(*fvzfIuFwrdqqJiMNyL+gKlHzRsLhvG2IzpyZQP4Htgnf/ks4cDvczj5/BshX*)
(*yH5WDpSXPm/uysSgCNQ/f8p3oP4JP+IvmRgD+Rd4018AzZ/IzmqengbkJ3BY*)
(*vv8v7jBnQd/MmTOB/Af9Ot/mijs0VRjJnDkD5E9YmvzcS9zB0y7h+r//IPnZ*)
(*O9OFxR2W6WRcMzRWAuq/9+vlfzGHXakXxVLTQPzdC1KB8tEGAV0zZgL5Dk8N*)
(*HwP1L/pzUerMGSCf4ePD90DzpRV2rP//H8if0HP1GdB+m/W6xsbGyg4MAdte*)
(*3QW6771z57S0NCD/Qs7/V0D3N+14fmXmTCB/QqxFJtB/a8u7P585A+QLyJ58*)
(*CvQ/JBxV4PIhHSU8xsYqcP3fjCW009JU4OZ3rijLnDlTBW7/kYBLZ86cUYG7*)
(*79l99wAGBlW4++OZ9Z4aG6vC/Se7Z31pepoq3P/72vRezpqpCg+f6MvTNc+d*)
(*UYWH3/aD8zUYGdTg4VvXfvaxsbEaPPxT4gvT0tLU4PHz/MmvEzNmqsHjr4B9*)
(*ge7pM2rw+H1mcGLX3/9q8Pj/ul9lioGxOjx9GB5afTk5TR2efhYVHG2ePlMd*)
(*nr7STl+fffqMugMs/eUwg2gNBwBIrg0q*)
(*"]], Inset[$CellContext`\[Gamma], {5.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[$CellContext`u, {10., 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDiXmaC/R1HC4+3x1tYqzgwCAh*)
(*fD4rXMehZg93VkYakP9jh59loY7DitZ4gTkzgfwJuyqUK3Ucbu745X7+DJB/*)
(*gM9VN0/HYXnQXFkmBkUHhorjRe1BOg56Zo/WmhgD+QpzGkK1dRzY0kXk09OA*)
(*fIOWOd//azvMWdA3c+ZMIJ/j0Ky7N7QdFq2+bH/mDJD/47jr873aDg8W1Kv/*)
(*/w/kX+jkid6i7ZChZRRiZKwEdO9k0R17tB2uqUhtS00D8i9EV+Re1HaQ335d*)
(*b+ZMIH/CIs/qF9oOqnbz5505A+R/WG3z4Ie2Q2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfEo4qcHmN94ZA81Tg+vtvqqelpanAzec8PnXGzJkqcPuPBFwC*)
(*mqcCd1/7onncDAyqcPffOZiQaGwM5N+A+C/SVONiWhqQfwHi/8XHn3rOmqkK*)
(*D58ZV8+uPntGFR5+CvENNxgY1ODhGxeic8DYWA0e/inxhUD3qcHjp6j19YMZ*)
(*M9Xg8Xf5pGzQ6TNq8PiNWpv06O9/NXj8q7uz7jAwVoenj8iqBe+T04B8AUj6*)
(*+aP/Zer0merw9LWCxWXJ6TPqDrD0l8MMojUcAB3vAz4=*)
(*"]], Polygon[{{14., 10.6}, {13.6, 9.4}, {14.4, 9.4}}], Inset[$CellContext`W, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{9.5, 7.5}, {10.5, 8.5}}], Line[{{9.5, 8.5}, {10.5, 7.5}}]}}, Inset[$CellContext`T37 $CellContext`P1 $CellContext`N212, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieigeffhgh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {3.088381073024935, 14.281562146049868`}, ImageScaled[{0, 0}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {2.911618926975065, 7.28156214604987}, ImageScaled[{1, 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.911618926975066`, 5.71843785395013}, ImageScaled[{1, 1}]], Line[{{10.000000000001556`, 8.}, {6.000000000002885, 8.}}], Polygon[{{8.6, 8.}, {7.4, 8.4}, {7.4, 7.6}}], Inset[QFTSymbols`e, {8., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{9.999999999998444, 8.}, {13.999999999997117`, 8.}}], Polygon[{{12.6, 8.}, {11.4, 7.6}, {11.4, 8.4}}], Inset[QFTSymbols`e, {12., 8.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDAuc/XxIlHIQUNVJMjBUcGAzE*)
(*fvzfIuFwrdqqJiMNyL+gKlHzRsLhvG2IzpyZQP4Htgnf/ks4cDvczj5/BshX*)
(*yH5WDpSXPm/uysSgCNQ/f8p3oP4JP+IvmRgD+Rd4018AzZ/IzmqengbkJ3BY*)
(*vv8v7jBnQd/MmTOB/Af9Ot/mijs0VRjJnDkD5E9YmvzcS9zB0y7h+r//IPnZ*)
(*O9OFxR2W6WRcMzRWAuq/9+vlfzGHXakXxVLTQPzdC1KB8tEGAV0zZgL5Dk8N*)
(*HwP1L/pzUerMGSCf4ePD90DzpRV2rP//H8if0HP1GdB+m/W6xsbGyg4MAdte*)
(*3QW6771z57S0NCD/Qs7/V0D3N+14fmXmTCB/QqxFJtB/a8u7P585A+QLyJ58*)
(*CvQ/JBxV4PIhHSU8xsYqcP3fjCW009JU4OZ3rijLnDlTBW7/kYBLZ86cUYG7*)
(*79l99wAGBlW4++OZ9Z4aG6vC/Se7Z31pepoq3P/72vRezpqpCg+f6MvTNc+d*)
(*UYWH3/aD8zUYGdTg4VvXfvaxsbEaPPxT4gvT0tLU4PHz/MmvEzNmqsHjr4B9*)
(*ge7pM2rw+H1mcGLX3/9q8Pj/ul9lioGxOjx9GB5afTk5TR2efhYVHG2ePlMd*)
(*nr7STl+fffqMugMs/eUwg2gNBwBIrg0q*)
(*"]], Inset[$CellContext`Z, {5.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[$CellContext`u, {10., 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDiXmaC/R1HC4+3x1tYqzgwCAh*)
(*fD4rXMehZg93VkYakP9jh59loY7DitZ4gTkzgfwJuyqUK3Ucbu745X7+DJB/*)
(*gM9VN0/HYXnQXFkmBkUHhorjRe1BOg56Zo/WmhgD+QpzGkK1dRzY0kXk09OA*)
(*fIOWOd//azvMWdA3c+ZMIJ/j0Ky7N7QdFq2+bH/mDJD/47jr873aDg8W1Kv/*)
(*/w/kX+jkid6i7ZChZRRiZKwEdO9k0R17tB2uqUhtS00D8i9EV+Re1HaQ335d*)
(*b+ZMIH/CIs/qF9oOqnbz5505A+R/WG3z4Ie2Q2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfEo4qcHmN94ZA81Tg+vtvqqelpanAzec8PnXGzJkqcPuPBFwC*)
(*mqcCd1/7onncDAyqcPffOZiQaGwM5N+A+C/SVONiWhqQfwHi/8XHn3rOmqkK*)
(*D58ZV8+uPntGFR5+CvENNxgY1ODhGxeic8DYWA0e/inxhUD3qcHjp6j19YMZ*)
(*M9Xg8Xf5pGzQ6TNq8PiNWpv06O9/NXj8q7uz7jAwVoenj8iqBe+T04B8AUj6*)
(*+aP/Zer0merw9LWCxWXJ6TPqDrD0l8MMojUcAB3vAz4=*)
(*"]], Polygon[{{14., 10.6}, {13.6, 9.4}, {14.4, 9.4}}], Inset[$CellContext`W, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{9.5, 7.5}, {10.5, 8.5}}], Line[{{9.5, 8.5}, {10.5, 7.5}}]}}, Inset[$CellContext`T37 $CellContext`P2 $CellContext`N213, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieigeffhgh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {88, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {3.088381073024935, 14.281562146049868`}, ImageScaled[{0, 0}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {2.911618926975065, 7.28156214604987}, ImageScaled[{1, 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.911618926975066`, 5.71843785395013}, ImageScaled[{1, 1}]], Line[{{10.000000000001556`, 8.}, {6.000000000002885, 8.}}], Polygon[{{8.6, 8.}, {7.4, 8.4}, {7.4, 7.6}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {8., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{9.999999999998444, 8.}, {13.999999999997117`, 8.}}], Polygon[{{12.6, 8.}, {11.4, 7.6}, {11.4, 8.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {12., 8.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDBNtgh3gJh4vPd0ebGCs4MBio*)
(*zbu6TsKhZg93VkYakP+hcG7RIwmHFa3xAnNmAvkKpR/dPkk43Nzxy/38GSC/*)
(*QbYr6o6Ew/KgubJMDIpA9X1P+ZZKOOiZPVprYgzkO1gwrg6TcGBLF5FPTwPy*)
(*Ezgs3/8Xd5izoG/mzJlAvkCL6e6N4g6LVl+2P3MGpL+/+1y1uMODBfXq//8D*)
(*+QuEJbdliDtkaBmFGBkrAd2rrl1QKe5wTUVqW2oakL9g+4dbi8Qd5Ldf15s5*)
(*E8hXcJ387YK4g6rd/HlnzgD5D8IrD3wUd6iMTfzy/z9If8/VZ0D7bdbrGhsb*)
(*KzswBOgU/GeUcChQzUpPSwPyC0Lr1wLD56XQDaD7QHx3k29A9TcFzp05cwbI*)
(*F5A9+RTIh4SjClxe470h0DwVuP7+m+ppaWkqcPM5j0+dMXOmCtz+IwGXgOap*)
(*wN3XvmgeNwODKtz9dw4mJBobA/kbIP6LNNW4mJYG5C+A+H/x8aees2aqwsNn*)
(*xtWzq8+eUYWHn0J8ww0GBjV4+MaF6BwwNlaDh39KfCHQfWrw+Clqff1gxkw1*)
(*ePxdPikbdPqMGjx+o9YmPfr7Xw0e/+rurDsMjNXh6SOyasH75DQgXwGSfv7o*)
(*f5k6faY6PH2tYHFZcvqMugMs/eUwg2gNBwB2hfyQ*)
(*"]], Polygon[{{6., 10.6}, {5.6, 9.4}, {6.4, 9.4}}], Inset[$CellContext`W, {5.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[QFTSymbols`d, {10., 12.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQE6Dho//wOBvAPDBcW6XwY6DkKKGikmxgoODBLc*)
(*f+qjdByuVVvVZKQB+S+EeOzKdBzO24bozJkJ5Fcwe/yu13Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/tsOcBX0zZ84E8j+4i/0+p+3QVGEkc+YMkH/i0sbipdoOnnYJ1//9B8mf*)
(*vbO5U9thmU7GNUNjJaD+/L9f6rUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof0g4qsDlQzpKeIyNVeD6vxlLaKelqcDN71xRljlzpgrc/iMBl86cOaMC*)
(*d9+z++4BDAyqcPfHM+s9NTZWhftPds/60vQ0Vbj/97XpvZw1UxUePtGXp2ue*)
(*O6MKD7/tB+drMDKowcO3rv3sY2NjNXj4p8QXpqWlqcHj5/mTXydmzFSDx18B*)
(*+wLd02fU4PH7zODErr//1eDx/3W/yhQDY3V4+jA8tPpycpo6PP0sKjjaPH2m*)
(*Ojx9pZ2+Pvv0GXUHWPrLYQbRGg4A3d0Kgw==*)
(*"]], Inset[$CellContext`Z, {13.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{9.5, 7.5}, {10.5, 8.5}}], Line[{{9.5, 8.5}, {10.5, 7.5}}]}}, Inset[$CellContext`T37 $CellContext`P3 $CellContext`N214, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieigeffhgh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {110, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{0., 14.999999999996362`}, {4.4999999999990905`, 12.999999999996362`}}], Polygon[{{2.7982869291721544`, 13.756316920367931`}, {1.5392576844064665`, 13.878158460183966`}, {1.8641684572492248`, 14.609207699080171`}}], Inset[$CellContext`u, {2.2747146223828434`, 14.811607900361398`}, ImageScaled[{0, 0}]], Line[{{9.094947017729282*^-13, 4.999999999996362}, {5.0000000000009095`, 6.999999999996362}}], Polygon[{{3.057086014531156, 6.2228344058124625`}, {2.091470256010486, 5.405774917833433}, {1.794357714927203, 6.148556270541642}}], Inset[QFTSymbols`e, {1.9243444516511392`, 6.834338870872152}, ImageScaled[{Rational[1, 2], 0}]], Line[{{19.99999999999818, 15.}, {14.99999999999909, 13.}}], Polygon[{{18.057086014531155`, 14.222834405812462`}, {16.794357714927205`, 14.148556270541642`}, {17.091470256010485`, 13.405774917833435`}}], Inset[QFTSymbols`d, {18.075655548348863`, 13.165661129127848`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000091, 5.000000000003638}, {15.00000000000091, 7.000000000003638}}], Polygon[{{18.057086014531155`, 5.7771655941875375`}, {17.091470256010485`, 6.594225082166567}, {16.794357714927205`, 5.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.924344451651137`, 5.165661129127848}, ImageScaled[{Rational[1, 2], 1}]], Line[{{9.999999999998545, 7.}, {4.999999999997014, 7.}}], Polygon[{{8.1, 7.}, {6.9, 7.4}, {6.9, 6.6}}], Inset[QFTSymbols`e, {7.5, 6.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{10.000000000001455`, 7.}, {15.000000000002988`, 7.}}], Polygon[{{13.1, 7.}, {11.9, 6.6}, {11.9, 7.4}}], Inset[QFTSymbols`e, {12.5, 7.945200000000001}, ImageScaled[{Rational[1, 2], 0}]], Line[{{4.4999999999978915`, 13.}, {14.99999999999767, 13.}}], Polygon[{{10.35, 13.}, {9.15, 12.6}, {9.15, 13.4}}], Inset[QFTSymbols`d, {9.75, 13.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJwt1Qs01FkcB/B/efTQZhphWspMqzCZmo1qlJieKq8pj6QwKUsrMrSJOGvp*)
(*RCQjJeFIoyivhrBsWaMlj2ZjSquHNKuXXkxChNrvPe3/nDm/85n7v797////*)
(*797L8j2wzW8yRVER+JH47VrM/xYN+dRBVqFPL4dPtT9/vzMa7oj8cesdmNvz*)
(*i+UALFZ/XXIVFt9Rn7R9Lv4PqrifCAvmBtDy4UHtxm5vWFjzaUkXbOq7X7qI*)
(*tLOipo3Cewf7NQbM+RRtqhbnK6x6rrXjGqyaUdP4ER55lVklgmVXGyZ1w7LR*)
(*XbFL4JCwfNtbsGtRI7d/EZ+SOq1kVJLx+59+KYdVLSt8y+HmgmRpFMwfGrBv*)
(*gI1TS3c5wjEfFZf64Bu3WY4LYO4Oh9Cl8/gU09RpWI3k03ZuToZVa9lTetm4*)
(*nxWoNQ4b3nyf0gbnhnuFHTLiU1OtxlZWw2Jb33uDsLgqMvU83D5htWEFk089*)
(*d2hcFwczskSyIFjmuzVoN/xAoJuUCYvdXeQ8WJX3QHQdzm4tfTkVltrMPN8G*)
(*qyeP6t81w7y82Nc64YSkgWNn4Nwj9uX34Y6fc9Xc4AfS581y+PRvowo6zFjj*)
(*3ieDTf0s/BWmyDfEDqmCjV12s9LgkQJhWBnMDCib5Amb7tkcWQnvj3QUmZD2*)
(*vJkTDbArq1R/3AT1UCtj/gtnpHObOmHVSZ8z01jIa7QstgZWTv4nxxqu4Ntk*)
(*nIcT6kftwmGB7+3OeDgjvqOmEt5r49B2AG5W21HyEVYvuqvrBjML8t6Yz+dT*)
(*UVs2pS0j+T/4NHnBNPaXOm2Y92VKehzccHxfR89C1FP6gdFsWPnrlWelsMxv*)
(*kU4hzHx768lBWOB+JL4YfhfBjlgOX05WuBXA6+k0jeEFfMqjU+d4DmxZv8q0*)
(*CqbuOzemwzfsrFMi4MPql6tPk/5VkqS1MH97v4iMp875U0KHGUuCM6XwjBsv*)
(*ZrwxRv2MSU4r4BNKM34TLDgzXjoOS5/1vsqHZfvNdM1/QNz4x9ujsLTVLtsD*)
(*ps3jJXrDPNFDUTRcTDEeWhA7913PhFXM7JeacHVXmk4FHJDjlP4QMWN4WpMc*)
(*sVfz0pliRN7vSo2XiHu/nmz4FXHE5vPZr4i7dmqNb0OUDupYzUEewzqDPQvJ*)
(*uJwQDhlHfk4x5zPmqTIzL3Ek83KuDP0bjpmoTvCHN6VyE8l7ktY/EUXDBxlv*)
(*twbCI1nn2pJgWpFRhQXMSH5x5BRsKrIJ/YzvmjFqtTkdjrrXcfEvmBazxzcH*)
(*ViZdyz0Fe3RkZEnhqXUf+gNgbrhrfhtsXuHkuRHmW2oxx+C9etGeZuT+i2E+*)
(*XLx3YfHDHG3YdHmjWyC8v7A8chh1OSL64FoAm2vq2j2GKbFGzVO4eau4gqwr*)
(*XotVOA11YDn7+Ix0UvdfeGJSF121cu99cIz+Yx8BXGE8P2MZLBVkNnjBIWWG*)
(*1Cesa4FRvoEQbs+SWEfAzWWRdE9SZ+8EesNk37Bwd3Em7WrhPqEww2VMdz2c*)
(*UCMbG8A+057ufMGa5NO76RQFb3IwkhN71E/UzIITNIOT7ODqdXOtKrGvhiQv*)
(*zfImdd4nMfGHq/N22seS+20lyxfC7bmdh8pg5fuUtH4DzP/tiUuvyTowOb+q*)
(*zoC8r81uJmSdZU8PFcNCl9W7f4KF9kX23nDAI3qUBA6JU9gaw9XFF0rJuqaq*)
(*aku6v8d3ybsin4x9wCPF3y4JphQWd1mwUNvVzQw+fKVnniXMOFZxu2YO+uf6*)
(*JayED3v6LbaFlSFDa1bAshZNu1oGxjlYnMWBe5UllTxYFmV2geRjOg8HVOlj*)
(*/q+LJPow5UL7bhVMi3eu0iHtq4JjW/WwTwYO2c4h/b06Av3hEHdJMpuMp/FU*)
(*SYfbU+rTNsEZHj2Ocl3UkxZdEQpf7rp3NBXOXXDIqwAWpDpMeMMekQOsZ3Az*)
(*x96aC/OOBVvMJ/tq0J3tFEy9kW8QwrRoTnzrbDznsoXsc3CCd87VRLiaU7i5*)
(*BeYKW7tWw4d1Zmr3kf45mWd7dFCfY8FLNbGPN8s3zoqAR1w+ds8i58CWyrlq*)
(*sHTjoxI6PHJAMRFHx3NOTwzXIufAV1yz/j9/2fz/ALDOsx0=*)
(*"]], Polygon[{{9.229054114725324, 10.2976833630141}, {10.072490309931942`, 9.355019380136117}, {10.46940146061741, 10.049613893835684`}}], Inset[$CellContext`W, {9.914215354453091, 10.740976870292911`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwt1Qs0lGkYB/ARu+XSNHIblxjlMigprFGbRjIRMWwxrrmWzbUOraJ2FDWR*)
(*kiSJJRxp2zKFTBcapTW5pWVdUpljU9TSqHQonP2/Z5tz5vzPb+b53vd53m8u*)
(*hmHx3pELKBRKEp4k/39Ysv9PczalwlfPpGEVmyIz1vRThiXHn2scgrtyxYuX*)
(*whHeTo6b4Cj2JmUaLPb6nESFhUnnuQvgGPWiiuGVbErIjk73N2Zsio2h78NG*)
(*WHjfjnYfFr2Y7bwE0zN3b82Cc1SH356ABU2bNDzhLlufi4lwqbDwLJX4Qana*)
(*Trgqekt8JxN1yu+zOTAv4QbnLLHGz2VMuMDmgW4obCNozJUn6/MX9q6DE+de*)
(*83stMEfqwTeG8KtNwZmXYK5A10CTeFtGcyQcEv/pugZc0HhBxximJzRHLIMD*)
(*JxJUhzEXxT6MagZLUwKSS2A25+icNTw9N0ILgbtkDYX2MD9mK8sElq1umLKF*)
(*xb9bFX/EHFVGU2wT+N78gNJjOMrhqpkizDqzllsJi5dnyA2ZYu6BPudMWKqa*)
(*UXsFri30+bAPlthePxkD56lZSoLgkFhRqwVMr5ud2gIzG35l/GvCpri7Ue5b*)
(*kvXNcpfdhFdqU58uIfV3P5SkwdOy/dlj2JfmXeEfBAfqvV5/F64aHOZz4NGj*)
(*c4wMuP/03tIf4QS9sSQX0if9t+oNMN/jg+NCcu6X2dtIfdT6Vp1m9JGjOGTu*)
(*DYtfBnSnwTKf8bOBsFGV7gonmHs0Ty4ULpip4yrBoisvqgJgK2re236kcNHT*)
(*SVeyv8XsuWqyT+I7iTmSMtf2JRvJHngnnjdmU9SLXDv3kX3p3RQJLEyt/0rW*)
(*4R51o2TCKleEI6QvevcDHVeYfcRFZAUzhLnfK8HcO8+aNMlcB+QcnxrhPDZU*)
(*tnzG6/RAp7QyeNHkU7cncJWsxYkPr3TdfK+EXJdonBoNj947lR5FPGn7Szjc*)
(*E3iHYkGuX6Q6GQmneuZ5jyEZG60C45HCyHr9SrJuobxXCrJ9/IR9BJJlwaFn*)
(*IG26gz1MyLqrdDYKkCrMS1kTK3D94qblaWS9597BjbDV+rawWLiZynHOh3PO*)
(*N1i4E2ufbkqC+yflvfRhXrPWrgBYdlXO+jVys8seBWekZCIu8TLypIvt5Gok*)
(*M85csAtp1MHgaSOlN9KMmchav6t588vR75harQwpWsfMeIFkf5fS9BCpni3s*)
(*qEVK39ScKUfWVnctSEcyYj/35SB7hutuuSF5FqLSTGTqdofdi5HCvJPxp5Db*)
(*1Q082wxxvhxWdgFcdXjIQAAnp4enVsBFdo7XODDjeeGxa7BKdlKeIkzL9+JW*)
(*k31fKrz9i4H6Aw2hlaSfgIPT5TCruOks2T9H1Kd1CBYeyfopFqa7t5YFEY/k*)
(*126Ak7d+UtoMh0QMeyiQ+WbaFS1hgcvB8WbSl5A+SofZ1b5a6XDIV+tuOViy*)
(*Z00a6UtksT+63QCfYx3hARrMfOavKoBdNpqGjaBO1LfGxIa8Pxq9uQVmaH5l*)
(*dOnjfqx9knuLrGO9e18QnMPT0rkJjxoX+g4tQ19Tq03r4QTq3kR/WDYyOdgE*)
(*d/n/6dijhz5Mi6o6YKnnuVBvWCrWHPyb1JcvnRjQxf0Kj1nbC+coxw3EwQlL*)
(*wiPaSL3/yF41mPbxSXoNTFMM0pbo4P44zDieIuco3WmfBVsdKZ4IhPuT5xP9*)
(*4IJjkbzlsNVo/FJLWOhcM9SMuXjUw6flYa6d5wUnmPHPcY8ebdSVd6xrxVwS*)
(*XSnnIpxgp20Wqk++FyNl22G+3A+PqbC4OIY1T0e9ILq+F3OynjW2n4eFrKEd*)
(*t2HBoxbdFbC4WiCugflBJZfKtXAOvC+mYmI/zVX6MNdn8Di5viumzqVAE/sN*)
(*V5eNw9MVdSe1YG6pitEsOddit/elGvgduVX4aAYu7exmsjTI784XbynM65lz*)
(*GFJHfVlJzB+wy20353yYkd0yGQQz4qr9A8j7wSkK0zh3Fu3MK3NYaGB5ma/3*)
(*7X9T/Vvqsf8D8aGJ7Q==*)
(*"]], Inset[$CellContext`\[Gamma], {9.807331579087336, 10.724314034854444`}, ImageScaled[{1, 0}]], {PointSize[0.04], Point[{4.5, 13.}], Point[{5., 7.}], Point[{15., 13.}], Point[{15., 7.}], {Thickness[0.015], Line[{{9.5, 6.5}, {10.5, 7.5}}], Line[{{9.5, 7.5}, {10.5, 6.5}}]}}, Inset[$CellContext`T38 $CellContext`P1 $CellContext`N215, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieigehfgfh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {132, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{0., 14.999999999996362`}, {4.4999999999990905`, 12.999999999996362`}}], Polygon[{{2.7982869291721544`, 13.756316920367931`}, {1.5392576844064665`, 13.878158460183966`}, {1.8641684572492248`, 14.609207699080171`}}], Inset[$CellContext`u, {2.2747146223828434`, 14.811607900361398`}, ImageScaled[{0, 0}]], Line[{{9.094947017729282*^-13, 4.999999999996362}, {5.0000000000009095`, 6.999999999996362}}], Polygon[{{3.057086014531156, 6.2228344058124625`}, {2.091470256010486, 5.405774917833433}, {1.794357714927203, 6.148556270541642}}], Inset[QFTSymbols`e, {1.9243444516511392`, 6.834338870872152}, ImageScaled[{Rational[1, 2], 0}]], Line[{{19.99999999999818, 15.}, {14.99999999999909, 13.}}], Polygon[{{18.057086014531155`, 14.222834405812462`}, {16.794357714927205`, 14.148556270541642`}, {17.091470256010485`, 13.405774917833435`}}], Inset[QFTSymbols`d, {18.075655548348863`, 13.165661129127848`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000091, 5.000000000003638}, {15.00000000000091, 7.000000000003638}}], Polygon[{{18.057086014531155`, 5.7771655941875375`}, {17.091470256010485`, 6.594225082166567}, {16.794357714927205`, 5.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.924344451651137`, 5.165661129127848}, ImageScaled[{Rational[1, 2], 1}]], Line[{{9.999999999998545, 7.}, {4.999999999997014, 7.}}], Polygon[{{8.1, 7.}, {6.9, 7.4}, {6.9, 6.6}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {7.5, 6.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{10.000000000001455`, 7.}, {15.000000000002988`, 7.}}], Polygon[{{13.1, 7.}, {11.9, 6.6}, {11.9, 7.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {12.5, 7.945200000000001}, ImageScaled[{Rational[1, 2], 0}]], Line[{{4.4999999999978915`, 13.}, {14.99999999999767, 13.}}], Polygon[{{10.35, 13.}, {9.15, 12.6}, {9.15, 13.4}}], Inset[$CellContext`u, {9.75, 13.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJwt1Qs01FkcB/C/snY8Oo3xFkKjGRLTi6mo/+nBVOPRJlLevWZVHj0wrEwh*)
(*ojZKp5JwlG20HqMkbQmrtaOjjFYnSiWPRQp57cS29nvP7v+cOfd8/vf+771z*)
(*7+/+rkVI+Hd7Z1EUJcaPlP89dvR/pQlN5fA3Bvcvpim64mxwPDzuHe71DA7y*)
(*V6wdhZN25N4ugxUbTmr7mNIU+4rkdRosM6tk/wQrnun1BsC1X/RcOmCtv1Iq*)
(*F8Gd8zvNvsB00Teao7Y0JWltXzMD/z24ye8OzPug0zIGP/zsei8SDiq1VH0L*)
(*21qMJdiT9veXOjbArQrNRcOLME6nrepdWOT2z8RtOOiq6frbcE+oceEPcMZ0*)
(*+4LHsNO5Mg83mMf1iBmCTXgqtBX5Xs1rw1IzmuKO1H6YDUuiX+edhUUNjJk+*)
(*G7RfPzo0DStY1NlmeMTV5Puo+Wj3/OGaKpgZdbpzHD5z6VVOHsy1Yfs6mmN+*)
(*M/3eibDy69j7Q7BuckhKMEwfr6rKhveUBg7yYc/1y6UP4OLGgm/VYcaxmrZm*)
(*mMF+6PDcGuOnqQ68hA19b+ZehCnTptcv4JirrLnbYYVkqKMJNl9i18SCY+KW*)
(*9NTCFcZmwhYu1l9YR1fCzCOyofMwl3PduBxOOnj9ni+slBYqK+Ad0lgdDmw4*)
(*3LzjMbwhvaRkmkNTbXd5+zthRcOU30tYMXD4NcMC/U9Ycu8TH7BRcYK1UhJC*)
(*8ohX9g5Ewa3Rdm9S4JgL6+rvwtw+O04ELHlq7zoOZzXovNhOfCN0pZ0lTfkx*)
(*deQOsNKmuzsQfijdfFAb7j9ZlXgK1rXW7+tZiPpqj+x8+HEdm1cOC1IdjUrh*)
(*1N1hrGiYUd+8WwbLJgZ1+aQ+OWnhLdK//SO3SSuM924TIw/u0e5nV8BVG3eu*)
(*vQAn+d2YcxSWn0jWS4dHnCLX8OHUKjo0DVYE6UTMghWTA3QWzPuq+vMfbMxP*)
(*tEVE+m/rNrUuhi+/TNr4FM55NeyeDvPCDsunYU+37OpwmO/Tm7ZsAU0JB9Xj*)
(*fGCps5FBJHxDoGZLw53hW91ksOHtPb4cWH5kouMj3KoeUaUBt7kK6i1RZgkd*)
(*w/rxXj7Fq3Mn/TA1XGpg7rXMX8LId01drT/CqeVO4yeIH5Um+8Celw5ZnyYu*)
(*1ThrDEuPuUWdgk3Od/zWjnkyzk0bxcPC8+2xl2D+2+UGkbBkNX+BN0wbpj/a*)
(*B3t5uxobwhJOqX0IvGfMcec77CsVvLWT1AucNNeVwLLpDIdomJHkdugknHEl*)
(*YV0W+Z8C54IAUl8+kltN2otC22hY4q0b/5lN4lTTh0PiJuBcuy3WvTj4TN9c*)
(*mJerbD1A9kk9Q19J4lKcZXULNt/cG/cGVhavu9gNC2v5Ko9g0TzbeF3EQfGL*)
(*oPmX4f4Easkq4mlnzQOwLCfKbRv88SnjqQM5J9lz3gfCErv640qc64yakNBg*)
(*WLpb/FEMC44Li3fC8hWGFpMkb3yq9/NYSPLWp7FIWDL/w731MHduquso8oxn*)
(*c9FsJxK3yc6xcSRP/b6SRSx90NXLhA1DeltcYM/ewPgK5FVm/tSkPxk/88iF*)
(*fbDgaHXjCXjk16UtVrBUy8yMxL203t9/eB7245BV1ABs/kqNVwPzfa22cMi5*)
(*2z+amgG3Wbsc2wfz7UziAkj7/ZmFBfBIaFA8G5awxD3kXNMHZMNvjWkqv9FH*)
(*bTbygCgvLTkdFonPMCzhDJeE09ZwhCBRuBxm3Jo1et8I1v+zaBWp51tvXAtf*)
(*jni73ZFLzku6e7UhxilaW7AY7t/bUsaHeQ7qORak/WLZjkoD5OvgiCwDWLrl*)
(*88QqWK5hUKBD8lYJR/REH/sjn+Iawfljiq37YXlcV5QNyWNlY40sOCOqMkFA*)
(*vHqeU5MePOdU3WEyfq6/OBNmciO23YSZjdHKANj8U5VpN0xlFjrzYHnYteWW*)
(*yJv5KsIACuYNiLcEwQzvXZlPdLEuA1rLrsDmiW0P0mDmtl1ejTBfJXzAGea6*)
(*mxgPwaLeFde7dLCPVhed1JDHg97fMRbDtf5L+rTJPXJ3KXs2zGSk3GHZkHVl*)
(*qCSx0M8d31hNcq/M4NH+//61of8F8dGjNg==*)
(*"]], Inset[$CellContext`Z, {9.914215354453091, 10.740976870292911`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwt1Q9Yy3kcB/Cf6rS7VItVq4ak7UZTqUxLuVFaHbqkPLFV08kRaXTYPf6l*)
(*/Bk67Y5bXJypnhTJ/DuppSF30x+GlRHCUbtH9Yyc4lbu/X1Oz9Pzfl77fr6f*)
(*3/fz/T2tCenZCRk2FEWtxy/J/3/8hf/nZCHVM9+LWz8F9rie5ADrvZ57bIHj*)
(*Lzjaj4Yt7DGi2TCTeXAEHTYuctziBMtj9VE2sHkXv+o5T0gp+L7C7klCyqTb*)
(*1nQFlgbMtWuApdYy43GyvuJf4T44t4vq2wPXeNPp38DG66OKv4f19q4HneCC*)
(*Y6nOabAhIW3DLa6QCi8+sDMaNs0+mngAlmyUqLiwZq8xYCkcWjSUbwtzpxT3*)
(*hcHq3GFZux/6Kz+M8IHjqxM2HYflGr9QN3hHdHlNBix1rrvmCitaZzPYsGFM*)
(*YvZYLrmPutHPydwPZoyaBGvW/pl3DBaWc3qCYetuO7YUVq8W/CCAjzxem8SB*)
(*uRK/G9NgaZfoaj/mkGmNdhxS7xoddBOObxnqppHzS1+vLyf3pCm59uRL9G+9*)
(*/e1eWBlblFcJGyydI3JgRV3zutXEV43XUmDa3eP3/GBad067iOw3fJ7UwxFS*)
(*ITMEef6wJaUt7xws/U6y0RmOsVs2LQ/uaS/z+hvPZf4Vw0yFW6RjtLWwqehR*)
(*kggOXzC2dAcsj5yyLoJ4/GnnGPgQ593imXCuY6+jPewd2VcaDS/7uZDfiHPI*)
(*vQ5bF8CD9hmSPLjisuqMGDYVhgRFwYOahxFppP6Ytt8BVr8p7UvmkH1iVgfJ*)
(*Nb/Hkn7yJfwQcu6YYPfVHNLP161WidTFWHkf2ELqAtPEWw8r77s4NcItW3xC*)
(*Usj6muqB3bBu86qXc2DLL4YbX8PWnk0TeLC+ZX6VCzGbojmSe3kfseGZL96/*)
(*75ntXfhctqThWD3cWLeo8xKsF72YdwLW9q+R5cGBmtq4I7C1t6ksFjbYeL5S*)
(*wYyCrGHS15DQ/lshHC5t0z5B1hTzqO3IGFrcaA1SyQiry0QyP57qzSfp9mBW*)
(*POmnSBclI3UXX/4Tgny66atkHpKbKZ7oSfqNThBQSAt/o/rjRCHF26V2MSK9*)
(*IwJ4L5EsOrv2BFKm/tG+mWTGHY9NSGZvkuQsMmpa20AcUhmw74kKuXmDRsxG*)
(*0itjeXLkPJ18EYVUmCrvLUCaTMaLnT6wZBfXF/aNSAzT+ZD6kwffIrV3WOlH*)
(*kboJ4uImpCaqoD4HaVE/fncK2fJH/NAs8jlnRvuvSB6/2kAjHlzlqiJ1U81x*)
(*TRPw93MkLpSsy+qnJ++BFf51OSVwWXWFQyzx1GsHKuGQdYULR8Ea+hztSbgq*)
(*wEnR5i2kVnQ125F6xhduk8th9VDBqwI4SqCt3Qpb4iIOZ8LWN81nU+GK8bct*)
(*M+BA1usDUWR/2o5MW7jnbCHbH6b0QQ2N5Fw/MS8w4cFU2pod8Nt8m6wRsOxm*)
(*oZ8IZjYaspvH4/67c+a6kPoXd1x2wxWKSdO7UJf88cTsYNiylGmjhw3hp7Nu*)
(*j0P9m2juJW8yl3lQMo68/7Rt58g5y5XMzrH4PpBrxWTd0t6wcglsuNTx4ip5*)
(*7nWj1MjCfBk1+1vJnNrNRxNgbhanktwDXbhT8NAL7610Vz9xxbIwbjasoJ/z*)
(*aSbPO02rHQPTg6tizpO5TpYs1HvCZctc9pO5l6uW7oNlI91bJbC3+e6exfDT*)
(*h/YiH7LOt3P1h5WRyzsaMZd5+d08W9i7Lbs6Eqa8bvGNHjh3Tkp6E+Yyb73F*)
(*LSbuCBcvJXM7e+YnwtLrgmEnOD7L4jnMxHzzVOZ2zKlJPXmhCLZcGbn1Mhwa*)
(*yXCYCAcuSX90nqzfZx0udcf+ED++DpYezOeNgwPdDQqyP1D3Ou6QG/reiz3U*)
(*C1MrbQ+5w4HPglyssPLU4SG1K+Y91XD6PTw487PQUFhXXyp4CtNU3PmdDNzr*)
(*go+JVXBNiTleBecWrXySQnyiJl0Ma+SMgQHcO912v3ky/DR7tzqX9en/JuNT*)
(*soT/AR2li+0=*)
(*"]], Polygon[{{10.514495755427527`, 10.308697453256515`}, {9.691302546743483, 9.348305376458466}, {9.279705942401463, 10.034299717028503`}}], Inset[$CellContext`W, {9.807331579087336, 10.724314034854444`}, ImageScaled[{1, 0}]], {PointSize[0.04], Point[{4.5, 13.}], Point[{5., 7.}], Point[{15., 13.}], Point[{15., 7.}], {Thickness[0.015], Line[{{9.5, 6.5}, {10.5, 7.5}}], Line[{{9.5, 7.5}, {10.5, 6.5}}]}}, Inset[$CellContext`T38 $CellContext`P2 $CellContext`N216, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieigehfgfh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {154, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{0., 14.999999999996362`}, {4.4999999999990905`, 12.999999999996362`}}], Polygon[{{2.7982869291721544`, 13.756316920367931`}, {1.5392576844064665`, 13.878158460183966`}, {1.8641684572492248`, 14.609207699080171`}}], Inset[$CellContext`u, {2.2747146223828434`, 14.811607900361398`}, ImageScaled[{0, 0}]], Line[{{9.094947017729282*^-13, 4.999999999996362}, {5.0000000000009095`, 6.999999999996362}}], Polygon[{{3.057086014531156, 6.2228344058124625`}, {2.091470256010486, 5.405774917833433}, {1.794357714927203, 6.148556270541642}}], Inset[QFTSymbols`e, {1.9243444516511392`, 6.834338870872152}, ImageScaled[{Rational[1, 2], 0}]], Line[{{19.99999999999818, 15.}, {14.99999999999909, 13.}}], Polygon[{{18.057086014531155`, 14.222834405812462`}, {16.794357714927205`, 14.148556270541642`}, {17.091470256010485`, 13.405774917833435`}}], Inset[QFTSymbols`d, {18.075655548348863`, 13.165661129127848`}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000091, 5.000000000003638}, {15.00000000000091, 7.000000000003638}}], Polygon[{{18.057086014531155`, 5.7771655941875375`}, {17.091470256010485`, 6.594225082166567}, {16.794357714927205`, 5.851443729458358}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.924344451651137`, 5.165661129127848}, ImageScaled[{Rational[1, 2], 1}]], Line[{{9.999999999998545, 7.}, {4.999999999997014, 7.}}], Polygon[{{8.1, 7.}, {6.9, 7.4}, {6.9, 6.6}}], Inset[QFTSymbols`e, {7.5, 6.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{10.000000000001455`, 7.}, {15.000000000002988`, 7.}}], Polygon[{{13.1, 7.}, {11.9, 6.6}, {11.9, 7.4}}], Inset[QFTSymbols`e, {12.5, 7.945200000000001}, ImageScaled[{Rational[1, 2], 0}]], Line[{{4.4999999999978915`, 13.}, {14.99999999999767, 13.}}], Polygon[{{10.35, 13.}, {9.15, 12.6}, {9.15, 13.4}}], Inset[QFTSymbols`d, {9.75, 13.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJwt1Qs01FkcB/B/efTQZhphWspMqzCZmo1qlJieKq8pj6QwKUsrMrSJOGvp*)
(*RCQjJeFIoyivhrBsWaMlj2ZjSquHNKuXXkxChNrvPe3/nDm/85n7v797////*)
(*797L8j2wzW8yRVER+JH47VrM/xYN+dRBVqFPL4dPtT9/vzMa7oj8cesdmNvz*)
(*i+UALFZ/XXIVFt9Rn7R9Lv4PqrifCAvmBtDy4UHtxm5vWFjzaUkXbOq7X7qI*)
(*tLOipo3Cewf7NQbM+RRtqhbnK6x6rrXjGqyaUdP4ER55lVklgmVXGyZ1w7LR*)
(*XbFL4JCwfNtbsGtRI7d/EZ+SOq1kVJLx+59+KYdVLSt8y+HmgmRpFMwfGrBv*)
(*gI1TS3c5wjEfFZf64Bu3WY4LYO4Oh9Cl8/gU09RpWI3k03ZuToZVa9lTetm4*)
(*nxWoNQ4b3nyf0gbnhnuFHTLiU1OtxlZWw2Jb33uDsLgqMvU83D5htWEFk089*)
(*d2hcFwczskSyIFjmuzVoN/xAoJuUCYvdXeQ8WJX3QHQdzm4tfTkVltrMPN8G*)
(*qyeP6t81w7y82Nc64YSkgWNn4Nwj9uX34Y6fc9Xc4AfS581y+PRvowo6zFjj*)
(*3ieDTf0s/BWmyDfEDqmCjV12s9LgkQJhWBnMDCib5Amb7tkcWQnvj3QUmZD2*)
(*vJkTDbArq1R/3AT1UCtj/gtnpHObOmHVSZ8z01jIa7QstgZWTv4nxxqu4Ntk*)
(*nIcT6kftwmGB7+3OeDgjvqOmEt5r49B2AG5W21HyEVYvuqvrBjML8t6Yz+dT*)
(*UVs2pS0j+T/4NHnBNPaXOm2Y92VKehzccHxfR89C1FP6gdFsWPnrlWelsMxv*)
(*kU4hzHx768lBWOB+JL4YfhfBjlgOX05WuBXA6+k0jeEFfMqjU+d4DmxZv8q0*)
(*CqbuOzemwzfsrFMi4MPql6tPk/5VkqS1MH97v4iMp875U0KHGUuCM6XwjBsv*)
(*ZrwxRv2MSU4r4BNKM34TLDgzXjoOS5/1vsqHZfvNdM1/QNz4x9ujsLTVLtsD*)
(*ps3jJXrDPNFDUTRcTDEeWhA7913PhFXM7JeacHVXmk4FHJDjlP4QMWN4WpMc*)
(*sVfz0pliRN7vSo2XiHu/nmz4FXHE5vPZr4i7dmqNb0OUDupYzUEewzqDPQvJ*)
(*uJwQDhlHfk4x5zPmqTIzL3Ek83KuDP0bjpmoTvCHN6VyE8l7ktY/EUXDBxlv*)
(*twbCI1nn2pJgWpFRhQXMSH5x5BRsKrIJ/YzvmjFqtTkdjrrXcfEvmBazxzcH*)
(*ViZdyz0Fe3RkZEnhqXUf+gNgbrhrfhtsXuHkuRHmW2oxx+C9etGeZuT+i2E+*)
(*XLx3YfHDHG3YdHmjWyC8v7A8chh1OSL64FoAm2vq2j2GKbFGzVO4eau4gqwr*)
(*XotVOA11YDn7+Ix0UvdfeGJSF121cu99cIz+Yx8BXGE8P2MZLBVkNnjBIWWG*)
(*1Cesa4FRvoEQbs+SWEfAzWWRdE9SZ+8EesNk37Bwd3Em7WrhPqEww2VMdz2c*)
(*UCMbG8A+057ufMGa5NO76RQFb3IwkhN71E/UzIITNIOT7ODqdXOtKrGvhiQv*)
(*zfImdd4nMfGHq/N22seS+20lyxfC7bmdh8pg5fuUtH4DzP/tiUuvyTowOb+q*)
(*zoC8r81uJmSdZU8PFcNCl9W7f4KF9kX23nDAI3qUBA6JU9gaw9XFF0rJuqaq*)
(*aku6v8d3ybsin4x9wCPF3y4JphQWd1mwUNvVzQw+fKVnniXMOFZxu2YO+uf6*)
(*JayED3v6LbaFlSFDa1bAshZNu1oGxjlYnMWBe5UllTxYFmV2geRjOg8HVOlj*)
(*/q+LJPow5UL7bhVMi3eu0iHtq4JjW/WwTwYO2c4h/b06Av3hEHdJMpuMp/FU*)
(*SYfbU+rTNsEZHj2Ocl3UkxZdEQpf7rp3NBXOXXDIqwAWpDpMeMMekQOsZ3Az*)
(*x96aC/OOBVvMJ/tq0J3tFEy9kW8QwrRoTnzrbDznsoXsc3CCd87VRLiaU7i5*)
(*BeYKW7tWw4d1Zmr3kf45mWd7dFCfY8FLNbGPN8s3zoqAR1w+ds8i58CWyrlq*)
(*sHTjoxI6PHJAMRFHx3NOTwzXIufAV1yz/j9/2fz/ALDOsx0=*)
(*"]], Polygon[{{9.229054114725324, 10.2976833630141}, {10.072490309931942`, 9.355019380136117}, {10.46940146061741, 10.049613893835684`}}], Inset[$CellContext`W, {9.914215354453091, 10.740976870292911`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwt1Qs0lGkYB/ARu+XSNHIblxjlMigprFGbRjIRMWwxrrmWzbUOraJ2FDWR*)
(*kiSJJRxp2zKFTBcapTW5pWVdUpljU9TSqHQonP2/Z5tz5vzPb+b53vd53m8u*)
(*hmHx3pELKBRKEp4k/39Ysv9PczalwlfPpGEVmyIz1vRThiXHn2scgrtyxYuX*)
(*whHeTo6b4Cj2JmUaLPb6nESFhUnnuQvgGPWiiuGVbErIjk73N2Zsio2h78NG*)
(*WHjfjnYfFr2Y7bwE0zN3b82Cc1SH356ABU2bNDzhLlufi4lwqbDwLJX4Qana*)
(*Trgqekt8JxN1yu+zOTAv4QbnLLHGz2VMuMDmgW4obCNozJUn6/MX9q6DE+de*)
(*83stMEfqwTeG8KtNwZmXYK5A10CTeFtGcyQcEv/pugZc0HhBxximJzRHLIMD*)
(*JxJUhzEXxT6MagZLUwKSS2A25+icNTw9N0ILgbtkDYX2MD9mK8sElq1umLKF*)
(*xb9bFX/EHFVGU2wT+N78gNJjOMrhqpkizDqzllsJi5dnyA2ZYu6BPudMWKqa*)
(*UXsFri30+bAPlthePxkD56lZSoLgkFhRqwVMr5ud2gIzG35l/GvCpri7Ue5b*)
(*kvXNcpfdhFdqU58uIfV3P5SkwdOy/dlj2JfmXeEfBAfqvV5/F64aHOZz4NGj*)
(*c4wMuP/03tIf4QS9sSQX0if9t+oNMN/jg+NCcu6X2dtIfdT6Vp1m9JGjOGTu*)
(*DYtfBnSnwTKf8bOBsFGV7gonmHs0Ty4ULpip4yrBoisvqgJgK2re236kcNHT*)
(*SVeyv8XsuWqyT+I7iTmSMtf2JRvJHngnnjdmU9SLXDv3kX3p3RQJLEyt/0rW*)
(*4R51o2TCKleEI6QvevcDHVeYfcRFZAUzhLnfK8HcO8+aNMlcB+QcnxrhPDZU*)
(*tnzG6/RAp7QyeNHkU7cncJWsxYkPr3TdfK+EXJdonBoNj947lR5FPGn7Szjc*)
(*E3iHYkGuX6Q6GQmneuZ5jyEZG60C45HCyHr9SrJuobxXCrJ9/IR9BJJlwaFn*)
(*IG26gz1MyLqrdDYKkCrMS1kTK3D94qblaWS9597BjbDV+rawWLiZynHOh3PO*)
(*N1i4E2ufbkqC+yflvfRhXrPWrgBYdlXO+jVys8seBWekZCIu8TLypIvt5Gok*)
(*M85csAtp1MHgaSOlN9KMmchav6t588vR75harQwpWsfMeIFkf5fS9BCpni3s*)
(*qEVK39ScKUfWVnctSEcyYj/35SB7hutuuSF5FqLSTGTqdofdi5HCvJPxp5Db*)
(*1Q082wxxvhxWdgFcdXjIQAAnp4enVsBFdo7XODDjeeGxa7BKdlKeIkzL9+JW*)
(*k31fKrz9i4H6Aw2hlaSfgIPT5TCruOks2T9H1Kd1CBYeyfopFqa7t5YFEY/k*)
(*126Ak7d+UtoMh0QMeyiQ+WbaFS1hgcvB8WbSl5A+SofZ1b5a6XDIV+tuOViy*)
(*Z00a6UtksT+63QCfYx3hARrMfOavKoBdNpqGjaBO1LfGxIa8Pxq9uQVmaH5l*)
(*dOnjfqx9knuLrGO9e18QnMPT0rkJjxoX+g4tQ19Tq03r4QTq3kR/WDYyOdgE*)
(*d/n/6dijhz5Mi6o6YKnnuVBvWCrWHPyb1JcvnRjQxf0Kj1nbC+coxw3EwQlL*)
(*wiPaSL3/yF41mPbxSXoNTFMM0pbo4P44zDieIuco3WmfBVsdKZ4IhPuT5xP9*)
(*4IJjkbzlsNVo/FJLWOhcM9SMuXjUw6flYa6d5wUnmPHPcY8ebdSVd6xrxVwS*)
(*XSnnIpxgp20Wqk++FyNl22G+3A+PqbC4OIY1T0e9ILq+F3OynjW2n4eFrKEd*)
(*t2HBoxbdFbC4WiCugflBJZfKtXAOvC+mYmI/zVX6MNdn8Di5viumzqVAE/sN*)
(*V5eNw9MVdSe1YG6pitEsOddit/elGvgduVX4aAYu7exmsjTI784XbynM65lz*)
(*GFJHfVlJzB+wy20353yYkd0yGQQz4qr9A8j7wSkK0zh3Fu3MK3NYaGB5ma/3*)
(*7X9T/Vvqsf8D8aGJ7Q==*)
(*"]], Inset[$CellContext`Z, {9.807331579087336, 10.724314034854444`}, ImageScaled[{1, 0}]], {PointSize[0.04], Point[{4.5, 13.}], Point[{5., 7.}], Point[{15., 13.}], Point[{15., 7.}], {Thickness[0.015], Line[{{9.5, 6.5}, {10.5, 7.5}}], Line[{{9.5, 7.5}, {10.5, 6.5}}]}}, Inset[$CellContext`T38 $CellContext`P3 $CellContext`N217, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`VFlip["aebf/cgdh/ieigehfgfh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {3.088381073024935, 14.281562146049868`}, ImageScaled[{0, 0}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {2.911618926975065, 7.28156214604987}, ImageScaled[{1, 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.911618926975066`, 5.71843785395013}, ImageScaled[{1, 1}]], Line[{{14., 12.}, {13.853057187006925`, 11.899995224282742`}, {13.762242371019966`, 11.799993461546034`}, {13.76224487098807, 11.699994650374595`}, {13.853064686951257`, 11.599997428503688`}, {14.000012500004232`, 11.500000000052083`}, {14.14695981307159, 11.400001102131098`}, {14.237778129074286`, 11.30000059442199}, {14.237778129074286`, 11.19999940557801}, {14.14695981307159, 11.099998897868902`}, {14.000012500004232`, 10.999999999947917`}, {13.853064686951257`, 10.900002571496312`}, {13.76224487098807, 10.800005349625405`}, {13.762242371019966`, 10.700006538453966`}, {13.853057187006925`, 10.600004775717258`}, {14., 10.5}}], Inset[$CellContext`\[Gamma], {13.0548, 11.25}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQE6Dib//gOBvANDhs1rWX0dh9yYQ0+MjRUcGBiK*)
(*ds8N13HIbrs3OT0NyI84bXq+WMfh8BIFptkzQfKR0/bU6zj0Gc0yOHcGyPfI*)
(*/7ijUseBrUVLm5FB0YGhwL5wTpKOw1FdR1YTYyDf4NDPpbY6DiJ2bVfT0oD8*)
(*E81lbAI6Dgq+9htnzgTyAwTM1B5oO+QxeK44cwbI37G4c98WbYfOophD//8D*)
(*+QxaLC8mazsw1Qn/MzJWcmD4sd7Hvknbwab+TGBaGoJ/pMF43cyZSnD1/xrf*)
(*MJ49owQ3r7x3sS0DgzLcvkn/t4UbGyvD3fNg0wG/tDRluHvfHKzUmjlTGe4f*)
(*m0v7fp0+owz376/qq1f+/VeGh0fx2dTzhsYq8PCyjb7/NyVNBR6e0yoVc2bM*)
(*VIGH9+TFttJnzoDkIfHxDEyrOgAA4zmb2w==*)
(*"]], Inset[$CellContext`Z, {14.9452, 9.25}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDBNtgh3gJh4vPd0ebGCs4MBio*)
(*zbu6TsKhZg93VkYakP+hcG7RIwmHFa3xAnNmAvkKpR/dPkk43Nzxy/38GSC/*)
(*QbYr6o6Ew/KgubJMDIpA9X1P+ZZKOOiZPVprYgzkO1gwrg6TcGBLF5FPTwPy*)
(*Ezgs3/8Xd5izoG/mzJlAvkCL6e6N4g6LVl+2P3MGpL+/+1y1uMODBfXq//8D*)
(*+QuEJbdliDtkaBmFGBkrAd2rrl1QKe5wTUVqW2oakL9g+4dbi8Qd5Ldf15s5*)
(*E8hXcJ387YK4g6rd/HlnzgD5D8IrD3wUd6iMTfzy/z9If8/VZ0D7bdbrGhsb*)
(*KzswBOgU/GeUcChQzUpPSwPyC0Lr1wLD56XQDaD7QHx3k29A9TcFzp05cwbI*)
(*F5A9+RTIh4SjClxe470h0DwVuP7+m+ppaWkqcPM5j0+dMXOmCtz+IwGXgOap*)
(*wN3XvmgeNwODKtz9dw4mJBobA/kbIP6LNNW4mJYG5C+A+H/x8aees2aqwsNn*)
(*xtWzq8+eUYWHn0J8ww0GBjV4+MaF6BwwNlaDh39KfCHQfWrw+Clqff1gxkw1*)
(*ePxdPikbdPqMGjx+o9YmPfr7Xw0e/+rurDsMjNXh6SOyasH75DQgXwGSfv7o*)
(*f5k6faY6PH2tYHFZcvqMugMs/eUwg2gNBwB2hfyQ*)
(*"]], Polygon[{{6., 10.6}, {5.6, 9.4}, {6.4, 9.4}}], Inset[$CellContext`W, {6.9452, 10.}, ImageScaled[{0, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[QFTSymbols`d, {10., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{13.5, 10.}, {14.5, 11.}}], Line[{{13.5, 11.}, {14.5, 10.}}]}}, Inset[$CellContext`T39 $CellContext`P1 $CellContext`N218, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`HFlip["aebf/cgdh/ieifegfhgh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {3.088381073024935, 14.281562146049868`}, ImageScaled[{0, 0}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {2.911618926975065, 7.28156214604987}, ImageScaled[{1, 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.911618926975066`, 5.71843785395013}, ImageScaled[{1, 1}]], Line[{{14., 12.}, {13.853057187006925`, 11.899995224282742`}, {13.762242371019966`, 11.799993461546034`}, {13.76224487098807, 11.699994650374595`}, {13.853064686951257`, 11.599997428503688`}, {14.000012500004232`, 11.500000000052083`}, {14.14695981307159, 11.400001102131098`}, {14.237778129074286`, 11.30000059442199}, {14.237778129074286`, 11.19999940557801}, {14.14695981307159, 11.099998897868902`}, {14.000012500004232`, 10.999999999947917`}, {13.853064686951257`, 10.900002571496312`}, {13.76224487098807, 10.800005349625405`}, {13.762242371019966`, 10.700006538453966`}, {13.853057187006925`, 10.600004775717258`}, {14., 10.5}}], Inset[$CellContext`Z, {13.0548, 11.25}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQE6Dib//gOBvANDhs1rWX0dh9yYQ0+MjRUcGBiK*)
(*ds8N13HIbrs3OT0NyI84bXq+WMfh8BIFptkzQfKR0/bU6zj0Gc0yOHcGyPfI*)
(*/7ijUseBrUVLm5FB0YGhwL5wTpKOw1FdR1YTYyDf4NDPpbY6DiJ2bVfT0oD8*)
(*E81lbAI6Dgq+9htnzgTyAwTM1B5oO+QxeK44cwbI37G4c98WbYfOophD//8D*)
(*+QxaLC8mazsw1Qn/MzJWcmD4sd7Hvknbwab+TGBaGoJ/pMF43cyZSnD1/xrf*)
(*MJ49owQ3r7x3sS0DgzLcvkn/t4UbGyvD3fNg0wG/tDRluHvfHKzUmjlTGe4f*)
(*m0v7fp0+owz376/qq1f+/VeGh0fx2dTzhsYq8PCyjb7/NyVNBR6e0yoVc2bM*)
(*VIGH9+TFttJnzoDkIfHxDEyrOgAA4zmb2w==*)
(*"]], Inset[$CellContext`Z, {14.9452, 9.25}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDBNtgh3gJh4vPd0ebGCs4MBio*)
(*zbu6TsKhZg93VkYakP+hcG7RIwmHFa3xAnNmAvkKpR/dPkk43Nzxy/38GSC/*)
(*QbYr6o6Ew/KgubJMDIpA9X1P+ZZKOOiZPVprYgzkO1gwrg6TcGBLF5FPTwPy*)
(*Ezgs3/8Xd5izoG/mzJlAvkCL6e6N4g6LVl+2P3MGpL+/+1y1uMODBfXq//8D*)
(*+QuEJbdliDtkaBmFGBkrAd2rrl1QKe5wTUVqW2oakL9g+4dbi8Qd5Ldf15s5*)
(*E8hXcJ387YK4g6rd/HlnzgD5D8IrD3wUd6iMTfzy/z9If8/VZ0D7bdbrGhsb*)
(*KzswBOgU/GeUcChQzUpPSwPyC0Lr1wLD56XQDaD7QHx3k29A9TcFzp05cwbI*)
(*F5A9+RTIh4SjClxe470h0DwVuP7+m+ppaWkqcPM5j0+dMXOmCtz+IwGXgOap*)
(*wN3XvmgeNwODKtz9dw4mJBobA/kbIP6LNNW4mJYG5C+A+H/x8aees2aqwsNn*)
(*xtWzq8+eUYWHn0J8ww0GBjV4+MaF6BwwNlaDh39KfCHQfWrw+Clqff1gxkw1*)
(*ePxdPikbdPqMGjx+o9YmPfr7Xw0e/+rurDsMjNXh6SOyasH75DQgXwGSfv7o*)
(*f5k6faY6PH2tYHFZcvqMugMs/eUwg2gNBwB2hfyQ*)
(*"]], Polygon[{{6., 10.6}, {5.6, 9.4}, {6.4, 9.4}}], Inset[$CellContext`W, {6.9452, 10.}, ImageScaled[{0, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[QFTSymbols`d, {10., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{13.5, 10.}, {14.5, 11.}}], Line[{{13.5, 11.}, {14.5, 10.}}]}}, Inset[$CellContext`T39 $CellContext`P2 $CellContext`N219, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`HFlip["aebf/cgdh/ieifegfhgh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {3.088381073024935, 14.281562146049868`}, ImageScaled[{0, 0}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {2.911618926975065, 7.28156214604987}, ImageScaled[{1, 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.911618926975066`, 5.71843785395013}, ImageScaled[{1, 1}]], Line[{{14., 12.}, {13.952194314326334`, 11.899998446239382`}, {13.952878626281745`, 11.799998704043055`}, {13.976295868935267`, 11.699999466522051`}, {13.994285765358654`, 11.59999989987256}, {14.000012500004232`, 11.500000000052083`}, {14.000214202023926`, 11.400000001539015`}, {14.000018014587113`, 11.300000000021702`}, {14.000018014587113`, 11.199999999978298`}, {14.000214202023926`, 11.099999998460985`}, {14.000012500004232`, 10.999999999947917`}, {13.994285765358654`, 10.90000010012744}, {13.976295868935267`, 10.800000533477949`}, {13.952878626281745`, 10.700001295956945`}, {13.952194314326334`, 10.600001553760618`}, {14., 10.5}}], Polygon[{{14., 11.85}, {14.4, 10.65}, {13.6, 10.65}}], Inset[$CellContext`W, {13.0548, 11.25}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQE6Dib//gOBvAPDhMsfHqnpOFyZvu+osbGCA8OO*)
(*NyWazjoO95LqfNPTgPwfqWrz/XUcNv2rnDhrJpBvUKW1x0vHwSni15yzZ4B8*)
(*C35ecQsdhw79e50MDIoODB5Op4UUdBwu3OsoNzYG8iN2PzDh0XEIl82uSUsD*)
(*8heUqkxl1HGISfw8e+ZMIH+H7Ym9/7QdttyPO33mDJC/Yu8nw//aDotfRQLd*)
(*B+RfyNa6CuRPOipvbGys5MCgYB/xC8g/xJoGBAi+3a+ZQKAEV59n9eDMmTNK*)
(*cPPiRJcB/a0Mt89HYaGJsbEy3D1L5vGkpKUpw9278tGU5pkzleH+MVAs7zhz*)
(*Rhnu34oLimX//yvDw2P/ctZkI2MVeHj5MbblpaapwMNTaW7jphkzVeDhrZPh*)
(*aHXmDJAPjY9nYFrVAQBnlJ8C*)
(*"]], Polygon[{{14., 9.85}, {13.6, 8.65}, {14.4, 8.65}}], Inset[$CellContext`W, {14.9452, 9.25}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDAuc/XxIlHIQUNVJMjBUcGAzE*)
(*fvzfIuFwrdqqJiMNyL+gKlHzRsLhvG2IzpyZQP4Htgnf/ks4cDvczj5/BshX*)
(*yH5WDpSXPm/uysSgCNQ/f8p3oP4JP+IvmRgD+Rd4018AzZ/IzmqengbkJ3BY*)
(*vv8v7jBnQd/MmTOB/Af9Ot/mijs0VRjJnDkD5E9YmvzcS9zB0y7h+r//IPnZ*)
(*O9OFxR2W6WRcMzRWAuq/9+vlfzGHXakXxVLTQPzdC1KB8tEGAV0zZgL5Dk8N*)
(*HwP1L/pzUerMGSCf4ePD90DzpRV2rP//H8if0HP1GdB+m/W6xsbGyg4MAdte*)
(*3QW6771z57S0NCD/Qs7/V0D3N+14fmXmTCB/QqxFJtB/a8u7P585A+QLyJ58*)
(*CvQ/JBxV4PIhHSU8xsYqcP3fjCW009JU4OZ3rijLnDlTBW7/kYBLZ86cUYG7*)
(*79l99wAGBlW4++OZ9Z4aG6vC/Se7Z31pepoq3P/72vRezpqpCg+f6MvTNc+d*)
(*UYWH3/aD8zUYGdTg4VvXfvaxsbEaPPxT4gvT0tLU4PHz/MmvEzNmqsHjr4B9*)
(*ge7pM2rw+H1mcGLX3/9q8Pj/ul9lioGxOjx9GB5afTk5TR2efhYVHG2ePlMd*)
(*nr7STl+fffqMugMs/eUwg2gNBwBIrg0q*)
(*"]], Inset[$CellContext`\[Gamma], {6.9452, 10.}, ImageScaled[{0, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[$CellContext`u, {10., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[QFTSymbols`e, {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{13.5, 10.}, {14.5, 11.}}], Line[{{13.5, 11.}, {14.5, 10.}}]}}, Inset[$CellContext`T39 $CellContext`P3 $CellContext`N220, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`HFlip["aebf/cgdh/ieifegfhgh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{1.8189894035458565`*^-12, 14.999999999996362`}, {6.000000000005457, 11.999999999992724`}}], Polygon[{{3.5366563145999494`, 13.231671842700026`}, {2.2844582472000674`, 13.410557280900008`}, {2.6422291236000337`, 14.12609903369994}}], Inset[$CellContext`u, {3.088381073024935, 14.281562146049868`}, ImageScaled[{0, 0}]], Line[{{-3.637978807091713*^-12, 4.999999999996362}, {5.999999999996362, 7.999999999996362}}], Polygon[{{3.5366563145999494`, 6.768328157299974}, {2.6422291236000337`, 5.873900966300059}, {2.2844582472000674`, 6.589442719099992}}], Inset[QFTSymbols`e, {2.911618926975065, 7.28156214604987}, ImageScaled[{1, 0}]], Line[{{19.99999999999818, 15.}, {14.000000000003638`, 12.000000000003638`}}], Polygon[{{17.53665631459995, 13.768328157299974`}, {16.284458247200067`, 13.589442719099992`}, {16.642229123600035`, 12.87390096630006}}], Inset[QFTSymbols`d, {17.088381073024934`, 12.718437853950132`}, ImageScaled[{0, 1}]], Line[{{20.00000000000182, 5.}, {14.000000000001819`, 8.}}], Polygon[{{17.53665631459995, 6.231671842700025}, {16.642229123600035`, 7.1260990336999415`}, {16.284458247200067`, 6.410557280900009}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {16.911618926975066`, 5.71843785395013}, ImageScaled[{1, 1}]], Line[{{14., 12.}, {13.952194314326334`, 11.899998446239382`}, {13.952878626281745`, 11.799998704043055`}, {13.976295868935267`, 11.699999466522051`}, {13.994285765358654`, 11.59999989987256}, {14.000012500004232`, 11.500000000052083`}, {14.000214202023926`, 11.400000001539015`}, {14.000018014587113`, 11.300000000021702`}, {14.000018014587113`, 11.199999999978298`}, {14.000214202023926`, 11.099999998460985`}, {14.000012500004232`, 10.999999999947917`}, {13.994285765358654`, 10.90000010012744}, {13.976295868935267`, 10.800000533477949`}, {13.952878626281745`, 10.700001295956945`}, {13.952194314326334`, 10.600001553760618`}, {14., 10.5}}], Polygon[{{14., 11.85}, {14.4, 10.65}, {13.6, 10.65}}], Inset[$CellContext`W, {13.0548, 11.25}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQAmIQDQE6Dib//gOBvAPDhMsfHqnpOFyZvu+osbGCA8OO*)
(*NyWazjoO95LqfNPTgPwfqWrz/XUcNv2rnDhrJpBvUKW1x0vHwSni15yzZ4B8*)
(*C35ecQsdhw79e50MDIoODB5Op4UUdBwu3OsoNzYG8iN2PzDh0XEIl82uSUsD*)
(*8heUqkxl1HGISfw8e+ZMIH+H7Ym9/7QdttyPO33mDJC/Yu8nw//aDotfRQLd*)
(*B+RfyNa6CuRPOipvbGys5MCgYB/xC8g/xJoGBAi+3a+ZQKAEV59n9eDMmTNK*)
(*cPPiRJcB/a0Mt89HYaGJsbEy3D1L5vGkpKUpw9278tGU5pkzleH+MVAs7zhz*)
(*Rhnu34oLimX//yvDw2P/ctZkI2MVeHj5MbblpaapwMNTaW7jphkzVeDhrZPh*)
(*aHXmDJAPjY9nYFrVAQBnlJ8C*)
(*"]], Polygon[{{14., 9.85}, {13.6, 8.65}, {14.4, 8.65}}], Inset[$CellContext`W, {14.9452, 9.25}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQESDho//wOBvAPDAuc/XxIlHIQUNVJMjBUcGAzE*)
(*fvzfIuFwrdqqJiMNyL+gKlHzRsLhvG2IzpyZQP4Htgnf/ks4cDvczj5/BshX*)
(*yH5WDpSXPm/uysSgCNQ/f8p3oP4JP+IvmRgD+Rd4018AzZ/IzmqengbkJ3BY*)
(*vv8v7jBnQd/MmTOB/Af9Ot/mijs0VRjJnDkD5E9YmvzcS9zB0y7h+r//IPnZ*)
(*O9OFxR2W6WRcMzRWAuq/9+vlfzGHXakXxVLTQPzdC1KB8tEGAV0zZgL5Dk8N*)
(*HwP1L/pzUerMGSCf4ePD90DzpRV2rP//H8if0HP1GdB+m/W6xsbGyg4MAdte*)
(*3QW6771z57S0NCD/Qs7/V0D3N+14fmXmTCB/QqxFJtB/a8u7P585A+QLyJ58*)
(*CvQ/JBxV4PIhHSU8xsYqcP3fjCW009JU4OZ3rijLnDlTBW7/kYBLZ86cUYG7*)
(*79l99wAGBlW4++OZ9Z4aG6vC/Se7Z31pepoq3P/72vRezpqpCg+f6MvTNc+d*)
(*UYWH3/aD8zUYGdTg4VvXfvaxsbEaPPxT4gvT0tLU4PHz/MmvEzNmqsHjr4B9*)
(*ge7pM2rw+H1mcGLX3/9q8Pj/ul9lioGxOjx9GB5afTk5TR2efhYVHG2ePlMd*)
(*nr7STl+fffqMugMs/eUwg2gNBwBIrg0q*)
(*"]], Inset[$CellContext`Z, {6.9452, 10.}, ImageScaled[{0, Rational[1, 2]}]], Line[{{5.999999999999551, 12.}, {14.000000000000451`, 12.}}], Polygon[{{10.6, 12.}, {9.4, 11.6}, {9.4, 12.4}}], Inset[$CellContext`u, {10., 11.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{5.999999999999551, 8.}, {14.000000000000451`, 8.}}], Polygon[{{10.6, 8.}, {9.4, 7.6}, {9.4, 8.4}}], Inset[QFTSymbols`e, {10., 7.0548}, ImageScaled[{Rational[1, 2], 1}]], {PointSize[0.04], Point[{6., 12.}], Point[{6., 8.}], Point[{14., 12.}], Point[{14., 8.}], {Thickness[0.015], Line[{{13.5, 10.}, {14.5, 11.}}], Line[{{13.5, 11.}, {14.5, 10.}}]}}, Inset[$CellContext`T39 $CellContext`P4 $CellContext`N221, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, FeynArts`HFlip["aebf/cgdh/ieifegfhgh.m"]], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {88, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}], Polygon[{{5.599251403326707, 14.720037429833665`}, {4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 15.179463505717473`}}], Inset[$CellContext`u, {5.077403306263033, 15.693266125260656`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 5.5}}], Polygon[{{5.599251403326707, 5.279962570166336}, {4.42072364345085, 4.820536494282527}, {4.3807735498957365`, 5.619538365384802}}], Inset[QFTSymbols`e, {5.077403306263033, 4.30673387473934}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], Polygon[{{15.599251403326706`, 14.779962570166335`}, {14.380773549895737`, 15.119538365384804`}, {14.42072364345085, 14.320536494282527`}}], Inset[QFTSymbols`d, {14.922596693736967`, 15.693266125260656`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], Polygon[{{15.599251403326706`, 5.220037429833665}, {14.42072364345085, 5.6794635057174725`}, {14.380773549895737`, 4.880461634615197}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {14.922596693736967`, 4.30673387473934}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxFkl9Ik1EYxk9mGQg2C6w7t75TbftWrB2DKJhvFm5S1jIIbRWy2nFRKVGQ*)
(*hv2HuuivRrhvFRgNUy+mEpShpUHdtLOJ1MVKybqIhIJNqDUL+3pXcTxwOPzg*)
(*nPe87/M8Jl9DlT+HELIad/b8tygU6dmlADH+XpCnUljE9vhKGAUSHO+86aHA*)
(*C/ovBDjyWdexwsMUTCOOrXc05KXdW2wnKfRMnesbEcjw3u9solDR4X2cQ5YD*)
(*8ajNVw5SoHm/jqxlyJPFo+5KCskX+ck6jtwbiXjNFOJvmmpCWvb+Et937KPa*)
(*9lQIgZwY7Uu9VeDD8PoDuo6ciX7OH1TAnCplDrYCSO2Zq9PdCtwKT2/0c+R2*)
(*1eTqUqD86NDloIacmKy0P1IgsHeHHhXIhq+5Y0KBvgl+XteR7b1p9ZMC7fX0*)
(*p4OtBLKuIlP2Q4GZxie7OEdOLVucwn4ePG/RNA2ZKCfCcyh83DcQFwK5Ot0a*)
(*Rf3iQz2ooxmIu9FZhBy5sYkxhmx8l07ie3Obn3M+y4lACOvN3t/ZMIjzmmU9*)
(*B3jQD7P8r/je5jWMWWQ/u531WM8i+517qbxL0yxyntqWsXkxYZHzbjdqpwix*)
(*Sj0M1yOkhFmlXgPX4Hgdt0o9D3nnPwtpVql3YuGwiAmr9MNY+vI2Iar0q/N1*)
(*Gc6rSj8d6sUOP1el34UbvhmCmirzMJ7JbX0lVJmX/pqwe0ZXZZ6qCk5vszOb*)
(*zNuEPfZwP7fJPIamXM1tmk3mNSnu340K5P95/vL3XAV/AIxfHfg=*)
(*"]], Polygon[{{10., 12.85}, {9.6, 11.65}, {10.4, 11.65}}], Inset[$CellContext`W, {9.0548, 12.25}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxVkm1Ik1EUx6/l2/riSNiL09m8TyIho/FMKIM4LKnpB83AChYUrT1J1Aqz*)
(*ECsTVipkHyqZu5PVKBH8kMWUHEShUDD0LnuZSIm26MsEKcFlRbSnI8GNLlwO*)
(*Pzj33P855285fvaAZwMhxIp3Pf49EoiYzPr+I0HBH3sQmuYUSDM9dPoRhbdL*)
(*+y73M+TOaO+XOxRsO+OjbgU51TT27jqFqsKO+u0y8oQlONlFodI16PytlgF5*)
(*nPCd91P4vJZ9e4ojG5LW8QiF4aq0NsCQ9zc2Ds5ROFLWNeRR1vNToU2oY/mD*)
(*Q5Zl5AprfUG5BN8cLwcIQc63G9J7JNitneBxbgES7mzJbZLAfTj3eZAhH0ss*)
(*Rg9KUNMDrScV5Ap9ZKZWgtHACLHLyCuFvyRZAl85u0II8usGTaJIgvK++Zw4*)
(*3wIk9iTvWb4Erq69w4whaxeWC1CPo9qrKAoyWehxZSgEWY1NlpHDmjN2lULv*)
(*rXBGVUuBRLsnl5BXUm2MMeTkVo0W35fO2rGff/xp2zTn3CzytfpurG8W9Vq9*)
(*R7MIMYv/OL8YYqxE6Ll0g2K9EqG3brXlIefFop+xOWfaoxSLfn9G4tmqahLz*)
(*GHh1P9PPTGJebV879DbZJOZZ3bDqm+JFYt7XPl5VTihFYh+69guxjGoU+6qo*)
(*a8d+jWKfzqerEbtsFPse6dMvznCD8MOuzWvzpxSD8MtQ7bg3hxiEn/zvN7rv*)
(*Mb3w292bnsAOWS/86Ko8l/eG64RfZ73RF82KDv73sw7+ACm7E5E=*)
(*"]], Polygon[{{10., 8.35}, {10.4, 7.15}, {9.6, 7.15}}], Inset[$CellContext`W, {9.0548, 7.75}, ImageScaled[{1, Rational[1, 2]}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Circle[{12.5, 10.}, 2.5, {-3.141592653589793, 3.141592653589793}]}, Inset[$CellContext`H, {15.6952, 10.}, ImageScaled[{0, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 14.5}], Point[{10., 5.5}], {Thickness[0.015], Line[{{9.5, 9.5}, {10.5, 10.5}}], Line[{{9.5, 10.5}, {10.5, 9.5}}]}}, Inset[$CellContext`T40 $CellContext`P1 $CellContext`N222, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfggg.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {110, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}], Polygon[{{5.599251403326707, 14.720037429833665`}, {4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 15.179463505717473`}}], Inset[$CellContext`u, {5.077403306263033, 15.693266125260656`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 5.5}}], Polygon[{{5.599251403326707, 5.279962570166336}, {4.42072364345085, 4.820536494282527}, {4.3807735498957365`, 5.619538365384802}}], Inset[QFTSymbols`e, {5.077403306263033, 4.30673387473934}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], Polygon[{{15.599251403326706`, 14.779962570166335`}, {14.380773549895737`, 15.119538365384804`}, {14.42072364345085, 14.320536494282527`}}], Inset[QFTSymbols`d, {14.922596693736967`, 15.693266125260656`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], Polygon[{{15.599251403326706`, 5.220037429833665}, {14.42072364345085, 5.6794635057174725`}, {14.380773549895737`, 4.880461634615197}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {14.922596693736967`, 4.30673387473934}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxFkl9Ik1EYxk9mGQg2C6w7t75TbftWrB2DKJhvFm5S1jIIbRWy2nFRKVGQ*)
(*hv2HuuivRrhvFRgNUy+mEpShpUHdtLOJ1MVKybqIhIJNqDUL+3pXcTxwOPzg*)
(*nPe87/M8Jl9DlT+HELIad/b8tygU6dmlADH+XpCnUljE9vhKGAUSHO+86aHA*)
(*C/ovBDjyWdexwsMUTCOOrXc05KXdW2wnKfRMnesbEcjw3u9solDR4X2cQ5YD*)
(*8ajNVw5SoHm/jqxlyJPFo+5KCskX+ck6jtwbiXjNFOJvmmpCWvb+Et937KPa*)
(*9lQIgZwY7Uu9VeDD8PoDuo6ciX7OH1TAnCplDrYCSO2Zq9PdCtwKT2/0c+R2*)
(*1eTqUqD86NDloIacmKy0P1IgsHeHHhXIhq+5Y0KBvgl+XteR7b1p9ZMC7fX0*)
(*p4OtBLKuIlP2Q4GZxie7OEdOLVucwn4ePG/RNA2ZKCfCcyh83DcQFwK5Ot0a*)
(*Rf3iQz2ooxmIu9FZhBy5sYkxhmx8l07ie3Obn3M+y4lACOvN3t/ZMIjzmmU9*)
(*B3jQD7P8r/je5jWMWWQ/u531WM8i+517qbxL0yxyntqWsXkxYZHzbjdqpwix*)
(*Sj0M1yOkhFmlXgPX4Hgdt0o9D3nnPwtpVql3YuGwiAmr9MNY+vI2Iar0q/N1*)
(*Gc6rSj8d6sUOP1el34UbvhmCmirzMJ7JbX0lVJmX/pqwe0ZXZZ6qCk5vszOb*)
(*zNuEPfZwP7fJPIamXM1tmk3mNSnu340K5P95/vL3XAV/AIxfHfg=*)
(*"]], Polygon[{{10., 12.85}, {9.6, 11.65}, {10.4, 11.65}}], Inset[$CellContext`W, {9.0548, 12.25}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxVkm1Ik1EUx6/l2/riSNiL09m8TyIho/FMKIM4LKnpB83AChYUrT1J1Aqz*)
(*ECsTVipkHyqZu5PVKBH8kMWUHEShUDD0LnuZSIm26MsEKcFlRbSnI8GNLlwO*)
(*Pzj33P855285fvaAZwMhxIp3Pf49EoiYzPr+I0HBH3sQmuYUSDM9dPoRhbdL*)
(*+y73M+TOaO+XOxRsO+OjbgU51TT27jqFqsKO+u0y8oQlONlFodI16PytlgF5*)
(*nPCd91P4vJZ9e4ojG5LW8QiF4aq0NsCQ9zc2Ds5ROFLWNeRR1vNToU2oY/mD*)
(*Q5Zl5AprfUG5BN8cLwcIQc63G9J7JNitneBxbgES7mzJbZLAfTj3eZAhH0ss*)
(*Rg9KUNMDrScV5Ap9ZKZWgtHACLHLyCuFvyRZAl85u0II8usGTaJIgvK++Zw4*)
(*3wIk9iTvWb4Erq69w4whaxeWC1CPo9qrKAoyWehxZSgEWY1NlpHDmjN2lULv*)
(*rXBGVUuBRLsnl5BXUm2MMeTkVo0W35fO2rGff/xp2zTn3CzytfpurG8W9Vq9*)
(*R7MIMYv/OL8YYqxE6Ll0g2K9EqG3brXlIefFop+xOWfaoxSLfn9G4tmqahLz*)
(*GHh1P9PPTGJebV879DbZJOZZ3bDqm+JFYt7XPl5VTihFYh+69guxjGoU+6qo*)
(*a8d+jWKfzqerEbtsFPse6dMvznCD8MOuzWvzpxSD8MtQ7bg3hxiEn/zvN7rv*)
(*Mb3w292bnsAOWS/86Ko8l/eG64RfZ73RF82KDv73sw7+ACm7E5E=*)
(*"]], Polygon[{{10., 8.35}, {10.4, 7.15}, {9.6, 7.15}}], Inset[$CellContext`W, {9.0548, 7.75}, ImageScaled[{1, Rational[1, 2]}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Circle[{12.5, 10.}, 2.5, {-3.141592653589793, 3.141592653589793}]}, Inset[FeynArts`G^0, {15.6952, 10.}, ImageScaled[{0, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 14.5}], Point[{10., 5.5}], {Thickness[0.015], Line[{{9.5, 9.5}, {10.5, 10.5}}], Line[{{9.5, 10.5}, {10.5, 9.5}}]}}, Inset[$CellContext`T40 $CellContext`P2 $CellContext`N223, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfggg.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {132, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}], Polygon[{{5.599251403326707, 14.720037429833665`}, {4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 15.179463505717473`}}], Inset[$CellContext`u, {5.077403306263033, 15.693266125260656`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 5.5}}], Polygon[{{5.599251403326707, 5.279962570166336}, {4.42072364345085, 4.820536494282527}, {4.3807735498957365`, 5.619538365384802}}], Inset[QFTSymbols`e, {5.077403306263033, 4.30673387473934}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], Polygon[{{15.599251403326706`, 14.779962570166335`}, {14.380773549895737`, 15.119538365384804`}, {14.42072364345085, 14.320536494282527`}}], Inset[QFTSymbols`d, {14.922596693736967`, 15.693266125260656`}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], Polygon[{{15.599251403326706`, 5.220037429833665}, {14.42072364345085, 5.6794635057174725`}, {14.380773549895737`, 4.880461634615197}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {14.922596693736967`, 4.30673387473934}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJxFkl9Ik1EYxk9mGQg2C6w7t75TbftWrB2DKJhvFm5S1jIIbRWy2nFRKVGQ*)
(*hv2HuuivRrhvFRgNUy+mEpShpUHdtLOJ1MVKybqIhIJNqDUL+3pXcTxwOPzg*)
(*nPe87/M8Jl9DlT+HELIad/b8tygU6dmlADH+XpCnUljE9vhKGAUSHO+86aHA*)
(*C/ovBDjyWdexwsMUTCOOrXc05KXdW2wnKfRMnesbEcjw3u9solDR4X2cQ5YD*)
(*8ajNVw5SoHm/jqxlyJPFo+5KCskX+ck6jtwbiXjNFOJvmmpCWvb+Et937KPa*)
(*9lQIgZwY7Uu9VeDD8PoDuo6ciX7OH1TAnCplDrYCSO2Zq9PdCtwKT2/0c+R2*)
(*1eTqUqD86NDloIacmKy0P1IgsHeHHhXIhq+5Y0KBvgl+XteR7b1p9ZMC7fX0*)
(*p4OtBLKuIlP2Q4GZxie7OEdOLVucwn4ePG/RNA2ZKCfCcyh83DcQFwK5Ot0a*)
(*Rf3iQz2ooxmIu9FZhBy5sYkxhmx8l07ie3Obn3M+y4lACOvN3t/ZMIjzmmU9*)
(*B3jQD7P8r/je5jWMWWQ/u531WM8i+517qbxL0yxyntqWsXkxYZHzbjdqpwix*)
(*Sj0M1yOkhFmlXgPX4Hgdt0o9D3nnPwtpVql3YuGwiAmr9MNY+vI2Iar0q/N1*)
(*Gc6rSj8d6sUOP1el34UbvhmCmirzMJ7JbX0lVJmX/pqwe0ZXZZ6qCk5vszOb*)
(*zNuEPfZwP7fJPIamXM1tmk3mNSnu340K5P95/vL3XAV/AIxfHfg=*)
(*"]], Polygon[{{10., 12.85}, {9.6, 11.65}, {10.4, 11.65}}], Inset[$CellContext`W, {9.0548, 12.25}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxVkm1Ik1EUx6/l2/riSNiL09m8TyIho/FMKIM4LKnpB83AChYUrT1J1Aqz*)
(*ECsTVipkHyqZu5PVKBH8kMWUHEShUDD0LnuZSIm26MsEKcFlRbSnI8GNLlwO*)
(*Pzj33P855285fvaAZwMhxIp3Pf49EoiYzPr+I0HBH3sQmuYUSDM9dPoRhbdL*)
(*+y73M+TOaO+XOxRsO+OjbgU51TT27jqFqsKO+u0y8oQlONlFodI16PytlgF5*)
(*nPCd91P4vJZ9e4ojG5LW8QiF4aq0NsCQ9zc2Ds5ROFLWNeRR1vNToU2oY/mD*)
(*Q5Zl5AprfUG5BN8cLwcIQc63G9J7JNitneBxbgES7mzJbZLAfTj3eZAhH0ss*)
(*Rg9KUNMDrScV5Ap9ZKZWgtHACLHLyCuFvyRZAl85u0II8usGTaJIgvK++Zw4*)
(*3wIk9iTvWb4Erq69w4whaxeWC1CPo9qrKAoyWehxZSgEWY1NlpHDmjN2lULv*)
(*rXBGVUuBRLsnl5BXUm2MMeTkVo0W35fO2rGff/xp2zTn3CzytfpurG8W9Vq9*)
(*R7MIMYv/OL8YYqxE6Ll0g2K9EqG3brXlIefFop+xOWfaoxSLfn9G4tmqahLz*)
(*GHh1P9PPTGJebV879DbZJOZZ3bDqm+JFYt7XPl5VTihFYh+69guxjGoU+6qo*)
(*a8d+jWKfzqerEbtsFPse6dMvznCD8MOuzWvzpxSD8MtQ7bg3hxiEn/zvN7rv*)
(*Mb3w292bnsAOWS/86Ko8l/eG64RfZ73RF82KDv73sw7+ACm7E5E=*)
(*"]], Polygon[{{10., 8.35}, {10.4, 7.15}, {9.6, 7.15}}], Inset[$CellContext`W, {9.0548, 7.75}, ImageScaled[{1, Rational[1, 2]}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Circle[{12.5, 10.}, 2.5, {-3.141592653589793, 3.141592653589793}]}, Polygon[{{15., 9.4}, {15.4, 10.6}, {14.6, 10.6}}], Inset[FeynArts`G, {15.9452, 10.}, ImageScaled[{0, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 14.5}], Point[{10., 5.5}], {Thickness[0.015], Line[{{9.5, 9.5}, {10.5, 10.5}}], Line[{{9.5, 10.5}, {10.5, 9.5}}]}}, Inset[$CellContext`T40 $CellContext`P3 $CellContext`N224, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfggg.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {154, 0}, {0, 0}, {22, 22}]}, AspectRatio -> Rational[1, 2], ImagePadding -> {{0., 0.}, {0., 0.}}, ImageSize -> {512, 256}, PlotRange -> {{0., 176.}, {0., 88.}}, PlotRangePadding -> Automatic]*)


(*Export["/home/ana/Desktop/ctp.pdf",Show@Paint[ct]];*)


(* ::Section::Closed:: *)
(*generate amplitudes*)


ctamp[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[ct,{j}],GaugeRules -> {}],
IncomingMomenta->{p1,p2},OutgoingMomenta->{p3,p4},LoopMomenta->{q1},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->False,UndoChiralSplittings->False]


(* ::Section::Closed:: *)
(*counterterm  amplitude - MUON*)


(*ctbox0 = Table[ctamp[i], 
   {i, Join[Range[21, 25], Range[32, 37], Range[44, 49], Range[58,62], Range[179, 186]]}
];*)


(*ctbox1 = Table[Flag[tadct]*ctamp[i], 
   {i, Join[Range[171, 178],Range[187, 194]]}
];*)


(*ctbox = Join[ctbox0, ctbox1];*)


(*ctbox//Length*)


(*Union@Cases[ctbox, Flag[__], Infinity]*)


(* ::Section::Closed:: *)
(*counterterm amplitude quark*)


ctbox0 = Table[ctamp[i], 
   {i, Join[Range[24, 31], Range[38, 43], Range[48, 53], Range[66,71], Range[203, 211]]}
];



ctbox1 = Table[Flag[tadctq]*ctamp[i], 
   {i, Join[Range[192, 202], Range[212, 221]]}
];


ctbox = Join[ctbox0, ctbox1];


ctbox//Length


Union@Cases[ctbox, Flag[__], Infinity]


(* ::Section::Closed:: *)
(*convert  notation*)


amp=ctbox/.
Conjugate[dZfL1[1,1,1]]->dZfL1[1,1,1]/.
Conjugate[dZfL1[2,1,1]]->dZfL1[2,1,1]/.
Conjugate[dZfL1[3,1,1]]->dZfL1[3,1,1]/.
Conjugate[dZfL1[4,1,1]]->dZfL1[4,1,1]/.
Conjugate[dZfL1[1,2,2]]->dZfL1[1,2,2]/.
Conjugate[dZfL1[2,2,2]]->dZfL1[2,2,2]/.
Conjugate[dZfL1[4,gn,1]]->dZfL1[4,gn,1]/.
Conjugate[dZfR1[__]]:> 0/.
dZfR1[__]:>0;


Union@Cases[amp,_Conjugate,Infinity]


amp1=simpspinor@coupl@masses1@amp;


amp2=massestozero@extmomzero@amp1;


amp3=auxfrac@split@amp2;


Union@Cases[amp3, _qs, Infinity]


amp4=cdl@diracgamma2@diracgamma@momentum@amp3;


(*some checks*)
Union@Cases[amp4,_Dot,Infinity]
Union@Cases[amp4,_mDot,Infinity]
Union@Cases[amp4,_DiracTrace,Infinity]
Union@Cases[amp4,_DiracGamma,Infinity]
Union@Cases[amp4, _qs, Infinity]
Union@Cases[amp4,_exdL,Infinity];


(*traces part missing here - but there are no traces for now*)


(* ::Section::Closed:: *)
(*dirac  standard  order*)


(*convert to Feynman Gauge*)
amp4fg = amp4/.\[Xi]w->1/.\[Xi]A->1/.\[Xi]z->1;


amp5=amp4fg/.{Lor1->1, Lor2->2, Lor3->3, Lor4->4, Lor5->5, Lor6->6};


(*amp5=amp4/.{Lor1->1, Lor2->2, Lor3->3, Lor4->4, Lor5->5, Lor6->6};*)


Union@Cases[amp5, _q, Infinity]
Union@Cases[amp5, _gamma, Infinity]


amp6=amp5/.exdL->exdL1/.exdL1->stexdL;


amp7=Expand[offslash@amp6];


(*
function that returns all the exdL so that I can see if they only have gamma inside
*)
Clear[checkdL]

checkdL = Cases[amp7,_stexdL, Infinity];

Cases[checkdL,_q,Infinity] (*dirac line is free of any momenta*)
Cases[checkdL,q1,Infinity] (*dirac line is free of any momenta*)
Cases[checkdL,_qslash,Infinity] (*dirac line is free of any qslash*)
Cases[checkdL,_DiracGamma,Infinity] 


(* ::Section::Closed:: *)
(*shift  momentum*)


Union@Cases[amp7,_ampden,Infinity]//TableForm


(*no need to change anything*)


(* ::Section::Closed:: *)
(*tensor  reduction and metric*)


amp8=Expand@amp7;


amp10=Expand[amp8]/.q[i_,j_]->tredh[q[i,j]];


amp11 = amp10/.tredh->tred;


Union@Cases[amp11,_tred,Infinity]
Union@Cases[amp11,_sp,Infinity]
Union@Cases[amp11,_q,Infinity]


amp12 = oper[Expand[amp11]];


(*
function that returns all the diagrams that contain metric
*)
Clear[t];
t = Table[
  With[{dia = amp12[[i]]},
   If[MemberQ[dia, _mt, Infinity], i, 0]],
  {i, Length[amp11]}];
t
Length[t]


(* ::Section::Closed:: *)
(*integral  reduction*)


amp14 = (*Expand@*)amp12/.{ampden[a___]->sampden[a]};


amp15 = Expand[spt@amp14];


amp16 = convertden@amp15;


Union@Cases[amp16,_q,Infinity]
Union@Cases[amp16,_spaux,Infinity]
Union@Cases[amp16,_sp,Infinity]
Union@Cases[amp16,_sampden,Infinity]
Length[amp16];


dens=Union@Cases[amp16,_auxden,Infinity];


dens1 = dens/.auxden->auxdensimp;


t4=standint@dens1;


t5=t4/.toaux;


t6=t5/.{q12->qs[1],q22->qs[2],q122->qs[3]};


t7 = Table[ apartMom[t6[[i]],1],
   {i, Length[t6]}
];


t8 = Table[ t7[[i]]/.{qs[1]->q12,qs[2]->q22,qs[3]->q122},
   {i, Length[t7]}
];


t9=totad@t8;


Union@Cases[t9,q12,Infinity]
Union@Cases[t9,q22,Infinity]
Union@Cases[t9,q122,Infinity]
Union@Cases[t9,qs[1],Infinity]
Union@Cases[t9,qs[2],Infinity]
Union@Cases[t9,qs[3],Infinity]


rules = Thread[dens -> t9];


amp17 = amp16 /. rules;


(* ::Section::Closed:: *)
(*extract  masters*)


Clear[tadcases]
tadcases=Union@Cases[amp17,_tad,Infinity]
Length[tadcases]


Clear[tad1]

tad1/: tad1[{Null,j_,k_},{a_,b_,c_}]:=tad1[{0,j,k},{a,b,c}]
tad1/: tad1[{i_,Null,k_},{a_,b_,c_}]:=tad1[{i,0,k},{a,b,c}]
tad1/: tad1[{i_,j_,Null},{a_,b_,c_}]:=tad1[{i,j,0},{a,b,c}]

tad1/: tad1[{m_,m_,m_},{a_,b_,c_}]:=tad1[{m1,m1,m1},{a,b,c}]/;(m=!=m1&&m=!=0)
tad1/: tad1[{m_,m_,0},{a_,b_,c_}]:=tad1[{m1,m1,0},{a,b,c}]/; (m=!=m1&&m=!=0)
tad1/: tad1[{0,m_,m_},{a_,b_,c_}]:=tad1[{0,m1,m1},{a,b,c}]/; (m=!=m1&&m=!=0)
tad1/: tad1[{m_,0,m_},{a_,b_,c_}]:=tad1[{m1,0,m1},{a,b,c}]/; (m=!=m1&&m=!=0)

tad1/: tad1[{m_,0,0},{a_,b_,c_}]:=tad1[{m1,0,0},{a,b,c}]/;(m=!=m1&&m=!=0)
tad1/: tad1[{0,m_,0},{a_,b_,c_}]:=tad1[{0,m1,0},{a,b,c}]/; (m=!=m1&&m=!=0)
tad1/: tad1[{0,0,m_},{a_,b_,c_}]:=tad1[{0,0,m1},{a,b,c}]/; (m=!=m1&&m=!=0)

tad1/: tad1[{m_,M_,0},{a_,b_,c_}]:=tad1[{m1,m2,0},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)
tad1/: tad1[{0,m_,M_},{a_,b_,c_}]:=tad1[{0,m1,m2},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)
tad1/: tad1[{m_,0,M_},{a_,b_,c_}]:=tad1[{m1,0,m2},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)

tad1/: tad1[{m_,M_,m_},{a_,b_,c_}]:=tad1[{m1,m2,m1},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)
tad1/: tad1[{m_,m_,M_},{a_,b_,c_}]:=tad1[{m1,m1,m2},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)
tad1/: tad1[{M_,m_,m_},{a_,b_,c_}]:=tad1[{m2,m1,m1},{a,b,c}]/;(m=!=m1&&m=!=0&&M=!=m2&&M=!=0)

tad1/: tad1[{ma_,mb_,mc_},{a_,b_,c_}]:=tad1[{m1,m2,m3},{a,b,c}]/;(ma=!=0&&mb=!=0&&mc=!=0&&ma=!=m1&&mb=!=m2&&mc=!=m3)

tad1/: tad1[{0,0,0},{a_,b_,c_}] := 0


Clear[tadcases1]
tadcases1 = tadcases/.tad[a___]->tad1[a];
tadforms=Union@Cases[tadcases1,_tad1,Infinity];
tadforms2=tadforms/.tad1[a___]->tads[a]
Length[%]


c1=Cases[tadforms2,tads[{i_,0,0},{a_,b_,c_}],Infinity]


(* ::Section::Closed:: *)
(*prepare  for  FIRE and load master rules*)


c1/.{tads[{m_,0,0},{n_,0,0}]->tads[{m},{n}]}
f1=c1/.{tads[{m_,0,0},{n_,0,0}]->tads[{m},{n}]}/.tads[a_,b_]->{1,b}


mf1=Get["/home/ana/Documents/GitHub/Leptonic-and-Semileptonic-decays/2loop/new trial_currently working on it/mastersct1.m"]/.
{G[a_,b_]->mtad[{m1,0,0},b]}/.{mtad[{i_,0,0},{a_}]->mtad[{i,0,0},{a,0,0}]}/.{mtad[i_,j_]->Mtad[i,j]}


mf1a = Table[
  ReplacePart[mf1[[i]], 1 -> mf1[[i, 1]] /. Mtad[{m1 , 0, 0}, a_] :> Mtad[{m1_ /; m1 =!=0, 0, 0}, a]],
  {i, Length[mf1]}
];


(* ::Section::Closed:: *)
(*substitution  in  the  amplitude*)


del[arg_]:=arg/.{IndexDelta[a_,b_]->delta[a,b]}/.IndexSum[exp_, {gn_, range_}] :> Total[Table[exp /. gn -> j, {j, range}]]/.
{delta[a_,a_]:>1,delta[a_,b_]:>0/;a=!=b}


Clear[Mtad]
Mtad/: Mtad[{Null,j_,k_},{a_,b_,c_}]:=Mtad[{0,j,k},{a,b,c}]
Mtad/: Mtad[{i_,Null,k_},{a_,b_,c_}]:=Mtad[{i,0,k},{a,b,c}]
Mtad/: Mtad[{i_,j_,Null},{a_,b_,c_}]:=Mtad[{i,j,0},{a,b,c}]
Mtad/: Mtad[{0,0,0},{a_,b_,c_}]:=0


amp17a=del@amp17/.tad->Mtad/. Mtad[{a_, _, _}, b_] :> Mtad[{a, 0, 0}, b];


Union@Cases[amp17a,_Mtad,Infinity]


amp17a//Length


amp18 = Table[If[Head[amp17a[[i]]]===List,Total@amp17a[[i]],amp17a[[i]]],{i,Length[amp17a]}]//Collect[#,Mtad[__]]&;


amp20 = amp18/.mf1a;


amp21 = amp20/.Mtad[{a_,0,0},{b_,0,0}]:>Mtad[{a},{b}];


amp21//Length


Union@Cases[amp21, _Mtad, Infinity]


(*Export["/home/ana/Desktop/results/ctmuonmaster.m",amp21];*)


(* ::Section::Closed:: *)
(*substitution  renormalisation  constants*)


renfunc[x_]:=x/.{dSW1->dzsw}/.{dMWsq1->dzmw}/.{dZe1->dze}/.{dZfL1[1,2,2]->dzneut}/.
{Conjugate[dZfL1[2,2,2]]->dzele}/.dZfL1[2,2,2]->dzele/.{dZfL1[2,1,1]->dzele}/.
{Conjugate[dZfL1[1,1,1]]->dzneut}/.dZfL1[1,1,1]->dzneut/.dZfL1[4,1,1]:>dzd/.dZfL1[3,1,1]:>dzu


dze=(\[Alpha]/4/Pi * 11/6/e);

dzmw=(-(((9*MH^4 + MH^2*(56*MW^2 - 9*MZ^2) + 18*(2*MW^4 + MZ^4))/
    (48*MH^2*sw^2) + ((-4*MT^4 + MH^2*(MT^2 - 2*MW^2))*nc)/(8*MH^2*sw^2))*
  \[Alpha])/(Pi*e)) flag[mw]/.{nc->3}//Collect[#,{\[Alpha]/e/Pi,1/sw^2},Expand]&;
  
  dzswsq=((\[Alpha] ((11 sw^2)/12+19/24))/(Pi e));
  
  dzsw =((\[Alpha] ((5 MW^2)/(24 MZ^2 sw^3)-5/(24 sw^3)+(11 sw)/24+29/(48 sw)))/(Pi e));
  
  dzele=((\[Alpha]*(-1/4*\[Xi]A - \[Xi]w/(8*sw^2) + \[Xi]z/4 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*e));
 
 dzneut=((\[Alpha]*(-1/8*\[Xi]w/sw^2 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*e));
  
dzphoton = ((\[Alpha] (-\[Xi]w/4-5/3))/(Pi e));
 
dzu = ((\[Alpha] (\[Xi]z/(18 cw^2)-\[Xi]z/(16 cw^2 sw^2)-\[Xi]A/9+\[Xi]z/9-\[Xi]w/(8 sw^2)))/(Pi e));
 

dzd = ((\[Alpha] (\[Xi]z/(18 cw^2)-\[Xi]z/(16 cw^2 sw^2)-\[Xi]A/36+\[Xi]z/36-\[Xi]w/(8 sw^2)))/(Pi e));

dzele=((\[Alpha]*(-1/4*\[Xi]A - \[Xi]w/(8*sw^2) + \[Xi]z/4 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*e));
 
dzneut=((\[Alpha]*(-1/8*\[Xi]w/sw^2 - \[Xi]z/(16*cw^2*sw^2)))/(Pi*e));

 
dzw= flagw[w]( ((19-6 nc) \[Alpha])/(24 \[Pi] sw^2 e)-(\[Alpha] \[Xi]A)/(8 \[Pi] e)-(\[Alpha] \[Xi]w)/(8 \[Pi] sw^2 e)-(cw^2 \[Alpha] \[Xi]z)/(8 \[Pi] sw^2 e));

dzzz = \[Alpha]/4/Pi/e (49/6/cw^2 - 43/12/cw^2/sw^2 + 17 cw^2/4/sw^2 - 131 sw^2/12/cw^2 - cw^2 \[Xi]w /sw^2);

dzmz = \[Alpha]/4/Pi/e (MZ^2)(29/6/cw^2 - 11/12/sw^2/cw^2 + 
11/3 sw^2/cw^2 - 3/2/sw^2/cw^2 MT^2/MZ^2 - 3/4/sw^2/cw^2 MH^2/MZ^2 + flg[ykandtad] 6/sw^2/cw^2 MT^4/MZ^2/MH^2 -
3/2/sw^2/cw^2 MZ^2/MH^2 - 3/sw^2 MZ^2/MH^2 + 3 MZ^2/MH^2) flag[mz];

dzza = \[Alpha]/4/Pi/e (3 cw/sw + cw/sw \[Xi]w);

dzaz = \[Alpha]/4/Pi/e (-82/3/cw/sw + 71/3 cw/sw + 3 cw/sw \[Xi]w);

dzmwpaper = \[Alpha]/4/Pi/e MW^2 (3/4 - 11/12/sw^2 + 3/4 sw^2/cw^2 - 3/2/sw^2 MT^2/MW^2 - 
3/4/sw^2 MH^2/MW^2 + 6/sw^2 MT^4/MW^2/MH^2 - 3/2/sw^2/cw^4 MW^2/MH^2 - 3 MW^2/sw^2/MH^2);


(*dzmw/.flag[__]:>1
dzmwpaper
%-%%/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify*)


Union@Cases[amp21, nc, Infinity]
Union@Cases[amp21, mass[__], Infinity]


(*amp22 = renfunc@amp21/.el->EL/.mass[x__]:>x/.dZAA1->dzphoton/.dZW1:>flag[w] dzw/.dZZZ1->dzzz/.dMZsq1:> flag[mz] dzmz/.
dZZA1:>dzza/.dZAZ1:>dzaz/.\[Alpha]->EL^2/4/Pi/.flag[w]:>1//
Collect[#, {Op, Ev3, EL^6, 1/e^2, 1/e, Log[__], Phi[__]}(*, Simplify*)]&;*)


(* ::Section:: *)
(*analytical*)


defoperm[x_]:=x/.{Ev3->Ev3 + (16 - a1mu e)Op}/.{Ev5->Ev5 + (256-b1mu e)Op + cmu1 Ev3}
defoperq[x_]:=x/.{Ev3->Ev3 + (16 - a1q e)Op}/.{Ev5->Ev5 + (256-b1q e)Op + cq1 Ev3}


masters=Union@Cases[amp21,_Mtad,Infinity]/.mass[x__]:>x;


analymaster=Series[masters/.Mtad->analyticTad,{e,0,0}]//Normal;


rulesanalyt=Thread[masters -> analymaster];


rulesanalyt


amp22=amp21/.mass[x_]:>x;


(*Coefficient[amp22[[1]],Ev3]//Simplify*)


(*only run this part if I want the analytical amplitudes
before plug in the renormalization constants*)

amp23analytbfren = Table[
  Print[i];
  Normal[Series[amp22[[i]]/.d->4-2e/.rulesanalyt, {e, 0, -1 }]]
, {i, Length[amp22]}];


Coefficient[Total@Coefficient[amp23analytbfren,Ev3],e,-1]//Collect[#, {1/e},Simplify]&


(*Coefficient[amp23analytbfren, Ev3]/.Flag[__]:>1/.flag[__]:>1/.flg[__]:>1;*)


(*plug in the renormalization constants*)
(*here when computing in feynman gauge, we nned to set xi to 1 again
because the renormalization constants are xi dependent*)

amp23 = renfunc@amp22/.el->EL/.mass[x__]:>x/.dZAA1->dzphoton/.dZW1:>flag[w] dzw/.dZZZ1->dzzz/.dMZsq1:> flag[mz] dzmz/.
dZZA1:>dzza/.dZAZ1:>dzaz/.\[Alpha]->EL^2/4/Pi/.flag[w]:>1/.{\[Xi]w->1, \[Xi]z->1, \[Xi]A->1}/.Flag[__]:>1/.flg[__]:>1/.flagw[__]:>1/.flag[__]:>1//
Collect[#, {Op, Ev3, EL^6, 1/e^2, 1/e, Log[__], Phi[__]}(*, Simplify*)]&;


amp23//Length


(*Table[If[Not@FreeQ[amp23[[i]], MH],i,0], {i, Length[amp22]}]*)


(*FEYNMAN GAUGE -  NEEDS CORRECTIONG*)
amp24 = Table[
  (*Print[i];*)
  res1=Normal[Series[amp23[[i]]/.d->4-2e/.rulesanalyt, {e, 0, 0}]];
  res2 = defoperm[res1];
  res3 = res2//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}(*,Simplify*)]&(*;
  Export[direc <> "/Results/Renormalisation/2loop/feyn/counterterm" <> ToString[i] <> ".m", res3]*)
, {i, Length[amp23]}];


(*rxi*)
(*amp24 = Table[
  (*Print[i];*)
  res1=Normal[Series[amp23[[i]]/.d->4-2e/.rulesanalyt, {e, 0, 0}]];
  res2 = defoperm[res1];
  res3 = res2//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}(*,Simplify*)]&;
  Export[direc <> "/Results/Renormalisation/2loop/rxi/counterterm" <> ToString[i] <> ".m", res3]
, {i, Length[amp23]}];*)


amp25 = Total[amp24]//Collect[#, {Op, Ev3, 1/e^2, 1/e, Log[__], Phi[__]}]&;


test = Get["/home/ana/Desktop/ctquarkr.m"];


Coefficient[Coefficient[amp25, Ev3],e,-2]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify
Coefficient[Coefficient[test, Ev3],e,-2]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.Flag[__]:>1/.flag[__]:>1//Simplify
%/%%//Simplify


Coefficient[Coefficient[amp25, Ev3],e,-1]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ//Simplify
Coefficient[Coefficient[test, Ev3],e,-1]/.sw->Sqrt[1-cw^2]/.cw->MW/MZ/.Flag[__]:>1/.flag[__]:>1/.flg[__]:>1//Simplify
%/%%//Simplify


(*amp25noflag = amp25/.Flag[__]:>1/.flg[__]:>1/.flagw[__]:>1/.flag[__]:>1;*)


(*Export["/home/ana/Desktop/ctmuonr.m",amp27];*)


(*Export["/home/ana/Desktop/ctquarkr.m",amp27];*)


(* ::Section::Closed:: *)
(*comparison feyn gauge*)


(*Clear[ratio]
ratio/: ratio[a_, b_]:=a/b;*)


(*tomass[x_]:=x/.sw->Sqrt[1-cw^2]/.cw->MW/MZ;*)


(*k = Get["/home/ana/Desktop/compkai/counterterms/2lmu_box_ctinserted.m"][[1]]/.
S[E1mu]->Ev3/.S[Qmu]->Op/.pi->Pi/.rat->ratio/.ep->e/.Mt->MT/.el->EL/.
Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b]);*)


(*kfeyn = k/.xiqa->1/.xiqz->1/.xiqw->1;*)


(*Coefficient[Coefficient[kfeyn, Ev3],e,-2];
Coefficient[Coefficient[amp25, Ev3],e,-2];
tomass[%/%%]//Simplify*)


(*Coefficient[Coefficient[kfeyn, Ev3],e,-1];
Coefficient[Coefficient[amp25, Ev3],e,-1];
tomass[%/%%]//Simplify*)


(*Coefficient[kfeyn, Ev3]+tomass@Coefficient[amp25, Ev3]//Simplify*)


(*tomass@Coefficient[amp25, Ev3]//Collect[#, {1/e},Simplify]&*)


(*Coefficient[kfeyn, Ev3]//Collect[#, {1/e},Simplify]&*)


(*anaold =tomass@ Get["/home/ana/Desktop/ctmuonr.m"]/.flg[__]:>1/.Flag[__]:>1/.flag[__]:>1;*)


(*Coefficient[anaold, Ev3]//Collect[#, {1/e},Simplify]&
tomass@Coefficient[amp25, Ev3]//Collect[#, {1/e},Simplify]&*)


(*Coefficient[Coefficient[kfeyn, Op],1/e^2];
Coefficient[Coefficient[amp25, Op],1/e^2];
tomass[%/%%]//Simplify*)


(*Coefficient[Coefficient[kfeyn, Op],1/e];
Coefficient[Coefficient[amp25, Op],1/e];
tomass[%+%%]//Simplify*)


(* ::Section:: *)
(*comparison rxi*)
