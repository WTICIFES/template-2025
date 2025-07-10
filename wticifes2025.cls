% wticifes2025.cls
% TEMPLATE DE ARTIGO CIENTÍFICO - WTICIFES 2025
% Desenvolvido por Walfran Araújo - UNIFESP adaptado do modelo canônico para artigo científico - ABNT
% Refatorado com IA Generativa
% Créditos:
% Modelo Canônico ABNT2 para artigo científico

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wticifes2025}[2025/04/25 Template para artigos do WTICIFES 2025]

% ------------------------------------------------
% A fonte principal deverá ser Arial, tamanho nominal 12 pontos, o tamanho dom papel deve ser a4
\LoadClass[12pt, a4paper, oneside, brazil, english]{abntex2}

% ---
% Pacotes de fonte e codificação
% ---
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[scaled]{helvet}
\RequirePackage{microtype}
\RequirePackage{color}
\RequirePackage{indentfirst}

% Configuração de fontes
\renewcommand{\familydefault}{\sfdefault}

% ---
% Pacotes para figuras e gráficos
% ---
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.16}

% ---
% Diagramas/Fluxogramas
% ---
\RequirePackage{tikz}
\usetikzlibrary{
  shapes,
  arrows,
  fit,
  shapes.geometric,
  decorations.pathreplacing,
  shapes.misc,
  positioning,
  chains
}

% ---
% Listagem de código
% ---
\RequirePackage{listings}
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinelanguage{AutoHotkey}{
  morekeywords={
    if, else, return, for, while, loop, break, continue, 
    goto, gosub, global, local, static, 
    Send, Sleep, MsgBox, SetTitleMatchMode, WinActivate, 
    WinWaitActive, Gui, GuiControl, ControlGetFocus
  },
  sensitive=false,
  morecomment=[l]{;},
  morestring=[b]",
  morestring=[b]',
}

\lstdefinestyle{mystyle}{
  backgroundcolor=\color{backcolour},   
  commentstyle=\color{codegreen},
  keywordstyle=\color{magenta},
  numberstyle=\tiny\color{codegray},
  stringstyle=\color{codepurple},
  basicstyle=\ttfamily\footnotesize,
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

% --- Listagem de código (usando minted) ---
\RequirePackage{minted}
\RequirePackage{xcolor}

% AutoHotkey language definition
\newminted{autohotkey}{
% Language keywords
  keywords={
    if, else, return, for, while, loop, break, continue,
    goto, gosub, global, local, static,
    Send, Sleep, MsgBox, SetTitleMatchMode, WinActivate,
    WinWaitActive, Gui, GuiControl, ControlGetFocus
  },
% Style options
  style=mystyle,
  bgcolor=backcolour,
  commentstyle=\color{codegreen},
  keywordstyle=\color{magenta},
  numberstyle=\tiny\color{codegray},
  stringstyle=\color{codepurple},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,
  breaklines=true,
  captionpos=b,
  keepspaces=true,
  numbers=left,
  numbersep=5pt,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  tabsize=2,
% Language specific
  sensitive=false,
  alsoletter={\"},
  alsoletter={'}
}

% For inline code
\newmintinline{autohotkey}{
  style=mystyle,
  breaklines=true,
  breakatwhitespace=false
}

% ---
% URLs e referências
% ---
\RequirePackage{url}
\RequirePackage[brazilian,alf]{abntex2cite}
\RequirePackage{hyperref}

% ---
% Configurações de layout
% ---
\RequirePackage[a4paper, top=3cm, bottom=2cm, left=3cm, right=2cm, headsep=0.5cm]{geometry}
\RequirePackage{titlesec}
\RequirePackage{lipsum}
\RequirePackage{eso-pic}

% Configurações de parágrafo
% Não deverá ter espaçamento entre parágrafos, ou seja, deverá ser simples.
\setlength{\parindent}{1.5cm}
\setlength{\parskip}{0pt}
\setlength{\baselineskip}{1.5cm}
\renewcommand{\baselinestretch}{1.5}

% ===== Imagem de fundo em todas as páginas =====
\AddToShipoutPictureBG{%
  \AtPageLowerLeft{%
    \includegraphics[width=\paperwidth,height=\paperheight]{img/background.png}%
  }
}

% ---
% Citações e notas com espaçamento simples
% ---
\renewenvironment{quote}{%
  \begin{singlespace}%
  \fontsize{10}{12}\selectfont%
  \begin{list}{}{\rightmargin=0cm \leftmargin=4cm}%
  \item\relax%
}{%
  \end{list}%
  \end{singlespace}%
}

% ---
% Configuração de seções (títulos)
% ---
\RequirePackage{titlesec}
% Os títulos das seções devem estar em negrito, 13 pontos, alinhados à esquerda. Deve haver 12 pontos extras de espaço antes de cada título. A numeração das seções é opcional. O primeiro parágrafo de cada seção não deve ser recuado, enquanto as primeiras linhas dos parágrafos subsequentes devem ser recuadas em 1,27 cm.
% \parindent 0cm
% \titleformat{\section}
%    {\normalfont\fontsize{12}{14.4}\bfseries}{}{0em}{}
% \titlespacing*{\section}{0pt}{2\baselineskip}{\baselineskip}

\setcounter{secnumdepth}{2}
\titleformat{\section}
{\normalfont\fontsize{12}{14}\bfseries\selectfont}
{\arabic{section}. }
{0pt}
{}
[]

\titlespacing*{\section}
{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}

% Os títulos das subseções devem estar em negrito, 12pt, alinhados à esquerda.
% \titleformat{\subsection}
%    {\normalfont\fontsize{12}{14.4}\bfseries}{\thesubsection}{1em}{}
% \titlespacing*{\section}{0pt}{2\baselineskip}{\baselineskip}
\titleformat{\subsection}
{\normalfont\fontsize{12}{14}\bfseries\selectfont}
{\arabic{section}.\arabic{subsection}. }
{0pt}
{}
[]

\titleformat{\subsubsection}
{\normalfont\fontsize{12}{14}\bfseries\selectfont}
{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}. }
{0pt}
{}
[]

% ---
% Resumo e Abstract
% ---
% O resumo e o “resumo” (se for o caso) deverão estar em fonte Times, tamanho 12, com recuo de 0,8cm em ambos os lados. A palavra Resumo deverá ser escrita em negrito e deverão preceder o texto.
%
\renewenvironment{resumo}{%
  \noindent\fontsize{12}{14}\sffamily\bfseries Resumo\\%
  \noindent\fontsize{12}{14}\sffamily\mdseries\setlength{\parindent}{0pt}%
  }{%
  \par\setlength{\parindent}{1.5cm}%
}

\renewenvironment{abstract}{%
  \noindent\fontsize{12}{14}\sffamily\bfseries Abstract\\%
  \noindent\fontsize{12}{14}\sffamily\mdseries\setlength{\parindent}{0pt}%
  }{%
  \par\setlength{\parindent}{1.5cm}%
}

% ---
% Ambientes para palavras-chave
% ---
\newenvironment{keywords}{%
  \par\noindent\textbf{Keywords:}~%
}{%
  \par%
}

\newenvironment{palavraschave}{%
  \par\noindent\textbf{Palavras-chave:}~%
}{%
  \par%
}

% ---
% Cabeçalho e rodapé
% ---
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\fontsize{10}{12}\selectfont\thepage}
\renewcommand{\headrulewidth}{0pt}
\fancypagestyle{plain}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
}

