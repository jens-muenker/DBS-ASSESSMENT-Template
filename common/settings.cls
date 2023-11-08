%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Documentclass for the DBS
% Created by Jens Muenker at 07.11.2023
% Version: v1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{common/settings}[2023/11/07 v1, by Jens Muenker]

\newif\iflnienglish\lnienglishfalse
\DeclareOption{english}{\lnienglishtrue}

\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Pagesettings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[a4paper,oneside,12pt, enabledeprecatedfontcommands, bibliography=totocnumbered]{scrartcl} % Schriftgröße 12pt
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc} % Times font

\RequirePackage{textalpha}
\RequirePackage{lmodern}
\RequirePackage{eurosym} % Euro symbol

\RequirePackage{setspace}
\setstretch{1.25} % Line spacing

\RequirePackage[margin=2cm, includefoot, heightrounded]{geometry} % Page margins
\RequirePackage{microtype}

\RequirePackage[table]{xcolor} % colors in tables

% Language settings
\RequirePackage[english]{babel}
\iflnienglish\selectlanguage{english}\def\bbl@main@language{english}\fi

\usepackage{amsmath}

\usepackage[inline]{enumitem}
\setlist[itemize]{itemjoin=\hspace*{\fill},itemjoin*=\hspace*{\fill}} 

\usepackage{boldline,multirow}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Citation with biber & biblatex
\usepackage{csquotes, url}
\usepackage[backend=biber,citestyle=verbose-ibid,urldate=short,style=authoryear]{biblatex} % APA-Zitierstil

\PassOptionsToPackage{hyphens}{url}
\RequirePackage[hyperfootnotes=false]{hyperref}

% Tikz-Import
\RequirePackage{tikz}
\usetikzlibrary{fadings}

% Math
\RequirePackage{mathptmx}

% Graphicx
\RequirePackage{graphicx}

% Figures with captions and subcaptions
\RequirePackage{caption}
\RequirePackage{subcaption}

% listings
\RequirePackage{listings}

% Colors
\RequirePackage{color}

% multiple footnotes
\RequirePackage[symbol]{footmisc}

% reference sections
\usepackage{cleveref}

% Acronyms
\RequirePackage{acronym}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Table settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\renewcommand{\arraystretch}{1.5}
\setlength{\tabcolsep}{12pt}
\usepackage{threeparttable} % footnotes in tables

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{wrapfig}

% PDF-Import
\RequirePackage{pdfpages}
\RequirePackage[export]{adjustbox}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DBS Header
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fancyhdr}
\addtolength{\headheight}{1.3cm}
\pagestyle{fancyplain}
\fancyhead[R]{\includegraphics[height=1.2cm]{images/dbs-logo.png}}
\fancyhead[L]{\itshape Module - Assessment 1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[all]{nowidow}

% Pagestyles
\RequirePackage{floatpag}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Helpfull commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\needCite}[1][]{
    \@latex@warning{Still require cite: #1! Needs to be done}
    \colorbox{yellow}{\textcolor{red}{Require cite #1}}
}

\newcommand{\todo}[1]{
    \textcolor{red}{TODO: #1}
    \@latex@warning{TODO: #1! Needs to be done}
}

\newcommand{\anf}[1]{\glqq #1\grqq{}}
\newcommand{\anfo}[1]{\glqq #1\grqq}

\newcommand{\fullref}[1]{\ref{#1} \anf{\nameref{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\@makefntext[1]{\leftskip=0.5em\hskip-0.45em\@makefnmark#1}

\RequirePackage{float}

% outcomments
\usepackage{verbatim} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Using Code Snippets
%
% IMPORTANT:
%
% Python 3 and the Python package
% python-pygments must be installed!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\RequirePackage{minted}

%Konfiguration der Codestyles

%\setminted[js]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\setminted[abap]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\setminted[xml]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\setminted[json]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\setminted[java]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\makeatletter
%\newenvironment{codeBlock}[3]S
% {\RecustomVerbatimEnvironment{Verbatim}{BVerbatim}{}
%  \def\FV@BProcessLine##1{
%    \hbox{
%      \hbox to\z@{\hss\theFancyVerbLine\kern\FV@NumberSep}
%      \FancyVerbFormatLine{##1}
%    }
%  }
%  \VerbatimEnvironment
%  \begin{listing}[H]
%  \centering
%  \caption{#2}
%  \label{#3}
%  \setbox\z@=\hbox\bgroup
%  \begin{minted}[samepage]{#1}}
% {\end{minted}\egroup
%  \leavevmode\vbox{\hrule\kern2mm\box\z@\kern2mm\hrule}
%  \end{listing}\noindent
% }
%\makeatother

%\usemintedstyle{lovelace}
%\usemintedstyle[abap]{abap}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Listings settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand*{\listingautorefname}{\listingscaption}

\addto\captionsenglish{
  \renewcommand{\contentsname}
    {Table of Contents}
}

% Table of Contents
\newcommand{\contentstable}{
	\newpage
	\hypertarget{toc}
	\phantomsection
	\tableofcontents
}

% List of Figures
\newcommand{\figureslist}{
	\newpage
	\phantomsection
	\addcontentsline{toc}{section}{\footnotesize{List of Figures}}
	\listoffigures
}

% List of Tables
\newcommand{\tablelist}{
	\phantomsection
	\addcontentsline{toc}{section}{\footnotesize{List of Tables}}
	\listoftables
}

% List of Abbreviations
\newcommand{\acronymslist}{
	\phantomsection
	\section*{List of Abbreviations}
	\addcontentsline{toc}{section}{\footnotesize{List of Abbreviations}}
	\begin{center}
		\input{acronyms.tex}
	\end{center}
}

% Bibliography
\newcommand{\bibliographylist}{
	\newpage	
	\phantomsection
    \section*{List of References}
	\addcontentsline{toc}{section}{\footnotesize{List of References}}
	\printbibliography[heading=none]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
