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


ct = InsertFields[
CreateCTTopologies[2,2 -> 2,ExcludeTopologies->{WFCorrections,WFCorrectionCTs}], 
{F[2,{2}] ,F[1,{1}] } -> {F[1,{2}],F[2,{1}]},
InsertionLevel ->{Particles}, 
Model->"SM", 
Restrictions -> {NoLightFHCoupling}
];

draw = Paint[ct, ColumnsXRows -> {8, 4}, 
SheetHeader->None,ImageSize->{512,256}
];


(* ::Print:: *)
(*Graphics[{Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{11.999999999996362`, 10.}, {9.999999999998181, 12.000000000001819`}}]}, Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[FeynArts`G, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bfa0KuZTIil/2Z3C/1p5T93DKeRntQS/1bI+WfSy0hRblH*)
(*InsRa9KKmnhxy60pD/7lMreS8chkymQhl/j+c+p0+nQeTqdvvL65uk5CCIlB*)
(*i/O/GEo8v6hYStRnW0oVbFJt/fjHUTJ73ajpgPn6vE857HVLOBs8/m4MyYI9*)
(*ly7uHDaoQnOr4JnHi4wXmATph7vgPpsyzDeRkoWCdGEZ7vGfFiLhmZ4b9h6+*)
(*kHUGZsKHziJ5VDwl29ut1ko49HLdWg4vDhbW8PDNpjG8Gd5nI3Im4AYhk5uE*)
(*HcUb/Wtwy05C9jqslXn1TnFv7mh3wl5b7dcvHKidk5IESob0A4NMEiVWd4CZ*)
(*gUeLb4/VcNZOeWcFbGIdFh7OFx6OmmCmbORxHNa0781Pwp4UtW4DpiVjulVx*)
(*z+y67uBod/+rA+a6FUKkEn++Gdh7WL1/xmpgXnv19AFLX81tvbAhPPU0WIH7*)
(*9ufDJZikyC1psNFvxHMC+8l+LFrYNHXg44K5RNPyAMzbSyVv8Ep66ZUdlor5*)
(*JVPyLeanoH/+m6dD*)
(*"]], Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[$CellContext`W, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{10., 12.000000000001556`}, {10., 7.999999999998444}}]}, Inset[$CellContext`H, {9.3048, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P3 $CellContext`N97, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {0, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`\[Gamma], {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{12.000000000001819`, 9.999999999998181}, {10., 7.999999999996362}}]}, Inset[FeynArts`G^0, {10.685561184457487`, 9.314438815542513}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{10., 12.000000000001556`}, {10., 7.999999999998444}}]}, Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[FeynArts`G, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P1 $CellContext`N98, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {22, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`Z, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{12.000000000001819`, 9.999999999998181}, {10., 7.999999999996362}}]}, Inset[FeynArts`G^0, {10.685561184457487`, 9.314438815542513}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{10., 12.000000000001556`}, {10., 7.999999999998444}}]}, Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[FeynArts`G, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P2 $CellContext`N99, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {44, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwT7Hf/5VRxYDig63LjgLoD*)
(*Q06a+S8JID9Fdcr6NiC/53sJvwGQzyPyd34ISN5ewDgQyBfQkpivA+T/4Unq*)
(*rAHyc0S1L/IB+RusdU+uB/JrQm68+aHmwDCn4Y7ZMyC/5VuK2TMg/8ZtRwkp*)
(*VQcGldetny8A+QJXty9xB/I9nPuitwL5V3aViOYD+TEVB5dPBvILTuonTAby*)
(*LU6+OJsH5OfsVTLcDuLvda/yBPHnVlbcBvI3vOaeqwLkc4QsYmEAmQulV0DF*)
(*C6DqDKD6KqDmmEDNLYHaEwC19w7UHS5Qd4lA3akAdfcdqD9qoP5aAPVnCdTf*)
(*O6DhAAsXHl5IOPFAw60EGo4c0HCdAA3nEGi4l0DjYQc0XmZA4+kHKP6AfDBQ*)
(*cQAAWfmhvg==*)
(*"]], Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[$CellContext`W, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{12.000000000001819`, 9.999999999998181}, {10., 7.999999999996362}}]}, Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[FeynArts`G, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{10., 12.000000000001556`}, {10., 7.999999999998444}}]}, Inset[$CellContext`H, {9.3048, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P3 $CellContext`N100, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {66, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{11.999999999996362`, 10.}, {9.999999999998181, 12.000000000001819`}}]}, Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[FeynArts`G, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{12.000000000001819`, 9.999999999998181}, {10., 7.999999999996362}}]}, Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[FeynArts`G, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDBcW6XwYqDkKKGikmxgoODBLc*)
(*f+qjVByuVVvVZKQB+S+EeOzKVBzO24bozJkJ5Fcwe/yuV3Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/ssOcBX0zZ84E8j+4i/0+p+zQVGEkc+YMkH/i0sbipcoOnnYJ1//9B8mf*)
(*vbO5U9lhmU7GNUNjJaD+/L9f6pUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof1g4wuRDOkp4jI1V4Pq/GUtop6WpwM3vXFGWOXOmCtz+IwGXzpw5owJ3*)
(*37P77gEMDKpw98cz6z01NlaF+092z/rS9DRVuP/3tem9nDVTFR4+0Zena547*)
(*owoPv+0H52swMqjBw7eu/exjY2M1ePinxBempaWpwePn+ZNfJ2bMVIPHXwH7*)
(*At3TZ9Tg8fvM4MSuv//V4PH/db/KFANjdXj6MDy0+nJymjo8/SwqONo8faY6*)
(*PH2lnb4++/QZdXi45TCDaA0HADb+CTs=*)
(*"]], Inset[$CellContext`\[Gamma], {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P1 $CellContext`N101, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {88, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{11.999999999996362`, 10.}, {9.999999999998181, 12.000000000001819`}}]}, Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[FeynArts`G, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{12.000000000001819`, 9.999999999998181}, {10., 7.999999999996362}}]}, Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[FeynArts`G, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDBcW6XwYqDkKKGikmxgoODBLc*)
(*f+qjVByuVVvVZKQB+S+EeOzKVBzO24bozJkJ5Fcwe/yuV3Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/ssOcBX0zZ84E8j+4i/0+p+zQVGEkc+YMkH/i0sbipcoOnnYJ1//9B8mf*)
(*vbO5U9lhmU7GNUNjJaD+/L9f6pUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof1g4wuRDOkp4jI1V4Pq/GUtop6WpwM3vXFGWOXOmCtz+IwGXzpw5owJ3*)
(*37P77gEMDKpw98cz6z01NlaF+092z/rS9DRVuP/3tem9nDVTFR4+0Zena547*)
(*owoPv+0H52swMqjBw7eu/exjY2M1ePinxBempaWpwePn+ZNfJ2bMVIPHXwH7*)
(*At3TZ9Tg8fvM4MSuv//V4PH/db/KFANjdXj6MDy0+nJymjo8/SwqONo8faY6*)
(*PH2lnb4++/QZdXi45TCDaA0HADb+CTs=*)
(*"]], Inset[$CellContext`Z, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P2 $CellContext`N102, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {110, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{11.999999999996362`, 10.}, {9.999999999998181, 12.000000000001819`}}]}, Inset[$CellContext`H, {11.314438815542513`, 11.314438815542513`}, ImageScaled[{0, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{12.000000000001819`, 9.999999999998181}, {10., 7.999999999996362}}]}, Inset[$CellContext`H, {10.685561184457487`, 9.314438815542513}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDiXmaC/RVHC4+3x1tYqzgwCAh*)
(*fD4rXMWhZg93VkYakP9jh59loYrDitZ4gTkzgfwJuyqUK1Ucbu745X7+DJB/*)
(*gM9VN0/FYXnQXFkmBkUHhorjRe1BKg56Zo/WmhgD+QpzGkK1VRzY0kXk09OA*)
(*fIOWOd//KzvMWdA3c+ZMIJ/j0Ky7N5QdFq2+bH/mDJD/47jr873KDg8W1Kv/*)
(*/w/kX+jkid6i7JChZRRiZKwEdO9k0R17lB2uqUhtS00D8i9EV+ReVHaQ335d*)
(*b+ZMIH/CIs/qF8oOqnbz5505A+R/WG3z4IeyQ2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfFo4weY33hkDzVOD6+2+qp6WlqcDN5zw+dcbMmSpw+48EXAKa*)
(*pwJ3X/uiedwMDKpw9985mJBobAzk34D4L9JU42JaGpB/AeL/xcefes6aqQoP*)
(*nxlXz64+e0YVHn4K8Q03GBjU4OEbF6JzwNhYDR7+KfGFQPepweOnqPX1gxkz*)
(*1eDxd/mkbNDpM2rw+I1am/To7381ePyru7PuMDBWh6ePyKoF75PTgHwBSPr5*)
(*o/9l6vSZ6vD0tYLFZcnpM+rwcMthBtEaDgB3AQH2*)
(*"]], Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[$CellContext`W, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P3 $CellContext`N103, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {132, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`\[Gamma], {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bff4wHMbmUW/v/GVbmzovbfi2amocxD2hJQiSh3EKiyK0o*)
(*iRRFQ8pC+RdhGfEidysemCWUS8YTw+L7z6nT6dM5p04drqQmt4whhAQjhfof*)
(*UkrefhESSi6LbhqVsCyKXxSxlMg39oY74QlOsiaGs3/kBetwvm3Vj4OD+ge7*)
(*n+DULcYzGZ5R9u+Lw7AvqnzVwfXpmg85vKk9vO+D2d4AhwLucPVwNsF3Pf5m*)
(*NTy/5pPjgKeir5VauPSpQqTgKNFcjAwWwKkLL5ZOeFntH1wCswkn9Tvw1Hi2*)
(*dy18wsbpHbDUsPvVDWe01lpjQyj59LprnoXdXgN7CmFD15DkWJjXpri0wLE3*)
(*RzomnJLi8pWXIfjqIGYgDdbwD7eTsCnPm2uHl2VVdXPwhO+Y3STMn4YYDXCW*)
(*6nmRiaDEvfkhkofbPt+/FbC16Z4xwYmG+IBGuG17ye0cvrSPeulhnbEhyQbz*)
(*1PG2B5sb6lp8Q3GfOOvRAvNO53OZcKnFqrIJ/Yzk6nbYfKbOscPSabbPCDsL*)
(*/5NR8iP8L5T+ATWzqEY=*)
(*"]], Inset[$CellContext`\[Gamma], {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{10., 12.000000000001556`}, {10., 7.999999999998444}}]}, Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[FeynArts`G, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P1 $CellContext`N104, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {154, 66}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`\[Gamma], {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bff4wHMbmUW/v/GVbmzovbfi2amocxD2hJQiSh3EKiyK0o*)
(*iRRFQ8pC+RdhGfEidysemCWUS8YTw+L7z6nT6dM5p04drqQmt4whhAQjhfof*)
(*UkrefhESSi6LbhqVsCyKXxSxlMg39oY74QlOsiaGs3/kBetwvm3Vj4OD+ge7*)
(*n+DULcYzGZ5R9u+Lw7AvqnzVwfXpmg85vKk9vO+D2d4AhwLucPVwNsF3Pf5m*)
(*NTy/5pPjgKeir5VauPSpQqTgKNFcjAwWwKkLL5ZOeFntH1wCswkn9Tvw1Hi2*)
(*dy18wsbpHbDUsPvVDWe01lpjQyj59LprnoXdXgN7CmFD15DkWJjXpri0wLE3*)
(*RzomnJLi8pWXIfjqIGYgDdbwD7eTsCnPm2uHl2VVdXPwhO+Y3STMn4YYDXCW*)
(*6nmRiaDEvfkhkofbPt+/FbC16Z4xwYmG+IBGuG17ye0cvrSPeulhnbEhyQbz*)
(*1PG2B5sb6lp8Q3GfOOvRAvNO53OZcKnFqrIJ/Yzk6nbYfKbOscPSabbPCDsL*)
(*/5NR8iP8L5T+ATWzqEY=*)
(*"]], Inset[$CellContext`Z, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{10., 12.000000000001556`}, {10., 7.999999999998444}}]}, Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[FeynArts`G, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P2 $CellContext`N105, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {0, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`Z, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bff4wHMbmUW/v/GVbmzovbfi2amocxD2hJQiSh3EKiyK0o*)
(*iRRFQ8pC+RdhGfEidysemCWUS8YTw+L7z6nT6dM5p04drqQmt4whhAQjhfof*)
(*UkrefhESSi6LbhqVsCyKXxSxlMg39oY74QlOsiaGs3/kBetwvm3Vj4OD+ge7*)
(*n+DULcYzGZ5R9u+Lw7AvqnzVwfXpmg85vKk9vO+D2d4AhwLucPVwNsF3Pf5m*)
(*NTy/5pPjgKeir5VauPSpQqTgKNFcjAwWwKkLL5ZOeFntH1wCswkn9Tvw1Hi2*)
(*dy18wsbpHbDUsPvVDWe01lpjQyj59LprnoXdXgN7CmFD15DkWJjXpri0wLE3*)
(*RzomnJLi8pWXIfjqIGYgDdbwD7eTsCnPm2uHl2VVdXPwhO+Y3STMn4YYDXCW*)
(*6nmRiaDEvfkhkofbPt+/FbC16Z4xwYmG+IBGuG17ye0cvrSPeulhnbEhyQbz*)
(*1PG2B5sb6lp8Q3GfOOvRAvNO53OZcKnFqrIJ/Yzk6nbYfKbOscPSabbPCDsL*)
(*/5NR8iP8L5T+ATWzqEY=*)
(*"]], Inset[$CellContext`\[Gamma], {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{10., 12.000000000001556`}, {10., 7.999999999998444}}]}, Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[FeynArts`G, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P3 $CellContext`N106, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {22, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`Z, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bff4wHMbmUW/v/GVbmzovbfi2amocxD2hJQiSh3EKiyK0o*)
(*iRRFQ8pC+RdhGfEidysemCWUS8YTw+L7z6nT6dM5p04drqQmt4whhAQjhfof*)
(*UkrefhESSi6LbhqVsCyKXxSxlMg39oY74QlOsiaGs3/kBetwvm3Vj4OD+ge7*)
(*n+DULcYzGZ5R9u+Lw7AvqnzVwfXpmg85vKk9vO+D2d4AhwLucPVwNsF3Pf5m*)
(*NTy/5pPjgKeir5VauPSpQqTgKNFcjAwWwKkLL5ZOeFntH1wCswkn9Tvw1Hi2*)
(*dy18wsbpHbDUsPvVDWe01lpjQyj59LprnoXdXgN7CmFD15DkWJjXpri0wLE3*)
(*RzomnJLi8pWXIfjqIGYgDdbwD7eTsCnPm2uHl2VVdXPwhO+Y3STMn4YYDXCW*)
(*6nmRiaDEvfkhkofbPt+/FbC16Z4xwYmG+IBGuG17ye0cvrSPeulhnbEhyQbz*)
(*1PG2B5sb6lp8Q3GfOOvRAvNO53OZcKnFqrIJ/Yzk6nbYfKbOscPSabbPCDsL*)
(*/5NR8iP8L5T+ATWzqEY=*)
(*"]], Inset[$CellContext`Z, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{10., 12.000000000001556`}, {10., 7.999999999998444}}]}, Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[FeynArts`G, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P4 $CellContext`N107, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {44, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwT7Hf/5VRxYDig63LjgLoD*)
(*Q06a+S8JID9Fdcr6NiC/53sJvwGQzyPyd34ISN5ewDgQyBfQkpivA+T/4Unq*)
(*rAHyc0S1L/IB+RusdU+uB/JrQm68+aHmwDCn4Y7ZMyC/5VuK2TMg/8ZtRwkp*)
(*VQcGldetny8A+QJXty9xB/I9nPuitwL5V3aViOYD+TEVB5dPBvILTuonTAby*)
(*LU6+OJsH5OfsVTLcDuLvda/yBPHnVlbcBvI3vOaeqwLkc4QsYmEAmQulV0DF*)
(*C6DqDKD6KqDmmEDNLYHaEwC19w7UHS5Qd4lA3akAdfcdqD9qoP5aAPVnCdTf*)
(*O6DhAAsXHl5IOPFAw60EGo4c0HCdAA3nEGi4l0DjYQc0XmZA4+kHKP6AfDBQ*)
(*cQAAWfmhvg==*)
(*"]], Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[$CellContext`W, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bfa0KuZTIil/2Z3C/1p5T93DKeRntQS/1bI+WfSy0hRblH*)
(*InsRa9KKmnhxy60pD/7lMreS8chkymQhl/j+c+p0+nQeTqdvvL65uk5CCIlB*)
(*i/O/GEo8v6hYStRnW0oVbFJt/fjHUTJ73ajpgPn6vE857HVLOBs8/m4MyYI9*)
(*ly7uHDaoQnOr4JnHi4wXmATph7vgPpsyzDeRkoWCdGEZ7vGfFiLhmZ4b9h6+*)
(*kHUGZsKHziJ5VDwl29ut1ko49HLdWg4vDhbW8PDNpjG8Gd5nI3Im4AYhk5uE*)
(*HcUb/Wtwy05C9jqslXn1TnFv7mh3wl5b7dcvHKidk5IESob0A4NMEiVWd4CZ*)
(*gUeLb4/VcNZOeWcFbGIdFh7OFx6OmmCmbORxHNa0781Pwp4UtW4DpiVjulVx*)
(*z+y67uBod/+rA+a6FUKkEn++Gdh7WL1/xmpgXnv19AFLX81tvbAhPPU0WIH7*)
(*9ufDJZikyC1psNFvxHMC+8l+LFrYNHXg44K5RNPyAMzbSyVv8Ep66ZUdlor5*)
(*JVPyLeanoH/+m6dD*)
(*"]], Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[$CellContext`W, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{10., 12.000000000001556`}, {10., 7.999999999998444}}]}, Inset[$CellContext`H, {9.3048, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P5 $CellContext`N108, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {66, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{11.999999999996362`, 10.}, {9.999999999998181, 12.000000000001819`}}]}, Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[FeynArts`G, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bfa0KuZTIil/2Z3C/1p5T93DKeRntQS/1bI+WfSy0hRblH*)
(*InsRa9KKmnhxy60pD/7lMreS8chkymQhl/j+c+p0+nQeTqdvvL65uk5CCIlB*)
(*i/O/GEo8v6hYStRnW0oVbFJt/fjHUTJ73ajpgPn6vE857HVLOBs8/m4MyYI9*)
(*ly7uHDaoQnOr4JnHi4wXmATph7vgPpsyzDeRkoWCdGEZ7vGfFiLhmZ4b9h6+*)
(*kHUGZsKHziJ5VDwl29ut1ko49HLdWg4vDhbW8PDNpjG8Gd5nI3Im4AYhk5uE*)
(*HcUb/Wtwy05C9jqslXn1TnFv7mh3wl5b7dcvHKidk5IESob0A4NMEiVWd4CZ*)
(*gUeLb4/VcNZOeWcFbGIdFh7OFx6OmmCmbORxHNa0781Pwp4UtW4DpiVjulVx*)
(*z+y67uBod/+rA+a6FUKkEn++Gdh7WL1/xmpgXnv19AFLX81tvbAhPPU0WIH7*)
(*9ufDJZikyC1psNFvxHMC+8l+LFrYNHXg44K5RNPyAMzbSyVv8Ep66ZUdlor5*)
(*JVPyLeanoH/+m6dD*)
(*"]], Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[$CellContext`W, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDBcW6XwYqDkKKGikmxgoODBLc*)
(*f+qjVByuVVvVZKQB+S+EeOzKVBzO24bozJkJ5Fcwe/yuV3Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/ssOcBX0zZ84E8j+4i/0+p+zQVGEkc+YMkH/i0sbipcoOnnYJ1//9B8mf*)
(*vbO5U9lhmU7GNUNjJaD+/L9f6pUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof1g4wuRDOkp4jI1V4Pq/GUtop6WpwM3vXFGWOXOmCtz+IwGXzpw5owJ3*)
(*37P77gEMDKpw98cz6z01NlaF+092z/rS9DRVuP/3tem9nDVTFR4+0Zena547*)
(*owoPv+0H52swMqjBw7eu/exjY2M1ePinxBempaWpwePn+ZNfJ2bMVIPHXwH7*)
(*At3TZ9Tg8fvM4MSuv//V4PH/db/KFANjdXj6MDy0+nJymjo8/SwqONo8faY6*)
(*PH2lnb4++/QZdXi45TCDaA0HADb+CTs=*)
(*"]], Inset[$CellContext`\[Gamma], {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P1 $CellContext`N109, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {88, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{11.999999999996362`, 10.}, {9.999999999998181, 12.000000000001819`}}]}, Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[FeynArts`G, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bfa0KuZTIil/2Z3C/1p5T93DKeRntQS/1bI+WfSy0hRblH*)
(*InsRa9KKmnhxy60pD/7lMreS8chkymQhl/j+c+p0+nQeTqdvvL65uk5CCIlB*)
(*i/O/GEo8v6hYStRnW0oVbFJt/fjHUTJ73ajpgPn6vE857HVLOBs8/m4MyYI9*)
(*ly7uHDaoQnOr4JnHi4wXmATph7vgPpsyzDeRkoWCdGEZ7vGfFiLhmZ4b9h6+*)
(*kHUGZsKHziJ5VDwl29ut1ko49HLdWg4vDhbW8PDNpjG8Gd5nI3Im4AYhk5uE*)
(*HcUb/Wtwy05C9jqslXn1TnFv7mh3wl5b7dcvHKidk5IESob0A4NMEiVWd4CZ*)
(*gUeLb4/VcNZOeWcFbGIdFh7OFx6OmmCmbORxHNa0781Pwp4UtW4DpiVjulVx*)
(*z+y67uBod/+rA+a6FUKkEn++Gdh7WL1/xmpgXnv19AFLX81tvbAhPPU0WIH7*)
(*9ufDJZikyC1psNFvxHMC+8l+LFrYNHXg44K5RNPyAMzbSyVv8Ep66ZUdlor5*)
(*JVPyLeanoH/+m6dD*)
(*"]], Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[$CellContext`W, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDBcW6XwYqDkKKGikmxgoODBLc*)
(*f+qjVByuVVvVZKQB+S+EeOzKVBzO24bozJkJ5Fcwe/yuV3Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/ssOcBX0zZ84E8j+4i/0+p+zQVGEkc+YMkH/i0sbipcoOnnYJ1//9B8mf*)
(*vbO5U9lhmU7GNUNjJaD+/L9f6pUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof1g4wuRDOkp4jI1V4Pq/GUtop6WpwM3vXFGWOXOmCtz+IwGXzpw5owJ3*)
(*37P77gEMDKpw98cz6z01NlaF+092z/rS9DRVuP/3tem9nDVTFR4+0Zena547*)
(*owoPv+0H52swMqjBw7eu/exjY2M1ePinxBempaWpwePn+ZNfJ2bMVIPHXwH7*)
(*At3TZ9Tg8fvM4MSuv//V4PH/db/KFANjdXj6MDy0+nJymjo8/SwqONo8faY6*)
(*PH2lnb4++/QZdXi45TCDaA0HADb+CTs=*)
(*"]], Inset[$CellContext`Z, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P2 $CellContext`N110, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {110, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwT7Hf/5VRxYDig63LjgLoD*)
(*Q06a+S8JID9Fdcr6NiC/53sJvwGQzyPyd34ISN5ewDgQyBfQkpivA+T/4Unq*)
(*rAHyc0S1L/IB+RusdU+uB/JrQm68+aHmwDCn4Y7ZMyC/5VuK2TMg/8ZtRwkp*)
(*VQcGldetny8A+QJXty9xB/I9nPuitwL5V3aViOYD+TEVB5dPBvILTuonTAby*)
(*LU6+OJsH5OfsVTLcDuLvda/yBPHnVlbcBvI3vOaeqwLkc4QsYmEAmQulV0DF*)
(*C6DqDKD6KqDmmEDNLYHaEwC19w7UHS5Qd4lA3akAdfcdqD9qoP5aAPVnCdTf*)
(*O6DhAAsXHl5IOPFAw60EGo4c0HCdAA3nEGi4l0DjYQc0XmZA4+kHKP6AfDBQ*)
(*cQAAWfmhvg==*)
(*"]], Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[$CellContext`W, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{12.000000000001819`, 9.999999999998181}, {10., 7.999999999996362}}]}, Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[FeynArts`G, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDBcW6XwYqDkKKGikmxgoODBLc*)
(*f+qjVByuVVvVZKQB+S+EeOzKVBzO24bozJkJ5Fcwe/yuV3Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/ssOcBX0zZ84E8j+4i/0+p+zQVGEkc+YMkH/i0sbipcoOnnYJ1//9B8mf*)
(*vbO5U9lhmU7GNUNjJaD+/L9f6pUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof1g4wuRDOkp4jI1V4Pq/GUtop6WpwM3vXFGWOXOmCtz+IwGXzpw5owJ3*)
(*37P77gEMDKpw98cz6z01NlaF+092z/rS9DRVuP/3tem9nDVTFR4+0Zena547*)
(*owoPv+0H52swMqjBw7eu/exjY2M1ePinxBempaWpwePn+ZNfJ2bMVIPHXwH7*)
(*At3TZ9Tg8fvM4MSuv//V4PH/db/KFANjdXj6MDy0+nJymjo8/SwqONo8faY6*)
(*PH2lnb4++/QZdXi45TCDaA0HADb+CTs=*)
(*"]], Inset[$CellContext`\[Gamma], {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P1 $CellContext`N111, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {132, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwT7Hf/5VRxYDig63LjgLoD*)
(*Q06a+S8JID9Fdcr6NiC/53sJvwGQzyPyd34ISN5ewDgQyBfQkpivA+T/4Unq*)
(*rAHyc0S1L/IB+RusdU+uB/JrQm68+aHmwDCn4Y7ZMyC/5VuK2TMg/8ZtRwkp*)
(*VQcGldetny8A+QJXty9xB/I9nPuitwL5V3aViOYD+TEVB5dPBvILTuonTAby*)
(*LU6+OJsH5OfsVTLcDuLvda/yBPHnVlbcBvI3vOaeqwLkc4QsYmEAmQulV0DF*)
(*C6DqDKD6KqDmmEDNLYHaEwC19w7UHS5Qd4lA3akAdfcdqD9qoP5aAPVnCdTf*)
(*O6DhAAsXHl5IOPFAw60EGo4c0HCdAA3nEGi4l0DjYQc0XmZA4+kHKP6AfDBQ*)
(*cQAAWfmhvg==*)
(*"]], Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[$CellContext`W, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{12.000000000001819`, 9.999999999998181}, {10., 7.999999999996362}}]}, Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[FeynArts`G, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDBcW6XwYqDkKKGikmxgoODBLc*)
(*f+qjVByuVVvVZKQB+S+EeOzKVBzO24bozJkJ5Fcwe/yuV3Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/ssOcBX0zZ84E8j+4i/0+p+zQVGEkc+YMkH/i0sbipcoOnnYJ1//9B8mf*)
(*vbO5U9lhmU7GNUNjJaD+/L9f6pUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof1g4wuRDOkp4jI1V4Pq/GUtop6WpwM3vXFGWOXOmCtz+IwGXzpw5owJ3*)
(*37P77gEMDKpw98cz6z01NlaF+092z/rS9DRVuP/3tem9nDVTFR4+0Zena547*)
(*owoPv+0H52swMqjBw7eu/exjY2M1ePinxBempaWpwePn+ZNfJ2bMVIPHXwH7*)
(*At3TZ9Tg8fvM4MSuv//V4PH/db/KFANjdXj6MDy0+nJymjo8/SwqONo8faY6*)
(*PH2lnb4++/QZdXi45TCDaA0HADb+CTs=*)
(*"]], Inset[$CellContext`Z, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P2 $CellContext`N112, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {154, 44}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`\[Gamma], {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bff4wHMbmUW/v/GVbmzovbfi2amocxD2hJQiSh3EKiyK0o*)
(*iRRFQ8pC+RdhGfEidysemCWUS8YTw+L7z6nT6dM5p04drqQmt4whhAQjhfof*)
(*UkrefhESSi6LbhqVsCyKXxSxlMg39oY74QlOsiaGs3/kBetwvm3Vj4OD+ge7*)
(*n+DULcYzGZ5R9u+Lw7AvqnzVwfXpmg85vKk9vO+D2d4AhwLucPVwNsF3Pf5m*)
(*NTy/5pPjgKeir5VauPSpQqTgKNFcjAwWwKkLL5ZOeFntH1wCswkn9Tvw1Hi2*)
(*dy18wsbpHbDUsPvVDWe01lpjQyj59LprnoXdXgN7CmFD15DkWJjXpri0wLE3*)
(*RzomnJLi8pWXIfjqIGYgDdbwD7eTsCnPm2uHl2VVdXPwhO+Y3STMn4YYDXCW*)
(*6nmRiaDEvfkhkofbPt+/FbC16Z4xwYmG+IBGuG17ye0cvrSPeulhnbEhyQbz*)
(*1PG2B5sb6lp8Q3GfOOvRAvNO53OZcKnFqrIJ/Yzk6nbYfKbOscPSabbPCDsL*)
(*/5NR8iP8L5T+ATWzqEY=*)
(*"]], Inset[$CellContext`\[Gamma], {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDiXmaC/RVHC4+3x1tYqzgwCAh*)
(*fD4rXMWhZg93VkYakP9jh59loYrDitZ4gTkzgfwJuyqUK1Ucbu745X7+DJB/*)
(*gM9VN0/FYXnQXFkmBkUHhorjRe1BKg56Zo/WmhgD+QpzGkK1VRzY0kXk09OA*)
(*fIOWOd//KzvMWdA3c+ZMIJ/j0Ky7N5QdFq2+bH/mDJD/47jr873KDg8W1Kv/*)
(*/w/kX+jkid6i7JChZRRiZKwEdO9k0R17lB2uqUhtS00D8i9EV+ReVHaQ335d*)
(*b+ZMIH/CIs/qF8oOqnbz5505A+R/WG3z4IeyQ2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfFo4weY33hkDzVOD6+2+qp6WlqcDN5zw+dcbMmSpw+48EXAKa*)
(*pwJ3X/uiedwMDKpw9985mJBobAzk34D4L9JU42JaGpB/AeL/xcefes6aqQoP*)
(*nxlXz64+e0YVHn4K8Q03GBjU4OEbF6JzwNhYDR7+KfGFQPepweOnqPX1gxkz*)
(*1eDxd/mkbNDpM2rw+I1am/To7381ePyru7PuMDBWh6ePyKoF75PTgHwBSPr5*)
(*o/9l6vSZ6vD0tYLFZcnpM+rwcMthBtEaDgB3AQH2*)
(*"]], Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[$CellContext`W, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P1 $CellContext`N113, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`\[Gamma], {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bff4wHMbmUW/v/GVbmzovbfi2amocxD2hJQiSh3EKiyK0o*)
(*iRRFQ8pC+RdhGfEidysemCWUS8YTw+L7z6nT6dM5p04drqQmt4whhAQjhfof*)
(*UkrefhESSi6LbhqVsCyKXxSxlMg39oY74QlOsiaGs3/kBetwvm3Vj4OD+ge7*)
(*n+DULcYzGZ5R9u+Lw7AvqnzVwfXpmg85vKk9vO+D2d4AhwLucPVwNsF3Pf5m*)
(*NTy/5pPjgKeir5VauPSpQqTgKNFcjAwWwKkLL5ZOeFntH1wCswkn9Tvw1Hi2*)
(*dy18wsbpHbDUsPvVDWe01lpjQyj59LprnoXdXgN7CmFD15DkWJjXpri0wLE3*)
(*RzomnJLi8pWXIfjqIGYgDdbwD7eTsCnPm2uHl2VVdXPwhO+Y3STMn4YYDXCW*)
(*6nmRiaDEvfkhkofbPt+/FbC16Z4xwYmG+IBGuG17ye0cvrSPeulhnbEhyQbz*)
(*1PG2B5sb6lp8Q3GfOOvRAvNO53OZcKnFqrIJ/Yzk6nbYfKbOscPSabbPCDsL*)
(*/5NR8iP8L5T+ATWzqEY=*)
(*"]], Inset[$CellContext`Z, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDiXmaC/RVHC4+3x1tYqzgwCAh*)
(*fD4rXMWhZg93VkYakP9jh59loYrDitZ4gTkzgfwJuyqUK1Ucbu745X7+DJB/*)
(*gM9VN0/FYXnQXFkmBkUHhorjRe1BKg56Zo/WmhgD+QpzGkK1VRzY0kXk09OA*)
(*fIOWOd//KzvMWdA3c+ZMIJ/j0Ky7N5QdFq2+bH/mDJD/47jr873KDg8W1Kv/*)
(*/w/kX+jkid6i7JChZRRiZKwEdO9k0R17lB2uqUhtS00D8i9EV+ReVHaQ335d*)
(*b+ZMIH/CIs/qF8oOqnbz5505A+R/WG3z4IeyQ2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfFo4weY33hkDzVOD6+2+qp6WlqcDN5zw+dcbMmSpw+48EXAKa*)
(*pwJ3X/uiedwMDKpw9985mJBobAzk34D4L9JU42JaGpB/AeL/xcefes6aqQoP*)
(*nxlXz64+e0YVHn4K8Q03GBjU4OEbF6JzwNhYDR7+KfGFQPepweOnqPX1gxkz*)
(*1eDxd/mkbNDpM2rw+I1am/To7381ePyru7PuMDBWh6ePyKoF75PTgHwBSPr5*)
(*o/9l6vSZ6vD0tYLFZcnpM+rwcMthBtEaDgB3AQH2*)
(*"]], Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[$CellContext`W, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P2 $CellContext`N114, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`Z, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bff4wHMbmUW/v/GVbmzovbfi2amocxD2hJQiSh3EKiyK0o*)
(*iRRFQ8pC+RdhGfEidysemCWUS8YTw+L7z6nT6dM5p04drqQmt4whhAQjhfof*)
(*UkrefhESSi6LbhqVsCyKXxSxlMg39oY74QlOsiaGs3/kBetwvm3Vj4OD+ge7*)
(*n+DULcYzGZ5R9u+Lw7AvqnzVwfXpmg85vKk9vO+D2d4AhwLucPVwNsF3Pf5m*)
(*NTy/5pPjgKeir5VauPSpQqTgKNFcjAwWwKkLL5ZOeFntH1wCswkn9Tvw1Hi2*)
(*dy18wsbpHbDUsPvVDWe01lpjQyj59LprnoXdXgN7CmFD15DkWJjXpri0wLE3*)
(*RzomnJLi8pWXIfjqIGYgDdbwD7eTsCnPm2uHl2VVdXPwhO+Y3STMn4YYDXCW*)
(*6nmRiaDEvfkhkofbPt+/FbC16Z4xwYmG+IBGuG17ye0cvrSPeulhnbEhyQbz*)
(*1PG2B5sb6lp8Q3GfOOvRAvNO53OZcKnFqrIJ/Yzk6nbYfKbOscPSabbPCDsL*)
(*/5NR8iP8L5T+ATWzqEY=*)
(*"]], Inset[$CellContext`\[Gamma], {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDiXmaC/RVHC4+3x1tYqzgwCAh*)
(*fD4rXMWhZg93VkYakP9jh59loYrDitZ4gTkzgfwJuyqUK1Ucbu745X7+DJB/*)
(*gM9VN0/FYXnQXFkmBkUHhorjRe1BKg56Zo/WmhgD+QpzGkK1VRzY0kXk09OA*)
(*fIOWOd//KzvMWdA3c+ZMIJ/j0Ky7N5QdFq2+bH/mDJD/47jr873KDg8W1Kv/*)
(*/w/kX+jkid6i7JChZRRiZKwEdO9k0R17lB2uqUhtS00D8i9EV+ReVHaQ335d*)
(*b+ZMIH/CIs/qF8oOqnbz5505A+R/WG3z4IeyQ2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfFo4weY33hkDzVOD6+2+qp6WlqcDN5zw+dcbMmSpw+48EXAKa*)
(*pwJ3X/uiedwMDKpw9985mJBobAzk34D4L9JU42JaGpB/AeL/xcefes6aqQoP*)
(*nxlXz64+e0YVHn4K8Q03GBjU4OEbF6JzwNhYDR7+KfGFQPepweOnqPX1gxkz*)
(*1eDxd/mkbNDpM2rw+I1am/To7381ePyru7PuMDBWh6ePyKoF75PTgHwBSPr5*)
(*o/9l6vSZ6vD0tYLFZcnpM+rwcMthBtEaDgB3AQH2*)
(*"]], Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[$CellContext`W, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P3 $CellContext`N115, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwqulvWsak4MBgsVOjcq+7A*)
(*MEdRfocAkH/DxSq3DsgPeb9dTBHI38F8eZkrkO+wn4nfCsh/UFpYJQrkq7Bl*)
(*vosB8lP2lpq+V3NgOBB89mknkN9xcD3HZSC/gZ2P5QCQ/6T8KdMBIH/LDpHA*)
(*v0C+RMUz7S1AfsqrDDZ7VSB9UWnvGiDfZPWbe41A/g6N7MJlQL6G8YWSQ0B+*)
(*wJZnj+YC+WcUDBf/BfIz0ja/6QfyfaoLHhgA6QfB1qxVQJrlnXR7FJDmgdJX*)
(*oOIBUHUJUH1XoOb4QM3VgdqzAWqvDdQdCVB3ZUDdKQJ19w6oP+5A/dUC9WcD*)
(*1N8noOEQAw0XA2g43YGGmwc0HLdAwzUCGs5noOG+BBoPKtB4MYDG0w9Q/AH5*)
(*YKDiAAAe7KM1*)
(*"]], Inset[$CellContext`Z, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bff4wHMbmUW/v/GVbmzovbfi2amocxD2hJQiSh3EKiyK0o*)
(*iRRFQ8pC+RdhGfEidysemCWUS8YTw+L7z6nT6dM5p04drqQmt4whhAQjhfof*)
(*UkrefhESSi6LbhqVsCyKXxSxlMg39oY74QlOsiaGs3/kBetwvm3Vj4OD+ge7*)
(*n+DULcYzGZ5R9u+Lw7AvqnzVwfXpmg85vKk9vO+D2d4AhwLucPVwNsF3Pf5m*)
(*NTy/5pPjgKeir5VauPSpQqTgKNFcjAwWwKkLL5ZOeFntH1wCswkn9Tvw1Hi2*)
(*dy18wsbpHbDUsPvVDWe01lpjQyj59LprnoXdXgN7CmFD15DkWJjXpri0wLE3*)
(*RzomnJLi8pWXIfjqIGYgDdbwD7eTsCnPm2uHl2VVdXPwhO+Y3STMn4YYDXCW*)
(*6nmRiaDEvfkhkofbPt+/FbC16Z4xwYmG+IBGuG17ye0cvrSPeulhnbEhyQbz*)
(*1PG2B5sb6lp8Q3GfOOvRAvNO53OZcKnFqrIJ/Yzk6nbYfKbOscPSabbPCDsL*)
(*/5NR8iP8L5T+ATWzqEY=*)
(*"]], Inset[$CellContext`Z, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDiXmaC/RVHC4+3x1tYqzgwCAh*)
(*fD4rXMWhZg93VkYakP9jh59loYrDitZ4gTkzgfwJuyqUK1Ucbu745X7+DJB/*)
(*gM9VN0/FYXnQXFkmBkUHhorjRe1BKg56Zo/WmhgD+QpzGkK1VRzY0kXk09OA*)
(*fIOWOd//KzvMWdA3c+ZMIJ/j0Ky7N5QdFq2+bH/mDJD/47jr873KDg8W1Kv/*)
(*/w/kX+jkid6i7JChZRRiZKwEdO9k0R17lB2uqUhtS00D8i9EV+ReVHaQ335d*)
(*b+ZMIH/CIs/qF8oOqnbz5505A+R/WG3z4IeyQ2Vs4pf//4F8j2NZn4H226zX*)
(*NTY2VnZg0BDb8R8YHgWqWelpaUD+jlX7w4D8l0I3gO4D8ZWlfgPV3xQ4d+bM*)
(*GSC/o+/JJyAfFo4weY33hkDzVOD6+2+qp6WlqcDN5zw+dcbMmSpw+48EXAKa*)
(*pwJ3X/uiedwMDKpw9985mJBobAzk34D4L9JU42JaGpB/AeL/xcefes6aqQoP*)
(*nxlXz64+e0YVHn4K8Q03GBjU4OEbF6JzwNhYDR7+KfGFQPepweOnqPX1gxkz*)
(*1eDxd/mkbNDpM2rw+I1am/To7381ePyru7PuMDBWh6ePyKoF75PTgHwBSPr5*)
(*o/9l6vSZ6vD0tYLFZcnpM+rwcMthBtEaDgB3AQH2*)
(*"]], Polygon[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], Inset[$CellContext`W, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P4 $CellContext`N116, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwT7Hf/5VRxYDig63LjgLoD*)
(*Q06a+S8JID9Fdcr6NiC/53sJvwGQzyPyd34ISN5ewDgQyBfQkpivA+T/4Unq*)
(*rAHyc0S1L/IB+RusdU+uB/JrQm68+aHmwDCn4Y7ZMyC/5VuK2TMg/8ZtRwkp*)
(*VQcGldetny8A+QJXty9xB/I9nPuitwL5V3aViOYD+TEVB5dPBvILTuonTAby*)
(*LU6+OJsH5OfsVTLcDuLvda/yBPHnVlbcBvI3vOaeqwLkc4QsYmEAmQulV0DF*)
(*C6DqDKD6KqDmmEDNLYHaEwC19w7UHS5Qd4lA3akAdfcdqD9qoP5aAPVnCdTf*)
(*O6DhAAsXHl5IOPFAw60EGo4c0HCdAA3nEGi4l0DjYQc0XmZA4+kHKP6AfDBQ*)
(*cQAAWfmhvg==*)
(*"]], Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[$CellContext`W, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bfa0KuZTIil/2Z3C/1p5T93DKeRntQS/1bI+WfSy0hRblH*)
(*InsRa9KKmnhxy60pD/7lMreS8chkymQhl/j+c+p0+nQeTqdvvL65uk5CCIlB*)
(*i/O/GEo8v6hYStRnW0oVbFJt/fjHUTJ73ajpgPn6vE857HVLOBs8/m4MyYI9*)
(*ly7uHDaoQnOr4JnHi4wXmATph7vgPpsyzDeRkoWCdGEZ7vGfFiLhmZ4b9h6+*)
(*kHUGZsKHziJ5VDwl29ut1ko49HLdWg4vDhbW8PDNpjG8Gd5nI3Im4AYhk5uE*)
(*HcUb/Wtwy05C9jqslXn1TnFv7mh3wl5b7dcvHKidk5IESob0A4NMEiVWd4CZ*)
(*gUeLb4/VcNZOeWcFbGIdFh7OFx6OmmCmbORxHNa0781Pwp4UtW4DpiVjulVx*)
(*z+y67uBod/+rA+a6FUKkEn++Gdh7WL1/xmpgXnv19AFLX81tvbAhPPU0WIH7*)
(*9ufDJZikyC1psNFvxHMC+8l+LFrYNHXg44K5RNPyAMzbSyVv8Ep66ZUdlor5*)
(*JVPyLeanoH/+m6dD*)
(*"]], Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[$CellContext`W, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDBcW6XwYqDkKKGikmxgoODBLc*)
(*f+qjVByuVVvVZKQB+S+EeOzKVBzO24bozJkJ5Fcwe/yuV3Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/ssOcBX0zZ84E8j+4i/0+p+zQVGEkc+YMkH/i0sbipcoOnnYJ1//9B8mf*)
(*vbO5U9lhmU7GNUNjJaD+/L9f6pUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof1g4wuRDOkp4jI1V4Pq/GUtop6WpwM3vXFGWOXOmCtz+IwGXzpw5owJ3*)
(*37P77gEMDKpw98cz6z01NlaF+092z/rS9DRVuP/3tem9nDVTFR4+0Zena547*)
(*owoPv+0H52swMqjBw7eu/exjY2M1ePinxBempaWpwePn+ZNfJ2bMVIPHXwH7*)
(*At3TZ9Tg8fvM4MSuv//V4PH/db/KFANjdXj6MDy0+nJymjo8/SwqONo8faY6*)
(*PH2lnb4++/QZdXi45TCDaA0HADb+CTs=*)
(*"]], Inset[$CellContext`\[Gamma], {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P5 $CellContext`N117, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {88, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-1.1173284519827575`*^-12, 4.999999999996362}, {9.999999999996676, 4.999999999996362}}], Polygon[{{5.6, 5.}, {4.4, 4.6}, {4.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {5., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.00000000000112, 5.000000000003638}, {10.000000000003325`, 5.000000000003638}}], Polygon[{{15.6, 5.}, {14.4, 5.4}, {14.4, 4.6}}], Inset[QFTSymbols`e, {15., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDgp8IFrDgeFDiXK8lYqDlMw/OxNjID/jt5NC*)
(*kooD4/dsjow0IP/FJ45ZOSoOl1atcpk9E8iPeH63PELFweHqNu5zZ4B8h6Pb*)
(*NuqpOCz5wDWTgUETKM/l8fu/sgPLAj1jY2MgX6LZNeaesoNenwNfWhqQ7xEh*)
(*GntF2SFXtNt05kwgf4Oo1AmQ/JLW7jNngPwDU1m+vVd26Pqz/+n//0D+js8B*)
(*V38rO8xQPKxrbKzlwNDB/+YH0HxZ9ZS0tDQgP8LWzR7oHwG/YzNnzgTyGwSD*)
(*Qf5bO/XcmTNngHyDCQtA6juEQf7VhssnTzQEuk8brp/hpiXQPG24+Z//zwaa*)
(*B+RvgNhfyWp76cwZIH8HxH3tWg5SDAw6DgwrIO5/1FRVYmwM5DtA/LdYsPRU*)
(*WhqQLwDx/6MZ+z/OnKkDDx+e9otA9wH5HpDwyzH7mvb/vw48fC8Een4xNNYF*)
(*xg8k/O1rQnenpOnC46ddZsr36TN14fGX953x4OkzQD40fjNYQbSeAwCU6LV/*)
(**)
(*"]], Polygon[{{10., 12.9}, {9.6, 14.1}, {10.4, 14.1}}], Inset[$CellContext`W, {9.0548, 13.5}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQB2IQDQEqDhBawYFBoPvOgqPKDseeMDdNnynvwDCDZe/9*)
(*ucoOG/Q13usbA/kCvN9TJys7HD+xquzkGTkHhhUSSh3LlR0Wl0x6kZwG5O+w*)
(*8vS7qOwwxe7V2X//ZYHyX7ezAM3vebBo5syZQP6Lml2LFVUcPrDUPzY2BvJ3*)
(*LH+1SFvFQfv7yylnz8g4MAS8emoOlE+89eVFWhqQ75D1m1NAxSFZq8GEgQHI*)
(*9+BZr8Wi4vD/QeWSmTOlHRgqPgizA81fc83c2NgYyF9xaOeB/8oO9Z3FZ86c*)
(*kXJgaHi35j+Q/+9XUlpaGpB/IT+eHe5fhDwT61yg+yTh+hvLeoDmScLND9E8*)
(*ATRPAm4/o3xbdFqaBNx9c6/Wn/7/Xxzu/vmq3OIzZ4rD/XeNQyzbyFgc7n+B*)
(*3w0yZ86IwcOnRD4W6D4xePjlHBQ1YmQQg4dvbHeu+JyZovDwtzAP7TQzFoXH*)
(*j/+F6wIXzojA489K+k9tRpqIA2r8ijgAAJpatMU=*)
(*"]], Polygon[{{10., 5.9}, {10.4, 7.1}, {9.6, 7.1}}], Inset[$CellContext`W, {10.9452, 6.5}, ImageScaled[{0, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGCQBWIQzfDnPxAoOzCwgDgaDgwT7Hf/5VRxYDig63LjgLoD*)
(*Q06a+S8JID9Fdcr6NiC/53sJvwGQzyPyd34ISN5ewDgQyBfQkpivA+T/4Unq*)
(*rAHyc0S1L/IB+RusdU+uB/JrQm68+aHmwDCn4Y7ZMyC/5VuK2TMg/8ZtRwkp*)
(*VQcGldetny8A+QJXty9xB/I9nPuitwL5V3aViOYD+TEVB5dPBvILTuonTAby*)
(*LU6+OJsH5OfsVTLcDuLvda/yBPHnVlbcBvI3vOaeqwLkc4QsYmEAmQulV0DF*)
(*C6DqDKD6KqDmmEDNLYHaEwC19w7UHS5Qd4lA3akAdfcdqD9qoP5aAPVnCdTf*)
(*O6DhAAsXHl5IOPFAw60EGo4c0HCdAA3nEGi4l0DjYQc0XmZA4+kHKP6AfDBQ*)
(*cQAAWfmhvg==*)
(*"]], Polygon[{{11.424264068711928`, 10.575735931288072`}, {10.85857864376269, 11.707106781186546`}, {10.292893218813454`, 11.14142135623731}}], Inset[$CellContext`W, {11.491215510839147`, 11.491215510839147`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl0Vsow3EUB/Bfa0KuZTIil/2Z3C/1p5T93DKeRntQS/1bI+WfSy0hRblH*)
(*InsRa9KKmnhxy60pD/7lMreS8chkymQhl/j+c+p0+nQeTqdvvL65uk5CCIlB*)
(*i/O/GEo8v6hYStRnW0oVbFJt/fjHUTJ73ajpgPn6vE857HVLOBs8/m4MyYI9*)
(*ly7uHDaoQnOr4JnHi4wXmATph7vgPpsyzDeRkoWCdGEZ7vGfFiLhmZ4b9h6+*)
(*kHUGZsKHziJ5VDwl29ut1ko49HLdWg4vDhbW8PDNpjG8Gd5nI3Im4AYhk5uE*)
(*HcUb/Wtwy05C9jqslXn1TnFv7mh3wl5b7dcvHKidk5IESob0A4NMEiVWd4CZ*)
(*gUeLb4/VcNZOeWcFbGIdFh7OFx6OmmCmbORxHNa0781Pwp4UtW4DpiVjulVx*)
(*z+y67uBod/+rA+a6FUKkEn++Gdh7WL1/xmpgXnv19AFLX81tvbAhPPU0WIH7*)
(*9ufDJZikyC1psNFvxHMC+8l+LFrYNHXg44K5RNPyAMzbSyVv8Ep66ZUdlor5*)
(*JVPyLeanoH/+m6dD*)
(*"]], Polygon[{{10.575735931288072`, 8.575735931288072}, {11.14142135623731, 9.707106781186546}, {11.707106781186546`, 9.14142135623731}}], Inset[$CellContext`W, {10.508784489160853`, 9.491215510839147}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGDQBGIQDQEqDho//wOBvAPDBcW6XwYqDkKKGikmxgoODBLc*)
(*f+qjVByuVVvVZKQB+S+EeOzKVBzO24bozJkJ5Fcwe/yuV3Hgdridff4MkD/B*)
(*9LM1UF76vLkrE4OiA8MM/1PVQP0TfsRfMjEG8l+0GX8Bmj+RndU8PQ3IN2iZ*)
(*8/2/ssOcBX0zZ84E8j+4i/0+p+zQVGEkc+YMkH/i0sbipcoOnnYJ1//9B8mf*)
(*vbO5U9lhmU7GNUNjJaD+/L9f6pUddqVeFEtNA/I3xF7YBJSPNgjomjETyF/w*)
(*aUYhUP+iPxelzpwB8ht+fPgONF9aYcf6//+BfI9jWZ+B9tus1zU2NlZ2YNCI*)
(*/voO6L73zp3T0tKA/Ixt9aVA9zfteH5l5kwg/4TeHBOg/9aWd38+cwbI7+h7*)
(*8gnof1g4wuRDOkp4jI1V4Pq/GUtop6WpwM3vXFGWOXOmCtz+IwGXzpw5owJ3*)
(*37P77gEMDKpw98cz6z01NlaF+092z/rS9DRVuP/3tem9nDVTFR4+0Zena547*)
(*owoPv+0H52swMqjBw7eu/exjY2M1ePinxBempaWpwePn+ZNfJ2bMVIPHXwH7*)
(*At3TZ9Tg8fvM4MSuv//V4PH/db/KFANjdXj6MDy0+nJymjo8/SwqONo8faY6*)
(*PH2lnb4++/QZdXi45TCDaA0HADb+CTs=*)
(*"]], Inset[$CellContext`Z, {9.0548, 10.}, ImageScaled[{1, Rational[1, 2]}]], {PointSize[0.04], Point[{10., 15.}], Point[{10., 5.}], Point[{10., 12.}], Point[{10., 8.}], {Thickness[0.015], Line[{{11.5, 9.5}, {12.5, 10.5}}], Line[{{11.5, 10.5}, {12.5, 9.5}}]}}, Inset[$CellContext`T24 $CellContext`P6 $CellContext`N118, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedf/egfhigihgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {110, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJwd0g0slHEcB/AfTlRyulR64S5d0Uon7Momz7/Fwmq9qZQyI3kZudbLrvJy*)
(*tWq04RB6URNtXaUtiWvIzsaFi673lycl9DJmnUXz1sv36b89z3+fff//3//l*)
(*eRbFpG6LsyYifzxCT/bCy4XR/+bM6Pv6u702sO78/aJDsxh55+Vsk8BZu2/p*)
(*ByWMom0Va/3g1uKhnemwua+tNBUu008kLxXyoYPnjbBLd4tkYCbm71s3qJzH*)
(*KGHMVdEG664pntTB3/nk1jpYdalOGTqfUciu4sFaYXxA5PU3sHfTcUk1rMlI*)
(*00QuwPpxojs34IQ8da9JsJEZTwt5lN0z94WoyzqTNsCWSxLvKNg+8EGmxQnn*)
(*upY2TwOPbpC6aWCt8cC5XNic6JU5Ksb8rvj4AlgmCbzNOzJy6nEPKYa1ohOv*)
(*Gmcw2tIe8uAGbHna6aJ3wPrOJaVGWDVndMfr6YwiyuPGrVwxP60k0xMe3W7+*)
(*GgE7ORU+rpqGcYE/QtrgMr50IgXO8s332OSGui9bPLfCsga7Ah42hPmlhMJr*)
(*BgonE6WM2NU5VeuEvCuBH4RVc/Uf5PD+6rduChmje6psx89TGfn1Wxftgc26*)
(*6eFJsOfe8vVqWNsRc7LBntHbFq/V2TCre1bL2zHaeDM4WQurXnuMvZjCqFKy*)
(*KbIA3qIWy/W22PfRVWEXYFm8++bLInwn5beMK0L9tI/5BTa41+a+Q5Uw6co6*)
(*qqwZiT59kbbDhiDTsA180TajaEQY77nSP8cK91Hta/RahP1eyE8IheWnompS*)
(*YVlzsHYFnHUmr78WpvqnnXL4yB6T9I+Q53Q4uMKTFWIxc0ceMOZDsEj6nlPD*)
(*3b5LohuIUbgsvqZCyB85lgfDQbGy2CZYs7YnR/GXo2af0zueC/n4kNXB3xyV*)
(*dgdkv4MNluSzURMc6ZabjvGC4/rfy8c4Gk5R7u+Cy040eg/84ujhZG5Jn5Af*)
(*sa3hhzlysMRkjwj1W+qXzf/JkZlPV85ajP++0ONw4xBH0Sb1nUBYM7th2Gzh*)
(*yFD5kj8Gdwcow0Lh8OB37Q9hg7gmVwz/b3KcV+gt3D8O/EaU*)
(*"]], Inset[$CellContext`Z, {8.491215510839147, 3.4912155108391483`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl03tIU1EcB/CjLs2yfCQUFjrpVi41dTPNCu+ptXK1hphR2NupGTldhuY/*)
(*2XyE2h+1TNOwh9noOWugDqmQWWbqeqynj2GN0LLAmqVmOrXvrR9cDh/Ovd/z*)
(*43e4/okZccmOhJAoPNz6v4IoGZtGzaMkXtLd0RhIicfDuEV22Kh7a8mG21SZ*)
(*tYPwflPOnWi4etz8yASbLccj5sEBCyMUGtjNllgyspySyrlns6Jgvf10RR/c*)
(*VtPk1e5FiU0ZkdQLxx4wiyTwzUBTtgUuTpG0GzzxnXVtSTdsfqzdGwC3CPO3*)
(*v4bVeQUntB6UbFDwFc2wRlW0KByO5R9suAbb1g/tue9OCc+vh82B+c96rojh*)
(*sWvu7pTbf+z8fHouJaoEk9+UgBJrpvDXJ7i48Mw3A2zbEBpmgZm8vQ0ZsHnN*)
(*/Yw38FidqDUYjj2cXmGAK2fklo8EUBLa+ao1E+Z97PfrgOmD8Nn2OZTMbOk7*)
(*ooPJzn1COTwQ8SW3inu/wD9d6Ya5ZoVtLoOtlb365NmU6Ly27iqF9UU2S8ws*)
(*SmQ3JGkaWCPocg5ypaTrSXBkCWyUrJAyMzHn3TXiHFglvFQodqEk/JtjeQKX*)
(*v2P4TrkzJUl1Xb4hcOyZ7CFfWJNePzi6DOtAzGLLDEoujkin6mFj4ld5E+zx*)
(*waldCdMGU6kBbrnQdm4prA9c3XkXXnXlmLZvKe6dUfBKYbsg9agOtv1IWyWH*)
(*g14JJ9WwtSBV3clDP6e2yBWw5qvLbQEckMwkxMEeoWFfYpwwryOezBYub+Lk*)
(*8nWO6ON7nUgKmwebtzMO3P2KxJvg0POv1S4E58mb3CjMt+YXTU+yZFjmuiAE*)
(*NrqEOETbWULvFaR6wnSyNf7TOEt0mx4O9S/Bfr/98/Aflqxlo421nA9936aE*)
(*vS/Xmg/D/IkFBhHcKNtTxcDVNdelDBz/cn5KL4M8jeyDN1x2tzq7Ct7vUyy2*)
(*jCE/J1KigNUnBuq3wak/k15Ecvb3lKX8Zok+v8LXB7Zqo7SzRllS+XSjwJXz*)
(*hQR/6TD6v/p+yIHLe7fyVtRPlvC4/w/+Vzb2Lw7yT1c=*)
(*"]], Inset[$CellContext`\[Gamma], {12.491215510839147`, 2.5087844891608513`}, ImageScaled[{0, 1}]], Line[{{6.000000000001819, 5.}, {10., 8.999999999998181}}], Polygon[{{8.424264068711928, 7.424264068711929}, {7.858578643762691, 6.292893218813452}, {7.292893218813452, 6.858578643762691}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {8.491215510839147, 6.508784489160852}, ImageScaled[{0, 1}]], Line[{{14., 5.000000000001819}, {10.000000000001819`, 9.}}], Polygon[{{12.424264068711928`, 6.575735931288071}, {11.85857864376269, 7.707106781186548}, {11.292893218813454`, 7.141421356237309}}], Inset[QFTSymbols`e, {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{9.5, 0.5}, {10.5, 1.5}}], Line[{{9.5, 1.5}, {10.5, 0.5}}]}}, Inset[$CellContext`T25 $CellContext`P1 $CellContext`N119, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifigfhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {132.8671875, 21.96484375}, {0, 0}, {23.03125, 21.2265625}, {{1., 0.}, {0., 1.}}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJwd0g0slHEcB/AfTlRyulR64S5d0Uon7Momz7/Fwmq9qZQyI3kZudbLrvJy*)
(*tWq04RB6URNtXaUtiWvIzsaFi673lycl9DJmnUXz1sv36b89z3+fff//3//l*)
(*eRbFpG6LsyYifzxCT/bCy4XR/+bM6Pv6u702sO78/aJDsxh55+Vsk8BZu2/p*)
(*ByWMom0Va/3g1uKhnemwua+tNBUu008kLxXyoYPnjbBLd4tkYCbm71s3qJzH*)
(*KGHMVdEG664pntTB3/nk1jpYdalOGTqfUciu4sFaYXxA5PU3sHfTcUk1rMlI*)
(*00QuwPpxojs34IQ8da9JsJEZTwt5lN0z94WoyzqTNsCWSxLvKNg+8EGmxQnn*)
(*upY2TwOPbpC6aWCt8cC5XNic6JU5Ksb8rvj4AlgmCbzNOzJy6nEPKYa1ohOv*)
(*Gmcw2tIe8uAGbHna6aJ3wPrOJaVGWDVndMfr6YwiyuPGrVwxP60k0xMe3W7+*)
(*GgE7ORU+rpqGcYE/QtrgMr50IgXO8s332OSGui9bPLfCsga7Ah42hPmlhMJr*)
(*BgonE6WM2NU5VeuEvCuBH4RVc/Uf5PD+6rduChmje6psx89TGfn1Wxftgc26*)
(*6eFJsOfe8vVqWNsRc7LBntHbFq/V2TCre1bL2zHaeDM4WQurXnuMvZjCqFKy*)
(*KbIA3qIWy/W22PfRVWEXYFm8++bLInwn5beMK0L9tI/5BTa41+a+Q5Uw6co6*)
(*qqwZiT59kbbDhiDTsA180TajaEQY77nSP8cK91Hta/RahP1eyE8IheWnompS*)
(*YVlzsHYFnHUmr78WpvqnnXL4yB6T9I+Q53Q4uMKTFWIxc0ceMOZDsEj6nlPD*)
(*3b5LohuIUbgsvqZCyB85lgfDQbGy2CZYs7YnR/GXo2af0zueC/n4kNXB3xyV*)
(*dgdkv4MNluSzURMc6ZabjvGC4/rfy8c4Gk5R7u+Cy040eg/84ujhZG5Jn5Af*)
(*sa3hhzlysMRkjwj1W+qXzf/JkZlPV85ajP++0ONw4xBH0Sb1nUBYM7th2Gzh*)
(*yFD5kj8Gdwcow0Lh8OB37Q9hg7gmVwz/b3KcV+gt3D8O/EaU*)
(*"]], Inset[$CellContext`Z, {8.491215510839147, 3.4912155108391483`}, ImageScaled[{0, 0}]], Line[CompressedData["*)
(*1:eJwl03tIU1EcB/CjLs2yfCQUFjrpVi41dTPNCu+ptXK1hphR2NupGTldhuY/*)
(*2XyE2h+1TNOwh9noOWugDqmQWWbqeqynj2GN0LLAmqVmOrXvrR9cDh/Ovd/z*)
(*43e4/okZccmOhJAoPNz6v4IoGZtGzaMkXtLd0RhIicfDuEV22Kh7a8mG21SZ*)
(*tYPwflPOnWi4etz8yASbLccj5sEBCyMUGtjNllgyspySyrlns6Jgvf10RR/c*)
(*VtPk1e5FiU0ZkdQLxx4wiyTwzUBTtgUuTpG0GzzxnXVtSTdsfqzdGwC3CPO3*)
(*v4bVeQUntB6UbFDwFc2wRlW0KByO5R9suAbb1g/tue9OCc+vh82B+c96rojh*)
(*sWvu7pTbf+z8fHouJaoEk9+UgBJrpvDXJ7i48Mw3A2zbEBpmgZm8vQ0ZsHnN*)
(*/Yw38FidqDUYjj2cXmGAK2fklo8EUBLa+ao1E+Z97PfrgOmD8Nn2OZTMbOk7*)
(*ooPJzn1COTwQ8SW3inu/wD9d6Ya5ZoVtLoOtlb365NmU6Ly27iqF9UU2S8ws*)
(*SmQ3JGkaWCPocg5ypaTrSXBkCWyUrJAyMzHn3TXiHFglvFQodqEk/JtjeQKX*)
(*v2P4TrkzJUl1Xb4hcOyZ7CFfWJNePzi6DOtAzGLLDEoujkin6mFj4ld5E+zx*)
(*waldCdMGU6kBbrnQdm4prA9c3XkXXnXlmLZvKe6dUfBKYbsg9agOtv1IWyWH*)
(*g14JJ9WwtSBV3clDP6e2yBWw5qvLbQEckMwkxMEeoWFfYpwwryOezBYub+Lk*)
(*8nWO6ON7nUgKmwebtzMO3P2KxJvg0POv1S4E58mb3CjMt+YXTU+yZFjmuiAE*)
(*NrqEOETbWULvFaR6wnSyNf7TOEt0mx4O9S/Bfr/98/Aflqxlo421nA9936aE*)
(*vS/Xmg/D/IkFBhHcKNtTxcDVNdelDBz/cn5KL4M8jeyDN1x2tzq7Ct7vUyy2*)
(*jCE/J1KigNUnBuq3wak/k15Ecvb3lKX8Zok+v8LXB7Zqo7SzRllS+XSjwJXz*)
(*hQR/6TD6v/p+yIHLe7fyVtRPlvC4/w/+Vzb2Lw7yT1c=*)
(*"]], Inset[$CellContext`Z, {12.491215510839147`, 2.5087844891608513`}, ImageScaled[{0, 1}]], Line[{{6.000000000001819, 5.}, {10., 8.999999999998181}}], Polygon[{{8.424264068711928, 7.424264068711929}, {7.858578643762691, 6.292893218813452}, {7.292893218813452, 6.858578643762691}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {8.491215510839147, 6.508784489160852}, ImageScaled[{0, 1}]], Line[{{14., 5.000000000001819}, {10.000000000001819`, 9.}}], Polygon[{{12.424264068711928`, 6.575735931288071}, {11.85857864376269, 7.707106781186548}, {11.292893218813454`, 7.141421356237309}}], Inset[QFTSymbols`e, {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{9.5, 0.5}, {10.5, 1.5}}], Line[{{9.5, 1.5}, {10.5, 0.5}}]}}, Inset[$CellContext`T25 $CellContext`P2 $CellContext`N120, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifigfhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {154, 22}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{10., 1.000000000001819}, {6.000000000001819, 5.}}], Polygon[{{8.424264068711928, 2.5757359312880714`}, {7.858578643762691, 3.7071067811865475`}, {7.292893218813452, 3.1414213562373097`}}], Inset[QFTSymbols`e, {8.491215510839147, 3.4912155108391483`}, ImageScaled[{0, 0}]], Line[{{10.000000000001819`, 1.}, {14., 4.999999999998181}}], Polygon[{{12.424264068711928`, 3.4242640687119286`}, {11.85857864376269, 2.2928932188134525`}, {11.292893218813454`, 2.8585786437626903`}}], Inset[QFTSymbols`e, {12.491215510839147`, 2.5087844891608513`}, ImageScaled[{0, 1}]], Line[CompressedData["*)
(*1:eJwl0w0slHEcB/BHL8vqJOdw3l8yLIqNcnrhyct0lVCW010j7+XoULjaOJFJ*)
(*3IuxaSjlti5Zetk4Rs5rN9a6lnLcGBaTLWMkTK7vU7/t2X+f7f/y/f9/exzj*)
(*b15M2kEQhB8+avxfziSxpUc5kkSUbHB3+0GS8PAkv/yB+8WRV3JhcjSYswb7*)
(*tFXwA2A5Lc5hFmaGunkwYNq0/sQHWKBcrl5zIomqNvarWlj9UlQ+C3Nkd6sS*)
(*qP2Dk3dOwgy9atMRVrgP5+jg4HfPEnUOJCGN7qvXwnExKqtqeOvWx5MauKbo*)
(*KicKZqxZb3TBS+2OebZww307oycw4elaMGdPEsWqw31ZsMZ9TN0Mr9r5Nx6H*)
(*Xy/1dJXBXkz/s5s4l6XKdBbCpcWShVY4z6mmJh0W6IeFObCoJdGTB7uNnZf4*)
(*w26uCR1+cJWvZJ0Ok2/lj7ftkOdX4JFVKre8fuEFLLrB507CgpXF0CBYztiT*)
(*PASr60MWtLZYZ1vc/QZOLShfzIWb6WHcSlgbtJ7uDPMYSnEGbNhGvB+zQT4l*)
(*X8SGvUoEMhls+PBzkzPMKS9cOQOzIh7QCer82J/jemu8Z3Y+rQ0553/wmlph*)
(*jVCSkUFZ7KLnwwRbf9rFnuqnZMYJdujcU6lDzobxJLbOCvuIsk1K4byB36I6*)
(*mBXfYeYKK78te6fBpTQTZSdyEu6u7CA4lRtvdhnWmN1ptIBVYdxrBpSl0/vH*)
(*LTFq60IGkVMRljx9DxZE1GoaYaZBKs0UFk2kpFTC82tThyqZWB8g1pXANZ+K*)
(*0vbBpLF/4G34QG9Re5kF+jDi4nsJXsqXC63gdY1WZEntv9o722OOeeWdxgPU*)
(*vU3VRsWwej04PJq6t3lSSSzMCisY+oqc2ghh/wVY8KjjGBtWKK7T2bDGIH9v*)
(*J3KRud4bQTA5YTjKglMV23M+sErKb1QjF1NiM0KHp04RpZmwJrPl+agZ3mku*)
(*oPsoLJV9dymE8yJzwk1hwQzvnAnc8LQgZhfMmcharWCgn9T/B/8rBvkXdIJB*)
(*VA==*)
(*"]], Polygon[{{7.575735931288071, 6.575735931288071}, {8.707106781186546, 7.141421356237309}, {8.14142135623731, 7.707106781186548}}], Inset[$CellContext`W, {8.491215510839147, 6.508784489160852}, ImageScaled[{0, 1}]], Line[CompressedData["*)
(*1:eJwt03tIU1EcB/DrC5UEdU2dVm7K1Pli5mQa+Lih5sxHIAbiUoabbj2mSWX7*)
(*w2RZlI/S5dsc5gsSmj1wioiJgZlzYTOstLGM1BLF0tCQmNL3xr1w7+HDued3*)
(*z/2d38+voCSr0JYgiBO4qZGwpx5ckvh/+ZPETvfHbRs4O3lxZsSPJNrenAp2*)
(*hid18+Yy+Hllq68PLDOqnsTDit+y2WjYZL4hPEzNq6KTpbDLVkH1Lgfrn3aV*)
(*dcB6a13rCpz9zqvIAu8ohTILPJKe18ENIIm+UGOZGWZ1Dpguwm1fY6sXYTIh*)
(*fmIAnoysPPse1qeMba/CSVKO9BU1/+yWwj0QcTnyoV54L92ZxYft2Z8TVDBx*)
(*ZtyFhK29rq4kLJIKElPgNX1LgpVNEhM/BwWpsJsz+4MSdip156bBItuXF5Z8*)
(*SYJXyM3Ngvfk8ntiOKomLVMKxxyyhmwcI4mwuch9NbV+3JjQBFuDFVd0sFOV*)
(*YTkHjnl0vW8FNiln94XwZPt0Y2AQ4q4XNPFgty92BiUsCXg4zIW1u6kHergr*)
(*s3aBA2uK9Zt/4JFacTEDlg0u+PJ5JJEzknR36yj2s27bnAsr5h1ChmDeuZ5E*)
(*FTxd9CIuH154HR5dDXMsCvPmEZJIf5x8SQPHbDRaz8M6Roa4AeaNOTaYfbCf*)
(*a8dPN8EawYOgDHhN+KOig4of/0tk8MZ/Ta6U6mAi2/Q9B7ZfWmXPwJKewr82*)
(*cJtDRfMu9T6zVTvFQt4GBVPhwdjvjEjfB3Nv5g+VwG7f/EUtcNXt+vVhWG2R*)
(*yxvgq7lG9gGsmSq6U8eizy0E3+ss91az6HOFt9oZEfks+txhdb7jnD+LrgtY*)
(*Uq9aNnrRdUPNV5SrxbCWqis4Ilbc/cmTJPqpuoMvt48KUz3puoT7O/lvRz2Q*)
(*d6puqffzTm4KPei6puJvF9dMMem6D0WeVwzaElhC9QUsceDHRcETVN/AMfX3*)
(*sxhMuq/grcSBZTsm3XdhyCs1Msl/dmI9+g==*)
(*"]], Inset[$CellContext`\[Gamma], {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{9.5, 0.5}, {10.5, 1.5}}], Line[{{9.5, 1.5}, {10.5, 0.5}}]}}, Inset[$CellContext`T25 $CellContext`P1 $CellContext`N121, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifigfhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{10., 1.000000000001819}, {6.000000000001819, 5.}}], Polygon[{{8.424264068711928, 2.5757359312880714`}, {7.858578643762691, 3.7071067811865475`}, {7.292893218813452, 3.1414213562373097`}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {8.491215510839147, 3.4912155108391483`}, ImageScaled[{0, 0}]], Line[{{10.000000000001819`, 1.}, {14., 4.999999999998181}}], Polygon[{{12.424264068711928`, 3.4242640687119286`}, {11.85857864376269, 2.2928932188134525`}, {11.292893218813454`, 2.8585786437626903`}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {12.491215510839147`, 2.5087844891608513`}, ImageScaled[{0, 1}]], Line[CompressedData["*)
(*1:eJwl03tIU1EABvCbj+yP0rFWaalba9BDapq2NEyvmTRTY9kDaWU+5mOZOknt*)
(*Bj6WRWWQ1my5qUU+yEUGlpXLAmfYmA9oRdZsjGaajWK0IGWYWd+pA5fD73LO*)
(*ud93L3dtVnFqjgdFUVG4yPx/CGhq/g/GWpo6mDA+rF9HU0vSN/ouwIaut9Zy*)
(*WBb59N0snDHC3IuBJZX5E59hs7VStBy+vqw5zAQvdWXVzvBpKvmiqa8F7p6v*)
(*a5yCZfuP18pgV6FIZoN1oQ4tH9aFjJRb4d09bTIrj6Y09ujacdiRmSq8Dg9u*)
(*rTn0BjYYBmJT4d3ZvOwBWKyP910NS3h5j9thptW9xcalKS/uh1gGZuU6X7XC*)
(*7nY/Pxp2Z56broYVR0a4pJciSnumBL50vv7rE5jhazSFsOBs+uNi2BFk65WT*)
(*/T3hxs0k57beJCms8a5Sz5Cc3/Kzo8jzPn7mDsO3jzV5LwTjvQ1OlXTBVJcw*)
(*oBN2iL5UNZP1A6xeEcwqC9tLeilGiywPg2iqi50iVcGWeHehAE7uTDh5FTZx*)
(*TnreCMT9l5u318J2fqOADW842hbPwJHafS9a19BUxFcP9RFyfsjc2F5Y1mMJ*)
(*FsK6Pc8YP5hny7c6kVNc2nHNuRr7vjXMk14ZD0rXf4R5z31UVuS6/SEn0Qpf*)
(*Cr+2PgW2rLhZ8B5WxHwXDyFXqCrMYwh2HzBPp8Hu06LATjitLWduEeyKizAU*)
(*wPmcxhYjcpp+eo5xYMmw+FEHvESjOdURgPkTX0x6df/epebBSltengp2zNo3*)
(*qfzxfGPuhTrYP0lu8ITdNysClGS/3j5RvQrrtOzQdNg1kKT0g5XpPq/5sKQ/*)
(*TK1fiTz1zOTIGvJ9+6MqYaaqQiklbvp1UApviJa2kl6mmAvOZFih7RMlwjqd*)
(*nJ0I624JR/uQiyVo2J5A1h+Lc4pgzeJPZhE5/0fRZSNy2bk7nBzYPDXUUgxn*)
(*iL0axldg9hbujIAj5b53a+DQ+iupbJi5c1jMhh3x9ydJr7SylBN1HPQi/x/8*)
(*b3Dov3eIQN4=*)
(*"]], Inset[$CellContext`Z, {8.491215510839147, 6.508784489160852}, ImageScaled[{0, 1}]], Line[CompressedData["*)
(*1:eJwt03tIU1EcB/BjKk6xfE2br03Fx0wNI8sptt1s5QxF7aW1BaWlYvOVZQmm*)
(*9w+1VeZMjTINM0UlC7JCpy0caLbUYoHSRLYkMkQiEk1WRPY9sQv3Hj7cc+65*)
(*nN/3F5hdfOjsJkJIHG46Ejv6CGbI/yuIIQbDaOQm+MitCfvhQIZohS97HWF9*)
(*Q8aJS7BiteOTDywauqmUwD/4ZFwE85KEkVw4XzaYcQZWalZurwcwpLuo5lw7*)
(*PN3P1i/CS0Rib4azpLm2ZliTcrItOATzIqbK5+n8HsliAVyfOXbfCOdXPuzt*)
(*h/9ceJdggJ0PmK9+hrnrvr9ewZX5Sp1zKNbV8jd3wH4FzW3hMKuLGjtPv+cg*)
(*6IyHLXxxVzz8RfCmcB+cH13ZsiZgiO77853JsKujYLYQTuhLXcqAF/7eWf3G*)
(*xzzl+6AcOOtZK/8KvNDz5CkLRxfzV0LgF1EDTv3Uy7WKJX+GSOs4CjNMZo2D*)
(*Wthvh+m6RxhDZOFbpltgmW6YI4VV8ZzqHNjVbPu2ED4Vcm8wGGa7NwKaYZ2w*)
(*xN/kh/PSJsUOwbzSOdIMz8RJ6uapvbqOJsOi9GvuRMiQkgfuIQTm3PjwKBju*)
(*K6tyHvLFPholmwwbKtRFRbCCq2kogi2yjb2h8GP3VHkTLNQ6NM37MITxrxkd*)
(*gO+yZW4quJvrkDsJi7JHPMNgtkApN8ONzm4arTfq8DNx+xrdX57teQxuiVVb*)
(*3MPx/6ny0zawcC5FLYaNxvb9EzzM25iqKIcvp7cZumBVjXp5EGZNeXlNcAxP*)
(*fPA3rJc0zNfxrHXbhnNzESdehGtoXeHomdDYw3AfrTtsMRhZb541FzCvXuvy*)
(*eqs1N7DBIk3LhFtormAmtXpy1gvrae7gktaR3cmwguYS1ttUOWk9sY7mlu5v*)
(*4nwUwSU01/R9o7JLz7XmPgJ12kNUpXAM7QtY81Uyugsep30DsxnlaR5ca1/B*)
(*fZ3Vx+241r6LRN3oyGX+AQDfM4c=*)
(*"]], Polygon[{{12.424264068711928`, 6.575735931288071}, {11.85857864376269, 7.707106781186548}, {11.292893218813454`, 7.141421356237309}}], Inset[$CellContext`W, {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{9.5, 0.5}, {10.5, 1.5}}], Line[{{9.5, 1.5}, {10.5, 0.5}}]}}, Inset[$CellContext`T25 $CellContext`P2 $CellContext`N122, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifigfhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{10., 1.000000000001819}, {6.000000000001819, 5.}}], Polygon[{{8.424264068711928, 2.5757359312880714`}, {7.858578643762691, 3.7071067811865475`}, {7.292893218813452, 3.1414213562373097`}}], Inset[QFTSymbols`e, {8.491215510839147, 3.4912155108391483`}, ImageScaled[{0, 0}]], Line[{{10.000000000001819`, 1.}, {14., 4.999999999998181}}], Polygon[{{12.424264068711928`, 3.4242640687119286`}, {11.85857864376269, 2.2928932188134525`}, {11.292893218813454`, 2.8585786437626903`}}], Inset[QFTSymbols`e, {12.491215510839147`, 2.5087844891608513`}, ImageScaled[{0, 1}]], Line[CompressedData["*)
(*1:eJwl0w0slHEcB/BHL8vqJOdw3l8yLIqNcnrhyct0lVCW010j7+XoULjaOJFJ*)
(*3IuxaSjlti5Zetk4Rs5rN9a6lnLcGBaTLWMkTK7vU7/t2X+f7f/y/f9/exzj*)
(*b15M2kEQhB8+avxfziSxpUc5kkSUbHB3+0GS8PAkv/yB+8WRV3JhcjSYswb7*)
(*tFXwA2A5Lc5hFmaGunkwYNq0/sQHWKBcrl5zIomqNvarWlj9UlQ+C3Nkd6sS*)
(*qP2Dk3dOwgy9atMRVrgP5+jg4HfPEnUOJCGN7qvXwnExKqtqeOvWx5MauKbo*)
(*KicKZqxZb3TBS+2OebZww307oycw4elaMGdPEsWqw31ZsMZ9TN0Mr9r5Nx6H*)
(*Xy/1dJXBXkz/s5s4l6XKdBbCpcWShVY4z6mmJh0W6IeFObCoJdGTB7uNnZf4*)
(*w26uCR1+cJWvZJ0Ok2/lj7ftkOdX4JFVKre8fuEFLLrB507CgpXF0CBYztiT*)
(*PASr60MWtLZYZ1vc/QZOLShfzIWb6WHcSlgbtJ7uDPMYSnEGbNhGvB+zQT4l*)
(*X8SGvUoEMhls+PBzkzPMKS9cOQOzIh7QCer82J/jemu8Z3Y+rQ0553/wmlph*)
(*jVCSkUFZ7KLnwwRbf9rFnuqnZMYJdujcU6lDzobxJLbOCvuIsk1K4byB36I6*)
(*mBXfYeYKK78te6fBpTQTZSdyEu6u7CA4lRtvdhnWmN1ptIBVYdxrBpSl0/vH*)
(*LTFq60IGkVMRljx9DxZE1GoaYaZBKs0UFk2kpFTC82tThyqZWB8g1pXANZ+K*)
(*0vbBpLF/4G34QG9Re5kF+jDi4nsJXsqXC63gdY1WZEntv9o722OOeeWdxgPU*)
(*vU3VRsWwej04PJq6t3lSSSzMCisY+oqc2ghh/wVY8KjjGBtWKK7T2bDGIH9v*)
(*J3KRud4bQTA5YTjKglMV23M+sErKb1QjF1NiM0KHp04RpZmwJrPl+agZ3mku*)
(*oPsoLJV9dymE8yJzwk1hwQzvnAnc8LQgZhfMmcharWCgn9T/B/8rBvkXdIJB*)
(*VA==*)
(*"]], Polygon[{{7.575735931288071, 6.575735931288071}, {8.707106781186546, 7.141421356237309}, {8.14142135623731, 7.707106781186548}}], Inset[$CellContext`W, {8.491215510839147, 6.508784489160852}, ImageScaled[{0, 1}]], Line[CompressedData["*)
(*1:eJwt03tIU1EcB/DrC5UEdU2dVm7K1Pli5mQa+Lih5sxHIAbiUoabbj2mSWX7*)
(*w2RZlI/S5dsc5gsSmj1wioiJgZlzYTOstLGM1BLF0tCQmNL3xr1w7+HDued3*)
(*z/2d38+voCSr0JYgiBO4qZGwpx5ckvh/+ZPETvfHbRs4O3lxZsSPJNrenAp2*)
(*hid18+Yy+Hllq68PLDOqnsTDit+y2WjYZL4hPEzNq6KTpbDLVkH1Lgfrn3aV*)
(*dcB6a13rCpz9zqvIAu8ohTILPJKe18ENIIm+UGOZGWZ1Dpguwm1fY6sXYTIh*)
(*fmIAnoysPPse1qeMba/CSVKO9BU1/+yWwj0QcTnyoV54L92ZxYft2Z8TVDBx*)
(*ZtyFhK29rq4kLJIKElPgNX1LgpVNEhM/BwWpsJsz+4MSdip156bBItuXF5Z8*)
(*SYJXyM3Ngvfk8ntiOKomLVMKxxyyhmwcI4mwuch9NbV+3JjQBFuDFVd0sFOV*)
(*YTkHjnl0vW8FNiln94XwZPt0Y2AQ4q4XNPFgty92BiUsCXg4zIW1u6kHergr*)
(*s3aBA2uK9Zt/4JFacTEDlg0u+PJ5JJEzknR36yj2s27bnAsr5h1ChmDeuZ5E*)
(*FTxd9CIuH154HR5dDXMsCvPmEZJIf5x8SQPHbDRaz8M6Roa4AeaNOTaYfbCf*)
(*a8dPN8EawYOgDHhN+KOig4of/0tk8MZ/Ta6U6mAi2/Q9B7ZfWmXPwJKewr82*)
(*cJtDRfMu9T6zVTvFQt4GBVPhwdjvjEjfB3Nv5g+VwG7f/EUtcNXt+vVhWG2R*)
(*yxvgq7lG9gGsmSq6U8eizy0E3+ss91az6HOFt9oZEfks+txhdb7jnD+LrgtY*)
(*Uq9aNnrRdUPNV5SrxbCWqis4Ilbc/cmTJPqpuoMvt48KUz3puoT7O/lvRz2Q*)
(*d6puqffzTm4KPei6puJvF9dMMem6D0WeVwzaElhC9QUsceDHRcETVN/AMfX3*)
(*sxhMuq/grcSBZTsm3XdhyCs1Msl/dmI9+g==*)
(*"]], Inset[$CellContext`Z, {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{9.5, 0.5}, {10.5, 1.5}}], Line[{{9.5, 1.5}, {10.5, 0.5}}]}}, Inset[$CellContext`T25 $CellContext`P3 $CellContext`N123, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifigfhgh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[{{8.500000000001819, 7.500000000001819}, {6.000000000003638, 5.000000000003638}}], Polygon[{{7.674264068711929, 6.674264068711929}, {6.542893218813452, 6.108578643762691}, {7.108578643762691, 5.542893218813452}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {6.758784489160852, 6.741215510839148}, ImageScaled[{1, 0}]], Line[{{8.5, 7.5}, {10., 9.000000000001819}}], Polygon[{{9.674264068711928, 8.674264068711928}, {9.10857864376269, 7.542893218813452}, {8.542893218813454, 8.10857864376269}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {9.741215510839147, 7.758784489160852}, ImageScaled[{0, 1}]], Line[CompressedData["*)
(*1:eJw9lH1MU1cYxg+wdXOsmfGeCJbSL8BCERHOxliQ+S4kEsaQgsZCYAM/OLWY*)
(*DDJNFidhGDL+USYuA7lalThEtxhXO9PUZVs6qF9wxK4QP+qSApFtOhYcigsN*)
(*9u6wLOckNze/nNx7zvu+z/MYtzdVNsQihCr4s/SOoqW1Bv57IQxzK8/3DLNM*)
(*QMt1T7qrMMyMHPm8W+bs+wnlD2DoCn+q3UY5u9YOvhfGsLY6WpdFlnhl/pVF*)
(*DP2O7fURxQKobdiyGMEQezRBfZ1xDjzqyAhhKN89Cz0y58fOPTUnMeyc/e3a*)
(*Tsq5S/d8fhOGyuQOSghnw/y6G/MS6HXByRjEua+xO3RCgn9e8qsCLAPQxP66*)
(*lysl+Ka50nVC5gyqzy4mSZC2xTbSSDmjnOzOGAkM+2dsbxLOvptv3FZJ8J2Z*)
(*7IpDnK2vPHxgkWAsNKa9xdL5fV5jRQ4JqkPs1DGZs+sL1/rvJXDTKh2lnPsC*)
(*PzMJQ6T9+mAO4RyI2zLZiOGF6cxvnytmfl7LJs8lDBV/ORZuMM5daWHLHxgC*)
(*CRu/7pE5t52pnopiGKje491BOVvth9TPMNzXfYlzyNJ+4bmhUQxbF32no8pq*)
(*fp7mx3AnhtLBaBFjnLtWLLcXYHAH5+7JMmdXW8nBSQmcWWmldsoZee7bD0rg*)
(*+eitjtcJZ2tG++kiCZ4d8LTHIM713s0aSYJytG7jKEvj81VHRpUVEPI+uHtM*)
(*5mw9Pm16VQIH0ZfZKec+f/BwngRDB4IeQjg3py+7s0+CyRdVGQhxnnDYzt6U*)
(*wHy+381YKu+fu7jfjMGSmF0ry5wNh+MutGBwFpxbTSnniYsfvDOI4W5mOJ4Q*)
(*zvUz7f5Z/L/uOMPe1KMKhvRxw1PGUsR+g9/G600R39/5PfAVpSni//c215QR*)
(*kiLON0QWbiuKSdzv7dasEsZM4v69bMLdK5tEfebiJHMDNYn63cqtyznEJPoT*)
(*31rSElWMon+lnVf3jTCj6G9DMHSpVzaK/pdnqXm9RjEfT2HMD4QYxfw+VG94*)
(*PwYZxXwfPtr95ygziPnrXYeKnbJB6OPp35e3OqhB6GevtkeVRwxCX77UcWss*)
(*Mgj99cQ3feKU9UKfJ3PLhwjRC/1aS6lvmOmEvmvfrbq6jeqE/p0uOXtBSRb+*)
(*GFxmth6Rk4V/vLYKh4UkC39d0NWc8jOt8B9+/PFcHdUKf/qHatYvKknCv7VX*)
(*nuTKcpLwd74xtzmPJAn/78gwto4xjciH6C+B6SaqEfnhXVOwIR5pRL4MlMXB*)
(*GXmVyJ8pQNcKySqRT5Zdv06Ns0SRX7rg2WAjTRT5pooqfCWI/PsXa3vzhg==*)
(**)
(*"]], Inset[$CellContext`Z, {10., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{14., 5.000000000001819}, {10.000000000001819`, 9.}}], Polygon[{{12.424264068711928`, 6.575735931288071}, {11.85857864376269, 7.707106781186548}, {11.292893218813454`, 7.141421356237309}}], Inset[QFTSymbols`e, {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{8., 7.}, {9., 8.}}], Line[{{8., 8.}, {9., 7.}}]}}, Inset[$CellContext`T26 $CellContext`P1 $CellContext`N124, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifihfggh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJwl0l1IU2EYB/CnD2mDsxppx01zaZ2LETV30YeykhdLmGGoXR0wcExMaVmD*)
(*MXJIeQqzIV6ULVjhxy6KebVGHybZsHSMXXQxi67WRZDODYt0i6URW/+XLs77*)
(*8ON9zjnP/+WtsV+70L2diCQ8vJKWLzr2v5Yx0t39Kfpgb6jneKGU0XRq5FG5*)
(*nlHYJBYE7FOHEr0J66yaqjrYf7rzzyJsnlusvQMnlkctGThRazyRhWftcsUm*)
(*LK+6Jt370Hd+Ll+EbRNn1STiOx+ar+ytYORcup0chFnjUaEBDgiNQyk4kXvS*)
(*5IW/Ckd8pnJGbSfnhzO8X/o83gnLZS/CbZWM1usfvx2BVQuXQyF41iGr5uH+*)
(*gi5bhBP5lIbnDPR8X2/ej3yj9bIVVlrPXR2DlR3FQ2PcG2pbEq6Odg0k4U3L*)
(*+JBUhfd256ckzH3vL33pg/3hV/f7YK8rFnwN9/tL98zAVrU+W+T921Y1xOf0*)
(*BX8zA3I1PGxvh42x7jNu+N1aS+sznjN5uCsAx+PMI2JOc+6TYwmWhY4312Fn*)
(*LjKgP8AoHfmYew9Pm25ICkzHZh78gMN2nCfff47zxNw2IWZuqmbUOxFc2QVL*)
(*6bXlYdha6YqKPPdBQ28E9i8ESk7B2ouejW9w3dNByy34ZfqXsgU79e5LaThu*)
(*bFmhGvzPo804kGsnvyewilcD+we+5cL4*)
(*"]], Polygon[{{6.825735931288071, 5.825735931288071}, {7.391421356237309, 6.957106781186548}, {7.957106781186548, 6.391421356237309}}], Inset[$CellContext`W, {6.758784489160852, 6.741215510839148}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{8.5, 7.5}, {10., 9.000000000001819}}]}, Polygon[{{8.825735931288072, 7.825735931288071}, {9.957106781186546, 8.39142135623731}, {9.39142135623731, 8.957106781186546}}], Inset[FeynArts`G, {9.741215510839147, 7.758784489160852}, ImageScaled[{0, 1}]], Line[{{5.999999999999551, 5.}, {14.000000000000451`, 5.}}], Polygon[{{10.6, 5.}, {9.4, 4.6}, {9.4, 5.4}}], Inset[QFTSymbols`e, {10., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJwt03tIU1EcB/DrC5UEdU2dVm7K1Pli5mQa+Lih5sxHIAbiUoabbj2mSWX7*)
(*w2RZlI/S5dsc5gsSmj1wioiJgZlzYTOstLGM1BLF0tCQmNL3xr1w7+HDued3*)
(*z/2d38+voCSr0JYgiBO4qZGwpx5ckvh/+ZPETvfHbRs4O3lxZsSPJNrenAp2*)
(*hid18+Yy+Hllq68PLDOqnsTDit+y2WjYZL4hPEzNq6KTpbDLVkH1Lgfrn3aV*)
(*dcB6a13rCpz9zqvIAu8ohTILPJKe18ENIIm+UGOZGWZ1Dpguwm1fY6sXYTIh*)
(*fmIAnoysPPse1qeMba/CSVKO9BU1/+yWwj0QcTnyoV54L92ZxYft2Z8TVDBx*)
(*ZtyFhK29rq4kLJIKElPgNX1LgpVNEhM/BwWpsJsz+4MSdip156bBItuXF5Z8*)
(*SYJXyM3Ngvfk8ntiOKomLVMKxxyyhmwcI4mwuch9NbV+3JjQBFuDFVd0sFOV*)
(*YTkHjnl0vW8FNiln94XwZPt0Y2AQ4q4XNPFgty92BiUsCXg4zIW1u6kHergr*)
(*s3aBA2uK9Zt/4JFacTEDlg0u+PJ5JJEzknR36yj2s27bnAsr5h1ChmDeuZ5E*)
(*FTxd9CIuH154HR5dDXMsCvPmEZJIf5x8SQPHbDRaz8M6Roa4AeaNOTaYfbCf*)
(*a8dPN8EawYOgDHhN+KOig4of/0tk8MZ/Ta6U6mAi2/Q9B7ZfWmXPwJKewr82*)
(*cJtDRfMu9T6zVTvFQt4GBVPhwdjvjEjfB3Nv5g+VwG7f/EUtcNXt+vVhWG2R*)
(*yxvgq7lG9gGsmSq6U8eizy0E3+ss91az6HOFt9oZEfks+txhdb7jnD+LrgtY*)
(*Uq9aNnrRdUPNV5SrxbCWqis4Ilbc/cmTJPqpuoMvt48KUz3puoT7O/lvRz2Q*)
(*d6puqffzTm4KPei6puJvF9dMMem6D0WeVwzaElhC9QUsceDHRcETVN/AMfX3*)
(*sxhMuq/grcSBZTsm3XdhyCs1Msl/dmI9+g==*)
(*"]], Inset[$CellContext`\[Gamma], {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{8., 7.}, {9., 8.}}], Line[{{8., 8.}, {9., 7.}}]}}, Inset[$CellContext`T26 $CellContext`P1 $CellContext`N125, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifihfggh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {88, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJwl0l1IU2EYB/CnD2mDsxppx01zaZ2LETV30YeykhdLmGGoXR0wcExMaVmD*)
(*MXJIeQqzIV6ULVjhxy6KebVGHybZsHSMXXQxi67WRZDODYt0i6URW/+XLs77*)
(*8ON9zjnP/+WtsV+70L2diCQ8vJKWLzr2v5Yx0t39Kfpgb6jneKGU0XRq5FG5*)
(*nlHYJBYE7FOHEr0J66yaqjrYf7rzzyJsnlusvQMnlkctGThRazyRhWftcsUm*)
(*LK+6Jt370Hd+Ll+EbRNn1STiOx+ar+ytYORcup0chFnjUaEBDgiNQyk4kXvS*)
(*5IW/Ckd8pnJGbSfnhzO8X/o83gnLZS/CbZWM1usfvx2BVQuXQyF41iGr5uH+*)
(*gi5bhBP5lIbnDPR8X2/ej3yj9bIVVlrPXR2DlR3FQ2PcG2pbEq6Odg0k4U3L*)
(*+JBUhfd256ckzH3vL33pg/3hV/f7YK8rFnwN9/tL98zAVrU+W+T921Y1xOf0*)
(*BX8zA3I1PGxvh42x7jNu+N1aS+sznjN5uCsAx+PMI2JOc+6TYwmWhY4312Fn*)
(*LjKgP8AoHfmYew9Pm25ICkzHZh78gMN2nCfff47zxNw2IWZuqmbUOxFc2QVL*)
(*6bXlYdha6YqKPPdBQ28E9i8ESk7B2ouejW9w3dNByy34ZfqXsgU79e5LaThu*)
(*bFmhGvzPo804kGsnvyewilcD+we+5cL4*)
(*"]], Polygon[{{6.825735931288071, 5.825735931288071}, {7.391421356237309, 6.957106781186548}, {7.957106781186548, 6.391421356237309}}], Inset[$CellContext`W, {6.758784489160852, 6.741215510839148}, ImageScaled[{1, 0}]], {Dashing[{0.030000000000000002`, 0.030000000000000002`}], Line[{{8.5, 7.5}, {10., 9.000000000001819}}]}, Polygon[{{8.825735931288072, 7.825735931288071}, {9.957106781186546, 8.39142135623731}, {9.39142135623731, 8.957106781186546}}], Inset[FeynArts`G, {9.741215510839147, 7.758784489160852}, ImageScaled[{0, 1}]], Line[{{5.999999999999551, 5.}, {14.000000000000451`, 5.}}], Polygon[{{10.6, 5.}, {9.4, 4.6}, {9.4, 5.4}}], Inset[QFTSymbols`e, {10., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJwt03tIU1EcB/DrC5UEdU2dVm7K1Pli5mQa+Lih5sxHIAbiUoabbj2mSWX7*)
(*w2RZlI/S5dsc5gsSmj1wioiJgZlzYTOstLGM1BLF0tCQmNL3xr1w7+HDued3*)
(*z/2d38+voCSr0JYgiBO4qZGwpx5ckvh/+ZPETvfHbRs4O3lxZsSPJNrenAp2*)
(*hid18+Yy+Hllq68PLDOqnsTDit+y2WjYZL4hPEzNq6KTpbDLVkH1Lgfrn3aV*)
(*dcB6a13rCpz9zqvIAu8ohTILPJKe18ENIIm+UGOZGWZ1Dpguwm1fY6sXYTIh*)
(*fmIAnoysPPse1qeMba/CSVKO9BU1/+yWwj0QcTnyoV54L92ZxYft2Z8TVDBx*)
(*ZtyFhK29rq4kLJIKElPgNX1LgpVNEhM/BwWpsJsz+4MSdip156bBItuXF5Z8*)
(*SYJXyM3Ngvfk8ntiOKomLVMKxxyyhmwcI4mwuch9NbV+3JjQBFuDFVd0sFOV*)
(*YTkHjnl0vW8FNiln94XwZPt0Y2AQ4q4XNPFgty92BiUsCXg4zIW1u6kHergr*)
(*s3aBA2uK9Zt/4JFacTEDlg0u+PJ5JJEzknR36yj2s27bnAsr5h1ChmDeuZ5E*)
(*FTxd9CIuH154HR5dDXMsCvPmEZJIf5x8SQPHbDRaz8M6Roa4AeaNOTaYfbCf*)
(*a8dPN8EawYOgDHhN+KOig4of/0tk8MZ/Ta6U6mAi2/Q9B7ZfWmXPwJKewr82*)
(*cJtDRfMu9T6zVTvFQt4GBVPhwdjvjEjfB3Nv5g+VwG7f/EUtcNXt+vVhWG2R*)
(*yxvgq7lG9gGsmSq6U8eizy0E3+ss91az6HOFt9oZEfks+txhdb7jnD+LrgtY*)
(*Uq9aNnrRdUPNV5SrxbCWqis4Ilbc/cmTJPqpuoMvt48KUz3puoT7O/lvRz2Q*)
(*d6puqffzTm4KPei6puJvF9dMMem6D0WeVwzaElhC9QUsceDHRcETVN/AMfX3*)
(*sxhMuq/grcSBZTsm3XdhyCs1Msl/dmI9+g==*)
(*"]], Inset[$CellContext`Z, {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{8., 7.}, {9., 8.}}], Line[{{8., 8.}, {9., 7.}}]}}, Inset[$CellContext`T26 $CellContext`P2 $CellContext`N126, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifihfggh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {110, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJwl0m9IE3EYB/CfdhdOHAxa7vx7m82o84XrReEQ5Uclboa4RjBJNPEPXmTa*)
(*6CCJXoi+ESaaFm1ggkYviohMMAcZrShbvrARDqypnEVuKJEsHXUr1/foxf0e*)
(*PjzP/Xie587U0u1sTyeEmPGokejUg6P/o56S5jrrEy+8fbRqXDlASZny6AOf*)
(*Q8lygz3IIH/l/kjUA+sM1xUBNg7fyQzDAxtmowSL3atlSdjX22mVYd/vn01s*)
(*LiXy2Yrz4kFKLLXPEynkm8dPa0g27g8vDinq/dMdfi9saZuZYVAfsl37xBso*)
(*8Xdx3wT4124s7oHJw3KNBAfNF7gw7Gv8Y5Jhjp+1J2HHl5WTYh4lPf36qyzm*)
(*6Nnj4ik4lNjQqnNSp3XSm4+645cfKKjPyI684gsoCdxSQgzygTn3Zw9saT2R*)
(*VqLu4e77vSW4/tRQsQQ7OtnSJKzbNFfKav3CqIstRP+P55tEzGHT5MRTyE+k*)
(*RbUEfQVubA0qcKzg0AsvTNZtzxjU997bt8ajL0dkIirAOtebhAc+kmnQSrA4*)
(*Es0Nw7bZgcMyvD1WU5OEaa2vWuSxT+GYm8UcUy3YJxybxj7hfNf6xzNGfI/9*)
(*WZMK6gMv7V+HYf/NoncM8suD33+8hTn3xV0Bvr3zum8TDjZ0cRJsdEbG/sIy*)
(*e84iw/pLjU/TTXh/at4hYg5G/U/gDDUW0n8AZ8YB*)
(*"]], Inset[$CellContext`Z, {6.758784489160852, 6.741215510839148}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGAQA2IQDQEqDgwsIFrJgeHLtEyNLcoODCVqvJuYgHyZahWJ*)
(*AiD/yiGNuX8VHRgupLHyWAH5DQt6W14B+TYmelWiQP6OLzyfjgL5czp6k5iA*)
(*/IKUqU/7gfwXfU/8/gLN+bHP4qo3kP9GK5CJASh/59q6v/8VHBhmrJm+FaRe*)
(*h0tcbQuQb7OhbSFIvQ/zbNECID/kfXjnKyD/QhYfpxWQbzD147ejQP4GgRVl*)
(*okD+lj8pr/qB/BP+lXFMQP6dry9ueoPUL7sw5Ze8A4OKJtA+IF9jVezv/0A+*)
(*h+NxrS1Ad0gUSm8EqZ8yO0uqAMi/8e6J1W+gvA/3Z14rIL9j+mLuq0B+S3xR*)
(*tSiQn2D09Xk3kG9gez2JCaSec/t5eSB/ws1Pvn+B5khc0lk/Xc4BEp6KUFrO*)
(*AQDZG3WN*)
(*"]], Inset[$CellContext`\[Gamma], {9.741215510839147, 7.758784489160852}, ImageScaled[{0, 1}]], Line[{{5.999999999999551, 5.}, {14.000000000000451`, 5.}}], Polygon[{{10.6, 5.}, {9.4, 4.6}, {9.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {10., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJwt03tIU1EcB/BjKk6xfE2br03Fx0wNI8sptt1s5QxF7aW1BaWlYvOVZQmm*)
(*9w+1VeZMjTINM0UlC7JCpy0caLbUYoHSRLYkMkQiEk1WRPY9sQv3Hj7cc+65*)
(*nN/3F5hdfOjsJkJIHG46Ejv6CGbI/yuIIQbDaOQm+MitCfvhQIZohS97HWF9*)
(*Q8aJS7BiteOTDywauqmUwD/4ZFwE85KEkVw4XzaYcQZWalZurwcwpLuo5lw7*)
(*PN3P1i/CS0Rib4azpLm2ZliTcrItOATzIqbK5+n8HsliAVyfOXbfCOdXPuzt*)
(*h/9ceJdggJ0PmK9+hrnrvr9ewZX5Sp1zKNbV8jd3wH4FzW3hMKuLGjtPv+cg*)
(*6IyHLXxxVzz8RfCmcB+cH13ZsiZgiO77853JsKujYLYQTuhLXcqAF/7eWf3G*)
(*xzzl+6AcOOtZK/8KvNDz5CkLRxfzV0LgF1EDTv3Uy7WKJX+GSOs4CjNMZo2D*)
(*Wthvh+m6RxhDZOFbpltgmW6YI4VV8ZzqHNjVbPu2ED4Vcm8wGGa7NwKaYZ2w*)
(*xN/kh/PSJsUOwbzSOdIMz8RJ6uapvbqOJsOi9GvuRMiQkgfuIQTm3PjwKBju*)
(*K6tyHvLFPholmwwbKtRFRbCCq2kogi2yjb2h8GP3VHkTLNQ6NM37MITxrxkd*)
(*gO+yZW4quJvrkDsJi7JHPMNgtkApN8ONzm4arTfq8DNx+xrdX57teQxuiVVb*)
(*3MPx/6ny0zawcC5FLYaNxvb9EzzM25iqKIcvp7cZumBVjXp5EGZNeXlNcAxP*)
(*fPA3rJc0zNfxrHXbhnNzESdehGtoXeHomdDYw3AfrTtsMRhZb541FzCvXuvy*)
(*eqs1N7DBIk3LhFtormAmtXpy1gvrae7gktaR3cmwguYS1ttUOWk9sY7mlu5v*)
(*4nwUwSU01/R9o7JLz7XmPgJ12kNUpXAM7QtY81Uyugsep30DsxnlaR5ca1/B*)
(*fZ3Vx+241r6LRN3oyGX+AQDfM4c=*)
(*"]], Polygon[{{12.424264068711928`, 6.575735931288071}, {11.85857864376269, 7.707106781186548}, {11.292893218813454`, 7.141421356237309}}], Inset[$CellContext`W, {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{8., 7.}, {9., 8.}}], Line[{{8., 8.}, {9., 7.}}]}}, Inset[$CellContext`T26 $CellContext`P1 $CellContext`N127, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifihfggh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {132, 0}, {0, 0}, {22, 22}], Inset[Graphics[Tooltip[{Thickness[0.005], Line[{{-1.1173284519827575`*^-12, 14.999999999996362`}, {9.999999999996676, 14.999999999996362`}}], Polygon[{{5.6, 15.}, {4.4, 14.6}, {4.4, 15.4}}], Inset[$CellContext`\[Mu], {5., 14.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{-6.701306176637445*^-13, 5.}, {6.00000000000067, 5.}}], Polygon[{{3.6, 5.}, {2.4, 4.6}, {2.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {3., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[{{20.00000000000112, 15.000000000003638`}, {10.000000000003325`, 15.000000000003638`}}], Polygon[{{15.6, 15.}, {14.4, 15.4}, {14.4, 14.6}}], Inset[Subscript[$CellContext`\[Nu], $CellContext`\[Mu]], {15., 15.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[{{20.000000000000668`, 5.}, {13.999999999999329`, 5.}}], Polygon[{{17.6, 5.}, {16.4, 5.4}, {16.4, 4.6}}], Inset[QFTSymbols`e, {17., 5.9452}, ImageScaled[{Rational[1, 2], 0}]], Line[CompressedData["*)
(*1:eJxF039MzGEcB/DnEC39kR9r0eTO90vfujvLPSGTfDKGTI7NkayU3UOmUOuH*)
(*/NoQ1s4oc3oOl2GINjHl5q+OofSEzM+Y0Rgm+f2j2J3P7ezx3b777rVn3+/3*)
(*eT6f98eQu26RvR8hZBregWfwUuHaNz9eBiCeNT21ZhV2OW6/SqRjgLTQkNGL*)
(*Vagdsqkoj6G1KV+TN6iQnubccZSj99enT9+qwt3jDtIh0GVJtg3lKgyOTXnf*)
(*nyhAasK8WUwFk2HL0kkUnZRS452pQn7m/bWrGTpBnzJ2pApXs202F0dbW0+n*)
(*dSvgtRXNEgIdmj8816tAdMc7u8+PPuZVEmsVqBr46HECVdGw1FapQMHD8w0r*)
(*WcCHqysqFFimuT86ObrZbUmuUkCsX77nlkBHGEZVn1Pg7Mt5OT4/2lNiXXtX*)
(*gU/6yRkWOhZIQ/fT3l4FVkfr5jOGtlozSg0q7G4sHOXiaH1frQVUKMpYf6ld*)
(*oKN6FrZbVYjq8oXqyDggb18yDzq/udiQSNGwIKsuVYVtP5qGrmLoBK1GH6/C*)
(*1HJ7H+doj3sHG4bnL4n8KkRgPaa8foAKSVU3BxESi/XipSF47piRAyyUoluW*)
(*JJ/0KbDIqdgZQxP9g424rhSmc87RL0pnd6JHPLkhhEB7YHsXuqw70N//69nD*)
(*plBKNfn+4vILjDFNft8945mLc03+P/Pe73YhNLm/1MykX36/JvffVPwunNI4*)
(*zEfwfNMKXSGMxcnz936f86GGo18E6xNuqnzeJuJk/VaE6X76/HGyviEH9s2z*)
(*0HhZ/8+T9nbZWbzsT0SH7yLn6OZg/4in5VS7QEcF+3s77JJbR4yy//WbTpRO*)
(*pOgzwXw4G3Ii8phR5mdwpHXBEW6U+XrzWou9I4wyfw8GRbp0xCTzefmg4wql*)
(*JpnfJkddnZ2ZZL7Dq4wHDnGTzP/8tu2nW4VJzkfBde/wP36TnJ+6uUX+8dQs*)
(*5yv+eN7mXGaW89fZudPh5GY5n1+yJ0S3CfS/+W38GeivGf4CcM9zyg==*)
(*"]], Polygon[{{10., 11.4}, {9.6, 12.6}, {10.4, 12.6}}], Inset[$CellContext`W, {9.0548, 12.}, ImageScaled[{1, Rational[1, 2]}]], Line[CompressedData["*)
(*1:eJwl0m9IE3EYB/CfdhdOHAxa7vx7m82o84XrReEQ5Uclboa4RjBJNPEPXmTa*)
(*6CCJXoi+ESaaFm1ggkYviohMMAcZrShbvrARDqypnEVuKJEsHXUr1/foxf0e*)
(*PjzP/Xie587U0u1sTyeEmPGokejUg6P/o56S5jrrEy+8fbRqXDlASZny6AOf*)
(*Q8lygz3IIH/l/kjUA+sM1xUBNg7fyQzDAxtmowSL3atlSdjX22mVYd/vn01s*)
(*LiXy2Yrz4kFKLLXPEynkm8dPa0g27g8vDinq/dMdfi9saZuZYVAfsl37xBso*)
(*8Xdx3wT4124s7oHJw3KNBAfNF7gw7Gv8Y5Jhjp+1J2HHl5WTYh4lPf36qyzm*)
(*6Nnj4ik4lNjQqnNSp3XSm4+645cfKKjPyI684gsoCdxSQgzygTn3Zw9saT2R*)
(*VqLu4e77vSW4/tRQsQQ7OtnSJKzbNFfKav3CqIstRP+P55tEzGHT5MRTyE+k*)
(*RbUEfQVubA0qcKzg0AsvTNZtzxjU997bt8ajL0dkIirAOtebhAc+kmnQSrA4*)
(*Es0Nw7bZgcMyvD1WU5OEaa2vWuSxT+GYm8UcUy3YJxybxj7hfNf6xzNGfI/9*)
(*WZMK6gMv7V+HYf/NoncM8suD33+8hTn3xV0Bvr3zum8TDjZ0cRJsdEbG/sIy*)
(*e84iw/pLjU/TTXh/at4hYg5G/U/gDDUW0n8AZ8YB*)
(*"]], Inset[$CellContext`Z, {6.758784489160852, 6.741215510839148}, ImageScaled[{1, 0}]], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGAQA2IQDQEqDgwsIFrJgeHLtEyNLcoODCVqvJuYgHyZahWJ*)
(*AiD/yiGNuX8VHRgupLHyWAH5DQt6W14B+TYmelWiQP6OLzyfjgL5czp6k5iA*)
(*/IKUqU/7gfwXfU/8/gLN+bHP4qo3kP9GK5CJASh/59q6v/8VHBhmrJm+FaRe*)
(*h0tcbQuQb7OhbSFIvQ/zbNECID/kfXjnKyD/QhYfpxWQbzD147ejQP4GgRVl*)
(*okD+lj8pr/qB/BP+lXFMQP6dry9ueoPUL7sw5Ze8A4OKJtA+IF9jVezv/0A+*)
(*h+NxrS1Ad0gUSm8EqZ8yO0uqAMi/8e6J1W+gvA/3Z14rIL9j+mLuq0B+S3xR*)
(*tSiQn2D09Xk3kG9gez2JCaSec/t5eSB/ws1Pvn+B5khc0lk/Xc4BEp6KUFrO*)
(*AQDZG3WN*)
(*"]], Inset[$CellContext`Z, {9.741215510839147, 7.758784489160852}, ImageScaled[{0, 1}]], Line[{{5.999999999999551, 5.}, {14.000000000000451`, 5.}}], Polygon[{{10.6, 5.}, {9.4, 4.6}, {9.4, 5.4}}], Inset[Subscript[$CellContext`\[Nu], QFTSymbols`e], {10., 4.0548}, ImageScaled[{Rational[1, 2], 1}]], Line[CompressedData["*)
(*1:eJwt03tIU1EcB/BjKk6xfE2br03Fx0wNI8sptt1s5QxF7aW1BaWlYvOVZQmm*)
(*9w+1VeZMjTINM0UlC7JCpy0caLbUYoHSRLYkMkQiEk1WRPY9sQv3Hj7cc+65*)
(*nN/3F5hdfOjsJkJIHG46Ejv6CGbI/yuIIQbDaOQm+MitCfvhQIZohS97HWF9*)
(*Q8aJS7BiteOTDywauqmUwD/4ZFwE85KEkVw4XzaYcQZWalZurwcwpLuo5lw7*)
(*PN3P1i/CS0Rib4azpLm2ZliTcrItOATzIqbK5+n8HsliAVyfOXbfCOdXPuzt*)
(*h/9ceJdggJ0PmK9+hrnrvr9ewZX5Sp1zKNbV8jd3wH4FzW3hMKuLGjtPv+cg*)
(*6IyHLXxxVzz8RfCmcB+cH13ZsiZgiO77853JsKujYLYQTuhLXcqAF/7eWf3G*)
(*xzzl+6AcOOtZK/8KvNDz5CkLRxfzV0LgF1EDTv3Uy7WKJX+GSOs4CjNMZo2D*)
(*Wthvh+m6RxhDZOFbpltgmW6YI4VV8ZzqHNjVbPu2ED4Vcm8wGGa7NwKaYZ2w*)
(*xN/kh/PSJsUOwbzSOdIMz8RJ6uapvbqOJsOi9GvuRMiQkgfuIQTm3PjwKBju*)
(*K6tyHvLFPholmwwbKtRFRbCCq2kogi2yjb2h8GP3VHkTLNQ6NM37MITxrxkd*)
(*gO+yZW4quJvrkDsJi7JHPMNgtkApN8ONzm4arTfq8DNx+xrdX57teQxuiVVb*)
(*3MPx/6ny0zawcC5FLYaNxvb9EzzM25iqKIcvp7cZumBVjXp5EGZNeXlNcAxP*)
(*fPA3rJc0zNfxrHXbhnNzESdehGtoXeHomdDYw3AfrTtsMRhZb541FzCvXuvy*)
(*eqs1N7DBIk3LhFtormAmtXpy1gvrae7gktaR3cmwguYS1ttUOWk9sY7mlu5v*)
(*4nwUwSU01/R9o7JLz7XmPgJ12kNUpXAM7QtY81Uyugsep30DsxnlaR5ca1/B*)
(*fZ3Vx+241r6LRN3oyGX+AQDfM4c=*)
(*"]], Polygon[{{12.424264068711928`, 6.575735931288071}, {11.85857864376269, 7.707106781186548}, {11.292893218813454`, 7.141421356237309}}], Inset[$CellContext`W, {12.491215510839147`, 7.491215510839148}, ImageScaled[{0, 0}]], {PointSize[0.04], Point[{10., 15.}], Point[{6., 5.}], Point[{14., 5.}], Point[{10., 9.}], {Thickness[0.015], Line[{{8., 7.}, {9., 8.}}], Line[{{8., 8.}, {9., 7.}}]}}, Inset[$CellContext`T26 $CellContext`P2 $CellContext`N128, {10., -0.5}, ImageScaled[{Rational[1, 2], 0}]]}, "aebf/cedg/ehifihfggh.m", TooltipStyle -> "TextStyling"], AspectRatio -> 1, PlotRange -> {{-1, 21}, {-1, 21}}], {154, 0}, {0, 0}, {22, 22}]}, AspectRatio -> Rational[1, 2], ImagePadding -> {{0., 0.}, {0., 0.}}, ImageSize -> {512, 256}, PlotRange -> {{0., 176.}, {0., 88.}}, PlotRangePadding -> Automatic]*)


(*ct = InsertFields[
CreateCTTopologies[2,2 -> 2,ExcludeTopologies->{WFCorrections,WFCorrectionCTs}], 
{F[3,{1,o}] ,F[2,{1}]} -> {F[4,{1,o}],F[1,{1}]},
InsertionLevel ->{Particles}, 
Model->"SM", 
Restrictions -> {NoLightFHCoupling}
];

draw = Paint[ct, ColumnsXRows -> {8, 4}, 
SheetHeader->None,ImageSize->{512,256}
]*)


(*Export["/home/ana/Desktop/ctp.pdf",Show@Paint[ct]];*)


(* ::Section::Closed:: *)
(*counterterm  amplitude - generated feynarts*)


ctamp[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[ct,{j}],GaugeRules -> {}],
IncomingMomenta->{p1,p2},OutgoingMomenta->{p3,p4},LoopMomenta->{q1},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->False,UndoChiralSplittings->False]


(*without WF and WFCT*)


ctbox0 = Table[ctamp[i], 
   {i, Join[Range[21, 25], Range[32, 37], Range[44, 49], Range[58,62], Range[179, 186]]}
];


ctbox1 = Table[Flag[tadct]*ctamp[i], 
   {i, Join[Range[171, 178],Range[187, 194]]}
];


(*ctbox0 = Table[ctamp[i], 
   {i, Join[Range[24, 31], Range[38, 43], Range[48, 53], Range[66,71], Range[203, 211]]}
];

ctbox1 = Table[Flag[tadctq]*ctamp[i], 
   {i, Join[Range[192, 202], Range[212, 221]]}
];*)


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


(* ::Section:: *)
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


(* ::Section::Closed:: *)
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


(*amp25noflag = amp25/.Flag[__]:>1/.flg[__]:>1/.flagw[__]:>1/.flag[__]:>1;*)


(*Export["/home/ana/Desktop/ctmuonr.m",amp27];*)


(*Export["/home/ana/Desktop/ctquarkr.m",amp27];*)


(* ::Section::Closed:: *)
(*comparison feyn gauge*)


Clear[ratio]
ratio/: ratio[a_, b_]:=a/b;


tomass[x_]:=x/.sw->Sqrt[1-cw^2]/.cw->MW/MZ;


k = Get["/home/ana/Desktop/compkai/counterterms/2lmu_box_ctinserted.m"][[1]]/.
S[E1mu]->Ev3/.S[Qmu]->Op/.pi->Pi/.rat->ratio/.ep->e/.Mt->MT/.el->EL/.
Log[Power[a_,2]/Power[b_,2]]:>2(Log[a]-Log[b]);


kfeyn = k/.xiqa->1/.xiqz->1/.xiqw->1;


Coefficient[Coefficient[kfeyn, Ev3],e,-2];
Coefficient[Coefficient[amp25, Ev3],e,-2];
tomass[%/%%]//Simplify


Coefficient[Coefficient[kfeyn, Ev3],e,-1];
Coefficient[Coefficient[amp25, Ev3],e,-1];
tomass[%/%%]//Simplify


Coefficient[kfeyn, Ev3]+tomass@Coefficient[amp25, Ev3]//Simplify


tomass@Coefficient[amp25, Ev3]//Collect[#, {1/e},Simplify]&


Coefficient[kfeyn, Ev3]//Collect[#, {1/e},Simplify]&


anaold =tomass@ Get["/home/ana/Desktop/ctmuonr.m"]/.flg[__]:>1/.Flag[__]:>1/.flag[__]:>1;


Coefficient[anaold, Ev3]//Collect[#, {1/e},Simplify]&
tomass@Coefficient[amp25, Ev3]//Collect[#, {1/e},Simplify]&


Coefficient[Coefficient[kfeyn, Op],1/e^2];
Coefficient[Coefficient[amp25, Op],1/e^2];
tomass[%/%%]//Simplify


Coefficient[Coefficient[kfeyn, Op],1/e];
Coefficient[Coefficient[amp25, Op],1/e];
tomass[%+%%]//Simplify


(* ::Section:: *)
(*penguin computation*)


(*choose which diagrams to compute - there are tree level and 1 loop*)


ctamptree[j_]:=FCFAConvert[CreateFeynAmp[DiagramExtract[ct,{j}],GaugeRules -> {}],
IncomingMomenta->{p1,p2},OutgoingMomenta->{p3,p4},LoopMomenta->{q1},List->False,Contract->True,
ChangeDimension->d,DropSumOver->True,SMP->False,UndoChiralSplittings->False]


cttreepeng = Table[ctamptree[i], {i, Range[1, 3]}];


cttreepeng1=cttreepeng/.
Conjugate[dZfL1[1,1,1]]->dZfL1[1,1,1]/.
Conjugate[dZfL1[2,1,1]]->dZfL1[2,1,1]/.
Conjugate[dZfL2[2,1,1]]->dZfL2[2,1,1]/.
Conjugate[dZfL1[3,1,1]]->dZfL1[3,1,1]/.
Conjugate[dZfL1[4,1,1]]->dZfL1[4,1,1]/.
Conjugate[dZfL1[1,2,2]]->dZfL1[1,2,2]/.
Conjugate[dZfL2[1,2,2]]->dZfL2[1,2,2]/.
Conjugate[dZfL1[2,2,2]]->dZfL1[2,2,2]/.
Conjugate[dZfL1[4,gn,1]]->dZfL1[4,gn,1]/.
Conjugate[dZfR1[__]]:> 0/.
dZfR1[__]:>0;


cttreepeng2=simpspinor@coupl@masses1@cttreepeng1;


cttreepeng3=massestozero@extmomzero@cttreepeng2;


cttreepeng4=auxfrac@split@cttreepeng3;


cttreepeng5=cdl@diracgamma2@diracgamma@momentum@cttreepeng4;


cttreepeng6=cttreepeng5/.{Lor1->1, Lor2->2, Lor3->3, Lor4->4, Lor5->5, Lor6->6};


cttreepeng7=cttreepeng6/.exdL->exdL1/.exdL1->stexdL;


cttreepeng8 = Expand[oper[cttreepeng7]]/.ampden[0, mass[x_]]:> -1/(mass[x])^2;


cttreepeng9=Simplify[cttreepeng8]/.mass[x_]:>x;


Export["/home/ana/Desktop/compkai/treelevel2loopctmuon/2ltimestreectmuon.m",cttreepeng9]
