(* Mathematica Package *)
(* Created by Mathematica Plugin for IntelliJ IDEA, see http://wlplugin.halirutan.de/ *)

(* :Title: RubiPDFTools *)
(* :Context: RubiPDFTools` *)
(* :Author: patrick *)
(* :Date: 2018-11-11 *)

(* :Package Version: 0.1 *)
(* :Mathematica Version: 11.2 *)
(* :Copyright: (c) 2018 patrick *)
(* :Keywords: *)
(* :Discussion: *)

BeginPackage["RubiPDFTools`"];

CreateIntegrationRulesAsPDF::usage = "CreateIntegrationRulesAsPDF[nbDir] builds a PDF version of Rubi's integration " <>
    "rule notebooks and updates the README.md with appropriate links.";
CreateReadme::usage = "CreateReadme[] updates README.md by visiting all pdf files and inserting appropriate links.";

Begin["`Private`"];

$dir = DirectoryName@System`Private`$InputFileName;
$outputDir = FileNameJoin[{$dir , "PdfFiles"}];
$mdHeader = Import[FileNameJoin[{$dir , "header.md"}], "Text"];

CreateIntegrationRulesAsPDF[rulesDir_String /; DirectoryQ[rulesDir]] := Module[
  {
    i = 0,
    files
  },
  DeleteDirectory[#, DeleteContents -> True]& /@ FileNames["*", $outputDir];

  files = FileNames["*.nb", {rulesDir}, Infinity];
  If[$FrontEnd =!= Null,
    PrintTemporary[Row[{ProgressIndicator[Dynamic[i], {0, Length[files]}], Spacer[10], Dynamic[i]}]]
  ];
  Do[
    i++;
    exportNotebookAsPDF[f, rulesDir -> $outputDir],
    {f, files}
  ]
]

exportNotebookAsPDF[file_String /; FileExistsQ[file], pathReplacement_Rule] := Module[
  {
    nb, dir, fileName
  },
  dir = StringReplace[DirectoryName[file], pathReplacement];
  fileName = FileBaseName[file];
  If[Not@DirectoryQ[dir],
    CreateDirectory[dir]
  ];

  nb = NotebookOpen[file, Visible -> False];
  SelectionMove[nb, All, Notebook];
  FrontEndExecute[FrontEndToken[nb, "SelectionOpenAllGroups"]];
  Export[FileNameJoin[{dir, fileName <> ".pdf"}], nb];
  NotebookClose[nb];
];

(* Creating the README automatically to insert links to the appropriate PDF files *)

CreateReadme[] := Export[
  FileNameJoin[{$dir, "README.md"}],
  StringJoin[
    $mdHeader,
    visitNode[$outputDir]
  ],
  "Text"
];

mdDir[name_, level_] := "\n" <> StringJoin[ConstantArray["#", level + 1]] <> " " <> name;
mdFile[name_, level_] := TemplateApply[
  "* <a href=\"`link`\">`name`</a>",
  Association[
      "name" -> FileBaseName[name] ,
      "link" -> FileNameJoin[FileNameSplit[name][[-level - 1 ;; -1]]]
    ]
];

visitNode[dir_String /; DirectoryQ[dir]] := StringJoin[Riffle[
  Flatten[
        visitNode[#, 1] & /@ FileNames["*", {dir}]
      ],
  "\n"]
];

visitNode[dir_String /; DirectoryQ[dir], level_Integer] := Module[
  {
    dirName = FileNameSplit[dir][[-1]]
  },
  {
    mdDir[dirName, level],
    visitNode[#, level + 1] & /@ FileNames["*", {dir}]
  }
];

visitNode[file_String /; FileExistsQ[file] && FileExtension[file] === "pdf", level_Integer] := mdFile[file, level];


End[]; (* `Private` *)

EndPackage[]