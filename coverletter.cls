\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coverletter}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{resumestyle}
\RequirePackage{graphicx}
\RequirePackage{parskip}

\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist

\newcommand{\inputbody}[1]{
  \vspace{0em}
  \begin{changemargin}{0.25in}{0.25in}
    \textrm{\input{Bodies/#1}}
  \end{changemargin}
}

\newcommand{\signature}[2]{
  \makeatletter
  \textrm{%
  \noindent Thank you, \\
  \@author{}}

  \begin{figure}[h]
    \begin{changemargin}{0.5cm}{0.0cm}
      \includegraphics[scale=0.06]{#1}
      \includegraphics[scale=0.06]{#2}
    \end{changemargin}
  \end{figure}
  \makeatother
}
