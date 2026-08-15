%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%             My custom class file for thesis report                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}   
\ProvidesClass{style/myclass}[2025/01/01 LaTeX class]


\LoadClass[twoside,twocolumn,10pt]{article} % document class

%---------------------------------%
%       Page layout               %
%---------------------------------%

\RequirePackage[paper=letterpaper,
                top=0.75in, % top margin
                bottom=1in, % bottom margin 
                %inner = 0.75in,
                %outer = 0.75in,
                right=0.8in, % right margin
                left=0.8in,  % left margin 
                %headheight=0.7in
                %margin=0.6in
                footskip = 18pt
                ]
                {geometry}

\setlength{\columnwidth}{0.5\textwidth}
\setlength{\columnsep}{0.05\textwidth}
\RequirePackage{setspace} % Required for setting space 
\setlength{\parindent}{0pt} % remove identation 
\setlength{\parskip}{6pt} % paragraph spacing

\RequirePackage{graphicx} % Required for inserting images
\RequirePackage{float} % required to fix the table of figure place
\RequirePackage[hidelinks]{hyperref} % Required for hyperred links
\usepackage{ragged2e}
\usepackage{microtype}

%---------------------------------%
%        font setting            %
%---------------------------------%

\usepackage{mathptmx}
\usepackage{times}
%---------------------------------%
%  title page and command         %
%---------------------------------%

\usepackage{tikz}
\usepackage[table]{xcolor}
\definecolor{bg}{HTML}{f6fafd}
\definecolor{secblue}{HTML}{1671ba}
\definecolor{sbblue}{HTML}{d6efff}
\providecommand{\keywords}[1]{\small\textbf{Keywords:} #1}

\usepackage{abstract}
\usepackage{authblk}

\newcommand{\corr}[1]{\def\@corr{#1}}
\newcommand{\jabstract}[1]{\def\@jabstract{#1}}
\newcommand{\jkeyword}[1]{\def\@jkeyword{#1}}
\newcommand*{\email}[1]{\href{mailto:#1}{#1}}
\renewcommand*{\Authsep}{, }
\renewcommand*{\Authand}{, \& }
\renewcommand*{\Authands}{, \& }
\setlength{\affilsep}{8pt}

\usepackage{svg}
\usepackage{fontawesome}

\makeatletter
\renewcommand{\@maketitle}{
\begin{center}
\fontsize{19}{18}\selectfont\bfseries{\@title}\\[24pt]

{
\begin{minipage}{0.72\textwidth}
\begin{center}
{

\normalfont\fontsize{12}{18}\selectfont\@author  \\[3pt]

*\@corr 
}
\end{center}
\end{minipage}
}

%\baselineskip=0pt 

\end{center}

\vskip 32pt

{\color{secblue}\textbf{ABSTRACT}}

\vskip 12pt

}
\makeatother

\renewcommand\Authfont{\fontsize{12}{5}\selectfont}
%\renewcommand\Affilfont{\normalfont\fontsize{8}{8}\selectfont}

%---------------------------------%
%  Abstract and keywords          %
%---------------------------------%

\usepackage[most]{tcolorbox}
\usepackage{cuted}
\newcommand{\keyword}[1]{\textbf{Keywords:} #1}



\renewenvironment{abstract}
{\normalfont
	\list{}{%
		\setlength{\leftmargin}{0in}% <-- Adjust this value as needed
		\setlength{\rightmargin}{\leftmargin}%
	}%
	\item\relax}
{\endlist}

%---------------------------------%
%  section headings               %
%---------------------------------%

\usepackage[explicit]{titlesec}

\titleformat{\section}{\normalfont\fontsize{11}{14}\selectfont\bfseries}{}{0em}{\textcolor{secblue}{SECTION \thesection:} #1}
\titlespacing\section{0pt}{6pt plus 0pt minus 0pt}{3pt plus 0pt minus 0pt}
\titleformat{\subsection}{\normalfont\itshape\color{secblue}}{}{0em}{\thesubsection\ #1}
\titlespacing\subsection{0pt}{8pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}
\titleformat{\subsubsection}{\normalfont\itshape\color{secblue}}{}{0em}{\thesubsubsection\ #1}
\titlespacing\subsubsection{0pt}{6pt plus 0pt minus 0pt}{3pt plus 0pt minus 0pt}
\titleformat{\paragraph}{\normalfont\itshape\color{secblue}}{}{0.2em}{#1}
\titlespacing\paragraph{0pt}{0pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}

\titleformat{name=\section,numberless}[block]{\normalfont\fontsize{11}{14}\selectfont\bfseries\raggedright\color{secblue}}{}{0em}{\MakeUppercase{#1}}


%---------------------------------%
%  section header and footer      %
%---------------------------------%

\usepackage{fancyhdr}
\fancypagestyle{plain}{
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[R]{\small\thepage}
\fancyfoot[L]{\small\today}
}

\fancypagestyle{appendix}{
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[R]{\small TA-\thepage}
\fancyfoot[L]{}
}

\usepackage{footmisc}
\setlength{\footnotemargin}{2mm}
\renewcommand\footnoterule{\rule{0.7\linewidth}{1pt}}
\setlength{\footnotesep}{12pt}
\renewcommand{\footnotelayout}{\setstretch{0.9}\fontsize{8pt}{9pt}\selectfont}
%\setlength{\footskip}{0pt}

\pagestyle{plain}


\RequirePackage{amsmath} % maths package
%\usepackage{flushend}
\usepackage{multicol}
\urlstyle{same}
\usepackage[backend=bibtex,bibstyle=ieee,citestyle=numeric-comp]{biblatex}
\addbibresource{references.bib}
\DeclareFieldFormat{labelnumberwidth}{{\footnotesize #1\adddot}}

\usepackage{enumitem}
\usepackage{float}
\usepackage{mdframed}
\usepackage{caption}
\DeclareCaptionLabelSeparator{mysep}{\\}
\captionsetup{singlelinecheck=false,font={footnotesize},labelfont={small,bf,color=secblue},labelsep=period,skip=6pt}
\setlength{\abovecaptionskip}{8pt plus 3pt minus 2pt}
\setlength{\belowcaptionskip}{0pt plus 0pt minus 0pt}

\usepackage{adjustbox}
\usepackage{array}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{x}[1]{>{\centering\arraybackslash\hspace{0pt}}p{#1}}

% Define the \figurenote command
\newenvironment{figurenotes}[1][\textit{Note}]{\begin{minipage}[t]{\linewidth}{\footnotesize#1: }\footnotesize}{\end{minipage}}

\newenvironment{tablenote}[1][\textit{Note}]{\begin{minipage}[t]{\linewidth}{\footnotesize#1: }\footnotesize}{\end{minipage}}

%\renewcommand{\normalsize}{\fontsize{10}{10}\selectfont}

\pagecolor{bg}
\justifying
\fussy 
\sloppy
\usepackage{balance}
\balance

\endinput