%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Packages %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClassWithOptions{report}
\usepackage[a4paper,left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage{environ}                    % avoir les commandes pour ses environnments personnalisés
\usepackage[table]{xcolor}              % colorer dans les tableaux
\usepackage[french]{babel}              % langue Français     
% \usepackage[french]{minitoc}            % pour les petites tables des matières
\usepackage{caption}                    % pour les légendes images
\usepackage{subcaption}                 % sous-légendes images
\usepackage[titletoc,title]{appendix}   % gestion annexes
\usepackage{setspace}                   % modifier les emplacements dans le document et les interlignes
\usepackage{needspace}                  % forcer un saut de page
\usepackage{chngcntr}                   % gérer la numérotation des pages
\usepackage{enumitem}                   % gérer la numérotation des puces
\usepackage{fancyhdr}                   % gérer les entête et pied de page
\usepackage{pdfpages}                   % permet d'introduire des PDF dans le fichier
\usepackage[utf8]{inputenc}             % permet de mettre des caractères particulier
\usepackage[T1]{fontenc}                % permet de gérer le rendu des caractères spéciaux
\usepackage[skins]{tcolorbox}           % avoir des boites colorées
\usepackage{changepage}                 % permet d'ajuster les marges pour des parties spécifiques de votre document
\usepackage{authblk}                    % utile pour placer les affiliations des auteurs
\usepackage{url}                        % permet de mettre des liens
\usepackage{graphicx}
\usepackage{float}
\usepackage{xcolor}
\usepackage{amsmath}                    % permet d'utiliser les flèches
\usepackage{adjustbox}                  % permet de placer un tableau là où on veut
\usepackage{longtable}                  % permet d'alonger les tables
\usepackage{xltabular}                  % pour scinder les tableaux
\usepackage{eso-pic}
\usepackage{transparent}
\setcounter{tocdepth}{3}

\usepackage[french]{minitoc}                    % Chargez minitoc avant hyperref et avant titlsec
\usepackage[explicit]{titlesec}         % permet de gérer la mise en forme des titres de sections
\usepackage[colorlinks=false]{hyperref}                   % Chargez hyperref après tous les autres packages
\hypersetup{breaklinks=true}            % permet de casser les hyperliens

%%% Bibliographie
\usepackage{csquotes}                   % permet de citer d'une certaine façon
\usepackage[
    style=apa,
    backend=biber,
    sorting=nyt,
    hyperref=false
]{biblatex}
\addbibresource{corps/Ma bibliothèque.bib}
\DeclareDelimAlias{finalnamedelim}{multinamedelim}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  Styles  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% TITRE
\newlength\Aux              % Permet d'utiliser Aux au lieu d'une taille
\newlength\BoxWd            % Pareil avec les Box

 % chapter tiltes formatting
 \titleformat{\chapter}[display]%
 {\fontsize{30}{8}\bfseries\selectfont%
   \settowidth\Aux{\textcolor{white}{\Huge\thechapter}}%
   \ifnum\Aux>\BoxWd%
     \setlength\BoxWd{\Aux}%
   \else\fi%
 }%
 {%
   {\hspace*{-1.5mm}\normalfont\fontsize{14}{6}\selectfont{Chapitre}}\\%
   \colorbox{teal}{%
     \parbox[c][20mm][t]{\BoxWd}{%
       \vspace{2mm}\centering\textcolor{white}{\Huge\thechapter}%
     }%
   }%
 }%
 {-10mm}%
 {%
   \vspace{-3.5mm}\hspace*{15mm}\titlerule\\\\\hspace*{15mm}#1%
 } %\centering

% chapter tiltes formatting
\titleformat{name=\chapter, numberless}[display]%
 {\fontsize{26}{6}\bfseries\selectfont%
   \settowidth\Aux{\textcolor{white}{\Huge\thechapter}}%
   \ifnum\Aux>\BoxWd%
     \setlength\BoxWd{\Aux}%
   \else\fi%
 }%
 {%
   {\hspace*{-1.5mm}\normalfont\fontsize{14}{6}\selectfont{~}}\\%
   \colorbox{teal}{%
     \parbox[c][20mm][t]{\BoxWd}{%
       \vspace{2.5mm}\centering\textcolor{white}{~}%
     }%
   }%
 }%
 {-10mm}%
 {%
   \vspace{-5mm}\hspace*{15mm}\titlerule\\\\\hspace*{15mm}#1%
 } %\centering

 \titleformat{name=\chapter, numberless}[display]%
{\fontsize{26}{6}\bfseries\selectfont%
  \settowidth\Aux{\textcolor{white}{\Huge\thechapter}}%
  \ifnum\Aux>\BoxWd%
    \setlength\BoxWd{\Aux}%
  \else\fi%
}%
{%
  {\hspace*{-1.5mm}\normalfont\fontsize{14}{6}\selectfont{~}}\\%
  \colorbox{teal}{%
    \parbox[c][20mm][t]{\BoxWd}{%
      \vspace{2.5mm}\centering\textcolor{white}{~}%
    }%
  }%
}%
{-10mm}%
{%
  \vspace{-5mm}\hspace*{15mm}\titlerule\\\\\hspace*{15mm}#1%
} %\centering


% chapter tiltes spacing
\titlespacing*{\chapter}{0pt}{0pt}{50pt}

\titleformat{\section}[block]%
{\Large\bfseries}{\thesection}%
{10pt}{\Large{\bfseries{#1}}}

\titleformat{\paragraph}[block]%
{\normalfont\normalsize\bfseries}%
{\theparagraph}{1em}{#1}


%%%% ENTETE ET BAS DE PAGE
% Style de la première page du chapitre
\fancypagestyle{firstpage}{ 
    \renewcommand{\headrule}{\color{white}}
    \renewcommand{\footrulewidth}{0.5pt}
    \fancyhf{}% Clear header/footer
    \fancyfoot[R]{\fontsize{8}{8}\selectfont PAGE \thepage}
    \fancyfoot[L]{\fontsize{8}{8}\selectfont \MakeUppercase{\@author}}
}
% Style des pages normales
\fancypagestyle{normalpage}{
    \renewcommand{\headrulewidth}{0.5pt}
    \renewcommand{\footrulewidth}{0.5pt}
    \fancyhf{}% Clear header/footer
    \fancyhead[L]{\fontsize{8}{8}\selectfont\textsc{\MakeLowercase{\leftmark}}}
    \fancyfoot[R]{\fontsize{8}{8}\selectfont PAGE \thepage}
    \fancyfoot[L]{\fontsize{8}{8}\selectfont \MakeUppercase{\@author}} % Ajout du numéro de page à droite
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% COMMANDS %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\@specialite{Spécialité}
\newcommand{\specialite}[1]{
	\def\@specialite{#1}
}
\def\@ecoledoctorale{Ecole doctorale}
\newcommand{\ecoledoctorale}[1]{
	\def\@ecoledoctorale{#1}
}
\def\@equipe{Equipe}
\newcommand{\equipe}[1]{
	\def\@equipe{#1}
}
\def\@directeur{directeur}
\newcommand{\directeur}[3]{
	\def\@directeur{#1 & #2 & #3\\}
}
\def\@encadrant{encadrant}
\newcommand{\encadrant}[3]{
	\def\@encadrant{#1 & #2 & #3\\}
}
\def\@president{president}
\newcommand{\president}[3]{
	\def\@president{#1 & #2 (\textit{Présidente du jury}) & #3\\}
}
\def\@rapporteura{rapporteur a}
\newcommand{\rapporteura}[3]{
	\def\@rapporteura{#1 & #2 & #3\\}
}
\def\@rapporteurb{rapporteur b}
\newcommand{\rapporteurb}[3]{
	\def\@rapporteurb{#1 & #2 & #3\\}
}
\def\@jurya{jury a}
\newcommand{\jurya}[3]{
	\def\@jurya{#1 & #2 & #3\\}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% PAGES %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% PAGE DE GARDE
\newcommand{\pagedegarde}{
    \newgeometry{top=1cm, bottom=1cm, left=1cm, right=1cm}
	\begin{titlepage}
		\centering
		\includegraphics[width=0.3\textwidth]{figures/logos/logo_univtours.png}
            \hspace{2.5cm}
            \includegraphics[width=0.16\textwidth]{figures/logos/logo_insa.png}
            \hspace{3.5cm}
		\includegraphics[width=0.12\textwidth]{figures/logos/logo_univorleans.jpg}\\
		\vspace{1cm}
		{\LARGE \textbf{UNIVERSITÉ DE TOURS}}\\
		\vspace{1cm}
		{\Large \bfseries ÉCOLE DOCTORALE : \textit{\@ecoledoctorale}}\\[10pt]
		{\large \bfseries ÉQUIPE : \@equipe}\\
		\vspace{1cm}
		{\huge \bfseries TH\`{E}SE} \ {\large présentée par :} \\[10pt]
		{\Large \bfseries \@author} \\[10pt]
		{\large soutenue le :} {\large \bfseries \@date} \\
		{\vspace{1cm}}
		{\large pour obtenir le grade de :} {\large \bfseries Docteure de l'Université de Tours} \\[10pt]
		{\large Discipline/Spécialité : \@specialite} \\
		{\vspace{1cm}}
		{
			\setlength{\tabcolsep}{0.4cm}
			\begin{tabular}{|p{14cm}|}
				\hline
				\Large \bfseries \begin{center} \@title \end{center} \\
				\hline
			\end{tabular}
		} \\
		{\vspace{0.8cm}}
        \begin{adjustwidth}{2.2cm}{0cm}               % 2cm de marge à gauche
        \begin{flushleft}
		\textbf{TH\`{E}SE dirigée par :}\\\vspace{0.2cm}   
        \begin{tabular}{p{0.6cm} p{7cm} p{10cm}}
		\@directeur
		\@encadrant
        \end{tabular}
        \\\vspace{0.2cm}    
        
        \textbf{RAPPORTEURS :}\\\vspace{0.2cm}   
        \begin{tabular}{p{0.6cm} p{7cm} p{10cm}}
		\@rapporteura
		\@rapporteurb
        \end{tabular}
        \\\vspace{0.2cm}
        
        \textbf{JURY : }\\\vspace{0.2cm}   
        \begin{tabular}{p{0.6cm} p{7cm} p{10cm}}
        \@president 
        \@jurya 
        \@rapporteura
        \@rapporteurb
        \@directeur
        \@encadrant
        \end{tabular}
        \end{flushleft}
        \end{adjustwidth}
	\end{titlepage}
	\restoregeometry  
}

%%%% PAGE DE COUVERTURE

\newcommand{\pagededos}{
    \newgeometry{top=1cm, bottom=1cm, left=1cm, right=1cm}
    \thispagestyle{empty}
    \centering
    \includegraphics[width=0.2\textwidth]{figures/logos/logo_univtours.png}
    \hspace{7cm}
    \includegraphics[width=0.2\textwidth]{figures/logos/logo_inrae.png}\\
    \vspace{0.5cm}
    \begin{center}
        \Large{\textbf{\@author}}\\ 
        \large{\@title}
    \end{center}
    \fbox{
        \begin{minipage}{18.5cm}
        \textbf{Résumé :} \\
        \setstretch{1}L'évolution des espèces est liée, entre autres, à l’évolution de leur génome. La fonction biologique des protéines codées par les gènes rend ces derniers sensibles aux influences d'autres gènes, en particulier ceux qui codent des protéines partenaires. Bien que nous ayons une compréhension croissante de l'organisation des gènes au sein des génomes, il est important de noter que les gènes peuvent mourir (disparaître), se transformer, ou naître, en particulier par le biais des duplications de gènes ou de génomes. Dans le contexte des voies de signalisation, les interactions entre les produits de gènes ont une importance particulière, car elles sont soigneusement régulées et ordonnées. L'objectif principal de cette thèse est de répondre à deux questions : premièrement, comment les voies de signalisation animales ont-elles évolué au fil du temps ? Deuxièmement, au sein d'un groupe d'espèces de vertébrés ayant subi trois ou quatre duplications complètes du génome (WGD), les gènes impliqués dans ces voies sont-ils restés en deux ou trois copies (duplicat ou triplicat), ou sont-ils revenus à une seule copie (singleton) ? Cette étude montre que parmi les 47 voies examinées, 24 d'entre elles ont évolué de manière ascendante, c'est-à-dire qu'elles ont émergé de la fin de la voie (du facteur de transcription) vers l’amont (les ligands et les récepteurs), tandis que 10 voies ont suivi un scénario contraire, se développant de l’amont vers l’aval. De plus, ces mêmes gènes sont restés généralement en deux copies chez les espèces ayant subi trois duplications complètes du génome, et sont même présents en triplicat ou plus chez les espèces ayant subi quatre duplications complètes, parmi le clade des téléostéens. Ces résultats suggèrent que l’évolution des voies de signalisation s’est faite de façon non aléatoire dans l'histoire évolutive des génomes animaux.\\
        \textbf{Mots clés :} évolution, phylogénie, voie de transduction, duplication de génome, téléostéens
        \end{minipage}
    }\\
    \fbox{
        \begin{minipage}{18.5cm}
        \textbf{Abstract :} \\
        \setstretch{1}The evolution of species is linked, among other things, to the evolution of their genome. The biological function of proteins encoded by genes makes them susceptible to influences from other genes, particularly those that encode partner proteins. Although we have a growing understanding of the organization of genes within genomes, it is important to note that genes can be changed, lost, or born, particularly through gene or genome duplications. In the context of signaling pathways, interactions between gene products are of particular importance because they are carefully regulated and ordered. The main goal of this thesis was to answer two questions: first, how have animal signaling pathways evolved over time? Second, within a group of vertebrate species that have undergone three or four complete genome duplications (WGD), have the genes involved in these pathways remained in two or three copies (duplicate or triplicate), or have they returned to a single copy (singleton)? The results of this study show that among the 47 pathways examined, 24 of them evolved bottom-up, that is, they emerged from the end of the pathway (of the transcription factor) towards the upstream (ligands and receptors), while 10 pathways followed an opposite scenario, developing from upstream to downstream. Furthermore, these same genes generally remained in two copies in species having undergone three complete genome duplications, and are even present in triplicate or more in species having undergone four complete duplications, among the teleost clade. These results suggest that the evolution of signaling pathways occurred in a non-random manner in the evolutionary history of animal genomes.\\
        \textbf{Keywords :} evolution, phylogeny, signaling transduction, whole genome duplication, teleosts
        \end{minipage}
    }  
}
