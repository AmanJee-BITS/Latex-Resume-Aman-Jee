% Intro options
\ProvidesClass{barua-resume-openfont}[2017/02/14 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


% Package Imports
\usepackage[hmargin=1.5cm, tmargin=1cm, bmargin=-1.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{fontawesome}
\usepackage{ragged2e}
\usepackage[utf8]{inputenc}


% Color definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{loc}{HTML}{444444}


% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase, Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

\newcommand{\custombold}[1]{
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Reg}
  \selectfont #1
  \normalfont
}



% Name command
\newcommand{\namesection}[2]{
  \hspace{-1.5em}
  \raggedright {
    \parbox[b]{30em} {
      \fontspec[Path = fonts/lato/]{Lato-Lig}
      \fontsize{40pt}{10cm}
      \selectfont #1
    }
  }
  \hfill
  \raggedleft {
    \parbox[b]{16em} {
      \color{headings}
      \fontspec[Path = fonts/lato/]{Lato-Lig}
      \fontsize{11pt}{14pt}
      \selectfont #2
    }
  }
  \vspace{1.2em}
  \normalfont
}
\titlespacing{\section}{0pt}{0pt}{0pt}


% Headings command
\titleformat{\section} {
  \color{headings}
  \scshape
  \fontspec[Path = fonts/lato/]{Lato-Lig}
  \fontsize{14pt}{24pt}
  \selectfont
  \raggedright
  \uppercase
}{} {0em}{}


% Subeadings command
\titleformat{\subsection} {
  \raggedright
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}
  \fontsize{13pt}{13pt}
  \raggedright
  \selectfont
  \bfseries
}{}{0em}{}


\titlespacing{\subsection}{2pt}{\parskip}{-\parskip}


\titlespacing{\subsubsection}{2pt}{\parskip}{-\parskip}


\newcommand{\runsubsection}[1]{
  \color{subheadings}
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{9pt}{11pt}
  \selectfont
  \bfseries
  \raggedright
  \uppercase {#1}
  \normalfont
}


% Descriptors command
\newcommand{\descript}[1] {
  \color{headings}
  \raggedright
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{10.5pt}{12.5pt}
  \selectfont {#1}
  \normalfont
}

% Descriptors command
\newcommand{\activities}[1] {
  \color{headings}
  \raggedright
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{9.5pt}{10.5pt}
  \selectfont {#1}
  \normalfont
}

% Location command
\newcommand{\location}[1] {
  \color{loc}
  \fontspec[Path = fonts/lato/]{Lato-Lig}
  \fontsize{10.5pt}{12.5pt}
  \justify
  \selectfont {#1}
  \normalfont
}


% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{5.5pt}}
\newcommand{\sectionsepmod}[0]{\vspace{9.6pt}}

% Job
\newcommand{\job}[4] {
  \raggedleft{
    \color{subheadings}
    \fontspec[Path = fonts/lato/]{Lato-Bol}
    \fontsize{11.5pt}{13pt}
    \bfseries
    \selectfont #1
    \normalfont
  }
  \hfill
  \raggedright {
    \color{subheadings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{10pt}{12pt}
    \selectfont {#2\\}
    \normalfont
  }
  \raggedleft {
    \color{subheadings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{10pt}{12pt}
    \selectfont #3
    \normalfont
  }
  \hfill
  \raggedright {
    \color{subheadings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{10pt}{12pt}
    \selectfont {#4\\}
    \normalfont
  }
}

% Projects
\newcommand{\project}[4] {
  \raggedleft{
    \color{subheadings}
    \fontspec[Path = fonts/lato/]{Lato-Bol}
    \fontsize{11.8pt}{11pt}
    \bfseries
    \selectfont #1
    \normalfont
  }
  \hfill
  \raggedright {
    \color{subheadings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{10.5pt}{12.5pt}
    \selectfont {#2\\}
    \normalfont
  }
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize} {
  \vspace{-\topsep}
  \begin{itemize}
    \itemsep1pt
    \parskip0pt
    \parsep0pt
}
{
  \end{itemize}
  \vspace{-\topsep}
}
