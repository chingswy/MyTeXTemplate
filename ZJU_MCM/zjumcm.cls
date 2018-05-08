% zjumcm.cls
\ProvidesClass{zjumcm}[2018/05/08 v1.0 Ching Swy]
\LoadClass[a4paper,11pt]{ctexart}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]

%packages
\RequirePackage[english]{babel} %这个是ctex依赖项
\RequirePackage{geometry}       %页面布局的
\geometry{a4paper,left=2cm,right=2cm,top=2.5cm,bottom=2.5cm}
\RequirePackage[colorlinks,linkcolor=black]{hyperref} %超链接的
% \CTEXsetup[format+={\flushleft}]{section}   %让section的标题居左
\RequirePackage{xcolor} %颜色的 
\RequirePackage{graphicx}   %插图的
\RequirePackage{amsmath}    %写数学公式的
\RequirePackage{listings}   %插入MATLAB代码用的
\lstset{language=Matlab}
\RequirePackage{array}	%插入表格用的
\RequirePackage{flafter} %让图片不出现在顶部的，但是没用仿佛
\RequirePackage[section]{placeins} %限制浮动环境的浮动范围
\RequirePackage[final]{pdfpages} %插入PDF页面用的
\RequirePackage{float}
\RequirePackage{array}% 需要array包，排姓名信息时用

% \renewcommand{\abstractname}{\LARGE 摘\quad要}
\renewenvironment*{abstract}[1]{%
\newcommand\gjc{#1}
\begin{center}
    \bfseries\Large{摘要}
\end{center}
}{\paragraph{关键词：}\gjc } %自己定义的摘要环境

\RequirePackage{booktabs}  % 插入三线表用的
\RequirePackage{fancyhdr}  %插入页眉页脚用的
\RequirePackage{longtable} % 长表格


%插入双栏图片的命令
\newcommand{\dpicl}[6]{ \begin{figure}[H]
    \begin{minipage}[H]{0.5\textwidth}
    \centering
    \includegraphics[width=\textwidth]{#1}
    \caption{#2}\label{#3}
    \end{minipage}
    \begin{minipage}[H]{0.5\textwidth}
    \centering
    \includegraphics[width=\textwidth]{#4}
    \caption{#5}\label{#6}
    \end{minipage}
\end{figure}}
