%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/mazurka-op17-no1-parts.ily"
\include "includes/mazurka-op17-no2-parts.ily"
\include "includes/mazurka-op17-no3-parts.ily"
\include "includes/mazurka-op17-no4-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDFs

\tocItem \markup \concat { 
  "No. 1 Vivo risoluto in B" \raise #0.75 \teeny \flat " major" 
}
\mazurkaOneNotes
\pageBreak

\tocItem \markup "No. 2 Lento ma non troppo in E minor"
\mazurkaTwoNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 3 Legato assai in A" \raise #0.75 \teeny \flat " major" 
}
\mazurkaThreeNotes
\pageBreak

\tocItem \markup "No. 4 Lento ma non troppo in A minor"
\mazurkaFourNotes

% Midi

\mazurkaOneMidi
\mazurkaTwoMidi
\mazurkaThreeMidi
\mazurkaFourMidi