% --- Automático para iniciar numeração de página (equivalente a \textual) ---
\RequirePackage{etoolbox}
\newbool{abntex@textual@foi chamado}
\boolfalse{abntex@textual@foi chamado}
\newcommand{\abntex@chamartextualsepreciso}{%
  \ifbool{abntex@textual@foi chamado}{}{
    \pagestyle{fancy}
    \global\booltrue{abntex@textual@foi chamado}
  }%
}

\pretocmd{\section}{\abntex@chamartextualsepreciso}{}{\ClassError{wticifes2025}{Falha ao modificar \string\section}{}}

% ---
% Notas de rodapé com espaçamento simples
% ---
\renewcommand{\footnotesize}{\fontsize{10}{12}\selectfont}
\let\oldfootnote\footnote
\renewcommand{\footnote}[1]{%
  \begingroup\singlespacing
  \oldfootnote{#1}%
  \endgroup
}

% ---
% Títulos e autores
% ---
% Os nomes dos autores deverão ser alinhados à direita em fonte 12 pontos, negrito, um por linha e com 12 pontos de espaço após o título
\makeatletter
% Redefinição do \maketitle
\renewcommand{\maketitle}[6]{%
  \begin{center}
    \fontsize{12}{14}\bfseries\selectfont
    \@title
  \end{center}
  \vspace{0.5cm}
  \begin{flushright}
    \bfseries
    #1\textsuperscript{1} \\
    #3\textsuperscript{2} \\
    #5\textsuperscript{3}
    % Adicionar ou remover linhas aqui conforme
    % quantidade de autores, mantendo exatamente
    % esse mesmo padrão
    % TODO: automatizar
  \end{flushright}
  \footnotetext[1]{#2}
  \footnotetext[2]{#4}
  \footnotetext[3]{#6}
  % Adicionar ou remover linhas aqui conforme quantidade
  % de autores, mantendo exatamente esse mesmo padrão
  % TODO: automatizar
  \vspace{1cm}
}
\makeatother

% Espaçamento 1,5 para o texto principal
\AtBeginDocument{
  \OnehalfSpacing % Espaçamento 1,5 para o texto principal
}

\endinput