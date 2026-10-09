\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iselthesis}[2025/09/01 ISEL Master Thesis Class]

% Base class: report
\LoadClass[11pt,a4paper,oneside]{report}

% Packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{caption}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{listings}
\RequirePackage{helvet} % Using Helvetica/Verdana equivalent
\RequirePackage{indentfirst}
\RequirePackage{hyperref}
\RequirePackage{pdfpages}

% Set font family to sans-serif (Verdana/Helvetica)
\renewcommand{\familydefault}{\sfdefault}

% Page Geometry (Norma 10: Margens de 2.5 cm nos quatro lados)
\geometry{
  a4paper,
  top=2.5cm,
  bottom=2.5cm,
  left=2.5cm,
  right=2.5cm
}

% Line spacing (Norma 10: espaçamento entre linhas de 1.5)
\setstretch{1.5}

% Paragraph formatting (Norma 15: Sem espaçamento adicional entre parágrafos, indentação de 16pt)
\setlength{\parskip}{0pt}
\setlength{\parindent}{16pt}

% Headers and Footers (Norma 11: Sem cabeçalho nem rodapé, exceto paginação no centro)
\pagestyle{plain}

% Chapter, Title and Subtitle formatting (Normas 12 e 13)
% Norma 12: Capítulos tamanho 14, cor preta, bold, em CAPS LOCK
\titleformat{\chapter}[block]
  {\normalfont\fontsize{14pt}{18pt}\bfseries\color{black}}
  {\thechapter.}{0.5em}{\MakeUppercase}
\titlespacing*{\chapter}{0pt}{0pt}{12pt}

% Norma 13: Títulos (Section) tamanho 12, cor preta, bold
\titleformat{\section}
  {\normalfont\fontsize{12pt}{15pt}\bfseries\color{black}}
  {\thesection}{0.5em}{}
\titlespacing*{\section}{0pt}{12pt}{6pt}

% Norma 13: Subtítulos (Subsection) tamanho 11, cor preta, bold
\titleformat{\subsection}
  {\normalfont\fontsize{11pt}{14pt}\bfseries\color{black}}
  {\thesubsection}{0.5em}{}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}

% Captions (Norma 14: Tamanho 9, cor preta, espaçamento entre linhas 1cm/1.0)
\DeclareCaptionFont{capfont}{\fontsize{9pt}{11pt}\selectfont\color{black}}
\captionsetup{
  font=capfont,
  labelfont={bf},
  singlelinecheck=false
}

% Listings / Code Syntax Highlighting configuration
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.96,0.96,0.96}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\fontsize{9pt}{11pt}\selectfont,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}
\lstset{style=mystyle}

% Custom language definitions for listings
\lstdefinelanguage{Kotlin}{
  keywords={abstract, actual, annotation, as, break, by, catch, class, companion, const, constructor, continue, delegate, do, else, enum, expect, final, finally, for, fun, get, if, import, in, interface, is, lateinit, noinline, object, open, operator, out, override, package, private, protected, public, receiver, reified, return, sealed, set, super, suspend, this, throw, trait, try, typealias, val, var, vararg, when, where, while},
  morekeywords={String, Int, Boolean, Double, Float, Long, Any, Unit, Nothing},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]"
}
