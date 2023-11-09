(* ::Package:: *)

(* ::Subsubsection:: *)
(*2. DOMA\[CapitalCHacek]A NALOGA (napredna ra\[CHacek]unalni\[SHacek]ka orodja)*)


(* ::Subsubsection:: *)
(*1.1 Ra\[CHacek]unanje vrednost \[Pi]*)


(* ::Subsubsection:: *)
(*Zahtevano : datote\[CHacek]na funkcija, uporabljene lokalne spremenljivke z uporaba okolja Module[]*)
(**)


(* ::Input:: *)
(*Get["C:\\Users\\p s\\Desktop\\3._letnik_faksa\\Napredna_ra\[CHacek]unalni\[SHacek]ka_orodja\\doma\[CHacek]e naloge\\2.doma\[CHacek]a_naloga\\to\[CHacek]ke.m"]*)


(* ::Input:: *)
(*\[CapitalSHacek]=30000;*)
(**)
(*noter[n_]:=Module[{rx,ry,noter,to\[CHacek]kee,razdalja},*)
(*noter={};*)
(*to\[CHacek]kee=zto\[CHacek]ke[n];*)
(*For[i=1,i<=Length[to\[CHacek]kee],i++,*)
(*rx=to\[CHacek]kee[[i,1]];*)
(*ry=to\[CHacek]kee[[i,2]];*)
(*razdalja=Sqrt[rx^2+ry^2];*)
(*If[razdalja<=1,AppendTo[noter,{rx,ry}];]];*)
(*noter]*)


(* ::Input:: *)
(*tkrog=noter[\[CapitalSHacek]];*)
(*Noter=Length[noter[\[CapitalSHacek]]];*)


(* ::Input:: *)
(*(*\[CapitalSHacek]tevilo \[Pi]*)*)
(*pi=(4*Noter)/\[CapitalSHacek]//N*)


(* ::Text:: *)
(*IZRIS*)


(* ::Input:: *)
(*ListPlot[{tkrog,zto\[CHacek]ke[\[CapitalSHacek]]}]*)
(**)


(* ::Subsubsection:: *)
(*1.2) Razvoj v vrsto in funkcija Manipulate*)


(* ::Input:: *)
(*f[t_]=Sin[t]*\!\(TraditionalForm\`*)
(*\*SuperscriptBox[\(t\), \(2\)]**)
(*\*SuperscriptBox[\(E\), \(-t\)]\);*)
(*t0=2;*)
(*\[CHacek]=10;*)


(* ::Input:: *)
(*vrsta=Series[f[t],{t,t0,\[CHacek]}];*)
(*norvrsta=Normal[%];*)


(* ::Text:: *)
(*IZRIS*)


(* ::Input:: *)
(*(*Eksaktna funkcija*)*)
(*p1=Plot[f[t],{t,0,4},PlotStyle->{Red},AxesLabel->{"t","f"}];*)


(* ::Input:: *)
(*(*Vrsta/pribli\[ZHacek]ek*)*)
(*p2=Plot[norvrsta,{t,0,4},PlotStyle->Dashed,AxesLabel->{"t","f"}];*)


(* ::Input:: *)
(*p1p2=Show[p1,p2]*)


(* ::Text:: *)
(*IZRIS Z MO\[CapitalZHacek]NOSTJO SPREMINJANJA REDA PRIBLI\[CapitalZHacek]KA (n)*)


(* ::Input:: *)
(*Manipulate[*)
(*Show[*)
(*Plot[Evaluate[Normal[Series[f[t],{t,t0,n}]]],{t,0,4}],*)
(*p1,*)
(*PlotRange->All,*)
(*AxesLabel->{"t","f"}],*)
(*{n,1,10,1}*)
(*]*)
