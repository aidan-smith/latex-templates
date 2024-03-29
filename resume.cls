% Resume LaTeX Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2022/01/25 LaTeX Resume template]

\LoadClass[11pt, a4paper]{article}

\RequirePackage[margin=0.5in]{geometry}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontawesome}
\RequirePackage{changepage}
\RequirePackage{xstring}

% Styling
\setlist[itemize]{noitemsep, nosep}
\renewcommand\labelitemi{$\vcenter{\hbox{\tiny$\bullet$}}$}

% Contact Information
\newcommand{\name}{John Doe}
\newcommand{\phone}{8008008000}
\newcommand{\email}{johndoe@gmail.com}
\newcommand{\website}{johndoe.com}
\newcommand{\github}{john-doe}
\newcommand{\linkedin}{john-doe}

% Title
\renewcommand{\maketitle}{%
    \thispagestyle{empty}
    \begin{center}
        {\Huge\textbf{\name}} \\
        \vspace{1em}
        \raisebox{-0.1\height}\faPhone\ \href{tel:\phone}
        {(\StrLeft{\phone}{3})\:\StrMid{\phone}{4}{6}\,-\,\StrRight{\phone}{4}}
        \hspace{1em}
        \raisebox{-0.1\height}\faEnvelope\ \href{mailto:\email}{\email}
        \hspace{1em}
        % \raisebox{-0.1\height}\faGlobe\ \href{https://\website/}{\website}
        % \hspace{1em}
        \raisebox{-0.1\height}\faGithub\ \href{https://github.com/\github/}{\github}
        \hspace{1em}
        \raisebox{-0.1\height}\faLinkedinSquare\
        \href{https://www.linkedin.com/in/\linkedin/}{\linkedin}
    \end{center}
    \vspace{-0.5em}
}

% Section
\providecommand{\section}{}
\renewcommand{\section}[1]{%
    \vspace{1em}
    \noindent{\large\textbf{#1}}
    \vspace{0.5em}
    \hrule
    \vspace{1em}
}

% Education
\providecommand{\education}{}
\renewcommand{\education}[5]{%
    \indent{\textbf{#1} \hspace{0.25em} \textit{#4} \hfill #5} \\
    \indent{#2 \hfill #3}
    \vspace{0.5em}
}

% Job
\providecommand{\job}{}
\renewcommand{\job}[4]{%
    \indent{\textbf{#1} \hspace{0.25em} \textit{#3} \hfill #4} \\
    \indent{#2}
    \vspace{0.5em}
}

% Activity
\providecommand{\activity}{}
\renewcommand{\activity}[2]{%
    \indent{\textbf{#1} \hfill #2}
    \vspace{0.5em}
}

% Skill
\providecommand{\skill}{}{}
\renewcommand{\skill}[2]{%
    \indent{\textbf{#1} \hspace{1em} #2}
}

% Selected Coursework
\providecommand{\coursework}{}
\renewcommand{\coursework}[1]{%
    Selected Coursework:
    \begin{adjustwidth}{3em}{0em}
        #1
    \end{adjustwidth}
}
