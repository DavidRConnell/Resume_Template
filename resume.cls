\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{resumestyle}

\renewcommand*{\section}[1]{{\noindent\color{accent} \textsc{#1}} \\}

\newcommand{\education}[5]{%
  \position{#1}{#2} \\
  #3 \hfill GPA: #4 \\
  \indent {\footnotesize\emph{Relevant Coursework: #5}}
}

\newcommand*{\position}[2]{\noindent\textbf{#1 \hfill #2}}

\newcommand*{\experience}[4]{%
  \position{#1}{#2}\\
  #3
  \vspace{-5pt}
  \begin{itemize}
      \setlength{\itemsep}{0pt}
      \small{
        #4
      }
  \end{itemize}
}

\newcommand{\inputObjective}[1]{
  \begin{center}
    \textit{\input{Objectives/#1}}
  \end{center}
}
